; ModuleID = 'coreutils-8.27/src/sort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.month = type { i8*, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.keyfield = type { i64, i64, i64, i64, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.keyfield* }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.tempnode = type { %struct.tempnode*, i32, i8, [0 x i8] }
%struct.line = type { i8*, i64, i8*, i8* }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.buffer = type { i8*, i64, i64, i64, i64, i64, i8 }
%struct.rlimit = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.rlimit, %struct.rlimit, %struct.rlimit, [3 x i64] }
%struct.merge_node_queue = type { %struct.heap*, %union.pthread_mutex_t, %union.pthread_cond_t }
%struct.heap = type { i8**, i64, i64, i32 (i8*, i8*)* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon.11 }
%struct.anon.11 = type { %union.anon.12, %union.anon.12, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.12 = type { i64 }
%struct.Tokens = type { i64, i8**, i64*, %struct.obstack, %struct.obstack, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon.12, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.sigaction = type { %union.anon.2, %struct.__sigset_t, i32, void ()* }
%union.anon.2 = type { void (i32)* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon }
%union.anon = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0.21 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0.21 = type { [256 x i64] }
%struct.sortfile = type { i8*, %struct.tempnode* }
%union.pthread_mutexattr_t = type { i32 }
%struct.merge_node = type { %struct.line*, %struct.line*, %struct.line*, %struct.line*, %struct.line**, i64, i64, %struct.merge_node*, %struct.merge_node*, %struct.merge_node*, i32, i8, %union.pthread_mutex_t }
%struct.cs_status = type { i8, %struct.__sigset_t }
%struct.thread_args = type { %struct.line*, i64, i64, %struct.merge_node*, %struct.merge_node_queue*, %struct._IO_FILE*, i8* }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.__mbstate_t = type { i32, %union.pthread_mutexattr_t }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.timezone = type { i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Write sorted concatenation of all FILE(s) to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.68 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Ordering options:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [204 x i8] c"  -b, --ignore-leading-blanks  ignore leading blanks\0A  -d, --dictionary-order      consider only blanks and alphanumeric characters\0A  -f, --ignore-case           fold lower case to upper case characters\0A\00", align 1
@.str.5 = private unnamed_addr constant [211 x i8] c"  -g, --general-numeric-sort  compare according to general numerical value\0A  -i, --ignore-nonprinting    consider only printable characters\0A  -M, --month-sort            compare (unknown) < 'JAN' < ... < 'DEC'\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -h, --human-numeric-sort    compare human readable numbers (e.g., 2K 1G)\0A\00", align 1
@.str.7 = private unnamed_addr constant [274 x i8] c"  -n, --numeric-sort          compare according to string numerical value\0A  -R, --random-sort           shuffle, but group identical keys.  See shuf(1)\0A      --random-source=FILE    get random bytes from FILE\0A  -r, --reverse               reverse the result of comparisons\0A\00", align 1
@.str.8 = private unnamed_addr constant [278 x i8] c"      --sort=WORD             sort according to WORD:\0A                                general-numeric -g, human-numeric -h, month -M,\0A                                numeric -n, random -R, version -V\0A  -V, --version-sort          natural sort of (version) numbers within text\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Other options:\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"      --batch-size=NMERGE   merge at most NMERGE inputs at once;\0A                            for more use temp files\0A\00", align 1
@.str.11 = private unnamed_addr constant [277 x i8] c"  -c, --check, --check=diagnose-first  check for sorted input; do not sort\0A  -C, --check=quiet, --check=silent  like -c, but do not report first bad line\0A      --compress-program=PROG  compress temporaries with PROG;\0A                              decompress them with PROG -d\0A\00", align 1
@.str.12 = private unnamed_addr constant [348 x i8] c"      --debug               annotate the part of the line used to sort,\0A                              and warn about questionable usage to stderr\0A      --files0-from=F       read input from the files specified by\0A                            NUL-terminated names in file F;\0A                            If F is - then read names from standard input\0A\00", align 1
@.str.13 = private unnamed_addr constant [144 x i8] c"  -k, --key=KEYDEF          sort via a key; KEYDEF gives location and type\0A  -m, --merge               merge already sorted files; do not sort\0A\00", align 1
@.str.14 = private unnamed_addr constant [216 x i8] c"  -o, --output=FILE         write result to FILE instead of standard output\0A  -s, --stable              stabilize sort by disabling last-resort comparison\0A  -S, --buffer-size=SIZE    use SIZE for main memory buffer\0A\00", align 1
@.str.15 = private unnamed_addr constant [453 x i8] c"  -t, --field-separator=SEP  use SEP instead of non-blank to blank transition\0A  -T, --temporary-directory=DIR  use DIR for temporaries, not $TMPDIR or %s;\0A                              multiple options specify multiple directories\0A      --parallel=N          change the number of sorts run concurrently to N\0A  -u, --unique              with -c, check for strict ordering;\0A                              without -c, output only the first of an equal run\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.19 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.20 = private unnamed_addr constant [604 x i8] c"\0AKEYDEF is F[.C][OPTS][,F[.C][OPTS]] for start and stop position, where F is a\0Afield number and C a character position in the field; both are origin 1, and\0Athe stop position defaults to the line's end.  If neither -t nor -b is in\0Aeffect, characters in a field are counted from the beginning of the preceding\0Awhitespace.  OPTS is one or more single-letter ordering options [bdfgiMhnRrV],\0Awhich override global ordering options for that key.  If no key is given, use\0Athe entire line as the key.  Use --debug to diagnose incorrect key usage.\0A\0ASIZE may be followed by the following multiplicative suffixes:\0A\00", align 1
@.str.21 = private unnamed_addr constant [229 x i8] c"% 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y.\0A\0A*** WARNING ***\0AThe locale specified by the environment affects sort order.\0ASet LC_ALL=C to get the traditional sort order that uses\0Anative byte values.\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.77 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.80 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.81 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.82 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1
@hard_LC_TIME = internal unnamed_addr global i8 0, align 1
@decimal_point = internal unnamed_addr global i32 0, align 4
@thousands_sep = internal unnamed_addr global i32 0, align 4
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@blanks = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@nonprinting = internal global [256 x i8] zeroinitializer, align 16
@nondictionary = internal global [256 x i8] zeroinitializer, align 16
@fold_toupper = internal global [256 x i8] zeroinitializer, align 16
@monthtab = internal global [12 x %struct.month] [%struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), i32 4 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i32 8 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i32 12 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 2 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i32 0, i32 0), i32 1 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i32 7 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 6 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 3 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 5 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 11 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 10 }, %struct.month { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i32 9 }], align 16
@caught_signals = internal global %struct.__sigset_t zeroinitializer, align 8
@main.sig = internal unnamed_addr constant [11 x i32] [i32 14, i32 1, i32 2, i32 13, i32 3, i32 15, i32 29, i32 27, i32 26, i32 24, i32 25], align 16
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal constant [31 x i8] c"-bcCdfghik:mMno:rRsS:t:T:uVy:z\00", align 16
@long_options = internal constant [31 x %struct.option] [%struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i32 1, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i32 1, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0), i32 0, i32* null, i32 77 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.108, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.109, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i32 1, i32* null, i32 133 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 1, i32* null, i32 134 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i32 1, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.118, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.119, i32 0, i32 0), i32 1, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i32 1, i32* null, i32 135 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.27 = private unnamed_addr constant [25 x i8] c"invalid number after '-'\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"src/sort.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"invalid number after '.'\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"stray character in field spec\00", align 1
@keylist = internal unnamed_addr global %struct.keyfield* null, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"--sort\00", align 1
@sort_args = internal constant [7 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), i8* null], align 16
@sort_types = internal constant [6 x i8] c"ghMnRV", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"--check\00", align 1
@check_args = internal constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), i8* null], align 16
@check_types = internal constant [3 x i8] c"CCc", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"cC\00", align 1
@compress_program = internal unnamed_addr global i8* null, align 8
@.str.35 = private unnamed_addr constant [37 x i8] c"multiple compress programs specified\00", align 1
@debug = internal unnamed_addr global i1 false, align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"invalid number at field start\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"field number is zero\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"character offset is zero\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"invalid number after ','\00", align 1
@nmerge = internal unnamed_addr global i32 16, align 4
@.str.136 = private unnamed_addr constant [25 x i8] c"invalid --%s argument %s\00", align 1
@.str.137 = private unnamed_addr constant [28 x i8] c"minimum --%s argument is %s\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"--%s argument %s too large\00", align 1
@.str.140 = private unnamed_addr constant [48 x i8] c"maximum --%s argument with current rlimit is %s\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"multiple output files specified\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1
@stable = internal unnamed_addr global i1 false, align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"EgGkKmMPtTYZ\00", align 1
@sort_size = internal unnamed_addr global i64 0, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"empty tab\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"multi-character tab %s\00", align 1
@tab = internal unnamed_addr global i32 128, align 4
@.str.45 = private unnamed_addr constant [18 x i8] c"incompatible tabs\00", align 1
@temp_dir_count = internal unnamed_addr global i64 0, align 8
@temp_dir_alloc = internal global i64 0, align 8
@temp_dirs = internal unnamed_addr global i8** null, align 8
@.str.142 = private unnamed_addr constant [35 x i8] c"number in parallel must be nonzero\00", align 1
@unique = internal unnamed_addr global i1 false, align 1
@eolchar = internal unnamed_addr global i1 false, align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Mike Haertel\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.53 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"cannot read file names from %s\00", align 1
@.str.56 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"%s:%lu: invalid zero-length file name\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"no input from %s\00", align 1
@main.opts = internal global [10 x i8] c"X --debug\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"using %s sorting rules\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"failed to set locale; \00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"using simple byte comparison\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@.str.147 = private unnamed_addr constant [45 x i8] c"obsolescent key %s used; consider %s instead\00", align 1
@.str.148 = private unnamed_addr constant [43 x i8] c"key %lu has zero width and will be ignored\00", align 1
@.str.149 = private unnamed_addr constant [72 x i8] c"leading blanks are significant in key %lu; consider also specifying 'b'\00", align 1
@.str.150 = private unnamed_addr constant [45 x i8] c"key %lu is numeric and spans multiple fields\00", align 1
@.str.151 = private unnamed_addr constant [24 x i8] c"option '-%s' is ignored\00", align 1
@.str.152 = private unnamed_addr constant [26 x i8] c"options '-%s' are ignored\00", align 1
@.str.153 = private unnamed_addr constant [51 x i8] c"option '-r' only applies to last-resort comparison\00", align 1
@reverse = internal unnamed_addr global i8 0, align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"open failed\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"close failed\00", align 1
@random_md5_state = internal global %struct.md5_ctx zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"extra operand %s not allowed with -%c\00", align 1
@main.opts.65 = internal global [3 x i8] c"\00o\00", align 1
@merge_buffer_size = internal unnamed_addr global i64 262144, align 8
@.str.155 = private unnamed_addr constant [22 x i8] c"%s: %s:%s: disorder: \00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"standard error\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"cannot read\00", align 1
@temphead = internal global %struct.tempnode* null, align 8
@.str.179 = private unnamed_addr constant [12 x i8] c"stat failed\00", align 1
@sort_buffer_size.size_bound = internal unnamed_addr global i64 0, align 8
@saved_line = internal global %struct.line zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@nprocs = internal unnamed_addr global i32 0, align 4
@.str.171 = private unnamed_addr constant [20 x i8] c"waiting for %s [-d]\00", align 1
@proctab = internal unnamed_addr global %struct.hash_table* null, align 8
@.str.172 = private unnamed_addr constant [30 x i8] c"%s [-d] terminated abnormally\00", align 1
@create_temp_file.temp_dir_index = internal unnamed_addr global i64 0, align 8
@create_temp_file.slashbase = internal unnamed_addr constant [12 x i8] c"/sortXXXXXX\00", align 1
@temptail = internal unnamed_addr global %struct.tempnode** @temphead, align 8
@.str.178 = private unnamed_addr constant [35 x i8] c"cannot create temporary file in %s\00", align 1
@.str.176 = private unnamed_addr constant [34 x i8] c"couldn't execute compress program\00", align 1
@.str.177 = private unnamed_addr constant [31 x i8] c"couldn't create temporary file\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c": errno \00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.175 = private unnamed_addr constant [27 x i8] c"warning: cannot remove: %s\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"couldn't create process for %s -d\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.170 = private unnamed_addr constant [44 x i8] c"couldn't execute compress program (with -d)\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"fflush failed\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"write failed\00", align 1
@unit_order = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\03\00\00\00\01\00\02\00\00\05\00\00\00\04\00\00\00\00\08\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.164 = private unnamed_addr constant [20 x i8] c"^ no match for key\0A\00", align 1
@.str.160 = private unnamed_addr constant [29 x i8] c"string transformation failed\00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c"set LC_ALL='C' to work around the problem\00", align 1
@.str.162 = private unnamed_addr constant [32 x i8] c"the untransformed string was %s\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@.str.157 = private unnamed_addr constant [21 x i8] c"%s: error truncating\00", align 1
@.str.158 = private unnamed_addr constant [41 x i8] c"!\22unexpected mode passed to stream_open\22\00", align 1
@__PRETTY_FUNCTION__.stream_open = private unnamed_addr constant [46 x i8] c"FILE *stream_open(const char *, const char *)\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.135 = private unnamed_addr constant [31 x i8] c"options '-%s' are incompatible\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"diagnose-first\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"general-numeric\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"human-numeric\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.126 = private unnamed_addr constant [35 x i8] c"%s: invalid field specification %s\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"%s: invalid count at start of %s\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"ignore-leading-blanks\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"compress-program\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"dictionary-order\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"general-numeric-sort\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"ignore-nonprinting\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"month-sort\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"numeric-sort\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"human-numeric-sort\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"version-sort\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"random-sort\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"stable\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"batch-size\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"buffer-size\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"field-separator\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"temporary-directory\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"APR\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"AUG\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"DEC\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"FEB\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"JAN\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"JUL\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"JUN\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"MAR\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"MAY\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"NOV\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"OCT\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"SEP\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.65 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.66 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.67 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.68 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.69 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.76 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@fillbuf.81 = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@exit_failure = global i32 1, align 4
@.str.1.94 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.144 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.145 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.146 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.182 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1
@.str.1.183 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.195 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.196 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.197 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.199, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.200, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.201, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.202, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.203, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.204, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.205, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.206, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.207, i32 0, i32 0), i8* null], align 16
@.str.198 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.199 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.200 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.201 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.202 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.203 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.204 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.205 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.206 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.207 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.208 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.209 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.210 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.211 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.212 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.213 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.214 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.229 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.230 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.231 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.232 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.254 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.255 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.256 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.257 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.258 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.259 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.260 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.261 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.262 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.263 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.264 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.265 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.266 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.269 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.270 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.271 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.272 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.273 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.274 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.287 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.288 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.289 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.290 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.291 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.298 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.299 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@switch.table = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.303, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.304, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.304, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.305, i64 0, i64 0)]
@.str.302 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3.303 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@.str.2.304 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@.str.1.305 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@.str.308 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.309 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8
@.str.1.324 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.338 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.339 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.340 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.341 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.342 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.343 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.344 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %89

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.67, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.68, i64 0, i64 0), i32 5) #12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([211 x i8], [211 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.10, i64 0, i64 0), i32 5) #12
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([348 x i8], [348 x i8]* @.str.12, i64 0, i64 0), i32 5) #12
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.13, i64 0, i64 0), i32 5) #12
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #12
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.14, i64 0, i64 0), i32 5) #12
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #12
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([453 x i8], [453 x i8]* @.str.15, i64 0, i64 0), i32 5) #12
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.17, i64 0, i64 0), i32 5) #12
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = tail call i32 @fputs_unlocked(i8* %59, %struct._IO_FILE* %60) #12
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i32 5) #12
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = tail call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #12
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = tail call i32 @fputs_unlocked(i8* %65, %struct._IO_FILE* %66) #12
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([604 x i8], [604 x i8]* @.str.20, i64 0, i64 0), i32 5) #12
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %70 = tail call i32 @fputs_unlocked(i8* %68, %struct._IO_FILE* %69) #12
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.21, i64 0, i64 0), i32 5) #12
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = tail call i32 @fputs_unlocked(i8* %71, %struct._IO_FILE* %72) #12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.77, i64 0, i64 0), i32 5) #12
  %75 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i64 0, i64 0)) #12
  %76 = tail call i8* @setlocale(i32 5, i8* null) #12
  %77 = icmp eq i8* %76, null
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %8
  %79 = tail call i32 @strncmp(i8* nonnull %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i64 3) #14
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

; <label>:81:                                     ; preds = %78
  %82 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.80, i64 0, i64 0), i32 5) #12
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #12
  br label %84

; <label>:84:                                     ; preds = %8, %78, %81
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.81, i64 0, i64 0), i32 5) #12
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #12
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i64 0, i64 0), i32 5) #12
  %88 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0)) #12
  br label %89

; <label>:89:                                     ; preds = %84, %3
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
  %3 = alloca %struct.buffer, align 8
  %4 = alloca %struct.line, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [21 x i8], align 16
  %7 = alloca [46 x i8], align 16
  %8 = alloca [47 x i8], align 16
  %9 = alloca [31 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rlimit, align 8
  %15 = alloca [11 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.rlimit, align 8
  %21 = alloca %struct.stat, align 8
  %22 = alloca %struct.buffer, align 8
  %23 = alloca %struct._IO_FILE*, align 8
  %24 = alloca %struct.merge_node_queue, align 8
  %25 = alloca %struct.keyfield, align 8
  %26 = alloca %struct.keyfield, align 8
  %27 = alloca %struct.Tokens, align 8
  %28 = alloca %struct.sigaction, align 8
  %29 = alloca i32, align 4
  %30 = alloca [2 x i8], align 1
  %31 = bitcast %struct.keyfield* %25 to i8*
  call void @llvm.lifetime.start(i64 72, i8* nonnull %31) #12
  %32 = bitcast %struct.keyfield* %26 to i8*
  call void @llvm.lifetime.start(i64 72, i8* nonnull %32) #12
  %33 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0)) #12
  %34 = icmp ne i8* %33, null
  %35 = tail call i32 @posix2_version() #12
  %36 = add i32 %35, -200112
  %37 = icmp ugt i32 %36, 696
  %38 = zext i1 %37 to i8
  %39 = bitcast %struct.Tokens* %27 to i8*
  call void @llvm.lifetime.start(i64 288, i8* nonnull %39) #12
  %40 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %40) #12
  %41 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  %42 = icmp ne i8* %41, null
  %43 = zext i1 %42 to i8
  %44 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0)) #12
  %45 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #12
  store volatile i32 2, i32* @exit_failure, align 4
  %46 = tail call zeroext i1 @hard_locale(i32 3) #12
  %47 = zext i1 %46 to i8
  store i8 %47, i8* @hard_LC_COLLATE, align 1
  %48 = tail call zeroext i1 @hard_locale(i32 2) #12
  %49 = zext i1 %48 to i8
  store i8 %49, i8* @hard_LC_TIME, align 1
  %50 = tail call %struct.lconv* @localeconv() #12
  %51 = getelementptr inbounds %struct.lconv, %struct.lconv* %50, i64 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* @decimal_point, align 4
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %60, label %56

; <label>:56:                                     ; preds = %2
  %57 = getelementptr inbounds i8, i8* %52, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

; <label>:60:                                     ; preds = %56, %2
  store i32 46, i32* @decimal_point, align 4
  br label %61

; <label>:61:                                     ; preds = %56, %60
  %62 = getelementptr inbounds %struct.lconv, %struct.lconv* %50, i64 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  store i32 %65, i32* @thousands_sep, align 4
  %66 = icmp eq i8 %64, 0
  br i1 %66, label %71, label %67

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds i8, i8* %63, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

; <label>:71:                                     ; preds = %67, %61
  store i32 -1, i32* @thousands_sep, align 4
  br label %72

; <label>:72:                                     ; preds = %67, %71
  store i1 false, i1* @have_read_stdin, align 1
  %73 = tail call i16** @__ctype_b_loc() #1
  br label %74

; <label>:74:                                     ; preds = %113, %72
  %75 = phi i64 [ 0, %72 ], [ %117, %113 ]
  %76 = trunc i64 %75 to i8
  %77 = load i16*, i16** %73, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 %75
  %79 = load i16, i16* %78, align 2
  %80 = and i16 %79, 1
  %81 = icmp eq i8 %76, 10
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %75
  %83 = zext i1 %81 to i8
  %84 = trunc i16 %80 to i8
  %85 = or i8 %84, %83
  store i8 %85, i8* %82, align 1
  %86 = trunc i64 %75 to i32
  %87 = shl i64 %75, 32
  %88 = ashr exact i64 %87, 32
  %89 = getelementptr inbounds i16, i16* %77, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* @nonprinting, i64 0, i64 %75
  %92 = lshr i16 %90, 14
  %93 = trunc i16 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %91, align 1
  %96 = and i16 %90, 8
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %102

; <label>:98:                                     ; preds = %74
  %99 = icmp ne i16 %80, 0
  %100 = or i1 %81, %99
  %101 = xor i1 %100, true
  br label %102

; <label>:102:                                    ; preds = %98, %74
  %103 = phi i1 [ false, %74 ], [ %101, %98 ]
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* @nondictionary, i64 0, i64 %75
  %105 = zext i1 %103 to i8
  store i8 %105, i8* %104, align 1
  %106 = add i32 %86, 128
  %107 = icmp ult i32 %106, 384
  br i1 %107, label %108, label %113

; <label>:108:                                    ; preds = %102
  %109 = tail call i32** @__ctype_toupper_loc() #1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 %88
  %112 = load i32, i32* %111, align 4
  br label %113

; <label>:113:                                    ; preds = %108, %102
  %114 = phi i32 [ %112, %108 ], [ %86, %102 ]
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %75
  store i8 %115, i8* %116, align 1
  %117 = add nuw nsw i64 %75, 1
  %118 = icmp eq i64 %117, 256
  br i1 %118, label %119, label %74

; <label>:119:                                    ; preds = %113
  %120 = load i8, i8* @hard_LC_TIME, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %195, label %122

; <label>:122:                                    ; preds = %119
  br label %123

; <label>:123:                                    ; preds = %122, %190
  %124 = phi i64 [ %132, %190 ], [ 0, %122 ]
  %125 = add nuw nsw i64 %124, 131086
  %126 = trunc i64 %125 to i32
  %127 = tail call i8* @nl_langinfo(i32 %126) #12
  %128 = tail call i64 @strlen(i8* %127) #14
  %129 = add i64 %128, 1
  %130 = tail call noalias i8* @xmalloc(i64 %129) #12
  %131 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %124, i32 0
  store i8* %130, i8** %131, align 16
  %132 = add nuw nsw i64 %124, 1
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %124, i32 1
  store i32 %133, i32* %134, align 8
  %135 = icmp eq i64 %128, 0
  br i1 %135, label %190, label %136

; <label>:136:                                    ; preds = %123
  %137 = and i64 %128, 1
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %153, label %139

; <label>:139:                                    ; preds = %136
  br label %140

; <label>:140:                                    ; preds = %139
  %141 = load i16*, i16** %73, align 8
  %142 = load i8, i8* %127, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds i16, i16* %141, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %151

; <label>:148:                                    ; preds = %140
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %143
  %150 = load i8, i8* %149, align 1
  store i8 %150, i8* %130, align 1
  br label %151

; <label>:151:                                    ; preds = %148, %140
  %152 = phi i64 [ 0, %140 ], [ 1, %148 ]
  br label %153

; <label>:153:                                    ; preds = %136, %151
  %154 = phi i64 [ %152, %151 ], [ undef, %136 ]
  %155 = phi i64 [ %152, %151 ], [ 0, %136 ]
  %156 = phi i64 [ 1, %151 ], [ 0, %136 ]
  br label %157

; <label>:157:                                    ; preds = %153
  %158 = icmp eq i64 %128, 1
  br i1 %158, label %188, label %159

; <label>:159:                                    ; preds = %157
  br label %160

; <label>:160:                                    ; preds = %2225, %159
  %161 = phi i64 [ %155, %159 ], [ %2226, %2225 ]
  %162 = phi i64 [ %156, %159 ], [ %2227, %2225 ]
  %163 = load i16*, i16** %73, align 8
  %164 = getelementptr inbounds i8, i8* %127, i64 %162
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds i16, i16* %163, i64 %166
  %168 = load i16, i16* %167, align 2
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %176

; <label>:171:                                    ; preds = %160
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %166
  %173 = load i8, i8* %172, align 1
  %174 = add i64 %161, 1
  %175 = getelementptr inbounds i8, i8* %130, i64 %161
  store i8 %173, i8* %175, align 1
  br label %176

; <label>:176:                                    ; preds = %171, %160
  %177 = phi i64 [ %161, %160 ], [ %174, %171 ]
  %178 = add nuw i64 %162, 1
  %179 = load i16*, i16** %73, align 8
  %180 = getelementptr inbounds i8, i8* %127, i64 %178
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds i16, i16* %179, i64 %182
  %184 = load i16, i16* %183, align 2
  %185 = and i16 %184, 1
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %2220, label %2225

; <label>:187:                                    ; preds = %2225
  br label %188

; <label>:188:                                    ; preds = %157, %187
  %189 = phi i64 [ %154, %157 ], [ %2226, %187 ]
  br label %190

; <label>:190:                                    ; preds = %188, %123
  %191 = phi i64 [ 0, %123 ], [ %189, %188 ]
  %192 = getelementptr inbounds i8, i8* %130, i64 %191
  store i8 0, i8* %192, align 1
  %193 = icmp eq i64 %132, 12
  br i1 %193, label %194, label %123

; <label>:194:                                    ; preds = %190
  tail call void @qsort(i8* bitcast ([12 x %struct.month]* @monthtab to i8*), i64 12, i64 16, i32 (i8*, i8*)* nonnull @struct_month_cmp) #12
  br label %195

; <label>:195:                                    ; preds = %119, %194
  %196 = bitcast %struct.sigaction* %28 to i8*
  call void @llvm.lifetime.start(i64 152, i8* nonnull %196) #12
  %197 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @caught_signals) #12
  %198 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %28, i64 0, i32 0, i32 0
  br label %199

; <label>:199:                                    ; preds = %208, %195
  %200 = phi i64 [ 0, %195 ], [ %209, %208 ]
  %201 = getelementptr inbounds [11 x i32], [11 x i32]* @main.sig, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @sigaction(i32 %202, %struct.sigaction* null, %struct.sigaction* nonnull %28) #12
  %204 = load void (i32)*, void (i32)** %198, align 8
  %205 = icmp eq void (i32)* %204, inttoptr (i64 1 to void (i32)*)
  br i1 %205, label %208, label %206

; <label>:206:                                    ; preds = %199
  %207 = call i32 @sigaddset(%struct.__sigset_t* nonnull @caught_signals, i32 %202) #12
  br label %208

; <label>:208:                                    ; preds = %199, %206
  %209 = add nuw nsw i64 %200, 1
  %210 = icmp eq i64 %209, 11
  br i1 %210, label %211, label %199

; <label>:211:                                    ; preds = %208
  store void (i32)* @sighandler, void (i32)** %198, align 8
  %212 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %28, i64 0, i32 1
  %213 = bitcast %struct.__sigset_t* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* bitcast (%struct.__sigset_t* @caught_signals to i8*), i64 128, i32 8, i1 false)
  %214 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %28, i64 0, i32 2
  store i32 0, i32* %214, align 8
  br label %215

; <label>:215:                                    ; preds = %211
  %216 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 14) #12
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

; <label>:218:                                    ; preds = %215
  %219 = call i32 @sigaction(i32 14, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %220

; <label>:220:                                    ; preds = %215, %218
  %221 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 1) #12
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %2167, label %2165

; <label>:223:                                    ; preds = %2212
  call void @xalloc_die() #15
  unreachable

; <label>:224:                                    ; preds = %2212
  %225 = sext i32 %0 to i64
  %226 = shl nsw i64 %225, 3
  %227 = call noalias i8* @xmalloc(i64 %226) #12
  %228 = bitcast i8* %227 to i8**
  %229 = bitcast i32* %29 to i8*
  %230 = xor i1 %34, true
  %231 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 2
  %232 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 0
  %233 = bitcast i8** %18 to i8*
  %234 = bitcast i64* %19 to i8*
  %235 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 1
  %236 = bitcast i8** %16 to i8*
  %237 = bitcast i64* %17 to i8*
  %238 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 3
  %239 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 7
  %240 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 4
  %241 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 5
  %242 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 10
  %243 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 11
  %244 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 12
  %245 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 8
  %246 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 9
  %247 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 13
  %248 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 14
  %249 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 15
  %250 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %25, i64 0, i32 6
  %251 = getelementptr inbounds [2 x i8], [2 x i8]* %30, i64 0, i64 0
  %252 = getelementptr inbounds [2 x i8], [2 x i8]* %30, i64 0, i64 1
  %253 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 6
  %254 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 7
  %255 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 4
  %256 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 5
  %257 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 10
  %258 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 11
  %259 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 12
  %260 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 8
  %261 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 9
  %262 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 13
  %263 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 14
  %264 = bitcast i64* %13 to i8*
  %265 = bitcast %struct.rlimit* %14 to i8*
  %266 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %14, i64 0, i32 0
  %267 = bitcast i64* %11 to i8*
  %268 = bitcast i8** %12 to i8*
  %269 = bitcast i64* %10 to i8*
  %270 = bitcast i64* %231 to <2 x i64>*
  br label %271

; <label>:271:                                    ; preds = %888, %224
  %272 = phi i8* [ null, %224 ], [ %889, %888 ]
  %273 = phi i8* [ null, %224 ], [ %890, %888 ]
  %274 = phi i8 [ %38, %224 ], [ %891, %888 ]
  %275 = phi i64 [ 0, %224 ], [ %892, %888 ]
  %276 = phi i64 [ 0, %224 ], [ %893, %888 ]
  %277 = phi i8* [ null, %224 ], [ %894, %888 ]
  %278 = phi i8 [ 0, %224 ], [ %895, %888 ]
  %279 = phi i8 [ 0, %224 ], [ %896, %888 ]
  %280 = phi i32 [ 0, %224 ], [ %897, %888 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %229) #12
  store i32 -1, i32* %29, align 4
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %312, label %282

; <label>:282:                                    ; preds = %271
  %283 = icmp ne i64 %275, 0
  %284 = and i1 %34, %283
  br i1 %284, label %285, label %310

; <label>:285:                                    ; preds = %282
  %286 = and i8 %274, 1
  %287 = icmp eq i8 %286, 0
  %288 = icmp ne i8 %279, 0
  %289 = or i1 %287, %288
  br i1 %289, label %312, label %290

; <label>:290:                                    ; preds = %285
  %291 = load i32, i32* @optind, align 4
  %292 = icmp eq i32 %291, %0
  br i1 %292, label %312, label %293

; <label>:293:                                    ; preds = %290
  %294 = sext i32 %291 to i64
  %295 = getelementptr inbounds i8*, i8** %1, i64 %294
  %296 = load i8*, i8** %295, align 8
  %297 = load i8, i8* %296, align 1
  %298 = icmp eq i8 %297, 45
  br i1 %298, label %299, label %312

; <label>:299:                                    ; preds = %293
  %300 = getelementptr inbounds i8, i8* %296, i64 1
  %301 = load i8, i8* %300, align 1
  %302 = icmp eq i8 %301, 111
  br i1 %302, label %303, label %312

; <label>:303:                                    ; preds = %299
  %304 = getelementptr inbounds i8, i8* %296, i64 2
  %305 = load i8, i8* %304, align 1
  %306 = icmp eq i8 %305, 0
  %307 = add nsw i32 %291, 1
  %308 = icmp eq i32 %307, %0
  %309 = and i1 %308, %306
  br i1 %309, label %312, label %310

; <label>:310:                                    ; preds = %303, %282
  %311 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %29) #12
  switch i32 %311, label %887 [
    i32 -1, label %312
    i32 1, label %325
    i32 134, label %486
    i32 98, label %493
    i32 100, label %493
    i32 102, label %493
    i32 103, label %493
    i32 104, label %493
    i32 105, label %493
    i32 77, label %493
    i32 110, label %493
    i32 114, label %493
    i32 82, label %493
    i32 86, label %493
    i32 128, label %522
    i32 99, label %531
    i32 67, label %531
    i32 129, label %540
    i32 130, label %554
    i32 131, label %555
    i32 107, label %557
    i32 109, label %888
    i32 132, label %678
    i32 111, label %716
    i32 133, label %724
    i32 115, label %732
    i32 83, label %733
    i32 116, label %785
    i32 84, label %817
    i32 135, label %849
    i32 117, label %861
    i32 121, label %862
    i32 122, label %882
    i32 -130, label %883
    i32 -131, label %884
  ]

; <label>:312:                                    ; preds = %310, %303, %290, %285, %299, %293, %271
  %313 = phi i32 [ -1, %271 ], [ %280, %285 ], [ -1, %310 ], [ %280, %299 ], [ %280, %293 ], [ %280, %290 ], [ %280, %303 ]
  %314 = load i32, i32* @optind, align 4
  %315 = icmp slt i32 %314, %0
  br i1 %315, label %316, label %898

; <label>:316:                                    ; preds = %312
  %317 = add nsw i32 %314, 1
  store i32 %317, i32* @optind, align 4
  %318 = sext i32 %314 to i64
  %319 = getelementptr inbounds i8*, i8** %1, i64 %318
  %320 = bitcast i8** %319 to i64*
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %275, 1
  %323 = getelementptr inbounds i8*, i8** %228, i64 %275
  %324 = bitcast i8** %323 to i64*
  store i64 %321, i64* %324, align 8
  br label %888

; <label>:325:                                    ; preds = %310
  %326 = load i8*, i8** @optarg, align 8
  %327 = load i8, i8* %326, align 1
  %328 = icmp eq i8 %327, 43
  br i1 %328, label %329, label %480

; <label>:329:                                    ; preds = %325
  %330 = load i32, i32* @optind, align 4
  %331 = icmp eq i32 %330, %0
  br i1 %331, label %344, label %332

; <label>:332:                                    ; preds = %329
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds i8*, i8** %1, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = load i8, i8* %335, align 1
  %337 = icmp eq i8 %336, 45
  br i1 %337, label %338, label %344

; <label>:338:                                    ; preds = %332
  %339 = getelementptr inbounds i8, i8* %335, i64 1
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = add nsw i32 %341, -48
  %343 = icmp ult i32 %342, 10
  br label %344

; <label>:344:                                    ; preds = %329, %338, %332
  %345 = phi i1 [ false, %332 ], [ false, %329 ], [ %343, %338 ]
  %346 = and i1 %345, %230
  %347 = zext i1 %346 to i32
  %348 = and i8 %274, 1
  %349 = zext i8 %348 to i32
  %350 = or i32 %347, %349
  %351 = icmp eq i32 %350, 0
  %352 = trunc i32 %350 to i8
  br i1 %351, label %480, label %353

; <label>:353:                                    ; preds = %344
  call void @llvm.memset.p0i8.i64(i8* nonnull %31, i8 0, i64 72, i32 8, i1 false) #12
  store i64 -1, i64* %231, align 8
  %354 = getelementptr inbounds i8, i8* %326, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %233) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %234) #12
  %355 = call i32 @xstrtoumax(i8* %354, i8** nonnull %18, i32 10, i64* nonnull %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  switch i32 %355, label %361 [
    i32 0, label %357
    i32 2, label %357
    i32 1, label %359
    i32 3, label %359
    i32 4, label %356
  ]

; <label>:356:                                    ; preds = %353
  call void @llvm.lifetime.end(i64 8, i8* nonnull %234) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %233) #12
  br label %378

; <label>:357:                                    ; preds = %353, %353
  %358 = load i64, i64* %19, align 8
  br label %359

; <label>:359:                                    ; preds = %357, %353, %353
  %360 = phi i64 [ %358, %357 ], [ -1, %353 ], [ -1, %353 ]
  store i64 %360, i64* %232, align 8
  br label %361

; <label>:361:                                    ; preds = %353, %359
  %362 = load i8*, i8** %18, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %234) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %233) #12
  %363 = icmp eq i8* %362, null
  br i1 %363, label %378, label %364

; <label>:364:                                    ; preds = %361
  %365 = load i8, i8* %362, align 1
  %366 = icmp eq i8 %365, 46
  br i1 %366, label %367, label %378

; <label>:367:                                    ; preds = %364
  %368 = getelementptr inbounds i8, i8* %362, i64 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %236) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %237) #12
  %369 = call i32 @xstrtoumax(i8* %368, i8** nonnull %16, i32 10, i64* nonnull %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  switch i32 %369, label %374 [
    i32 0, label %370
    i32 2, label %370
    i32 1, label %372
    i32 3, label %372
    i32 4, label %376
  ]

; <label>:370:                                    ; preds = %367, %367
  %371 = load i64, i64* %17, align 8
  br label %372

; <label>:372:                                    ; preds = %370, %367, %367
  %373 = phi i64 [ %371, %370 ], [ -1, %367 ], [ -1, %367 ]
  store i64 %373, i64* %235, align 8
  br label %374

; <label>:374:                                    ; preds = %372, %367
  %375 = load i8*, i8** %16, align 8
  br label %376

; <label>:376:                                    ; preds = %367, %374
  %377 = phi i8* [ %375, %374 ], [ null, %367 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %237) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %236) #12
  br label %378

; <label>:378:                                    ; preds = %356, %361, %376, %364
  %379 = phi i8* [ %377, %376 ], [ %362, %364 ], [ null, %361 ], [ null, %356 ]
  %380 = load i64, i64* %232, align 8
  %381 = load i64, i64* %235, align 8
  %382 = or i64 %380, %381
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

; <label>:384:                                    ; preds = %378
  store i64 -1, i64* %232, align 8
  br label %385

; <label>:385:                                    ; preds = %378, %384
  %386 = icmp eq i8* %379, null
  br i1 %386, label %480, label %387

; <label>:387:                                    ; preds = %385
  %388 = load i8, i8* %379, align 1
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %414, label %390

; <label>:390:                                    ; preds = %387
  br label %391

; <label>:391:                                    ; preds = %390, %409
  %392 = phi i8 [ %411, %409 ], [ %388, %390 ]
  %393 = phi i8* [ %410, %409 ], [ %379, %390 ]
  %394 = sext i8 %392 to i32
  switch i32 %394, label %479 [
    i32 98, label %395
    i32 100, label %396
    i32 102, label %397
    i32 103, label %398
    i32 104, label %399
    i32 105, label %400
    i32 77, label %404
    i32 110, label %405
    i32 82, label %406
    i32 114, label %407
    i32 86, label %408
  ]

; <label>:395:                                    ; preds = %391
  store i8 1, i8* %250, align 8
  br label %409

; <label>:396:                                    ; preds = %391
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0), i8** %240, align 8
  br label %409

; <label>:397:                                    ; preds = %391
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 0), i8** %241, align 8
  br label %409

; <label>:398:                                    ; preds = %391
  store i8 1, i8* %242, align 4
  br label %409

; <label>:399:                                    ; preds = %391
  store i8 1, i8* %243, align 1
  br label %409

; <label>:400:                                    ; preds = %391
  %401 = load i8*, i8** %240, align 8
  %402 = icmp eq i8* %401, null
  br i1 %402, label %403, label %409

; <label>:403:                                    ; preds = %400
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0), i8** %240, align 8
  br label %409

; <label>:404:                                    ; preds = %391
  store i8 1, i8* %244, align 2
  br label %409

; <label>:405:                                    ; preds = %391
  store i8 1, i8* %245, align 2
  br label %409

; <label>:406:                                    ; preds = %391
  store i8 1, i8* %246, align 1
  br label %409

; <label>:407:                                    ; preds = %391
  store i8 1, i8* %247, align 1
  br label %409

; <label>:408:                                    ; preds = %391
  store i8 1, i8* %248, align 8
  br label %409

; <label>:409:                                    ; preds = %408, %407, %406, %405, %404, %403, %400, %399, %398, %397, %396, %395
  %410 = getelementptr inbounds i8, i8* %393, i64 1
  %411 = load i8, i8* %410, align 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %391

; <label>:413:                                    ; preds = %409
  br label %414

; <label>:414:                                    ; preds = %413, %387
  br i1 %345, label %415, label %468

; <label>:415:                                    ; preds = %414
  %416 = load i32, i32* @optind, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* @optind, align 4
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds i8*, i8** %1, i64 %418
  %420 = load i8*, i8** %419, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  %422 = call fastcc i8* @parse_field_count(i8* %421, i64* nonnull %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %423 = icmp eq i8* %422, null
  br i1 %423, label %424, label %425

; <label>:424:                                    ; preds = %415
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 4360, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:425:                                    ; preds = %415
  %426 = load i8, i8* %422, align 1
  %427 = icmp eq i8 %426, 46
  br i1 %427, label %428, label %431

; <label>:428:                                    ; preds = %425
  %429 = getelementptr inbounds i8, i8* %422, i64 1
  %430 = call fastcc i8* @parse_field_count(i8* %429, i64* nonnull %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  br label %431

; <label>:431:                                    ; preds = %428, %425
  %432 = phi i8* [ %430, %428 ], [ %422, %425 ]
  %433 = load i64, i64* %238, align 8
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %440

; <label>:435:                                    ; preds = %431
  %436 = load i64, i64* %231, align 8
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %440, label %438

; <label>:438:                                    ; preds = %435
  %439 = add i64 %436, -1
  store i64 %439, i64* %231, align 8
  br label %440

; <label>:440:                                    ; preds = %435, %431, %438
  %441 = load i8, i8* %432, align 1
  %442 = icmp eq i8 %441, 0
  br i1 %442, label %468, label %443

; <label>:443:                                    ; preds = %440
  br label %444

; <label>:444:                                    ; preds = %443, %462
  %445 = phi i8 [ %464, %462 ], [ %441, %443 ]
  %446 = phi i8* [ %463, %462 ], [ %432, %443 ]
  %447 = sext i8 %445 to i32
  switch i32 %447, label %466 [
    i32 98, label %448
    i32 100, label %449
    i32 102, label %450
    i32 103, label %451
    i32 104, label %452
    i32 105, label %453
    i32 77, label %457
    i32 110, label %458
    i32 82, label %459
    i32 114, label %460
    i32 86, label %461
  ]

; <label>:448:                                    ; preds = %444
  store i8 1, i8* %239, align 1
  br label %462

; <label>:449:                                    ; preds = %444
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0), i8** %240, align 8
  br label %462

; <label>:450:                                    ; preds = %444
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 0), i8** %241, align 8
  br label %462

; <label>:451:                                    ; preds = %444
  store i8 1, i8* %242, align 4
  br label %462

; <label>:452:                                    ; preds = %444
  store i8 1, i8* %243, align 1
  br label %462

; <label>:453:                                    ; preds = %444
  %454 = load i8*, i8** %240, align 8
  %455 = icmp eq i8* %454, null
  br i1 %455, label %456, label %462

; <label>:456:                                    ; preds = %453
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0), i8** %240, align 8
  br label %462

; <label>:457:                                    ; preds = %444
  store i8 1, i8* %244, align 2
  br label %462

; <label>:458:                                    ; preds = %444
  store i8 1, i8* %245, align 2
  br label %462

; <label>:459:                                    ; preds = %444
  store i8 1, i8* %246, align 1
  br label %462

; <label>:460:                                    ; preds = %444
  store i8 1, i8* %247, align 1
  br label %462

; <label>:461:                                    ; preds = %444
  store i8 1, i8* %248, align 8
  br label %462

; <label>:462:                                    ; preds = %461, %460, %459, %458, %457, %456, %453, %452, %451, %450, %449, %448
  %463 = getelementptr inbounds i8, i8* %446, i64 1
  %464 = load i8, i8* %463, align 1
  %465 = icmp eq i8 %464, 0
  br i1 %465, label %467, label %444

; <label>:466:                                    ; preds = %444
  call fastcc void @badfieldspec(i8* %420, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #16
  unreachable

; <label>:467:                                    ; preds = %462
  br label %468

; <label>:468:                                    ; preds = %467, %440, %414
  store i8 1, i8* %249, align 1
  %469 = call i8* @xmemdup(i8* nonnull %31, i64 72) #12
  br label %470

; <label>:470:                                    ; preds = %470, %468
  %471 = phi %struct.keyfield** [ @keylist, %468 ], [ %474, %470 ]
  %472 = load %struct.keyfield*, %struct.keyfield** %471, align 8
  %473 = icmp eq %struct.keyfield* %472, null
  %474 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %472, i64 0, i32 16
  br i1 %473, label %475, label %470

; <label>:475:                                    ; preds = %470
  %476 = bitcast %struct.keyfield** %471 to i8**
  store i8* %469, i8** %476, align 8
  %477 = getelementptr inbounds i8, i8* %469, i64 64
  %478 = bitcast i8* %477 to %struct.keyfield**
  store %struct.keyfield* null, %struct.keyfield** %478, align 8
  br label %888

; <label>:479:                                    ; preds = %391
  br label %480

; <label>:480:                                    ; preds = %479, %325, %344, %385
  %481 = phi i8 [ %352, %344 ], [ %352, %385 ], [ %274, %325 ], [ %352, %479 ]
  %482 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  %483 = add i64 %275, 1
  %484 = getelementptr inbounds i8*, i8** %228, i64 %275
  %485 = bitcast i8** %484 to i64*
  store i64 %482, i64* %485, align 8
  br label %888

; <label>:486:                                    ; preds = %310
  %487 = load i8*, i8** @optarg, align 8
  %488 = load void ()*, void ()** @argmatch_die, align 8
  %489 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %487, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @sort_args, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sort_types, i64 0, i64 0), i64 1, void ()* %488) #12
  %490 = getelementptr inbounds [6 x i8], [6 x i8]* @sort_types, i64 0, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = sext i8 %491 to i32
  br label %493

; <label>:493:                                    ; preds = %310, %310, %310, %310, %310, %310, %310, %310, %310, %310, %310, %486
  %494 = phi i32 [ %492, %486 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ], [ %311, %310 ]
  call void @llvm.lifetime.start(i64 2, i8* nonnull %251) #12
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %251, align 1
  store i8 0, i8* %252, align 1
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %521, label %497

; <label>:497:                                    ; preds = %493
  br label %498

; <label>:498:                                    ; preds = %497, %516
  %499 = phi i8 [ %518, %516 ], [ %495, %497 ]
  %500 = phi i8* [ %517, %516 ], [ %251, %497 ]
  %501 = sext i8 %499 to i32
  switch i32 %501, label %520 [
    i32 98, label %502
    i32 100, label %503
    i32 102, label %504
    i32 103, label %505
    i32 104, label %506
    i32 105, label %507
    i32 77, label %511
    i32 110, label %512
    i32 82, label %513
    i32 114, label %514
    i32 86, label %515
  ]

; <label>:502:                                    ; preds = %498
  store i8 1, i8* %253, align 8
  store i8 1, i8* %254, align 1
  br label %516

; <label>:503:                                    ; preds = %498
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0), i8** %255, align 8
  br label %516

; <label>:504:                                    ; preds = %498
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 0), i8** %256, align 8
  br label %516

; <label>:505:                                    ; preds = %498
  store i8 1, i8* %257, align 4
  br label %516

; <label>:506:                                    ; preds = %498
  store i8 1, i8* %258, align 1
  br label %516

; <label>:507:                                    ; preds = %498
  %508 = load i8*, i8** %255, align 8
  %509 = icmp eq i8* %508, null
  br i1 %509, label %510, label %516

; <label>:510:                                    ; preds = %507
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0), i8** %255, align 8
  br label %516

; <label>:511:                                    ; preds = %498
  store i8 1, i8* %259, align 2
  br label %516

; <label>:512:                                    ; preds = %498
  store i8 1, i8* %260, align 2
  br label %516

; <label>:513:                                    ; preds = %498
  store i8 1, i8* %261, align 1
  br label %516

; <label>:514:                                    ; preds = %498
  store i8 1, i8* %262, align 1
  br label %516

; <label>:515:                                    ; preds = %498
  store i8 1, i8* %263, align 8
  br label %516

; <label>:516:                                    ; preds = %515, %514, %513, %512, %511, %510, %507, %506, %505, %504, %503, %502
  %517 = getelementptr inbounds i8, i8* %500, i64 1
  %518 = load i8, i8* %517, align 1
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %520, label %498

; <label>:520:                                    ; preds = %516, %498
  br label %521

; <label>:521:                                    ; preds = %520, %493
  call void @llvm.lifetime.end(i64 2, i8* nonnull %251) #12
  br label %888

; <label>:522:                                    ; preds = %310
  %523 = load i8*, i8** @optarg, align 8
  %524 = icmp eq i8* %523, null
  br i1 %524, label %531, label %525

; <label>:525:                                    ; preds = %522
  %526 = load void ()*, void ()** @argmatch_die, align 8
  %527 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %523, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @check_args, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @check_types, i64 0, i64 0), i64 1, void ()* %526) #12
  %528 = getelementptr inbounds [3 x i8], [3 x i8]* @check_types, i64 0, i64 %527
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  br label %531

; <label>:531:                                    ; preds = %525, %522, %310, %310
  %532 = phi i32 [ %311, %310 ], [ %311, %310 ], [ %530, %525 ], [ 99, %522 ]
  %533 = icmp eq i8 %279, 0
  %534 = sext i8 %279 to i32
  %535 = icmp eq i32 %534, %532
  %536 = or i1 %533, %535
  br i1 %536, label %538, label %537

; <label>:537:                                    ; preds = %531
  call fastcc void @incompatible_options(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #16
  unreachable

; <label>:538:                                    ; preds = %531
  %539 = trunc i32 %532 to i8
  br label %888

; <label>:540:                                    ; preds = %310
  %541 = load i8*, i8** @compress_program, align 8
  %542 = icmp eq i8* %541, null
  br i1 %542, label %543, label %545

; <label>:543:                                    ; preds = %540
  %544 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  br label %552

; <label>:545:                                    ; preds = %540
  %546 = load i8*, i8** @optarg, align 8
  %547 = call i32 @strcmp(i8* nonnull %541, i8* %546) #12
  %548 = icmp eq i32 %547, 0
  %549 = ptrtoint i8* %546 to i64
  br i1 %548, label %552, label %550

; <label>:550:                                    ; preds = %545
  %551 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %551) #12
  unreachable

; <label>:552:                                    ; preds = %543, %545
  %553 = phi i64 [ %544, %543 ], [ %549, %545 ]
  store i64 %553, i64* bitcast (i8** @compress_program to i64*), align 8
  br label %888

; <label>:554:                                    ; preds = %310
  store i1 true, i1* @debug, align 1
  br label %888

; <label>:555:                                    ; preds = %310
  %556 = load i8*, i8** @optarg, align 8
  br label %888

; <label>:557:                                    ; preds = %310
  call void @llvm.memset.p0i8.i64(i8* nonnull %31, i8 0, i64 72, i32 8, i1 false) #12
  store i64 -1, i64* %231, align 8
  %558 = load i8*, i8** @optarg, align 8
  %559 = call fastcc i8* @parse_field_count(i8* %558, i64* nonnull %232, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %560 = load i64, i64* %232, align 8
  %561 = add i64 %560, -1
  store i64 %561, i64* %232, align 8
  %562 = icmp eq i64 %560, 0
  br i1 %562, label %563, label %565

; <label>:563:                                    ; preds = %557
  %564 = load i8*, i8** @optarg, align 8
  call fastcc void @badfieldspec(i8* %564, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0)) #16
  unreachable

; <label>:565:                                    ; preds = %557
  %566 = load i8, i8* %559, align 1
  %567 = icmp eq i8 %566, 46
  br i1 %567, label %570, label %568

; <label>:568:                                    ; preds = %565
  %569 = load i64, i64* %235, align 8
  br label %580

; <label>:570:                                    ; preds = %565
  %571 = getelementptr inbounds i8, i8* %559, i64 1
  %572 = call fastcc i8* @parse_field_count(i8* %571, i64* nonnull %235, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %573 = load i64, i64* %235, align 8
  %574 = add i64 %573, -1
  store i64 %574, i64* %235, align 8
  %575 = icmp eq i64 %573, 0
  br i1 %575, label %578, label %576

; <label>:576:                                    ; preds = %570
  %577 = load i64, i64* %232, align 8
  br label %580

; <label>:578:                                    ; preds = %570
  %579 = load i8*, i8** @optarg, align 8
  call fastcc void @badfieldspec(i8* %579, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0)) #16
  unreachable

; <label>:580:                                    ; preds = %568, %576
  %581 = phi i64 [ %574, %576 ], [ %569, %568 ]
  %582 = phi i64 [ %577, %576 ], [ %561, %568 ]
  %583 = phi i8* [ %572, %576 ], [ %559, %568 ]
  %584 = or i64 %582, %581
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %586, label %587

; <label>:586:                                    ; preds = %580
  store i64 -1, i64* %232, align 8
  br label %587

; <label>:587:                                    ; preds = %580, %586
  %588 = load i8, i8* %583, align 1
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %658, label %590

; <label>:590:                                    ; preds = %587
  br label %591

; <label>:591:                                    ; preds = %590, %609
  %592 = phi i8 [ %611, %609 ], [ %588, %590 ]
  %593 = phi i8* [ %610, %609 ], [ %583, %590 ]
  %594 = sext i8 %592 to i32
  switch i32 %594, label %613 [
    i32 98, label %595
    i32 100, label %596
    i32 102, label %597
    i32 103, label %598
    i32 104, label %599
    i32 105, label %600
    i32 77, label %604
    i32 110, label %605
    i32 82, label %606
    i32 114, label %607
    i32 86, label %608
  ]

; <label>:595:                                    ; preds = %591
  store i8 1, i8* %250, align 8
  br label %609

; <label>:596:                                    ; preds = %591
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0), i8** %240, align 8
  br label %609

; <label>:597:                                    ; preds = %591
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 0), i8** %241, align 8
  br label %609

; <label>:598:                                    ; preds = %591
  store i8 1, i8* %242, align 4
  br label %609

; <label>:599:                                    ; preds = %591
  store i8 1, i8* %243, align 1
  br label %609

; <label>:600:                                    ; preds = %591
  %601 = load i8*, i8** %240, align 8
  %602 = icmp eq i8* %601, null
  br i1 %602, label %603, label %609

; <label>:603:                                    ; preds = %600
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0), i8** %240, align 8
  br label %609

; <label>:604:                                    ; preds = %591
  store i8 1, i8* %244, align 2
  br label %609

; <label>:605:                                    ; preds = %591
  store i8 1, i8* %245, align 2
  br label %609

; <label>:606:                                    ; preds = %591
  store i8 1, i8* %246, align 1
  br label %609

; <label>:607:                                    ; preds = %591
  store i8 1, i8* %247, align 1
  br label %609

; <label>:608:                                    ; preds = %591
  store i8 1, i8* %248, align 8
  br label %609

; <label>:609:                                    ; preds = %608, %607, %606, %605, %604, %603, %600, %599, %598, %597, %596, %595
  %610 = getelementptr inbounds i8, i8* %593, i64 1
  %611 = load i8, i8* %610, align 1
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %657, label %591

; <label>:613:                                    ; preds = %591
  %614 = icmp eq i8 %592, 44
  br i1 %614, label %615, label %658

; <label>:615:                                    ; preds = %613
  %616 = getelementptr inbounds i8, i8* %593, i64 1
  %617 = call fastcc i8* @parse_field_count(i8* %616, i64* %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0))
  %618 = load i64, i64* %231, align 8
  %619 = add i64 %618, -1
  store i64 %619, i64* %231, align 8
  %620 = icmp eq i64 %618, 0
  br i1 %620, label %621, label %623

; <label>:621:                                    ; preds = %615
  %622 = load i8*, i8** @optarg, align 8
  call fastcc void @badfieldspec(i8* %622, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0)) #16
  unreachable

; <label>:623:                                    ; preds = %615
  %624 = load i8, i8* %617, align 1
  %625 = icmp eq i8 %624, 46
  br i1 %625, label %626, label %630

; <label>:626:                                    ; preds = %623
  %627 = getelementptr inbounds i8, i8* %617, i64 1
  %628 = call fastcc i8* @parse_field_count(i8* %627, i64* nonnull %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0))
  %629 = load i8, i8* %628, align 1
  br label %630

; <label>:630:                                    ; preds = %626, %623
  %631 = phi i8 [ %629, %626 ], [ %624, %623 ]
  %632 = phi i8* [ %628, %626 ], [ %617, %623 ]
  %633 = icmp eq i8 %631, 0
  br i1 %633, label %667, label %634

; <label>:634:                                    ; preds = %630
  br label %635

; <label>:635:                                    ; preds = %634, %653
  %636 = phi i8 [ %655, %653 ], [ %631, %634 ]
  %637 = phi i8* [ %654, %653 ], [ %632, %634 ]
  %638 = sext i8 %636 to i32
  switch i32 %638, label %662 [
    i32 98, label %639
    i32 100, label %640
    i32 102, label %641
    i32 103, label %642
    i32 104, label %643
    i32 105, label %644
    i32 77, label %648
    i32 110, label %649
    i32 82, label %650
    i32 114, label %651
    i32 86, label %652
  ]

; <label>:639:                                    ; preds = %635
  store i8 1, i8* %239, align 1
  br label %653

; <label>:640:                                    ; preds = %635
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0), i8** %240, align 8
  br label %653

; <label>:641:                                    ; preds = %635
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 0), i8** %241, align 8
  br label %653

; <label>:642:                                    ; preds = %635
  store i8 1, i8* %242, align 4
  br label %653

; <label>:643:                                    ; preds = %635
  store i8 1, i8* %243, align 1
  br label %653

; <label>:644:                                    ; preds = %635
  %645 = load i8*, i8** %240, align 8
  %646 = icmp eq i8* %645, null
  br i1 %646, label %647, label %653

; <label>:647:                                    ; preds = %644
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0), i8** %240, align 8
  br label %653

; <label>:648:                                    ; preds = %635
  store i8 1, i8* %244, align 2
  br label %653

; <label>:649:                                    ; preds = %635
  store i8 1, i8* %245, align 2
  br label %653

; <label>:650:                                    ; preds = %635
  store i8 1, i8* %246, align 1
  br label %653

; <label>:651:                                    ; preds = %635
  store i8 1, i8* %247, align 1
  br label %653

; <label>:652:                                    ; preds = %635
  store i8 1, i8* %248, align 8
  br label %653

; <label>:653:                                    ; preds = %652, %651, %650, %649, %648, %647, %644, %643, %642, %641, %640, %639
  %654 = getelementptr inbounds i8, i8* %637, i64 1
  %655 = load i8, i8* %654, align 1
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %666, label %635

; <label>:657:                                    ; preds = %609
  br label %658

; <label>:658:                                    ; preds = %657, %587, %613
  %659 = phi i8* [ %593, %613 ], [ %583, %587 ], [ %610, %657 ]
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %270, align 8
  %660 = load i8, i8* %659, align 1
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %667, label %663

; <label>:662:                                    ; preds = %635
  br label %664

; <label>:663:                                    ; preds = %658
  br label %664

; <label>:664:                                    ; preds = %663, %662
  %665 = load i8*, i8** @optarg, align 8
  call fastcc void @badfieldspec(i8* %665, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0)) #16
  unreachable

; <label>:666:                                    ; preds = %653
  br label %667

; <label>:667:                                    ; preds = %666, %630, %658
  %668 = call i8* @xmemdup(i8* nonnull %31, i64 72) #12
  br label %669

; <label>:669:                                    ; preds = %669, %667
  %670 = phi %struct.keyfield** [ @keylist, %667 ], [ %673, %669 ]
  %671 = load %struct.keyfield*, %struct.keyfield** %670, align 8
  %672 = icmp eq %struct.keyfield* %671, null
  %673 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %671, i64 0, i32 16
  br i1 %672, label %674, label %669

; <label>:674:                                    ; preds = %669
  %675 = bitcast %struct.keyfield** %670 to i8**
  store i8* %668, i8** %675, align 8
  %676 = getelementptr inbounds i8, i8* %668, i64 64
  %677 = bitcast i8* %676 to %struct.keyfield**
  store %struct.keyfield* null, %struct.keyfield** %677, align 8
  br label %888

; <label>:678:                                    ; preds = %310
  %679 = load i32, i32* %29, align 4
  %680 = load i8*, i8** @optarg, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %264) #12
  call void @llvm.lifetime.start(i64 16, i8* nonnull %265) #12
  %681 = call i32 @xstrtoumax(i8* %680, i8** null, i32 10, i64* nonnull %13, i8* null) #12
  %682 = call i32 @getrlimit(i32 7, %struct.rlimit* nonnull %14) #12
  %683 = icmp eq i32 %682, 0
  %684 = load i64, i64* %266, align 8
  %685 = add i64 %684, 4294967293
  %686 = trunc i64 %685 to i32
  %687 = select i1 %683, i32 %686, i32 17
  switch i32 %681, label %714 [
    i32 0, label %688
    i32 1, label %705
  ]

; <label>:688:                                    ; preds = %678
  %689 = load i64, i64* %13, align 8
  %690 = trunc i64 %689 to i32
  store i32 %690, i32* @nmerge, align 4
  %691 = and i64 %689, 4294967295
  %692 = icmp eq i64 %691, %689
  br i1 %692, label %693, label %705

; <label>:693:                                    ; preds = %688
  %694 = icmp ult i32 %690, 2
  br i1 %694, label %695, label %703

; <label>:695:                                    ; preds = %693
  %696 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.136, i64 0, i64 0), i32 5) #12
  %697 = sext i32 %679 to i64
  %698 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 %697, i32 0
  %699 = load i8*, i8** %698, align 16
  %700 = call i8* @quote(i8* %680) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %696, i8* %699, i8* %700) #12
  %701 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.137, i64 0, i64 0), i32 5) #12
  %702 = call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.138, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %701, i8* %699, i8* %702) #12
  unreachable

; <label>:703:                                    ; preds = %693
  %704 = icmp ult i32 %687, %690
  br i1 %704, label %705, label %715

; <label>:705:                                    ; preds = %703, %688, %678
  %706 = getelementptr inbounds [11 x i8], [11 x i8]* %15, i64 0, i64 0
  call void @llvm.lifetime.start(i64 11, i8* nonnull %706) #12
  %707 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.139, i64 0, i64 0), i32 5) #12
  %708 = sext i32 %679 to i64
  %709 = getelementptr inbounds [31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 %708, i32 0
  %710 = load i8*, i8** %709, align 16
  %711 = call i8* @quote(i8* %680) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %707, i8* %710, i8* %711) #12
  %712 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.140, i64 0, i64 0), i32 5) #12
  %713 = call i8* @uinttostr(i32 %687, i8* nonnull %706) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %712, i8* %710, i8* %713) #12
  unreachable

; <label>:714:                                    ; preds = %678
  call void @xstrtol_fatal(i32 %681, i32 %679, i8 signext -124, %struct.option* getelementptr inbounds ([31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 0), i8* %680) #15
  unreachable

; <label>:715:                                    ; preds = %703
  call void @llvm.lifetime.end(i64 16, i8* nonnull %265) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %264) #12
  br label %888

; <label>:716:                                    ; preds = %310
  %717 = icmp eq i8* %272, null
  %718 = load i8*, i8** @optarg, align 8
  br i1 %717, label %888, label %719

; <label>:719:                                    ; preds = %716
  %720 = call i32 @strcmp(i8* nonnull %272, i8* %718) #12
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %888, label %722

; <label>:722:                                    ; preds = %719
  %723 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.40, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %723) #12
  unreachable

; <label>:724:                                    ; preds = %310
  %725 = icmp eq i8* %277, null
  %726 = load i8*, i8** @optarg, align 8
  br i1 %725, label %888, label %727

; <label>:727:                                    ; preds = %724
  %728 = call i32 @strcmp(i8* nonnull %277, i8* %726) #12
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %888, label %730

; <label>:730:                                    ; preds = %727
  %731 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %731) #12
  unreachable

; <label>:732:                                    ; preds = %310
  store i1 true, i1* @stable, align 1
  br label %888

; <label>:733:                                    ; preds = %310
  %734 = load i32, i32* %29, align 4
  %735 = load i8*, i8** @optarg, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %267) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %268) #12
  %736 = call i32 @xstrtoumax(i8* %735, i8** nonnull %12, i32 10, i64* nonnull %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i64 0, i64 0)) #12
  switch i32 %736, label %782 [
    i32 0, label %737
    i32 2, label %749
  ]

; <label>:737:                                    ; preds = %733
  %738 = load i8*, i8** %12, align 8
  %739 = getelementptr inbounds i8, i8* %738, i64 -1
  %740 = load i8, i8* %739, align 1
  %741 = sext i8 %740 to i32
  %742 = add nsw i32 %741, -48
  %743 = icmp ult i32 %742, 10
  br i1 %743, label %744, label %772

; <label>:744:                                    ; preds = %737
  %745 = load i64, i64* %11, align 8
  %746 = icmp ult i64 %745, 18014398509481984
  br i1 %746, label %747, label %782

; <label>:747:                                    ; preds = %744
  %748 = shl i64 %745, 10
  store i64 %748, i64* %11, align 8
  br label %772

; <label>:749:                                    ; preds = %733
  %750 = load i8*, i8** %12, align 8
  %751 = getelementptr inbounds i8, i8* %750, i64 -1
  %752 = load i8, i8* %751, align 1
  %753 = sext i8 %752 to i32
  %754 = add nsw i32 %753, -48
  %755 = icmp ult i32 %754, 10
  br i1 %755, label %756, label %782

; <label>:756:                                    ; preds = %749
  %757 = getelementptr inbounds i8, i8* %750, i64 1
  %758 = load i8, i8* %757, align 1
  %759 = icmp eq i8 %758, 0
  br i1 %759, label %760, label %782

; <label>:760:                                    ; preds = %756
  %761 = load i8, i8* %750, align 1
  %762 = sext i8 %761 to i32
  switch i32 %762, label %782 [
    i32 98, label %772
    i32 37, label %763
  ]

; <label>:763:                                    ; preds = %760
  %764 = call double @physmem_total() #12
  %765 = load i64, i64* %11, align 8
  %766 = uitofp i64 %765 to double
  %767 = fmul double %764, %766
  %768 = fdiv double %767, 1.000000e+02
  %769 = fcmp olt double %768, 0x43F0000000000000
  br i1 %769, label %770, label %782

; <label>:770:                                    ; preds = %763
  %771 = fptoui double %768 to i64
  store i64 %771, i64* %11, align 8
  br label %772

; <label>:772:                                    ; preds = %770, %760, %747, %737
  %773 = load i64, i64* %11, align 8
  %774 = load i64, i64* @sort_size, align 8
  %775 = icmp ult i64 %773, %774
  br i1 %775, label %784, label %776

; <label>:776:                                    ; preds = %772
  %777 = load i32, i32* @nmerge, align 4
  %778 = zext i32 %777 to i64
  %779 = mul nuw nsw i64 %778, 34
  %780 = icmp ugt i64 %773, %779
  %781 = select i1 %780, i64 %773, i64 %779
  store i64 %781, i64* @sort_size, align 8
  br label %784

; <label>:782:                                    ; preds = %763, %760, %756, %749, %744, %733
  %783 = phi i32 [ 1, %744 ], [ 1, %763 ], [ 2, %749 ], [ 2, %760 ], [ 2, %756 ], [ %736, %733 ]
  call void @xstrtol_fatal(i32 %783, i32 %734, i8 signext 83, %struct.option* getelementptr inbounds ([31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 0), i8* %735) #15
  unreachable

; <label>:784:                                    ; preds = %772, %776
  call void @llvm.lifetime.end(i64 8, i8* nonnull %268) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %267) #12
  br label %888

; <label>:785:                                    ; preds = %310
  %786 = load i8*, i8** @optarg, align 8
  %787 = load i8, i8* %786, align 1
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %789, label %791

; <label>:789:                                    ; preds = %785
  %790 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %790) #12
  unreachable

; <label>:791:                                    ; preds = %785
  %792 = getelementptr inbounds i8, i8* %786, i64 1
  %793 = load i8, i8* %792, align 1
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %807, label %795

; <label>:795:                                    ; preds = %791
  %796 = icmp eq i8 %787, 92
  %797 = icmp eq i8 %793, 48
  %798 = and i1 %796, %797
  br i1 %798, label %799, label %803

; <label>:799:                                    ; preds = %795
  %800 = getelementptr inbounds i8, i8* %786, i64 2
  %801 = load i8, i8* %800, align 1
  %802 = icmp eq i8 %801, 0
  br i1 %802, label %807, label %803

; <label>:803:                                    ; preds = %795, %799
  %804 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.44, i64 0, i64 0), i32 5) #12
  %805 = load i8*, i8** @optarg, align 8
  %806 = call i8* @quote(i8* %805) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %804, i8* %806) #12
  unreachable

; <label>:807:                                    ; preds = %799, %791
  %808 = phi i8 [ %787, %791 ], [ 0, %799 ]
  %809 = load i32, i32* @tab, align 4
  %810 = icmp eq i32 %809, 128
  %811 = sext i8 %808 to i32
  %812 = icmp eq i32 %809, %811
  %813 = or i1 %810, %812
  br i1 %813, label %816, label %814

; <label>:814:                                    ; preds = %807
  %815 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %815) #12
  unreachable

; <label>:816:                                    ; preds = %807
  store i32 %811, i32* @tab, align 4
  br label %888

; <label>:817:                                    ; preds = %310
  %818 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  %819 = load i64, i64* @temp_dir_count, align 8
  %820 = load i64, i64* @temp_dir_alloc, align 8
  %821 = icmp eq i64 %819, %820
  br i1 %821, label %824, label %822

; <label>:822:                                    ; preds = %817
  %823 = load i8**, i8*** @temp_dirs, align 8
  br label %843

; <label>:824:                                    ; preds = %817
  %825 = load i8*, i8** bitcast (i8*** @temp_dirs to i8**), align 8
  %826 = icmp eq i8* %825, null
  br i1 %826, label %827, label %830

; <label>:827:                                    ; preds = %824
  %828 = icmp eq i64 %819, 0
  %829 = select i1 %828, i64 16, i64 %819
  br label %837

; <label>:830:                                    ; preds = %824
  %831 = icmp ult i64 %819, 768614336404564650
  br i1 %831, label %833, label %832

; <label>:832:                                    ; preds = %830
  call void @xalloc_die() #15
  unreachable

; <label>:833:                                    ; preds = %830
  %834 = lshr i64 %819, 1
  %835 = add i64 %819, 1
  %836 = add i64 %835, %834
  br label %837

; <label>:837:                                    ; preds = %833, %827
  %838 = phi i64 [ %836, %833 ], [ %829, %827 ]
  store i64 %838, i64* @temp_dir_alloc, align 8
  %839 = shl i64 %838, 3
  %840 = call i8* @xrealloc(i8* %825, i64 %839) #12
  store i8* %840, i8** bitcast (i8*** @temp_dirs to i8**), align 8
  %841 = bitcast i8* %840 to i8**
  %842 = load i64, i64* @temp_dir_count, align 8
  br label %843

; <label>:843:                                    ; preds = %822, %837
  %844 = phi i64 [ %819, %822 ], [ %842, %837 ]
  %845 = phi i8** [ %823, %822 ], [ %841, %837 ]
  %846 = add i64 %844, 1
  store i64 %846, i64* @temp_dir_count, align 8
  %847 = getelementptr inbounds i8*, i8** %845, i64 %844
  %848 = bitcast i8** %847 to i64*
  store i64 %818, i64* %848, align 8
  br label %888

; <label>:849:                                    ; preds = %310
  %850 = load i32, i32* %29, align 4
  %851 = load i8*, i8** @optarg, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %269) #12
  %852 = call i32 @xstrtoul(i8* %851, i8** null, i32 10, i64* nonnull %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  switch i32 %852, label %853 [
    i32 1, label %859
    i32 0, label %854
  ]

; <label>:853:                                    ; preds = %849
  call void @xstrtol_fatal(i32 %852, i32 %850, i8 signext -121, %struct.option* getelementptr inbounds ([31 x %struct.option], [31 x %struct.option]* @long_options, i64 0, i64 0), i8* %851) #15
  unreachable

; <label>:854:                                    ; preds = %849
  %855 = load i64, i64* %10, align 8
  %856 = icmp eq i64 %855, 0
  br i1 %856, label %857, label %859

; <label>:857:                                    ; preds = %854
  %858 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.142, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %858) #12
  unreachable

; <label>:859:                                    ; preds = %849, %854
  %860 = phi i64 [ -1, %849 ], [ %855, %854 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %269) #12
  br label %888

; <label>:861:                                    ; preds = %310
  store i1 true, i1* @unique, align 1
  br label %888

; <label>:862:                                    ; preds = %310
  %863 = load i8*, i8** @optarg, align 8
  %864 = load i32, i32* @optind, align 4
  %865 = add nsw i32 %864, -1
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i8*, i8** %1, i64 %866
  %868 = load i8*, i8** %867, align 8
  %869 = icmp eq i8* %863, %868
  br i1 %869, label %870, label %888

; <label>:870:                                    ; preds = %862
  br label %871

; <label>:871:                                    ; preds = %870, %871
  %872 = phi i8* [ %877, %871 ], [ %863, %870 ]
  %873 = load i8, i8* %872, align 1
  %874 = sext i8 %873 to i32
  %875 = add nsw i32 %874, -48
  %876 = icmp ult i32 %875, 10
  %877 = getelementptr inbounds i8, i8* %872, i64 1
  br i1 %876, label %871, label %878

; <label>:878:                                    ; preds = %871
  %879 = icmp ne i8 %873, 0
  %880 = zext i1 %879 to i32
  %881 = sub nsw i32 %864, %880
  store i32 %881, i32* @optind, align 4
  br label %888

; <label>:882:                                    ; preds = %310
  store i1 true, i1* @eolchar, align 1
  br label %888

; <label>:883:                                    ; preds = %310
  call void @usage(i32 0) #16
  unreachable

; <label>:884:                                    ; preds = %310
  %885 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %886 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %885, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* %886, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* null) #12
  call void @exit(i32 0) #15
  unreachable

; <label>:887:                                    ; preds = %310
  call void @usage(i32 2) #16
  unreachable

; <label>:888:                                    ; preds = %724, %716, %727, %719, %310, %475, %521, %538, %552, %554, %555, %674, %715, %732, %784, %816, %843, %859, %861, %882, %480, %878, %862, %316
  %889 = phi i8* [ %272, %310 ], [ %272, %480 ], [ %272, %475 ], [ %272, %521 ], [ %272, %538 ], [ %272, %552 ], [ %272, %554 ], [ %272, %555 ], [ %272, %674 ], [ %272, %715 ], [ %272, %732 ], [ %272, %784 ], [ %272, %816 ], [ %272, %843 ], [ %272, %859 ], [ %272, %861 ], [ %272, %862 ], [ %272, %878 ], [ %272, %882 ], [ %272, %316 ], [ %718, %719 ], [ %272, %727 ], [ %718, %716 ], [ %272, %724 ]
  %890 = phi i8* [ %273, %310 ], [ %273, %480 ], [ %273, %475 ], [ %273, %521 ], [ %273, %538 ], [ %273, %552 ], [ %273, %554 ], [ %556, %555 ], [ %273, %674 ], [ %273, %715 ], [ %273, %732 ], [ %273, %784 ], [ %273, %816 ], [ %273, %843 ], [ %273, %859 ], [ %273, %861 ], [ %273, %862 ], [ %273, %878 ], [ %273, %882 ], [ %273, %316 ], [ %273, %719 ], [ %273, %727 ], [ %273, %716 ], [ %273, %724 ]
  %891 = phi i8 [ %274, %310 ], [ %481, %480 ], [ %352, %475 ], [ %274, %521 ], [ %274, %538 ], [ %274, %552 ], [ %274, %554 ], [ %274, %555 ], [ %274, %674 ], [ %274, %715 ], [ %274, %732 ], [ %274, %784 ], [ %274, %816 ], [ %274, %843 ], [ %274, %859 ], [ %274, %861 ], [ %274, %862 ], [ %274, %878 ], [ %274, %882 ], [ %274, %316 ], [ %274, %719 ], [ %274, %727 ], [ %274, %716 ], [ %274, %724 ]
  %892 = phi i64 [ %275, %310 ], [ %483, %480 ], [ %275, %475 ], [ %275, %521 ], [ %275, %538 ], [ %275, %552 ], [ %275, %554 ], [ %275, %555 ], [ %275, %674 ], [ %275, %715 ], [ %275, %732 ], [ %275, %784 ], [ %275, %816 ], [ %275, %843 ], [ %275, %859 ], [ %275, %861 ], [ %275, %862 ], [ %275, %878 ], [ %275, %882 ], [ %322, %316 ], [ %275, %719 ], [ %275, %727 ], [ %275, %716 ], [ %275, %724 ]
  %893 = phi i64 [ %276, %310 ], [ %276, %480 ], [ %276, %475 ], [ %276, %521 ], [ %276, %538 ], [ %276, %552 ], [ %276, %554 ], [ %276, %555 ], [ %276, %674 ], [ %276, %715 ], [ %276, %732 ], [ %276, %784 ], [ %276, %816 ], [ %276, %843 ], [ %860, %859 ], [ %276, %861 ], [ %276, %862 ], [ %276, %878 ], [ %276, %882 ], [ %276, %316 ], [ %276, %719 ], [ %276, %727 ], [ %276, %716 ], [ %276, %724 ]
  %894 = phi i8* [ %277, %310 ], [ %277, %480 ], [ %277, %475 ], [ %277, %521 ], [ %277, %538 ], [ %277, %552 ], [ %277, %554 ], [ %277, %555 ], [ %277, %674 ], [ %277, %715 ], [ %277, %732 ], [ %277, %784 ], [ %277, %816 ], [ %277, %843 ], [ %277, %859 ], [ %277, %861 ], [ %277, %862 ], [ %277, %878 ], [ %277, %882 ], [ %277, %316 ], [ %277, %719 ], [ %726, %727 ], [ %277, %716 ], [ %726, %724 ]
  %895 = phi i8 [ 1, %310 ], [ %278, %480 ], [ %278, %475 ], [ %278, %521 ], [ %278, %538 ], [ %278, %552 ], [ %278, %554 ], [ %278, %555 ], [ %278, %674 ], [ %278, %715 ], [ %278, %732 ], [ %278, %784 ], [ %278, %816 ], [ %278, %843 ], [ %278, %859 ], [ %278, %861 ], [ %278, %862 ], [ %278, %878 ], [ %278, %882 ], [ %278, %316 ], [ %278, %719 ], [ %278, %727 ], [ %278, %716 ], [ %278, %724 ]
  %896 = phi i8 [ %279, %310 ], [ %279, %480 ], [ %279, %475 ], [ %279, %521 ], [ %539, %538 ], [ %279, %552 ], [ %279, %554 ], [ %279, %555 ], [ %279, %674 ], [ %279, %715 ], [ %279, %732 ], [ %279, %784 ], [ %279, %816 ], [ %279, %843 ], [ %279, %859 ], [ %279, %861 ], [ %279, %862 ], [ %279, %878 ], [ %279, %882 ], [ %279, %316 ], [ %279, %719 ], [ %279, %727 ], [ %279, %716 ], [ %279, %724 ]
  %897 = phi i32 [ 109, %310 ], [ 1, %480 ], [ 1, %475 ], [ %494, %521 ], [ %532, %538 ], [ 129, %552 ], [ 130, %554 ], [ 131, %555 ], [ 107, %674 ], [ 132, %715 ], [ 115, %732 ], [ 83, %784 ], [ 116, %816 ], [ 84, %843 ], [ 135, %859 ], [ 117, %861 ], [ 121, %862 ], [ 121, %878 ], [ 122, %882 ], [ %313, %316 ], [ 111, %719 ], [ 133, %727 ], [ 111, %716 ], [ 133, %724 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %229) #12
  br label %271

; <label>:898:                                    ; preds = %312
  call void @llvm.lifetime.end(i64 4, i8* nonnull %229) #12
  %899 = icmp eq i8* %273, null
  br i1 %899, label %969, label %900

; <label>:900:                                    ; preds = %898
  %901 = icmp eq i64 %275, 0
  br i1 %901, label %909, label %902

; <label>:902:                                    ; preds = %900
  %903 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i64 0, i64 0), i32 5) #12
  %904 = load i8*, i8** %228, align 8
  %905 = call i8* @quotearg_style(i32 4, i8* %904) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %903, i8* %905) #12
  %906 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %907 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.51, i64 0, i64 0), i32 5) #12
  %908 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %906, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8* %907) #12
  call void @usage(i32 2) #16
  unreachable

; <label>:909:                                    ; preds = %900
  %910 = load i8, i8* %273, align 1
  %911 = icmp eq i8 %910, 45
  br i1 %911, label %912, label %918

; <label>:912:                                    ; preds = %909
  %913 = getelementptr inbounds i8, i8* %273, i64 1
  %914 = load i8, i8* %913, align 1
  %915 = icmp eq i8 %914, 0
  br i1 %915, label %916, label %918

; <label>:916:                                    ; preds = %912
  %917 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %926

; <label>:918:                                    ; preds = %909, %912
  %919 = call %struct._IO_FILE* @fopen_safer(i8* nonnull %273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #12
  %920 = icmp eq %struct._IO_FILE* %919, null
  br i1 %920, label %921, label %926

; <label>:921:                                    ; preds = %918
  %922 = tail call i32* @__errno_location() #1
  %923 = load i32, i32* %922, align 4
  %924 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 5) #12
  %925 = call i8* @quotearg_style(i32 4, i8* nonnull %273) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %923, i8* %924, i8* %925) #12
  unreachable

; <label>:926:                                    ; preds = %918, %916
  %927 = phi %struct._IO_FILE* [ %917, %916 ], [ %919, %918 ]
  call void @readtokens0_init(%struct.Tokens* nonnull %27) #12
  %928 = call zeroext i1 @readtokens0(%struct._IO_FILE* %927, %struct.Tokens* nonnull %27) #12
  br i1 %928, label %929, label %932

; <label>:929:                                    ; preds = %926
  %930 = call i32 @rpl_fclose(%struct._IO_FILE* %927) #12
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %935, label %932

; <label>:932:                                    ; preds = %929, %926
  %933 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.55, i64 0, i64 0), i32 5) #12
  %934 = call i8* @quotearg_style(i32 4, i8* nonnull %273) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %933, i8* %934) #12
  unreachable

; <label>:935:                                    ; preds = %929
  %936 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %27, i64 0, i32 0
  %937 = load i64, i64* %936, align 8
  %938 = icmp eq i64 %937, 0
  br i1 %938, label %965, label %939

; <label>:939:                                    ; preds = %935
  call void @free(i8* %227) #12
  %940 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %27, i64 0, i32 1
  %941 = load i8**, i8*** %940, align 8
  %942 = load i64, i64* %936, align 8
  br label %943

; <label>:943:                                    ; preds = %959, %939
  %944 = phi i64 [ 0, %939 ], [ %961, %959 ]
  %945 = icmp ult i64 %944, %942
  br i1 %945, label %946, label %968

; <label>:946:                                    ; preds = %943
  %947 = getelementptr inbounds i8*, i8** %941, i64 %944
  %948 = load i8*, i8** %947, align 8
  %949 = load i8, i8* %948, align 1
  %950 = icmp eq i8 %949, 45
  br i1 %950, label %951, label %959

; <label>:951:                                    ; preds = %946
  %952 = getelementptr inbounds i8, i8* %948, i64 1
  %953 = load i8, i8* %952, align 1
  %954 = icmp eq i8 %953, 0
  br i1 %954, label %955, label %959

; <label>:955:                                    ; preds = %951
  %956 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.56, i64 0, i64 0), i32 5) #12
  %957 = load i8*, i8** %947, align 8
  %958 = call i8* @quotearg_style(i32 4, i8* %957) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %956, i8* %958) #12
  unreachable

; <label>:959:                                    ; preds = %946, %951
  %960 = icmp eq i8 %949, 0
  %961 = add i64 %944, 1
  br i1 %960, label %962, label %943

; <label>:962:                                    ; preds = %959
  %963 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.57, i64 0, i64 0), i32 5) #12
  %964 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %273) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %963, i8* %964, i64 %961) #12
  unreachable

; <label>:965:                                    ; preds = %935
  %966 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #12
  %967 = call i8* @quotearg_style(i32 4, i8* nonnull %273) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %966, i8* %967) #12
  unreachable

; <label>:968:                                    ; preds = %943
  br label %969

; <label>:969:                                    ; preds = %968, %898
  %970 = phi i8** [ %228, %898 ], [ %941, %968 ]
  %971 = phi i64 [ %275, %898 ], [ %942, %968 ]
  %972 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %973 = icmp eq %struct.keyfield* %972, null
  br i1 %973, label %1042, label %974

; <label>:974:                                    ; preds = %969
  %975 = bitcast i8** %255 to <2 x i64>*
  br label %976

; <label>:976:                                    ; preds = %974, %1034
  %977 = phi %struct.keyfield* [ %972, %974 ], [ %1039, %1034 ]
  %978 = phi i8 [ 0, %974 ], [ %1037, %1034 ]
  %979 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 4
  %980 = load i8*, i8** %979, align 8
  %981 = icmp eq i8* %980, null
  br i1 %981, label %982, label %1034

; <label>:982:                                    ; preds = %976
  %983 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 5
  %984 = load i8*, i8** %983, align 8
  %985 = icmp eq i8* %984, null
  br i1 %985, label %986, label %1034

; <label>:986:                                    ; preds = %982
  %987 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 6
  %988 = load i8, i8* %987, align 8
  %989 = icmp eq i8 %988, 0
  br i1 %989, label %990, label %1034

; <label>:990:                                    ; preds = %986
  %991 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 7
  %992 = load i8, i8* %991, align 1
  %993 = icmp eq i8 %992, 0
  br i1 %993, label %994, label %1034

; <label>:994:                                    ; preds = %990
  %995 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 8
  %996 = load i8, i8* %995, align 2
  %997 = icmp eq i8 %996, 0
  br i1 %997, label %998, label %1034

; <label>:998:                                    ; preds = %994
  %999 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 10
  %1000 = load i8, i8* %999, align 4
  %1001 = icmp eq i8 %1000, 0
  br i1 %1001, label %1002, label %1034

; <label>:1002:                                   ; preds = %998
  %1003 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 11
  %1004 = load i8, i8* %1003, align 1
  %1005 = icmp eq i8 %1004, 0
  br i1 %1005, label %1006, label %1034

; <label>:1006:                                   ; preds = %1002
  %1007 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 12
  %1008 = load i8, i8* %1007, align 2
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1010, label %1034

; <label>:1010:                                   ; preds = %1006
  %1011 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 14
  %1012 = load i8, i8* %1011, align 8
  %1013 = icmp eq i8 %1012, 0
  br i1 %1013, label %1014, label %1034

; <label>:1014:                                   ; preds = %1010
  %1015 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 9
  %1016 = load i8, i8* %1015, align 1
  %1017 = icmp eq i8 %1016, 0
  br i1 %1017, label %1018, label %1034

; <label>:1018:                                   ; preds = %1014
  %1019 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 13
  %1020 = load i8, i8* %1019, align 1
  %1021 = icmp eq i8 %1020, 0
  br i1 %1021, label %1022, label %1034

; <label>:1022:                                   ; preds = %1018
  %1023 = load <2 x i64>, <2 x i64>* %975, align 8
  %1024 = bitcast i8** %979 to <2 x i64>*
  store <2 x i64> %1023, <2 x i64>* %1024, align 8
  %1025 = load i8, i8* %253, align 8
  store i8 %1025, i8* %987, align 8
  %1026 = load i8, i8* %254, align 1
  store i8 %1026, i8* %991, align 1
  %1027 = load i8, i8* %259, align 2
  store i8 %1027, i8* %1007, align 2
  %1028 = load i8, i8* %260, align 2
  store i8 %1028, i8* %995, align 2
  %1029 = load i8, i8* %257, align 4
  store i8 %1029, i8* %999, align 4
  %1030 = load i8, i8* %258, align 1
  store i8 %1030, i8* %1003, align 1
  %1031 = load i8, i8* %263, align 8
  store i8 %1031, i8* %1011, align 8
  %1032 = load i8, i8* %261, align 1
  store i8 %1032, i8* %1015, align 1
  %1033 = load i8, i8* %262, align 1
  store i8 %1033, i8* %1019, align 1
  br label %1034

; <label>:1034:                                   ; preds = %994, %998, %976, %982, %986, %990, %1002, %1006, %1010, %1018, %1022, %1014
  %1035 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 9
  %1036 = load i8, i8* %1035, align 1
  %1037 = or i8 %1036, %978
  %1038 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %977, i64 0, i32 16
  %1039 = load %struct.keyfield*, %struct.keyfield** %1038, align 8
  %1040 = icmp eq %struct.keyfield* %1039, null
  br i1 %1040, label %1041, label %976

; <label>:1041:                                   ; preds = %1034
  br i1 %973, label %1042, label %1081

; <label>:1042:                                   ; preds = %969, %1041
  %1043 = phi i8 [ %1037, %1041 ], [ 0, %969 ]
  %1044 = load i8*, i8** %255, align 8
  %1045 = icmp eq i8* %1044, null
  %1046 = load i8*, i8** %256, align 8
  %1047 = icmp eq i8* %1046, null
  %1048 = and i1 %1045, %1047
  %1049 = load i8, i8* %253, align 8
  %1050 = load i8, i8* %254, align 1
  %1051 = or i8 %1049, %1050
  %1052 = load i8, i8* %260, align 2
  %1053 = or i8 %1051, %1052
  %1054 = load i8, i8* %257, align 4
  %1055 = or i8 %1053, %1054
  %1056 = load i8, i8* %258, align 1
  %1057 = or i8 %1055, %1056
  %1058 = load i8, i8* %259, align 2
  %1059 = or i8 %1057, %1058
  %1060 = load i8, i8* %263, align 8
  %1061 = or i8 %1059, %1060
  %1062 = load i8, i8* %261, align 1
  %1063 = or i8 %1061, %1062
  %1064 = icmp eq i8 %1063, 0
  %1065 = and i1 %1064, %1048
  br i1 %1065, label %1182, label %1066

; <label>:1066:                                   ; preds = %1042
  %1067 = call i8* @xmemdup(i8* nonnull %32, i64 72) #12
  br label %1068

; <label>:1068:                                   ; preds = %1068, %1066
  %1069 = phi %struct.keyfield** [ @keylist, %1066 ], [ %1072, %1068 ]
  %1070 = load %struct.keyfield*, %struct.keyfield** %1069, align 8
  %1071 = icmp eq %struct.keyfield* %1070, null
  %1072 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1070, i64 0, i32 16
  br i1 %1071, label %1073, label %1068

; <label>:1073:                                   ; preds = %1068
  %1074 = bitcast %struct.keyfield** %1069 to i8**
  store i8* %1067, i8** %1074, align 8
  %1075 = getelementptr inbounds i8, i8* %1067, i64 64
  %1076 = bitcast i8* %1075 to %struct.keyfield**
  store %struct.keyfield* null, %struct.keyfield** %1076, align 8
  %1077 = load i8, i8* %261, align 1
  %1078 = or i8 %1077, %1043
  %1079 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %1080 = icmp eq %struct.keyfield* %1079, null
  br i1 %1080, label %1182, label %1081

; <label>:1081:                                   ; preds = %1073, %1041
  %1082 = phi i1 [ false, %1041 ], [ true, %1073 ]
  %1083 = phi i8 [ %1037, %1041 ], [ %1078, %1073 ]
  %1084 = phi %struct.keyfield* [ %972, %1041 ], [ %1079, %1073 ]
  br label %1085

; <label>:1085:                                   ; preds = %1081, %1177
  %1086 = phi %struct.keyfield* [ %1179, %1177 ], [ %1084, %1081 ]
  %1087 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 8
  %1088 = load i8, i8* %1087, align 2
  %1089 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 10
  %1090 = load i8, i8* %1089, align 4
  %1091 = add nuw nsw i8 %1090, %1088
  %1092 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 11
  %1093 = load i8, i8* %1092, align 1
  %1094 = add nuw nsw i8 %1091, %1093
  %1095 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 12
  %1096 = load i8, i8* %1095, align 2
  %1097 = add nuw nsw i8 %1094, %1096
  %1098 = zext i8 %1097 to i32
  %1099 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 14
  %1100 = load i8, i8* %1099, align 8
  %1101 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 9
  %1102 = load i8, i8* %1101, align 1
  %1103 = or i8 %1102, %1100
  %1104 = zext i8 %1103 to i32
  %1105 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 4
  %1106 = load i8*, i8** %1105, align 8
  %1107 = icmp ne i8* %1106, null
  %1108 = zext i1 %1107 to i32
  %1109 = or i32 %1108, %1104
  %1110 = add nuw nsw i32 %1109, %1098
  %1111 = icmp ugt i32 %1110, 1
  br i1 %1111, label %1112, label %1177

; <label>:1112:                                   ; preds = %1085
  %1113 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start(i64 31, i8* nonnull %1113) #12
  %1114 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 13
  store i8 0, i8* %1114, align 1
  %1115 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 7
  store i8 0, i8* %1115, align 1
  %1116 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 6
  store i8 0, i8* %1116, align 8
  %1117 = icmp eq i8* %1106, getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0)
  br i1 %1117, label %1118, label %1120

; <label>:1118:                                   ; preds = %1112
  %1119 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 1
  store i8 100, i8* %1113, align 16
  br label %1120

; <label>:1120:                                   ; preds = %1118, %1112
  %1121 = phi i8* [ %1119, %1118 ], [ %1113, %1112 ]
  %1122 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 5
  %1123 = load i8*, i8** %1122, align 8
  %1124 = icmp eq i8* %1123, null
  br i1 %1124, label %1127, label %1125

; <label>:1125:                                   ; preds = %1120
  %1126 = getelementptr inbounds i8, i8* %1121, i64 1
  store i8 102, i8* %1121, align 1
  br label %1127

; <label>:1127:                                   ; preds = %1125, %1120
  %1128 = phi i8* [ %1126, %1125 ], [ %1121, %1120 ]
  %1129 = icmp eq i8 %1090, 0
  br i1 %1129, label %1133, label %1130

; <label>:1130:                                   ; preds = %1127
  %1131 = getelementptr inbounds i8, i8* %1128, i64 1
  store i8 103, i8* %1128, align 1
  %1132 = load i8, i8* %1092, align 1
  br label %1133

; <label>:1133:                                   ; preds = %1130, %1127
  %1134 = phi i8 [ %1132, %1130 ], [ %1093, %1127 ]
  %1135 = phi i8* [ %1131, %1130 ], [ %1128, %1127 ]
  %1136 = icmp eq i8 %1134, 0
  br i1 %1136, label %1139, label %1137

; <label>:1137:                                   ; preds = %1133
  %1138 = getelementptr inbounds i8, i8* %1135, i64 1
  store i8 104, i8* %1135, align 1
  br label %1139

; <label>:1139:                                   ; preds = %1137, %1133
  %1140 = phi i8* [ %1138, %1137 ], [ %1135, %1133 ]
  %1141 = load i8*, i8** %1105, align 8
  %1142 = icmp eq i8* %1141, getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0)
  br i1 %1142, label %1143, label %1145

; <label>:1143:                                   ; preds = %1139
  %1144 = getelementptr inbounds i8, i8* %1140, i64 1
  store i8 105, i8* %1140, align 1
  br label %1145

; <label>:1145:                                   ; preds = %1143, %1139
  %1146 = phi i8* [ %1144, %1143 ], [ %1140, %1139 ]
  %1147 = load i8, i8* %1095, align 2
  %1148 = icmp eq i8 %1147, 0
  br i1 %1148, label %1151, label %1149

; <label>:1149:                                   ; preds = %1145
  %1150 = getelementptr inbounds i8, i8* %1146, i64 1
  store i8 77, i8* %1146, align 1
  br label %1151

; <label>:1151:                                   ; preds = %1149, %1145
  %1152 = phi i8* [ %1150, %1149 ], [ %1146, %1145 ]
  %1153 = load i8, i8* %1087, align 2
  %1154 = icmp eq i8 %1153, 0
  br i1 %1154, label %1157, label %1155

; <label>:1155:                                   ; preds = %1151
  %1156 = getelementptr inbounds i8, i8* %1152, i64 1
  store i8 110, i8* %1152, align 1
  br label %1157

; <label>:1157:                                   ; preds = %1155, %1151
  %1158 = phi i8* [ %1156, %1155 ], [ %1152, %1151 ]
  %1159 = load i8, i8* %1101, align 1
  %1160 = icmp eq i8 %1159, 0
  br i1 %1160, label %1163, label %1161

; <label>:1161:                                   ; preds = %1157
  %1162 = getelementptr inbounds i8, i8* %1158, i64 1
  store i8 82, i8* %1158, align 1
  br label %1163

; <label>:1163:                                   ; preds = %1161, %1157
  %1164 = phi i8* [ %1162, %1161 ], [ %1158, %1157 ]
  %1165 = load i8, i8* %1114, align 1
  %1166 = icmp eq i8 %1165, 0
  br i1 %1166, label %1169, label %1167

; <label>:1167:                                   ; preds = %1163
  %1168 = getelementptr inbounds i8, i8* %1164, i64 1
  store i8 114, i8* %1164, align 1
  br label %1169

; <label>:1169:                                   ; preds = %1167, %1163
  %1170 = phi i8* [ %1168, %1167 ], [ %1164, %1163 ]
  %1171 = load i8, i8* %1099, align 8
  %1172 = icmp eq i8 %1171, 0
  br i1 %1172, label %1175, label %1173

; <label>:1173:                                   ; preds = %1169
  %1174 = getelementptr inbounds i8, i8* %1170, i64 1
  store i8 86, i8* %1170, align 1
  br label %1175

; <label>:1175:                                   ; preds = %1169, %1173
  %1176 = phi i8* [ %1174, %1173 ], [ %1170, %1169 ]
  store i8 0, i8* %1176, align 1
  call fastcc void @incompatible_options(i8* nonnull %1113) #15
  unreachable

; <label>:1177:                                   ; preds = %1085
  %1178 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1086, i64 0, i32 16
  %1179 = load %struct.keyfield*, %struct.keyfield** %1178, align 8
  %1180 = icmp eq %struct.keyfield* %1179, null
  br i1 %1180, label %1181, label %1085

; <label>:1181:                                   ; preds = %1177
  br label %1182

; <label>:1182:                                   ; preds = %1181, %1042, %1073
  %1183 = phi i1 [ true, %1073 ], [ false, %1042 ], [ %1082, %1181 ]
  %1184 = phi i8 [ %1078, %1073 ], [ %1043, %1042 ], [ %1083, %1181 ]
  %1185 = load i1, i1* @debug, align 1
  br i1 %1185, label %1186, label %1543

; <label>:1186:                                   ; preds = %1182
  %1187 = icmp ne i8 %279, 0
  %1188 = icmp ne i8* %272, null
  %1189 = or i1 %1188, %1187
  br i1 %1189, label %1190, label %1192

; <label>:1190:                                   ; preds = %1186
  %1191 = select i1 %1187, i8 %279, i8 111
  store i8 %1191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.opts, i64 0, i64 0), align 1
  call fastcc void @incompatible_options(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @main.opts, i64 0, i64 0)) #16
  unreachable

; <label>:1192:                                   ; preds = %1186
  %1193 = load i8, i8* @hard_LC_COLLATE, align 1
  %1194 = icmp eq i8 %1193, 0
  br i1 %1194, label %1199, label %1195

; <label>:1195:                                   ; preds = %1192
  %1196 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.59, i64 0, i64 0), i32 5) #12
  %1197 = call i8* @setlocale(i32 3, i8* null) #12
  %1198 = call i8* @quote(i8* %1197) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1196, i8* %1198) #12
  br label %1212

; <label>:1199:                                   ; preds = %1192
  br i1 %42, label %1200, label %1204

; <label>:1200:                                   ; preds = %1199
  %1201 = call i8* @setlocale(i32 3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  %1202 = icmp ne i8* %1201, null
  %1203 = zext i1 %1202 to i8
  br label %1204

; <label>:1204:                                   ; preds = %1200, %1199
  %1205 = phi i8 [ %1203, %1200 ], [ %43, %1199 ]
  %1206 = icmp eq i8 %1205, 0
  br i1 %1206, label %1207, label %1209

; <label>:1207:                                   ; preds = %1204
  %1208 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.61, i64 0, i64 0), i32 5) #12
  br label %1209

; <label>:1209:                                   ; preds = %1204, %1207
  %1210 = phi i8* [ %1208, %1207 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %1204 ]
  %1211 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i8* %1210, i8* %1211) #12
  br label %1212

; <label>:1212:                                   ; preds = %1209, %1195
  %1213 = load i8*, i8** %255, align 8
  %1214 = load i8*, i8** %256, align 8
  %1215 = load i8, i8* %253, align 8
  %1216 = load i8, i8* %254, align 1
  %1217 = load i8, i8* %260, align 2
  %1218 = load i8, i8* %261, align 1
  %1219 = load i8, i8* %257, align 4
  %1220 = load i8, i8* %258, align 1
  %1221 = load i8, i8* %259, align 2
  %1222 = load i8, i8* %262, align 1
  %1223 = load i8, i8* %263, align 8
  %1224 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %1225 = icmp eq %struct.keyfield* %1224, null
  br i1 %1225, label %1428, label %1226

; <label>:1226:                                   ; preds = %1212
  %1227 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  %1228 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i64 0, i64 0
  %1229 = getelementptr inbounds [47 x i8], [47 x i8]* %8, i64 0, i64 0
  %1230 = getelementptr inbounds [46 x i8], [46 x i8]* %7, i64 0, i64 1
  %1231 = bitcast [46 x i8]* %7 to i16*
  %1232 = getelementptr inbounds [47 x i8], [47 x i8]* %8, i64 0, i64 3
  %1233 = bitcast [47 x i8]* %8 to i32*
  br label %1234

; <label>:1234:                                   ; preds = %1386, %1226
  %1235 = phi %struct.keyfield* [ %1224, %1226 ], [ %1425, %1386 ]
  %1236 = phi i64 [ 1, %1226 ], [ %1424, %1386 ]
  %1237 = phi i8* [ %1213, %1226 ], [ %1379, %1386 ]
  %1238 = phi i8* [ %1214, %1226 ], [ %1387, %1386 ]
  %1239 = phi i8 [ %1215, %1226 ], [ %1391, %1386 ]
  %1240 = phi i8 [ %1216, %1226 ], [ %1395, %1386 ]
  %1241 = phi i8 [ %1217, %1226 ], [ %1402, %1386 ]
  %1242 = phi i8 [ %1218, %1226 ], [ %1414, %1386 ]
  %1243 = phi i8 [ %1219, %1226 ], [ %1406, %1386 ]
  %1244 = phi i8 [ %1220, %1226 ], [ %1410, %1386 ]
  %1245 = phi i8 [ %1221, %1226 ], [ %1399, %1386 ]
  %1246 = phi i8 [ %1222, %1226 ], [ %1422, %1386 ]
  %1247 = phi i8 [ %1223, %1226 ], [ %1418, %1386 ]
  %1248 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 15
  %1249 = load i8, i8* %1248, align 1
  %1250 = icmp eq i8 %1249, 0
  %1251 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 0
  br i1 %1250, label %1286, label %1252

; <label>:1252:                                   ; preds = %1234
  %1253 = load i64, i64* %1251, align 8
  %1254 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 2
  %1255 = load i64, i64* %1254, align 8
  call void @llvm.lifetime.start(i64 21, i8* nonnull %1227) #12
  call void @llvm.lifetime.start(i64 46, i8* nonnull %1228) #12
  call void @llvm.lifetime.start(i64 47, i8* nonnull %1229) #12
  %1256 = icmp eq i64 %1253, -1
  %1257 = zext i1 %1256 to i64
  %1258 = add i64 %1257, %1253
  store i16 43, i16* %1231, align 16
  %1259 = call i8* @umaxtostr(i64 %1258, i8* nonnull %1227) #12
  %1260 = call i8* @__stpcpy_chk(i8* nonnull %1230, i8* nonnull %1259, i64 45) #12
  store i32 2124589, i32* %1233, align 16
  %1261 = add i64 %1258, 1
  %1262 = call i8* @umaxtostr(i64 %1261, i8* nonnull %1227) #12
  %1263 = call i8* @__stpcpy_chk(i8* nonnull %1232, i8* nonnull %1262, i64 44) #12
  %1264 = load i64, i64* %1254, align 8
  %1265 = icmp eq i64 %1264, -1
  br i1 %1265, label %1282, label %1266

; <label>:1266:                                   ; preds = %1252
  %1267 = getelementptr i8, i8* %1260, i64 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1260, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i64 3, i32 1, i1 false) #12
  %1268 = add i64 %1255, 1
  %1269 = call i8* @umaxtostr(i64 %1268, i8* nonnull %1227) #12
  %1270 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1267, i1 false) #12
  %1271 = call i8* @__stpcpy_chk(i8* nonnull %1267, i8* nonnull %1269, i64 %1270) #12
  %1272 = getelementptr i8, i8* %1263, i64 1
  %1273 = bitcast i8* %1263 to i16*
  store i16 44, i16* %1273, align 1
  %1274 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 3
  %1275 = load i64, i64* %1274, align 8
  %1276 = icmp eq i64 %1275, -1
  %1277 = zext i1 %1276 to i64
  %1278 = add i64 %1277, %1268
  %1279 = call i8* @umaxtostr(i64 %1278, i8* nonnull %1227) #12
  %1280 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1272, i1 false) #12
  %1281 = call i8* @__stpcpy_chk(i8* nonnull %1272, i8* nonnull %1279, i64 %1280) #12
  br label %1282

; <label>:1282:                                   ; preds = %1266, %1252
  %1283 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.147, i64 0, i64 0), i32 5) #12
  %1284 = call i8* @quote_n(i32 0, i8* nonnull %1228) #12
  %1285 = call i8* @quote_n(i32 1, i8* nonnull %1229) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1283, i8* %1284, i8* %1285) #12
  call void @llvm.lifetime.end(i64 47, i8* nonnull %1229) #12
  call void @llvm.lifetime.end(i64 46, i8* nonnull %1228) #12
  call void @llvm.lifetime.end(i64 21, i8* nonnull %1227) #12
  br label %1286

; <label>:1286:                                   ; preds = %1282, %1234
  %1287 = load i64, i64* %1251, align 8
  %1288 = icmp eq i64 %1287, -1
  br i1 %1288, label %1295, label %1289

; <label>:1289:                                   ; preds = %1286
  %1290 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 2
  %1291 = load i64, i64* %1290, align 8
  %1292 = icmp ult i64 %1291, %1287
  br i1 %1292, label %1293, label %1295

; <label>:1293:                                   ; preds = %1289
  %1294 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.148, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1294, i64 %1236) #12
  br label %1295

; <label>:1295:                                   ; preds = %1293, %1289, %1286
  %1296 = phi i1 [ true, %1293 ], [ false, %1289 ], [ false, %1286 ]
  %1297 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 8
  %1298 = load i8, i8* %1297, align 2
  %1299 = icmp eq i8 %1298, 0
  br i1 %1299, label %1300, label %1312

; <label>:1300:                                   ; preds = %1295
  %1301 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 10
  %1302 = load i8, i8* %1301, align 4
  %1303 = icmp eq i8 %1302, 0
  br i1 %1303, label %1304, label %1312

; <label>:1304:                                   ; preds = %1300
  %1305 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 11
  %1306 = load i8, i8* %1305, align 1
  %1307 = icmp eq i8 %1306, 0
  br i1 %1307, label %1308, label %1312

; <label>:1308:                                   ; preds = %1304
  %1309 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 12
  %1310 = load i8, i8* %1309, align 2
  %1311 = icmp ne i8 %1310, 0
  br label %1312

; <label>:1312:                                   ; preds = %1308, %1304, %1300, %1295
  %1313 = phi i1 [ true, %1304 ], [ %1311, %1308 ], [ true, %1300 ], [ true, %1295 ]
  %1314 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 2
  %1315 = load i64, i64* %1314, align 8
  %1316 = icmp eq i64 %1315, 0
  br i1 %1316, label %1317, label %1321

; <label>:1317:                                   ; preds = %1312
  %1318 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 3
  %1319 = load i64, i64* %1318, align 8
  %1320 = icmp ne i64 %1319, 0
  br label %1321

; <label>:1321:                                   ; preds = %1317, %1312
  %1322 = phi i1 [ false, %1312 ], [ %1320, %1317 ]
  br i1 %1296, label %1349, label %1323

; <label>:1323:                                   ; preds = %1321
  %1324 = load i32, i32* @tab, align 4
  %1325 = icmp ne i32 %1324, 128
  %1326 = or i1 %1183, %1325
  %1327 = or i1 %1322, %1326
  br i1 %1327, label %1349, label %1328

; <label>:1328:                                   ; preds = %1323
  %1329 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 6
  %1330 = load i8, i8* %1329, align 8
  %1331 = icmp eq i8 %1330, 0
  %1332 = xor i1 %1331, true
  %1333 = or i1 %1313, %1332
  br i1 %1333, label %1334, label %1347

; <label>:1334:                                   ; preds = %1328
  br i1 %1331, label %1335, label %1339

; <label>:1335:                                   ; preds = %1334
  %1336 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 1
  %1337 = load i64, i64* %1336, align 8
  %1338 = icmp eq i64 %1337, 0
  br i1 %1338, label %1339, label %1347

; <label>:1339:                                   ; preds = %1335, %1334
  %1340 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 7
  %1341 = load i8, i8* %1340, align 1
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1343, label %1349

; <label>:1343:                                   ; preds = %1339
  %1344 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 3
  %1345 = load i64, i64* %1344, align 8
  %1346 = icmp eq i64 %1345, 0
  br i1 %1346, label %1349, label %1347

; <label>:1347:                                   ; preds = %1343, %1335, %1328
  %1348 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.149, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1348, i64 %1236) #12
  br label %1349

; <label>:1349:                                   ; preds = %1347, %1343, %1339, %1323, %1321
  br i1 %1183, label %1371, label %1350

; <label>:1350:                                   ; preds = %1349
  %1351 = load i8, i8* %1297, align 2
  %1352 = icmp eq i8 %1351, 0
  br i1 %1352, label %1353, label %1361

; <label>:1353:                                   ; preds = %1350
  %1354 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 10
  %1355 = load i8, i8* %1354, align 4
  %1356 = icmp eq i8 %1355, 0
  br i1 %1356, label %1357, label %1361

; <label>:1357:                                   ; preds = %1353
  %1358 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 11
  %1359 = load i8, i8* %1358, align 1
  %1360 = icmp eq i8 %1359, 0
  br i1 %1360, label %1371, label %1361

; <label>:1361:                                   ; preds = %1357, %1353, %1350
  %1362 = load i64, i64* %1251, align 8
  %1363 = add i64 %1362, 1
  %1364 = load i64, i64* %1314, align 8
  %1365 = icmp eq i64 %1363, 0
  %1366 = add i64 %1362, 2
  %1367 = select i1 %1365, i64 %1366, i64 %1363
  %1368 = icmp ult i64 %1364, %1367
  br i1 %1368, label %1371, label %1369

; <label>:1369:                                   ; preds = %1361
  %1370 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.150, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1370, i64 %1236) #12
  br label %1371

; <label>:1371:                                   ; preds = %1369, %1361, %1357, %1349
  %1372 = icmp eq i8* %1237, null
  br i1 %1372, label %1378, label %1373

; <label>:1373:                                   ; preds = %1371
  %1374 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 4
  %1375 = load i8*, i8** %1374, align 8
  %1376 = icmp eq i8* %1237, %1375
  %1377 = select i1 %1376, i8* null, i8* %1237
  br label %1378

; <label>:1378:                                   ; preds = %1373, %1371
  %1379 = phi i8* [ null, %1371 ], [ %1377, %1373 ]
  %1380 = icmp eq i8* %1238, null
  br i1 %1380, label %1386, label %1381

; <label>:1381:                                   ; preds = %1378
  %1382 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 5
  %1383 = load i8*, i8** %1382, align 8
  %1384 = icmp eq i8* %1238, %1383
  %1385 = select i1 %1384, i8* null, i8* %1238
  br label %1386

; <label>:1386:                                   ; preds = %1381, %1378
  %1387 = phi i8* [ null, %1378 ], [ %1385, %1381 ]
  %1388 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 6
  %1389 = load i8, i8* %1388, align 8
  %1390 = xor i8 %1389, 1
  %1391 = and i8 %1390, %1239
  %1392 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 7
  %1393 = load i8, i8* %1392, align 1
  %1394 = xor i8 %1393, 1
  %1395 = and i8 %1394, %1240
  %1396 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 12
  %1397 = load i8, i8* %1396, align 2
  %1398 = xor i8 %1397, 1
  %1399 = and i8 %1398, %1245
  %1400 = load i8, i8* %1297, align 2
  %1401 = xor i8 %1400, 1
  %1402 = and i8 %1401, %1241
  %1403 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 10
  %1404 = load i8, i8* %1403, align 4
  %1405 = xor i8 %1404, 1
  %1406 = and i8 %1405, %1243
  %1407 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 11
  %1408 = load i8, i8* %1407, align 1
  %1409 = xor i8 %1408, 1
  %1410 = and i8 %1409, %1244
  %1411 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 9
  %1412 = load i8, i8* %1411, align 1
  %1413 = xor i8 %1412, 1
  %1414 = and i8 %1413, %1242
  %1415 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 14
  %1416 = load i8, i8* %1415, align 8
  %1417 = xor i8 %1416, 1
  %1418 = and i8 %1417, %1247
  %1419 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 13
  %1420 = load i8, i8* %1419, align 1
  %1421 = xor i8 %1420, 1
  %1422 = and i8 %1421, %1246
  %1423 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1235, i64 0, i32 16
  %1424 = add i64 %1236, 1
  %1425 = load %struct.keyfield*, %struct.keyfield** %1423, align 8
  %1426 = icmp eq %struct.keyfield* %1425, null
  br i1 %1426, label %1427, label %1234

; <label>:1427:                                   ; preds = %1386
  br label %1428

; <label>:1428:                                   ; preds = %1427, %1212
  %1429 = phi i8 [ %1223, %1212 ], [ %1418, %1427 ]
  %1430 = phi i8 [ %1222, %1212 ], [ %1422, %1427 ]
  %1431 = phi i8 [ %1221, %1212 ], [ %1399, %1427 ]
  %1432 = phi i8 [ %1220, %1212 ], [ %1410, %1427 ]
  %1433 = phi i8 [ %1219, %1212 ], [ %1406, %1427 ]
  %1434 = phi i8 [ %1218, %1212 ], [ %1414, %1427 ]
  %1435 = phi i8 [ %1217, %1212 ], [ %1402, %1427 ]
  %1436 = phi i8 [ %1216, %1212 ], [ %1395, %1427 ]
  %1437 = phi i8 [ %1215, %1212 ], [ %1391, %1427 ]
  %1438 = phi i8* [ %1214, %1212 ], [ %1387, %1427 ]
  %1439 = phi i8* [ %1213, %1212 ], [ %1379, %1427 ]
  %1440 = icmp eq i8* %1439, null
  %1441 = icmp eq i8* %1438, null
  %1442 = and i1 %1441, %1440
  %1443 = or i8 %1431, %1429
  %1444 = or i8 %1443, %1432
  %1445 = or i8 %1444, %1433
  %1446 = or i8 %1445, %1434
  %1447 = or i8 %1446, %1435
  %1448 = or i8 %1447, %1436
  %1449 = or i8 %1448, %1437
  %1450 = icmp eq i8 %1449, 0
  %1451 = and i1 %1450, %1442
  br i1 %1451, label %1454, label %1452

; <label>:1452:                                   ; preds = %1428
  %1453 = load i1, i1* @stable, align 1
  br label %1466

; <label>:1454:                                   ; preds = %1428
  %1455 = icmp eq i8 %1430, 0
  br i1 %1455, label %1543, label %1456

; <label>:1456:                                   ; preds = %1454
  %1457 = load i1, i1* @stable, align 1
  br i1 %1457, label %1463, label %1458

; <label>:1458:                                   ; preds = %1456
  %1459 = load i1, i1* @unique, align 1
  %1460 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %1461 = icmp ne %struct.keyfield* %1460, null
  %1462 = and i1 %1459, %1461
  br i1 %1462, label %1466, label %1535

; <label>:1463:                                   ; preds = %1456
  %1464 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %1465 = icmp eq %struct.keyfield* %1464, null
  br i1 %1465, label %1543, label %1466

; <label>:1466:                                   ; preds = %1463, %1458, %1452
  %1467 = phi i1 [ %1453, %1452 ], [ true, %1463 ], [ false, %1458 ]
  %1468 = load i1, i1* @unique, align 1
  %1469 = or i1 %1467, %1468
  %1470 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  call void @llvm.lifetime.start(i64 31, i8* nonnull %1470) #12
  %1471 = or i8 %1437, %1436
  %1472 = icmp eq i8 %1471, 0
  br i1 %1472, label %1475, label %1473

; <label>:1473:                                   ; preds = %1466
  %1474 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 1
  store i8 98, i8* %1470, align 16
  br label %1475

; <label>:1475:                                   ; preds = %1473, %1466
  %1476 = phi i8* [ %1474, %1473 ], [ %1470, %1466 ]
  %1477 = icmp eq i8* %1439, getelementptr inbounds ([256 x i8], [256 x i8]* @nondictionary, i64 0, i64 0)
  br i1 %1477, label %1478, label %1480

; <label>:1478:                                   ; preds = %1475
  %1479 = getelementptr inbounds i8, i8* %1476, i64 1
  store i8 100, i8* %1476, align 1
  br label %1480

; <label>:1480:                                   ; preds = %1478, %1475
  %1481 = phi i8* [ %1479, %1478 ], [ %1476, %1475 ]
  br i1 %1441, label %1484, label %1482

; <label>:1482:                                   ; preds = %1480
  %1483 = getelementptr inbounds i8, i8* %1481, i64 1
  store i8 102, i8* %1481, align 1
  br label %1484

; <label>:1484:                                   ; preds = %1482, %1480
  %1485 = phi i8* [ %1483, %1482 ], [ %1481, %1480 ]
  %1486 = icmp eq i8 %1433, 0
  br i1 %1486, label %1489, label %1487

; <label>:1487:                                   ; preds = %1484
  %1488 = getelementptr inbounds i8, i8* %1485, i64 1
  store i8 103, i8* %1485, align 1
  br label %1489

; <label>:1489:                                   ; preds = %1487, %1484
  %1490 = phi i8* [ %1488, %1487 ], [ %1485, %1484 ]
  %1491 = icmp eq i8 %1432, 0
  br i1 %1491, label %1494, label %1492

; <label>:1492:                                   ; preds = %1489
  %1493 = getelementptr inbounds i8, i8* %1490, i64 1
  store i8 104, i8* %1490, align 1
  br label %1494

; <label>:1494:                                   ; preds = %1492, %1489
  %1495 = phi i8* [ %1493, %1492 ], [ %1490, %1489 ]
  %1496 = icmp eq i8* %1439, getelementptr inbounds ([256 x i8], [256 x i8]* @nonprinting, i64 0, i64 0)
  br i1 %1496, label %1497, label %1499

; <label>:1497:                                   ; preds = %1494
  %1498 = getelementptr inbounds i8, i8* %1495, i64 1
  store i8 105, i8* %1495, align 1
  br label %1499

; <label>:1499:                                   ; preds = %1497, %1494
  %1500 = phi i8* [ %1498, %1497 ], [ %1495, %1494 ]
  %1501 = icmp eq i8 %1431, 0
  br i1 %1501, label %1504, label %1502

; <label>:1502:                                   ; preds = %1499
  %1503 = getelementptr inbounds i8, i8* %1500, i64 1
  store i8 77, i8* %1500, align 1
  br label %1504

; <label>:1504:                                   ; preds = %1502, %1499
  %1505 = phi i8* [ %1503, %1502 ], [ %1500, %1499 ]
  %1506 = icmp eq i8 %1435, 0
  br i1 %1506, label %1509, label %1507

; <label>:1507:                                   ; preds = %1504
  %1508 = getelementptr inbounds i8, i8* %1505, i64 1
  store i8 110, i8* %1505, align 1
  br label %1509

; <label>:1509:                                   ; preds = %1507, %1504
  %1510 = phi i8* [ %1508, %1507 ], [ %1505, %1504 ]
  %1511 = icmp eq i8 %1434, 0
  br i1 %1511, label %1514, label %1512

; <label>:1512:                                   ; preds = %1509
  %1513 = getelementptr inbounds i8, i8* %1510, i64 1
  store i8 82, i8* %1510, align 1
  br label %1514

; <label>:1514:                                   ; preds = %1512, %1509
  %1515 = phi i8* [ %1513, %1512 ], [ %1510, %1509 ]
  %1516 = icmp eq i8 %1430, 0
  %1517 = xor i1 %1469, true
  %1518 = or i1 %1516, %1517
  br i1 %1518, label %1521, label %1519

; <label>:1519:                                   ; preds = %1514
  %1520 = getelementptr inbounds i8, i8* %1515, i64 1
  store i8 114, i8* %1515, align 1
  br label %1521

; <label>:1521:                                   ; preds = %1519, %1514
  %1522 = phi i8* [ %1520, %1519 ], [ %1515, %1514 ]
  %1523 = icmp eq i8 %1429, 0
  br i1 %1523, label %1526, label %1524

; <label>:1524:                                   ; preds = %1521
  %1525 = getelementptr inbounds i8, i8* %1522, i64 1
  store i8 86, i8* %1522, align 1
  br label %1526

; <label>:1526:                                   ; preds = %1524, %1521
  %1527 = phi i8* [ %1525, %1524 ], [ %1522, %1521 ]
  store i8 0, i8* %1527, align 1
  %1528 = call i64 @strlen(i8* nonnull %1470) #14
  %1529 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.152, i64 0, i64 0), i64 %1528, i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1529, i8* nonnull %1470) #12
  call void @llvm.lifetime.end(i64 31, i8* nonnull %1470) #12
  br i1 %1516, label %1543, label %1530

; <label>:1530:                                   ; preds = %1526
  %1531 = load i1, i1* @stable, align 1
  br i1 %1531, label %1543, label %1532

; <label>:1532:                                   ; preds = %1530
  %1533 = load i1, i1* @unique, align 1
  %1534 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  br label %1535

; <label>:1535:                                   ; preds = %1532, %1458
  %1536 = phi %struct.keyfield* [ %1534, %1532 ], [ %1460, %1458 ]
  %1537 = phi i1 [ %1533, %1532 ], [ %1459, %1458 ]
  %1538 = xor i1 %1537, true
  %1539 = icmp ne %struct.keyfield* %1536, null
  %1540 = and i1 %1539, %1538
  br i1 %1540, label %1541, label %1543

; <label>:1541:                                   ; preds = %1535
  %1542 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.153, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1542) #12
  br label %1543

; <label>:1543:                                   ; preds = %1541, %1535, %1530, %1526, %1463, %1454, %1182
  %1544 = load i8, i8* %262, align 1
  store i8 %1544, i8* @reverse, align 1
  %1545 = and i8 %1184, 1
  %1546 = icmp eq i8 %1545, 0
  br i1 %1546, label %1559, label %1547

; <label>:1547:                                   ; preds = %1543
  %1548 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1548) #12
  %1549 = call %struct.randread_source* @randread_new(i8* %277, i64 16) #12
  %1550 = icmp eq %struct.randread_source* %1549, null
  br i1 %1550, label %1551, label %1553

; <label>:1551:                                   ; preds = %1547
  %1552 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %1552, i8* %277) #15
  unreachable

; <label>:1553:                                   ; preds = %1547
  call void @randread(%struct.randread_source* nonnull %1549, i8* nonnull %1548, i64 16) #12
  %1554 = call i32 @randread_free(%struct.randread_source* nonnull %1549) #12
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1558, label %1556

; <label>:1556:                                   ; preds = %1553
  %1557 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %1557, i8* %277) #15
  unreachable

; <label>:1558:                                   ; preds = %1553
  call void @md5_init_ctx(%struct.md5_ctx* nonnull @random_md5_state) #12
  call void @md5_process_bytes(i8* nonnull %1548, i64 16, %struct.md5_ctx* nonnull @random_md5_state) #12
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1548) #12
  br label %1559

; <label>:1559:                                   ; preds = %1543, %1558
  %1560 = load i64, i64* @temp_dir_count, align 8
  %1561 = icmp eq i64 %1560, 0
  br i1 %1561, label %1562, label %1583

; <label>:1562:                                   ; preds = %1559
  %1563 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i64 0, i64 0)) #12
  %1564 = icmp ne i8* %1563, null
  %1565 = select i1 %1564, i8* %1563, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %1566 = load i64, i64* @temp_dir_alloc, align 8
  %1567 = icmp eq i64 %1566, 0
  br i1 %1567, label %1570, label %1568

; <label>:1568:                                   ; preds = %1562
  %1569 = load i8**, i8*** @temp_dirs, align 8
  br label %1578

; <label>:1570:                                   ; preds = %1562
  %1571 = load i8*, i8** bitcast (i8*** @temp_dirs to i8**), align 8
  %1572 = icmp eq i8* %1571, null
  %1573 = select i1 %1572, i64 16, i64 1
  store i64 %1573, i64* @temp_dir_alloc, align 8
  %1574 = shl nuw nsw i64 %1573, 3
  %1575 = call i8* @xrealloc(i8* %1571, i64 %1574) #12
  store i8* %1575, i8** bitcast (i8*** @temp_dirs to i8**), align 8
  %1576 = bitcast i8* %1575 to i8**
  %1577 = load i64, i64* @temp_dir_count, align 8
  br label %1578

; <label>:1578:                                   ; preds = %1568, %1570
  %1579 = phi i64 [ 0, %1568 ], [ %1577, %1570 ]
  %1580 = phi i8** [ %1569, %1568 ], [ %1576, %1570 ]
  %1581 = add i64 %1579, 1
  store i64 %1581, i64* @temp_dir_count, align 8
  %1582 = getelementptr inbounds i8*, i8** %1580, i64 %1579
  store i8* %1565, i8** %1582, align 8
  br label %1583

; <label>:1583:                                   ; preds = %1578, %1559
  %1584 = icmp eq i64 %971, 0
  br i1 %1584, label %1585, label %1589

; <label>:1585:                                   ; preds = %1583
  %1586 = bitcast i8** %970 to i8*
  call void @free(i8* %1586) #12
  %1587 = call noalias i8* @xmalloc(i64 8) #12
  %1588 = bitcast i8* %1587 to i8**
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), i8** %1588, align 8
  br label %1589

; <label>:1589:                                   ; preds = %1585, %1583
  %1590 = phi i8** [ %1588, %1585 ], [ %970, %1583 ]
  %1591 = phi i64 [ 1, %1585 ], [ %971, %1583 ]
  %1592 = load i64, i64* @sort_size, align 8
  %1593 = icmp eq i64 %1592, 0
  br i1 %1593, label %1600, label %1594

; <label>:1594:                                   ; preds = %1589
  %1595 = load i32, i32* @nmerge, align 4
  %1596 = zext i32 %1595 to i64
  %1597 = mul nuw nsw i64 %1596, 34
  %1598 = icmp ugt i64 %1592, %1597
  %1599 = select i1 %1598, i64 %1592, i64 %1597
  store i64 %1599, i64* @sort_size, align 8
  br label %1600

; <label>:1600:                                   ; preds = %1589, %1594
  %1601 = icmp eq i8 %279, 0
  br i1 %1601, label %1746, label %1602

; <label>:1602:                                   ; preds = %1600
  %1603 = icmp ugt i64 %1591, 1
  br i1 %1603, label %1604, label %1610

; <label>:1604:                                   ; preds = %1602
  %1605 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.64, i64 0, i64 0), i32 5) #12
  %1606 = getelementptr inbounds i8*, i8** %1590, i64 1
  %1607 = load i8*, i8** %1606, align 8
  %1608 = call i8* @quotearg_style(i32 4, i8* %1607) #12
  %1609 = sext i8 %279 to i32
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %1605, i8* %1608, i32 %1609) #12
  unreachable

; <label>:1610:                                   ; preds = %1602
  %1611 = icmp eq i8* %272, null
  br i1 %1611, label %1613, label %1612

; <label>:1612:                                   ; preds = %1610
  store i8 %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @main.opts.65, i64 0, i64 0), align 1
  call fastcc void @incompatible_options(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @main.opts.65, i64 0, i64 0)) #16
  unreachable

; <label>:1613:                                   ; preds = %1610
  %1614 = load i8*, i8** %1590, align 8
  %1615 = call fastcc %struct._IO_FILE* @stream_open(i8* %1614, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #12
  %1616 = icmp eq %struct._IO_FILE* %1615, null
  br i1 %1616, label %1617, label %1619

; <label>:1617:                                   ; preds = %1613
  %1618 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %1618, i8* %1614) #15
  unreachable

; <label>:1619:                                   ; preds = %1613
  %1620 = bitcast %struct.buffer* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1620) #12
  %1621 = bitcast %struct.line* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %1621) #12
  %1622 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %1623 = load i1, i1* @unique, align 1
  %1624 = xor i1 %1623, true
  %1625 = load i64, i64* @merge_buffer_size, align 8
  %1626 = load i64, i64* @sort_size, align 8
  %1627 = icmp ugt i64 %1625, %1626
  %1628 = select i1 %1627, i64 %1625, i64 %1626
  %1629 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 0
  br label %1630

; <label>:1630:                                   ; preds = %1637, %1619
  %1631 = phi i64 [ %1628, %1619 ], [ %1638, %1637 ]
  %1632 = and i64 %1631, 31
  %1633 = sub nsw i64 32, %1632
  %1634 = add i64 %1633, %1631
  %1635 = call noalias i8* @malloc(i64 %1634) #12
  %1636 = icmp eq i8* %1635, null
  br i1 %1636, label %1637, label %1641

; <label>:1637:                                   ; preds = %1630
  %1638 = lshr i64 %1634, 1
  %1639 = icmp ugt i64 %1634, 67
  br i1 %1639, label %1630, label %1640

; <label>:1640:                                   ; preds = %1637
  call void @xalloc_die() #15
  unreachable

; <label>:1641:                                   ; preds = %1630
  store i8* %1635, i8** %1629, align 8
  %1642 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 3
  store i64 %1634, i64* %1642, align 8
  %1643 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 4
  %1644 = bitcast i64* %1643 to <2 x i64>*
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %1644, align 8
  %1645 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 1
  %1646 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 6
  store i8 0, i8* %1646, align 8
  %1647 = bitcast i64* %1645 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1647, i8 0, i64 16, i32 8, i1 false) #12
  %1648 = getelementptr inbounds %struct.line, %struct.line* %4, i64 0, i32 0
  store i8* null, i8** %1648, align 8
  %1649 = call fastcc zeroext i1 @fillbuf(%struct.buffer* nonnull %3, %struct._IO_FILE* nonnull %1615, i8* %1614) #12
  br i1 %1649, label %1650, label %1742

; <label>:1650:                                   ; preds = %1641
  %1651 = getelementptr inbounds %struct.buffer, %struct.buffer* %3, i64 0, i32 2
  %1652 = zext i1 %1624 to i32
  %1653 = getelementptr inbounds %struct.line, %struct.line* %4, i64 0, i32 1
  %1654 = icmp eq %struct.keyfield* %1622, null
  %1655 = getelementptr inbounds %struct.line, %struct.line* %4, i64 0, i32 2
  %1656 = getelementptr inbounds %struct.line, %struct.line* %4, i64 0, i32 3
  br label %1657

; <label>:1657:                                   ; preds = %1726, %1650
  %1658 = phi i8* [ null, %1650 ], [ %1721, %1726 ]
  %1659 = phi i64 [ 0, %1650 ], [ %1722, %1726 ]
  %1660 = phi i64 [ 0, %1650 ], [ %1704, %1726 ]
  %1661 = load i8*, i8** %1629, align 8
  %1662 = load i64, i64* %1642, align 8
  %1663 = getelementptr inbounds i8, i8* %1661, i64 %1662
  %1664 = bitcast i8* %1663 to %struct.line*
  %1665 = load i64, i64* %1651, align 8
  %1666 = sub i64 0, %1665
  %1667 = getelementptr inbounds %struct.line, %struct.line* %1664, i64 %1666
  %1668 = icmp eq i64 %1659, 0
  br i1 %1668, label %1674, label %1669

; <label>:1669:                                   ; preds = %1657
  %1670 = getelementptr inbounds i8, i8* %1663, i64 -32
  %1671 = bitcast i8* %1670 to %struct.line*
  %1672 = call fastcc i32 @compare(%struct.line* nonnull %4, %struct.line* %1671) #12
  %1673 = icmp sgt i32 %1652, %1672
  br i1 %1673, label %1674, label %1676

; <label>:1674:                                   ; preds = %1657, %1669
  br label %1695

; <label>:1675:                                   ; preds = %1699
  br label %1677

; <label>:1676:                                   ; preds = %1669
  br label %1677

; <label>:1677:                                   ; preds = %1676, %1675
  %1678 = phi %struct.line* [ %1697, %1675 ], [ %1664, %1676 ]
  %1679 = icmp eq i8 %279, 99
  br i1 %1679, label %1680, label %1742

; <label>:1680:                                   ; preds = %1677
  %1681 = getelementptr inbounds %struct.line, %struct.line* %1678, i64 -1
  %1682 = ptrtoint i8* %1663 to i64
  %1683 = ptrtoint %struct.line* %1681 to i64
  %1684 = sub i64 %1682, %1683
  %1685 = ashr exact i64 %1684, 5
  %1686 = add i64 %1685, %1660
  %1687 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %1687) #12
  %1688 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1689 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.155, i64 0, i64 0), i32 5) #12
  %1690 = load i8*, i8** @program_name, align 8
  %1691 = call i8* @umaxtostr(i64 %1686, i8* nonnull %1687) #12
  %1692 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1688, i32 1, i8* %1689, i8* %1690, i8* %1614, i8* %1691) #12
  %1693 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1694 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i64 0, i64 0), i32 5) #12
  call fastcc void @write_line(%struct.line* %1681, %struct._IO_FILE* %1693, i8* %1694) #12
  call void @llvm.lifetime.end(i64 21, i8* nonnull %1687) #12
  br label %1742

; <label>:1695:                                   ; preds = %1674, %1699
  %1696 = phi %struct.line* [ %1697, %1699 ], [ %1664, %1674 ]
  %1697 = getelementptr inbounds %struct.line, %struct.line* %1696, i64 -1
  %1698 = icmp ult %struct.line* %1667, %1697
  br i1 %1698, label %1699, label %1703

; <label>:1699:                                   ; preds = %1695
  %1700 = getelementptr inbounds %struct.line, %struct.line* %1696, i64 -2
  %1701 = call fastcc i32 @compare(%struct.line* %1697, %struct.line* %1700) #12
  %1702 = icmp sgt i32 %1652, %1701
  br i1 %1702, label %1695, label %1675

; <label>:1703:                                   ; preds = %1695
  %1704 = add i64 %1665, %1660
  %1705 = getelementptr inbounds %struct.line, %struct.line* %1696, i64 -1, i32 1
  %1706 = load i64, i64* %1705, align 8
  %1707 = icmp ult i64 %1659, %1706
  br i1 %1707, label %1708, label %1719

; <label>:1708:                                   ; preds = %1703
  br label %1709

; <label>:1709:                                   ; preds = %1708, %1713
  %1710 = phi i64 [ %1711, %1713 ], [ %1659, %1708 ]
  %1711 = shl i64 %1710, 1
  %1712 = icmp eq i64 %1711, 0
  br i1 %1712, label %1715, label %1713

; <label>:1713:                                   ; preds = %1709
  %1714 = icmp ult i64 %1711, %1706
  br i1 %1714, label %1709, label %1715

; <label>:1715:                                   ; preds = %1713, %1709
  %1716 = phi i64 [ %1711, %1713 ], [ %1706, %1709 ]
  call void @free(i8* %1658) #12
  %1717 = call noalias i8* @xmalloc(i64 %1716) #12
  store i8* %1717, i8** %1648, align 8
  %1718 = load i64, i64* %1705, align 8
  br label %1719

; <label>:1719:                                   ; preds = %1715, %1703
  %1720 = phi i64 [ %1718, %1715 ], [ %1706, %1703 ]
  %1721 = phi i8* [ %1717, %1715 ], [ %1658, %1703 ]
  %1722 = phi i64 [ %1716, %1715 ], [ %1659, %1703 ]
  %1723 = getelementptr inbounds %struct.line, %struct.line* %1697, i64 0, i32 0
  %1724 = load i8*, i8** %1723, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1721, i8* %1724, i64 %1720, i32 1, i1 false) #12
  %1725 = load i64, i64* %1705, align 8
  store i64 %1725, i64* %1653, align 8
  br i1 %1654, label %1726, label %1728

; <label>:1726:                                   ; preds = %1728, %1719
  %1727 = call fastcc zeroext i1 @fillbuf(%struct.buffer* nonnull %3, %struct._IO_FILE* nonnull %1615, i8* %1614) #12
  br i1 %1727, label %1657, label %1741

; <label>:1728:                                   ; preds = %1719
  %1729 = getelementptr inbounds %struct.line, %struct.line* %1696, i64 -1, i32 2
  %1730 = bitcast i8** %1729 to i64*
  %1731 = load i64, i64* %1730, align 8
  %1732 = bitcast %struct.line* %1697 to i64*
  %1733 = load i64, i64* %1732, align 8
  %1734 = sub i64 %1731, %1733
  %1735 = getelementptr inbounds i8, i8* %1721, i64 %1734
  store i8* %1735, i8** %1655, align 8
  %1736 = getelementptr inbounds %struct.line, %struct.line* %1696, i64 -1, i32 3
  %1737 = bitcast i8** %1736 to i64*
  %1738 = load i64, i64* %1737, align 8
  %1739 = sub i64 %1738, %1733
  %1740 = getelementptr inbounds i8, i8* %1721, i64 %1739
  store i8* %1740, i8** %1656, align 8
  br label %1726

; <label>:1741:                                   ; preds = %1726
  br label %1742

; <label>:1742:                                   ; preds = %1741, %1641, %1677, %1680
  %1743 = phi i8* [ %1658, %1680 ], [ %1658, %1677 ], [ null, %1641 ], [ %1721, %1741 ]
  %1744 = phi i32 [ 1, %1680 ], [ 1, %1677 ], [ 0, %1641 ], [ 0, %1741 ]
  call fastcc void @xfclose(%struct._IO_FILE* nonnull %1615, i8* %1614) #12
  %1745 = load i8*, i8** %1629, align 8
  call void @free(i8* %1745) #12
  call void @free(i8* %1743) #12
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1621) #12
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1620) #12
  br label %2163

; <label>:1746:                                   ; preds = %1600
  %1747 = icmp eq i64 %1591, 0
  br i1 %1747, label %1769, label %1748

; <label>:1748:                                   ; preds = %1746
  br label %1749

; <label>:1749:                                   ; preds = %1748, %1765
  %1750 = phi i64 [ %1766, %1765 ], [ 0, %1748 ]
  %1751 = getelementptr inbounds i8*, i8** %1590, i64 %1750
  %1752 = load i8*, i8** %1751, align 8
  %1753 = load i8, i8* %1752, align 1
  %1754 = icmp eq i8 %1753, 45
  br i1 %1754, label %1755, label %1759

; <label>:1755:                                   ; preds = %1749
  %1756 = getelementptr inbounds i8, i8* %1752, i64 1
  %1757 = load i8, i8* %1756, align 1
  %1758 = icmp eq i8 %1757, 0
  br i1 %1758, label %1765, label %1759

; <label>:1759:                                   ; preds = %1755, %1749
  %1760 = call i32 @euidaccess(i8* %1752, i32 4) #12
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1765, label %1762

; <label>:1762:                                   ; preds = %1759
  %1763 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i64 0, i64 0), i32 5) #12
  %1764 = load i8*, i8** %1751, align 8
  call fastcc void @sort_die(i8* %1763, i8* %1764) #15
  unreachable

; <label>:1765:                                   ; preds = %1759, %1755
  %1766 = add nuw i64 %1750, 1
  %1767 = icmp ult i64 %1766, %1591
  br i1 %1767, label %1749, label %1768

; <label>:1768:                                   ; preds = %1765
  br label %1769

; <label>:1769:                                   ; preds = %1768, %1746
  %1770 = icmp eq i8* %272, null
  br i1 %1770, label %1781, label %1771

; <label>:1771:                                   ; preds = %1769
  %1772 = call i32 (i8*, i32, ...) @open(i8* nonnull %272, i32 65, i32 438) #12
  %1773 = icmp slt i32 %1772, 0
  br i1 %1773, label %1774, label %1776

; <label>:1774:                                   ; preds = %1771
  %1775 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %1775, i8* nonnull %272) #15
  unreachable

; <label>:1776:                                   ; preds = %1771
  %1777 = icmp eq i32 %1772, 1
  br i1 %1777, label %1781, label %1778

; <label>:1778:                                   ; preds = %1776
  %1779 = call i32 @dup2(i32 %1772, i32 1) #12
  %1780 = call i32 @close(i32 %1772) #12
  br label %1781

; <label>:1781:                                   ; preds = %1769, %1776, %1778
  %1782 = and i8 %278, 1
  %1783 = icmp eq i8 %1782, 0
  br i1 %1783, label %1838, label %1784

; <label>:1784:                                   ; preds = %1781
  %1785 = call noalias i8* @xcalloc(i64 %1591, i64 16) #12
  %1786 = bitcast i8* %1785 to %struct.sortfile*
  br i1 %1747, label %1837, label %1787

; <label>:1787:                                   ; preds = %1784
  %1788 = add i64 %1591, -1
  %1789 = and i64 %1591, 3
  %1790 = icmp eq i64 %1789, 0
  br i1 %1790, label %1804, label %1791

; <label>:1791:                                   ; preds = %1787
  br label %1792

; <label>:1792:                                   ; preds = %1792, %1791
  %1793 = phi i64 [ %1800, %1792 ], [ 0, %1791 ]
  %1794 = phi i64 [ %1801, %1792 ], [ %1789, %1791 ]
  %1795 = getelementptr inbounds i8*, i8** %1590, i64 %1793
  %1796 = bitcast i8** %1795 to i64*
  %1797 = load i64, i64* %1796, align 8
  %1798 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %1786, i64 %1793
  %1799 = bitcast %struct.sortfile* %1798 to i64*
  store i64 %1797, i64* %1799, align 8
  %1800 = add nuw i64 %1793, 1
  %1801 = add i64 %1794, -1
  %1802 = icmp eq i64 %1801, 0
  br i1 %1802, label %1803, label %1792

; <label>:1803:                                   ; preds = %1792
  br label %1804

; <label>:1804:                                   ; preds = %1787, %1803
  %1805 = phi i64 [ 0, %1787 ], [ %1800, %1803 ]
  %1806 = icmp ult i64 %1788, 3
  br i1 %1806, label %1836, label %1807

; <label>:1807:                                   ; preds = %1804
  br label %1808

; <label>:1808:                                   ; preds = %1808, %1807
  %1809 = phi i64 [ %1805, %1807 ], [ %1833, %1808 ]
  %1810 = getelementptr inbounds i8*, i8** %1590, i64 %1809
  %1811 = bitcast i8** %1810 to i64*
  %1812 = load i64, i64* %1811, align 8
  %1813 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %1786, i64 %1809
  %1814 = bitcast %struct.sortfile* %1813 to i64*
  store i64 %1812, i64* %1814, align 8
  %1815 = add nuw i64 %1809, 1
  %1816 = getelementptr inbounds i8*, i8** %1590, i64 %1815
  %1817 = bitcast i8** %1816 to i64*
  %1818 = load i64, i64* %1817, align 8
  %1819 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %1786, i64 %1815
  %1820 = bitcast %struct.sortfile* %1819 to i64*
  store i64 %1818, i64* %1820, align 8
  %1821 = add i64 %1809, 2
  %1822 = getelementptr inbounds i8*, i8** %1590, i64 %1821
  %1823 = bitcast i8** %1822 to i64*
  %1824 = load i64, i64* %1823, align 8
  %1825 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %1786, i64 %1821
  %1826 = bitcast %struct.sortfile* %1825 to i64*
  store i64 %1824, i64* %1826, align 8
  %1827 = add i64 %1809, 3
  %1828 = getelementptr inbounds i8*, i8** %1590, i64 %1827
  %1829 = bitcast i8** %1828 to i64*
  %1830 = load i64, i64* %1829, align 8
  %1831 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %1786, i64 %1827
  %1832 = bitcast %struct.sortfile* %1831 to i64*
  store i64 %1830, i64* %1832, align 8
  %1833 = add i64 %1809, 4
  %1834 = icmp ult i64 %1833, %1591
  br i1 %1834, label %1808, label %1835

; <label>:1835:                                   ; preds = %1808
  br label %1836

; <label>:1836:                                   ; preds = %1804, %1835
  br label %1837

; <label>:1837:                                   ; preds = %1836, %1784
  call fastcc void @merge(%struct.sortfile* %1786, i64 0, i64 %1591, i8* %272)
  br label %2155

; <label>:1838:                                   ; preds = %1781
  %1839 = icmp eq i64 %276, 0
  br i1 %1839, label %1840, label %1844

; <label>:1840:                                   ; preds = %1838
  %1841 = call i64 @num_processors(i32 2) #12
  %1842 = icmp ult i64 %1841, 8
  %1843 = select i1 %1842, i64 %1841, i64 8
  br label %1844

; <label>:1844:                                   ; preds = %1838, %1840
  %1845 = phi i64 [ %276, %1838 ], [ %1843, %1840 ]
  %1846 = icmp ult i64 %1845, 72057594037927935
  %1847 = select i1 %1846, i64 %1845, i64 72057594037927935
  %1848 = bitcast %struct.buffer* %22 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %1848) #12
  %1849 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 3
  store i64 0, i64* %1849, align 8
  br i1 %1747, label %1850, label %1852

; <label>:1850:                                   ; preds = %1844
  %1851 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  br label %2125

; <label>:1852:                                   ; preds = %1844
  %1853 = bitcast %struct._IO_FILE** %23 to i8*
  %1854 = icmp ugt i64 %1847, 1
  %1855 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 0
  %1856 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 5
  %1857 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 4
  %1858 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 1
  %1859 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 6
  %1860 = bitcast i64* %1858 to i8*
  %1861 = bitcast %struct.stat* %21 to i8*
  %1862 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 3
  %1863 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 8
  %1864 = bitcast %struct.rlimit* %20 to i8*
  %1865 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %20, i64 0, i32 0
  %1866 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i64 0, i32 2
  %1867 = bitcast %struct.merge_node_queue* %24 to i8*
  %1868 = shl nuw i64 %1847, 1
  %1869 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %24, i64 0, i32 0
  %1870 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %24, i64 0, i32 1
  %1871 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %24, i64 0, i32 2
  %1872 = shl nuw i64 %1847, 8
  br label %1873

; <label>:1873:                                   ; preds = %2111, %1852
  %1874 = phi i8 [ %2112, %2111 ], [ 0, %1852 ]
  %1875 = phi i64 [ %2113, %2111 ], [ 0, %1852 ]
  %1876 = phi i64 [ %2018, %2111 ], [ %1591, %1852 ]
  %1877 = phi i8** [ %2017, %2111 ], [ %1590, %1852 ]
  %1878 = load i8*, i8** %1877, align 8
  %1879 = call fastcc %struct._IO_FILE* @stream_open(i8* %1878, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #12
  %1880 = icmp eq %struct._IO_FILE* %1879, null
  br i1 %1880, label %1881, label %1883

; <label>:1881:                                   ; preds = %1873
  %1882 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %1882, i8* %1878) #15
  unreachable

; <label>:1883:                                   ; preds = %1873
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1853) #12
  br i1 %1854, label %1884, label %1893

; <label>:1884:                                   ; preds = %1883
  br label %1885

; <label>:1885:                                   ; preds = %1884, %1885
  %1886 = phi i64 [ %1889, %1885 ], [ 1, %1884 ]
  %1887 = phi i64 [ %1888, %1885 ], [ 1, %1884 ]
  %1888 = shl i64 %1887, 1
  %1889 = add i64 %1886, 1
  %1890 = icmp ult i64 %1888, %1847
  br i1 %1890, label %1885, label %1891

; <label>:1891:                                   ; preds = %1885
  %1892 = shl i64 %1889, 5
  br label %1893

; <label>:1893:                                   ; preds = %1891, %1883
  %1894 = phi i64 [ %1892, %1891 ], [ 48, %1883 ]
  %1895 = load i64, i64* %1849, align 8
  %1896 = icmp eq i64 %1895, 0
  %1897 = or i64 %1894, 1
  br i1 %1896, label %1898, label %2016

; <label>:1898:                                   ; preds = %1893
  %1899 = or i64 %1894, 2
  br label %1900

; <label>:1900:                                   ; preds = %1997, %1898
  %1901 = phi i64 [ %1998, %1997 ], [ %1899, %1898 ]
  %1902 = phi i64 [ %1999, %1997 ], [ 0, %1898 ]
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1861) #12
  %1903 = icmp eq i64 %1902, 0
  br i1 %1903, label %1904, label %1907

; <label>:1904:                                   ; preds = %1900
  %1905 = call i32 @fileno(%struct._IO_FILE* nonnull %1879) #12
  %1906 = call i32 @__fxstat(i32 1, i32 %1905, %struct.stat* nonnull %21) #12
  br label %1920

; <label>:1907:                                   ; preds = %1900
  %1908 = getelementptr inbounds i8*, i8** %1877, i64 %1902
  %1909 = load i8*, i8** %1908, align 8
  %1910 = load i8, i8* %1909, align 1
  %1911 = icmp eq i8 %1910, 45
  br i1 %1911, label %1912, label %1918

; <label>:1912:                                   ; preds = %1907
  %1913 = getelementptr inbounds i8, i8* %1909, i64 1
  %1914 = load i8, i8* %1913, align 1
  %1915 = icmp eq i8 %1914, 0
  br i1 %1915, label %1916, label %1918

; <label>:1916:                                   ; preds = %1912
  %1917 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %21) #12
  br label %1920

; <label>:1918:                                   ; preds = %1912, %1907
  %1919 = call i32 @__xstat(i32 1, i8* nonnull %1909, %struct.stat* nonnull %21) #12
  br label %1920

; <label>:1920:                                   ; preds = %1918, %1916, %1904
  %1921 = phi i32 [ %1906, %1904 ], [ %1917, %1916 ], [ %1919, %1918 ]
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1927, label %1923

; <label>:1923:                                   ; preds = %1920
  %1924 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.179, i64 0, i64 0), i32 5) #12
  %1925 = getelementptr inbounds i8*, i8** %1877, i64 %1902
  %1926 = load i8*, i8** %1925, align 8
  call fastcc void @sort_die(i8* %1924, i8* %1926) #15
  unreachable

; <label>:1927:                                   ; preds = %1920
  %1928 = load i32, i32* %1862, align 8
  %1929 = and i32 %1928, 61440
  %1930 = icmp eq i32 %1929, 32768
  br i1 %1930, label %1931, label %1933

; <label>:1931:                                   ; preds = %1927
  %1932 = load i64, i64* %1863, align 8
  br label %1936

; <label>:1933:                                   ; preds = %1927
  %1934 = load i64, i64* @sort_size, align 8
  %1935 = icmp eq i64 %1934, 0
  br i1 %1935, label %1936, label %1995

; <label>:1936:                                   ; preds = %1933, %1931
  %1937 = phi i64 [ %1932, %1931 ], [ 131072, %1933 ]
  %1938 = load i64, i64* @sort_buffer_size.size_bound, align 8
  %1939 = icmp eq i64 %1938, 0
  br i1 %1939, label %1940, label %1986

; <label>:1940:                                   ; preds = %1936
  %1941 = load i64, i64* @sort_size, align 8
  store i64 %1941, i64* @sort_buffer_size.size_bound, align 8
  %1942 = icmp eq i64 %1941, 0
  br i1 %1942, label %1943, label %1986

; <label>:1943:                                   ; preds = %1940
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1864) #12
  %1944 = call i32 @getrlimit(i32 2, %struct.rlimit* nonnull %20) #12
  %1945 = icmp eq i32 %1944, 0
  %1946 = load i64, i64* %1865, align 8
  %1947 = select i1 %1945, i64 %1946, i64 -1
  %1948 = call i32 @getrlimit(i32 9, %struct.rlimit* nonnull %20) #12
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %1950, label %1954

; <label>:1950:                                   ; preds = %1943
  %1951 = load i64, i64* %1865, align 8
  %1952 = icmp ult i64 %1951, %1947
  %1953 = select i1 %1952, i64 %1951, i64 %1947
  br label %1954

; <label>:1954:                                   ; preds = %1950, %1943
  %1955 = phi i64 [ %1947, %1943 ], [ %1953, %1950 ]
  %1956 = lshr i64 %1955, 1
  %1957 = call i32 @getrlimit(i32 5, %struct.rlimit* nonnull %20) #12
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %1959, label %1965

; <label>:1959:                                   ; preds = %1954
  %1960 = load i64, i64* %1865, align 8
  %1961 = lshr i64 %1960, 4
  %1962 = mul nuw i64 %1961, 15
  %1963 = icmp ult i64 %1962, %1956
  %1964 = select i1 %1963, i64 %1962, i64 %1956
  br label %1965

; <label>:1965:                                   ; preds = %1959, %1954
  %1966 = phi i64 [ %1956, %1954 ], [ %1964, %1959 ]
  %1967 = call double @physmem_available() #12
  %1968 = call double @physmem_total() #12
  %1969 = fmul double %1968, 1.250000e-01
  %1970 = fcmp ogt double %1967, %1969
  %1971 = select i1 %1970, double %1967, double %1969
  %1972 = fmul double %1968, 7.500000e-01
  %1973 = uitofp i64 %1966 to double
  %1974 = fcmp olt double %1972, %1973
  %1975 = fptoui double %1972 to i64
  %1976 = select i1 %1974, i64 %1975, i64 %1966
  %1977 = uitofp i64 %1976 to double
  %1978 = fcmp olt double %1971, %1977
  %1979 = fptoui double %1971 to i64
  %1980 = select i1 %1978, i64 %1979, i64 %1976
  %1981 = load i32, i32* @nmerge, align 4
  %1982 = zext i32 %1981 to i64
  %1983 = mul nuw nsw i64 %1982, 34
  %1984 = icmp ugt i64 %1980, %1983
  %1985 = select i1 %1984, i64 %1980, i64 %1983
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1864) #12
  store i64 %1985, i64* @sort_buffer_size.size_bound, align 8
  br label %1986

; <label>:1986:                                   ; preds = %1965, %1940, %1936
  %1987 = phi i64 [ %1941, %1940 ], [ %1938, %1936 ], [ %1985, %1965 ]
  %1988 = mul i64 %1937, %1897
  %1989 = add i64 %1988, 1
  %1990 = udiv i64 %1989, %1897
  %1991 = icmp eq i64 %1937, %1990
  %1992 = sub i64 %1987, %1901
  %1993 = icmp ugt i64 %1992, %1989
  %1994 = and i1 %1991, %1993
  br i1 %1994, label %1997, label %1995

; <label>:1995:                                   ; preds = %1986, %1933
  %1996 = phi i64 [ %1987, %1986 ], [ %1934, %1933 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1861) #12
  br label %2002

; <label>:1997:                                   ; preds = %1986
  %1998 = add i64 %1989, %1901
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1861) #12
  %1999 = add nuw i64 %1902, 1
  %2000 = icmp ult i64 %1999, %1876
  br i1 %2000, label %1900, label %2001

; <label>:2001:                                   ; preds = %1997
  br label %2002

; <label>:2002:                                   ; preds = %2001, %1995
  %2003 = phi i64 [ %1996, %1995 ], [ %1998, %2001 ]
  br label %2004

; <label>:2004:                                   ; preds = %2002, %2011
  %2005 = phi i64 [ %2012, %2011 ], [ %2003, %2002 ]
  %2006 = and i64 %2005, 31
  %2007 = sub nsw i64 32, %2006
  %2008 = add i64 %2007, %2005
  %2009 = call noalias i8* @malloc(i64 %2008) #12
  %2010 = icmp eq i8* %2009, null
  br i1 %2010, label %2011, label %2015

; <label>:2011:                                   ; preds = %2004
  %2012 = lshr i64 %2008, 1
  %2013 = icmp ugt i64 %2012, %1897
  br i1 %2013, label %2004, label %2014

; <label>:2014:                                   ; preds = %2011
  call void @xalloc_die() #15
  unreachable

; <label>:2015:                                   ; preds = %2004
  store i8* %2009, i8** %1855, align 8
  store i64 %1894, i64* %1856, align 8
  store i64 %2008, i64* %1849, align 8
  store i64 0, i64* %1857, align 8
  store i8 0, i8* %1859, align 8
  call void @llvm.memset.p0i8.i64(i8* %1860, i8 0, i64 16, i32 8, i1 false) #12
  br label %2016

; <label>:2016:                                   ; preds = %2015, %1893
  store i8 0, i8* %1859, align 8
  %2017 = getelementptr inbounds i8*, i8** %1877, i64 1
  %2018 = add i64 %1876, -1
  %2019 = icmp ne i64 %2018, 0
  br label %2020

; <label>:2020:                                   ; preds = %2102, %2016
  %2021 = phi i8 [ %1874, %2016 ], [ %2103, %2102 ]
  %2022 = phi i64 [ %1875, %2016 ], [ %2104, %2102 ]
  %2023 = call fastcc zeroext i1 @fillbuf(%struct.buffer* nonnull %22, %struct._IO_FILE* nonnull %1879, i8* %1878) #12
  br i1 %2023, label %2024, label %2107

; <label>:2024:                                   ; preds = %2020
  %2025 = load i8, i8* %1859, align 8
  %2026 = icmp ne i8 %2025, 0
  %2027 = and i1 %2019, %2026
  %2028 = load i64, i64* %1849, align 8
  br i1 %2027, label %2029, label %2037

; <label>:2029:                                   ; preds = %2024
  %2030 = load i64, i64* %1858, align 8
  %2031 = sub i64 %2028, %2030
  %2032 = load i64, i64* %1866, align 8
  %2033 = mul i64 %2032, %1894
  %2034 = sub i64 %2031, %2033
  %2035 = icmp ult i64 %1897, %2034
  br i1 %2035, label %2036, label %2037

; <label>:2036:                                   ; preds = %2029
  store i64 %2030, i64* %1857, align 8
  br label %2102

; <label>:2037:                                   ; preds = %2029, %2024
  store i8* null, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %2038 = load i8*, i8** %1855, align 8
  %2039 = getelementptr inbounds i8, i8* %2038, i64 %2028
  %2040 = bitcast i8* %2039 to %struct.line*
  %2041 = or i64 %2022, %2018
  %2042 = load i64, i64* %1857, align 8
  %2043 = or i64 %2041, %2042
  %2044 = icmp eq i64 %2043, 0
  %2045 = and i1 %2026, %2044
  br i1 %2045, label %2046, label %2052

; <label>:2046:                                   ; preds = %2037
  call fastcc void @xfclose(%struct._IO_FILE* nonnull %1879, i8* %1878) #12
  %2047 = call fastcc %struct._IO_FILE* @stream_open(i8* %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i64 0, i64 0)) #12
  %2048 = icmp eq %struct._IO_FILE* %2047, null
  br i1 %2048, label %2049, label %2051

; <label>:2049:                                   ; preds = %2046
  %2050 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %2050, i8* %272) #15
  unreachable

; <label>:2051:                                   ; preds = %2046
  store %struct._IO_FILE* %2047, %struct._IO_FILE** %23, align 8
  br label %2056

; <label>:2052:                                   ; preds = %2037
  %2053 = add i64 %2022, 1
  %2054 = call fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nonnull %23, i1 zeroext false) #12
  %2055 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %2054, i64 0, i32 3, i64 0
  br label %2056

; <label>:2056:                                   ; preds = %2052, %2051
  %2057 = phi i8* [ %2055, %2052 ], [ %272, %2051 ]
  %2058 = phi i8 [ %2021, %2052 ], [ 1, %2051 ]
  %2059 = phi i64 [ %2053, %2052 ], [ %2022, %2051 ]
  %2060 = load i64, i64* %1866, align 8
  %2061 = icmp ugt i64 %2060, 1
  br i1 %2061, label %2062, label %2084

; <label>:2062:                                   ; preds = %2056
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1867) #12
  %2063 = call %struct.heap* @heap_alloc(i32 (i8*, i8*)* nonnull @compare_nodes, i64 %1868) #12
  store %struct.heap* %2063, %struct.heap** %1869, align 8
  %2064 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %1870, %union.pthread_mutexattr_t* null) #12
  %2065 = call i32 @pthread_cond_init(%union.pthread_cond_t* %1871, %union.pthread_mutexattr_t* null) #12
  %2066 = call noalias i8* @xmalloc(i64 %1872) #12
  %2067 = bitcast i8* %2066 to %struct.merge_node*
  %2068 = getelementptr inbounds i8, i8* %2066, i64 48
  %2069 = bitcast i8* %2068 to i64*
  call void @llvm.memset.p0i8.i64(i8* %2066, i8 0, i64 40, i32 8, i1 false) #12
  store i64 %2060, i64* %2069, align 8
  %2070 = getelementptr inbounds i8, i8* %2066, i64 40
  %2071 = bitcast i8* %2070 to i64*
  store i64 %2060, i64* %2071, align 8
  %2072 = getelementptr inbounds i8, i8* %2066, i64 56
  %2073 = bitcast i8* %2072 to %struct.merge_node**
  store %struct.merge_node* null, %struct.merge_node** %2073, align 8
  %2074 = getelementptr inbounds i8, i8* %2066, i64 80
  %2075 = bitcast i8* %2074 to i32*
  store i32 0, i32* %2075, align 8
  %2076 = getelementptr inbounds i8, i8* %2066, i64 84
  store i8 0, i8* %2076, align 4
  %2077 = getelementptr inbounds i8, i8* %2066, i64 88
  %2078 = bitcast i8* %2077 to %union.pthread_mutex_t*
  %2079 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %2078, %union.pthread_mutexattr_t* null) #12
  %2080 = getelementptr inbounds i8, i8* %2066, i64 128
  %2081 = bitcast i8* %2080 to %struct.merge_node*
  %2082 = call fastcc %struct.merge_node* @init_node(%struct.merge_node* %2067, %struct.merge_node* %2081, %struct.line* %2040, i64 %1847, i64 %2060, i1 zeroext false) #12
  %2083 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  call fastcc void @sortlines(%struct.line* %2040, i64 %1847, i64 %2060, %struct.merge_node* %2081, %struct.merge_node_queue* nonnull %24, %struct._IO_FILE* %2083, i8* %2057) #12
  call void @llvm.lifetime.end(i64 96, i8* nonnull %1867) #12
  br label %2097

; <label>:2084:                                   ; preds = %2056
  %2085 = getelementptr inbounds i8, i8* %2039, i64 -32
  %2086 = bitcast i8* %2085 to %struct.line*
  %2087 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %2088 = load i1, i1* @unique, align 1
  br i1 %2088, label %2089, label %2096

; <label>:2089:                                   ; preds = %2084
  %2090 = load i8*, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %2091 = icmp eq i8* %2090, null
  br i1 %2091, label %2095, label %2092

; <label>:2092:                                   ; preds = %2089
  %2093 = call fastcc i32 @compare(%struct.line* %2086, %struct.line* nonnull @saved_line) #12
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2097, label %2095

; <label>:2095:                                   ; preds = %2092, %2089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.line* @saved_line to i8*), i8* %2085, i64 32, i32 8, i1 false) #12
  br label %2096

; <label>:2096:                                   ; preds = %2095, %2084
  call fastcc void @write_line(%struct.line* %2086, %struct._IO_FILE* %2087, i8* %2057) #12
  br label %2097

; <label>:2097:                                   ; preds = %2096, %2092, %2062
  %2098 = phi %struct._IO_FILE* [ %2087, %2096 ], [ %2087, %2092 ], [ %2083, %2062 ]
  call fastcc void @xfclose(%struct._IO_FILE* %2098, i8* %2057) #12
  %2099 = shl i8 %2058, 3
  %2100 = and i8 %2099, 8
  %2101 = zext i8 %2100 to i32
  br label %2102

; <label>:2102:                                   ; preds = %2097, %2036
  %2103 = phi i8 [ %2021, %2036 ], [ %2058, %2097 ]
  %2104 = phi i64 [ %2022, %2036 ], [ %2059, %2097 ]
  %2105 = phi i32 [ 7, %2036 ], [ %2101, %2097 ]
  %2106 = trunc i32 %2105 to i4
  switch i4 %2106, label %2110 [
    i4 0, label %2020
    i4 7, label %2107
  ]

; <label>:2107:                                   ; preds = %2102, %2020
  %2108 = phi i8 [ %2103, %2102 ], [ %2021, %2020 ]
  %2109 = phi i64 [ %2104, %2102 ], [ %2022, %2020 ]
  call fastcc void @xfclose(%struct._IO_FILE* nonnull %1879, i8* %1878) #12
  br label %2111

; <label>:2110:                                   ; preds = %2102
  br label %2111

; <label>:2111:                                   ; preds = %2110, %2107
  %2112 = phi i8 [ %2108, %2107 ], [ %2103, %2110 ]
  %2113 = phi i64 [ %2109, %2107 ], [ %2104, %2110 ]
  %2114 = phi i32 [ 0, %2107 ], [ %2105, %2110 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1853) #12
  %2115 = icmp eq i32 %2114, 0
  %2116 = and i1 %2019, %2115
  br i1 %2116, label %1873, label %2117

; <label>:2117:                                   ; preds = %2111
  %2118 = load i8*, i8** %1855, align 8
  call void @free(i8* %2118) #12
  %2119 = and i8 %2112, 1
  %2120 = icmp eq i8 %2119, 0
  br i1 %2120, label %2121, label %2145

; <label>:2121:                                   ; preds = %2117
  %2122 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  %2123 = icmp ugt i64 %2113, 576460752303423487
  br i1 %2123, label %2124, label %2125

; <label>:2124:                                   ; preds = %2121
  call void @xalloc_die() #15
  unreachable

; <label>:2125:                                   ; preds = %2121, %1850
  %2126 = phi %struct.tempnode* [ %1851, %1850 ], [ %2122, %2121 ]
  %2127 = phi i64 [ 0, %1850 ], [ %2113, %2121 ]
  %2128 = shl i64 %2127, 4
  %2129 = call noalias i8* @xmalloc(i64 %2128) #12
  %2130 = bitcast i8* %2129 to %struct.sortfile*
  %2131 = icmp eq %struct.tempnode* %2126, null
  br i1 %2131, label %2144, label %2132

; <label>:2132:                                   ; preds = %2125
  br label %2133

; <label>:2133:                                   ; preds = %2132, %2133
  %2134 = phi %struct.tempnode* [ %2140, %2133 ], [ %2126, %2132 ]
  %2135 = phi i64 [ %2141, %2133 ], [ 0, %2132 ]
  %2136 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %2134, i64 0, i32 3, i64 0
  %2137 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %2130, i64 %2135, i32 0
  store i8* %2136, i8** %2137, align 8
  %2138 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %2130, i64 %2135, i32 1
  store %struct.tempnode* %2134, %struct.tempnode** %2138, align 8
  %2139 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %2134, i64 0, i32 0
  %2140 = load volatile %struct.tempnode*, %struct.tempnode** %2139, align 8
  %2141 = add i64 %2135, 1
  %2142 = icmp eq %struct.tempnode* %2140, null
  br i1 %2142, label %2143, label %2133

; <label>:2143:                                   ; preds = %2133
  br label %2144

; <label>:2144:                                   ; preds = %2143, %2125
  call fastcc void @merge(%struct.sortfile* %2130, i64 %2127, i64 %2127, i8* %272) #12
  call void @free(i8* %2129) #12
  br label %2145

; <label>:2145:                                   ; preds = %2144, %2117
  %2146 = load i32, i32* @nprocs, align 4
  %2147 = icmp sgt i32 %2146, 0
  br i1 %2147, label %2148, label %2154

; <label>:2148:                                   ; preds = %2145
  br label %2149

; <label>:2149:                                   ; preds = %2148, %2149
  %2150 = call fastcc i32 @reap(i32 -1) #12
  %2151 = load i32, i32* @nprocs, align 4
  %2152 = icmp sgt i32 %2151, 0
  br i1 %2152, label %2149, label %2153

; <label>:2153:                                   ; preds = %2149
  br label %2154

; <label>:2154:                                   ; preds = %2153, %2145
  call void @llvm.lifetime.end(i64 56, i8* nonnull %1848) #12
  br label %2155

; <label>:2155:                                   ; preds = %2154, %1837
  %2156 = load i1, i1* @have_read_stdin, align 1
  br i1 %2156, label %2157, label %2163

; <label>:2157:                                   ; preds = %2155
  %2158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %2159 = call i32 @rpl_fclose(%struct._IO_FILE* %2158) #12
  %2160 = icmp eq i32 %2159, -1
  br i1 %2160, label %2161, label %2163

; <label>:2161:                                   ; preds = %2157
  %2162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %2162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0)) #16
  unreachable

; <label>:2163:                                   ; preds = %2155, %2157, %1742
  %2164 = phi i32 [ %1744, %1742 ], [ 0, %2157 ], [ 0, %2155 ]
  call void @llvm.lifetime.end(i64 288, i8* nonnull %39) #12
  call void @llvm.lifetime.end(i64 72, i8* nonnull %32) #12
  call void @llvm.lifetime.end(i64 72, i8* nonnull %31) #12
  ret i32 %2164

; <label>:2165:                                   ; preds = %220
  %2166 = call i32 @sigaction(i32 1, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2167

; <label>:2167:                                   ; preds = %2165, %220
  %2168 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 2) #12
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2172, label %2170

; <label>:2170:                                   ; preds = %2167
  %2171 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2172

; <label>:2172:                                   ; preds = %2170, %2167
  %2173 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 13) #12
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2177, label %2175

; <label>:2175:                                   ; preds = %2172
  %2176 = call i32 @sigaction(i32 13, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2177

; <label>:2177:                                   ; preds = %2175, %2172
  %2178 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 3) #12
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2182, label %2180

; <label>:2180:                                   ; preds = %2177
  %2181 = call i32 @sigaction(i32 3, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2182

; <label>:2182:                                   ; preds = %2180, %2177
  %2183 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 15) #12
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2187, label %2185

; <label>:2185:                                   ; preds = %2182
  %2186 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2187

; <label>:2187:                                   ; preds = %2185, %2182
  %2188 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 29) #12
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2192, label %2190

; <label>:2190:                                   ; preds = %2187
  %2191 = call i32 @sigaction(i32 29, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2192

; <label>:2192:                                   ; preds = %2190, %2187
  %2193 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 27) #12
  %2194 = icmp eq i32 %2193, 0
  br i1 %2194, label %2197, label %2195

; <label>:2195:                                   ; preds = %2192
  %2196 = call i32 @sigaction(i32 27, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2197

; <label>:2197:                                   ; preds = %2195, %2192
  %2198 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 26) #12
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2202, label %2200

; <label>:2200:                                   ; preds = %2197
  %2201 = call i32 @sigaction(i32 26, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2202

; <label>:2202:                                   ; preds = %2200, %2197
  %2203 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 24) #12
  %2204 = icmp eq i32 %2203, 0
  br i1 %2204, label %2207, label %2205

; <label>:2205:                                   ; preds = %2202
  %2206 = call i32 @sigaction(i32 24, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2207

; <label>:2207:                                   ; preds = %2205, %2202
  %2208 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 25) #12
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2212, label %2210

; <label>:2210:                                   ; preds = %2207
  %2211 = call i32 @sigaction(i32 25, %struct.sigaction* nonnull %28, %struct.sigaction* null) #12
  br label %2212

; <label>:2212:                                   ; preds = %2210, %2207
  call void @llvm.lifetime.end(i64 152, i8* nonnull %196) #12
  %2213 = call void (i32)* @signal(i32 17, void (i32)* null) #12
  %2214 = call i32 @atexit(void ()* nonnull @exit_cleanup) #12
  %2215 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 1
  %2216 = bitcast i64* %2215 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %2216, i8 0, i64 64, i32 8, i1 false) #12
  %2217 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 2
  store i64 -1, i64* %2217, align 8
  %2218 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %26, i64 0, i32 0
  store i64 -1, i64* %2218, align 8
  %2219 = icmp slt i32 %0, 0
  br i1 %2219, label %223, label %224

; <label>:2220:                                   ; preds = %176
  %2221 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %182
  %2222 = load i8, i8* %2221, align 1
  %2223 = add i64 %177, 1
  %2224 = getelementptr inbounds i8, i8* %130, i64 %177
  store i8 %2222, i8* %2224, align 1
  br label %2225

; <label>:2225:                                   ; preds = %2220, %176
  %2226 = phi i64 [ %177, %176 ], [ %2223, %2220 ]
  %2227 = add i64 %162, 2
  %2228 = icmp eq i64 %2227, %128
  br i1 %2228, label %187, label %160
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @struct_month_cmp(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = bitcast i8* %0 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %1 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = tail call i32 @strcmp(i8* %4, i8* %6) #12
  ret i32 %7
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @sighandler(i32) #6 {
  %2 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  %3 = icmp eq %struct.tempnode* %2, null
  br i1 %3, label %13, label %4

; <label>:4:                                      ; preds = %1
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi %struct.tempnode* [ %10, %5 ], [ %2, %4 ]
  %7 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %6, i64 0, i32 3, i64 0
  %8 = tail call i32 @unlink(i8* %7) #12
  %9 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %6, i64 0, i32 0
  %10 = load volatile %struct.tempnode*, %struct.tempnode** %9, align 8
  %11 = icmp eq %struct.tempnode* %10, null
  br i1 %11, label %12, label %5

; <label>:12:                                     ; preds = %5
  br label %13

; <label>:13:                                     ; preds = %12, %1
  store volatile %struct.tempnode* null, %struct.tempnode** @temphead, align 8
  %14 = tail call void (i32)* @signal(i32 %0, void (i32)* null) #12
  %15 = tail call i32 @raise(i32 %0) #12
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @parse_field_count(i8*, i64* nocapture, i8*) unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #12
  %7 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = call i32 @xstrtoumax(i8* %0, i8** nonnull %4, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #12
  switch i32 %8, label %19 [
    i32 0, label %9
    i32 2, label %9
    i32 1, label %17
    i32 3, label %17
    i32 4, label %11
  ]

; <label>:9:                                      ; preds = %3, %3
  %10 = load i64, i64* %5, align 8
  br label %17

; <label>:11:                                     ; preds = %3
  %12 = icmp eq i8* %2, null
  br i1 %12, label %21, label %13

; <label>:13:                                     ; preds = %11
  %14 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.125, i64 0, i64 0), i32 5) #12
  %15 = call i8* @dcgettext(i8* null, i8* nonnull %2, i32 5) #12
  %16 = call i8* @quote(i8* %0) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %14, i8* %15, i8* %16) #12
  unreachable

; <label>:17:                                     ; preds = %3, %3, %9
  %18 = phi i64 [ %10, %9 ], [ -1, %3 ], [ -1, %3 ]
  store i64 %18, i64* %1, align 8
  br label %19

; <label>:19:                                     ; preds = %17, %3
  %20 = load i8*, i8** %4, align 8
  br label %21

; <label>:21:                                     ; preds = %11, %19
  %22 = phi i8* [ %20, %19 ], [ null, %11 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #12
  ret i8* %22
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @badfieldspec(i8*, i8*) unnamed_addr #0 {
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.126, i64 0, i64 0), i32 5) #12
  %4 = tail call i8* @dcgettext(i8* null, i8* %1, i32 5) #12
  %5 = tail call i8* @quote(i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %3, i8* %4, i8* %5) #12
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @incompatible_options(i8*) unnamed_addr #0 {
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.135, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %2, i8* %0) #12
  unreachable
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @sort_die(i8*, i8*) unnamed_addr #0 {
  %3 = tail call i32* @__errno_location() #1
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i8* %1, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.181, i64 0, i64 0), i32 5) #12
  br label %8

; <label>:8:                                      ; preds = %2, %6
  %9 = phi i8* [ %7, %6 ], [ %1, %2 ]
  %10 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %9) #12
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i64 0, i64 0), i8* %0, i8* %10) #12
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct._IO_FILE* @stream_open(i8*, i8*) unnamed_addr #6 {
  %3 = load i8, i8* %1, align 1
  switch i8 %3, label %29 [
    i8 114, label %4
    i8 119, label %17
  ]

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 45
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %0, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %7
  store i1 true, i1* @have_read_stdin, align 1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %15

; <label>:13:                                     ; preds = %4, %7
  %14 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* nonnull %1) #12
  br label %15

; <label>:15:                                     ; preds = %13, %11
  %16 = phi %struct._IO_FILE* [ %12, %11 ], [ %14, %13 ]
  tail call void @fadvise(%struct._IO_FILE* %16, i32 2) #12
  br label %30

; <label>:17:                                     ; preds = %2
  %18 = icmp eq i8* %0, null
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %17
  %20 = tail call i32 @ftruncate(i32 1, i64 0) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %19
  %23 = tail call i32* @__errno_location() #1
  %24 = load i32, i32* %23, align 4
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.157, i64 0, i64 0), i32 5) #12
  %26 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 %24, i8* %25, i8* %26) #12
  unreachable

; <label>:27:                                     ; preds = %19, %17
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %30

; <label>:29:                                     ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.158, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 965, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.stream_open, i64 0, i64 0)) #15
  unreachable

; <label>:30:                                     ; preds = %27, %15
  %31 = phi %struct._IO_FILE* [ %16, %15 ], [ %28, %27 ]
  ret %struct._IO_FILE* %31
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fillbuf(%struct.buffer* nocapture, %struct._IO_FILE*, i8*) unnamed_addr #6 {
  %4 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %5 = load i1, i1* @eolchar, align 1
  %6 = select i1 %5, i8 0, i8 10
  %7 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @merge_buffer_size, align 8
  %10 = add i64 %9, -34
  %11 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 6
  %12 = load i8, i8* %11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %219

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 0
  br i1 %19, label %21, label %23

; <label>:21:                                     ; preds = %14
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 2
  br label %30

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %20, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %16
  %26 = sub i64 0, %18
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %24, i8* %27, i64 %18, i32 1, i1 false)
  %28 = load i64, i64* %17, align 8
  store i64 %28, i64* %15, align 8
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 2
  store i64 0, i64* %29, align 8
  br label %30

; <label>:30:                                     ; preds = %21, %23
  %31 = phi i64* [ %22, %21 ], [ %29, %23 ]
  %32 = phi i64 [ %16, %21 ], [ %28, %23 ]
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %0, i64 0, i32 3
  %34 = sub i64 0, %8
  %35 = add i64 %8, 1
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0
  %37 = zext i8 %6 to i32
  %38 = icmp eq %struct.keyfield* %4, null
  %39 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %4, i64 0, i32 2
  %40 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %4, i64 0, i32 0
  %41 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %4, i64 0, i32 6
  %42 = bitcast %struct.buffer* %0 to i64*
  br label %43

; <label>:43:                                     ; preds = %215, %30
  %44 = phi i64 [ %32, %30 ], [ %217, %215 ]
  %45 = phi i64 [ %10, %30 ], [ %216, %215 ]
  %46 = load i8*, i8** %20, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 %44
  %48 = load i64, i64* %33, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to %struct.line*
  %51 = load i64, i64* %31, align 8
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds %struct.line, %struct.line* %50, i64 %52
  %54 = mul i64 %51, %34
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = ptrtoint i8* %55 to i64
  %57 = ptrtoint i8* %47 to i64
  %58 = sub i64 %56, %57
  %59 = icmp eq i64 %51, 0
  br i1 %59, label %66, label %60

; <label>:60:                                     ; preds = %43
  %61 = getelementptr inbounds %struct.line, %struct.line* %53, i64 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.line, %struct.line* %50, i64 %52, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  br label %66

; <label>:66:                                     ; preds = %60, %43
  %67 = phi i8* [ %46, %43 ], [ %65, %60 ]
  br label %68

; <label>:68:                                     ; preds = %66, %168
  %69 = phi i8* [ %169, %168 ], [ %47, %66 ]
  %70 = phi %struct.line* [ %170, %168 ], [ %53, %66 ]
  %71 = phi i64 [ %171, %168 ], [ %58, %66 ]
  %72 = phi i8* [ %172, %168 ], [ %67, %66 ]
  %73 = phi i64 [ %174, %168 ], [ %45, %66 ]
  %74 = icmp ult i64 %35, %71
  br i1 %74, label %75, label %176

; <label>:75:                                     ; preds = %68
  %76 = add i64 %71, -1
  %77 = udiv i64 %76, %35
  %78 = tail call i64 @fread_unlocked(i8* %69, i64 1, i64 %77, %struct._IO_FILE* %1) #12
  %79 = getelementptr inbounds i8, i8* %69, i64 %78
  %80 = sub i64 %71, %78
  %81 = icmp eq i64 %78, %77
  br i1 %81, label %103, label %82

; <label>:82:                                     ; preds = %75
  %83 = load i32, i32* %36, align 8
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

; <label>:86:                                     ; preds = %82
  %87 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.159, i64 0, i64 0), i32 5) #12
  tail call fastcc void @sort_die(i8* %87, i8* %2) #16
  unreachable

; <label>:88:                                     ; preds = %82
  %89 = and i32 %83, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %91

; <label>:91:                                     ; preds = %88
  store i8 1, i8* %11, align 8
  %92 = load i8*, i8** %20, align 8
  %93 = icmp eq i8* %92, %79
  br i1 %93, label %168, label %94

; <label>:94:                                     ; preds = %91
  %95 = icmp eq i8* %72, %79
  br i1 %95, label %103, label %96

; <label>:96:                                     ; preds = %94
  %97 = getelementptr inbounds i8, i8* %79, i64 -1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, %37
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %6, i8* %79, align 1
  br label %103

; <label>:103:                                    ; preds = %101, %75, %88, %94, %96
  %104 = phi i8* [ %79, %75 ], [ %79, %88 ], [ %72, %94 ], [ %79, %96 ], [ %102, %101 ]
  %105 = ptrtoint i8* %104 to i64
  %106 = ptrtoint i8* %69 to i64
  %107 = sub i64 %105, %106
  %108 = tail call i8* @memchr(i8* %69, i32 %37, i64 %107) #14
  %109 = icmp eq i8* %108, null
  br i1 %109, label %160, label %110

; <label>:110:                                    ; preds = %103
  br label %111

; <label>:111:                                    ; preds = %110, %127
  %112 = phi i8* [ %129, %127 ], [ %108, %110 ]
  %113 = phi i64 [ %125, %127 ], [ %73, %110 ]
  %114 = phi i8* [ %117, %127 ], [ %72, %110 ]
  %115 = phi i64 [ %126, %127 ], [ %80, %110 ]
  %116 = phi %struct.line* [ %118, %127 ], [ %70, %110 ]
  store i8 0, i8* %112, align 1
  %117 = getelementptr inbounds i8, i8* %112, i64 1
  %118 = getelementptr inbounds %struct.line, %struct.line* %116, i64 -1
  %119 = getelementptr inbounds %struct.line, %struct.line* %118, i64 0, i32 0
  store i8* %114, i8** %119, align 8
  %120 = ptrtoint i8* %117 to i64
  %121 = ptrtoint i8* %114 to i64
  %122 = sub i64 %120, %121
  %123 = getelementptr inbounds %struct.line, %struct.line* %116, i64 -1, i32 1
  store i64 %122, i64* %123, align 8
  %124 = icmp ugt i64 %113, %122
  %125 = select i1 %124, i64 %113, i64 %122
  %126 = sub i64 %115, %8
  br i1 %38, label %127, label %131

; <label>:127:                                    ; preds = %111, %156
  %128 = sub i64 %105, %120
  %129 = tail call i8* @memchr(i8* %117, i32 %37, i64 %128) #14
  %130 = icmp eq i8* %129, null
  br i1 %130, label %159, label %111

; <label>:131:                                    ; preds = %111
  %132 = load i64, i64* %39, align 8
  %133 = icmp eq i64 %132, -1
  br i1 %133, label %136, label %134

; <label>:134:                                    ; preds = %131
  %135 = tail call fastcc i8* @limfield(%struct.line* %118, %struct.keyfield* nonnull %4)
  br label %136

; <label>:136:                                    ; preds = %131, %134
  %137 = phi i8* [ %135, %134 ], [ %112, %131 ]
  %138 = getelementptr inbounds %struct.line, %struct.line* %116, i64 -1, i32 3
  store i8* %137, i8** %138, align 8
  %139 = load i64, i64* %40, align 8
  %140 = icmp eq i64 %139, -1
  br i1 %140, label %143, label %141

; <label>:141:                                    ; preds = %136
  %142 = tail call fastcc i8* @begfield(%struct.line* nonnull %118, %struct.keyfield* nonnull %4)
  br label %156

; <label>:143:                                    ; preds = %136
  %144 = load i8, i8* %41, align 8
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %156, label %146

; <label>:146:                                    ; preds = %143
  br label %147

; <label>:147:                                    ; preds = %146, %147
  %148 = phi i8* [ %154, %147 ], [ %114, %146 ]
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = icmp eq i8 %152, 0
  %154 = getelementptr inbounds i8, i8* %148, i64 1
  br i1 %153, label %155, label %147

; <label>:155:                                    ; preds = %147
  br label %156

; <label>:156:                                    ; preds = %155, %143, %141
  %157 = phi i8* [ %142, %141 ], [ %114, %143 ], [ %148, %155 ]
  %158 = getelementptr inbounds %struct.line, %struct.line* %116, i64 -1, i32 2
  store i8* %157, i8** %158, align 8
  br label %127

; <label>:159:                                    ; preds = %127
  br label %160

; <label>:160:                                    ; preds = %159, %103
  %161 = phi %struct.line* [ %70, %103 ], [ %118, %159 ]
  %162 = phi i64 [ %80, %103 ], [ %126, %159 ]
  %163 = phi i8* [ %72, %103 ], [ %117, %159 ]
  %164 = phi i64 [ %73, %103 ], [ %125, %159 ]
  %165 = load i8, i8* %11, align 8
  %166 = icmp eq i8 %165, 0
  %167 = select i1 %166, i32 0, i32 5
  br label %168

; <label>:168:                                    ; preds = %160, %91
  %169 = phi i8* [ %69, %91 ], [ %104, %160 ]
  %170 = phi %struct.line* [ %70, %91 ], [ %161, %160 ]
  %171 = phi i64 [ %80, %91 ], [ %162, %160 ]
  %172 = phi i8* [ %72, %91 ], [ %163, %160 ]
  %173 = phi i32 [ 1, %91 ], [ %167, %160 ]
  %174 = phi i64 [ %73, %91 ], [ %164, %160 ]
  %175 = trunc i32 %173 to i3
  switch i3 %175, label %213 [
    i3 0, label %68
    i3 -3, label %176
  ]

; <label>:176:                                    ; preds = %168, %68
  %177 = phi i8* [ %169, %168 ], [ %69, %68 ]
  %178 = phi %struct.line* [ %170, %168 ], [ %70, %68 ]
  %179 = phi i8* [ %172, %168 ], [ %72, %68 ]
  %180 = phi i64 [ %174, %168 ], [ %73, %68 ]
  %181 = load i64, i64* %42, align 8
  %182 = ptrtoint i8* %177 to i64
  %183 = sub i64 %182, %181
  store i64 %183, i64* %15, align 8
  %184 = inttoptr i64 %181 to i8*
  %185 = load i64, i64* %33, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = ptrtoint i8* %186 to i64
  %188 = ptrtoint %struct.line* %178 to i64
  %189 = sub i64 %187, %188
  %190 = ashr exact i64 %189, 5
  store i64 %190, i64* %31, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %196, label %192

; <label>:192:                                    ; preds = %176
  %193 = ptrtoint i8* %179 to i64
  %194 = sub i64 %182, %193
  store i64 %194, i64* %17, align 8
  %195 = add i64 %180, 34
  store i64 %195, i64* @merge_buffer_size, align 8
  br label %219

; <label>:196:                                    ; preds = %176
  %197 = lshr i64 %185, 5
  %198 = icmp eq i64 %181, 0
  br i1 %198, label %199, label %202

; <label>:199:                                    ; preds = %196
  %200 = icmp eq i64 %197, 0
  %201 = select i1 %200, i64 4, i64 %197
  br label %209

; <label>:202:                                    ; preds = %196
  %203 = icmp ult i64 %185, 6148914691236517184
  br i1 %203, label %205, label %204

; <label>:204:                                    ; preds = %202
  tail call void @xalloc_die() #15
  unreachable

; <label>:205:                                    ; preds = %202
  %206 = lshr i64 %185, 6
  %207 = add nuw nsw i64 %197, 1
  %208 = add nuw nsw i64 %207, %206
  br label %209

; <label>:209:                                    ; preds = %199, %205
  %210 = phi i64 [ %208, %205 ], [ %201, %199 ]
  %211 = shl i64 %210, 5
  %212 = tail call i8* @xrealloc(i8* %184, i64 %211) #12
  store i8* %212, i8** %20, align 8
  store i64 %211, i64* %33, align 8
  br label %215

; <label>:213:                                    ; preds = %168
  %214 = icmp eq i32 %173, 0
  br i1 %214, label %215, label %218

; <label>:215:                                    ; preds = %213, %209
  %216 = phi i64 [ %174, %213 ], [ %180, %209 ]
  %217 = load i64, i64* %15, align 8
  br label %43

; <label>:218:                                    ; preds = %213
  br label %219

; <label>:219:                                    ; preds = %218, %192, %3
  %220 = phi i1 [ false, %3 ], [ true, %192 ], [ false, %218 ]
  ret i1 %220
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @compare(%struct.line* nocapture readonly, %struct.line* nocapture readonly) unnamed_addr #6 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4000 x i8], align 16
  %8 = alloca [2 x [4 x i32]], align 16
  %9 = alloca [2 x %struct.md5_ctx], align 16
  %10 = alloca [4000 x i8], align 16
  %11 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %12 = icmp eq %struct.keyfield* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 1
  br label %908

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 0
  %26 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 0
  %28 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 1
  %29 = getelementptr inbounds [4000 x i8], [4000 x i8]* %10, i64 0, i64 0
  %30 = getelementptr inbounds [4000 x i8], [4000 x i8]* %7, i64 0, i64 0
  %31 = bitcast [2 x [4 x i32]]* %8 to i8*
  %32 = bitcast [2 x %struct.md5_ctx]* %9 to i8*
  %33 = getelementptr inbounds [2 x %struct.md5_ctx], [2 x %struct.md5_ctx]* %9, i64 0, i64 0
  %34 = getelementptr inbounds [2 x %struct.md5_ctx], [2 x %struct.md5_ctx]* %9, i64 0, i64 1
  %35 = bitcast %struct.md5_ctx* %34 to i8*
  %36 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %8, i64 0, i64 1, i64 0
  %37 = bitcast i32* %36 to i8*
  %38 = bitcast i8** %5 to i8*
  %39 = bitcast i8** %6 to i8*
  %40 = bitcast x86_fp80* %3 to i8*
  %41 = bitcast x86_fp80* %4 to i8*
  br label %44

; <label>:42:                                     ; preds = %882, %889
  %43 = phi i8* [ %890, %889 ], [ %883, %882 ]
  br label %854

; <label>:44:                                     ; preds = %854, %16
  %45 = phi i8* [ %24, %16 ], [ %846, %854 ]
  %46 = phi i8* [ %22, %16 ], [ %847, %854 ]
  %47 = phi i8* [ %20, %16 ], [ %855, %854 ]
  %48 = phi i8* [ %18, %16 ], [ %856, %854 ]
  %49 = phi %struct.keyfield* [ %11, %16 ], [ %827, %854 ]
  %50 = phi i8 [ undef, %16 ], [ %821, %854 ]
  %51 = phi i8 [ undef, %16 ], [ %822, %854 ]
  %52 = phi i8* [ undef, %16 ], [ %823, %854 ]
  %53 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ugt i8* %48, %46
  %58 = select i1 %57, i8* %48, i8* %46
  %59 = icmp ugt i8* %47, %45
  %60 = select i1 %59, i8* %47, i8* %45
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %48 to i64
  %63 = sub i64 %61, %62
  %64 = ptrtoint i8* %60 to i64
  %65 = ptrtoint i8* %47 to i64
  %66 = sub i64 %64, %65
  %67 = load i8, i8* @hard_LC_COLLATE, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %93

; <label>:69:                                     ; preds = %44
  %70 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 8
  %71 = load i8, i8* %70, align 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %93

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 10
  %75 = load i8, i8* %74, align 4
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %93

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 11
  %79 = load i8, i8* %78, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %93

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 12
  %83 = load i8, i8* %82, align 2
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %93

; <label>:85:                                     ; preds = %81
  %86 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 9
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %85
  %90 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 14
  %91 = load i8, i8* %90, align 8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %663, label %93

; <label>:93:                                     ; preds = %89, %85, %81, %77, %73, %69, %44
  call void @llvm.lifetime.start(i64 4000, i8* nonnull %29) #12
  %94 = icmp ne i8* %56, null
  %95 = icmp ne i8* %54, null
  %96 = or i1 %95, %94
  br i1 %96, label %97, label %168

; <label>:97:                                     ; preds = %93
  %98 = add i64 %66, 2
  %99 = add i64 %98, %63
  %100 = icmp ult i64 %99, 4001
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %97
  %102 = call noalias i8* @xmalloc(i64 %99) #12
  br label %103

; <label>:103:                                    ; preds = %101, %97
  %104 = phi i8* [ %102, %101 ], [ %29, %97 ]
  %105 = phi i8* [ %102, %101 ], [ null, %97 ]
  %106 = getelementptr inbounds i8, i8* %104, i64 %63
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = icmp eq i64 %63, 0
  br i1 %108, label %135, label %109

; <label>:109:                                    ; preds = %103
  br label %110

; <label>:110:                                    ; preds = %109, %130
  %111 = phi i64 [ %132, %130 ], [ 0, %109 ]
  %112 = phi i64 [ %131, %130 ], [ 0, %109 ]
  %113 = getelementptr inbounds i8, i8* %48, i64 %111
  br i1 %94, label %114, label %120

; <label>:114:                                    ; preds = %110
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds i8, i8* %56, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %130

; <label>:120:                                    ; preds = %114, %110
  br i1 %95, label %121, label %125

; <label>:121:                                    ; preds = %120
  %122 = load i8, i8* %113, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i8, i8* %54, i64 %123
  br label %125

; <label>:125:                                    ; preds = %121, %120
  %126 = phi i8* [ %124, %121 ], [ %113, %120 ]
  %127 = load i8, i8* %126, align 1
  %128 = add i64 %112, 1
  %129 = getelementptr inbounds i8, i8* %104, i64 %112
  store i8 %127, i8* %129, align 1
  br label %130

; <label>:130:                                    ; preds = %125, %114
  %131 = phi i64 [ %112, %114 ], [ %128, %125 ]
  %132 = add nuw i64 %111, 1
  %133 = icmp eq i64 %132, %63
  br i1 %133, label %134, label %110

; <label>:134:                                    ; preds = %130
  br label %135

; <label>:135:                                    ; preds = %134, %103
  %136 = phi i64 [ 0, %103 ], [ %131, %134 ]
  %137 = getelementptr inbounds i8, i8* %104, i64 %136
  store i8 0, i8* %137, align 1
  %138 = icmp eq i64 %66, 0
  br i1 %138, label %165, label %139

; <label>:139:                                    ; preds = %135
  br label %140

; <label>:140:                                    ; preds = %139, %160
  %141 = phi i64 [ %162, %160 ], [ 0, %139 ]
  %142 = phi i64 [ %161, %160 ], [ 0, %139 ]
  %143 = getelementptr inbounds i8, i8* %47, i64 %141
  br i1 %94, label %144, label %150

; <label>:144:                                    ; preds = %140
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i8, i8* %56, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %160

; <label>:150:                                    ; preds = %144, %140
  br i1 %95, label %151, label %155

; <label>:151:                                    ; preds = %150
  %152 = load i8, i8* %143, align 1
  %153 = zext i8 %152 to i64
  %154 = getelementptr inbounds i8, i8* %54, i64 %153
  br label %155

; <label>:155:                                    ; preds = %151, %150
  %156 = phi i8* [ %154, %151 ], [ %143, %150 ]
  %157 = load i8, i8* %156, align 1
  %158 = add i64 %142, 1
  %159 = getelementptr inbounds i8, i8* %107, i64 %142
  store i8 %157, i8* %159, align 1
  br label %160

; <label>:160:                                    ; preds = %155, %144
  %161 = phi i64 [ %142, %144 ], [ %158, %155 ]
  %162 = add nuw i64 %141, 1
  %163 = icmp eq i64 %162, %66
  br i1 %163, label %164, label %140

; <label>:164:                                    ; preds = %160
  br label %165

; <label>:165:                                    ; preds = %164, %135
  %166 = phi i64 [ 0, %135 ], [ %161, %164 ]
  %167 = getelementptr inbounds i8, i8* %107, i64 %166
  br label %171

; <label>:168:                                    ; preds = %93
  %169 = load i8, i8* %58, align 1
  store i8 0, i8* %58, align 1
  %170 = load i8, i8* %60, align 1
  br label %171

; <label>:171:                                    ; preds = %168, %165
  %172 = phi i8* [ %60, %168 ], [ %167, %165 ]
  %173 = phi i8* [ %48, %168 ], [ %104, %165 ]
  %174 = phi i8* [ %47, %168 ], [ %107, %165 ]
  %175 = phi i64 [ %63, %168 ], [ %136, %165 ]
  %176 = phi i64 [ %66, %168 ], [ %166, %165 ]
  %177 = phi i8 [ %169, %168 ], [ %50, %165 ]
  %178 = phi i8 [ %170, %168 ], [ %51, %165 ]
  %179 = phi i8* [ %52, %168 ], [ %105, %165 ]
  store i8 0, i8* %172, align 1
  %180 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 8
  %181 = load i8, i8* %180, align 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %205, label %183

; <label>:183:                                    ; preds = %171
  br label %184

; <label>:184:                                    ; preds = %183, %184
  %185 = phi i8* [ %191, %184 ], [ %173, %183 ]
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = icmp eq i8 %189, 0
  %191 = getelementptr inbounds i8, i8* %185, i64 1
  br i1 %190, label %192, label %184

; <label>:192:                                    ; preds = %184
  br label %193

; <label>:193:                                    ; preds = %192, %193
  %194 = phi i8* [ %200, %193 ], [ %174, %192 ]
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = icmp eq i8 %198, 0
  %200 = getelementptr inbounds i8, i8* %194, i64 1
  br i1 %199, label %201, label %193

; <label>:201:                                    ; preds = %193
  %202 = load i32, i32* @decimal_point, align 4
  %203 = load i32, i32* @thousands_sep, align 4
  %204 = call i32 @strnumcmp(i8* %185, i8* %194, i32 %202, i32 %203) #12
  br label %656

; <label>:205:                                    ; preds = %171
  %206 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 10
  %207 = load i8, i8* %206, align 4
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %236, label %209

; <label>:209:                                    ; preds = %205
  call void @llvm.lifetime.start(i64 8, i8* nonnull %38) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %39) #12
  %210 = call x86_fp80 @strtold(i8* %173, i8** nonnull %5) #12
  %211 = call x86_fp80 @strtold(i8* %174, i8** nonnull %6) #12
  %212 = load i8*, i8** %5, align 8
  %213 = icmp eq i8* %212, %173
  %214 = load i8*, i8** %6, align 8
  %215 = icmp eq i8* %214, %174
  br i1 %213, label %216, label %219

; <label>:216:                                    ; preds = %209
  %217 = xor i1 %215, true
  %218 = sext i1 %217 to i32
  br label %234

; <label>:219:                                    ; preds = %209
  br i1 %215, label %234, label %220

; <label>:220:                                    ; preds = %219
  %221 = fcmp olt x86_fp80 %210, %211
  br i1 %221, label %234, label %222

; <label>:222:                                    ; preds = %220
  %223 = fcmp ogt x86_fp80 %210, %211
  br i1 %223, label %234, label %224

; <label>:224:                                    ; preds = %222
  %225 = fcmp oeq x86_fp80 %210, %211
  br i1 %225, label %234, label %226

; <label>:226:                                    ; preds = %224
  %227 = fcmp ord x86_fp80 %211, 0xK00000000000000000000
  br i1 %227, label %234, label %228

; <label>:228:                                    ; preds = %226
  %229 = fcmp ord x86_fp80 %210, 0xK00000000000000000000
  br i1 %229, label %234, label %230

; <label>:230:                                    ; preds = %228
  call void @llvm.lifetime.start(i64 16, i8* nonnull %40) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull %40, i8 0, i64 16, i32 16, i1 false) #12
  %231 = call x86_fp80 @strtold(i8* nocapture %173, i8** null) #12
  store x86_fp80 %231, x86_fp80* %3, align 16
  call void @llvm.lifetime.start(i64 16, i8* nonnull %41) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull %41, i8 0, i64 16, i32 16, i1 false) #12
  %232 = call x86_fp80 @strtold(i8* nocapture %174, i8** null) #12
  store x86_fp80 %232, x86_fp80* %4, align 16
  %233 = call i32 @memcmp(i8* nonnull %40, i8* nonnull %41, i64 16) #14
  call void @llvm.lifetime.end(i64 16, i8* nonnull %41) #12
  call void @llvm.lifetime.end(i64 16, i8* nonnull %40) #12
  br label %234

; <label>:234:                                    ; preds = %230, %228, %226, %224, %222, %220, %219, %216
  %235 = phi i32 [ %218, %216 ], [ 1, %219 ], [ -1, %220 ], [ 1, %222 ], [ 0, %224 ], [ -1, %226 ], [ %233, %230 ], [ 1, %228 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %39) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %38) #12
  br label %656

; <label>:236:                                    ; preds = %205
  %237 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 11
  %238 = load i8, i8* %237, align 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %401, label %240

; <label>:240:                                    ; preds = %236
  br label %241

; <label>:241:                                    ; preds = %240, %241
  %242 = phi i8* [ %248, %241 ], [ %173, %240 ]
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i64
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = icmp eq i8 %246, 0
  %248 = getelementptr inbounds i8, i8* %242, i64 1
  br i1 %247, label %249, label %241

; <label>:249:                                    ; preds = %241
  br label %250

; <label>:250:                                    ; preds = %249, %250
  %251 = phi i8* [ %257, %250 ], [ %174, %249 ]
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i64
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = icmp eq i8 %255, 0
  %257 = getelementptr inbounds i8, i8* %251, i64 1
  br i1 %256, label %258, label %250

; <label>:258:                                    ; preds = %250
  %259 = icmp eq i8 %243, 45
  %260 = zext i1 %259 to i64
  %261 = getelementptr inbounds i8, i8* %242, i64 %260
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = load i8, i8* %261, align 1
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %264, -48
  %266 = icmp ult i32 %265, 10
  br i1 %266, label %267, label %287

; <label>:267:                                    ; preds = %258
  %268 = load i32, i32* @thousands_sep, align 4
  br label %269

; <label>:269:                                    ; preds = %269, %267
  %270 = phi i8 [ %263, %267 ], [ %282, %269 ]
  %271 = phi i8* [ %262, %267 ], [ %281, %269 ]
  %272 = phi i8 [ 0, %267 ], [ %275, %269 ]
  %273 = phi i8* [ %261, %267 ], [ %280, %269 ]
  %274 = icmp ult i8 %272, %270
  %275 = select i1 %274, i8 %270, i8 %272
  %276 = load i8, i8* %271, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, %268
  %279 = getelementptr inbounds i8, i8* %273, i64 2
  %280 = select i1 %278, i8* %279, i8* %271
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  %282 = load i8, i8* %280, align 1
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %283, -48
  %285 = icmp ult i32 %284, 10
  br i1 %285, label %269, label %286

; <label>:286:                                    ; preds = %269
  br i1 %278, label %312, label %287

; <label>:287:                                    ; preds = %286, %258
  %288 = phi i32 [ %283, %286 ], [ %264, %258 ]
  %289 = phi i8* [ %281, %286 ], [ %262, %258 ]
  %290 = phi i8 [ %275, %286 ], [ 0, %258 ]
  %291 = load i32, i32* @decimal_point, align 4
  %292 = icmp eq i32 %288, %291
  br i1 %292, label %293, label %312

; <label>:293:                                    ; preds = %287
  %294 = getelementptr inbounds i8, i8* %289, i64 1
  %295 = load i8, i8* %289, align 1
  %296 = zext i8 %295 to i32
  %297 = add nsw i32 %296, -48
  %298 = icmp ult i32 %297, 10
  br i1 %298, label %299, label %312

; <label>:299:                                    ; preds = %293
  br label %300

; <label>:300:                                    ; preds = %299, %300
  %301 = phi i8 [ %307, %300 ], [ %295, %299 ]
  %302 = phi i8* [ %306, %300 ], [ %294, %299 ]
  %303 = phi i8 [ %305, %300 ], [ %290, %299 ]
  %304 = icmp ult i8 %303, %301
  %305 = select i1 %304, i8 %301, i8 %303
  %306 = getelementptr inbounds i8, i8* %302, i64 1
  %307 = load i8, i8* %302, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %308, -48
  %310 = icmp ult i32 %309, 10
  br i1 %310, label %300, label %311

; <label>:311:                                    ; preds = %300
  br label %312

; <label>:312:                                    ; preds = %311, %293, %287, %286
  %313 = phi i8* [ %279, %286 ], [ %289, %287 ], [ %294, %293 ], [ %306, %311 ]
  %314 = phi i8 [ %275, %286 ], [ %290, %287 ], [ %290, %293 ], [ %305, %311 ]
  %315 = icmp ugt i8 %314, 48
  br i1 %315, label %316, label %325

; <label>:316:                                    ; preds = %312
  %317 = getelementptr inbounds i8, i8* %313, i64 -1
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds [256 x i8], [256 x i8]* @unit_order, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = sub nsw i32 0, %322
  %324 = select i1 %259, i32 %323, i32 %322
  br label %325

; <label>:325:                                    ; preds = %316, %312
  %326 = phi i32 [ %324, %316 ], [ 0, %312 ]
  %327 = icmp eq i8 %252, 45
  %328 = zext i1 %327 to i64
  %329 = getelementptr inbounds i8, i8* %251, i64 %328
  %330 = getelementptr inbounds i8, i8* %329, i64 1
  %331 = load i8, i8* %329, align 1
  %332 = zext i8 %331 to i32
  %333 = add nsw i32 %332, -48
  %334 = icmp ult i32 %333, 10
  br i1 %334, label %335, label %355

; <label>:335:                                    ; preds = %325
  %336 = load i32, i32* @thousands_sep, align 4
  br label %337

; <label>:337:                                    ; preds = %337, %335
  %338 = phi i8 [ %331, %335 ], [ %350, %337 ]
  %339 = phi i8* [ %330, %335 ], [ %349, %337 ]
  %340 = phi i8 [ 0, %335 ], [ %343, %337 ]
  %341 = phi i8* [ %329, %335 ], [ %348, %337 ]
  %342 = icmp ult i8 %340, %338
  %343 = select i1 %342, i8 %338, i8 %340
  %344 = load i8, i8* %339, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp eq i32 %345, %336
  %347 = getelementptr inbounds i8, i8* %341, i64 2
  %348 = select i1 %346, i8* %347, i8* %339
  %349 = getelementptr inbounds i8, i8* %348, i64 1
  %350 = load i8, i8* %348, align 1
  %351 = zext i8 %350 to i32
  %352 = add nsw i32 %351, -48
  %353 = icmp ult i32 %352, 10
  br i1 %353, label %337, label %354

; <label>:354:                                    ; preds = %337
  br i1 %346, label %380, label %355

; <label>:355:                                    ; preds = %354, %325
  %356 = phi i32 [ %351, %354 ], [ %332, %325 ]
  %357 = phi i8* [ %349, %354 ], [ %330, %325 ]
  %358 = phi i8 [ %343, %354 ], [ 0, %325 ]
  %359 = load i32, i32* @decimal_point, align 4
  %360 = icmp eq i32 %356, %359
  br i1 %360, label %361, label %380

; <label>:361:                                    ; preds = %355
  %362 = getelementptr inbounds i8, i8* %357, i64 1
  %363 = load i8, i8* %357, align 1
  %364 = zext i8 %363 to i32
  %365 = add nsw i32 %364, -48
  %366 = icmp ult i32 %365, 10
  br i1 %366, label %367, label %380

; <label>:367:                                    ; preds = %361
  br label %368

; <label>:368:                                    ; preds = %367, %368
  %369 = phi i8 [ %375, %368 ], [ %363, %367 ]
  %370 = phi i8* [ %374, %368 ], [ %362, %367 ]
  %371 = phi i8 [ %373, %368 ], [ %358, %367 ]
  %372 = icmp ult i8 %371, %369
  %373 = select i1 %372, i8 %369, i8 %371
  %374 = getelementptr inbounds i8, i8* %370, i64 1
  %375 = load i8, i8* %370, align 1
  %376 = zext i8 %375 to i32
  %377 = add nsw i32 %376, -48
  %378 = icmp ult i32 %377, 10
  br i1 %378, label %368, label %379

; <label>:379:                                    ; preds = %368
  br label %380

; <label>:380:                                    ; preds = %379, %361, %355, %354
  %381 = phi i8* [ %347, %354 ], [ %357, %355 ], [ %362, %361 ], [ %374, %379 ]
  %382 = phi i8 [ %343, %354 ], [ %358, %355 ], [ %358, %361 ], [ %373, %379 ]
  %383 = icmp ugt i8 %382, 48
  br i1 %383, label %384, label %393

; <label>:384:                                    ; preds = %380
  %385 = getelementptr inbounds i8, i8* %381, i64 -1
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i64
  %388 = getelementptr inbounds [256 x i8], [256 x i8]* @unit_order, i64 0, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = sub nsw i32 0, %390
  %392 = select i1 %327, i32 %391, i32 %390
  br label %393

; <label>:393:                                    ; preds = %384, %380
  %394 = phi i32 [ %392, %384 ], [ 0, %380 ]
  %395 = sub nsw i32 %326, %394
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %656

; <label>:397:                                    ; preds = %393
  %398 = load i32, i32* @decimal_point, align 4
  %399 = load i32, i32* @thousands_sep, align 4
  %400 = call i32 @strnumcmp(i8* %242, i8* %251, i32 %398, i32 %399) #12
  br label %656

; <label>:401:                                    ; preds = %236
  %402 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 12
  %403 = load i8, i8* %402, align 2
  %404 = icmp eq i8 %403, 0
  br i1 %404, label %507, label %405

; <label>:405:                                    ; preds = %401
  br label %406

; <label>:406:                                    ; preds = %405, %406
  %407 = phi i8* [ %413, %406 ], [ %173, %405 ]
  %408 = load i8, i8* %407, align 1
  %409 = zext i8 %408 to i64
  %410 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = icmp eq i8 %411, 0
  %413 = getelementptr inbounds i8, i8* %407, i64 1
  br i1 %412, label %414, label %406

; <label>:414:                                    ; preds = %406
  br label %415

; <label>:415:                                    ; preds = %414, %449
  %416 = phi i64 [ %450, %449 ], [ 0, %414 ]
  %417 = phi i64 [ %451, %449 ], [ 12, %414 ]
  %418 = add i64 %417, %416
  %419 = lshr i64 %418, 1
  %420 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %419, i32 0
  %421 = load i8*, i8** %420, align 16
  %422 = load i8, i8* %421, align 1
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %426, label %424

; <label>:424:                                    ; preds = %415
  br label %430

; <label>:425:                                    ; preds = %443
  br label %427

; <label>:426:                                    ; preds = %415
  br label %427

; <label>:427:                                    ; preds = %426, %425
  %428 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %419, i32 1
  %429 = load i32, i32* %428, align 8
  br label %454

; <label>:430:                                    ; preds = %424, %443
  %431 = phi i8 [ %446, %443 ], [ %422, %424 ]
  %432 = phi i8* [ %445, %443 ], [ %421, %424 ]
  %433 = phi i8* [ %444, %443 ], [ %407, %424 ]
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i64
  %436 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = icmp ult i8 %437, %431
  br i1 %438, label %448, label %439

; <label>:439:                                    ; preds = %430
  %440 = icmp ugt i8 %437, %431
  br i1 %440, label %441, label %443

; <label>:441:                                    ; preds = %439
  %442 = add nuw i64 %419, 1
  br label %449

; <label>:443:                                    ; preds = %439
  %444 = getelementptr inbounds i8, i8* %433, i64 1
  %445 = getelementptr inbounds i8, i8* %432, i64 1
  %446 = load i8, i8* %445, align 1
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %425, label %430

; <label>:448:                                    ; preds = %430
  br label %449

; <label>:449:                                    ; preds = %448, %441
  %450 = phi i64 [ %442, %441 ], [ %416, %448 ]
  %451 = phi i64 [ %417, %441 ], [ %419, %448 ]
  %452 = icmp ult i64 %450, %451
  br i1 %452, label %415, label %453

; <label>:453:                                    ; preds = %449
  br label %454

; <label>:454:                                    ; preds = %453, %427
  %455 = phi i32 [ %429, %427 ], [ 0, %453 ]
  br label %456

; <label>:456:                                    ; preds = %456, %454
  %457 = phi i8* [ %174, %454 ], [ %463, %456 ]
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i64
  %460 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %459
  %461 = load i8, i8* %460, align 1
  %462 = icmp eq i8 %461, 0
  %463 = getelementptr inbounds i8, i8* %457, i64 1
  br i1 %462, label %464, label %456

; <label>:464:                                    ; preds = %456
  br label %465

; <label>:465:                                    ; preds = %464, %499
  %466 = phi i64 [ %500, %499 ], [ 0, %464 ]
  %467 = phi i64 [ %501, %499 ], [ 12, %464 ]
  %468 = add i64 %467, %466
  %469 = lshr i64 %468, 1
  %470 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %469, i32 0
  %471 = load i8*, i8** %470, align 16
  %472 = load i8, i8* %471, align 1
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %476, label %474

; <label>:474:                                    ; preds = %465
  br label %480

; <label>:475:                                    ; preds = %493
  br label %477

; <label>:476:                                    ; preds = %465
  br label %477

; <label>:477:                                    ; preds = %476, %475
  %478 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %469, i32 1
  %479 = load i32, i32* %478, align 8
  br label %504

; <label>:480:                                    ; preds = %474, %493
  %481 = phi i8 [ %496, %493 ], [ %472, %474 ]
  %482 = phi i8* [ %495, %493 ], [ %471, %474 ]
  %483 = phi i8* [ %494, %493 ], [ %457, %474 ]
  %484 = load i8, i8* %483, align 1
  %485 = zext i8 %484 to i64
  %486 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %485
  %487 = load i8, i8* %486, align 1
  %488 = icmp ult i8 %487, %481
  br i1 %488, label %498, label %489

; <label>:489:                                    ; preds = %480
  %490 = icmp ugt i8 %487, %481
  br i1 %490, label %491, label %493

; <label>:491:                                    ; preds = %489
  %492 = add nuw i64 %469, 1
  br label %499

; <label>:493:                                    ; preds = %489
  %494 = getelementptr inbounds i8, i8* %483, i64 1
  %495 = getelementptr inbounds i8, i8* %482, i64 1
  %496 = load i8, i8* %495, align 1
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %475, label %480

; <label>:498:                                    ; preds = %480
  br label %499

; <label>:499:                                    ; preds = %498, %491
  %500 = phi i64 [ %492, %491 ], [ %466, %498 ]
  %501 = phi i64 [ %467, %491 ], [ %469, %498 ]
  %502 = icmp ult i64 %500, %501
  br i1 %502, label %465, label %503

; <label>:503:                                    ; preds = %499
  br label %504

; <label>:504:                                    ; preds = %503, %477
  %505 = phi i32 [ %479, %477 ], [ 0, %503 ]
  %506 = sub nsw i32 %455, %505
  br label %656

; <label>:507:                                    ; preds = %401
  %508 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 9
  %509 = load i8, i8* %508, align 1
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %639, label %511

; <label>:511:                                    ; preds = %507
  call void @llvm.lifetime.start(i64 4000, i8* nonnull %30) #12
  call void @llvm.lifetime.start(i64 32, i8* nonnull %31) #12
  call void @llvm.lifetime.start(i64 312, i8* nonnull %32) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* bitcast (%struct.md5_ctx* @random_md5_state to i8*), i64 156, i32 4, i1 false) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %32, i8* bitcast (%struct.md5_ctx* @random_md5_state to i8*), i64 156, i32 4, i1 false) #12
  %512 = load i8, i8* @hard_LC_COLLATE, align 1
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %614, label %514

; <label>:514:                                    ; preds = %511
  %515 = getelementptr inbounds i8, i8* %173, i64 %175
  %516 = getelementptr inbounds i8, i8* %174, i64 %176
  %517 = add i64 %176, %175
  %518 = mul i64 %517, 3
  %519 = add i64 %518, 2
  br label %520

; <label>:520:                                    ; preds = %602, %514
  %521 = phi i64 [ 4000, %514 ], [ %582, %602 ]
  %522 = phi i8* [ null, %514 ], [ %583, %602 ]
  %523 = phi i8* [ %30, %514 ], [ %584, %602 ]
  %524 = phi i32 [ 0, %514 ], [ %611, %602 ]
  %525 = phi i8* [ %174, %514 ], [ %596, %602 ]
  %526 = phi i8* [ %173, %514 ], [ %590, %602 ]
  %527 = icmp eq i32 %524, 0
  br label %528

; <label>:528:                                    ; preds = %600, %520
  %529 = phi i64 [ %582, %600 ], [ %521, %520 ]
  %530 = phi i8* [ %583, %600 ], [ %522, %520 ]
  %531 = phi i8* [ %584, %600 ], [ %523, %520 ]
  %532 = phi i8* [ %596, %600 ], [ %525, %520 ]
  %533 = phi i8* [ %590, %600 ], [ %526, %520 ]
  %534 = icmp ult i64 %529, %519
  br i1 %534, label %535, label %544

; <label>:535:                                    ; preds = %528
  %536 = mul i64 %529, 3
  %537 = lshr i64 %536, 1
  %538 = icmp ugt i64 %519, %537
  %539 = select i1 %538, i64 %519, i64 %537
  call void @free(i8* %530) #12
  %540 = call noalias i8* @malloc(i64 %539) #12
  %541 = icmp eq i8* %540, null
  %542 = select i1 %541, i64 4000, i64 %539
  %543 = select i1 %541, i8* %30, i8* %540
  br label %544

; <label>:544:                                    ; preds = %535, %528
  %545 = phi i64 [ %529, %528 ], [ %542, %535 ]
  %546 = phi i8* [ %530, %528 ], [ %540, %535 ]
  %547 = phi i8* [ %531, %528 ], [ %543, %535 ]
  %548 = icmp ult i8* %533, %515
  br i1 %548, label %549, label %552

; <label>:549:                                    ; preds = %544
  %550 = call fastcc i64 @xstrxfrm(i8* %547, i8* %533, i64 %545) #12
  %551 = add i64 %550, 1
  br label %552

; <label>:552:                                    ; preds = %549, %544
  %553 = phi i64 [ %551, %549 ], [ 0, %544 ]
  %554 = icmp uge i64 %545, %553
  %555 = icmp ult i8* %532, %516
  br i1 %555, label %556, label %563

; <label>:556:                                    ; preds = %552
  %557 = getelementptr inbounds i8, i8* %547, i64 %553
  %558 = select i1 %554, i8* %557, i8* null
  %559 = sub i64 %545, %553
  %560 = select i1 %554, i64 %559, i64 0
  %561 = call fastcc i64 @xstrxfrm(i8* %558, i8* %532, i64 %560) #12
  %562 = add i64 %561, 1
  br label %563

; <label>:563:                                    ; preds = %556, %552
  %564 = phi i64 [ %562, %556 ], [ 0, %552 ]
  %565 = xor i1 %554, true
  %566 = add i64 %564, %553
  %567 = icmp ugt i64 %566, %545
  %568 = or i1 %567, %565
  br i1 %568, label %569, label %581

; <label>:569:                                    ; preds = %563
  %570 = icmp ult i64 %566, 6148914691236517205
  %571 = mul i64 %566, 3
  %572 = lshr i64 %571, 1
  %573 = select i1 %570, i64 %572, i64 %566
  call void @free(i8* %546) #12
  %574 = call noalias i8* @xmalloc(i64 %573) #12
  br i1 %548, label %575, label %577

; <label>:575:                                    ; preds = %569
  %576 = call i64 @strxfrm(i8* %574, i8* %533, i64 %553) #12
  br label %577

; <label>:577:                                    ; preds = %575, %569
  br i1 %555, label %578, label %581

; <label>:578:                                    ; preds = %577
  %579 = getelementptr inbounds i8, i8* %574, i64 %553
  %580 = call i64 @strxfrm(i8* %579, i8* %532, i64 %564) #12
  br label %581

; <label>:581:                                    ; preds = %578, %577, %563
  %582 = phi i64 [ %573, %578 ], [ %573, %577 ], [ %545, %563 ]
  %583 = phi i8* [ %574, %578 ], [ %574, %577 ], [ %546, %563 ]
  %584 = phi i8* [ %574, %578 ], [ %574, %577 ], [ %547, %563 ]
  br i1 %548, label %585, label %589

; <label>:585:                                    ; preds = %581
  %586 = call i64 @strlen(i8* %533) #14
  %587 = add i64 %586, 1
  %588 = getelementptr inbounds i8, i8* %533, i64 %587
  br label %589

; <label>:589:                                    ; preds = %585, %581
  %590 = phi i8* [ %588, %585 ], [ %533, %581 ]
  br i1 %555, label %591, label %595

; <label>:591:                                    ; preds = %589
  %592 = call i64 @strlen(i8* %532) #14
  %593 = add i64 %592, 1
  %594 = getelementptr inbounds i8, i8* %532, i64 %593
  br label %595

; <label>:595:                                    ; preds = %591, %589
  %596 = phi i8* [ %594, %591 ], [ %532, %589 ]
  %597 = icmp ult i8* %590, %515
  %598 = icmp ult i8* %596, %516
  %599 = or i1 %597, %598
  br i1 %599, label %600, label %612

; <label>:600:                                    ; preds = %595
  call void @md5_process_bytes(i8* %584, i64 %553, %struct.md5_ctx* nonnull %33) #12
  %601 = getelementptr inbounds i8, i8* %584, i64 %553
  call void @md5_process_bytes(i8* %601, i64 %564, %struct.md5_ctx* %34) #12
  br i1 %527, label %602, label %528

; <label>:602:                                    ; preds = %600
  %603 = icmp ult i64 %553, %564
  %604 = select i1 %603, i64 %553, i64 %564
  %605 = call i32 @memcmp(i8* %584, i8* %601, i64 %604) #14
  %606 = icmp eq i32 %605, 0
  %607 = icmp ugt i64 %553, %564
  %608 = zext i1 %607 to i32
  %609 = zext i1 %603 to i32
  %610 = sub nsw i32 %608, %609
  %611 = select i1 %606, i32 %610, i32 %605
  br label %520

; <label>:612:                                    ; preds = %595
  %613 = getelementptr inbounds i8, i8* %584, i64 %553
  br label %614

; <label>:614:                                    ; preds = %612, %511
  %615 = phi i8* [ null, %511 ], [ %583, %612 ]
  %616 = phi i32 [ 0, %511 ], [ %524, %612 ]
  %617 = phi i64 [ %176, %511 ], [ %564, %612 ]
  %618 = phi i8* [ %174, %511 ], [ %613, %612 ]
  %619 = phi i64 [ %175, %511 ], [ %553, %612 ]
  %620 = phi i8* [ %173, %511 ], [ %584, %612 ]
  call void @md5_process_bytes(i8* %620, i64 %619, %struct.md5_ctx* nonnull %33) #12
  %621 = call i8* @md5_finish_ctx(%struct.md5_ctx* nonnull %33, i8* nonnull %31) #12
  call void @md5_process_bytes(i8* %618, i64 %617, %struct.md5_ctx* %34) #12
  %622 = call i8* @md5_finish_ctx(%struct.md5_ctx* %34, i8* %37) #12
  %623 = call i32 @memcmp(i8* nonnull %31, i8* %37, i64 16) #14
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %637

; <label>:625:                                    ; preds = %614
  %626 = icmp eq i32 %616, 0
  br i1 %626, label %627, label %637

; <label>:627:                                    ; preds = %625
  %628 = icmp ult i64 %619, %617
  %629 = select i1 %628, i64 %619, i64 %617
  %630 = call i32 @memcmp(i8* %620, i8* %618, i64 %629) #14
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %637

; <label>:632:                                    ; preds = %627
  %633 = icmp ugt i64 %619, %617
  %634 = zext i1 %633 to i32
  %635 = zext i1 %628 to i32
  %636 = sub nsw i32 %634, %635
  br label %637

; <label>:637:                                    ; preds = %632, %627, %625, %614
  %638 = phi i32 [ %623, %614 ], [ %616, %625 ], [ %630, %627 ], [ %636, %632 ]
  call void @free(i8* %615) #12
  call void @llvm.lifetime.end(i64 312, i8* nonnull %32) #12
  call void @llvm.lifetime.end(i64 32, i8* nonnull %31) #12
  call void @llvm.lifetime.end(i64 4000, i8* nonnull %30) #12
  br label %656

; <label>:639:                                    ; preds = %507
  %640 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 14
  %641 = load i8, i8* %640, align 8
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %645, label %643

; <label>:643:                                    ; preds = %639
  %644 = call i32 @filevercmp(i8* %173, i8* %174) #14
  br label %656

; <label>:645:                                    ; preds = %639
  %646 = icmp eq i64 %175, 0
  br i1 %646, label %647, label %650

; <label>:647:                                    ; preds = %645
  %648 = icmp ne i64 %176, 0
  %649 = sext i1 %648 to i32
  br label %656

; <label>:650:                                    ; preds = %645
  %651 = icmp eq i64 %176, 0
  br i1 %651, label %656, label %652

; <label>:652:                                    ; preds = %650
  %653 = add i64 %175, 1
  %654 = add i64 %176, 1
  %655 = call i32 @xmemcoll0(i8* %173, i64 %653, i8* %174, i64 %654) #12
  br label %656

; <label>:656:                                    ; preds = %652, %650, %647, %643, %637, %504, %397, %393, %234, %201
  %657 = phi i32 [ %204, %201 ], [ %235, %234 ], [ %506, %504 ], [ %638, %637 ], [ %644, %643 ], [ %649, %647 ], [ %655, %652 ], [ 1, %650 ], [ %400, %397 ], [ %395, %393 ]
  br i1 %96, label %658, label %659

; <label>:658:                                    ; preds = %656
  call void @free(i8* %179) #12
  br label %662

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %173, i64 %175
  store i8 %177, i8* %660, align 1
  %661 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %178, i8* %661, align 1
  br label %662

; <label>:662:                                    ; preds = %659, %658
  call void @llvm.lifetime.end(i64 4000, i8* nonnull %29) #12
  br label %819

; <label>:663:                                    ; preds = %89
  %664 = icmp eq i8* %56, null
  br i1 %664, label %778, label %665

; <label>:665:                                    ; preds = %663
  %666 = icmp eq i8* %54, null
  br i1 %666, label %668, label %667

; <label>:667:                                    ; preds = %665
  br label %669

; <label>:668:                                    ; preds = %665
  br label %726

; <label>:669:                                    ; preds = %667, %714
  %670 = phi i8* [ %716, %714 ], [ %47, %667 ]
  %671 = phi i8* [ %715, %714 ], [ %48, %667 ]
  %672 = icmp ult i8* %671, %58
  br i1 %672, label %673, label %684

; <label>:673:                                    ; preds = %669
  br label %674

; <label>:674:                                    ; preds = %673, %689
  %675 = phi i8* [ %690, %689 ], [ %671, %673 ]
  %676 = load i8, i8* %675, align 1
  %677 = zext i8 %676 to i64
  %678 = getelementptr inbounds i8, i8* %56, i64 %677
  %679 = load i8, i8* %678, align 1
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %681, label %689

; <label>:681:                                    ; preds = %674, %689
  %682 = phi i8* [ %675, %674 ], [ %690, %689 ]
  %683 = phi i1 [ true, %674 ], [ false, %689 ]
  br label %684

; <label>:684:                                    ; preds = %681, %669
  %685 = phi i8* [ %671, %669 ], [ %682, %681 ]
  %686 = phi i1 [ false, %669 ], [ %683, %681 ]
  %687 = icmp ult i8* %670, %60
  br i1 %687, label %688, label %718

; <label>:688:                                    ; preds = %684
  br label %692

; <label>:689:                                    ; preds = %674
  %690 = getelementptr inbounds i8, i8* %675, i64 1
  %691 = icmp ult i8* %690, %58
  br i1 %691, label %674, label %681

; <label>:692:                                    ; preds = %688, %699
  %693 = phi i8* [ %700, %699 ], [ %670, %688 ]
  %694 = load i8, i8* %693, align 1
  %695 = zext i8 %694 to i64
  %696 = getelementptr inbounds i8, i8* %56, i64 %695
  %697 = load i8, i8* %696, align 1
  %698 = icmp eq i8 %697, 0
  br i1 %698, label %702, label %699

; <label>:699:                                    ; preds = %692
  %700 = getelementptr inbounds i8, i8* %693, i64 1
  %701 = icmp ult i8* %700, %60
  br i1 %701, label %692, label %717

; <label>:702:                                    ; preds = %692
  br i1 %686, label %703, label %718

; <label>:703:                                    ; preds = %702
  %704 = load i8, i8* %685, align 1
  %705 = zext i8 %704 to i64
  %706 = getelementptr inbounds i8, i8* %54, i64 %705
  %707 = load i8, i8* %706, align 1
  %708 = zext i8 %707 to i32
  %709 = getelementptr inbounds i8, i8* %54, i64 %695
  %710 = load i8, i8* %709, align 1
  %711 = zext i8 %710 to i32
  %712 = sub nsw i32 %708, %711
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %894

; <label>:714:                                    ; preds = %703
  %715 = getelementptr inbounds i8, i8* %685, i64 1
  %716 = getelementptr inbounds i8, i8* %693, i64 1
  br label %669

; <label>:717:                                    ; preds = %699
  br label %721

; <label>:718:                                    ; preds = %684, %702
  %719 = phi i1 [ false, %702 ], [ %686, %684 ]
  %720 = phi i32 [ 1, %702 ], [ 0, %684 ]
  br label %721

; <label>:721:                                    ; preds = %718, %717
  %722 = phi i1 [ %686, %717 ], [ %719, %718 ]
  %723 = phi i32 [ 0, %717 ], [ %720, %718 ]
  %724 = zext i1 %722 to i32
  %725 = sub nsw i32 %724, %723
  br label %819

; <label>:726:                                    ; preds = %668, %766
  %727 = phi i8* [ %768, %766 ], [ %47, %668 ]
  %728 = phi i8* [ %767, %766 ], [ %48, %668 ]
  %729 = icmp ult i8* %728, %58
  br i1 %729, label %730, label %741

; <label>:730:                                    ; preds = %726
  br label %731

; <label>:731:                                    ; preds = %730, %746
  %732 = phi i8* [ %747, %746 ], [ %728, %730 ]
  %733 = load i8, i8* %732, align 1
  %734 = zext i8 %733 to i64
  %735 = getelementptr inbounds i8, i8* %56, i64 %734
  %736 = load i8, i8* %735, align 1
  %737 = icmp eq i8 %736, 0
  br i1 %737, label %738, label %746

; <label>:738:                                    ; preds = %731, %746
  %739 = phi i8* [ %732, %731 ], [ %747, %746 ]
  %740 = phi i1 [ true, %731 ], [ false, %746 ]
  br label %741

; <label>:741:                                    ; preds = %738, %726
  %742 = phi i8* [ %728, %726 ], [ %739, %738 ]
  %743 = phi i1 [ false, %726 ], [ %740, %738 ]
  %744 = icmp ult i8* %727, %60
  br i1 %744, label %745, label %770

; <label>:745:                                    ; preds = %741
  br label %749

; <label>:746:                                    ; preds = %731
  %747 = getelementptr inbounds i8, i8* %732, i64 1
  %748 = icmp ult i8* %747, %58
  br i1 %748, label %731, label %738

; <label>:749:                                    ; preds = %745, %756
  %750 = phi i8* [ %757, %756 ], [ %727, %745 ]
  %751 = load i8, i8* %750, align 1
  %752 = zext i8 %751 to i64
  %753 = getelementptr inbounds i8, i8* %56, i64 %752
  %754 = load i8, i8* %753, align 1
  %755 = icmp eq i8 %754, 0
  br i1 %755, label %759, label %756

; <label>:756:                                    ; preds = %749
  %757 = getelementptr inbounds i8, i8* %750, i64 1
  %758 = icmp ult i8* %757, %60
  br i1 %758, label %749, label %769

; <label>:759:                                    ; preds = %749
  br i1 %743, label %760, label %770

; <label>:760:                                    ; preds = %759
  %761 = load i8, i8* %742, align 1
  %762 = zext i8 %761 to i32
  %763 = zext i8 %751 to i32
  %764 = sub nsw i32 %762, %763
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %893

; <label>:766:                                    ; preds = %760
  %767 = getelementptr inbounds i8, i8* %742, i64 1
  %768 = getelementptr inbounds i8, i8* %750, i64 1
  br label %726

; <label>:769:                                    ; preds = %756
  br label %773

; <label>:770:                                    ; preds = %741, %759
  %771 = phi i1 [ false, %759 ], [ %743, %741 ]
  %772 = phi i32 [ 1, %759 ], [ 0, %741 ]
  br label %773

; <label>:773:                                    ; preds = %770, %769
  %774 = phi i1 [ %743, %769 ], [ %771, %770 ]
  %775 = phi i32 [ 0, %769 ], [ %772, %770 ]
  %776 = zext i1 %774 to i32
  %777 = sub nsw i32 %776, %775
  br label %819

; <label>:778:                                    ; preds = %663
  %779 = icmp eq i64 %63, 0
  br i1 %779, label %780, label %783

; <label>:780:                                    ; preds = %778
  %781 = icmp ne i64 %66, 0
  %782 = sext i1 %781 to i32
  br label %819

; <label>:783:                                    ; preds = %778
  %784 = icmp eq i64 %66, 0
  br i1 %784, label %895, label %785

; <label>:785:                                    ; preds = %783
  %786 = icmp eq i8* %54, null
  br i1 %786, label %809, label %787

; <label>:787:                                    ; preds = %785
  br label %788

; <label>:788:                                    ; preds = %787, %794
  %789 = phi i8* [ %801, %794 ], [ %47, %787 ]
  %790 = phi i8* [ %795, %794 ], [ %48, %787 ]
  %791 = icmp ult i8* %790, %58
  %792 = icmp ult i8* %789, %60
  %793 = and i1 %792, %791
  br i1 %793, label %794, label %814

; <label>:794:                                    ; preds = %788
  %795 = getelementptr inbounds i8, i8* %790, i64 1
  %796 = load i8, i8* %790, align 1
  %797 = zext i8 %796 to i64
  %798 = getelementptr inbounds i8, i8* %54, i64 %797
  %799 = load i8, i8* %798, align 1
  %800 = zext i8 %799 to i32
  %801 = getelementptr inbounds i8, i8* %789, i64 1
  %802 = load i8, i8* %789, align 1
  %803 = zext i8 %802 to i64
  %804 = getelementptr inbounds i8, i8* %54, i64 %803
  %805 = load i8, i8* %804, align 1
  %806 = zext i8 %805 to i32
  %807 = sub nsw i32 %800, %806
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %788, label %892

; <label>:809:                                    ; preds = %785
  %810 = icmp ult i64 %63, %66
  %811 = select i1 %810, i64 %63, i64 %66
  %812 = call i32 @memcmp(i8* %48, i8* %47, i64 %811) #14
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %815, label %895

; <label>:814:                                    ; preds = %788
  br label %815

; <label>:815:                                    ; preds = %814, %809
  %816 = icmp ult i64 %63, %66
  %817 = icmp ne i64 %63, %66
  %818 = zext i1 %817 to i32
  br i1 %816, label %895, label %819

; <label>:819:                                    ; preds = %815, %780, %773, %721, %662
  %820 = phi i32 [ %657, %662 ], [ %725, %721 ], [ %777, %773 ], [ %782, %780 ], [ %818, %815 ]
  %821 = phi i8 [ %177, %662 ], [ %50, %721 ], [ %50, %773 ], [ %50, %780 ], [ %50, %815 ]
  %822 = phi i8 [ %178, %662 ], [ %51, %721 ], [ %51, %773 ], [ %51, %780 ], [ %51, %815 ]
  %823 = phi i8* [ %179, %662 ], [ %52, %721 ], [ %52, %773 ], [ %52, %780 ], [ %52, %815 ]
  %824 = icmp eq i32 %820, 0
  br i1 %824, label %825, label %895

; <label>:825:                                    ; preds = %819
  %826 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 16
  %827 = load %struct.keyfield*, %struct.keyfield** %826, align 8
  %828 = icmp eq %struct.keyfield* %827, null
  br i1 %828, label %904, label %829

; <label>:829:                                    ; preds = %825
  %830 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %827, i64 0, i32 2
  %831 = load i64, i64* %830, align 8
  %832 = icmp eq i64 %831, -1
  br i1 %832, label %836, label %833

; <label>:833:                                    ; preds = %829
  %834 = call fastcc i8* @limfield(%struct.line* %0, %struct.keyfield* nonnull %827) #12
  %835 = call fastcc i8* @limfield(%struct.line* %1, %struct.keyfield* nonnull %827) #12
  br label %845

; <label>:836:                                    ; preds = %829
  %837 = load i8*, i8** %25, align 8
  %838 = load i64, i64* %26, align 8
  %839 = getelementptr inbounds i8, i8* %837, i64 %838
  %840 = getelementptr inbounds i8, i8* %839, i64 -1
  %841 = load i8*, i8** %27, align 8
  %842 = load i64, i64* %28, align 8
  %843 = getelementptr inbounds i8, i8* %841, i64 %842
  %844 = getelementptr inbounds i8, i8* %843, i64 -1
  br label %845

; <label>:845:                                    ; preds = %836, %833
  %846 = phi i8* [ %835, %833 ], [ %844, %836 ]
  %847 = phi i8* [ %834, %833 ], [ %840, %836 ]
  %848 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %827, i64 0, i32 0
  %849 = load i64, i64* %848, align 8
  %850 = icmp eq i64 %849, -1
  br i1 %850, label %857, label %851

; <label>:851:                                    ; preds = %845
  %852 = call fastcc i8* @begfield(%struct.line* %0, %struct.keyfield* nonnull %827) #12
  %853 = call fastcc i8* @begfield(%struct.line* %1, %struct.keyfield* nonnull %827) #12
  br label %854

; <label>:854:                                    ; preds = %851, %857, %875, %42
  %855 = phi i8* [ %853, %851 ], [ %859, %857 ], [ %859, %875 ], [ %43, %42 ]
  %856 = phi i8* [ %852, %851 ], [ %858, %857 ], [ %876, %875 ], [ %876, %42 ]
  br label %44

; <label>:857:                                    ; preds = %845
  %858 = load i8*, i8** %25, align 8
  %859 = load i8*, i8** %27, align 8
  %860 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %827, i64 0, i32 6
  %861 = load i8, i8* %860, align 8
  %862 = icmp eq i8 %861, 0
  br i1 %862, label %854, label %863

; <label>:863:                                    ; preds = %857
  %864 = icmp ult i8* %858, %847
  br i1 %864, label %865, label %875

; <label>:865:                                    ; preds = %863
  br label %866

; <label>:866:                                    ; preds = %865, %879
  %867 = phi i8* [ %880, %879 ], [ %858, %865 ]
  %868 = load i8, i8* %867, align 1
  %869 = zext i8 %868 to i64
  %870 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %869
  %871 = load i8, i8* %870, align 1
  %872 = icmp eq i8 %871, 0
  br i1 %872, label %873, label %879

; <label>:873:                                    ; preds = %866, %879
  %874 = phi i8* [ %867, %866 ], [ %880, %879 ]
  br label %875

; <label>:875:                                    ; preds = %873, %863
  %876 = phi i8* [ %858, %863 ], [ %874, %873 ]
  %877 = icmp ult i8* %859, %846
  br i1 %877, label %878, label %854

; <label>:878:                                    ; preds = %875
  br label %882

; <label>:879:                                    ; preds = %866
  %880 = getelementptr inbounds i8, i8* %867, i64 1
  %881 = icmp ult i8* %880, %847
  br i1 %881, label %866, label %873

; <label>:882:                                    ; preds = %878, %889
  %883 = phi i8* [ %890, %889 ], [ %859, %878 ]
  %884 = load i8, i8* %883, align 1
  %885 = zext i8 %884 to i64
  %886 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %885
  %887 = load i8, i8* %886, align 1
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %42, label %889

; <label>:889:                                    ; preds = %882
  %890 = getelementptr inbounds i8, i8* %883, i64 1
  %891 = icmp ult i8* %890, %846
  br i1 %891, label %882, label %42

; <label>:892:                                    ; preds = %794
  br label %897

; <label>:893:                                    ; preds = %760
  br label %897

; <label>:894:                                    ; preds = %703
  br label %897

; <label>:895:                                    ; preds = %783, %809, %815, %819
  %896 = phi i32 [ 1, %783 ], [ %820, %819 ], [ %812, %809 ], [ -1, %815 ]
  br label %897

; <label>:897:                                    ; preds = %895, %894, %893, %892
  %898 = phi i32 [ %807, %892 ], [ %764, %893 ], [ %712, %894 ], [ %896, %895 ]
  %899 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %49, i64 0, i32 13
  %900 = load i8, i8* %899, align 1
  %901 = icmp eq i8 %900, 0
  %902 = sub nsw i32 0, %898
  %903 = select i1 %901, i32 %898, i32 %902
  ret i32 %903

; <label>:904:                                    ; preds = %825
  %905 = load i1, i1* @unique, align 1
  br i1 %905, label %945, label %906

; <label>:906:                                    ; preds = %904
  %907 = load i1, i1* @stable, align 1
  br i1 %907, label %945, label %908

; <label>:908:                                    ; preds = %13, %906
  %909 = phi i64* [ %15, %13 ], [ %28, %906 ]
  %910 = phi i64* [ %14, %13 ], [ %26, %906 ]
  %911 = load i64, i64* %910, align 8
  %912 = add i64 %911, -1
  %913 = load i64, i64* %909, align 8
  %914 = add i64 %913, -1
  %915 = icmp eq i64 %912, 0
  br i1 %915, label %916, label %919

; <label>:916:                                    ; preds = %908
  %917 = icmp ne i64 %914, 0
  %918 = sext i1 %917 to i32
  br label %939

; <label>:919:                                    ; preds = %908
  %920 = icmp eq i64 %914, 0
  br i1 %920, label %939, label %921

; <label>:921:                                    ; preds = %919
  %922 = load i8, i8* @hard_LC_COLLATE, align 1
  %923 = icmp eq i8 %922, 0
  %924 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 0
  %925 = load i8*, i8** %924, align 8
  %926 = getelementptr inbounds %struct.line, %struct.line* %1, i64 0, i32 0
  %927 = load i8*, i8** %926, align 8
  br i1 %923, label %930, label %928

; <label>:928:                                    ; preds = %921
  %929 = call i32 @xmemcoll0(i8* %925, i64 %911, i8* %927, i64 %913) #12
  br label %939

; <label>:930:                                    ; preds = %921
  %931 = icmp ult i64 %912, %914
  %932 = select i1 %931, i64 %912, i64 %914
  %933 = call i32 @memcmp(i8* %925, i8* %927, i64 %932) #14
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %939

; <label>:935:                                    ; preds = %930
  %936 = icmp ne i64 %912, %914
  %937 = zext i1 %936 to i32
  %938 = select i1 %931, i32 -1, i32 %937
  br label %939

; <label>:939:                                    ; preds = %935, %919, %930, %928, %916
  %940 = phi i32 [ %918, %916 ], [ %929, %928 ], [ %933, %930 ], [ 1, %919 ], [ %938, %935 ]
  %941 = load i8, i8* @reverse, align 1
  %942 = icmp ne i8 %941, 0
  %943 = sub nsw i32 0, %940
  %944 = select i1 %942, i32 %943, i32 %940
  br label %945

; <label>:945:                                    ; preds = %904, %906, %939
  %946 = phi i32 [ %944, %939 ], [ 0, %906 ], [ 0, %904 ]
  ret i32 %946
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_line(%struct.line* nocapture readonly, %struct._IO_FILE*, i8*) unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* %6, i64 %8
  %10 = icmp eq i8* %2, null
  br i1 %10, label %11, label %348

; <label>:11:                                     ; preds = %3
  %12 = load i1, i1* @debug, align 1
  br i1 %12, label %13, label %348

; <label>:13:                                     ; preds = %11
  %14 = icmp sgt i64 %8, 0
  br i1 %14, label %15, label %40

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 5
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 6
  br label %18

; <label>:18:                                     ; preds = %15, %35
  %19 = phi i8* [ %6, %15 ], [ %20, %35 ]
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %19, align 1
  %22 = icmp eq i8 %21, 9
  %23 = icmp eq i8* %20, %9
  %24 = select i1 %23, i8 10, i8 %21
  %25 = select i1 %22, i8 62, i8 %24
  %26 = load i8*, i8** %16, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %30, i8** %16, align 8
  store i8 %25, i8* %26, align 1
  br label %35

; <label>:31:                                     ; preds = %18
  %32 = zext i8 %25 to i32
  %33 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %1, i32 %32) #12
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %31, %29
  %36 = icmp ult i8* %20, %9
  br i1 %36, label %18, label %39

; <label>:37:                                     ; preds = %31
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.163, i64 0, i64 0), i32 5) #12
  tail call fastcc void @sort_die(i8* %38, i8* null) #16
  unreachable

; <label>:39:                                     ; preds = %35
  br label %40

; <label>:40:                                     ; preds = %39, %13
  %41 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %42 = bitcast i8** %4 to i8*
  br label %43

; <label>:43:                                     ; preds = %342, %40
  %44 = phi %struct.keyfield* [ %41, %40 ], [ %343, %342 ]
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 -1
  %49 = icmp eq %struct.keyfield* %44, null
  br i1 %49, label %247, label %50

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, -1
  br i1 %53, label %56, label %54

; <label>:54:                                     ; preds = %50
  %55 = tail call fastcc i8* @begfield(%struct.line* nonnull %0, %struct.keyfield* nonnull %44) #12
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = phi i8* [ %55, %54 ], [ %45, %50 ]
  %58 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %63, label %61

; <label>:61:                                     ; preds = %56
  %62 = tail call fastcc i8* @limfield(%struct.line* nonnull %0, %struct.keyfield* nonnull %44) #12
  br label %63

; <label>:63:                                     ; preds = %61, %56
  %64 = phi i8* [ %62, %61 ], [ %48, %56 ]
  %65 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 6
  %66 = load i8, i8* %65, align 8
  %67 = icmp eq i8 %66, 0
  %68 = xor i1 %53, true
  %69 = or i1 %67, %68
  br i1 %69, label %70, label %86

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 12
  %72 = load i8, i8* %71, align 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %86

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 8
  %76 = load i8, i8* %75, align 2
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %86

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 10
  %80 = load i8, i8* %79, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 11
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %247, label %86

; <label>:86:                                     ; preds = %82, %78, %74, %70, %63
  %87 = load i8, i8* %64, align 1
  store i8 0, i8* %64, align 1
  br label %88

; <label>:88:                                     ; preds = %88, %86
  %89 = phi i8* [ %57, %86 ], [ %95, %88 ]
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = icmp eq i8 %93, 0
  %95 = getelementptr inbounds i8, i8* %89, i64 1
  br i1 %94, label %96, label %88

; <label>:96:                                     ; preds = %88
  call void @llvm.lifetime.start(i64 8, i8* nonnull %42) #12
  store i8* %89, i8** %4, align 8
  %97 = icmp ult i8* %64, %89
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %96
  store i8* %64, i8** %4, align 8
  br label %245

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 12
  %101 = load i8, i8* %100, align 2
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %150, label %103

; <label>:103:                                    ; preds = %99
  br label %104

; <label>:104:                                    ; preds = %103, %104
  %105 = phi i8* [ %111, %104 ], [ %89, %103 ]
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = icmp eq i8 %109, 0
  %111 = getelementptr inbounds i8, i8* %105, i64 1
  br i1 %110, label %112, label %104

; <label>:112:                                    ; preds = %104
  br label %113

; <label>:113:                                    ; preds = %112, %146
  %114 = phi i64 [ %147, %146 ], [ 0, %112 ]
  %115 = phi i64 [ %148, %146 ], [ 12, %112 ]
  %116 = add i64 %115, %114
  %117 = lshr i64 %116, 1
  %118 = getelementptr inbounds [12 x %struct.month], [12 x %struct.month]* @monthtab, i64 0, i64 %117, i32 0
  %119 = load i8*, i8** %118, align 16
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122

; <label>:122:                                    ; preds = %113
  br label %127

; <label>:123:                                    ; preds = %140
  br label %125

; <label>:124:                                    ; preds = %113
  br label %125

; <label>:125:                                    ; preds = %124, %123
  %126 = phi i8* [ %141, %123 ], [ %105, %124 ]
  store i8* %126, i8** %4, align 8
  br label %245

; <label>:127:                                    ; preds = %122, %140
  %128 = phi i8 [ %143, %140 ], [ %120, %122 ]
  %129 = phi i8* [ %142, %140 ], [ %119, %122 ]
  %130 = phi i8* [ %141, %140 ], [ %105, %122 ]
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* @fold_toupper, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = icmp ult i8 %134, %128
  br i1 %135, label %145, label %136

; <label>:136:                                    ; preds = %127
  %137 = icmp ugt i8 %134, %128
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %136
  %139 = add nuw i64 %117, 1
  br label %146

; <label>:140:                                    ; preds = %136
  %141 = getelementptr inbounds i8, i8* %130, i64 1
  %142 = getelementptr inbounds i8, i8* %129, i64 1
  %143 = load i8, i8* %142, align 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %123, label %127

; <label>:145:                                    ; preds = %127
  br label %146

; <label>:146:                                    ; preds = %145, %138
  %147 = phi i64 [ %139, %138 ], [ %114, %145 ]
  %148 = phi i64 [ %115, %138 ], [ %117, %145 ]
  %149 = icmp ult i64 %147, %148
  br i1 %149, label %113, label %244

; <label>:150:                                    ; preds = %99
  %151 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 10
  %152 = load i8, i8* %151, align 4
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %157, label %154

; <label>:154:                                    ; preds = %150
  %155 = call x86_fp80 @strtold(i8* %89, i8** nonnull %4) #12
  %156 = load i8*, i8** %4, align 8
  br label %245

; <label>:157:                                    ; preds = %150
  %158 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 8
  %159 = load i8, i8* %158, align 2
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %165

; <label>:161:                                    ; preds = %157
  %162 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 11
  %163 = load i8, i8* %162, align 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %243, label %165

; <label>:165:                                    ; preds = %161, %157
  %166 = icmp ult i8* %89, %64
  br i1 %166, label %167, label %170

; <label>:167:                                    ; preds = %165
  %168 = load i8, i8* %89, align 1
  %169 = icmp eq i8 %168, 45
  br label %170

; <label>:170:                                    ; preds = %167, %165
  %171 = phi i1 [ false, %165 ], [ %169, %167 ]
  %172 = zext i1 %171 to i64
  %173 = getelementptr inbounds i8, i8* %89, i64 %172
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %173, align 1
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %176, -48
  %178 = icmp ult i32 %177, 10
  br i1 %178, label %179, label %199

; <label>:179:                                    ; preds = %170
  %180 = load i32, i32* @thousands_sep, align 4
  br label %181

; <label>:181:                                    ; preds = %181, %179
  %182 = phi i8 [ %175, %179 ], [ %194, %181 ]
  %183 = phi i8* [ %174, %179 ], [ %193, %181 ]
  %184 = phi i8 [ 0, %179 ], [ %187, %181 ]
  %185 = phi i8* [ %173, %179 ], [ %192, %181 ]
  %186 = icmp ult i8 %184, %182
  %187 = select i1 %186, i8 %182, i8 %184
  %188 = load i8, i8* %183, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, %180
  %191 = getelementptr inbounds i8, i8* %185, i64 2
  %192 = select i1 %190, i8* %191, i8* %183
  %193 = getelementptr inbounds i8, i8* %192, i64 1
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = add nsw i32 %195, -48
  %197 = icmp ult i32 %196, 10
  br i1 %197, label %181, label %198

; <label>:198:                                    ; preds = %181
  br i1 %190, label %224, label %199

; <label>:199:                                    ; preds = %198, %170
  %200 = phi i32 [ %195, %198 ], [ %176, %170 ]
  %201 = phi i8* [ %193, %198 ], [ %174, %170 ]
  %202 = phi i8 [ %187, %198 ], [ 0, %170 ]
  %203 = load i32, i32* @decimal_point, align 4
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %224

; <label>:205:                                    ; preds = %199
  %206 = getelementptr inbounds i8, i8* %201, i64 1
  %207 = load i8, i8* %201, align 1
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, -48
  %210 = icmp ult i32 %209, 10
  br i1 %210, label %211, label %224

; <label>:211:                                    ; preds = %205
  br label %212

; <label>:212:                                    ; preds = %211, %212
  %213 = phi i8 [ %219, %212 ], [ %207, %211 ]
  %214 = phi i8* [ %218, %212 ], [ %206, %211 ]
  %215 = phi i8 [ %217, %212 ], [ %202, %211 ]
  %216 = icmp ult i8 %215, %213
  %217 = select i1 %216, i8 %213, i8 %215
  %218 = getelementptr inbounds i8, i8* %214, i64 1
  %219 = load i8, i8* %214, align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %220, -48
  %222 = icmp ult i32 %221, 10
  br i1 %222, label %212, label %223

; <label>:223:                                    ; preds = %212
  br label %224

; <label>:224:                                    ; preds = %223, %205, %199, %198
  %225 = phi i8* [ %191, %198 ], [ %201, %199 ], [ %206, %205 ], [ %218, %223 ]
  %226 = phi i8 [ %187, %198 ], [ %202, %199 ], [ %202, %205 ], [ %217, %223 ]
  %227 = getelementptr inbounds i8, i8* %225, i64 -1
  %228 = icmp ugt i8 %226, 47
  br i1 %228, label %229, label %245

; <label>:229:                                    ; preds = %224
  %230 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 11
  %231 = load i8, i8* %230, align 1
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %239, label %233

; <label>:233:                                    ; preds = %229
  %234 = load i8, i8* %227, align 1
  %235 = zext i8 %234 to i64
  %236 = getelementptr inbounds [256 x i8], [256 x i8]* @unit_order, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = icmp ne i8 %237, 0
  br label %239

; <label>:239:                                    ; preds = %233, %229
  %240 = phi i1 [ false, %229 ], [ %238, %233 ]
  %241 = zext i1 %240 to i64
  %242 = getelementptr inbounds i8, i8* %227, i64 %241
  store i8* %242, i8** %4, align 8
  br label %245

; <label>:243:                                    ; preds = %161
  store i8* %64, i8** %4, align 8
  br label %245

; <label>:244:                                    ; preds = %146
  br label %245

; <label>:245:                                    ; preds = %244, %243, %239, %224, %154, %125, %98
  %246 = phi i8* [ %89, %224 ], [ %242, %239 ], [ %126, %125 ], [ %64, %243 ], [ %156, %154 ], [ %64, %98 ], [ %89, %244 ]
  store i8 %87, i8* %64, align 1
  call void @llvm.lifetime.end(i64 8, i8* nonnull %42) #12
  br label %247

; <label>:247:                                    ; preds = %245, %82, %43
  %248 = phi i8* [ %246, %245 ], [ %64, %82 ], [ %48, %43 ]
  %249 = phi i8* [ %89, %245 ], [ %57, %82 ], [ %45, %43 ]
  %250 = ptrtoint i8* %249 to i64
  %251 = ptrtoint i8* %45 to i64
  %252 = sub i64 %250, %251
  %253 = tail call i32 @mbsnwidth(i8* %45, i64 %252, i32 0) #12
  %254 = sext i32 %253 to i64
  %255 = icmp ult i8* %45, %249
  br i1 %255, label %256, label %267

; <label>:256:                                    ; preds = %247
  br label %257

; <label>:257:                                    ; preds = %256, %257
  %258 = phi i64 [ %264, %257 ], [ %254, %256 ]
  %259 = phi i8* [ %260, %257 ], [ %45, %256 ]
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  %261 = load i8, i8* %259, align 1
  %262 = icmp eq i8 %261, 9
  %263 = zext i1 %262 to i64
  %264 = add i64 %263, %258
  %265 = icmp eq i8* %260, %249
  br i1 %265, label %266, label %257

; <label>:266:                                    ; preds = %257
  br label %267

; <label>:267:                                    ; preds = %266, %247
  %268 = phi i64 [ %254, %247 ], [ %264, %266 ]
  %269 = ptrtoint i8* %248 to i64
  %270 = sub i64 %269, %250
  %271 = tail call i32 @mbsnwidth(i8* %249, i64 %270, i32 0) #12
  %272 = sext i32 %271 to i64
  %273 = icmp ult i8* %249, %248
  br i1 %273, label %274, label %285

; <label>:274:                                    ; preds = %267
  br label %275

; <label>:275:                                    ; preds = %274, %275
  %276 = phi i64 [ %282, %275 ], [ %272, %274 ]
  %277 = phi i8* [ %278, %275 ], [ %249, %274 ]
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  %279 = load i8, i8* %277, align 1
  %280 = icmp eq i8 %279, 9
  %281 = zext i1 %280 to i64
  %282 = add i64 %281, %276
  %283 = icmp eq i8* %278, %248
  br i1 %283, label %284, label %275

; <label>:284:                                    ; preds = %275
  br label %285

; <label>:285:                                    ; preds = %284, %267
  %286 = phi i64 [ %272, %267 ], [ %282, %284 ]
  %287 = icmp eq i64 %268, 0
  br i1 %287, label %305, label %288

; <label>:288:                                    ; preds = %285
  br label %289

; <label>:289:                                    ; preds = %288, %300
  %290 = phi i64 [ %291, %300 ], [ %268, %288 ]
  %291 = add i64 %290, -1
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %293 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %292, i64 0, i32 5
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %292, i64 0, i32 6
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ult i8* %294, %296
  br i1 %297, label %302, label %298

; <label>:298:                                    ; preds = %289
  %299 = tail call i32 @__overflow(%struct._IO_FILE* %292, i32 32) #12
  br label %300

; <label>:300:                                    ; preds = %302, %298
  %301 = icmp eq i64 %291, 0
  br i1 %301, label %304, label %289

; <label>:302:                                    ; preds = %289
  %303 = getelementptr inbounds i8, i8* %294, i64 1
  store i8* %303, i8** %293, align 8
  store i8 32, i8* %294, align 1
  br label %300

; <label>:304:                                    ; preds = %300
  br label %305

; <label>:305:                                    ; preds = %304, %285
  %306 = icmp eq i64 %286, 0
  br i1 %306, label %308, label %307

; <label>:307:                                    ; preds = %305
  br label %311

; <label>:308:                                    ; preds = %305
  %309 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i64 0, i64 0), i32 5) #12
  %310 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %309) #12
  br label %337

; <label>:311:                                    ; preds = %307, %323
  %312 = phi i64 [ %324, %323 ], [ %286, %307 ]
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %314 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %313, i64 0, i32 5
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %313, i64 0, i32 6
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ult i8* %315, %317
  br i1 %318, label %321, label %319

; <label>:319:                                    ; preds = %311
  %320 = tail call i32 @__overflow(%struct._IO_FILE* %313, i32 95) #12
  br label %323

; <label>:321:                                    ; preds = %311
  %322 = getelementptr inbounds i8, i8* %315, i64 1
  store i8* %322, i8** %314, align 8
  store i8 95, i8* %315, align 1
  br label %323

; <label>:323:                                    ; preds = %321, %319
  %324 = add i64 %312, -1
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %311

; <label>:326:                                    ; preds = %323
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %328 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %327, i64 0, i32 5
  %329 = load i8*, i8** %328, align 8
  %330 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %327, i64 0, i32 6
  %331 = load i8*, i8** %330, align 8
  %332 = icmp ult i8* %329, %331
  br i1 %332, label %335, label %333

; <label>:333:                                    ; preds = %326
  %334 = tail call i32 @__overflow(%struct._IO_FILE* %327, i32 10) #12
  br label %337

; <label>:335:                                    ; preds = %326
  %336 = getelementptr inbounds i8, i8* %329, i64 1
  store i8* %336, i8** %328, align 8
  store i8 10, i8* %329, align 1
  br label %337

; <label>:337:                                    ; preds = %335, %333, %308
  br i1 %49, label %357, label %338

; <label>:338:                                    ; preds = %337
  %339 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %44, i64 0, i32 16
  %340 = load %struct.keyfield*, %struct.keyfield** %339, align 8
  %341 = icmp eq %struct.keyfield* %340, null
  br i1 %341, label %344, label %342

; <label>:342:                                    ; preds = %338, %344
  %343 = phi %struct.keyfield* [ %340, %338 ], [ null, %344 ]
  br label %43

; <label>:344:                                    ; preds = %338
  %345 = load i1, i1* @unique, align 1
  %346 = load i1, i1* @stable, align 1
  %347 = or i1 %345, %346
  br i1 %347, label %357, label %342

; <label>:348:                                    ; preds = %3, %11
  %349 = load i1, i1* @eolchar, align 1
  %350 = select i1 %349, i8 0, i8 10
  %351 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8 %350, i8* %351, align 1
  %352 = tail call i64 @fwrite_unlocked(i8* %6, i64 1, i64 %8, %struct._IO_FILE* %1) #12
  %353 = icmp eq i64 %352, %8
  br i1 %353, label %356, label %354

; <label>:354:                                    ; preds = %348
  %355 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.163, i64 0, i64 0), i32 5) #12
  tail call fastcc void @sort_die(i8* %355, i8* %2) #16
  unreachable

; <label>:356:                                    ; preds = %348
  store i8 0, i8* %351, align 1
  br label %358

; <label>:357:                                    ; preds = %337, %344
  br label %358

; <label>:358:                                    ; preds = %357, %356
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xfclose(%struct._IO_FILE*, i8*) unnamed_addr #6 {
  %3 = tail call i32 @fileno(%struct._IO_FILE* %0) #12
  switch i32 %3, label %15 [
    i32 0, label %4
    i32 1, label %10
  ]

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %4
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %0) #12
  br label %20

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @fflush_unlocked(%struct._IO_FILE* %0) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.165, i64 0, i64 0), i32 5) #12
  tail call fastcc void @sort_die(i8* %14, i8* %1) #16
  unreachable

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i32 5) #12
  tail call fastcc void @sort_die(i8* %19, i8* %1) #16
  unreachable

; <label>:20:                                     ; preds = %15, %4, %10, %9
  ret void
}

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @merge(%struct.sortfile* nocapture, i64, i64, i8*) unnamed_addr #6 {
  %5 = alloca %struct._IO_FILE**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca %struct._IO_FILE**, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca %struct._IO_FILE**, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = load i32, i32* @nmerge, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %16, %2
  br i1 %17, label %18, label %118

; <label>:18:                                     ; preds = %4
  %19 = bitcast %struct._IO_FILE** %12 to i8*
  %20 = bitcast %struct._IO_FILE*** %9 to i8*
  %21 = bitcast %struct._IO_FILE** %11 to i8*
  %22 = bitcast %struct._IO_FILE*** %10 to i8*
  br label %23

; <label>:23:                                     ; preds = %18, %101
  %24 = phi i32 [ %15, %18 ], [ %102, %101 ]
  %25 = phi i64 [ %1, %18 ], [ %112, %101 ]
  %26 = phi i64 [ %2, %18 ], [ %114, %101 ]
  %27 = zext i32 %24 to i64
  %28 = icmp ugt i64 %27, %26
  br i1 %28, label %64, label %29

; <label>:29:                                     ; preds = %23
  br label %30

; <label>:30:                                     ; preds = %29, %48
  %31 = phi i64 [ %54, %48 ], [ %25, %29 ]
  %32 = phi i64 [ %57, %48 ], [ 0, %29 ]
  %33 = phi i64 [ %58, %48 ], [ 0, %29 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %21) #12
  %34 = call fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nonnull %11, i1 zeroext false) #12
  %35 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %32
  %36 = load i32, i32* @nmerge, align 4
  %37 = zext i32 %36 to i64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %39 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %34, i64 0, i32 3, i64 0
  call void @llvm.lifetime.start(i64 8, i8* nonnull %22) #12
  %40 = call fastcc i64 @open_input_files(%struct.sortfile* %35, i64 %37, %struct._IO_FILE*** nonnull %10) #12
  %41 = icmp ult i64 %40, %37
  %42 = icmp ult i64 %40, 2
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %30
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  %46 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %35, i64 %40, i32 0
  %47 = load i8*, i8** %46, align 8
  tail call fastcc void @sort_die(i8* %45, i8* %47) #15
  unreachable

; <label>:48:                                     ; preds = %30
  %49 = icmp ult i64 %31, %37
  %50 = select i1 %49, i64 %31, i64 %37
  %51 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  tail call fastcc void @mergefps(%struct.sortfile* %35, i64 %50, i64 %40, %struct._IO_FILE* %38, i8* %39, %struct._IO_FILE** %51) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #12
  %52 = icmp ult i64 %31, %40
  %53 = select i1 %52, i64 %31, i64 %40
  %54 = sub i64 %31, %53
  %55 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %33, i32 0
  store i8* %39, i8** %55, align 8
  %56 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %33, i32 1
  store %struct.tempnode* %34, %struct.tempnode** %56, align 8
  %57 = add i64 %40, %32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #12
  %58 = add i64 %33, 1
  %59 = load i32, i32* @nmerge, align 4
  %60 = zext i32 %59 to i64
  %61 = sub i64 %26, %57
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %30

; <label>:63:                                     ; preds = %48
  br label %64

; <label>:64:                                     ; preds = %63, %23
  %65 = phi i32 [ %24, %23 ], [ %59, %63 ]
  %66 = phi i64 [ 0, %23 ], [ %58, %63 ]
  %67 = phi i64 [ 0, %23 ], [ %57, %63 ]
  %68 = phi i64 [ %25, %23 ], [ %54, %63 ]
  %69 = phi i64 [ %27, %23 ], [ %60, %63 ]
  %70 = phi i64 [ %26, %23 ], [ %61, %63 ]
  %71 = urem i64 %66, %69
  %72 = sub nsw i64 %69, %71
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %101

; <label>:74:                                     ; preds = %64
  %75 = sub i64 %70, %72
  %76 = add i64 %75, 1
  call void @llvm.lifetime.start(i64 8, i8* nonnull %19) #12
  %77 = call fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nonnull %12, i1 zeroext false) #12
  %78 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %67
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %80 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %77, i64 0, i32 3, i64 0
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #12
  %81 = call fastcc i64 @open_input_files(%struct.sortfile* %78, i64 %76, %struct._IO_FILE*** nonnull %9) #12
  %82 = icmp ult i64 %81, %76
  %83 = icmp ult i64 %81, 2
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %74
  %86 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  %87 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %78, i64 %81, i32 0
  %88 = load i8*, i8** %87, align 8
  tail call fastcc void @sort_die(i8* %86, i8* %88) #15
  unreachable

; <label>:89:                                     ; preds = %74
  %90 = icmp ult i64 %68, %76
  %91 = select i1 %90, i64 %68, i64 %76
  %92 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  tail call fastcc void @mergefps(%struct.sortfile* %78, i64 %91, i64 %81, %struct._IO_FILE* %79, i8* %80, %struct._IO_FILE** %92) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #12
  %93 = icmp ult i64 %68, %81
  %94 = select i1 %93, i64 %68, i64 %81
  %95 = sub i64 %68, %94
  %96 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %66, i32 0
  store i8* %80, i8** %96, align 8
  %97 = add i64 %66, 1
  %98 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %66, i32 1
  store %struct.tempnode* %77, %struct.tempnode** %98, align 8
  %99 = add i64 %81, %67
  call void @llvm.lifetime.end(i64 8, i8* nonnull %19) #12
  %100 = load i32, i32* @nmerge, align 4
  br label %101

; <label>:101:                                    ; preds = %89, %64
  %102 = phi i32 [ %100, %89 ], [ %65, %64 ]
  %103 = phi i64 [ %97, %89 ], [ %66, %64 ]
  %104 = phi i64 [ %99, %89 ], [ %67, %64 ]
  %105 = phi i64 [ %95, %89 ], [ %68, %64 ]
  %106 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %103
  %107 = bitcast %struct.sortfile* %106 to i8*
  %108 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %104
  %109 = bitcast %struct.sortfile* %108 to i8*
  %110 = sub i64 %26, %104
  %111 = shl i64 %110, 4
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %107, i8* %109, i64 %111, i32 8, i1 false)
  %112 = add i64 %105, %103
  %113 = add i64 %103, %26
  %114 = sub i64 %113, %104
  %115 = zext i32 %102 to i64
  %116 = icmp ult i64 %115, %114
  br i1 %116, label %23, label %117

; <label>:117:                                    ; preds = %101
  br label %118

; <label>:118:                                    ; preds = %117, %4
  %119 = phi i64 [ %2, %4 ], [ %114, %117 ]
  %120 = phi i64 [ %1, %4 ], [ %112, %117 ]
  %121 = bitcast %struct.stat* %6 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %121) #12
  %122 = icmp ult i64 %120, %119
  br i1 %122, label %123, label %205

; <label>:123:                                    ; preds = %118
  %124 = bitcast %struct.stat* %7 to i8*
  %125 = icmp eq i8* %3, null
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %130 = bitcast %struct._IO_FILE** %8 to i8*
  %131 = bitcast %struct._IO_FILE*** %5 to i8*
  br label %132

; <label>:132:                                    ; preds = %199, %123
  %133 = phi i64 [ %120, %123 ], [ %202, %199 ]
  %134 = phi i8 [ 0, %123 ], [ %201, %199 ]
  %135 = phi %struct.tempnode* [ null, %123 ], [ %200, %199 ]
  %136 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %133, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = sub nsw i32 45, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

; <label>:142:                                    ; preds = %132
  %143 = getelementptr inbounds i8, i8* %137, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 0, %145
  br label %147

; <label>:147:                                    ; preds = %142, %132
  %148 = phi i32 [ %146, %142 ], [ %140, %132 ]
  %149 = icmp eq i32 %148, 0
  call void @llvm.lifetime.start(i64 144, i8* nonnull %124) #12
  br i1 %125, label %154, label %150

; <label>:150:                                    ; preds = %147
  %151 = call i32 @strcmp(i8* nonnull %3, i8* %137) #12
  %152 = icmp ne i32 %151, 0
  %153 = or i1 %149, %152
  br i1 %153, label %154, label %178

; <label>:154:                                    ; preds = %150, %147
  %155 = and i8 %134, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %160

; <label>:157:                                    ; preds = %154
  %158 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %6) #12
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %198

; <label>:160:                                    ; preds = %157, %154
  %161 = phi i8 [ %134, %154 ], [ 1, %157 ]
  br i1 %149, label %162, label %164

; <label>:162:                                    ; preds = %160
  %163 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %7) #12
  br label %167

; <label>:164:                                    ; preds = %160
  %165 = load i8*, i8** %136, align 8
  %166 = call i32 @__xstat(i32 1, i8* nonnull %165, %struct.stat* nonnull %7) #12
  br label %167

; <label>:167:                                    ; preds = %164, %162
  %168 = phi i32 [ %163, %162 ], [ %166, %164 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %199

; <label>:170:                                    ; preds = %167
  %171 = load i64, i64* %126, align 8
  %172 = load i64, i64* %127, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %199

; <label>:174:                                    ; preds = %170
  %175 = load i64, i64* %128, align 8
  %176 = load i64, i64* %129, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %199

; <label>:178:                                    ; preds = %174, %150
  %179 = phi i8 [ %161, %174 ], [ %134, %150 ]
  %180 = icmp eq %struct.tempnode* %135, null
  br i1 %180, label %181, label %194

; <label>:181:                                    ; preds = %178
  call void @llvm.lifetime.start(i64 8, i8* nonnull %130) #12
  %182 = call fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nonnull %8, i1 zeroext false) #12
  %183 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %133
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @llvm.lifetime.start(i64 8, i8* nonnull %131) #12
  %185 = call fastcc i64 @open_input_files(%struct.sortfile* %183, i64 1, %struct._IO_FILE*** nonnull %5) #12
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

; <label>:187:                                    ; preds = %181
  %188 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  %189 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %183, i64 0, i32 0
  %190 = load i8*, i8** %189, align 8
  call fastcc void @sort_die(i8* %188, i8* %190) #15
  unreachable

; <label>:191:                                    ; preds = %181
  %192 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %182, i64 0, i32 3, i64 0
  %193 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  call fastcc void @mergefps(%struct.sortfile* %183, i64 0, i64 %185, %struct._IO_FILE* %184, i8* %192, %struct._IO_FILE** %193) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %131) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %130) #12
  br label %194

; <label>:194:                                    ; preds = %191, %178
  %195 = phi %struct.tempnode* [ %135, %178 ], [ %182, %191 ]
  %196 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %195, i64 0, i32 3, i64 0
  store i8* %196, i8** %136, align 8
  %197 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %133, i32 1
  store %struct.tempnode* %195, %struct.tempnode** %197, align 8
  br label %199

; <label>:198:                                    ; preds = %157
  call void @llvm.lifetime.end(i64 144, i8* nonnull %124) #12
  br label %205

; <label>:199:                                    ; preds = %194, %174, %170, %167
  %200 = phi %struct.tempnode* [ %135, %174 ], [ %195, %194 ], [ %135, %167 ], [ %135, %170 ]
  %201 = phi i8 [ %161, %174 ], [ %179, %194 ], [ %161, %167 ], [ %161, %170 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %124) #12
  %202 = add nuw i64 %133, 1
  %203 = icmp ult i64 %202, %119
  br i1 %203, label %132, label %204

; <label>:204:                                    ; preds = %199
  br label %205

; <label>:205:                                    ; preds = %204, %118, %198
  call void @llvm.lifetime.end(i64 144, i8* nonnull %121) #12
  %206 = bitcast %struct._IO_FILE*** %13 to i8*
  %207 = bitcast %struct._IO_FILE** %14 to i8*
  %208 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 0, i32 0
  %209 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 0, i32 1
  %210 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 1
  %211 = bitcast %struct.sortfile* %210 to i8*
  br label %212

; <label>:212:                                    ; preds = %247, %205
  %213 = phi i64 [ %119, %205 ], [ %258, %247 ]
  %214 = phi i64 [ %120, %205 ], [ %256, %247 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %206) #12
  %215 = call fastcc i64 @open_input_files(%struct.sortfile* %0, i64 %213, %struct._IO_FILE*** nonnull %13)
  %216 = icmp eq i64 %215, %213
  br i1 %216, label %217, label %228

; <label>:217:                                    ; preds = %212
  %218 = call fastcc %struct._IO_FILE* @stream_open(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i64 0, i64 0))
  %219 = icmp eq %struct._IO_FILE* %218, null
  br i1 %219, label %220, label %259

; <label>:220:                                    ; preds = %217
  %221 = tail call i32* @__errno_location() #1
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 24
  %224 = icmp ult i64 %213, 3
  %225 = or i1 %224, %223
  br i1 %225, label %226, label %234

; <label>:226:                                    ; preds = %220
  %227 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %227, i8* %3) #16
  unreachable

; <label>:228:                                    ; preds = %212
  %229 = icmp ult i64 %215, 3
  br i1 %229, label %230, label %234

; <label>:230:                                    ; preds = %228
  %231 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.154, i64 0, i64 0), i32 5) #12
  %232 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %215, i32 0
  %233 = load i8*, i8** %232, align 8
  call fastcc void @sort_die(i8* %231, i8* %233) #16
  unreachable

; <label>:234:                                    ; preds = %220, %228
  call void @llvm.lifetime.start(i64 8, i8* nonnull %207) #12
  %235 = load %struct._IO_FILE**, %struct._IO_FILE*** %13, align 8
  br label %236

; <label>:236:                                    ; preds = %236, %234
  %237 = phi i64 [ %215, %234 ], [ %238, %236 ]
  %238 = add i64 %237, -1
  %239 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %235, i64 %238
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %239, align 8
  %241 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %238
  %242 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %241, i64 0, i32 0
  %243 = load i8*, i8** %242, align 8
  call fastcc void @xfclose(%struct._IO_FILE* %240, i8* %243)
  %244 = icmp ugt i64 %238, 2
  %245 = call fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nonnull %14, i1 zeroext %244)
  %246 = icmp eq %struct.tempnode* %245, null
  br i1 %246, label %236, label %247

; <label>:247:                                    ; preds = %236
  %248 = icmp ult i64 %214, %238
  %249 = select i1 %248, i64 %214, i64 %238
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %251 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %245, i64 0, i32 3, i64 0
  call fastcc void @mergefps(%struct.sortfile* nonnull %0, i64 %249, i64 %238, %struct._IO_FILE* %250, i8* %251, %struct._IO_FILE** nonnull %235)
  store i8* %251, i8** %208, align 8
  store %struct.tempnode* %245, %struct.tempnode** %209, align 8
  %252 = bitcast %struct.sortfile* %241 to i8*
  %253 = sub i64 %213, %238
  %254 = shl i64 %253, 4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull %211, i8* %252, i64 %254, i32 8, i1 false)
  %255 = add i64 %214, 1
  %256 = sub i64 %255, %249
  %257 = add i64 %213, 2
  %258 = sub i64 %257, %237
  call void @llvm.lifetime.end(i64 8, i8* nonnull %207) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #12
  br label %212

; <label>:259:                                    ; preds = %217
  %260 = load %struct._IO_FILE**, %struct._IO_FILE*** %13, align 8
  call fastcc void @mergefps(%struct.sortfile* %0, i64 %214, i64 %213, %struct._IO_FILE* nonnull %218, i8* %3, %struct._IO_FILE** %260)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %206) #12
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tempnode* @maybe_create_temp(%struct._IO_FILE** nocapture, i1 zeroext) unnamed_addr #6 {
  %3 = alloca %struct.cs_status, align 8
  %4 = alloca %struct.cs_status, align 8
  %5 = alloca %struct.cs_status, align 8
  %6 = alloca [2 x i32], align 4
  %7 = load i8**, i8*** @temp_dirs, align 8
  %8 = load i64, i64* @create_temp_file.temp_dir_index, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = tail call i64 @strlen(i8* %10) #14
  %12 = add i64 %11, 32
  %13 = and i64 %12, -8
  %14 = tail call noalias i8* @xmalloc(i64 %13) #12
  %15 = bitcast i8* %14 to %struct.tempnode*
  %16 = getelementptr inbounds i8, i8* %14, i64 13
  %17 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %17)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %10, i64 %11, i32 1, i1 false) #12
  %18 = getelementptr inbounds i8, i8* %16, i64 %11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @create_temp_file.slashbase, i64 0, i64 0), i64 12, i32 1, i1 false) #12
  %19 = bitcast i8* %14 to %struct.tempnode**
  store volatile %struct.tempnode* null, %struct.tempnode** %19, align 8
  %20 = load i64, i64* @create_temp_file.temp_dir_index, align 8
  %21 = add i64 %20, 1
  %22 = load i64, i64* @temp_dir_count, align 8
  %23 = icmp eq i64 %21, %22
  %24 = select i1 %23, i64 0, i64 %21
  store i64 %24, i64* @create_temp_file.temp_dir_index, align 8
  %25 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %25) #12
  %26 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %4, i64 0, i32 1
  %27 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* %26) #12
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %25, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %17, i8* nonnull %25, i64 136, i32 8, i1 false) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %25) #12
  %30 = call i32 @mkstemp_safer(i8* %16) #12
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %2
  %33 = load %struct.tempnode**, %struct.tempnode*** @temptail, align 8
  store volatile %struct.tempnode* %15, %struct.tempnode** %33, align 8
  store i8* %14, i8** bitcast (%struct.tempnode*** @temptail to i8**), align 8
  br label %34

; <label>:34:                                     ; preds = %32, %2
  %35 = tail call i32* @__errno_location() #1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %37) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %37, i8* nonnull %17, i64 136, i32 8, i1 false) #12
  %38 = load i8, i8* %37, align 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 1
  %42 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %41, %struct.__sigset_t* null) #12
  br label %43

; <label>:43:                                     ; preds = %40, %34
  call void @llvm.lifetime.end(i64 136, i8* nonnull %37) #12
  store i32 %36, i32* %35, align 4
  %44 = icmp slt i32 %30, 0
  br i1 %44, label %45, label %52

; <label>:45:                                     ; preds = %43
  %46 = icmp eq i32 %36, 24
  %47 = and i1 %46, %1
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %45
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.178, i64 0, i64 0), i32 5) #12
  %50 = call i8* @quotearg_style(i32 4, i8* %10) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %36, i8* %49, i8* %50) #12
  unreachable

; <label>:51:                                     ; preds = %45
  call void @free(i8* %14) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %17)
  br label %100

; <label>:52:                                     ; preds = %43
  call void @llvm.lifetime.end(i64 136, i8* nonnull %17)
  %53 = icmp eq i8* %14, null
  br i1 %53, label %100, label %54

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds i8, i8* %14, i64 12
  store i8 0, i8* %55, align 4
  %56 = load i8*, i8** @compress_program, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %94, label %58

; <label>:58:                                     ; preds = %54
  %59 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %59) #12
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %61 = call fastcc i32 @pipe_fork(i32* nonnull %60, i64 4)
  %62 = getelementptr inbounds i8, i8* %14, i64 8
  %63 = bitcast i8* %62 to i32*
  store i32 %61, i32* %63, align 8
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %65, label %82

; <label>:65:                                     ; preds = %58
  %66 = call i32 @close(i32 %30) #12
  %67 = load i32, i32* %60, align 4
  %68 = call i32 @close(i32 %67) #12
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hash_table*, %struct.hash_table** @proctab, align 8
  %72 = icmp eq %struct.hash_table* %71, null
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %65
  %74 = call %struct.hash_table* @hash_initialize(i64 47, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @proctab_hasher, i1 (i8*, i8*)* nonnull @proctab_comparator, void (i8*)* null) #12
  store %struct.hash_table* %74, %struct.hash_table** @proctab, align 8
  %75 = icmp eq %struct.hash_table* %74, null
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %73
  call void @xalloc_die() #15
  unreachable

; <label>:77:                                     ; preds = %73, %65
  %78 = phi %struct.hash_table* [ %74, %73 ], [ %71, %65 ]
  store i8 1, i8* %55, align 4
  %79 = call i8* @hash_insert(%struct.hash_table* nonnull %78, i8* nonnull %14) #12
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %92

; <label>:81:                                     ; preds = %77
  call void @xalloc_die() #15
  unreachable

; <label>:82:                                     ; preds = %58
  %83 = icmp eq i32 %61, 0
  br i1 %83, label %84, label %92

; <label>:84:                                     ; preds = %82
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @close(i32 %86) #12
  call fastcc void @move_fd_or_die(i32 %30, i32 1)
  %88 = load i32, i32* %60, align 4
  call fastcc void @move_fd_or_die(i32 %88, i32 0)
  %89 = load i8*, i8** @compress_program, align 8
  %90 = call i32 (i8*, i8*, ...) @execlp(i8* %89, i8* %89, i8* null) #12
  %91 = load i32, i32* %35, align 4
  call fastcc void @async_safe_die(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.176, i64 0, i64 0)) #16
  unreachable

; <label>:92:                                     ; preds = %77, %82
  %93 = phi i32 [ %30, %82 ], [ %70, %77 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %59) #12
  br label %94

; <label>:94:                                     ; preds = %54, %92
  %95 = phi i32 [ %30, %54 ], [ %93, %92 ]
  %96 = call %struct._IO_FILE* @fdopen(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.167, i64 0, i64 0)) #12
  store %struct._IO_FILE* %96, %struct._IO_FILE** %0, align 8
  %97 = icmp eq %struct._IO_FILE* %96, null
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %94
  %99 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.177, i64 0, i64 0), i32 5) #12
  call fastcc void @sort_die(i8* %99, i8* nonnull %16) #16
  unreachable

; <label>:100:                                    ; preds = %51, %94, %52
  %101 = phi %struct.tempnode* [ null, %52 ], [ %15, %94 ], [ null, %51 ]
  ret %struct.tempnode* %101
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_nodes(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 80
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 80
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %26

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 40
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 48
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  %18 = getelementptr inbounds i8, i8* %1, i64 40
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8, i8* %1, i64 48
  %22 = bitcast i8* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, %20
  %25 = icmp ult i64 %17, %24
  br label %28

; <label>:26:                                     ; preds = %2
  %27 = icmp ult i32 %5, %8
  br label %28

; <label>:28:                                     ; preds = %26, %10
  %29 = phi i1 [ %27, %26 ], [ %25, %10 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_mutexattr_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.merge_node* @init_node(%struct.merge_node* noalias, %struct.merge_node* noalias, %struct.line*, i64, i64, i1 zeroext) unnamed_addr #6 {
  %7 = sub i64 0, %4
  br label %8

; <label>:8:                                      ; preds = %43, %6
  %9 = phi %struct.merge_node* [ %0, %6 ], [ %10, %43 ]
  %10 = phi %struct.merge_node* [ %1, %6 ], [ %47, %43 ]
  %11 = phi %struct.line* [ %2, %6 ], [ %22, %43 ]
  %12 = phi i64 [ %3, %6 ], [ %45, %43 ]
  %13 = phi i1 [ %5, %6 ], [ false, %43 ]
  %14 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %9, i64 0, i32 6
  %15 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %9, i64 0, i32 5
  %16 = select i1 %13, i64* %15, i64* %14
  %17 = load i64, i64* %16, align 8
  %18 = lshr i64 %17, 1
  %19 = sub i64 %17, %18
  %20 = getelementptr inbounds %struct.line, %struct.line* %11, i64 %7
  %21 = sub nsw i64 0, %18
  %22 = getelementptr inbounds %struct.line, %struct.line* %20, i64 %21
  %23 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %9, i64 0, i32 2
  %24 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %9, i64 0, i32 3
  %25 = select i1 %13, %struct.line** %23, %struct.line** %24
  %26 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 1
  %27 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 2
  store %struct.line* %20, %struct.line** %27, align 8
  %28 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 0
  store %struct.line* %20, %struct.line** %28, align 8
  %29 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 3
  store %struct.line* %22, %struct.line** %29, align 8
  %30 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 1
  store %struct.line* %22, %struct.line** %30, align 8
  %31 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 4
  store %struct.line** %25, %struct.line*** %31, align 8
  %32 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 5
  store i64 %18, i64* %32, align 8
  %33 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 6
  store i64 %19, i64* %33, align 8
  %34 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 7
  store %struct.merge_node* %9, %struct.merge_node** %34, align 8
  %35 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %9, i64 0, i32 10
  %36 = load i32, i32* %35, align 8
  %37 = add i32 %36, 1
  %38 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 10
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 11
  store i8 0, i8* %39, align 4
  %40 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 12
  %41 = tail call i32 @pthread_mutex_init(%union.pthread_mutex_t* %40, %union.pthread_mutexattr_t* null) #12
  %42 = icmp ugt i64 %12, 1
  br i1 %42, label %43, label %49

; <label>:43:                                     ; preds = %8
  %44 = lshr i64 %12, 1
  %45 = sub i64 %12, %44
  %46 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 8
  store %struct.merge_node* %26, %struct.merge_node** %46, align 8
  %47 = tail call fastcc %struct.merge_node* @init_node(%struct.merge_node* nonnull %10, %struct.merge_node* %26, %struct.line* %20, i64 %44, i64 %4, i1 zeroext true)
  %48 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 9
  store %struct.merge_node* %47, %struct.merge_node** %48, align 8
  br label %8

; <label>:49:                                     ; preds = %8
  %50 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %10, i64 0, i32 8
  %51 = bitcast %struct.merge_node** %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* %51, i8 0, i64 16, i32 8, i1 false)
  ret %struct.merge_node* %26
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sortlines(%struct.line* noalias, i64, i64, %struct.merge_node*, %struct.merge_node_queue*, %struct._IO_FILE*, i8*) unnamed_addr #6 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread_args, align 8
  %10 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %11
  %15 = lshr i64 %1, 1
  %16 = sub i64 %1, %15
  %17 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %17) #12
  %18 = bitcast %struct.thread_args* %9 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %18) #12
  %19 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 0
  store %struct.line* %0, %struct.line** %19, align 8
  %20 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 1
  store i64 %15, i64* %20, align 8
  %21 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 2
  store i64 %2, i64* %21, align 8
  %22 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 3
  %23 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 8
  %24 = bitcast %struct.merge_node** %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %struct.merge_node** %22 to i64*
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 4
  store %struct.merge_node_queue* %4, %struct.merge_node_queue** %27, align 8
  %28 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 5
  store %struct._IO_FILE* %5, %struct._IO_FILE** %28, align 8
  %29 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %9, i64 0, i32 6
  store i8* %6, i8** %29, align 8
  %30 = icmp ugt i64 %1, 1
  %31 = icmp ugt i64 %14, 131071
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %46

; <label>:33:                                     ; preds = %7
  %34 = call i32 @pthread_create(i64* nonnull %8, %union.pthread_attr_t* null, i8* (i8*)* nonnull @sortlines_thread, i8* nonnull %18) #12
  %35 = icmp eq i32 %34, 0
  %36 = load i64, i64* %10, align 8
  br i1 %35, label %39, label %37

; <label>:37:                                     ; preds = %33
  %38 = load i64, i64* %12, align 8
  br label %46

; <label>:39:                                     ; preds = %33
  %40 = sub i64 0, %36
  %41 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %40
  %42 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 9
  %43 = load %struct.merge_node*, %struct.merge_node** %42, align 8
  call fastcc void @sortlines(%struct.line* %41, i64 %16, i64 %2, %struct.merge_node* %43, %struct.merge_node_queue* %4, %struct._IO_FILE* %5, i8* %6)
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @pthread_join(i64 %44, i8** null) #12
  br label %516

; <label>:46:                                     ; preds = %37, %7
  %47 = phi i64 [ %38, %37 ], [ %13, %7 ]
  %48 = phi i64 [ %36, %37 ], [ %11, %7 ]
  %49 = sub i64 0, %2
  %50 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %49
  %51 = icmp ugt i64 %47, 1
  br i1 %51, label %52, label %58

; <label>:52:                                     ; preds = %46
  %53 = sub i64 0, %48
  %54 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %53
  %55 = lshr i64 %48, 1
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds %struct.line, %struct.line* %50, i64 %56
  call fastcc void @sequential_sort(%struct.line* %54, i64 %47, %struct.line* %57, i1 zeroext false)
  br label %58

; <label>:58:                                     ; preds = %52, %46
  %59 = icmp ugt i64 %48, 1
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %58
  call fastcc void @sequential_sort(%struct.line* %0, i64 %48, %struct.line* %50, i1 zeroext false)
  br label %61

; <label>:61:                                     ; preds = %60, %58
  %62 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 0
  store %struct.line* %0, %struct.line** %62, align 8
  %63 = sub i64 0, %48
  %64 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %63
  %65 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 1
  store %struct.line* %64, %struct.line** %65, align 8
  %66 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 2
  store %struct.line* %64, %struct.line** %66, align 8
  %67 = sub i64 0, %47
  %68 = getelementptr inbounds %struct.line, %struct.line* %64, i64 %67
  %69 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 3
  store %struct.line* %68, %struct.line** %69, align 8
  %70 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %4, i64 0, i32 1
  %71 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %70) #12
  %72 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %4, i64 0, i32 0
  %73 = load %struct.heap*, %struct.heap** %72, align 8
  %74 = bitcast %struct.merge_node* %3 to i8*
  %75 = call i32 @heap_insert(%struct.heap* %73, i8* %74) #12
  %76 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %3, i64 0, i32 11
  store i8 1, i8* %76, align 4
  %77 = getelementptr inbounds %struct.merge_node_queue, %struct.merge_node_queue* %4, i64 0, i32 2
  %78 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #12
  %79 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #12
  br label %80

; <label>:80:                                     ; preds = %507, %61
  %81 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %70) #12
  %82 = load %struct.heap*, %struct.heap** %72, align 8
  %83 = call i8* @heap_remove_top(%struct.heap* %82) #12
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %92

; <label>:85:                                     ; preds = %80
  br label %86

; <label>:86:                                     ; preds = %85, %86
  %87 = call i32 @pthread_cond_wait(%union.pthread_cond_t* nonnull %77, %union.pthread_mutex_t* nonnull %70) #12
  %88 = load %struct.heap*, %struct.heap** %72, align 8
  %89 = call i8* @heap_remove_top(%struct.heap* %88) #12
  %90 = icmp eq i8* %89, null
  br i1 %90, label %86, label %91

; <label>:91:                                     ; preds = %86
  br label %92

; <label>:92:                                     ; preds = %91, %80
  %93 = phi i8* [ %83, %80 ], [ %89, %91 ]
  %94 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %70) #12
  %95 = getelementptr inbounds i8, i8* %93, i64 88
  %96 = bitcast i8* %95 to %union.pthread_mutex_t*
  %97 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %96) #12
  %98 = getelementptr inbounds i8, i8* %93, i64 84
  store i8 0, i8* %98, align 4
  %99 = getelementptr inbounds i8, i8* %93, i64 80
  %100 = bitcast i8* %99 to i32*
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %509, label %103

; <label>:103:                                    ; preds = %92
  %104 = bitcast i8* %93 to %struct.line**
  %105 = load %struct.line*, %struct.line** %104, align 8
  %106 = getelementptr inbounds i8, i8* %93, i64 8
  %107 = bitcast i8* %106 to %struct.line**
  %108 = load %struct.line*, %struct.line** %107, align 8
  %109 = shl i32 %101, 1
  %110 = add i32 %109, 2
  %111 = zext i32 %110 to i64
  %112 = lshr i64 %2, %111
  %113 = add i64 %112, 1
  %114 = icmp eq i32 %101, 1
  %115 = ptrtoint %struct.line* %108 to i64
  %116 = ptrtoint %struct.line* %105 to i64
  br i1 %114, label %117, label %126

; <label>:117:                                    ; preds = %103
  %118 = getelementptr inbounds i8, i8* %93, i64 16
  %119 = bitcast i8* %118 to %struct.line**
  %120 = load %struct.line*, %struct.line** %119, align 8
  %121 = icmp eq %struct.line* %105, %120
  br i1 %121, label %319, label %122

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds i8, i8* %93, i64 24
  %124 = bitcast i8* %123 to %struct.line**
  %125 = load %struct.line*, %struct.line** %124, align 8
  br label %262

; <label>:126:                                    ; preds = %103
  %127 = getelementptr inbounds i8, i8* %93, i64 32
  %128 = bitcast i8* %127 to %struct.line***
  %129 = load %struct.line**, %struct.line*** %128, align 8
  %130 = load %struct.line*, %struct.line** %129, align 8
  %131 = getelementptr inbounds i8, i8* %93, i64 16
  %132 = bitcast i8* %131 to %struct.line**
  %133 = load %struct.line*, %struct.line** %132, align 8
  %134 = icmp eq %struct.line* %105, %133
  br i1 %134, label %194, label %135

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %93, i64 24
  %137 = bitcast i8* %136 to %struct.line**
  %138 = load %struct.line*, %struct.line** %137, align 8
  %139 = icmp eq %struct.line* %108, %138
  br i1 %139, label %185, label %140

; <label>:140:                                    ; preds = %135
  br label %141

; <label>:141:                                    ; preds = %140, %175
  %142 = phi i64 [ %168, %175 ], [ %115, %140 ]
  %143 = phi i64 [ %169, %175 ], [ %116, %140 ]
  %144 = phi i64 [ %170, %175 ], [ %115, %140 ]
  %145 = phi i64 [ %151, %175 ], [ %113, %140 ]
  %146 = phi %struct.line* [ %158, %175 ], [ %130, %140 ]
  %147 = phi %struct.line* [ %172, %175 ], [ %105, %140 ]
  %148 = phi %struct.line* [ %171, %175 ], [ %108, %140 ]
  %149 = phi i64 [ %174, %175 ], [ %116, %140 ]
  %150 = phi i64 [ %176, %175 ], [ %115, %140 ]
  %151 = add i64 %145, -1
  %152 = icmp eq i64 %145, 0
  br i1 %152, label %178, label %153

; <label>:153:                                    ; preds = %141
  %154 = getelementptr inbounds %struct.line, %struct.line* %147, i64 -1
  %155 = getelementptr inbounds %struct.line, %struct.line* %148, i64 -1
  %156 = call fastcc i32 @compare(%struct.line* %154, %struct.line* %155) #12
  %157 = icmp slt i32 %156, 1
  %158 = getelementptr inbounds %struct.line, %struct.line* %146, i64 -1
  br i1 %157, label %159, label %163

; <label>:159:                                    ; preds = %153
  store %struct.line* %154, %struct.line** %104, align 8
  %160 = bitcast %struct.line* %158 to i8*
  %161 = bitcast %struct.line* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %160, i8* %161, i64 32, i32 8, i1 false) #12
  %162 = ptrtoint %struct.line* %154 to i64
  br label %167

; <label>:163:                                    ; preds = %153
  store %struct.line* %155, %struct.line** %107, align 8
  %164 = bitcast %struct.line* %158 to i8*
  %165 = bitcast %struct.line* %155 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %164, i8* %165, i64 32, i32 8, i1 false) #12
  %166 = ptrtoint %struct.line* %155 to i64
  br label %167

; <label>:167:                                    ; preds = %163, %159
  %168 = phi i64 [ %166, %163 ], [ %142, %159 ]
  %169 = phi i64 [ %143, %163 ], [ %162, %159 ]
  %170 = phi i64 [ %166, %163 ], [ %144, %159 ]
  %171 = phi %struct.line* [ %155, %163 ], [ %148, %159 ]
  %172 = phi %struct.line* [ %147, %163 ], [ %154, %159 ]
  %173 = icmp eq %struct.line* %172, %133
  %174 = ptrtoint %struct.line* %172 to i64
  br i1 %173, label %178, label %175

; <label>:175:                                    ; preds = %167
  %176 = ptrtoint %struct.line* %171 to i64
  %177 = icmp eq %struct.line* %171, %138
  br i1 %177, label %178, label %141

; <label>:178:                                    ; preds = %141, %167, %175
  %179 = phi i64 [ %168, %167 ], [ %142, %141 ], [ %168, %175 ]
  %180 = phi i64 [ %169, %167 ], [ %143, %141 ], [ %169, %175 ]
  %181 = phi i64 [ %170, %167 ], [ %150, %141 ], [ %176, %175 ]
  %182 = phi %struct.line* [ %133, %167 ], [ %147, %141 ], [ %172, %175 ]
  %183 = phi i64 [ %174, %167 ], [ %149, %141 ], [ %174, %175 ]
  %184 = phi %struct.line* [ %158, %167 ], [ %146, %141 ], [ %158, %175 ]
  br label %185

; <label>:185:                                    ; preds = %178, %135
  %186 = phi i64 [ %115, %135 ], [ %179, %178 ]
  %187 = phi i64 [ %116, %135 ], [ %180, %178 ]
  %188 = phi i64 [ %115, %135 ], [ %181, %178 ]
  %189 = phi %struct.line* [ %105, %135 ], [ %182, %178 ]
  %190 = phi i64 [ %116, %135 ], [ %183, %178 ]
  %191 = phi %struct.line* [ %130, %135 ], [ %184, %178 ]
  %192 = phi i64 [ %113, %135 ], [ %151, %178 ]
  %193 = inttoptr i64 %188 to %struct.line*
  br label %194

; <label>:194:                                    ; preds = %185, %126
  %195 = phi i64 [ %186, %185 ], [ %115, %126 ]
  %196 = phi i64 [ %187, %185 ], [ %116, %126 ]
  %197 = phi %struct.line* [ %133, %185 ], [ %105, %126 ]
  %198 = phi %struct.line* [ %189, %185 ], [ %105, %126 ]
  %199 = phi %struct.line* [ %193, %185 ], [ %108, %126 ]
  %200 = phi i64 [ %190, %185 ], [ %116, %126 ]
  %201 = phi i64 [ %188, %185 ], [ %115, %126 ]
  %202 = phi %struct.line* [ %191, %185 ], [ %130, %126 ]
  %203 = phi i64 [ %192, %185 ], [ %113, %126 ]
  %204 = sub i64 %115, %201
  %205 = ashr exact i64 %204, 5
  %206 = getelementptr inbounds i8, i8* %93, i64 48
  %207 = bitcast i8* %206 to i64*
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, %205
  br i1 %209, label %210, label %227

; <label>:210:                                    ; preds = %194
  %211 = icmp eq %struct.line* %198, %197
  %212 = icmp eq i64 %203, 0
  %213 = or i1 %211, %212
  br i1 %213, label %258, label %214

; <label>:214:                                    ; preds = %210
  br label %215

; <label>:215:                                    ; preds = %214, %215
  %216 = phi %struct.line* [ %221, %215 ], [ %198, %214 ]
  %217 = phi %struct.line* [ %220, %215 ], [ %202, %214 ]
  %218 = phi i64 [ %219, %215 ], [ %203, %214 ]
  %219 = add i64 %218, -1
  %220 = getelementptr inbounds %struct.line, %struct.line* %217, i64 -1
  %221 = getelementptr inbounds %struct.line, %struct.line* %216, i64 -1
  %222 = bitcast %struct.line* %220 to i8*
  %223 = bitcast %struct.line* %221 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %222, i8* %223, i64 32, i32 8, i1 false) #12
  %224 = icmp eq %struct.line* %221, %133
  %225 = icmp eq i64 %219, 0
  %226 = or i1 %224, %225
  br i1 %226, label %254, label %215

; <label>:227:                                    ; preds = %194
  %228 = sub i64 %116, %200
  %229 = ashr exact i64 %228, 5
  %230 = getelementptr inbounds i8, i8* %93, i64 40
  %231 = bitcast i8* %230 to i64*
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %232, %229
  br i1 %233, label %234, label %258

; <label>:234:                                    ; preds = %227
  %235 = getelementptr inbounds i8, i8* %93, i64 24
  %236 = bitcast i8* %235 to %struct.line**
  %237 = load %struct.line*, %struct.line** %236, align 8
  %238 = icmp eq %struct.line* %199, %237
  %239 = icmp eq i64 %203, 0
  %240 = or i1 %239, %238
  br i1 %240, label %258, label %241

; <label>:241:                                    ; preds = %234
  br label %242

; <label>:242:                                    ; preds = %241, %242
  %243 = phi %struct.line* [ %248, %242 ], [ %199, %241 ]
  %244 = phi %struct.line* [ %247, %242 ], [ %202, %241 ]
  %245 = phi i64 [ %246, %242 ], [ %203, %241 ]
  %246 = add i64 %245, -1
  %247 = getelementptr inbounds %struct.line, %struct.line* %244, i64 -1
  %248 = getelementptr inbounds %struct.line, %struct.line* %243, i64 -1
  %249 = bitcast %struct.line* %247 to i8*
  %250 = bitcast %struct.line* %248 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %249, i8* %250, i64 32, i32 8, i1 false) #12
  %251 = icmp eq %struct.line* %248, %237
  %252 = icmp eq i64 %246, 0
  %253 = or i1 %251, %252
  br i1 %253, label %256, label %242

; <label>:254:                                    ; preds = %215
  store %struct.line* %221, %struct.line** %104, align 8
  %255 = ptrtoint %struct.line* %221 to i64
  br label %258

; <label>:256:                                    ; preds = %242
  store %struct.line* %248, %struct.line** %107, align 8
  %257 = ptrtoint %struct.line* %248 to i64
  br label %258

; <label>:258:                                    ; preds = %256, %254, %234, %227, %210
  %259 = phi i64 [ %195, %227 ], [ %195, %210 ], [ %195, %234 ], [ %195, %254 ], [ %257, %256 ]
  %260 = phi i64 [ %196, %227 ], [ %196, %210 ], [ %196, %234 ], [ %255, %254 ], [ %196, %256 ]
  %261 = phi %struct.line* [ %202, %227 ], [ %202, %210 ], [ %202, %234 ], [ %220, %254 ], [ %247, %256 ]
  store %struct.line* %261, %struct.line** %129, align 8
  br label %395

; <label>:262:                                    ; preds = %288, %122
  %263 = phi i64 [ %115, %122 ], [ %289, %288 ]
  %264 = phi i64 [ %116, %122 ], [ %290, %288 ]
  %265 = phi i64 [ %116, %122 ], [ %291, %288 ]
  %266 = phi i64 [ %115, %122 ], [ %292, %288 ]
  %267 = phi %struct.line* [ %108, %122 ], [ %294, %288 ]
  %268 = phi %struct.line* [ %105, %122 ], [ %293, %288 ]
  %269 = phi i64 [ %113, %122 ], [ %272, %288 ]
  %270 = icmp eq %struct.line* %267, %125
  br i1 %270, label %311, label %271

; <label>:271:                                    ; preds = %262
  %272 = add i64 %269, -1
  %273 = icmp eq i64 %269, 0
  br i1 %273, label %311, label %274

; <label>:274:                                    ; preds = %271
  %275 = getelementptr inbounds %struct.line, %struct.line* %268, i64 -1
  %276 = getelementptr inbounds %struct.line, %struct.line* %267, i64 -1
  %277 = call fastcc i32 @compare(%struct.line* %275, %struct.line* %276) #12
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %299

; <label>:279:                                    ; preds = %274
  store %struct.line* %275, %struct.line** %104, align 8
  %280 = load i1, i1* @unique, align 1
  %281 = ptrtoint %struct.line* %275 to i64
  br i1 %280, label %282, label %298

; <label>:282:                                    ; preds = %279
  %283 = load i8*, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %296, label %285

; <label>:285:                                    ; preds = %282
  %286 = call fastcc i32 @compare(%struct.line* %275, %struct.line* nonnull @saved_line) #12
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %296

; <label>:288:                                    ; preds = %310, %305, %298, %285
  %289 = phi i64 [ %263, %285 ], [ %263, %298 ], [ %301, %305 ], [ %301, %310 ]
  %290 = phi i64 [ %281, %285 ], [ %281, %298 ], [ %264, %305 ], [ %264, %310 ]
  %291 = phi i64 [ %281, %285 ], [ %281, %298 ], [ %265, %305 ], [ %265, %310 ]
  %292 = phi i64 [ %266, %285 ], [ %266, %298 ], [ %301, %305 ], [ %301, %310 ]
  %293 = phi %struct.line* [ %275, %285 ], [ %275, %298 ], [ %268, %305 ], [ %268, %310 ]
  %294 = phi %struct.line* [ %267, %285 ], [ %267, %298 ], [ %276, %305 ], [ %276, %310 ]
  %295 = icmp eq %struct.line* %293, %120
  br i1 %295, label %311, label %262

; <label>:296:                                    ; preds = %285, %282
  %297 = bitcast %struct.line* %275 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.line* @saved_line to i8*), i8* %297, i64 32, i32 8, i1 false) #12
  br label %298

; <label>:298:                                    ; preds = %296, %279
  call fastcc void @write_line(%struct.line* %275, %struct._IO_FILE* %5, i8* %6) #12
  br label %288

; <label>:299:                                    ; preds = %274
  store %struct.line* %276, %struct.line** %107, align 8
  %300 = load i1, i1* @unique, align 1
  %301 = ptrtoint %struct.line* %276 to i64
  br i1 %300, label %302, label %310

; <label>:302:                                    ; preds = %299
  %303 = load i8*, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %304 = icmp eq i8* %303, null
  br i1 %304, label %308, label %305

; <label>:305:                                    ; preds = %302
  %306 = call fastcc i32 @compare(%struct.line* %276, %struct.line* nonnull @saved_line) #12
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %288, label %308

; <label>:308:                                    ; preds = %305, %302
  %309 = bitcast %struct.line* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.line* @saved_line to i8*), i8* %309, i64 32, i32 8, i1 false) #12
  br label %310

; <label>:310:                                    ; preds = %308, %299
  call fastcc void @write_line(%struct.line* %276, %struct._IO_FILE* %5, i8* %6) #12
  br label %288

; <label>:311:                                    ; preds = %262, %271, %288
  %312 = phi i64 [ %263, %271 ], [ %263, %262 ], [ %289, %288 ]
  %313 = phi i64 [ %264, %271 ], [ %264, %262 ], [ %290, %288 ]
  %314 = phi %struct.line* [ %268, %271 ], [ %268, %262 ], [ %120, %288 ]
  %315 = phi %struct.line* [ %267, %271 ], [ %125, %262 ], [ %294, %288 ]
  %316 = phi i64 [ %265, %271 ], [ %265, %262 ], [ %291, %288 ]
  %317 = phi i64 [ %266, %271 ], [ %266, %262 ], [ %292, %288 ]
  %318 = phi i64 [ %272, %271 ], [ %269, %262 ], [ %272, %288 ]
  br label %319

; <label>:319:                                    ; preds = %311, %117
  %320 = phi i64 [ %115, %117 ], [ %312, %311 ]
  %321 = phi i64 [ %116, %117 ], [ %313, %311 ]
  %322 = phi %struct.line* [ %105, %117 ], [ %314, %311 ]
  %323 = phi %struct.line* [ %108, %117 ], [ %315, %311 ]
  %324 = phi i64 [ %116, %117 ], [ %316, %311 ]
  %325 = phi i64 [ %115, %117 ], [ %317, %311 ]
  %326 = phi i64 [ %113, %117 ], [ %318, %311 ]
  %327 = sub i64 %115, %325
  %328 = ashr exact i64 %327, 5
  %329 = getelementptr inbounds i8, i8* %93, i64 48
  %330 = bitcast i8* %329 to i64*
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %331, %328
  br i1 %332, label %333, label %357

; <label>:333:                                    ; preds = %319
  %334 = icmp eq %struct.line* %322, %120
  %335 = icmp eq i64 %326, 0
  %336 = or i1 %334, %335
  br i1 %336, label %395, label %337

; <label>:337:                                    ; preds = %333
  br label %338

; <label>:338:                                    ; preds = %337, %350
  %339 = phi %struct.line* [ %342, %350 ], [ %322, %337 ]
  %340 = phi i64 [ %341, %350 ], [ %326, %337 ]
  %341 = add i64 %340, -1
  %342 = getelementptr inbounds %struct.line, %struct.line* %339, i64 -1
  store %struct.line* %342, %struct.line** %104, align 8
  %343 = load i1, i1* @unique, align 1
  br i1 %343, label %344, label %356

; <label>:344:                                    ; preds = %338
  %345 = load i8*, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %354, label %347

; <label>:347:                                    ; preds = %344
  %348 = call fastcc i32 @compare(%struct.line* %342, %struct.line* nonnull @saved_line) #12
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %354

; <label>:350:                                    ; preds = %356, %347
  %351 = icmp eq %struct.line* %342, %120
  %352 = icmp eq i64 %341, 0
  %353 = or i1 %351, %352
  br i1 %353, label %391, label %338

; <label>:354:                                    ; preds = %347, %344
  %355 = bitcast %struct.line* %342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.line* @saved_line to i8*), i8* %355, i64 32, i32 8, i1 false) #12
  br label %356

; <label>:356:                                    ; preds = %354, %338
  call fastcc void @write_line(%struct.line* %342, %struct._IO_FILE* %5, i8* %6) #12
  br label %350

; <label>:357:                                    ; preds = %319
  %358 = sub i64 %116, %324
  %359 = ashr exact i64 %358, 5
  %360 = getelementptr inbounds i8, i8* %93, i64 40
  %361 = bitcast i8* %360 to i64*
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %362, %359
  br i1 %363, label %364, label %395

; <label>:364:                                    ; preds = %357
  %365 = getelementptr inbounds i8, i8* %93, i64 24
  %366 = bitcast i8* %365 to %struct.line**
  %367 = load %struct.line*, %struct.line** %366, align 8
  %368 = icmp eq %struct.line* %323, %367
  %369 = icmp eq i64 %326, 0
  %370 = or i1 %369, %368
  br i1 %370, label %395, label %371

; <label>:371:                                    ; preds = %364
  br label %372

; <label>:372:                                    ; preds = %371, %384
  %373 = phi %struct.line* [ %376, %384 ], [ %323, %371 ]
  %374 = phi i64 [ %375, %384 ], [ %326, %371 ]
  %375 = add i64 %374, -1
  %376 = getelementptr inbounds %struct.line, %struct.line* %373, i64 -1
  store %struct.line* %376, %struct.line** %107, align 8
  %377 = load i1, i1* @unique, align 1
  br i1 %377, label %378, label %390

; <label>:378:                                    ; preds = %372
  %379 = load i8*, i8** getelementptr inbounds (%struct.line, %struct.line* @saved_line, i64 0, i32 0), align 8
  %380 = icmp eq i8* %379, null
  br i1 %380, label %388, label %381

; <label>:381:                                    ; preds = %378
  %382 = call fastcc i32 @compare(%struct.line* %376, %struct.line* nonnull @saved_line) #12
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %388

; <label>:384:                                    ; preds = %390, %381
  %385 = icmp eq %struct.line* %376, %367
  %386 = icmp eq i64 %375, 0
  %387 = or i1 %385, %386
  br i1 %387, label %393, label %372

; <label>:388:                                    ; preds = %381, %378
  %389 = bitcast %struct.line* %376 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.line* @saved_line to i8*), i8* %389, i64 32, i32 8, i1 false) #12
  br label %390

; <label>:390:                                    ; preds = %388, %372
  call fastcc void @write_line(%struct.line* %376, %struct._IO_FILE* %5, i8* %6) #12
  br label %384

; <label>:391:                                    ; preds = %350
  %392 = ptrtoint %struct.line* %342 to i64
  br label %395

; <label>:393:                                    ; preds = %384
  %394 = ptrtoint %struct.line* %376 to i64
  br label %395

; <label>:395:                                    ; preds = %393, %391, %364, %357, %333, %258
  %396 = phi i64* [ %330, %364 ], [ %330, %333 ], [ %330, %357 ], [ %207, %258 ], [ %330, %391 ], [ %330, %393 ]
  %397 = phi i64 [ %331, %364 ], [ %328, %333 ], [ %331, %357 ], [ %208, %258 ], [ %328, %391 ], [ %331, %393 ]
  %398 = phi i64 [ %320, %364 ], [ %320, %333 ], [ %320, %357 ], [ %259, %258 ], [ %320, %391 ], [ %394, %393 ]
  %399 = phi i64 [ %321, %364 ], [ %321, %333 ], [ %321, %357 ], [ %260, %258 ], [ %392, %391 ], [ %321, %393 ]
  %400 = sub i64 %116, %399
  %401 = ashr exact i64 %400, 5
  %402 = sub i64 %115, %398
  %403 = ashr exact i64 %402, 5
  %404 = getelementptr inbounds i8, i8* %93, i64 40
  %405 = bitcast i8* %404 to i64*
  %406 = load i64, i64* %405, align 8
  %407 = sub i64 %406, %401
  store i64 %407, i64* %405, align 8
  %408 = sub i64 %397, %403
  store i64 %408, i64* %396, align 8
  %409 = load i8, i8* %98, align 4
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %411, label %440

; <label>:411:                                    ; preds = %395
  %412 = bitcast i8* %93 to i64*
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds i8, i8* %93, i64 16
  %415 = bitcast i8* %414 to i64*
  %416 = load i64, i64* %415, align 8
  %417 = icmp eq i64 %413, %416
  %418 = bitcast i8* %106 to i64*
  %419 = load i64, i64* %418, align 8
  %420 = getelementptr inbounds i8, i8* %93, i64 24
  %421 = bitcast i8* %420 to i64*
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %419, %422
  br i1 %417, label %430, label %424

; <label>:424:                                    ; preds = %411
  br i1 %423, label %434, label %425

; <label>:425:                                    ; preds = %424
  %426 = getelementptr inbounds i8, i8* %93, i64 48
  %427 = bitcast i8* %426 to i64*
  %428 = load i64, i64* %427, align 8
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %434, label %440

; <label>:430:                                    ; preds = %411
  br i1 %423, label %431, label %440

; <label>:431:                                    ; preds = %430
  %432 = load i64, i64* %405, align 8
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %434, label %440

; <label>:434:                                    ; preds = %431, %425, %424
  %435 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %70) #12
  %436 = load %struct.heap*, %struct.heap** %72, align 8
  %437 = call i32 @heap_insert(%struct.heap* %436, i8* nonnull %93) #12
  store i8 1, i8* %98, align 4
  %438 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #12
  %439 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #12
  br label %440

; <label>:440:                                    ; preds = %434, %431, %430, %425, %395
  %441 = load i32, i32* %100, align 8
  %442 = icmp ugt i32 %441, 1
  br i1 %442, label %443, label %489

; <label>:443:                                    ; preds = %440
  %444 = getelementptr inbounds i8, i8* %93, i64 56
  %445 = bitcast i8* %444 to %struct.merge_node**
  %446 = load %struct.merge_node*, %struct.merge_node** %445, align 8
  %447 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %446, i64 0, i32 12
  %448 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %447) #12
  %449 = load %struct.merge_node*, %struct.merge_node** %445, align 8
  %450 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 11
  %451 = load i8, i8* %450, align 4
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %485

; <label>:453:                                    ; preds = %443
  %454 = bitcast %struct.merge_node* %449 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 2
  %457 = bitcast %struct.line** %456 to i64*
  %458 = load i64, i64* %457, align 8
  %459 = icmp eq i64 %455, %458
  %460 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 1
  %461 = bitcast %struct.line** %460 to i64*
  %462 = load i64, i64* %461, align 8
  %463 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 3
  %464 = bitcast %struct.line** %463 to i64*
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %462, %465
  br i1 %459, label %472, label %467

; <label>:467:                                    ; preds = %453
  br i1 %466, label %477, label %468

; <label>:468:                                    ; preds = %467
  %469 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 6
  %470 = load i64, i64* %469, align 8
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %477, label %485

; <label>:472:                                    ; preds = %453
  br i1 %466, label %473, label %485

; <label>:473:                                    ; preds = %472
  %474 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %449, i64 0, i32 5
  %475 = load i64, i64* %474, align 8
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %485

; <label>:477:                                    ; preds = %473, %468, %467
  %478 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %70) #12
  %479 = load %struct.heap*, %struct.heap** %72, align 8
  %480 = bitcast %struct.merge_node* %449 to i8*
  %481 = call i32 @heap_insert(%struct.heap* %479, i8* %480) #12
  store i8 1, i8* %450, align 4
  %482 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #12
  %483 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #12
  %484 = load %struct.merge_node*, %struct.merge_node** %445, align 8
  br label %485

; <label>:485:                                    ; preds = %477, %473, %472, %468, %443
  %486 = phi %struct.merge_node* [ %449, %443 ], [ %449, %468 ], [ %449, %472 ], [ %449, %473 ], [ %484, %477 ]
  %487 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %486, i64 0, i32 12
  %488 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %487) #12
  br label %507

; <label>:489:                                    ; preds = %440
  %490 = load i64, i64* %405, align 8
  %491 = getelementptr inbounds i8, i8* %93, i64 48
  %492 = bitcast i8* %491 to i64*
  %493 = load i64, i64* %492, align 8
  %494 = sub i64 0, %493
  %495 = icmp eq i64 %490, %494
  br i1 %495, label %496, label %507

; <label>:496:                                    ; preds = %489
  %497 = getelementptr inbounds i8, i8* %93, i64 56
  %498 = bitcast i8* %497 to %struct.merge_node**
  %499 = load %struct.merge_node*, %struct.merge_node** %498, align 8
  %500 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %70) #12
  %501 = load %struct.heap*, %struct.heap** %72, align 8
  %502 = bitcast %struct.merge_node* %499 to i8*
  %503 = call i32 @heap_insert(%struct.heap* %501, i8* %502) #12
  %504 = getelementptr inbounds %struct.merge_node, %struct.merge_node* %499, i64 0, i32 11
  store i8 1, i8* %504, align 4
  %505 = call i32 @pthread_cond_signal(%union.pthread_cond_t* %77) #12
  %506 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %70) #12
  br label %507

; <label>:507:                                    ; preds = %496, %489, %485
  %508 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %96) #12
  br label %80

; <label>:509:                                    ; preds = %92
  %510 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %96) #12
  %511 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* nonnull %70) #12
  %512 = load %struct.heap*, %struct.heap** %72, align 8
  %513 = call i32 @heap_insert(%struct.heap* %512, i8* nonnull %93) #12
  store i8 1, i8* %98, align 4
  %514 = call i32 @pthread_cond_signal(%union.pthread_cond_t* nonnull %77) #12
  %515 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* nonnull %70) #12
  br label %516

; <label>:516:                                    ; preds = %509, %39
  call void @llvm.lifetime.end(i64 56, i8* nonnull %18) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @reap(i32) unnamed_addr #6 {
  %2 = alloca %struct.tempnode, align 8
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %4) #12
  %5 = icmp ne i32 %0, 0
  %6 = select i1 %5, i32 %0, i32 -1
  %7 = xor i1 %5, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @waitpid(i32 %6, i32* nonnull %3, i32 %8) #12
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %1
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.171, i64 0, i64 0), i32 5) #12
  %15 = load i8*, i8** @compress_program, align 8
  %16 = call i8* @quotearg_style(i32 4, i8* %15) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %13, i8* %14, i8* %16) #12
  unreachable

; <label>:17:                                     ; preds = %1
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %41, label %19

; <label>:19:                                     ; preds = %17
  %20 = icmp sgt i32 %0, 0
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.tempnode* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %22) #12
  %23 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %2, i64 0, i32 1
  store i32 %9, i32* %23, align 8
  %24 = load %struct.hash_table*, %struct.hash_table** @proctab, align 8
  %25 = call i8* @hash_delete(%struct.hash_table* %24, i8* nonnull %22) #12
  %26 = icmp eq i8* %25, null
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds i8, i8* %25, i64 12
  store i8 2, i8* %28, align 4
  call void @llvm.lifetime.end(i64 16, i8* nonnull %22) #12
  br label %30

; <label>:29:                                     ; preds = %21
  call void @llvm.lifetime.end(i64 16, i8* nonnull %22) #12
  br label %41

; <label>:30:                                     ; preds = %27, %19
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 65407
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

; <label>:34:                                     ; preds = %30
  %35 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.172, i64 0, i64 0), i32 5) #12
  %36 = load i8*, i8** @compress_program, align 8
  %37 = call i8* @quotearg_style(i32 4, i8* %36) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %35, i8* %37) #12
  unreachable

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* @nprocs, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @nprocs, align 4
  br label %41

; <label>:41:                                     ; preds = %29, %17, %38
  call void @llvm.lifetime.end(i64 4, i8* nonnull %4) #12
  ret i32 %9
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @exit_cleanup() #6 {
  %1 = alloca %struct.cs_status, align 8
  %2 = alloca %struct.cs_status, align 8
  %3 = alloca %struct.cs_status, align 8
  %4 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  %5 = icmp eq %struct.tempnode* %4, null
  br i1 %5, label %32, label %6

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %7)
  %8 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %8) #12
  %9 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %2, i64 0, i32 1
  %10 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* %9) #12
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* nonnull %8, i64 136, i32 8, i1 false) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %8) #12
  %13 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  %14 = icmp eq %struct.tempnode* %13, null
  br i1 %14, label %24, label %15

; <label>:15:                                     ; preds = %6
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi %struct.tempnode* [ %21, %16 ], [ %13, %15 ]
  %18 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %17, i64 0, i32 3, i64 0
  %19 = call i32 @unlink(i8* %18) #12
  %20 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %17, i64 0, i32 0
  %21 = load volatile %struct.tempnode*, %struct.tempnode** %20, align 8
  %22 = icmp eq %struct.tempnode* %21, null
  br i1 %22, label %23, label %16

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %6
  store volatile %struct.tempnode* null, %struct.tempnode** @temphead, align 8
  %25 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %1, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %25)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %25, i8* nonnull %7, i64 136, i32 8, i1 false) #12
  %26 = load i8, i8* %25, align 8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %1, i64 0, i32 1
  %30 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %29, %struct.__sigset_t* null) #12
  br label %31

; <label>:31:                                     ; preds = %24, %28
  call void @llvm.lifetime.end(i64 136, i8* nonnull %25)
  call void @llvm.lifetime.end(i64 136, i8* nonnull %7)
  br label %32

; <label>:32:                                     ; preds = %0, %31
  call void @close_stdout() #12
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noalias i8* @sortlines_thread(i8* nocapture readonly) #6 {
  %2 = bitcast i8* %0 to %struct.line**
  %3 = load %struct.line*, %struct.line** %2, align 8
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %0, i64 16
  %8 = bitcast i8* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i8, i8* %0, i64 24
  %11 = bitcast i8* %10 to %struct.merge_node**
  %12 = load %struct.merge_node*, %struct.merge_node** %11, align 8
  %13 = getelementptr inbounds i8, i8* %0, i64 32
  %14 = bitcast i8* %13 to %struct.merge_node_queue**
  %15 = load %struct.merge_node_queue*, %struct.merge_node_queue** %14, align 8
  %16 = getelementptr inbounds i8, i8* %0, i64 40
  %17 = bitcast i8* %16 to %struct._IO_FILE**
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = getelementptr inbounds i8, i8* %0, i64 48
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  tail call fastcc void @sortlines(%struct.line* %3, i64 %6, i64 %9, %struct.merge_node* %12, %struct.merge_node_queue* %15, %struct._IO_FILE* %18, i8* %21)
  ret i8* null
}

; Function Attrs: nounwind
declare i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #2

declare i32 @pthread_join(i64, i8**) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @sequential_sort(%struct.line* noalias, i64, %struct.line* noalias, i1 zeroext) unnamed_addr #6 {
  %5 = icmp eq i64 %1, 2
  br i1 %5, label %6, label %29

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.line, %struct.line* %0, i64 -1
  %8 = getelementptr inbounds %struct.line, %struct.line* %0, i64 -2
  %9 = tail call fastcc i32 @compare(%struct.line* %7, %struct.line* %8)
  %10 = icmp sgt i32 %9, 0
  br i1 %3, label %11, label %23

; <label>:11:                                     ; preds = %6
  %12 = zext i1 %10 to i64
  %13 = getelementptr inbounds %struct.line, %struct.line* %2, i64 -1
  %14 = xor i64 %12, -1
  %15 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %14
  %16 = bitcast %struct.line* %13 to i8*
  %17 = bitcast %struct.line* %15 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = getelementptr inbounds %struct.line, %struct.line* %2, i64 -2
  %19 = select i1 %10, i64 -1, i64 -2
  %20 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %19
  %21 = bitcast %struct.line* %18 to i8*
  %22 = bitcast %struct.line* %20 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 32, i32 8, i1 false)
  br label %138

; <label>:23:                                     ; preds = %6
  br i1 %10, label %24, label %138

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.line, %struct.line* %2, i64 -1
  %26 = bitcast %struct.line* %25 to i8*
  %27 = bitcast %struct.line* %7 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 32, i32 8, i1 false)
  %28 = bitcast %struct.line* %8 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %26, i64 32, i32 8, i1 false)
  br label %138

; <label>:29:                                     ; preds = %4
  %30 = lshr i64 %1, 1
  %31 = sub i64 %1, %30
  %32 = sub nsw i64 0, %30
  %33 = getelementptr inbounds %struct.line, %struct.line* %0, i64 %32
  %34 = select i1 %3, i64 %32, i64 0
  %35 = getelementptr inbounds %struct.line, %struct.line* %2, i64 %34
  tail call fastcc void @sequential_sort(%struct.line* %33, i64 %31, %struct.line* %35, i1 zeroext %3)
  %36 = icmp ugt i64 %1, 3
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %29
  %38 = xor i1 %3, true
  tail call fastcc void @sequential_sort(%struct.line* %0, i64 %30, %struct.line* %2, i1 zeroext %38)
  br label %45

; <label>:39:                                     ; preds = %29
  br i1 %3, label %45, label %40

; <label>:40:                                     ; preds = %39
  %41 = getelementptr inbounds %struct.line, %struct.line* %2, i64 -1
  %42 = getelementptr inbounds %struct.line, %struct.line* %0, i64 -1
  %43 = bitcast %struct.line* %41 to i8*
  %44 = bitcast %struct.line* %42 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 32, i32 8, i1 false)
  br label %45

; <label>:45:                                     ; preds = %39, %40, %37
  %46 = select i1 %3, %struct.line* %2, %struct.line* %0
  %47 = select i1 %3, %struct.line* %0, %struct.line* %2
  %48 = getelementptr inbounds %struct.line, %struct.line* %46, i64 %32
  br label %49

; <label>:49:                                     ; preds = %65, %45
  %50 = phi %struct.line* [ %63, %65 ], [ %46, %45 ]
  %51 = phi %struct.line* [ %55, %65 ], [ %47, %45 ]
  %52 = phi i64 [ %67, %65 ], [ %30, %45 ]
  %53 = phi i64 [ %58, %65 ], [ %31, %45 ]
  %54 = phi %struct.line* [ %59, %65 ], [ %48, %45 ]
  %55 = getelementptr inbounds %struct.line, %struct.line* %51, i64 -1
  br label %56

; <label>:56:                                     ; preds = %69, %49
  %57 = phi %struct.line* [ %63, %69 ], [ %50, %49 ]
  %58 = phi i64 [ %71, %69 ], [ %53, %49 ]
  %59 = phi %struct.line* [ %60, %69 ], [ %54, %49 ]
  %60 = getelementptr inbounds %struct.line, %struct.line* %59, i64 -1
  %61 = tail call fastcc i32 @compare(%struct.line* %55, %struct.line* %60) #12
  %62 = icmp slt i32 %61, 1
  %63 = getelementptr inbounds %struct.line, %struct.line* %57, i64 -1
  %64 = bitcast %struct.line* %63 to i8*
  br i1 %62, label %65, label %69

; <label>:65:                                     ; preds = %56
  %66 = bitcast %struct.line* %55 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %66, i64 32, i32 8, i1 false) #12
  %67 = add i64 %52, -1
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %137, label %49

; <label>:69:                                     ; preds = %56
  %70 = bitcast %struct.line* %60 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %70, i64 32, i32 8, i1 false) #12
  %71 = add i64 %58, -1
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %56

; <label>:73:                                     ; preds = %69
  %74 = add i64 %52, -1
  %75 = and i64 %52, 7
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %91, label %77

; <label>:77:                                     ; preds = %73
  br label %78

; <label>:78:                                     ; preds = %78, %77
  %79 = phi %struct.line* [ %83, %78 ], [ %63, %77 ]
  %80 = phi %struct.line* [ %84, %78 ], [ %51, %77 ]
  %81 = phi i64 [ %87, %78 ], [ %52, %77 ]
  %82 = phi i64 [ %88, %78 ], [ %75, %77 ]
  %83 = getelementptr inbounds %struct.line, %struct.line* %79, i64 -1
  %84 = getelementptr inbounds %struct.line, %struct.line* %80, i64 -1
  %85 = bitcast %struct.line* %83 to i8*
  %86 = bitcast %struct.line* %84 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 32, i32 8, i1 false) #12
  %87 = add i64 %81, -1
  %88 = add i64 %82, -1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %78

; <label>:90:                                     ; preds = %78
  br label %91

; <label>:91:                                     ; preds = %73, %90
  %92 = phi %struct.line* [ %63, %73 ], [ %83, %90 ]
  %93 = phi %struct.line* [ %51, %73 ], [ %84, %90 ]
  %94 = phi i64 [ %52, %73 ], [ %87, %90 ]
  %95 = icmp ult i64 %74, 7
  br i1 %95, label %136, label %96

; <label>:96:                                     ; preds = %91
  br label %97

; <label>:97:                                     ; preds = %97, %96
  %98 = phi %struct.line* [ %92, %96 ], [ %129, %97 ]
  %99 = phi %struct.line* [ %93, %96 ], [ %130, %97 ]
  %100 = phi i64 [ %94, %96 ], [ %133, %97 ]
  %101 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -1
  %102 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -1
  %103 = bitcast %struct.line* %101 to i8*
  %104 = bitcast %struct.line* %102 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %104, i64 32, i32 8, i1 false) #12
  %105 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -2
  %106 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -2
  %107 = bitcast %struct.line* %105 to i8*
  %108 = bitcast %struct.line* %106 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 32, i32 8, i1 false) #12
  %109 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -3
  %110 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -3
  %111 = bitcast %struct.line* %109 to i8*
  %112 = bitcast %struct.line* %110 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 32, i32 8, i1 false) #12
  %113 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -4
  %114 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -4
  %115 = bitcast %struct.line* %113 to i8*
  %116 = bitcast %struct.line* %114 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 32, i32 8, i1 false) #12
  %117 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -5
  %118 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -5
  %119 = bitcast %struct.line* %117 to i8*
  %120 = bitcast %struct.line* %118 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %119, i8* %120, i64 32, i32 8, i1 false) #12
  %121 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -6
  %122 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -6
  %123 = bitcast %struct.line* %121 to i8*
  %124 = bitcast %struct.line* %122 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 32, i32 8, i1 false) #12
  %125 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -7
  %126 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -7
  %127 = bitcast %struct.line* %125 to i8*
  %128 = bitcast %struct.line* %126 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %128, i64 32, i32 8, i1 false) #12
  %129 = getelementptr inbounds %struct.line, %struct.line* %98, i64 -8
  %130 = getelementptr inbounds %struct.line, %struct.line* %99, i64 -8
  %131 = bitcast %struct.line* %129 to i8*
  %132 = bitcast %struct.line* %130 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %131, i8* %132, i64 32, i32 8, i1 false) #12
  %133 = add i64 %100, -8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %97

; <label>:135:                                    ; preds = %97
  br label %136

; <label>:136:                                    ; preds = %91, %135
  br label %138

; <label>:137:                                    ; preds = %65
  br label %138

; <label>:138:                                    ; preds = %137, %136, %11, %24, %23
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(%union.pthread_mutex_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(%union.pthread_cond_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) local_unnamed_addr #2

declare i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @pipe_fork(i32*, i64) unnamed_addr #6 {
  %3 = alloca %struct.cs_status, align 8
  %4 = alloca %struct.cs_status, align 8
  %5 = alloca %struct.cs_status, align 8
  %6 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %6)
  %7 = tail call i32 @pipe(i32* %0) #12
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %89, label %9

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* @nmerge, align 4
  %11 = add i32 %10, 1
  %12 = load i32, i32* @nprocs, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %9
  %15 = tail call fastcc i32 @reap(i32 -1) #12
  %16 = load i32, i32* @nprocs, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %14
  br label %19

; <label>:19:                                     ; preds = %18, %19
  %20 = tail call fastcc i32 @reap(i32 0) #12
  %21 = icmp ne i32 %20, 0
  %22 = load i32, i32* @nprocs, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = and i1 %21, %23
  br i1 %24, label %19, label %25

; <label>:25:                                     ; preds = %19
  br label %26

; <label>:26:                                     ; preds = %25, %9, %14
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %83, label %28

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %4, i64 0, i32 0
  %30 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 0
  %32 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 1
  %33 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %5, i64 0, i32 0
  br label %34

; <label>:34:                                     ; preds = %28, %63
  %35 = phi i64 [ %1, %28 ], [ %37, %63 ]
  %36 = phi double [ 2.500000e-01, %28 ], [ %58, %63 ]
  %37 = add i64 %35, -1
  call void @llvm.lifetime.start(i64 136, i8* nonnull %29) #12
  %38 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* %30) #12
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i8
  store i8 %40, i8* %29, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %33, i8* nonnull %29, i64 136, i32 8, i1 false) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %29) #12
  %41 = load volatile %struct.tempnode*, %struct.tempnode** @temphead, align 8
  store volatile %struct.tempnode* null, %struct.tempnode** @temphead, align 8
  %42 = call i32 @fork() #12
  %43 = tail call i32* @__errno_location() #1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %42, 0
  br i1 %45, label %47, label %46

; <label>:46:                                     ; preds = %34
  store volatile %struct.tempnode* %41, %struct.tempnode** @temphead, align 8
  br label %47

; <label>:47:                                     ; preds = %34, %46
  call void @llvm.lifetime.start(i64 136, i8* nonnull %31)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %31, i8* nonnull %6, i64 136, i32 8, i1 false) #12
  %48 = load i8, i8* %31, align 8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

; <label>:50:                                     ; preds = %47
  %51 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %32, %struct.__sigset_t* null) #12
  br label %52

; <label>:52:                                     ; preds = %47, %50
  call void @llvm.lifetime.end(i64 136, i8* nonnull %31)
  store i32 %44, i32* %43, align 4
  %53 = icmp slt i32 %42, 0
  %54 = icmp eq i32 %44, 11
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %71

; <label>:56:                                     ; preds = %52
  %57 = call i32 @xnanosleep(double %36) #12
  %58 = fmul double %36, 2.000000e+00
  %59 = load i32, i32* @nprocs, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %56
  br label %65

; <label>:62:                                     ; preds = %65
  br label %63

; <label>:63:                                     ; preds = %62, %56
  %64 = icmp eq i64 %37, 0
  br i1 %64, label %71, label %34

; <label>:65:                                     ; preds = %61, %65
  %66 = call fastcc i32 @reap(i32 0) #12
  %67 = icmp ne i32 %66, 0
  %68 = load i32, i32* @nprocs, align 4
  %69 = icmp sgt i32 %68, 0
  %70 = and i1 %67, %69
  br i1 %70, label %65, label %62

; <label>:71:                                     ; preds = %63, %52
  %72 = icmp slt i32 %42, 0
  br i1 %72, label %73, label %81

; <label>:73:                                     ; preds = %71
  %74 = tail call i32* @__errno_location() #1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %0, align 4
  %77 = call i32 @close(i32 %76) #12
  %78 = getelementptr inbounds i32, i32* %0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @close(i32 %79) #12
  store i32 %75, i32* %74, align 4
  br label %89

; <label>:81:                                     ; preds = %71
  %82 = icmp eq i32 %42, 0
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %26, %81
  %84 = call i32 @close(i32 0) #12
  %85 = call i32 @close(i32 1) #12
  br label %89

; <label>:86:                                     ; preds = %81
  %87 = load i32, i32* @nprocs, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @nprocs, align 4
  br label %89

; <label>:89:                                     ; preds = %73, %86, %83, %2
  %90 = phi i32 [ -1, %2 ], [ 0, %83 ], [ %42, %86 ], [ %42, %73 ]
  call void @llvm.lifetime.end(i64 136, i8* nonnull %6)
  ret i32 %90
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @proctab_hasher(i8* nocapture readonly, i64) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @proctab_comparator(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  ret i1 %9
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @move_fd_or_die(i32, i32) unnamed_addr #6 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @dup2(i32 %0, i32 %1) #12
  %6 = tail call i32 @close(i32 %0) #12
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @execlp(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @async_safe_die(i32, i8* nocapture readonly) unnamed_addr #0 {
  %3 = alloca [12 x i8], align 1
  %4 = tail call i64 @strlen(i8* %1) #14
  %5 = tail call i64 @write(i32 2, i8* %1, i64 %4) #12
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %13, label %7

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 12, i8* nonnull %8) #12
  %9 = call i8* @inttostr(i32 %0, i8* nonnull %8) #12
  %10 = call i64 @write(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.173, i64 0, i64 0), i64 8) #12
  %11 = call i64 @strlen(i8* %9) #14
  %12 = call i64 @write(i32 2, i8* %9, i64 %11) #12
  call void @llvm.lifetime.end(i64 12, i8* nonnull %8) #12
  br label %13

; <label>:13:                                     ; preds = %2, %7
  %14 = call i64 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0), i64 1) #12
  call void @_exit(i32 2) #15
  unreachable
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pipe(i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @open_input_files(%struct.sortfile* nocapture readonly, i64, %struct._IO_FILE*** nocapture) unnamed_addr #6 {
  %4 = alloca %struct.tempnode, align 8
  %5 = alloca [2 x i32], align 4
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = shl i64 %1, 3
  %10 = tail call noalias i8* @xmalloc(i64 %9) #12
  %11 = bitcast i8* %10 to %struct._IO_FILE**
  %12 = bitcast %struct._IO_FILE*** %2 to i8**
  store i8* %10, i8** %12, align 8
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %106, label %14

; <label>:14:                                     ; preds = %8
  %15 = bitcast [2 x i32]* %5 to i8*
  %16 = bitcast %struct.tempnode* %4 to i8*
  %17 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %4, i64 0, i32 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  br label %22

; <label>:20:                                     ; preds = %99
  %21 = icmp ult i64 %103, %1
  br i1 %21, label %22, label %104

; <label>:22:                                     ; preds = %14, %20
  %23 = phi i64 [ 0, %14 ], [ %103, %20 ]
  %24 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %23, i32 1
  %25 = load %struct.tempnode*, %struct.tempnode** %24, align 8
  %26 = icmp eq %struct.tempnode* %25, null
  br i1 %26, label %95, label %27

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %25, i64 0, i32 2
  %29 = load i8, i8* %28, align 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %95, label %31

; <label>:31:                                     ; preds = %27
  call void @llvm.lifetime.start(i64 8, i8* nonnull %15) #12
  %32 = icmp eq i8 %29, 1
  br i1 %32, label %33, label %43

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %25, i64 0, i32 1
  %35 = load i32, i32* %34, align 8
  call void @llvm.lifetime.start(i64 16, i8* nonnull %16) #12
  store i32 %35, i32* %17, align 8
  %36 = load %struct.hash_table*, %struct.hash_table** @proctab, align 8
  %37 = call i8* @hash_delete(%struct.hash_table* %36, i8* nonnull %16) #12
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %33
  call void @llvm.lifetime.end(i64 16, i8* nonnull %16) #12
  br label %43

; <label>:40:                                     ; preds = %33
  %41 = getelementptr inbounds i8, i8* %37, i64 12
  store i8 2, i8* %41, align 4
  call void @llvm.lifetime.end(i64 16, i8* nonnull %16) #12
  %42 = call fastcc i32 @reap(i32 %35) #12
  br label %43

; <label>:43:                                     ; preds = %40, %39, %31
  %44 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %25, i64 0, i32 3, i64 0
  %45 = call i32 (i8*, i32, ...) @open(i8* %44, i32 0) #12
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %93, label %47

; <label>:47:                                     ; preds = %43
  %48 = call fastcc i32 @pipe_fork(i32* nonnull %18, i64 9) #12
  switch i32 %48, label %67 [
    i32 -1, label %49
    i32 0, label %59
  ]

; <label>:49:                                     ; preds = %47
  %50 = tail call i32* @__errno_location() #1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 24
  br i1 %52, label %57, label %53

; <label>:53:                                     ; preds = %49
  %54 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.168, i64 0, i64 0), i32 5) #12
  %55 = load i8*, i8** @compress_program, align 8
  %56 = call i8* @quotearg_style(i32 4, i8* %55) #12
  call void (i32, i32, i8*, ...) @error(i32 2, i32 %51, i8* %54, i8* %56) #12
  unreachable

; <label>:57:                                     ; preds = %49
  %58 = call i32 @close(i32 %45) #12
  store i32 24, i32* %50, align 4
  br label %93

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @close(i32 %60) #12
  call fastcc void @move_fd_or_die(i32 %45, i32 0) #12
  %62 = load i32, i32* %19, align 4
  call fastcc void @move_fd_or_die(i32 %62, i32 1) #12
  %63 = load i8*, i8** @compress_program, align 8
  %64 = call i32 (i8*, i8*, ...) @execlp(i8* %63, i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.169, i64 0, i64 0), i8* null) #12
  %65 = tail call i32* @__errno_location() #1
  %66 = load i32, i32* %65, align 4
  call fastcc void @async_safe_die(i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.170, i64 0, i64 0)) #15
  unreachable

; <label>:67:                                     ; preds = %47
  %68 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %25, i64 0, i32 1
  store i32 %48, i32* %68, align 8
  %69 = load %struct.hash_table*, %struct.hash_table** @proctab, align 8
  %70 = icmp eq %struct.hash_table* %69, null
  br i1 %70, label %71, label %75

; <label>:71:                                     ; preds = %67
  %72 = call %struct.hash_table* @hash_initialize(i64 47, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @proctab_hasher, i1 (i8*, i8*)* nonnull @proctab_comparator, void (i8*)* null) #12
  store %struct.hash_table* %72, %struct.hash_table** @proctab, align 8
  %73 = icmp eq %struct.hash_table* %72, null
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %71
  call void @xalloc_die() #15
  unreachable

; <label>:75:                                     ; preds = %71, %67
  %76 = phi %struct.hash_table* [ %72, %71 ], [ %69, %67 ]
  store i8 1, i8* %28, align 4
  %77 = bitcast %struct.tempnode* %25 to i8*
  %78 = call i8* @hash_insert(%struct.hash_table* nonnull %76, i8* %77) #12
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %75
  call void @xalloc_die() #15
  unreachable

; <label>:81:                                     ; preds = %75
  %82 = call i32 @close(i32 %45) #12
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @close(i32 %83) #12
  %85 = load i32, i32* %18, align 4
  %86 = call %struct._IO_FILE* @fdopen(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0)) #12
  %87 = icmp eq %struct._IO_FILE* %86, null
  br i1 %87, label %88, label %93

; <label>:88:                                     ; preds = %81
  %89 = tail call i32* @__errno_location() #1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @close(i32 %91) #12
  store i32 %90, i32* %89, align 4
  br label %93

; <label>:93:                                     ; preds = %43, %57, %81, %88
  %94 = phi %struct._IO_FILE* [ null, %43 ], [ %86, %81 ], [ null, %88 ], [ null, %57 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %15) #12
  br label %99

; <label>:95:                                     ; preds = %27, %22
  %96 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %23, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call fastcc %struct._IO_FILE* @stream_open(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %99

; <label>:99:                                     ; preds = %95, %93
  %100 = phi %struct._IO_FILE* [ %94, %93 ], [ %98, %95 ]
  %101 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %11, i64 %23
  store %struct._IO_FILE* %100, %struct._IO_FILE** %101, align 8
  %102 = icmp eq %struct._IO_FILE* %100, null
  %103 = add nuw i64 %23, 1
  br i1 %102, label %104, label %20

; <label>:104:                                    ; preds = %99, %20
  %105 = phi i64 [ %23, %99 ], [ %103, %20 ]
  br label %106

; <label>:106:                                    ; preds = %104, %8
  %107 = phi i64 [ 0, %8 ], [ %105, %104 ]
  ret i64 %107
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @mergefps(%struct.sortfile* nocapture, i64, i64, %struct._IO_FILE*, i8*, %struct._IO_FILE** nocapture) unnamed_addr #6 {
  %7 = alloca %struct.line, align 8
  %8 = icmp ugt i64 %2, 164703072086692425
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6
  tail call void @xalloc_die() #15
  unreachable

; <label>:10:                                     ; preds = %6
  %11 = mul i64 %2, 56
  %12 = tail call noalias i8* @xmalloc(i64 %11) #12
  %13 = bitcast i8* %12 to %struct.buffer*
  %14 = bitcast %struct.line* %7 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %14) #12
  %15 = shl i64 %2, 3
  %16 = tail call noalias i8* @xmalloc(i64 %15) #12
  %17 = bitcast i8* %16 to %struct.line**
  %18 = tail call noalias i8* @xmalloc(i64 %15) #12
  %19 = bitcast i8* %18 to %struct.line**
  %20 = tail call noalias i8* @xmalloc(i64 %15) #12
  %21 = bitcast i8* %20 to i64*
  %22 = load %struct.keyfield*, %struct.keyfield** @keylist, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %7, i64 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = icmp eq i64 %2, 0
  br i1 %24, label %755, label %25

; <label>:25:                                     ; preds = %10
  br label %26

; <label>:26:                                     ; preds = %25, %149
  %27 = phi i64 [ %124, %149 ], [ %1, %25 ]
  %28 = phi i64 [ %125, %149 ], [ %2, %25 ]
  %29 = phi i64 [ %162, %149 ], [ 0, %25 ]
  %30 = xor i64 %29, 3
  %31 = sub i64 -2, %29
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %32, i64 0, i32 0
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29, i32 3
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29, i32 4
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29, i32 1
  %37 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29, i32 6
  %38 = bitcast i64* %36 to i8*
  %39 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %29
  %40 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %29, i32 0
  %41 = add i64 %28, %30
  %42 = add i64 %28, %31
  %43 = bitcast i64* %35 to <2 x i64>*
  br label %121

; <label>:44:                                     ; preds = %200
  br label %45

; <label>:45:                                     ; preds = %196, %44
  %46 = add i64 %122, 1
  br i1 %175, label %121, label %47

; <label>:47:                                     ; preds = %45, %171
  br label %49

; <label>:48:                                     ; preds = %149
  br label %49

; <label>:49:                                     ; preds = %48, %47
  %50 = phi i64 [ %174, %47 ], [ %125, %48 ]
  %51 = phi i64 [ %172, %47 ], [ %124, %48 ]
  %52 = icmp eq i64 %50, 0
  br i1 %52, label %755, label %53

; <label>:53:                                     ; preds = %49
  %54 = icmp ult i64 %50, 4
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %119, %57, %53
  %56 = phi i64 [ 0, %57 ], [ 0, %53 ], [ %58, %119 ]
  br label %247

; <label>:57:                                     ; preds = %53
  %58 = and i64 %50, -4
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %55, label %60

; <label>:60:                                     ; preds = %57
  %61 = add i64 %58, -4
  %62 = lshr exact i64 %61, 2
  %63 = add nuw nsw i64 %62, 1
  %64 = and i64 %63, 3
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %81, label %66

; <label>:66:                                     ; preds = %60
  br label %67

; <label>:67:                                     ; preds = %67, %66
  %68 = phi i64 [ %76, %67 ], [ 0, %66 ]
  %69 = phi <2 x i64> [ %77, %67 ], [ <i64 0, i64 1>, %66 ]
  %70 = phi i64 [ %78, %67 ], [ %64, %66 ]
  %71 = add <2 x i64> %69, <i64 2, i64 2>
  %72 = getelementptr inbounds i64, i64* %21, i64 %68
  %73 = bitcast i64* %72 to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %73, align 8
  %74 = getelementptr i64, i64* %72, i64 2
  %75 = bitcast i64* %74 to <2 x i64>*
  store <2 x i64> %71, <2 x i64>* %75, align 8
  %76 = add i64 %68, 4
  %77 = add <2 x i64> %69, <i64 4, i64 4>
  %78 = add i64 %70, -1
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %67

; <label>:80:                                     ; preds = %67
  br label %81

; <label>:81:                                     ; preds = %60, %80
  %82 = phi i64 [ 0, %60 ], [ %76, %80 ]
  %83 = phi <2 x i64> [ <i64 0, i64 1>, %60 ], [ %77, %80 ]
  %84 = icmp ult i64 %61, 12
  br i1 %84, label %119, label %85

; <label>:85:                                     ; preds = %81
  br label %86

; <label>:86:                                     ; preds = %86, %85
  %87 = phi i64 [ %82, %85 ], [ %115, %86 ]
  %88 = phi <2 x i64> [ %83, %85 ], [ %116, %86 ]
  %89 = add <2 x i64> %88, <i64 2, i64 2>
  %90 = getelementptr inbounds i64, i64* %21, i64 %87
  %91 = bitcast i64* %90 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %91, align 8
  %92 = getelementptr i64, i64* %90, i64 2
  %93 = bitcast i64* %92 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %93, align 8
  %94 = add i64 %87, 4
  %95 = add <2 x i64> %88, <i64 4, i64 4>
  %96 = add <2 x i64> %88, <i64 6, i64 6>
  %97 = getelementptr inbounds i64, i64* %21, i64 %94
  %98 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> %95, <2 x i64>* %98, align 8
  %99 = getelementptr i64, i64* %97, i64 2
  %100 = bitcast i64* %99 to <2 x i64>*
  store <2 x i64> %96, <2 x i64>* %100, align 8
  %101 = add i64 %87, 8
  %102 = add <2 x i64> %88, <i64 8, i64 8>
  %103 = add <2 x i64> %88, <i64 10, i64 10>
  %104 = getelementptr inbounds i64, i64* %21, i64 %101
  %105 = bitcast i64* %104 to <2 x i64>*
  store <2 x i64> %102, <2 x i64>* %105, align 8
  %106 = getelementptr i64, i64* %104, i64 2
  %107 = bitcast i64* %106 to <2 x i64>*
  store <2 x i64> %103, <2 x i64>* %107, align 8
  %108 = add i64 %87, 12
  %109 = add <2 x i64> %88, <i64 12, i64 12>
  %110 = add <2 x i64> %88, <i64 14, i64 14>
  %111 = getelementptr inbounds i64, i64* %21, i64 %108
  %112 = bitcast i64* %111 to <2 x i64>*
  store <2 x i64> %109, <2 x i64>* %112, align 8
  %113 = getelementptr i64, i64* %111, i64 2
  %114 = bitcast i64* %113 to <2 x i64>*
  store <2 x i64> %110, <2 x i64>* %114, align 8
  %115 = add i64 %87, 16
  %116 = add <2 x i64> %88, <i64 16, i64 16>
  %117 = icmp eq i64 %115, %58
  br i1 %117, label %118, label %86

; <label>:118:                                    ; preds = %86
  br label %119

; <label>:119:                                    ; preds = %81, %118
  %120 = icmp eq i64 %50, %58
  br i1 %120, label %244, label %55

; <label>:121:                                    ; preds = %26, %45
  %122 = phi i64 [ 0, %26 ], [ %46, %45 ]
  %123 = phi i64 [ %28, %26 ], [ %128, %45 ]
  %124 = phi i64 [ %27, %26 ], [ %172, %45 ]
  %125 = phi i64 [ %28, %26 ], [ %174, %45 ]
  %126 = sub i64 %41, %122
  %127 = sub i64 %42, %122
  %128 = add i64 %123, -1
  %129 = load i64, i64* @merge_buffer_size, align 8
  %130 = load i64, i64* @sort_size, align 8
  %131 = udiv i64 %130, %125
  %132 = icmp ugt i64 %129, %131
  %133 = select i1 %132, i64 %129, i64 %131
  br label %134

; <label>:134:                                    ; preds = %141, %121
  %135 = phi i64 [ %133, %121 ], [ %142, %141 ]
  %136 = and i64 %135, 31
  %137 = sub nsw i64 32, %136
  %138 = add i64 %137, %135
  %139 = tail call noalias i8* @malloc(i64 %138) #12
  store i8* %139, i8** %33, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %145

; <label>:141:                                    ; preds = %134
  %142 = lshr i64 %138, 1
  %143 = icmp ugt i64 %138, 67
  br i1 %143, label %134, label %144

; <label>:144:                                    ; preds = %141
  tail call void @xalloc_die() #15
  unreachable

; <label>:145:                                    ; preds = %134
  store i64 %138, i64* %34, align 8
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %43, align 8
  store i8 0, i8* %37, align 8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %38, i8 0, i64 16, i32 8, i1 false) #12
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %147 = load i8*, i8** %40, align 8
  %148 = tail call fastcc zeroext i1 @fillbuf(%struct.buffer* nonnull %32, %struct._IO_FILE* %146, i8* %147)
  br i1 %148, label %149, label %164

; <label>:149:                                    ; preds = %145
  %150 = load i8*, i8** %33, align 8
  %151 = load i64, i64* %34, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = bitcast i8* %152 to %struct.line*
  %154 = getelementptr inbounds i8, i8* %152, i64 -32
  %155 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %29
  %156 = bitcast %struct.line** %155 to i8**
  store i8* %154, i8** %156, align 8
  %157 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %29, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = sub i64 0, %158
  %160 = getelementptr inbounds %struct.line, %struct.line* %153, i64 %159
  %161 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %29
  store %struct.line* %160, %struct.line** %161, align 8
  %162 = add i64 %29, 1
  %163 = icmp ult i64 %162, %125
  br i1 %163, label %26, label %48

; <label>:164:                                    ; preds = %145
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %166 = load i8*, i8** %40, align 8
  tail call fastcc void @xfclose(%struct._IO_FILE* %165, i8* %166)
  %167 = icmp ult i64 %29, %124
  br i1 %167, label %168, label %171

; <label>:168:                                    ; preds = %164
  %169 = add i64 %124, -1
  %170 = load i8*, i8** %40, align 8
  tail call fastcc void @zaptemp(i8* %170)
  br label %171

; <label>:171:                                    ; preds = %168, %164
  %172 = phi i64 [ %169, %168 ], [ %124, %164 ]
  %173 = load i8*, i8** %33, align 8
  tail call void @free(i8* %173) #12
  %174 = add i64 %125, -1
  %175 = icmp ult i64 %29, %174
  br i1 %175, label %176, label %47

; <label>:176:                                    ; preds = %171
  %177 = and i64 %126, 3
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %196, label %179

; <label>:179:                                    ; preds = %176
  br label %180

; <label>:180:                                    ; preds = %180, %179
  %181 = phi i64 [ %184, %180 ], [ %29, %179 ]
  %182 = phi i64 [ %193, %180 ], [ %177, %179 ]
  %183 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %181
  %184 = add i64 %181, 1
  %185 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %184
  %186 = bitcast %struct.sortfile* %183 to i8*
  %187 = bitcast %struct.sortfile* %185 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %186, i8* %187, i64 16, i32 8, i1 false)
  %188 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %184
  %189 = bitcast %struct._IO_FILE** %188 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %181
  %192 = bitcast %struct._IO_FILE** %191 to i64*
  store i64 %190, i64* %192, align 8
  %193 = add i64 %182, -1
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %180

; <label>:195:                                    ; preds = %180
  br label %196

; <label>:196:                                    ; preds = %176, %195
  %197 = phi i64 [ %29, %176 ], [ %184, %195 ]
  %198 = icmp ult i64 %127, 3
  br i1 %198, label %45, label %199

; <label>:199:                                    ; preds = %196
  br label %200

; <label>:200:                                    ; preds = %200, %199
  %201 = phi i64 [ %197, %199 ], [ %233, %200 ]
  %202 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %201
  %203 = add i64 %201, 1
  %204 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %203
  %205 = bitcast %struct.sortfile* %202 to i8*
  %206 = bitcast %struct.sortfile* %204 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %205, i8* %206, i64 16, i32 8, i1 false)
  %207 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %203
  %208 = bitcast %struct._IO_FILE** %207 to i64*
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %201
  %211 = bitcast %struct._IO_FILE** %210 to i64*
  store i64 %209, i64* %211, align 8
  %212 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %203
  %213 = add i64 %201, 2
  %214 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %213
  %215 = bitcast %struct.sortfile* %212 to i8*
  %216 = bitcast %struct.sortfile* %214 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %215, i8* %216, i64 16, i32 8, i1 false)
  %217 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %213
  %218 = bitcast %struct._IO_FILE** %217 to i64*
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %203
  %221 = bitcast %struct._IO_FILE** %220 to i64*
  store i64 %219, i64* %221, align 8
  %222 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %213
  %223 = add i64 %201, 3
  %224 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %223
  %225 = bitcast %struct.sortfile* %222 to i8*
  %226 = bitcast %struct.sortfile* %224 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %226, i64 16, i32 8, i1 false)
  %227 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %223
  %228 = bitcast %struct._IO_FILE** %227 to i64*
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %213
  %231 = bitcast %struct._IO_FILE** %230 to i64*
  store i64 %229, i64* %231, align 8
  %232 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %223
  %233 = add i64 %201, 4
  %234 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %233
  %235 = bitcast %struct.sortfile* %232 to i8*
  %236 = bitcast %struct.sortfile* %234 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %236, i64 16, i32 8, i1 false)
  %237 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %233
  %238 = bitcast %struct._IO_FILE** %237 to i64*
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %223
  %241 = bitcast %struct._IO_FILE** %240 to i64*
  store i64 %239, i64* %241, align 8
  %242 = icmp eq i64 %233, %128
  br i1 %242, label %44, label %200

; <label>:243:                                    ; preds = %247
  br label %244

; <label>:244:                                    ; preds = %243, %119
  %245 = icmp ugt i64 %50, 1
  br i1 %245, label %246, label %253

; <label>:246:                                    ; preds = %244
  br label %263

; <label>:247:                                    ; preds = %55, %247
  %248 = phi i64 [ %250, %247 ], [ %56, %55 ]
  %249 = getelementptr inbounds i64, i64* %21, i64 %248
  store i64 %248, i64* %249, align 8
  %250 = add nuw i64 %248, 1
  %251 = icmp eq i64 %250, %50
  br i1 %251, label %243, label %247

; <label>:252:                                    ; preds = %277
  br label %253

; <label>:253:                                    ; preds = %252, %244
  br i1 %52, label %755, label %254

; <label>:254:                                    ; preds = %253
  %255 = getelementptr inbounds %struct.line, %struct.line* %7, i64 0, i32 1
  %256 = icmp eq %struct.keyfield* %22, null
  %257 = getelementptr inbounds %struct.line, %struct.line* %7, i64 0, i32 2
  %258 = getelementptr inbounds %struct.line, %struct.line* %7, i64 0, i32 3
  %259 = add i64 %50, -1
  %260 = add i64 %50, -2
  %261 = getelementptr inbounds i8, i8* %20, i64 8
  %262 = bitcast i8* %261 to i64*
  br label %284

; <label>:263:                                    ; preds = %246, %277
  %264 = phi i64 [ %279, %277 ], [ 1, %246 ]
  %265 = add i64 %264, -1
  %266 = getelementptr inbounds i64, i64* %21, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %267
  %269 = load %struct.line*, %struct.line** %268, align 8
  %270 = getelementptr inbounds i64, i64* %21, i64 %264
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %271
  %273 = load %struct.line*, %struct.line** %272, align 8
  %274 = tail call fastcc i32 @compare(%struct.line* %269, %struct.line* %273)
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %277

; <label>:276:                                    ; preds = %263
  store i64 %271, i64* %266, align 8
  store i64 %267, i64* %270, align 8
  br label %277

; <label>:277:                                    ; preds = %263, %276
  %278 = phi i64 [ 0, %276 ], [ %264, %263 ]
  %279 = add i64 %278, 1
  %280 = icmp ult i64 %279, %50
  br i1 %280, label %263, label %252

; <label>:281:                                    ; preds = %610
  br label %282

; <label>:282:                                    ; preds = %281, %557
  %283 = add i64 %285, 1
  br i1 %471, label %749, label %284

; <label>:284:                                    ; preds = %254, %282
  %285 = phi i64 [ 0, %254 ], [ %283, %282 ]
  %286 = phi i64 [ %50, %254 ], [ %299, %282 ]
  %287 = phi i64 [ %50, %254 ], [ %419, %282 ]
  %288 = phi i64 [ %51, %254 ], [ %429, %282 ]
  %289 = phi %struct.line* [ null, %254 ], [ %355, %282 ]
  %290 = phi i64 [ 0, %254 ], [ %354, %282 ]
  %291 = sub i64 %259, %285
  %292 = add i64 %291, -4
  %293 = lshr i64 %292, 2
  %294 = add nuw nsw i64 %293, 1
  %295 = sub i64 %259, %285
  %296 = sub i64 %260, %285
  %297 = sub i64 %259, %285
  %298 = sub i64 %259, %285
  %299 = add i64 %286, -1
  %300 = icmp ugt i64 %287, 1
  br label %301

; <label>:301:                                    ; preds = %746, %284
  %302 = phi %struct.line* [ %289, %284 ], [ %355, %746 ]
  %303 = phi i64 [ %290, %284 ], [ %354, %746 ]
  %304 = load i64, i64* %21, align 8
  %305 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %304
  %306 = load %struct.line*, %struct.line** %305, align 8
  %307 = load i1, i1* @unique, align 1
  br i1 %307, label %308, label %352

; <label>:308:                                    ; preds = %301
  %309 = icmp eq %struct.line* %302, null
  br i1 %309, label %314, label %310

; <label>:310:                                    ; preds = %308
  %311 = call fastcc i32 @compare(%struct.line* nonnull %302, %struct.line* %306)
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %353, label %313

; <label>:313:                                    ; preds = %310
  call fastcc void @write_line(%struct.line* nonnull %7, %struct._IO_FILE* %3, i8* %4)
  br label %314

; <label>:314:                                    ; preds = %313, %308
  %315 = getelementptr inbounds %struct.line, %struct.line* %306, i64 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ult i64 %303, %316
  br i1 %317, label %318, label %319

; <label>:318:                                    ; preds = %314
  br label %321

; <label>:319:                                    ; preds = %314
  %320 = load i8*, i8** %23, align 8
  br label %332

; <label>:321:                                    ; preds = %318, %324
  %322 = phi i64 [ %325, %324 ], [ %303, %318 ]
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %327, label %324

; <label>:324:                                    ; preds = %321
  %325 = shl i64 %322, 1
  %326 = icmp ult i64 %325, %316
  br i1 %326, label %321, label %327

; <label>:327:                                    ; preds = %324, %321
  %328 = phi i64 [ %316, %321 ], [ %325, %324 ]
  %329 = load i8*, i8** %23, align 8
  call void @free(i8* %329) #12
  %330 = call noalias i8* @xmalloc(i64 %328) #12
  store i8* %330, i8** %23, align 8
  %331 = load i64, i64* %315, align 8
  br label %332

; <label>:332:                                    ; preds = %319, %327
  %333 = phi i8* [ %330, %327 ], [ %320, %319 ]
  %334 = phi i64 [ %331, %327 ], [ %316, %319 ]
  %335 = phi i64 [ %328, %327 ], [ %303, %319 ]
  store i64 %334, i64* %255, align 8
  %336 = getelementptr inbounds %struct.line, %struct.line* %306, i64 0, i32 0
  %337 = load i8*, i8** %336, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %333, i8* %337, i64 %334, i32 1, i1 false)
  br i1 %256, label %353, label %338

; <label>:338:                                    ; preds = %332
  %339 = load i8*, i8** %23, align 8
  %340 = getelementptr inbounds %struct.line, %struct.line* %306, i64 0, i32 2
  %341 = bitcast i8** %340 to i64*
  %342 = load i64, i64* %341, align 8
  %343 = bitcast %struct.line* %306 to i64*
  %344 = load i64, i64* %343, align 8
  %345 = sub i64 %342, %344
  %346 = getelementptr inbounds i8, i8* %339, i64 %345
  store i8* %346, i8** %257, align 8
  %347 = getelementptr inbounds %struct.line, %struct.line* %306, i64 0, i32 3
  %348 = bitcast i8** %347 to i64*
  %349 = load i64, i64* %348, align 8
  %350 = sub i64 %349, %344
  %351 = getelementptr inbounds i8, i8* %339, i64 %350
  store i8* %351, i8** %258, align 8
  br label %353

; <label>:352:                                    ; preds = %301
  call fastcc void @write_line(%struct.line* %306, %struct._IO_FILE* %3, i8* %4)
  br label %353

; <label>:353:                                    ; preds = %310, %332, %338, %352
  %354 = phi i64 [ %335, %338 ], [ %335, %332 ], [ %303, %352 ], [ %303, %310 ]
  %355 = phi %struct.line* [ %7, %338 ], [ %7, %332 ], [ %302, %352 ], [ %302, %310 ]
  %356 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %304
  %357 = load %struct.line*, %struct.line** %356, align 8
  %358 = icmp ult %struct.line* %357, %306
  br i1 %358, label %359, label %361

; <label>:359:                                    ; preds = %353
  %360 = getelementptr inbounds %struct.line, %struct.line* %306, i64 -1
  br label %617

; <label>:361:                                    ; preds = %353
  %362 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %304
  %363 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %304
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %363, align 8
  %365 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %304, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = call fastcc zeroext i1 @fillbuf(%struct.buffer* %362, %struct._IO_FILE* %364, i8* %366)
  br i1 %367, label %387, label %368

; <label>:368:                                    ; preds = %361
  br i1 %300, label %369, label %417

; <label>:369:                                    ; preds = %368
  %370 = and i64 %297, 1
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %380, label %372

; <label>:372:                                    ; preds = %369
  br label %373

; <label>:373:                                    ; preds = %372
  %374 = load i64, i64* %262, align 8
  %375 = icmp ugt i64 %374, %304
  br i1 %375, label %376, label %378

; <label>:376:                                    ; preds = %373
  %377 = add i64 %374, -1
  store i64 %377, i64* %262, align 8
  br label %378

; <label>:378:                                    ; preds = %376, %373
  %379 = load i64, i64* %21, align 8
  br label %380

; <label>:380:                                    ; preds = %369, %378
  %381 = phi i64 [ %379, %378 ], [ undef, %369 ]
  %382 = phi i64 [ %379, %378 ], [ %304, %369 ]
  %383 = phi i64 [ 2, %378 ], [ 1, %369 ]
  br label %384

; <label>:384:                                    ; preds = %380
  %385 = icmp eq i64 %260, %285
  br i1 %385, label %415, label %386

; <label>:386:                                    ; preds = %384
  br label %400

; <label>:387:                                    ; preds = %361
  %388 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %304, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %304, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds i8, i8* %389, i64 %391
  %393 = bitcast i8* %392 to %struct.line*
  %394 = getelementptr inbounds i8, i8* %392, i64 -32
  %395 = bitcast %struct.line** %305 to i8**
  store i8* %394, i8** %395, align 8
  %396 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %304, i32 2
  %397 = load i64, i64* %396, align 8
  %398 = sub i64 0, %397
  %399 = getelementptr inbounds %struct.line, %struct.line* %393, i64 %398
  br label %617

; <label>:400:                                    ; preds = %759, %386
  %401 = phi i64 [ %382, %386 ], [ %762, %759 ]
  %402 = phi i64 [ %383, %386 ], [ %760, %759 ]
  %403 = getelementptr inbounds i64, i64* %21, i64 %402
  %404 = load i64, i64* %403, align 8
  %405 = icmp ugt i64 %404, %401
  br i1 %405, label %406, label %408

; <label>:406:                                    ; preds = %400
  %407 = add i64 %404, -1
  store i64 %407, i64* %403, align 8
  br label %408

; <label>:408:                                    ; preds = %400, %406
  %409 = add nuw i64 %402, 1
  %410 = load i64, i64* %21, align 8
  %411 = getelementptr inbounds i64, i64* %21, i64 %409
  %412 = load i64, i64* %411, align 8
  %413 = icmp ugt i64 %412, %410
  br i1 %413, label %757, label %759

; <label>:414:                                    ; preds = %759
  br label %415

; <label>:415:                                    ; preds = %384, %414
  %416 = phi i64 [ %381, %384 ], [ %762, %414 ]
  br label %417

; <label>:417:                                    ; preds = %415, %368
  %418 = phi i64 [ %304, %368 ], [ %416, %415 ]
  %419 = add i64 %287, -1
  %420 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %418
  %421 = load %struct._IO_FILE*, %struct._IO_FILE** %420, align 8
  %422 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %418, i32 0
  %423 = load i8*, i8** %422, align 8
  call fastcc void @xfclose(%struct._IO_FILE* %421, i8* %423)
  %424 = icmp ult i64 %418, %288
  br i1 %424, label %425, label %428

; <label>:425:                                    ; preds = %417
  %426 = add i64 %288, -1
  %427 = load i8*, i8** %422, align 8
  call fastcc void @zaptemp(i8* %427)
  br label %428

; <label>:428:                                    ; preds = %425, %417
  %429 = phi i64 [ %426, %425 ], [ %288, %417 ]
  %430 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %418, i32 0
  %431 = load i8*, i8** %430, align 8
  call void @free(i8* %431) #12
  %432 = icmp ult i64 %418, %419
  br i1 %432, label %433, label %470

; <label>:433:                                    ; preds = %428
  %434 = sub i64 %295, %418
  %435 = and i64 %434, 1
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %463, label %437

; <label>:437:                                    ; preds = %433
  br label %438

; <label>:438:                                    ; preds = %437
  %439 = add nuw i64 %418, 1
  %440 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %439
  %441 = bitcast %struct._IO_FILE** %440 to i64*
  %442 = load i64, i64* %441, align 8
  %443 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %418
  %444 = bitcast %struct._IO_FILE** %443 to i64*
  store i64 %442, i64* %444, align 8
  %445 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %418
  %446 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %439
  %447 = bitcast %struct.sortfile* %445 to i8*
  %448 = bitcast %struct.sortfile* %446 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %447, i8* %448, i64 16, i32 8, i1 false)
  %449 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %418
  %450 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %439
  %451 = bitcast %struct.buffer* %449 to i8*
  %452 = bitcast %struct.buffer* %450 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %451, i8* %452, i64 56, i32 8, i1 false)
  %453 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %439
  %454 = bitcast %struct.line** %453 to i64*
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %418
  %457 = bitcast %struct.line** %456 to i64*
  store i64 %455, i64* %457, align 8
  %458 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %439
  %459 = bitcast %struct.line** %458 to i64*
  %460 = load i64, i64* %459, align 8
  %461 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %418
  %462 = bitcast %struct.line** %461 to i64*
  store i64 %460, i64* %462, align 8
  br label %463

; <label>:463:                                    ; preds = %433, %438
  %464 = phi i64 [ %439, %438 ], [ %418, %433 ]
  br label %465

; <label>:465:                                    ; preds = %463
  %466 = icmp eq i64 %296, %418
  br i1 %466, label %469, label %467

; <label>:467:                                    ; preds = %465
  br label %559

; <label>:468:                                    ; preds = %559
  br label %469

; <label>:469:                                    ; preds = %465, %468
  br label %470

; <label>:470:                                    ; preds = %469, %428
  %471 = icmp eq i64 %419, 0
  br i1 %471, label %749, label %472

; <label>:472:                                    ; preds = %470
  %473 = icmp ult i64 %298, 4
  br i1 %473, label %474, label %476

; <label>:474:                                    ; preds = %557, %476, %472
  %475 = phi i64 [ 0, %476 ], [ 0, %472 ], [ %477, %557 ]
  br label %610

; <label>:476:                                    ; preds = %472
  %477 = and i64 %298, -4
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %474, label %479

; <label>:479:                                    ; preds = %476
  %480 = and i64 %294, 3
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %501, label %482

; <label>:482:                                    ; preds = %479
  br label %483

; <label>:483:                                    ; preds = %483, %482
  %484 = phi i64 [ %497, %483 ], [ 0, %482 ]
  %485 = phi i64 [ %498, %483 ], [ %480, %482 ]
  %486 = or i64 %484, 1
  %487 = getelementptr inbounds i64, i64* %21, i64 %486
  %488 = bitcast i64* %487 to <2 x i64>*
  %489 = load <2 x i64>, <2 x i64>* %488, align 8
  %490 = getelementptr i64, i64* %487, i64 2
  %491 = bitcast i64* %490 to <2 x i64>*
  %492 = load <2 x i64>, <2 x i64>* %491, align 8
  %493 = getelementptr inbounds i64, i64* %21, i64 %484
  %494 = bitcast i64* %493 to <2 x i64>*
  store <2 x i64> %489, <2 x i64>* %494, align 8
  %495 = getelementptr i64, i64* %493, i64 2
  %496 = bitcast i64* %495 to <2 x i64>*
  store <2 x i64> %492, <2 x i64>* %496, align 8
  %497 = add i64 %484, 4
  %498 = add i64 %485, -1
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %500, label %483

; <label>:500:                                    ; preds = %483
  br label %501

; <label>:501:                                    ; preds = %479, %500
  %502 = phi i64 [ 0, %479 ], [ %497, %500 ]
  %503 = icmp ult i64 %292, 12
  br i1 %503, label %557, label %504

; <label>:504:                                    ; preds = %501
  br label %505

; <label>:505:                                    ; preds = %505, %504
  %506 = phi i64 [ %502, %504 ], [ %554, %505 ]
  %507 = or i64 %506, 1
  %508 = getelementptr inbounds i64, i64* %21, i64 %507
  %509 = bitcast i64* %508 to <2 x i64>*
  %510 = load <2 x i64>, <2 x i64>* %509, align 8
  %511 = getelementptr i64, i64* %508, i64 2
  %512 = bitcast i64* %511 to <2 x i64>*
  %513 = load <2 x i64>, <2 x i64>* %512, align 8
  %514 = getelementptr inbounds i64, i64* %21, i64 %506
  %515 = bitcast i64* %514 to <2 x i64>*
  store <2 x i64> %510, <2 x i64>* %515, align 8
  %516 = getelementptr i64, i64* %514, i64 2
  %517 = bitcast i64* %516 to <2 x i64>*
  store <2 x i64> %513, <2 x i64>* %517, align 8
  %518 = add i64 %506, 4
  %519 = or i64 %518, 1
  %520 = getelementptr inbounds i64, i64* %21, i64 %519
  %521 = bitcast i64* %520 to <2 x i64>*
  %522 = load <2 x i64>, <2 x i64>* %521, align 8
  %523 = getelementptr i64, i64* %520, i64 2
  %524 = bitcast i64* %523 to <2 x i64>*
  %525 = load <2 x i64>, <2 x i64>* %524, align 8
  %526 = getelementptr inbounds i64, i64* %21, i64 %518
  %527 = bitcast i64* %526 to <2 x i64>*
  store <2 x i64> %522, <2 x i64>* %527, align 8
  %528 = getelementptr i64, i64* %526, i64 2
  %529 = bitcast i64* %528 to <2 x i64>*
  store <2 x i64> %525, <2 x i64>* %529, align 8
  %530 = add i64 %506, 8
  %531 = or i64 %530, 1
  %532 = getelementptr inbounds i64, i64* %21, i64 %531
  %533 = bitcast i64* %532 to <2 x i64>*
  %534 = load <2 x i64>, <2 x i64>* %533, align 8
  %535 = getelementptr i64, i64* %532, i64 2
  %536 = bitcast i64* %535 to <2 x i64>*
  %537 = load <2 x i64>, <2 x i64>* %536, align 8
  %538 = getelementptr inbounds i64, i64* %21, i64 %530
  %539 = bitcast i64* %538 to <2 x i64>*
  store <2 x i64> %534, <2 x i64>* %539, align 8
  %540 = getelementptr i64, i64* %538, i64 2
  %541 = bitcast i64* %540 to <2 x i64>*
  store <2 x i64> %537, <2 x i64>* %541, align 8
  %542 = add i64 %506, 12
  %543 = or i64 %542, 1
  %544 = getelementptr inbounds i64, i64* %21, i64 %543
  %545 = bitcast i64* %544 to <2 x i64>*
  %546 = load <2 x i64>, <2 x i64>* %545, align 8
  %547 = getelementptr i64, i64* %544, i64 2
  %548 = bitcast i64* %547 to <2 x i64>*
  %549 = load <2 x i64>, <2 x i64>* %548, align 8
  %550 = getelementptr inbounds i64, i64* %21, i64 %542
  %551 = bitcast i64* %550 to <2 x i64>*
  store <2 x i64> %546, <2 x i64>* %551, align 8
  %552 = getelementptr i64, i64* %550, i64 2
  %553 = bitcast i64* %552 to <2 x i64>*
  store <2 x i64> %549, <2 x i64>* %553, align 8
  %554 = add i64 %506, 16
  %555 = icmp eq i64 %554, %477
  br i1 %555, label %556, label %505

; <label>:556:                                    ; preds = %505
  br label %557

; <label>:557:                                    ; preds = %501, %556
  %558 = icmp eq i64 %298, %477
  br i1 %558, label %282, label %474

; <label>:559:                                    ; preds = %559, %467
  %560 = phi i64 [ %464, %467 ], [ %585, %559 ]
  %561 = add nuw i64 %560, 1
  %562 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %561
  %563 = bitcast %struct._IO_FILE** %562 to i64*
  %564 = load i64, i64* %563, align 8
  %565 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %560
  %566 = bitcast %struct._IO_FILE** %565 to i64*
  store i64 %564, i64* %566, align 8
  %567 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %560
  %568 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %561
  %569 = bitcast %struct.sortfile* %567 to i8*
  %570 = bitcast %struct.sortfile* %568 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %569, i8* %570, i64 16, i32 8, i1 false)
  %571 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %560
  %572 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %561
  %573 = bitcast %struct.buffer* %571 to i8*
  %574 = bitcast %struct.buffer* %572 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %573, i8* %574, i64 56, i32 8, i1 false)
  %575 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %561
  %576 = bitcast %struct.line** %575 to i64*
  %577 = load i64, i64* %576, align 8
  %578 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %560
  %579 = bitcast %struct.line** %578 to i64*
  store i64 %577, i64* %579, align 8
  %580 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %561
  %581 = bitcast %struct.line** %580 to i64*
  %582 = load i64, i64* %581, align 8
  %583 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %560
  %584 = bitcast %struct.line** %583 to i64*
  store i64 %582, i64* %584, align 8
  %585 = add i64 %560, 2
  %586 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %585
  %587 = bitcast %struct._IO_FILE** %586 to i64*
  %588 = load i64, i64* %587, align 8
  %589 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %5, i64 %561
  %590 = bitcast %struct._IO_FILE** %589 to i64*
  store i64 %588, i64* %590, align 8
  %591 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %561
  %592 = getelementptr inbounds %struct.sortfile, %struct.sortfile* %0, i64 %585
  %593 = bitcast %struct.sortfile* %591 to i8*
  %594 = bitcast %struct.sortfile* %592 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %593, i8* %594, i64 16, i32 8, i1 false)
  %595 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %561
  %596 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i64 %585
  %597 = bitcast %struct.buffer* %595 to i8*
  %598 = bitcast %struct.buffer* %596 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %597, i8* %598, i64 56, i32 8, i1 false)
  %599 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %585
  %600 = bitcast %struct.line** %599 to i64*
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %561
  %603 = bitcast %struct.line** %602 to i64*
  store i64 %601, i64* %603, align 8
  %604 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %585
  %605 = bitcast %struct.line** %604 to i64*
  %606 = load i64, i64* %605, align 8
  %607 = getelementptr inbounds %struct.line*, %struct.line** %19, i64 %561
  %608 = bitcast %struct.line** %607 to i64*
  store i64 %606, i64* %608, align 8
  %609 = icmp eq i64 %585, %299
  br i1 %609, label %468, label %559

; <label>:610:                                    ; preds = %474, %610
  %611 = phi i64 [ %612, %610 ], [ %475, %474 ]
  %612 = add nuw i64 %611, 1
  %613 = getelementptr inbounds i64, i64* %21, i64 %612
  %614 = load i64, i64* %613, align 8
  %615 = getelementptr inbounds i64, i64* %21, i64 %611
  store i64 %614, i64* %615, align 8
  %616 = icmp eq i64 %612, %299
  br i1 %616, label %281, label %610

; <label>:617:                                    ; preds = %387, %359
  %618 = phi %struct.line** [ %356, %387 ], [ %305, %359 ]
  %619 = phi %struct.line* [ %399, %387 ], [ %360, %359 ]
  store %struct.line* %619, %struct.line** %618, align 8
  br i1 %300, label %620, label %746

; <label>:620:                                    ; preds = %617
  %621 = load %struct.line*, %struct.line** %305, align 8
  br label %622

; <label>:622:                                    ; preds = %620, %639
  %623 = phi i64 [ 1, %620 ], [ %643, %639 ]
  %624 = phi i64 [ %287, %620 ], [ %641, %639 ]
  %625 = phi i64 [ 1, %620 ], [ %640, %639 ]
  %626 = getelementptr inbounds i64, i64* %21, i64 %623
  %627 = load i64, i64* %626, align 8
  %628 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 %627
  %629 = load %struct.line*, %struct.line** %628, align 8
  %630 = call fastcc i32 @compare(%struct.line* %621, %struct.line* %629)
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %639, label %632

; <label>:632:                                    ; preds = %622
  %633 = icmp eq i32 %630, 0
  %634 = icmp ult i64 %304, %627
  %635 = and i1 %633, %634
  %636 = add nuw i64 %623, 1
  %637 = select i1 %635, i64 %625, i64 %636
  %638 = select i1 %635, i64 %623, i64 %624
  br label %639

; <label>:639:                                    ; preds = %632, %622
  %640 = phi i64 [ %625, %622 ], [ %637, %632 ]
  %641 = phi i64 [ %623, %622 ], [ %638, %632 ]
  %642 = add i64 %641, %640
  %643 = lshr i64 %642, 1
  %644 = icmp ult i64 %640, %641
  br i1 %644, label %622, label %645

; <label>:645:                                    ; preds = %639
  %646 = add i64 %640, -1
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %746, label %648

; <label>:648:                                    ; preds = %645
  %649 = icmp ult i64 %646, 4
  br i1 %649, label %736, label %650

; <label>:650:                                    ; preds = %648
  %651 = and i64 %646, -4
  %652 = icmp eq i64 %651, 0
  br i1 %652, label %736, label %653

; <label>:653:                                    ; preds = %650
  %654 = add i64 %651, -4
  %655 = lshr exact i64 %654, 2
  %656 = add nuw nsw i64 %655, 1
  %657 = and i64 %656, 3
  %658 = icmp eq i64 %657, 0
  br i1 %658, label %678, label %659

; <label>:659:                                    ; preds = %653
  br label %660

; <label>:660:                                    ; preds = %660, %659
  %661 = phi i64 [ %674, %660 ], [ 0, %659 ]
  %662 = phi i64 [ %675, %660 ], [ %657, %659 ]
  %663 = or i64 %661, 1
  %664 = getelementptr inbounds i64, i64* %21, i64 %663
  %665 = bitcast i64* %664 to <2 x i64>*
  %666 = load <2 x i64>, <2 x i64>* %665, align 8
  %667 = getelementptr i64, i64* %664, i64 2
  %668 = bitcast i64* %667 to <2 x i64>*
  %669 = load <2 x i64>, <2 x i64>* %668, align 8
  %670 = getelementptr inbounds i64, i64* %21, i64 %661
  %671 = bitcast i64* %670 to <2 x i64>*
  store <2 x i64> %666, <2 x i64>* %671, align 8
  %672 = getelementptr i64, i64* %670, i64 2
  %673 = bitcast i64* %672 to <2 x i64>*
  store <2 x i64> %669, <2 x i64>* %673, align 8
  %674 = add i64 %661, 4
  %675 = add i64 %662, -1
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %677, label %660

; <label>:677:                                    ; preds = %660
  br label %678

; <label>:678:                                    ; preds = %653, %677
  %679 = phi i64 [ 0, %653 ], [ %674, %677 ]
  %680 = icmp ult i64 %654, 12
  br i1 %680, label %734, label %681

; <label>:681:                                    ; preds = %678
  br label %682

; <label>:682:                                    ; preds = %682, %681
  %683 = phi i64 [ %679, %681 ], [ %731, %682 ]
  %684 = or i64 %683, 1
  %685 = getelementptr inbounds i64, i64* %21, i64 %684
  %686 = bitcast i64* %685 to <2 x i64>*
  %687 = load <2 x i64>, <2 x i64>* %686, align 8
  %688 = getelementptr i64, i64* %685, i64 2
  %689 = bitcast i64* %688 to <2 x i64>*
  %690 = load <2 x i64>, <2 x i64>* %689, align 8
  %691 = getelementptr inbounds i64, i64* %21, i64 %683
  %692 = bitcast i64* %691 to <2 x i64>*
  store <2 x i64> %687, <2 x i64>* %692, align 8
  %693 = getelementptr i64, i64* %691, i64 2
  %694 = bitcast i64* %693 to <2 x i64>*
  store <2 x i64> %690, <2 x i64>* %694, align 8
  %695 = add i64 %683, 4
  %696 = or i64 %695, 1
  %697 = getelementptr inbounds i64, i64* %21, i64 %696
  %698 = bitcast i64* %697 to <2 x i64>*
  %699 = load <2 x i64>, <2 x i64>* %698, align 8
  %700 = getelementptr i64, i64* %697, i64 2
  %701 = bitcast i64* %700 to <2 x i64>*
  %702 = load <2 x i64>, <2 x i64>* %701, align 8
  %703 = getelementptr inbounds i64, i64* %21, i64 %695
  %704 = bitcast i64* %703 to <2 x i64>*
  store <2 x i64> %699, <2 x i64>* %704, align 8
  %705 = getelementptr i64, i64* %703, i64 2
  %706 = bitcast i64* %705 to <2 x i64>*
  store <2 x i64> %702, <2 x i64>* %706, align 8
  %707 = add i64 %683, 8
  %708 = or i64 %707, 1
  %709 = getelementptr inbounds i64, i64* %21, i64 %708
  %710 = bitcast i64* %709 to <2 x i64>*
  %711 = load <2 x i64>, <2 x i64>* %710, align 8
  %712 = getelementptr i64, i64* %709, i64 2
  %713 = bitcast i64* %712 to <2 x i64>*
  %714 = load <2 x i64>, <2 x i64>* %713, align 8
  %715 = getelementptr inbounds i64, i64* %21, i64 %707
  %716 = bitcast i64* %715 to <2 x i64>*
  store <2 x i64> %711, <2 x i64>* %716, align 8
  %717 = getelementptr i64, i64* %715, i64 2
  %718 = bitcast i64* %717 to <2 x i64>*
  store <2 x i64> %714, <2 x i64>* %718, align 8
  %719 = add i64 %683, 12
  %720 = or i64 %719, 1
  %721 = getelementptr inbounds i64, i64* %21, i64 %720
  %722 = bitcast i64* %721 to <2 x i64>*
  %723 = load <2 x i64>, <2 x i64>* %722, align 8
  %724 = getelementptr i64, i64* %721, i64 2
  %725 = bitcast i64* %724 to <2 x i64>*
  %726 = load <2 x i64>, <2 x i64>* %725, align 8
  %727 = getelementptr inbounds i64, i64* %21, i64 %719
  %728 = bitcast i64* %727 to <2 x i64>*
  store <2 x i64> %723, <2 x i64>* %728, align 8
  %729 = getelementptr i64, i64* %727, i64 2
  %730 = bitcast i64* %729 to <2 x i64>*
  store <2 x i64> %726, <2 x i64>* %730, align 8
  %731 = add i64 %683, 16
  %732 = icmp eq i64 %731, %651
  br i1 %732, label %733, label %682

; <label>:733:                                    ; preds = %682
  br label %734

; <label>:734:                                    ; preds = %678, %733
  %735 = icmp eq i64 %646, %651
  br i1 %735, label %746, label %736

; <label>:736:                                    ; preds = %734, %650, %648
  %737 = phi i64 [ 0, %650 ], [ 0, %648 ], [ %651, %734 ]
  br label %738

; <label>:738:                                    ; preds = %736, %738
  %739 = phi i64 [ %740, %738 ], [ %737, %736 ]
  %740 = add nuw i64 %739, 1
  %741 = getelementptr inbounds i64, i64* %21, i64 %740
  %742 = load i64, i64* %741, align 8
  %743 = getelementptr inbounds i64, i64* %21, i64 %739
  store i64 %742, i64* %743, align 8
  %744 = icmp eq i64 %740, %646
  br i1 %744, label %745, label %738

; <label>:745:                                    ; preds = %738
  br label %746

; <label>:746:                                    ; preds = %745, %734, %617, %645
  %747 = phi i64 [ 0, %645 ], [ 0, %617 ], [ %646, %734 ], [ %646, %745 ]
  %748 = getelementptr inbounds i64, i64* %21, i64 %747
  store i64 %304, i64* %748, align 8
  br label %301

; <label>:749:                                    ; preds = %282, %470
  %750 = load i1, i1* @unique, align 1
  %751 = icmp ne %struct.line* %355, null
  %752 = and i1 %751, %750
  br i1 %752, label %753, label %755

; <label>:753:                                    ; preds = %749
  call fastcc void @write_line(%struct.line* nonnull %7, %struct._IO_FILE* %3, i8* %4)
  %754 = load i8*, i8** %23, align 8
  call void @free(i8* %754) #12
  br label %755

; <label>:755:                                    ; preds = %49, %10, %253, %753, %749
  call fastcc void @xfclose(%struct._IO_FILE* %3, i8* %4)
  %756 = bitcast %struct._IO_FILE** %5 to i8*
  call void @free(i8* %756) #12
  call void @free(i8* %12) #12
  call void @free(i8* %20) #12
  call void @free(i8* %18) #12
  call void @free(i8* %16) #12
  call void @llvm.lifetime.end(i64 32, i8* nonnull %14) #12
  ret void

; <label>:757:                                    ; preds = %408
  %758 = add i64 %412, -1
  store i64 %758, i64* %411, align 8
  br label %759

; <label>:759:                                    ; preds = %757, %408
  %760 = add i64 %402, 2
  %761 = icmp eq i64 %760, %287
  %762 = load i64, i64* %21, align 8
  br i1 %761, label %414, label %400
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @zaptemp(i8*) unnamed_addr #6 {
  %2 = alloca %struct.cs_status, align 8
  %3 = alloca %struct.cs_status, align 8
  %4 = alloca %struct.tempnode, align 8
  %5 = alloca %struct.cs_status, align 8
  %6 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %5, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %6)
  br label %7

; <label>:7:                                      ; preds = %7, %1
  %8 = phi %struct.tempnode** [ @temphead, %1 ], [ %12, %7 ]
  %9 = load volatile %struct.tempnode*, %struct.tempnode** %8, align 8
  %10 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %9, i64 0, i32 3, i64 0
  %11 = icmp eq i8* %10, %0
  %12 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %9, i64 0, i32 0
  br i1 %11, label %13, label %7

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %9, i64 0, i32 2
  %15 = load i8, i8* %14, align 4
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %9, i64 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = bitcast %struct.tempnode* %4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %20) #12
  %21 = getelementptr inbounds %struct.tempnode, %struct.tempnode* %4, i64 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hash_table*, %struct.hash_table** @proctab, align 8
  %23 = call i8* @hash_delete(%struct.hash_table* %22, i8* nonnull %20) #12
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %17
  call void @llvm.lifetime.end(i64 16, i8* nonnull %20) #12
  br label %29

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds i8, i8* %23, i64 12
  store i8 2, i8* %27, align 4
  call void @llvm.lifetime.end(i64 16, i8* nonnull %20) #12
  %28 = call fastcc i32 @reap(i32 %19) #12
  br label %29

; <label>:29:                                     ; preds = %26, %25, %13
  %30 = load volatile %struct.tempnode*, %struct.tempnode** %12, align 8
  %31 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %31) #12
  %32 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %3, i64 0, i32 1
  %33 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* %32) #12
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %31, align 8
  %36 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %5, i64 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %31, i64 136, i32 8, i1 false) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %31) #12
  %37 = call i32 @unlink(i8* %0) #12
  %38 = tail call i32* @__errno_location() #1
  %39 = load i32, i32* %38, align 4
  store volatile %struct.tempnode* %30, %struct.tempnode** %8, align 8
  %40 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %2, i64 0, i32 0
  call void @llvm.lifetime.start(i64 136, i8* nonnull %40)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %40, i8* nonnull %6, i64 136, i32 8, i1 false) #12
  %41 = load i8, i8* %40, align 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %29
  %44 = getelementptr inbounds %struct.cs_status, %struct.cs_status* %2, i64 0, i32 1
  %45 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* %44, %struct.__sigset_t* null) #12
  br label %46

; <label>:46:                                     ; preds = %29, %43
  call void @llvm.lifetime.end(i64 136, i8* nonnull %40)
  %47 = icmp eq i32 %37, 0
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %46
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.175, i64 0, i64 0), i32 5) #12
  %50 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %39, i8* %49, i8* %50) #12
  br label %51

; <label>:51:                                     ; preds = %46, %48
  %52 = icmp eq %struct.tempnode* %30, null
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %51
  store %struct.tempnode** %8, %struct.tempnode*** @temptail, align 8
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = bitcast %struct.tempnode* %9 to i8*
  call void @free(i8* %55) #12
  call void @llvm.lifetime.end(i64 136, i8* nonnull %6)
  ret void
}

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @begfield(%struct.line* nocapture readonly, %struct.keyfield* nocapture readonly) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = getelementptr inbounds i8, i8* %7, i64 -1
  %9 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @tab, align 4
  %14 = icmp eq i32 %13, 128
  %15 = icmp ult i8* %4, %8
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %2
  br i1 %15, label %17, label %83

; <label>:17:                                     ; preds = %16
  br label %20

; <label>:18:                                     ; preds = %2
  br i1 %15, label %19, label %83

; <label>:19:                                     ; preds = %18
  br label %45

; <label>:20:                                     ; preds = %17, %37
  %21 = phi i8* [ %38, %37 ], [ %4, %17 ]
  %22 = phi i64 [ %23, %37 ], [ %10, %17 ]
  %23 = add i64 %22, -1
  %24 = icmp eq i64 %22, 0
  br i1 %24, label %81, label %25

; <label>:25:                                     ; preds = %20
  %26 = icmp ult i8* %21, %8
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %25
  br label %28

; <label>:28:                                     ; preds = %27, %28
  %29 = phi i8* [ %33, %28 ], [ %21, %27 ]
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, %13
  %33 = getelementptr inbounds i8, i8* %29, i64 1
  %34 = icmp ult i8* %33, %8
  %35 = and i1 %32, %34
  br i1 %35, label %28, label %36

; <label>:36:                                     ; preds = %28
  br label %37

; <label>:37:                                     ; preds = %36, %25
  %38 = phi i8* [ %21, %25 ], [ %33, %36 ]
  %39 = icmp ult i8* %38, %8
  br i1 %39, label %20, label %81

; <label>:40:                                     ; preds = %76, %69
  %41 = phi i8* [ %77, %76 ], [ %70, %69 ]
  br label %42

; <label>:42:                                     ; preds = %40, %62
  %43 = phi i8* [ %63, %62 ], [ %41, %40 ]
  %44 = icmp ult i8* %43, %8
  br i1 %44, label %45, label %79

; <label>:45:                                     ; preds = %19, %42
  %46 = phi i8* [ %43, %42 ], [ %4, %19 ]
  %47 = phi i64 [ %48, %42 ], [ %10, %19 ]
  %48 = add i64 %47, -1
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %79, label %50

; <label>:50:                                     ; preds = %45
  %51 = icmp ult i8* %46, %8
  br i1 %51, label %52, label %62

; <label>:52:                                     ; preds = %50
  br label %53

; <label>:53:                                     ; preds = %52, %66
  %54 = phi i8* [ %67, %66 ], [ %46, %52 ]
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %66, %53
  %61 = phi i8* [ %67, %66 ], [ %54, %53 ]
  br label %62

; <label>:62:                                     ; preds = %60, %50
  %63 = phi i8* [ %46, %50 ], [ %61, %60 ]
  %64 = icmp ult i8* %63, %8
  br i1 %64, label %65, label %42

; <label>:65:                                     ; preds = %62
  br label %69

; <label>:66:                                     ; preds = %53
  %67 = getelementptr inbounds i8, i8* %54, i64 1
  %68 = icmp ult i8* %67, %8
  br i1 %68, label %53, label %60

; <label>:69:                                     ; preds = %65, %76
  %70 = phi i8* [ %77, %76 ], [ %63, %65 ]
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %40

; <label>:76:                                     ; preds = %69
  %77 = getelementptr inbounds i8, i8* %70, i64 1
  %78 = icmp ult i8* %77, %8
  br i1 %78, label %69, label %40

; <label>:79:                                     ; preds = %45, %42
  %80 = phi i8* [ %43, %42 ], [ %46, %45 ]
  br label %83

; <label>:81:                                     ; preds = %20, %37
  %82 = phi i8* [ %38, %37 ], [ %21, %20 ]
  br label %83

; <label>:83:                                     ; preds = %81, %79, %16, %18
  %84 = phi i8* [ %4, %18 ], [ %4, %16 ], [ %80, %79 ], [ %82, %81 ]
  %85 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 6
  %86 = load i8, i8* %85, align 8
  %87 = icmp ne i8 %86, 0
  %88 = icmp ult i8* %84, %8
  %89 = and i1 %87, %88
  br i1 %89, label %90, label %103

; <label>:90:                                     ; preds = %83
  br label %91

; <label>:91:                                     ; preds = %90, %98
  %92 = phi i8* [ %99, %98 ], [ %84, %90 ]
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %101, label %98

; <label>:98:                                     ; preds = %91
  %99 = getelementptr inbounds i8, i8* %92, i64 1
  %100 = icmp ult i8* %99, %8
  br i1 %100, label %91, label %101

; <label>:101:                                    ; preds = %91, %98
  %102 = phi i8* [ %99, %98 ], [ %92, %91 ]
  br label %103

; <label>:103:                                    ; preds = %101, %83
  %104 = phi i8* [ %84, %83 ], [ %102, %101 ]
  %105 = getelementptr inbounds i8, i8* %104, i64 %12
  %106 = icmp ult i8* %8, %105
  %107 = select i1 %106, i8* %8, i8* %105
  ret i8* %107
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @limfield(%struct.line* nocapture readonly, %struct.keyfield* nocapture readonly) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds %struct.line, %struct.line* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = getelementptr inbounds i8, i8* %7, i64 -1
  %9 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = add i64 %14, %10
  %16 = load i32, i32* @tab, align 4
  %17 = icmp eq i32 %16, 128
  %18 = icmp ult i8* %4, %8
  br i1 %17, label %21, label %19

; <label>:19:                                     ; preds = %2
  br i1 %18, label %20, label %91

; <label>:20:                                     ; preds = %19
  br label %23

; <label>:21:                                     ; preds = %2
  br i1 %18, label %22, label %91

; <label>:22:                                     ; preds = %21
  br label %53

; <label>:23:                                     ; preds = %20, %45
  %24 = phi i8* [ %46, %45 ], [ %4, %20 ]
  %25 = phi i64 [ %26, %45 ], [ %15, %20 ]
  %26 = add i64 %25, -1
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %89, label %28

; <label>:28:                                     ; preds = %23
  %29 = icmp ult i8* %24, %8
  br i1 %29, label %30, label %45

; <label>:30:                                     ; preds = %28
  br label %31

; <label>:31:                                     ; preds = %30, %36
  %32 = phi i8* [ %37, %36 ], [ %24, %30 ]
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, %16
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  %38 = icmp ult i8* %37, %8
  br i1 %38, label %31, label %44

; <label>:39:                                     ; preds = %31
  %40 = or i64 %26, %12
  %41 = icmp eq i64 %40, 0
  %42 = getelementptr inbounds i8, i8* %32, i64 1
  %43 = select i1 %41, i8* %32, i8* %42
  br label %45

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %44, %28, %39
  %46 = phi i8* [ %43, %39 ], [ %24, %28 ], [ %37, %44 ]
  %47 = icmp ult i8* %46, %8
  br i1 %47, label %23, label %89

; <label>:48:                                     ; preds = %84, %77
  %49 = phi i8* [ %85, %84 ], [ %78, %77 ]
  br label %50

; <label>:50:                                     ; preds = %48, %70
  %51 = phi i8* [ %71, %70 ], [ %49, %48 ]
  %52 = icmp ult i8* %51, %8
  br i1 %52, label %53, label %87

; <label>:53:                                     ; preds = %22, %50
  %54 = phi i8* [ %51, %50 ], [ %4, %22 ]
  %55 = phi i64 [ %56, %50 ], [ %15, %22 ]
  %56 = add i64 %55, -1
  %57 = icmp eq i64 %55, 0
  br i1 %57, label %87, label %58

; <label>:58:                                     ; preds = %53
  %59 = icmp ult i8* %54, %8
  br i1 %59, label %60, label %70

; <label>:60:                                     ; preds = %58
  br label %61

; <label>:61:                                     ; preds = %60, %74
  %62 = phi i8* [ %75, %74 ], [ %54, %60 ]
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %74, %61
  %69 = phi i8* [ %75, %74 ], [ %62, %61 ]
  br label %70

; <label>:70:                                     ; preds = %68, %58
  %71 = phi i8* [ %54, %58 ], [ %69, %68 ]
  %72 = icmp ult i8* %71, %8
  br i1 %72, label %73, label %50

; <label>:73:                                     ; preds = %70
  br label %77

; <label>:74:                                     ; preds = %61
  %75 = getelementptr inbounds i8, i8* %62, i64 1
  %76 = icmp ult i8* %75, %8
  br i1 %76, label %61, label %68

; <label>:77:                                     ; preds = %73, %84
  %78 = phi i8* [ %85, %84 ], [ %71, %73 ]
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %48

; <label>:84:                                     ; preds = %77
  %85 = getelementptr inbounds i8, i8* %78, i64 1
  %86 = icmp ult i8* %85, %8
  br i1 %86, label %77, label %48

; <label>:87:                                     ; preds = %53, %50
  %88 = phi i8* [ %51, %50 ], [ %54, %53 ]
  br label %91

; <label>:89:                                     ; preds = %23, %45
  %90 = phi i8* [ %46, %45 ], [ %24, %23 ]
  br label %91

; <label>:91:                                     ; preds = %89, %87, %19, %21
  %92 = phi i8* [ %4, %21 ], [ %4, %19 ], [ %88, %87 ], [ %90, %89 ]
  br i1 %13, label %117, label %93

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct.keyfield, %struct.keyfield* %1, i64 0, i32 7
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  %97 = icmp ult i8* %92, %8
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %112

; <label>:99:                                     ; preds = %93
  br label %100

; <label>:100:                                    ; preds = %99, %107
  %101 = phi i8* [ %108, %107 ], [ %92, %99 ]
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* @blanks, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %110, label %107

; <label>:107:                                    ; preds = %100
  %108 = getelementptr inbounds i8, i8* %101, i64 1
  %109 = icmp ult i8* %108, %8
  br i1 %109, label %100, label %110

; <label>:110:                                    ; preds = %100, %107
  %111 = phi i8* [ %108, %107 ], [ %101, %100 ]
  br label %112

; <label>:112:                                    ; preds = %110, %93
  %113 = phi i8* [ %92, %93 ], [ %111, %110 ]
  %114 = getelementptr inbounds i8, i8* %113, i64 %12
  %115 = icmp ult i8* %8, %114
  %116 = select i1 %115, i8* %8, i8* %114
  br label %117

; <label>:117:                                    ; preds = %91, %112
  %118 = phi i8* [ %116, %112 ], [ %92, %91 ]
  ret i8* %118
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #2

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @xstrxfrm(i8* noalias nocapture, i8* noalias, i64) unnamed_addr #6 {
  %4 = tail call i32* @__errno_location() #1
  store i32 0, i32* %4, align 4
  %5 = tail call i64 @strxfrm(i8* %0, i8* %1, i64 %2) #12
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

; <label>:8:                                      ; preds = %3
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.160, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %6, i8* %9) #12
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.161, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %10) #12
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.162, i64 0, i64 0), i32 5) #12
  %12 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  tail call void (i32, i32, i8*, ...) @error(i32 2, i32 0, i8* %11, i8* %12) #12
  unreachable

; <label>:13:                                     ; preds = %3
  ret i64 %5
}

; Function Attrs: nounwind
declare i64 @strxfrm(i8* nocapture, i8* nocapture readonly, i64) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #12
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 {
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

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.66, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.67, i64 0, i64 0), i32 5) #12
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
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.68, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.69, i64 0, i64 0), i8* %26) #12
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
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.66, i64 0, i64 0)
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
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 {
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
define void @close_stdout() local_unnamed_addr #6 {
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.76, i64 0, i64 0), i8* %12) #12
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

; Function Attrs: nounwind sspstrong uwtable
define void @md5_init_ctx(%struct.md5_ctx* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.md5_ctx* %0 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %2, align 4
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5
  store i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* nocapture readonly, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = bitcast i8* %1 to i32*
  store i32 %4, i32* %5, align 1
  %6 = getelementptr inbounds i8, i8* %1, i64 4
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = bitcast i8* %6 to i32*
  store i32 %8, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = bitcast i8* %10 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %1, i64 12
  %15 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = bitcast i8* %14 to i32*
  store i32 %16, i32* %17, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx*, i8* returned) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 5
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 56
  %6 = select i1 %5, i64 16, i64 32
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, %4
  store i32 %9, i32* %7, align 4
  %10 = icmp ult i32 %9, %4
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 4, i64 1
  br i1 %10, label %12, label %15

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* %11, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %11, align 4
  br label %15

; <label>:15:                                     ; preds = %2, %12
  %16 = shl i32 %9, 3
  %17 = add nsw i64 %6, -2
  %18 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %17
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %11, align 4
  %20 = shl i32 %19, 3
  %21 = lshr i32 %9, 29
  %22 = or i32 %21, %20
  %23 = add nsw i64 %6, -1
  %24 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 %23
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 6, i64 0
  %26 = bitcast i32* %25 to i8*
  %27 = zext i32 %4 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = shl nsw i64 %17, 2
  %30 = sub nsw i64 %29, %27
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf.81, i64 0, i64 0), i64 %30, i32 1, i1 false)
  %31 = shl nuw nsw i64 %6, 2
  tail call void @md5_process_block(i8* %26, i64 %31, %struct.md5_ctx* nonnull %0) #12
  %32 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = bitcast i8* %1 to i32*
  store i32 %33, i32* %34, align 1
  %35 = getelementptr inbounds i8, i8* %1, i64 4
  %36 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = bitcast i8* %35 to i32*
  store i32 %37, i32* %38, align 1
  %39 = getelementptr inbounds i8, i8* %1, i64 8
  %40 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = bitcast i8* %39 to i32*
  store i32 %41, i32* %42, align 1
  %43 = getelementptr inbounds i8, i8* %1, i64 12
  %44 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %0, i64 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = bitcast i8* %43 to i32*
  store i32 %45, i32* %46, align 1
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_block(i8* readonly, i64, %struct.md5_ctx* nocapture) local_unnamed_addr #6 {
  %4 = bitcast i8* %0 to i32*
  %5 = lshr i64 %1, 2
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = trunc i64 %1 to i32
  %16 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = lshr i64 %1, 32
  %20 = icmp ult i32 %18, %15
  %21 = zext i1 %20 to i64
  %22 = add nuw nsw i64 %21, %19
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 4, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = add nuw nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = icmp ult i32* %4, %6
  br i1 %28, label %29, label %697

; <label>:29:                                     ; preds = %3
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi i32* [ %223, %30 ], [ %4, %29 ]
  %32 = phi i32 [ %690, %30 ], [ %8, %29 ]
  %33 = phi i32 [ %692, %30 ], [ %10, %29 ]
  %34 = phi i32 [ %693, %30 ], [ %12, %29 ]
  %35 = phi i32 [ %694, %30 ], [ %14, %29 ]
  %36 = xor i32 %34, %35
  %37 = and i32 %33, %36
  %38 = xor i32 %37, %35
  %39 = load i32, i32* %31, align 4
  %40 = add i32 %32, -680876936
  %41 = add i32 %40, %38
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds i32, i32* %31, i64 1
  %44 = shl i32 %42, 7
  %45 = lshr i32 %42, 25
  %46 = or i32 %44, %45
  %47 = add i32 %46, %33
  %48 = xor i32 %33, %34
  %49 = and i32 %47, %48
  %50 = xor i32 %49, %34
  %51 = load i32, i32* %43, align 4
  %52 = add i32 %35, -389564586
  %53 = add i32 %52, %51
  %54 = add i32 %53, %50
  %55 = getelementptr inbounds i32, i32* %31, i64 2
  %56 = shl i32 %54, 12
  %57 = lshr i32 %54, 20
  %58 = or i32 %56, %57
  %59 = add i32 %58, %47
  %60 = xor i32 %47, %33
  %61 = and i32 %59, %60
  %62 = xor i32 %61, %33
  %63 = load i32, i32* %55, align 4
  %64 = add i32 %34, 606105819
  %65 = add i32 %64, %63
  %66 = add i32 %65, %62
  %67 = getelementptr inbounds i32, i32* %31, i64 3
  %68 = shl i32 %66, 17
  %69 = lshr i32 %66, 15
  %70 = or i32 %68, %69
  %71 = add i32 %70, %59
  %72 = xor i32 %59, %47
  %73 = and i32 %71, %72
  %74 = xor i32 %73, %47
  %75 = load i32, i32* %67, align 4
  %76 = add i32 %33, -1044525330
  %77 = add i32 %76, %75
  %78 = add i32 %77, %74
  %79 = getelementptr inbounds i32, i32* %31, i64 4
  %80 = shl i32 %78, 22
  %81 = lshr i32 %78, 10
  %82 = or i32 %80, %81
  %83 = add i32 %82, %71
  %84 = xor i32 %71, %59
  %85 = and i32 %83, %84
  %86 = xor i32 %85, %59
  %87 = load i32, i32* %79, align 4
  %88 = add i32 %87, -176418897
  %89 = add i32 %88, %47
  %90 = add i32 %89, %86
  %91 = getelementptr inbounds i32, i32* %31, i64 5
  %92 = shl i32 %90, 7
  %93 = lshr i32 %90, 25
  %94 = or i32 %92, %93
  %95 = add i32 %94, %83
  %96 = xor i32 %83, %71
  %97 = and i32 %95, %96
  %98 = xor i32 %97, %71
  %99 = load i32, i32* %91, align 4
  %100 = add i32 %99, 1200080426
  %101 = add i32 %100, %59
  %102 = add i32 %101, %98
  %103 = getelementptr inbounds i32, i32* %31, i64 6
  %104 = shl i32 %102, 12
  %105 = lshr i32 %102, 20
  %106 = or i32 %104, %105
  %107 = add i32 %106, %95
  %108 = xor i32 %95, %83
  %109 = and i32 %107, %108
  %110 = xor i32 %109, %83
  %111 = load i32, i32* %103, align 4
  %112 = add i32 %111, -1473231341
  %113 = add i32 %112, %71
  %114 = add i32 %113, %110
  %115 = getelementptr inbounds i32, i32* %31, i64 7
  %116 = shl i32 %114, 17
  %117 = lshr i32 %114, 15
  %118 = or i32 %116, %117
  %119 = add i32 %118, %107
  %120 = xor i32 %107, %95
  %121 = and i32 %119, %120
  %122 = xor i32 %121, %95
  %123 = load i32, i32* %115, align 4
  %124 = add i32 %123, -45705983
  %125 = add i32 %124, %83
  %126 = add i32 %125, %122
  %127 = getelementptr inbounds i32, i32* %31, i64 8
  %128 = shl i32 %126, 22
  %129 = lshr i32 %126, 10
  %130 = or i32 %128, %129
  %131 = add i32 %130, %119
  %132 = xor i32 %119, %107
  %133 = and i32 %131, %132
  %134 = xor i32 %133, %107
  %135 = load i32, i32* %127, align 4
  %136 = add i32 %135, 1770035416
  %137 = add i32 %136, %95
  %138 = add i32 %137, %134
  %139 = getelementptr inbounds i32, i32* %31, i64 9
  %140 = shl i32 %138, 7
  %141 = lshr i32 %138, 25
  %142 = or i32 %140, %141
  %143 = add i32 %142, %131
  %144 = xor i32 %131, %119
  %145 = and i32 %143, %144
  %146 = xor i32 %145, %119
  %147 = load i32, i32* %139, align 4
  %148 = add i32 %147, -1958414417
  %149 = add i32 %148, %107
  %150 = add i32 %149, %146
  %151 = getelementptr inbounds i32, i32* %31, i64 10
  %152 = shl i32 %150, 12
  %153 = lshr i32 %150, 20
  %154 = or i32 %152, %153
  %155 = add i32 %154, %143
  %156 = xor i32 %143, %131
  %157 = and i32 %155, %156
  %158 = xor i32 %157, %131
  %159 = load i32, i32* %151, align 4
  %160 = add i32 %159, -42063
  %161 = add i32 %160, %119
  %162 = add i32 %161, %158
  %163 = getelementptr inbounds i32, i32* %31, i64 11
  %164 = shl i32 %162, 17
  %165 = lshr i32 %162, 15
  %166 = or i32 %164, %165
  %167 = add i32 %166, %155
  %168 = xor i32 %155, %143
  %169 = and i32 %167, %168
  %170 = xor i32 %169, %143
  %171 = load i32, i32* %163, align 4
  %172 = add i32 %171, -1990404162
  %173 = add i32 %172, %131
  %174 = add i32 %173, %170
  %175 = getelementptr inbounds i32, i32* %31, i64 12
  %176 = shl i32 %174, 22
  %177 = lshr i32 %174, 10
  %178 = or i32 %176, %177
  %179 = add i32 %178, %167
  %180 = xor i32 %167, %155
  %181 = and i32 %179, %180
  %182 = xor i32 %181, %155
  %183 = load i32, i32* %175, align 4
  %184 = add i32 %183, 1804603682
  %185 = add i32 %184, %143
  %186 = add i32 %185, %182
  %187 = getelementptr inbounds i32, i32* %31, i64 13
  %188 = shl i32 %186, 7
  %189 = lshr i32 %186, 25
  %190 = or i32 %188, %189
  %191 = add i32 %190, %179
  %192 = xor i32 %179, %167
  %193 = and i32 %191, %192
  %194 = xor i32 %193, %167
  %195 = load i32, i32* %187, align 4
  %196 = add i32 %195, -40341101
  %197 = add i32 %196, %155
  %198 = add i32 %197, %194
  %199 = getelementptr inbounds i32, i32* %31, i64 14
  %200 = shl i32 %198, 12
  %201 = lshr i32 %198, 20
  %202 = or i32 %200, %201
  %203 = add i32 %202, %191
  %204 = xor i32 %191, %179
  %205 = and i32 %203, %204
  %206 = xor i32 %205, %179
  %207 = load i32, i32* %199, align 4
  %208 = add i32 %207, -1502002290
  %209 = add i32 %208, %167
  %210 = add i32 %209, %206
  %211 = getelementptr inbounds i32, i32* %31, i64 15
  %212 = shl i32 %210, 17
  %213 = lshr i32 %210, 15
  %214 = or i32 %212, %213
  %215 = add i32 %214, %203
  %216 = xor i32 %203, %191
  %217 = and i32 %215, %216
  %218 = xor i32 %217, %191
  %219 = load i32, i32* %211, align 4
  %220 = add i32 %219, 1236535329
  %221 = add i32 %220, %179
  %222 = add i32 %221, %218
  %223 = getelementptr inbounds i32, i32* %31, i64 16
  %224 = shl i32 %222, 22
  %225 = lshr i32 %222, 10
  %226 = or i32 %224, %225
  %227 = add i32 %226, %215
  %228 = xor i32 %227, %215
  %229 = and i32 %228, %203
  %230 = xor i32 %229, %215
  %231 = add i32 %51, -165796510
  %232 = add i32 %231, %191
  %233 = add i32 %232, %230
  %234 = shl i32 %233, 5
  %235 = lshr i32 %233, 27
  %236 = or i32 %234, %235
  %237 = add i32 %236, %227
  %238 = xor i32 %237, %227
  %239 = and i32 %238, %215
  %240 = xor i32 %239, %227
  %241 = add i32 %111, -1069501632
  %242 = add i32 %241, %203
  %243 = add i32 %242, %240
  %244 = shl i32 %243, 9
  %245 = lshr i32 %243, 23
  %246 = or i32 %244, %245
  %247 = add i32 %246, %237
  %248 = xor i32 %247, %237
  %249 = and i32 %248, %227
  %250 = xor i32 %249, %237
  %251 = add i32 %171, 643717713
  %252 = add i32 %251, %215
  %253 = add i32 %252, %250
  %254 = shl i32 %253, 14
  %255 = lshr i32 %253, 18
  %256 = or i32 %254, %255
  %257 = add i32 %256, %247
  %258 = xor i32 %257, %247
  %259 = and i32 %258, %237
  %260 = xor i32 %259, %247
  %261 = add i32 %39, -373897302
  %262 = add i32 %261, %227
  %263 = add i32 %262, %260
  %264 = shl i32 %263, 20
  %265 = lshr i32 %263, 12
  %266 = or i32 %264, %265
  %267 = add i32 %266, %257
  %268 = xor i32 %267, %257
  %269 = and i32 %268, %247
  %270 = xor i32 %269, %257
  %271 = add i32 %99, -701558691
  %272 = add i32 %271, %237
  %273 = add i32 %272, %270
  %274 = shl i32 %273, 5
  %275 = lshr i32 %273, 27
  %276 = or i32 %274, %275
  %277 = add i32 %276, %267
  %278 = xor i32 %277, %267
  %279 = and i32 %278, %257
  %280 = xor i32 %279, %267
  %281 = add i32 %159, 38016083
  %282 = add i32 %281, %247
  %283 = add i32 %282, %280
  %284 = shl i32 %283, 9
  %285 = lshr i32 %283, 23
  %286 = or i32 %284, %285
  %287 = add i32 %286, %277
  %288 = xor i32 %287, %277
  %289 = and i32 %288, %267
  %290 = xor i32 %289, %277
  %291 = add i32 %219, -660478335
  %292 = add i32 %291, %257
  %293 = add i32 %292, %290
  %294 = shl i32 %293, 14
  %295 = lshr i32 %293, 18
  %296 = or i32 %294, %295
  %297 = add i32 %296, %287
  %298 = xor i32 %297, %287
  %299 = and i32 %298, %277
  %300 = xor i32 %299, %287
  %301 = add i32 %87, -405537848
  %302 = add i32 %301, %267
  %303 = add i32 %302, %300
  %304 = shl i32 %303, 20
  %305 = lshr i32 %303, 12
  %306 = or i32 %304, %305
  %307 = add i32 %306, %297
  %308 = xor i32 %307, %297
  %309 = and i32 %308, %287
  %310 = xor i32 %309, %297
  %311 = add i32 %147, 568446438
  %312 = add i32 %311, %277
  %313 = add i32 %312, %310
  %314 = shl i32 %313, 5
  %315 = lshr i32 %313, 27
  %316 = or i32 %314, %315
  %317 = add i32 %316, %307
  %318 = xor i32 %317, %307
  %319 = and i32 %318, %297
  %320 = xor i32 %319, %307
  %321 = add i32 %207, -1019803690
  %322 = add i32 %321, %287
  %323 = add i32 %322, %320
  %324 = shl i32 %323, 9
  %325 = lshr i32 %323, 23
  %326 = or i32 %324, %325
  %327 = add i32 %326, %317
  %328 = xor i32 %327, %317
  %329 = and i32 %328, %307
  %330 = xor i32 %329, %317
  %331 = add i32 %75, -187363961
  %332 = add i32 %331, %297
  %333 = add i32 %332, %330
  %334 = shl i32 %333, 14
  %335 = lshr i32 %333, 18
  %336 = or i32 %334, %335
  %337 = add i32 %336, %327
  %338 = xor i32 %337, %327
  %339 = and i32 %338, %317
  %340 = xor i32 %339, %327
  %341 = add i32 %135, 1163531501
  %342 = add i32 %341, %307
  %343 = add i32 %342, %340
  %344 = shl i32 %343, 20
  %345 = lshr i32 %343, 12
  %346 = or i32 %344, %345
  %347 = add i32 %346, %337
  %348 = xor i32 %347, %337
  %349 = and i32 %348, %327
  %350 = xor i32 %349, %337
  %351 = add i32 %195, -1444681467
  %352 = add i32 %351, %317
  %353 = add i32 %352, %350
  %354 = shl i32 %353, 5
  %355 = lshr i32 %353, 27
  %356 = or i32 %354, %355
  %357 = add i32 %356, %347
  %358 = xor i32 %357, %347
  %359 = and i32 %358, %337
  %360 = xor i32 %359, %347
  %361 = add i32 %63, -51403784
  %362 = add i32 %361, %327
  %363 = add i32 %362, %360
  %364 = shl i32 %363, 9
  %365 = lshr i32 %363, 23
  %366 = or i32 %364, %365
  %367 = add i32 %366, %357
  %368 = xor i32 %367, %357
  %369 = and i32 %368, %347
  %370 = xor i32 %369, %357
  %371 = add i32 %123, 1735328473
  %372 = add i32 %371, %337
  %373 = add i32 %372, %370
  %374 = shl i32 %373, 14
  %375 = lshr i32 %373, 18
  %376 = or i32 %374, %375
  %377 = add i32 %376, %367
  %378 = xor i32 %377, %367
  %379 = and i32 %378, %357
  %380 = xor i32 %379, %367
  %381 = add i32 %183, -1926607734
  %382 = add i32 %381, %347
  %383 = add i32 %382, %380
  %384 = shl i32 %383, 20
  %385 = lshr i32 %383, 12
  %386 = or i32 %384, %385
  %387 = add i32 %386, %377
  %388 = xor i32 %378, %387
  %389 = add i32 %99, -378558
  %390 = add i32 %389, %357
  %391 = add i32 %390, %388
  %392 = shl i32 %391, 4
  %393 = lshr i32 %391, 28
  %394 = or i32 %392, %393
  %395 = add i32 %394, %387
  %396 = xor i32 %387, %377
  %397 = xor i32 %396, %395
  %398 = add i32 %135, -2022574463
  %399 = add i32 %398, %367
  %400 = add i32 %399, %397
  %401 = shl i32 %400, 11
  %402 = lshr i32 %400, 21
  %403 = or i32 %401, %402
  %404 = add i32 %403, %395
  %405 = xor i32 %395, %387
  %406 = xor i32 %405, %404
  %407 = add i32 %171, 1839030562
  %408 = add i32 %407, %377
  %409 = add i32 %408, %406
  %410 = shl i32 %409, 16
  %411 = lshr i32 %409, 16
  %412 = or i32 %410, %411
  %413 = add i32 %412, %404
  %414 = xor i32 %404, %395
  %415 = xor i32 %414, %413
  %416 = add i32 %207, -35309556
  %417 = add i32 %416, %387
  %418 = add i32 %417, %415
  %419 = shl i32 %418, 23
  %420 = lshr i32 %418, 9
  %421 = or i32 %419, %420
  %422 = add i32 %421, %413
  %423 = xor i32 %413, %404
  %424 = xor i32 %423, %422
  %425 = add i32 %51, -1530992060
  %426 = add i32 %425, %395
  %427 = add i32 %426, %424
  %428 = shl i32 %427, 4
  %429 = lshr i32 %427, 28
  %430 = or i32 %428, %429
  %431 = add i32 %430, %422
  %432 = xor i32 %422, %413
  %433 = xor i32 %432, %431
  %434 = add i32 %87, 1272893353
  %435 = add i32 %434, %404
  %436 = add i32 %435, %433
  %437 = shl i32 %436, 11
  %438 = lshr i32 %436, 21
  %439 = or i32 %437, %438
  %440 = add i32 %439, %431
  %441 = xor i32 %431, %422
  %442 = xor i32 %441, %440
  %443 = add i32 %123, -155497632
  %444 = add i32 %443, %413
  %445 = add i32 %444, %442
  %446 = shl i32 %445, 16
  %447 = lshr i32 %445, 16
  %448 = or i32 %446, %447
  %449 = add i32 %448, %440
  %450 = xor i32 %440, %431
  %451 = xor i32 %450, %449
  %452 = add i32 %159, -1094730640
  %453 = add i32 %452, %422
  %454 = add i32 %453, %451
  %455 = shl i32 %454, 23
  %456 = lshr i32 %454, 9
  %457 = or i32 %455, %456
  %458 = add i32 %457, %449
  %459 = xor i32 %449, %440
  %460 = xor i32 %459, %458
  %461 = add i32 %195, 681279174
  %462 = add i32 %461, %431
  %463 = add i32 %462, %460
  %464 = shl i32 %463, 4
  %465 = lshr i32 %463, 28
  %466 = or i32 %464, %465
  %467 = add i32 %466, %458
  %468 = xor i32 %458, %449
  %469 = xor i32 %468, %467
  %470 = add i32 %39, -358537222
  %471 = add i32 %470, %440
  %472 = add i32 %471, %469
  %473 = shl i32 %472, 11
  %474 = lshr i32 %472, 21
  %475 = or i32 %473, %474
  %476 = add i32 %475, %467
  %477 = xor i32 %467, %458
  %478 = xor i32 %477, %476
  %479 = add i32 %75, -722521979
  %480 = add i32 %479, %449
  %481 = add i32 %480, %478
  %482 = shl i32 %481, 16
  %483 = lshr i32 %481, 16
  %484 = or i32 %482, %483
  %485 = add i32 %484, %476
  %486 = xor i32 %476, %467
  %487 = xor i32 %486, %485
  %488 = add i32 %111, 76029189
  %489 = add i32 %488, %458
  %490 = add i32 %489, %487
  %491 = shl i32 %490, 23
  %492 = lshr i32 %490, 9
  %493 = or i32 %491, %492
  %494 = add i32 %493, %485
  %495 = xor i32 %485, %476
  %496 = xor i32 %495, %494
  %497 = add i32 %147, -640364487
  %498 = add i32 %497, %467
  %499 = add i32 %498, %496
  %500 = shl i32 %499, 4
  %501 = lshr i32 %499, 28
  %502 = or i32 %500, %501
  %503 = add i32 %502, %494
  %504 = xor i32 %494, %485
  %505 = xor i32 %504, %503
  %506 = add i32 %183, -421815835
  %507 = add i32 %506, %476
  %508 = add i32 %507, %505
  %509 = shl i32 %508, 11
  %510 = lshr i32 %508, 21
  %511 = or i32 %509, %510
  %512 = add i32 %511, %503
  %513 = xor i32 %503, %494
  %514 = xor i32 %513, %512
  %515 = add i32 %219, 530742520
  %516 = add i32 %515, %485
  %517 = add i32 %516, %514
  %518 = shl i32 %517, 16
  %519 = lshr i32 %517, 16
  %520 = or i32 %518, %519
  %521 = add i32 %520, %512
  %522 = xor i32 %512, %503
  %523 = xor i32 %522, %521
  %524 = add i32 %63, -995338651
  %525 = add i32 %524, %494
  %526 = add i32 %525, %523
  %527 = shl i32 %526, 23
  %528 = lshr i32 %526, 9
  %529 = or i32 %527, %528
  %530 = add i32 %529, %521
  %531 = xor i32 %512, -1
  %532 = or i32 %530, %531
  %533 = xor i32 %532, %521
  %534 = add i32 %39, -198630844
  %535 = add i32 %534, %503
  %536 = add i32 %535, %533
  %537 = shl i32 %536, 6
  %538 = lshr i32 %536, 26
  %539 = or i32 %537, %538
  %540 = add i32 %539, %530
  %541 = xor i32 %521, -1
  %542 = or i32 %540, %541
  %543 = xor i32 %542, %530
  %544 = add i32 %123, 1126891415
  %545 = add i32 %544, %512
  %546 = add i32 %545, %543
  %547 = shl i32 %546, 10
  %548 = lshr i32 %546, 22
  %549 = or i32 %547, %548
  %550 = add i32 %549, %540
  %551 = xor i32 %530, -1
  %552 = or i32 %550, %551
  %553 = xor i32 %552, %540
  %554 = add i32 %207, -1416354905
  %555 = add i32 %554, %521
  %556 = add i32 %555, %553
  %557 = shl i32 %556, 15
  %558 = lshr i32 %556, 17
  %559 = or i32 %557, %558
  %560 = add i32 %559, %550
  %561 = xor i32 %540, -1
  %562 = or i32 %560, %561
  %563 = xor i32 %562, %550
  %564 = add i32 %99, -57434055
  %565 = add i32 %564, %530
  %566 = add i32 %565, %563
  %567 = shl i32 %566, 21
  %568 = lshr i32 %566, 11
  %569 = or i32 %567, %568
  %570 = add i32 %569, %560
  %571 = xor i32 %550, -1
  %572 = or i32 %570, %571
  %573 = xor i32 %572, %560
  %574 = add i32 %183, 1700485571
  %575 = add i32 %574, %540
  %576 = add i32 %575, %573
  %577 = shl i32 %576, 6
  %578 = lshr i32 %576, 26
  %579 = or i32 %577, %578
  %580 = add i32 %579, %570
  %581 = xor i32 %560, -1
  %582 = or i32 %580, %581
  %583 = xor i32 %582, %570
  %584 = add i32 %75, -1894986606
  %585 = add i32 %584, %550
  %586 = add i32 %585, %583
  %587 = shl i32 %586, 10
  %588 = lshr i32 %586, 22
  %589 = or i32 %587, %588
  %590 = add i32 %589, %580
  %591 = xor i32 %570, -1
  %592 = or i32 %590, %591
  %593 = xor i32 %592, %580
  %594 = add i32 %159, -1051523
  %595 = add i32 %594, %560
  %596 = add i32 %595, %593
  %597 = shl i32 %596, 15
  %598 = lshr i32 %596, 17
  %599 = or i32 %597, %598
  %600 = add i32 %599, %590
  %601 = xor i32 %580, -1
  %602 = or i32 %600, %601
  %603 = xor i32 %602, %590
  %604 = add i32 %51, -2054922799
  %605 = add i32 %604, %570
  %606 = add i32 %605, %603
  %607 = shl i32 %606, 21
  %608 = lshr i32 %606, 11
  %609 = or i32 %607, %608
  %610 = add i32 %609, %600
  %611 = xor i32 %590, -1
  %612 = or i32 %610, %611
  %613 = xor i32 %612, %600
  %614 = add i32 %135, 1873313359
  %615 = add i32 %614, %580
  %616 = add i32 %615, %613
  %617 = shl i32 %616, 6
  %618 = lshr i32 %616, 26
  %619 = or i32 %617, %618
  %620 = add i32 %619, %610
  %621 = xor i32 %600, -1
  %622 = or i32 %620, %621
  %623 = xor i32 %622, %610
  %624 = add i32 %219, -30611744
  %625 = add i32 %624, %590
  %626 = add i32 %625, %623
  %627 = shl i32 %626, 10
  %628 = lshr i32 %626, 22
  %629 = or i32 %627, %628
  %630 = add i32 %629, %620
  %631 = xor i32 %610, -1
  %632 = or i32 %630, %631
  %633 = xor i32 %632, %620
  %634 = add i32 %111, -1560198380
  %635 = add i32 %634, %600
  %636 = add i32 %635, %633
  %637 = shl i32 %636, 15
  %638 = lshr i32 %636, 17
  %639 = or i32 %637, %638
  %640 = add i32 %639, %630
  %641 = xor i32 %620, -1
  %642 = or i32 %640, %641
  %643 = xor i32 %642, %630
  %644 = add i32 %195, 1309151649
  %645 = add i32 %644, %610
  %646 = add i32 %645, %643
  %647 = shl i32 %646, 21
  %648 = lshr i32 %646, 11
  %649 = or i32 %647, %648
  %650 = add i32 %649, %640
  %651 = xor i32 %630, -1
  %652 = or i32 %650, %651
  %653 = xor i32 %652, %640
  %654 = add i32 %87, -145523070
  %655 = add i32 %654, %620
  %656 = add i32 %655, %653
  %657 = shl i32 %656, 6
  %658 = lshr i32 %656, 26
  %659 = or i32 %657, %658
  %660 = add i32 %659, %650
  %661 = xor i32 %640, -1
  %662 = or i32 %660, %661
  %663 = xor i32 %662, %650
  %664 = add i32 %171, -1120210379
  %665 = add i32 %664, %630
  %666 = add i32 %665, %663
  %667 = shl i32 %666, 10
  %668 = lshr i32 %666, 22
  %669 = or i32 %667, %668
  %670 = add i32 %669, %660
  %671 = xor i32 %650, -1
  %672 = or i32 %670, %671
  %673 = xor i32 %672, %660
  %674 = add i32 %63, 718787259
  %675 = add i32 %674, %640
  %676 = add i32 %675, %673
  %677 = shl i32 %676, 15
  %678 = lshr i32 %676, 17
  %679 = or i32 %677, %678
  %680 = add i32 %679, %670
  %681 = xor i32 %660, -1
  %682 = or i32 %680, %681
  %683 = xor i32 %682, %670
  %684 = add i32 %147, -343485551
  %685 = add i32 %684, %650
  %686 = add i32 %685, %683
  %687 = shl i32 %686, 21
  %688 = lshr i32 %686, 11
  %689 = or i32 %687, %688
  %690 = add i32 %660, %32
  %691 = add i32 %680, %33
  %692 = add i32 %691, %689
  %693 = add i32 %680, %34
  %694 = add i32 %670, %35
  %695 = icmp ult i32* %223, %6
  br i1 %695, label %30, label %696

; <label>:696:                                    ; preds = %30
  br label %697

; <label>:697:                                    ; preds = %696, %3
  %698 = phi i32 [ %14, %3 ], [ %694, %696 ]
  %699 = phi i32 [ %12, %3 ], [ %693, %696 ]
  %700 = phi i32 [ %10, %3 ], [ %692, %696 ]
  %701 = phi i32 [ %8, %3 ], [ %690, %696 ]
  store i32 %701, i32* %7, align 4
  store i32 %700, i32* %9, align 4
  store i32 %699, i32* %11, align 4
  store i32 %698, i32* %13, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @md5_stream(%struct._IO_FILE*, i8* nocapture) local_unnamed_addr #6 {
  %3 = alloca %struct.md5_ctx, align 16
  %4 = bitcast %struct.md5_ctx* %3 to i8*
  call void @llvm.lifetime.start(i64 156, i8* nonnull %4) #12
  %5 = tail call noalias i8* @malloc(i64 32840) #12
  %6 = icmp eq i8* %5, null
  br i1 %6, label %66, label %7

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.md5_ctx* %3 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %8, align 16
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 4, i64 0
  store i32 0, i32* %10, align 16
  %11 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 5
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  br label %13

; <label>:13:                                     ; preds = %31, %7
  br label %14

; <label>:14:                                     ; preds = %28, %13
  %15 = phi i64 [ 0, %13 ], [ %19, %28 ]
  %16 = getelementptr inbounds i8, i8* %5, i64 %15
  %17 = sub i64 32768, %15
  %18 = tail call i64 @fread_unlocked(i8* %16, i64 1, i64 %17, %struct._IO_FILE* %0) #12
  %19 = add i64 %18, %15
  %20 = icmp eq i64 %19, 32768
  br i1 %20, label %31, label %21

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i64 %18, 0
  %23 = load i32, i32* %12, align 8
  br i1 %22, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = and i32 %23, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

; <label>:27:                                     ; preds = %24
  tail call void @free(i8* %5) #12
  br label %66

; <label>:28:                                     ; preds = %21
  %29 = and i32 %23, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %14, label %32

; <label>:31:                                     ; preds = %14
  call void @md5_process_block(i8* nonnull %5, i64 32768, %struct.md5_ctx* nonnull %3) #12
  br label %13

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %32, %24
  %34 = icmp eq i64 %19, 0
  br i1 %34, label %36, label %35

; <label>:35:                                     ; preds = %33
  call void @md5_process_bytes(i8* nonnull %5, i64 %19, %struct.md5_ctx* nonnull %3) #12
  br label %36

; <label>:36:                                     ; preds = %33, %35
  %37 = load i32, i32* %11, align 8
  %38 = icmp ult i32 %37, 56
  %39 = select i1 %38, i64 16, i64 32
  %40 = load i32, i32* %10, align 16
  %41 = add i32 %40, %37
  store i32 %41, i32* %10, align 16
  %42 = icmp ult i32 %41, %37
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %46

; <label>:46:                                     ; preds = %36, %43
  %47 = shl i32 %41, 3
  %48 = add nsw i64 %39, -2
  %49 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %48
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %50, 3
  %52 = lshr i32 %41, 29
  %53 = or i32 %51, %52
  %54 = add nsw i64 %39, -1
  %55 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 %54
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %3, i64 0, i32 6, i64 0
  %57 = bitcast i32* %56 to i8*
  %58 = zext i32 %37 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = shl nsw i64 %48, 2
  %61 = sub nsw i64 %60, %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf.81, i64 0, i64 0), i64 %61, i32 1, i1 false) #12
  %62 = shl nuw nsw i64 %39, 2
  call void @md5_process_block(i8* %57, i64 %62, %struct.md5_ctx* nonnull %3) #12
  %63 = bitcast %struct.md5_ctx* %3 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 16
  %65 = bitcast i8* %1 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %65, align 1
  call void @free(i8* %5) #12
  br label %66

; <label>:66:                                     ; preds = %27, %2, %46
  %67 = phi i32 [ 0, %46 ], [ 1, %2 ], [ 1, %27 ]
  call void @llvm.lifetime.end(i64 156, i8* nonnull %4) #12
  ret i32 %67
}

; Function Attrs: nounwind sspstrong uwtable
define void @md5_process_bytes(i8* readonly, i64, %struct.md5_ctx*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

; <label>:7:                                      ; preds = %3
  %8 = zext i32 %5 to i64
  %9 = sub nsw i64 128, %8
  %10 = icmp ugt i64 %9, %1
  %11 = select i1 %10, i64 %1, i64 %9
  %12 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 0
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
  tail call void @md5_process_block(i8* %13, i64 %19, %struct.md5_ctx* nonnull %2) #12
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
  tail call void @md5_process_block(i8* %30, i64 %33, %struct.md5_ctx* nonnull %2) #12
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
  %43 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6
  %44 = bitcast [32 x i32]* %43 to i8*
  %45 = getelementptr inbounds i8, i8* %44, i64 %42
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %38, i64 %37, i32 1, i1 false)
  %46 = add i64 %42, %37
  %47 = icmp ugt i64 %46, 63
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %40
  tail call void @md5_process_block(i8* %44, i64 64, %struct.md5_ctx* nonnull %2) #12
  %49 = add i64 %46, -64
  %50 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %2, i64 0, i32 6, i64 16
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
define i8* @md5_buffer(i8* readonly, i64, i8* returned) local_unnamed_addr #6 {
  %4 = alloca %struct.md5_ctx, align 16
  %5 = bitcast %struct.md5_ctx* %4 to i8*
  call void @llvm.lifetime.start(i64 156, i8* nonnull %5) #12
  %6 = bitcast %struct.md5_ctx* %4 to <4 x i32>*
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, <4 x i32>* %6, align 16
  %7 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 4, i64 0
  store i32 0, i32* %8, align 16
  %9 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 5
  store i32 0, i32* %9, align 8
  call void @md5_process_bytes(i8* %0, i64 %1, %struct.md5_ctx* nonnull %4) #12
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %10, 56
  %12 = select i1 %11, i64 16, i64 32
  %13 = load i32, i32* %8, align 16
  %14 = add i32 %13, %10
  store i32 %14, i32* %8, align 16
  %15 = icmp ult i32 %14, %10
  %16 = load i32, i32* %7, align 4
  br i1 %15, label %17, label %19

; <label>:17:                                     ; preds = %3
  %18 = add i32 %16, 1
  store i32 %18, i32* %7, align 4
  br label %19

; <label>:19:                                     ; preds = %3, %17
  %20 = phi i32 [ %18, %17 ], [ %16, %3 ]
  %21 = shl i32 %14, 3
  %22 = add nsw i64 %12, -2
  %23 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %22
  store i32 %21, i32* %23, align 4
  %24 = shl i32 %20, 3
  %25 = lshr i32 %14, 29
  %26 = or i32 %24, %25
  %27 = add nsw i64 %12, -1
  %28 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 %27
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.md5_ctx, %struct.md5_ctx* %4, i64 0, i32 6, i64 0
  %30 = bitcast i32* %29 to i8*
  %31 = zext i32 %10 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = shl nsw i64 %22, 2
  %34 = sub nsw i64 %33, %31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @fillbuf.81, i64 0, i64 0), i64 %34, i32 1, i1 false) #12
  %35 = shl nuw nsw i64 %12, 2
  call void @md5_process_block(i8* %30, i64 %35, %struct.md5_ctx* nonnull %4) #12
  %36 = bitcast %struct.md5_ctx* %4 to <4 x i32>*
  %37 = load <4 x i32>, <4 x i32>* %36, align 16
  %38 = bitcast i8* %2 to <4 x i32>*
  store <4 x i32> %37, <4 x i32>* %38, align 1
  call void @llvm.lifetime.end(i64 156, i8* nonnull %5) #12
  ret i8* %2
}

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

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @filevercmp(i8*, i8*) local_unnamed_addr #9 {
  %3 = tail call i32 @strcmp(i8* %0, i8* %1) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %301, label %5

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %0, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %301, label %8

; <label>:8:                                      ; preds = %5
  %9 = load i8, i8* %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %301, label %11

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i8 %6, 46
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds i8, i8* %0, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %301, label %17

; <label>:17:                                     ; preds = %11, %13
  %18 = icmp eq i8 %9, 46
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds i8, i8* %1, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %301, label %23

; <label>:23:                                     ; preds = %17, %19
  br i1 %12, label %24, label %32

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds i8, i8* %0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 46
  br i1 %27, label %28, label %32

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds i8, i8* %0, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %301, label %32

; <label>:32:                                     ; preds = %23, %24, %28
  br i1 %18, label %33, label %41

; <label>:33:                                     ; preds = %32
  %34 = getelementptr inbounds i8, i8* %1, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %35, 46
  br i1 %36, label %37, label %41

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 2
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %301, label %41

; <label>:41:                                     ; preds = %32, %33, %37
  br i1 %12, label %42, label %43

; <label>:42:                                     ; preds = %41
  br i1 %18, label %44, label %301

; <label>:43:                                     ; preds = %41
  br i1 %18, label %301, label %48

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds i8, i8* %0, i64 1
  %46 = getelementptr inbounds i8, i8* %1, i64 1
  %47 = load i8, i8* %45, align 1
  br label %48

; <label>:48:                                     ; preds = %43, %44
  %49 = phi i8 [ %47, %44 ], [ %6, %43 ]
  %50 = phi i8* [ %46, %44 ], [ %1, %43 ]
  %51 = phi i8* [ %45, %44 ], [ %0, %43 ]
  %52 = icmp eq i8 %49, 0
  br i1 %52, label %90, label %53

; <label>:53:                                     ; preds = %48
  br label %54

; <label>:54:                                     ; preds = %53, %83
  %55 = phi i8 [ %87, %83 ], [ %49, %53 ]
  %56 = phi i8* [ %86, %83 ], [ %51, %53 ]
  %57 = phi i8 [ %85, %83 ], [ 0, %53 ]
  %58 = phi i8* [ %84, %83 ], [ null, %53 ]
  %59 = and i8 %57, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

; <label>:61:                                     ; preds = %54
  %62 = sext i8 %55 to i32
  %63 = add nsw i32 %62, -65
  %64 = icmp ult i32 %63, 58
  br i1 %64, label %65, label %70

; <label>:65:                                     ; preds = %61
  %66 = zext i32 %63 to i58
  %67 = lshr i58 -4227858433, %66
  %68 = and i58 %67, 1
  %69 = icmp eq i58 %68, 0
  br i1 %69, label %70, label %83

; <label>:70:                                     ; preds = %65, %61
  %71 = icmp eq i8 %55, 126
  %72 = select i1 %71, i8* %58, i8* null
  br label %83

; <label>:73:                                     ; preds = %54
  %74 = icmp eq i8 %55, 46
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %73
  %76 = icmp eq i8* %58, null
  %77 = select i1 %76, i8* %56, i8* %58
  br label %83

; <label>:78:                                     ; preds = %73
  %79 = sext i8 %55 to i32
  switch i32 %79, label %80 [
    i32 48, label %83
    i32 49, label %83
    i32 50, label %83
    i32 51, label %83
    i32 52, label %83
    i32 53, label %83
    i32 54, label %83
    i32 55, label %83
    i32 56, label %83
    i32 57, label %83
    i32 97, label %83
    i32 98, label %83
    i32 99, label %83
    i32 100, label %83
    i32 101, label %83
    i32 102, label %83
    i32 103, label %83
    i32 104, label %83
    i32 105, label %83
    i32 106, label %83
    i32 107, label %83
    i32 108, label %83
    i32 109, label %83
    i32 110, label %83
    i32 111, label %83
    i32 112, label %83
    i32 113, label %83
    i32 114, label %83
    i32 115, label %83
    i32 116, label %83
    i32 117, label %83
    i32 118, label %83
    i32 119, label %83
    i32 120, label %83
    i32 121, label %83
    i32 122, label %83
    i32 65, label %83
    i32 66, label %83
    i32 67, label %83
    i32 68, label %83
    i32 69, label %83
    i32 70, label %83
    i32 71, label %83
    i32 72, label %83
    i32 73, label %83
    i32 74, label %83
    i32 75, label %83
    i32 76, label %83
    i32 77, label %83
    i32 78, label %83
    i32 79, label %83
    i32 80, label %83
    i32 81, label %83
    i32 82, label %83
    i32 83, label %83
    i32 84, label %83
    i32 85, label %83
    i32 86, label %83
    i32 87, label %83
    i32 88, label %83
    i32 89, label %83
    i32 90, label %83
  ]

; <label>:80:                                     ; preds = %78
  %81 = icmp eq i8 %55, 126
  %82 = select i1 %81, i8* %58, i8* null
  br label %83

; <label>:83:                                     ; preds = %80, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %78, %75, %70, %65
  %84 = phi i8* [ %58, %65 ], [ %72, %70 ], [ %77, %75 ], [ %82, %80 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ], [ %58, %78 ]
  %85 = phi i8 [ 0, %65 ], [ 0, %70 ], [ 1, %75 ], [ %57, %80 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ], [ %57, %78 ]
  %86 = getelementptr inbounds i8, i8* %56, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %54

; <label>:89:                                     ; preds = %83
  br label %90

; <label>:90:                                     ; preds = %89, %48
  %91 = phi i8* [ %51, %48 ], [ %86, %89 ]
  %92 = phi i8* [ null, %48 ], [ %84, %89 ]
  %93 = load i8, i8* %50, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %132, label %95

; <label>:95:                                     ; preds = %90
  br label %96

; <label>:96:                                     ; preds = %95, %125
  %97 = phi i8 [ %129, %125 ], [ %93, %95 ]
  %98 = phi i8* [ %128, %125 ], [ %50, %95 ]
  %99 = phi i8 [ %127, %125 ], [ 0, %95 ]
  %100 = phi i8* [ %126, %125 ], [ null, %95 ]
  %101 = and i8 %99, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %115, label %103

; <label>:103:                                    ; preds = %96
  %104 = sext i8 %97 to i32
  %105 = add nsw i32 %104, -65
  %106 = icmp ult i32 %105, 58
  br i1 %106, label %107, label %112

; <label>:107:                                    ; preds = %103
  %108 = zext i32 %105 to i58
  %109 = lshr i58 -4227858433, %108
  %110 = and i58 %109, 1
  %111 = icmp eq i58 %110, 0
  br i1 %111, label %112, label %125

; <label>:112:                                    ; preds = %107, %103
  %113 = icmp eq i8 %97, 126
  %114 = select i1 %113, i8* %100, i8* null
  br label %125

; <label>:115:                                    ; preds = %96
  %116 = icmp eq i8 %97, 46
  br i1 %116, label %117, label %120

; <label>:117:                                    ; preds = %115
  %118 = icmp eq i8* %100, null
  %119 = select i1 %118, i8* %98, i8* %100
  br label %125

; <label>:120:                                    ; preds = %115
  %121 = sext i8 %97 to i32
  switch i32 %121, label %122 [
    i32 48, label %125
    i32 49, label %125
    i32 50, label %125
    i32 51, label %125
    i32 52, label %125
    i32 53, label %125
    i32 54, label %125
    i32 55, label %125
    i32 56, label %125
    i32 57, label %125
    i32 97, label %125
    i32 98, label %125
    i32 99, label %125
    i32 100, label %125
    i32 101, label %125
    i32 102, label %125
    i32 103, label %125
    i32 104, label %125
    i32 105, label %125
    i32 106, label %125
    i32 107, label %125
    i32 108, label %125
    i32 109, label %125
    i32 110, label %125
    i32 111, label %125
    i32 112, label %125
    i32 113, label %125
    i32 114, label %125
    i32 115, label %125
    i32 116, label %125
    i32 117, label %125
    i32 118, label %125
    i32 119, label %125
    i32 120, label %125
    i32 121, label %125
    i32 122, label %125
    i32 65, label %125
    i32 66, label %125
    i32 67, label %125
    i32 68, label %125
    i32 69, label %125
    i32 70, label %125
    i32 71, label %125
    i32 72, label %125
    i32 73, label %125
    i32 74, label %125
    i32 75, label %125
    i32 76, label %125
    i32 77, label %125
    i32 78, label %125
    i32 79, label %125
    i32 80, label %125
    i32 81, label %125
    i32 82, label %125
    i32 83, label %125
    i32 84, label %125
    i32 85, label %125
    i32 86, label %125
    i32 87, label %125
    i32 88, label %125
    i32 89, label %125
    i32 90, label %125
  ]

; <label>:122:                                    ; preds = %120
  %123 = icmp eq i8 %97, 126
  %124 = select i1 %123, i8* %100, i8* null
  br label %125

; <label>:125:                                    ; preds = %122, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %120, %117, %112, %107
  %126 = phi i8* [ %100, %107 ], [ %114, %112 ], [ %119, %117 ], [ %124, %122 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ], [ %100, %120 ]
  %127 = phi i8 [ 0, %107 ], [ 0, %112 ], [ 1, %117 ], [ %99, %122 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ], [ %99, %120 ]
  %128 = getelementptr inbounds i8, i8* %98, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %96

; <label>:131:                                    ; preds = %125
  br label %132

; <label>:132:                                    ; preds = %131, %90
  %133 = phi i8* [ %50, %90 ], [ %128, %131 ]
  %134 = phi i8* [ null, %90 ], [ %126, %131 ]
  %135 = icmp ne i8* %92, null
  %136 = select i1 %135, i8* %92, i8* %91
  %137 = ptrtoint i8* %136 to i64
  %138 = ptrtoint i8* %51 to i64
  %139 = sub i64 %137, %138
  %140 = icmp ne i8* %134, null
  %141 = select i1 %140, i8* %134, i8* %133
  %142 = ptrtoint i8* %141 to i64
  %143 = ptrtoint i8* %50 to i64
  %144 = sub i64 %142, %143
  %145 = or i1 %135, %140
  %146 = icmp eq i64 %139, %144
  %147 = and i1 %145, %146
  br i1 %147, label %148, label %156

; <label>:148:                                    ; preds = %132
  %149 = tail call i32 @strncmp(i8* %51, i8* %50, i64 %139) #14
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

; <label>:151:                                    ; preds = %148
  %152 = ptrtoint i8* %91 to i64
  %153 = sub i64 %152, %138
  %154 = ptrtoint i8* %133 to i64
  %155 = sub i64 %154, %143
  br label %156

; <label>:156:                                    ; preds = %132, %151, %148
  %157 = phi i64 [ %155, %151 ], [ %139, %148 ], [ %144, %132 ]
  %158 = phi i64 [ %153, %151 ], [ %139, %148 ], [ %139, %132 ]
  br label %159

; <label>:159:                                    ; preds = %293, %156
  %160 = phi i64 [ 0, %156 ], [ %281, %293 ]
  %161 = phi i64 [ 0, %156 ], [ %283, %293 ]
  %162 = icmp ult i64 %161, %158
  %163 = icmp ult i64 %160, %157
  %164 = or i1 %163, %162
  br i1 %164, label %165, label %295

; <label>:165:                                    ; preds = %159
  br label %166

; <label>:166:                                    ; preds = %165, %229
  %167 = phi i64 [ %231, %229 ], [ %160, %165 ]
  %168 = phi i64 [ %230, %229 ], [ %161, %165 ]
  %169 = icmp ult i64 %168, %158
  br i1 %169, label %170, label %176

; <label>:170:                                    ; preds = %166
  %171 = getelementptr inbounds i8, i8* %51, i64 %168
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = add nsw i32 %173, -48
  %175 = icmp ult i32 %174, 10
  br i1 %175, label %176, label %185

; <label>:176:                                    ; preds = %170, %166
  %177 = icmp ult i64 %167, %157
  br i1 %177, label %179, label %178

; <label>:178:                                    ; preds = %179, %176
  br label %234

; <label>:179:                                    ; preds = %176
  %180 = getelementptr inbounds i8, i8* %50, i64 %167
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = add nsw i32 %182, -48
  %184 = icmp ult i32 %183, 10
  br i1 %184, label %178, label %185

; <label>:185:                                    ; preds = %179, %170
  %186 = icmp eq i64 %168, %158
  br i1 %186, label %205, label %187

; <label>:187:                                    ; preds = %185
  %188 = getelementptr inbounds i8, i8* %51, i64 %168
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = add nsw i32 %190, -48
  %192 = icmp ult i32 %191, 10
  br i1 %192, label %205, label %193

; <label>:193:                                    ; preds = %187
  %194 = add nsw i32 %190, -65
  %195 = icmp ult i32 %194, 58
  br i1 %195, label %196, label %201

; <label>:196:                                    ; preds = %193
  %197 = zext i32 %194 to i58
  %198 = lshr i58 -4227858433, %197
  %199 = and i58 %198, 1
  %200 = icmp eq i58 %199, 0
  br i1 %200, label %201, label %205

; <label>:201:                                    ; preds = %196, %193
  %202 = icmp eq i8 %189, 126
  %203 = or i32 %190, 256
  %204 = select i1 %202, i32 -1, i32 %203
  br label %205

; <label>:205:                                    ; preds = %201, %196, %187, %185
  %206 = phi i32 [ 0, %185 ], [ %204, %201 ], [ 0, %187 ], [ %190, %196 ]
  %207 = icmp eq i64 %167, %157
  br i1 %207, label %226, label %208

; <label>:208:                                    ; preds = %205
  %209 = getelementptr inbounds i8, i8* %50, i64 %167
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = add nsw i32 %211, -48
  %213 = icmp ult i32 %212, 10
  br i1 %213, label %226, label %214

; <label>:214:                                    ; preds = %208
  %215 = add nsw i32 %211, -65
  %216 = icmp ult i32 %215, 58
  br i1 %216, label %217, label %222

; <label>:217:                                    ; preds = %214
  %218 = zext i32 %215 to i58
  %219 = lshr i58 -4227858433, %218
  %220 = and i58 %219, 1
  %221 = icmp eq i58 %220, 0
  br i1 %221, label %222, label %226

; <label>:222:                                    ; preds = %217, %214
  %223 = icmp eq i8 %210, 126
  %224 = or i32 %211, 256
  %225 = select i1 %223, i32 -1, i32 %224
  br label %226

; <label>:226:                                    ; preds = %222, %217, %208, %205
  %227 = phi i32 [ 0, %205 ], [ %225, %222 ], [ 0, %208 ], [ %211, %217 ]
  %228 = icmp eq i32 %206, %227
  br i1 %228, label %229, label %232

; <label>:229:                                    ; preds = %226
  %230 = add i64 %168, 1
  %231 = add i64 %167, 1
  br label %166

; <label>:232:                                    ; preds = %226
  %233 = sub nsw i32 %206, %227
  br label %297

; <label>:234:                                    ; preds = %178, %234
  %235 = phi i64 [ %239, %234 ], [ %168, %178 ]
  %236 = getelementptr inbounds i8, i8* %51, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = icmp eq i8 %237, 48
  %239 = add i64 %235, 1
  br i1 %238, label %234, label %240

; <label>:240:                                    ; preds = %234
  br label %241

; <label>:241:                                    ; preds = %240, %241
  %242 = phi i64 [ %246, %241 ], [ %167, %240 ]
  %243 = getelementptr inbounds i8, i8* %50, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = icmp eq i8 %244, 48
  %246 = add i64 %242, 1
  br i1 %245, label %241, label %247

; <label>:247:                                    ; preds = %241
  %248 = sext i8 %237 to i32
  %249 = add nsw i32 %248, -48
  %250 = icmp ult i32 %249, 10
  br i1 %250, label %251, label %279

; <label>:251:                                    ; preds = %247
  %252 = sext i8 %244 to i32
  %253 = add nsw i32 %252, -48
  %254 = icmp ult i32 %253, 10
  br i1 %254, label %255, label %279

; <label>:255:                                    ; preds = %251
  br label %256

; <label>:256:                                    ; preds = %255, %272
  %257 = phi i32 [ %275, %272 ], [ %252, %255 ]
  %258 = phi i64 [ %266, %272 ], [ %242, %255 ]
  %259 = phi i32 [ %264, %272 ], [ 0, %255 ]
  %260 = phi i64 [ %265, %272 ], [ %235, %255 ]
  %261 = phi i32 [ %269, %272 ], [ %248, %255 ]
  %262 = icmp eq i32 %259, 0
  %263 = sub nsw i32 %261, %257
  %264 = select i1 %262, i32 %263, i32 %259
  %265 = add i64 %260, 1
  %266 = add i64 %258, 1
  %267 = getelementptr inbounds i8, i8* %51, i64 %265
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = add nsw i32 %269, -48
  %271 = icmp ult i32 %270, 10
  br i1 %271, label %272, label %278

; <label>:272:                                    ; preds = %256
  %273 = getelementptr inbounds i8, i8* %50, i64 %266
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = add nsw i32 %275, -48
  %277 = icmp ult i32 %276, 10
  br i1 %277, label %256, label %278

; <label>:278:                                    ; preds = %256, %272
  br label %279

; <label>:279:                                    ; preds = %278, %251, %247
  %280 = phi i8 [ %237, %247 ], [ %237, %251 ], [ %268, %278 ]
  %281 = phi i64 [ %242, %247 ], [ %242, %251 ], [ %266, %278 ]
  %282 = phi i32 [ 0, %247 ], [ 0, %251 ], [ %264, %278 ]
  %283 = phi i64 [ %235, %247 ], [ %235, %251 ], [ %265, %278 ]
  %284 = sext i8 %280 to i32
  %285 = add nsw i32 %284, -48
  %286 = icmp ult i32 %285, 10
  br i1 %286, label %295, label %287

; <label>:287:                                    ; preds = %279
  %288 = getelementptr inbounds i8, i8* %50, i64 %281
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  %291 = add nsw i32 %290, -48
  %292 = icmp ult i32 %291, 10
  br i1 %292, label %295, label %293

; <label>:293:                                    ; preds = %287
  %294 = icmp eq i32 %282, 0
  br i1 %294, label %159, label %295

; <label>:295:                                    ; preds = %293, %287, %279, %159
  %296 = phi i32 [ 0, %159 ], [ %282, %293 ], [ -1, %287 ], [ 1, %279 ]
  br label %297

; <label>:297:                                    ; preds = %295, %232
  %298 = phi i32 [ %233, %232 ], [ %296, %295 ]
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, i32 %3, i32 %298
  br label %301

; <label>:301:                                    ; preds = %43, %42, %37, %28, %19, %13, %8, %5, %2, %297
  %302 = phi i32 [ %300, %297 ], [ 0, %2 ], [ -1, %5 ], [ 1, %8 ], [ -1, %13 ], [ 1, %19 ], [ -1, %28 ], [ 1, %37 ], [ -1, %42 ], [ 1, %43 ]
  ret i32 %302
}

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.94, i64 0, i64 0)) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %65

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1
  %11 = getelementptr i8, i8* %8, i64 %10
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %7
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %22, %21
  %23 = phi %struct.hash_entry* [ %26, %22 ], [ %3, %21 ]
  %24 = phi i64 [ %28, %22 ], [ 1, %21 ]
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i64 0, i32 1
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8
  %27 = icmp eq %struct.hash_entry* %26, null
  %28 = add i64 %24, 1
  br i1 %27, label %29, label %22

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i64 [ %24, %29 ], [ 0, %17 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1
  br label %33

; <label>:33:                                     ; preds = %30, %7
  %34 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %35 = phi %struct.hash_entry* [ %3, %7 ], [ %32, %30 ]
  %36 = phi i64 [ undef, %7 ], [ %31, %30 ]
  %37 = icmp eq i64 %13, 0
  br i1 %37, label %63, label %38

; <label>:38:                                     ; preds = %33
  br label %39

; <label>:39:                                     ; preds = %78, %38
  %40 = phi i64 [ %34, %38 ], [ %79, %78 ]
  %41 = phi %struct.hash_entry* [ %35, %38 ], [ %80, %78 ]
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %56, label %45

; <label>:45:                                     ; preds = %39
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi %struct.hash_entry* [ %50, %46 ], [ %41, %45 ]
  %48 = phi i64 [ %52, %46 ], [ 1, %45 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  %51 = icmp eq %struct.hash_entry* %50, null
  %52 = add i64 %48, 1
  br i1 %51, label %53, label %46

; <label>:53:                                     ; preds = %46
  %54 = icmp ugt i64 %48, %40
  %55 = select i1 %54, i64 %48, i64 %40
  br label %56

; <label>:56:                                     ; preds = %39, %53
  %57 = phi i64 [ %55, %53 ], [ %40, %39 ]
  %58 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 1
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %78, label %67

; <label>:62:                                     ; preds = %78
  br label %63

; <label>:63:                                     ; preds = %33, %62
  %64 = phi i64 [ %36, %33 ], [ %79, %62 ]
  br label %65

; <label>:65:                                     ; preds = %63, %1
  %66 = phi i64 [ 0, %1 ], [ %64, %63 ]
  ret i64 %66

; <label>:67:                                     ; preds = %56
  br label %68

; <label>:68:                                     ; preds = %68, %67
  %69 = phi %struct.hash_entry* [ %72, %68 ], [ %58, %67 ]
  %70 = phi i64 [ %74, %68 ], [ 1, %67 ]
  %71 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %69, i64 0, i32 1
  %72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8
  %73 = icmp eq %struct.hash_entry* %72, null
  %74 = add i64 %70, 1
  br i1 %73, label %75, label %68

; <label>:75:                                     ; preds = %68
  %76 = icmp ugt i64 %70, %57
  %77 = select i1 %76, i64 %70, i64 %57
  br label %78

; <label>:78:                                     ; preds = %75, %56
  %79 = phi i64 [ %77, %75 ], [ %57, %56 ]
  %80 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 2
  %81 = icmp ult %struct.hash_entry* %80, %5
  br i1 %81, label %39, label %62
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %70

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1
  %11 = getelementptr i8, i8* %8, i64 %10
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %7
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %22, %21
  %23 = phi i64 [ %25, %22 ], [ 0, %21 ]
  %24 = phi %struct.hash_entry* [ %27, %22 ], [ %3, %21 ]
  %25 = add i64 %23, 1
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %29, label %22

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i64 [ 0, %17 ], [ 1, %29 ]
  %32 = phi i64 [ 0, %17 ], [ %25, %29 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1
  br label %34

; <label>:34:                                     ; preds = %30, %7
  %35 = phi i64 [ 0, %7 ], [ %32, %30 ]
  %36 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %37 = phi %struct.hash_entry* [ %3, %7 ], [ %33, %30 ]
  %38 = phi i64 [ undef, %7 ], [ %31, %30 ]
  %39 = phi i64 [ undef, %7 ], [ %32, %30 ]
  %40 = icmp eq i64 %13, 0
  br i1 %40, label %67, label %41

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %93, %41
  %43 = phi i64 [ %35, %41 ], [ %95, %93 ]
  %44 = phi i64 [ %36, %41 ], [ %94, %93 ]
  %45 = phi %struct.hash_entry* [ %37, %41 ], [ %96, %93 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %59, label %49

; <label>:49:                                     ; preds = %42
  br label %50

; <label>:50:                                     ; preds = %49, %50
  %51 = phi i64 [ %53, %50 ], [ %43, %49 ]
  %52 = phi %struct.hash_entry* [ %55, %50 ], [ %45, %49 ]
  %53 = add i64 %51, 1
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1
  %55 = load %struct.hash_entry*, %struct.hash_entry** %54, align 8
  %56 = icmp eq %struct.hash_entry* %55, null
  br i1 %56, label %57, label %50

; <label>:57:                                     ; preds = %50
  %58 = add i64 %44, 1
  br label %59

; <label>:59:                                     ; preds = %57, %42
  %60 = phi i64 [ %44, %42 ], [ %58, %57 ]
  %61 = phi i64 [ %43, %42 ], [ %53, %57 ]
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 1
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %93, label %83

; <label>:66:                                     ; preds = %93
  br label %67

; <label>:67:                                     ; preds = %34, %66
  %68 = phi i64 [ %38, %34 ], [ %94, %66 ]
  %69 = phi i64 [ %39, %34 ], [ %95, %66 ]
  br label %70

; <label>:70:                                     ; preds = %67, %1
  %71 = phi i64 [ 0, %1 ], [ %68, %67 ]
  %72 = phi i64 [ 0, %1 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %81, label %80

; <label>:80:                                     ; preds = %76, %70
  br label %81

; <label>:81:                                     ; preds = %76, %80
  %82 = phi i1 [ false, %80 ], [ true, %76 ]
  ret i1 %82

; <label>:83:                                     ; preds = %59
  br label %84

; <label>:84:                                     ; preds = %84, %83
  %85 = phi i64 [ %87, %84 ], [ %61, %83 ]
  %86 = phi %struct.hash_entry* [ %89, %84 ], [ %62, %83 ]
  %87 = add i64 %85, 1
  %88 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %86, i64 0, i32 1
  %89 = load %struct.hash_entry*, %struct.hash_entry** %88, align 8
  %90 = icmp eq %struct.hash_entry* %89, null
  br i1 %90, label %91, label %84

; <label>:91:                                     ; preds = %84
  %92 = add i64 %60, 1
  br label %93

; <label>:93:                                     ; preds = %91, %59
  %94 = phi i64 [ %60, %59 ], [ %92, %91 ]
  %95 = phi i64 [ %61, %59 ], [ %87, %91 ]
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 2
  %97 = icmp ult %struct.hash_entry* %96, %5
  br i1 %97, label %42, label %66
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_print_statistics(%struct.hash_table* nocapture readonly, %struct._IO_FILE*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %13 = icmp ult %struct.hash_entry* %10, %12
  br i1 %13, label %14, label %72

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.hash_entry* %12 to i8*
  %16 = ptrtoint %struct.hash_entry* %10 to i64
  %17 = xor i64 %16, -1
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = ptrtoint i8* %18 to i64
  %20 = lshr i64 %19, 4
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

; <label>:23:                                     ; preds = %14
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %29, %28
  %30 = phi %struct.hash_entry* [ %33, %29 ], [ %10, %28 ]
  %31 = phi i64 [ %35, %29 ], [ 1, %28 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8
  %34 = icmp eq %struct.hash_entry* %33, null
  %35 = add i64 %31, 1
  br i1 %34, label %36, label %29

; <label>:36:                                     ; preds = %29
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = phi i64 [ %31, %36 ], [ 0, %24 ]
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1
  br label %40

; <label>:40:                                     ; preds = %37, %14
  %41 = phi i64 [ 0, %14 ], [ %38, %37 ]
  %42 = phi %struct.hash_entry* [ %10, %14 ], [ %39, %37 ]
  %43 = phi i64 [ undef, %14 ], [ %38, %37 ]
  %44 = icmp eq i64 %20, 0
  br i1 %44, label %70, label %45

; <label>:45:                                     ; preds = %40
  br label %46

; <label>:46:                                     ; preds = %93, %45
  %47 = phi i64 [ %41, %45 ], [ %94, %93 ]
  %48 = phi %struct.hash_entry* [ %42, %45 ], [ %95, %93 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %63, label %52

; <label>:52:                                     ; preds = %46
  br label %53

; <label>:53:                                     ; preds = %52, %53
  %54 = phi %struct.hash_entry* [ %57, %53 ], [ %48, %52 ]
  %55 = phi i64 [ %59, %53 ], [ 1, %52 ]
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i64 0, i32 1
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8
  %58 = icmp eq %struct.hash_entry* %57, null
  %59 = add i64 %55, 1
  br i1 %58, label %60, label %53

; <label>:60:                                     ; preds = %53
  %61 = icmp ugt i64 %55, %47
  %62 = select i1 %61, i64 %55, i64 %47
  br label %63

; <label>:63:                                     ; preds = %60, %46
  %64 = phi i64 [ %62, %60 ], [ %47, %46 ]
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 1
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %93, label %82

; <label>:69:                                     ; preds = %93
  br label %70

; <label>:70:                                     ; preds = %40, %69
  %71 = phi i64 [ %43, %40 ], [ %94, %69 ]
  br label %72

; <label>:72:                                     ; preds = %70, %2
  %73 = phi i64 [ 0, %2 ], [ %71, %70 ]
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.143, i64 0, i64 0), i64 %4) #12
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.144, i64 0, i64 0), i64 %6) #12
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.145, i64 0, i64 0), i64 %8, double %79) #12
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.146, i64 0, i64 0), i64 %73) #12
  ret void

; <label>:82:                                     ; preds = %63
  br label %83

; <label>:83:                                     ; preds = %83, %82
  %84 = phi %struct.hash_entry* [ %87, %83 ], [ %65, %82 ]
  %85 = phi i64 [ %89, %83 ], [ 1, %82 ]
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1
  %87 = load %struct.hash_entry*, %struct.hash_entry** %86, align 8
  %88 = icmp eq %struct.hash_entry* %87, null
  %89 = add i64 %85, 1
  br i1 %88, label %90, label %83

; <label>:90:                                     ; preds = %83
  %91 = icmp ugt i64 %85, %64
  %92 = select i1 %91, i64 %85, i64 %64
  br label %93

; <label>:93:                                     ; preds = %90, %63
  %94 = phi i64 [ %92, %90 ], [ %64, %63 ]
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 2
  %96 = icmp ult %struct.hash_entry* %95, %12
  br i1 %96, label %46, label %69
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_lookup(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #12
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  %18 = icmp eq %struct.hash_entry* %14, null
  %19 = or i1 %17, %18
  br i1 %19, label %42, label %20

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = icmp eq i8* %16, %1
  br i1 %22, label %42, label %23

; <label>:23:                                     ; preds = %20
  br label %24

; <label>:24:                                     ; preds = %23, %36
  %25 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %23 ]
  %26 = phi i8* [ %38, %36 ], [ %16, %23 ]
  %27 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #12
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %42

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 1
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = icmp eq %struct.hash_entry* %34, null
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, %1
  br i1 %39, label %40, label %24

; <label>:40:                                     ; preds = %32, %36
  %41 = phi i8* [ null, %32 ], [ %1, %36 ]
  br label %42

; <label>:42:                                     ; preds = %40, %20, %29, %11
  %43 = phi i8* [ null, %11 ], [ %31, %29 ], [ %1, %20 ], [ %41, %40 ]
  ret i8* %43
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @hash_get_first(%struct.hash_table* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %10 = icmp ult %struct.hash_entry* %7, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %5
  br label %16

; <label>:12:                                     ; preds = %16
  %13 = icmp ult %struct.hash_entry* %21, %9
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %12
  br label %15

; <label>:15:                                     ; preds = %14, %5
  tail call void @abort() #15
  unreachable

; <label>:16:                                     ; preds = %11, %12
  %17 = phi %struct.hash_entry* [ %21, %12 ], [ %7, %11 ]
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  %21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 1
  br i1 %20, label %12, label %22

; <label>:22:                                     ; preds = %16
  br label %23

; <label>:23:                                     ; preds = %22, %1
  %24 = phi i8* [ null, %1 ], [ %19, %22 ]
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_get_next(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #12
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  br label %15

; <label>:15:                                     ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, %1
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27

; <label>:23:                                     ; preds = %15
  br i1 %22, label %29, label %24

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %42

; <label>:27:                                     ; preds = %15
  br i1 %22, label %28, label %15

; <label>:28:                                     ; preds = %27
  br label %29

; <label>:29:                                     ; preds = %28, %23
  %30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %36
  %33 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %29 ]
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 1
  %35 = icmp ult %struct.hash_entry* %34, %31
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %32, label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i8* [ null, %32 ], [ %38, %36 ]
  br label %42

; <label>:42:                                     ; preds = %40, %24
  %43 = phi i8* [ %26, %24 ], [ %41, %40 ]
  ret i8* %43
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_get_entries(%struct.hash_table* nocapture readonly, i8** nocapture, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %42

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  %17 = icmp eq %struct.hash_entry* %12, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

; <label>:19:                                     ; preds = %10
  br label %20

; <label>:20:                                     ; preds = %19, %24
  %21 = phi %struct.hash_entry* [ %31, %24 ], [ %12, %19 ]
  %22 = phi i64 [ %27, %24 ], [ %13, %19 ]
  %23 = icmp ult i64 %22, %2
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %20
  %25 = bitcast %struct.hash_entry* %21 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22
  %29 = bitcast i8** %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8
  %32 = icmp eq %struct.hash_entry* %31, null
  br i1 %32, label %33, label %20

; <label>:33:                                     ; preds = %24
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ]
  %37 = phi i64 [ %13, %10 ], [ %27, %33 ]
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1
  %39 = icmp ult %struct.hash_entry* %38, %36
  br i1 %39, label %10, label %41

; <label>:40:                                     ; preds = %20
  br label %42

; <label>:41:                                     ; preds = %35
  br label %42

; <label>:42:                                     ; preds = %41, %40, %3
  %43 = phi i64 [ 0, %3 ], [ %22, %40 ], [ %37, %41 ]
  ret i64 %43
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_do_for_each(%struct.hash_table* nocapture readonly, i1 (i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %43

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  %17 = icmp eq %struct.hash_entry* %12, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

; <label>:19:                                     ; preds = %10
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #12
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %19
  br label %22

; <label>:22:                                     ; preds = %21, %29
  %23 = phi i64 [ %25, %29 ], [ %13, %21 ]
  %24 = phi %struct.hash_entry* [ %27, %29 ], [ %12, %21 ]
  %25 = add i64 %23, 1
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #12
  br i1 %32, label %22, label %40

; <label>:33:                                     ; preds = %22
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ]
  %37 = phi i64 [ %13, %10 ], [ %25, %33 ]
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1
  %39 = icmp ult %struct.hash_entry* %38, %36
  br i1 %39, label %10, label %41

; <label>:40:                                     ; preds = %29
  br label %43

; <label>:41:                                     ; preds = %19, %35
  %42 = phi i64 [ %37, %35 ], [ %13, %19 ]
  br label %43

; <label>:43:                                     ; preds = %41, %40, %3
  %44 = phi i64 [ 0, %3 ], [ %25, %40 ], [ %42, %41 ]
  ret i64 %44
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_string(i8* nocapture readonly, i64) local_unnamed_addr #9 {
  %3 = load i8, i8* %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %2
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %15, %6 ], [ %3, %5 ]
  %8 = phi i8* [ %14, %6 ], [ %0, %5 ]
  %9 = phi i64 [ %13, %6 ], [ 0, %5 ]
  %10 = mul i64 %9, 31
  %11 = zext i8 %7 to i64
  %12 = add i64 %11, %10
  %13 = urem i64 %12, %1
  %14 = getelementptr inbounds i8, i8* %8, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6

; <label>:17:                                     ; preds = %6
  br label %18

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i64 [ 0, %2 ], [ %13, %17 ]
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_reset_tuning(%struct.hash_tuning* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.hash_tuning* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.hash_table* @hash_initialize(i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #6 {
  %6 = icmp eq i64 (i8*, i64)* %2, null
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2
  %8 = icmp eq i1 (i8*, i8*)* %3, null
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3
  %10 = tail call noalias i8* @malloc(i64 80) #12
  %11 = bitcast i8* %10 to %struct.hash_table*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %110, label %13

; <label>:13:                                     ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1
  %16 = getelementptr inbounds i8, i8* %10, i64 40
  %17 = bitcast i8* %16 to %struct.hash_tuning**
  store %struct.hash_tuning* %15, %struct.hash_tuning** %17, align 8
  %18 = icmp eq %struct.hash_tuning* %15, @default_tuning
  br i1 %18, label %42, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = fcmp ogt float %21, 0x3FB99999A0000000
  %23 = fcmp olt float %21, 0x3FECCCCCC0000000
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %109

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = fcmp ogt float %27, 0x3FF19999A0000000
  br i1 %28, label %29, label %109

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fcmp ult float %31, 0.000000e+00
  br i1 %32, label %109, label %33

; <label>:33:                                     ; preds = %29
  %34 = fadd float %31, 0x3FB99999A0000000
  %35 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = fcmp olt float %34, %36
  %38 = fcmp ole float %36, 1.000000e+00
  %39 = and i1 %38, %37
  %40 = fcmp olt float %34, %21
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %109

; <label>:42:                                     ; preds = %13, %33
  %43 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4
  %44 = load i8, i8* %43, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %42
  %47 = uitofp i64 %0 to float
  %48 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %49 = load float, float* %48, align 4
  %50 = fdiv float %47, %49
  %51 = fcmp ult float %50, 0x43F0000000000000
  %52 = fptoui float %50 to i64
  br i1 %51, label %53, label %109

; <label>:53:                                     ; preds = %46, %42
  %54 = phi i64 [ %0, %42 ], [ %52, %46 ]
  %55 = icmp ugt i64 %54, 10
  %56 = select i1 %55, i64 %54, i64 10
  %57 = or i64 %56, 1
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %109, label %59

; <label>:59:                                     ; preds = %53
  br label %60

; <label>:60:                                     ; preds = %59, %81
  %61 = phi i64 [ %82, %81 ], [ %57, %59 ]
  %62 = icmp ugt i64 %61, 9
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %60
  br label %64

; <label>:64:                                     ; preds = %63, %69
  %65 = phi i64 [ %72, %69 ], [ 9, %63 ]
  %66 = phi i64 [ %73, %69 ], [ 3, %63 ]
  %67 = urem i64 %61, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %75, label %69

; <label>:69:                                     ; preds = %64
  %70 = shl i64 %66, 2
  %71 = add i64 %65, 4
  %72 = add i64 %71, %70
  %73 = add i64 %66, 2
  %74 = icmp ult i64 %72, %61
  br i1 %74, label %64, label %75

; <label>:75:                                     ; preds = %64, %69
  %76 = phi i64 [ %73, %69 ], [ %66, %64 ]
  br label %77

; <label>:77:                                     ; preds = %75, %60
  %78 = phi i64 [ 3, %60 ], [ %76, %75 ]
  %79 = urem i64 %61, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %77
  %82 = add i64 %61, 2
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %108, label %60

; <label>:84:                                     ; preds = %77
  %85 = icmp ugt i64 %61, 1152921504606846975
  br i1 %85, label %109, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds i8, i8* %10, i64 16
  %88 = bitcast i8* %87 to i64*
  store i64 %61, i64* %88, align 8
  %89 = icmp eq i64 %61, 0
  br i1 %89, label %109, label %90

; <label>:90:                                     ; preds = %86
  %91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #12
  %92 = bitcast i8* %10 to i8**
  store i8* %91, i8** %92, align 8
  %93 = icmp eq i8* %91, null
  br i1 %93, label %109, label %94

; <label>:94:                                     ; preds = %90
  %95 = bitcast i8* %91 to %struct.hash_entry*
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %95, i64 %61
  %97 = getelementptr inbounds i8, i8* %10, i64 8
  %98 = bitcast i8* %97 to %struct.hash_entry**
  store %struct.hash_entry* %96, %struct.hash_entry** %98, align 8
  %99 = getelementptr inbounds i8, i8* %10, i64 24
  %100 = getelementptr inbounds i8, i8* %10, i64 48
  %101 = bitcast i8* %100 to i64 (i8*, i64)**
  call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 16, i32 8, i1 false)
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %101, align 8
  %102 = getelementptr inbounds i8, i8* %10, i64 56
  %103 = bitcast i8* %102 to i1 (i8*, i8*)**
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %103, align 8
  %104 = getelementptr inbounds i8, i8* %10, i64 64
  %105 = bitcast i8* %104 to void (i8*)**
  store void (i8*)* %4, void (i8*)** %105, align 8
  %106 = getelementptr inbounds i8, i8* %10, i64 72
  %107 = bitcast i8* %106 to %struct.hash_entry**
  store %struct.hash_entry* null, %struct.hash_entry** %107, align 8
  br label %110

; <label>:108:                                    ; preds = %81
  br label %109

; <label>:109:                                    ; preds = %108, %84, %46, %53, %33, %29, %25, %19, %86, %90
  tail call void @free(i8* nonnull %10) #12
  br label %110

; <label>:110:                                    ; preds = %5, %109, %94
  %111 = phi %struct.hash_table* [ null, %109 ], [ %11, %94 ], [ null, %5 ]
  ret %struct.hash_table* %111
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @raw_hasher(i8*, i64) #11 {
  %3 = ptrtoint i8* %0 to i64
  %4 = lshr i64 %3, 3
  %5 = shl i64 %3, 61
  %6 = or i64 %5, %4
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #11 {
  %3 = icmp eq i8* %0, %1
  ret i1 %3
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_clear(%struct.hash_table* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %54

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %10 = bitcast %struct.hash_entry** %9 to i64*
  br label %11

; <label>:11:                                     ; preds = %7, %49
  %12 = phi %struct.hash_entry* [ %5, %7 ], [ %50, %49 ]
  %13 = phi %struct.hash_entry* [ %3, %7 ], [ %51, %49 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %49, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8
  %20 = icmp eq %struct.hash_entry* %19, null
  %21 = load void (i8*)*, void (i8*)** %8, align 8
  %22 = icmp ne void (i8*)* %21, null
  br i1 %20, label %41, label %23

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %32
  %25 = phi i1 [ %39, %32 ], [ %22, %23 ]
  %26 = phi void (i8*)* [ %33, %32 ], [ %21, %23 ]
  %27 = phi %struct.hash_entry* [ %35, %32 ], [ %19, %23 ]
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  br i1 %25, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %28, align 8
  tail call void %26(i8* %30) #12
  %31 = load void (i8*)*, void (i8*)** %8, align 8
  br label %32

; <label>:32:                                     ; preds = %24, %29
  %33 = phi void (i8*)* [ %31, %29 ], [ %26, %24 ]
  store i8* null, i8** %28, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 1
  %35 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = bitcast %struct.hash_entry** %34 to i64*
  store i64 %36, i64* %37, align 8
  store %struct.hash_entry* %27, %struct.hash_entry** %9, align 8
  %38 = icmp eq %struct.hash_entry* %35, null
  %39 = icmp ne void (i8*)* %33, null
  br i1 %38, label %40, label %24

; <label>:40:                                     ; preds = %32
  br label %41

; <label>:41:                                     ; preds = %40, %17
  %42 = phi void (i8*)* [ %21, %17 ], [ %33, %40 ]
  %43 = phi i1 [ %22, %17 ], [ %39, %40 ]
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %14, align 8
  tail call void %42(i8* %45) #12
  br label %46

; <label>:46:                                     ; preds = %44, %41
  %47 = bitcast %struct.hash_entry* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 8, i1 false)
  %48 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %11, %46
  %50 = phi %struct.hash_entry* [ %12, %11 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 1
  %52 = icmp ult %struct.hash_entry* %51, %50
  br i1 %52, label %11, label %53

; <label>:53:                                     ; preds = %49
  br label %54

; <label>:54:                                     ; preds = %53, %1
  %55 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %56 = bitcast i64* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_free(%struct.hash_table* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %3 = load void (i8*)*, void (i8*)** %2, align 8
  %4 = icmp eq void (i8*)* %3, null
  br i1 %4, label %46, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %46, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = icmp ult %struct.hash_entry* %11, %13
  br i1 %14, label %15, label %46

; <label>:15:                                     ; preds = %9
  br label %16

; <label>:16:                                     ; preds = %15, %41
  %17 = phi %struct.hash_entry* [ %42, %41 ], [ %13, %15 ]
  %18 = phi %struct.hash_entry* [ %43, %41 ], [ %11, %15 ]
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  %22 = icmp eq %struct.hash_entry* %18, null
  %23 = or i1 %21, %22
  br i1 %23, label %41, label %24

; <label>:24:                                     ; preds = %16
  %25 = load void (i8*)*, void (i8*)** %2, align 8
  tail call void %25(i8* %20) #12
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %39, label %29

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %27, %29 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load void (i8*)*, void (i8*)** %2, align 8
  tail call void %34(i8* %33) #12
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8
  %37 = icmp eq %struct.hash_entry* %36, null
  br i1 %37, label %38, label %30

; <label>:38:                                     ; preds = %30
  br label %39

; <label>:39:                                     ; preds = %38, %24
  %40 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  br label %41

; <label>:41:                                     ; preds = %39, %16
  %42 = phi %struct.hash_entry* [ %40, %39 ], [ %17, %16 ]
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1
  %44 = icmp ult %struct.hash_entry* %43, %42
  br i1 %44, label %16, label %45

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %45, %9, %5, %1
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8
  %49 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  %51 = icmp ult %struct.hash_entry* %48, %50
  br i1 %51, label %52, label %73

; <label>:52:                                     ; preds = %46
  br label %53

; <label>:53:                                     ; preds = %52, %68
  %54 = phi %struct.hash_entry* [ %69, %68 ], [ %50, %52 ]
  %55 = phi %struct.hash_entry* [ %70, %68 ], [ %48, %52 ]
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8
  %58 = icmp eq %struct.hash_entry* %57, null
  br i1 %58, label %68, label %59

; <label>:59:                                     ; preds = %53
  br label %60

; <label>:60:                                     ; preds = %59, %60
  %61 = phi %struct.hash_entry* [ %64, %60 ], [ %57, %59 ]
  %62 = bitcast %struct.hash_entry* %61 to i8*
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 1
  %64 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8
  tail call void @free(i8* %62) #12
  %65 = icmp eq %struct.hash_entry* %64, null
  br i1 %65, label %66, label %60

; <label>:66:                                     ; preds = %60
  %67 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  br label %68

; <label>:68:                                     ; preds = %66, %53
  %69 = phi %struct.hash_entry* [ %67, %66 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 1
  %71 = icmp ult %struct.hash_entry* %70, %69
  br i1 %71, label %53, label %72

; <label>:72:                                     ; preds = %68
  br label %73

; <label>:73:                                     ; preds = %72, %46
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %75 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8
  %76 = icmp eq %struct.hash_entry* %75, null
  br i1 %76, label %85, label %77

; <label>:77:                                     ; preds = %73
  br label %78

; <label>:78:                                     ; preds = %77, %78
  %79 = phi %struct.hash_entry* [ %82, %78 ], [ %75, %77 ]
  %80 = bitcast %struct.hash_entry* %79 to i8*
  %81 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %79, i64 0, i32 1
  %82 = load %struct.hash_entry*, %struct.hash_entry** %81, align 8
  tail call void @free(i8* %80) #12
  %83 = icmp eq %struct.hash_entry* %82, null
  br i1 %83, label %84, label %78

; <label>:84:                                     ; preds = %78
  br label %85

; <label>:85:                                     ; preds = %84, %73
  %86 = bitcast %struct.hash_table* %0 to i8**
  %87 = load i8*, i8** %86, align 8
  tail call void @free(i8* %87) #12
  %88 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* %88) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.hash_table, align 16
  %4 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #12
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8
  %7 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 4
  %8 = load i8, i8* %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = uitofp i64 %1 to float
  %12 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 2
  %13 = load float, float* %12, align 4
  %14 = fdiv float %11, %13
  %15 = fcmp ult float %14, 0x43F0000000000000
  %16 = fptoui float %14 to i64
  br i1 %15, label %17, label %152

; <label>:17:                                     ; preds = %10, %2
  %18 = phi i64 [ %1, %2 ], [ %16, %10 ]
  %19 = icmp ugt i64 %18, 10
  %20 = select i1 %19, i64 %18, i64 10
  %21 = or i64 %20, 1
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %152, label %23

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %45
  %25 = phi i64 [ %46, %45 ], [ %21, %23 ]
  %26 = icmp ugt i64 %25, 9
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %24
  br label %28

; <label>:28:                                     ; preds = %27, %33
  %29 = phi i64 [ %36, %33 ], [ 9, %27 ]
  %30 = phi i64 [ %37, %33 ], [ 3, %27 ]
  %31 = urem i64 %25, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %28
  %34 = shl i64 %30, 2
  %35 = add i64 %29, 4
  %36 = add i64 %35, %34
  %37 = add i64 %30, 2
  %38 = icmp ult i64 %36, %25
  br i1 %38, label %28, label %39

; <label>:39:                                     ; preds = %28, %33
  %40 = phi i64 [ %37, %33 ], [ %30, %28 ]
  br label %41

; <label>:41:                                     ; preds = %39, %24
  %42 = phi i64 [ 3, %24 ], [ %40, %39 ]
  %43 = urem i64 %25, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %41
  %46 = add i64 %25, 2
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %151, label %24

; <label>:48:                                     ; preds = %41
  %49 = add i64 %25, -1
  %50 = icmp ugt i64 %49, 1152921504606846974
  br i1 %50, label %152, label %51

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %25, %53
  br i1 %54, label %152, label %55

; <label>:55:                                     ; preds = %51
  %56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #12
  %57 = bitcast %struct.hash_table* %3 to i8**
  store i8* %56, i8** %57, align 16
  %58 = icmp eq i8* %56, null
  br i1 %58, label %152, label %59

; <label>:59:                                     ; preds = %55
  %60 = bitcast i8* %56 to %struct.hash_entry*
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2
  store i64 %25, i64* %61, align 16
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %60, i64 %25
  %63 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1
  store %struct.hash_entry* %62, %struct.hash_entry** %63, align 8
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3
  %65 = bitcast i64* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 16, i32 8, i1 false)
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %68 = bitcast %struct.hash_tuning** %5 to <2 x i64>*
  %69 = load <2 x i64>, <2 x i64>* %68, align 8
  %70 = bitcast %struct.hash_tuning** %66 to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %70, align 8
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7
  %73 = bitcast i1 (i8*, i8*)** %71 to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8
  %75 = bitcast i1 (i8*, i8*)** %72 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %75, align 8
  %76 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %77 = bitcast %struct.hash_entry** %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9
  %80 = bitcast %struct.hash_entry** %79 to i64*
  store i64 %78, i64* %80, align 8
  %81 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* nonnull %3, %struct.hash_table* nonnull %0, i1 zeroext false)
  br i1 %81, label %82, label %92

; <label>:82:                                     ; preds = %59
  %83 = bitcast %struct.hash_table* %0 to i8**
  %84 = load i8*, i8** %83, align 8
  tail call void @free(i8* %84) #12
  %85 = bitcast %struct.hash_table* %3 to <2 x i64>*
  %86 = load <2 x i64>, <2 x i64>* %85, align 16
  %87 = bitcast %struct.hash_table* %0 to <2 x i64>*
  store <2 x i64> %86, <2 x i64>* %87, align 8
  %88 = bitcast i64* %61 to <2 x i64>*
  %89 = load <2 x i64>, <2 x i64>* %88, align 16
  %90 = bitcast i64* %52 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %90, align 8
  %91 = load i64, i64* %80, align 8
  store i64 %91, i64* %77, align 8
  br label %152

; <label>:92:                                     ; preds = %59
  %93 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0
  %94 = load i64, i64* %80, align 8
  store i64 %94, i64* %77, align 8
  %95 = load %struct.hash_entry*, %struct.hash_entry** %93, align 16
  %96 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8
  %97 = icmp ult %struct.hash_entry* %95, %96
  br i1 %97, label %98, label %146

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %100 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %101

; <label>:101:                                    ; preds = %142, %98
  %102 = phi %struct.hash_entry* [ %95, %98 ], [ %143, %142 ]
  %103 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %142, label %106

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 1
  %108 = load %struct.hash_entry*, %struct.hash_entry** %107, align 8
  %109 = icmp eq %struct.hash_entry* %108, null
  br i1 %109, label %141, label %110

; <label>:110:                                    ; preds = %106
  %111 = load i64, i64* %52, align 8
  br label %112

; <label>:112:                                    ; preds = %131, %110
  %113 = phi i64 [ %119, %131 ], [ %111, %110 ]
  %114 = phi %struct.hash_entry* [ %125, %131 ], [ %108, %110 ]
  %115 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i64 (i8*, i64)*, i64 (i8*, i64)** %67, align 8
  %118 = tail call i64 %117(i8* %116, i64 %113) #12
  %119 = load i64, i64* %52, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %112
  tail call void @abort() #15
  unreachable

; <label>:122:                                    ; preds = %112
  %123 = load %struct.hash_entry*, %struct.hash_entry** %99, align 8
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 1
  %125 = load %struct.hash_entry*, %struct.hash_entry** %124, align 8
  %126 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %137, label %129

; <label>:129:                                    ; preds = %122
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1
  br label %131

; <label>:131:                                    ; preds = %137, %129
  %132 = phi %struct.hash_entry** [ %130, %129 ], [ %76, %137 ]
  %133 = bitcast %struct.hash_entry** %132 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = bitcast %struct.hash_entry** %124 to i64*
  store i64 %134, i64* %135, align 8
  store %struct.hash_entry* %114, %struct.hash_entry** %132, align 8
  %136 = icmp eq %struct.hash_entry* %125, null
  br i1 %136, label %140, label %112

; <label>:137:                                    ; preds = %122
  store i8* %116, i8** %126, align 8
  %138 = load i64, i64* %100, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %100, align 8
  store i8* null, i8** %115, align 8
  br label %131

; <label>:140:                                    ; preds = %131
  br label %141

; <label>:141:                                    ; preds = %140, %106
  store %struct.hash_entry* null, %struct.hash_entry** %107, align 8
  br label %142

; <label>:142:                                    ; preds = %141, %101
  %143 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 1
  %144 = icmp ult %struct.hash_entry* %143, %96
  br i1 %144, label %101, label %145

; <label>:145:                                    ; preds = %142
  br label %146

; <label>:146:                                    ; preds = %145, %92
  %147 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* %0, %struct.hash_table* nonnull %3, i1 zeroext false)
  br i1 %147, label %149, label %148

; <label>:148:                                    ; preds = %146
  tail call void @abort() #15
  unreachable

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %57, align 16
  tail call void @free(i8* %150) #12
  br label %152

; <label>:151:                                    ; preds = %45
  br label %152

; <label>:152:                                    ; preds = %151, %17, %48, %10, %55, %51, %149, %82
  %153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
  call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #12
  ret i1 %153
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @transfer_entries(%struct.hash_table* nocapture, %struct.hash_table* nocapture, i1 zeroext) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %103

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %16 = bitcast %struct.hash_entry** %15 to i64*
  br label %17

; <label>:17:                                     ; preds = %9, %97
  %18 = phi %struct.hash_entry* [ %5, %9 ], [ %98, %97 ]
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %97, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8
  %25 = icmp eq %struct.hash_entry* %24, null
  br i1 %25, label %58, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %11, align 8
  br label %28

; <label>:28:                                     ; preds = %26, %47
  %29 = phi i64 [ %35, %47 ], [ %27, %26 ]
  %30 = phi %struct.hash_entry* [ %41, %47 ], [ %24, %26 ]
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8
  %34 = tail call i64 %33(i8* %32, i64 %29) #12
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %28
  tail call void @abort() #15
  unreachable

; <label>:38:                                     ; preds = %28
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %53, label %45

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 1
  br label %47

; <label>:47:                                     ; preds = %45, %53
  %48 = phi %struct.hash_entry** [ %46, %45 ], [ %15, %53 ]
  %49 = bitcast %struct.hash_entry** %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %struct.hash_entry** %40 to i64*
  store i64 %50, i64* %51, align 8
  store %struct.hash_entry* %30, %struct.hash_entry** %48, align 8
  %52 = icmp eq %struct.hash_entry* %41, null
  br i1 %52, label %56, label %28

; <label>:53:                                     ; preds = %38
  store i8* %32, i8** %42, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  store i8* null, i8** %31, align 8
  br label %47

; <label>:56:                                     ; preds = %47
  %57 = load i8*, i8** %19, align 8
  br label %58

; <label>:58:                                     ; preds = %56, %22
  %59 = phi i8* [ %57, %56 ], [ %20, %22 ]
  store %struct.hash_entry* null, %struct.hash_entry** %23, align 8
  br i1 %2, label %97, label %60

; <label>:60:                                     ; preds = %58
  %61 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = tail call i64 %61(i8* %59, i64 %62) #12
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %60
  tail call void @abort() #15
  unreachable

; <label>:67:                                     ; preds = %60
  %68 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %91, label %72

; <label>:72:                                     ; preds = %67
  %73 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8
  %74 = icmp eq %struct.hash_entry* %73, null
  br i1 %74, label %79, label %75

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %73, i64 0, i32 1
  %77 = bitcast %struct.hash_entry** %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %16, align 8
  br label %83

; <label>:79:                                     ; preds = %72
  %80 = tail call noalias i8* @malloc(i64 16) #12
  %81 = bitcast i8* %80 to %struct.hash_entry*
  %82 = icmp eq i8* %80, null
  br i1 %82, label %101, label %83

; <label>:83:                                     ; preds = %79, %75
  %84 = phi %struct.hash_entry* [ %73, %75 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 0
  store i8* %59, i8** %85, align 8
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 1
  %87 = bitcast %struct.hash_entry** %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1
  %90 = bitcast %struct.hash_entry** %89 to i64*
  store i64 %88, i64* %90, align 8
  store %struct.hash_entry* %84, %struct.hash_entry** %86, align 8
  br label %94

; <label>:91:                                     ; preds = %67
  store i8* %59, i8** %69, align 8
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %13, align 8
  br label %94

; <label>:94:                                     ; preds = %83, %91
  store i8* null, i8** %19, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %14, align 8
  br label %97

; <label>:97:                                     ; preds = %58, %94, %17
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %100 = icmp ult %struct.hash_entry* %98, %99
  br i1 %100, label %17, label %101

; <label>:101:                                    ; preds = %79, %97
  %102 = phi i1 [ false, %79 ], [ true, %97 ]
  br label %103

; <label>:103:                                    ; preds = %101, %3
  %104 = phi i1 [ true, %3 ], [ %102, %101 ]
  ret i1 %104
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @hash_insert_if_absent(%struct.hash_table* nocapture, i8*, i8**) local_unnamed_addr #6 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #12
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %6
  tail call void @abort() #15
  unreachable

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %61, label %22

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i8* %20, %1
  br i1 %23, label %56, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #12
  br i1 %27, label %49, label %28

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %61, label %32

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %32, %45
  %34 = phi %struct.hash_entry* [ %47, %45 ], [ %30, %32 ]
  %35 = phi %struct.hash_entry** [ %46, %45 ], [ %29, %32 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, %1
  br i1 %38, label %52, label %39

; <label>:39:                                     ; preds = %33
  %40 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #12
  %42 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8
  br i1 %41, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 0
  br label %49

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 1
  %47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8
  %48 = icmp eq %struct.hash_entry* %47, null
  br i1 %48, label %60, label %33

; <label>:49:                                     ; preds = %24, %43
  %50 = phi i8** [ %44, %43 ], [ %19, %24 ]
  %51 = load i8*, i8** %50, align 8
  br label %53

; <label>:52:                                     ; preds = %33
  br label %53

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ %1, %52 ]
  %55 = icmp eq i8* %54, null
  br i1 %55, label %61, label %56

; <label>:56:                                     ; preds = %22, %53
  %57 = phi i8* [ %54, %53 ], [ %1, %22 ]
  %58 = icmp eq i8** %2, null
  br i1 %58, label %198, label %59

; <label>:59:                                     ; preds = %56
  store i8* %57, i8** %2, align 8
  br label %198

; <label>:60:                                     ; preds = %45
  br label %61

; <label>:61:                                     ; preds = %60, %28, %15, %53
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = uitofp i64 %63 to float
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %66 = load %struct.hash_tuning*, %struct.hash_tuning** %65, align 8
  %67 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 2
  %68 = load float, float* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = uitofp i64 %69 to float
  %71 = fmul float %68, %70
  %72 = fcmp ogt float %64, %71
  br i1 %72, label %73, label %164

; <label>:73:                                     ; preds = %61
  %74 = icmp eq %struct.hash_tuning* %66, @default_tuning
  br i1 %74, label %97, label %75

; <label>:75:                                     ; preds = %73
  %76 = fcmp ogt float %68, 0x3FB99999A0000000
  %77 = fcmp olt float %68, 0x3FECCCCCC0000000
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %96

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fcmp ogt float %81, 0x3FF19999A0000000
  br i1 %82, label %83, label %96

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = fcmp ult float %85, 0.000000e+00
  br i1 %86, label %96, label %87

; <label>:87:                                     ; preds = %83
  %88 = fadd float %85, 0x3FB99999A0000000
  %89 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fcmp olt float %88, %90
  %92 = fcmp ole float %90, 1.000000e+00
  %93 = and i1 %92, %91
  %94 = fcmp olt float %88, %68
  %95 = and i1 %94, %93
  br i1 %95, label %97, label %96

; <label>:96:                                     ; preds = %87, %83, %79, %75
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %65, align 8
  br label %97

; <label>:97:                                     ; preds = %73, %87, %96
  %98 = phi float [ %68, %73 ], [ %68, %87 ], [ 0x3FE99999A0000000, %96 ]
  %99 = phi %struct.hash_tuning* [ @default_tuning, %73 ], [ %66, %87 ], [ @default_tuning, %96 ]
  %100 = fmul float %98, %70
  %101 = fcmp ogt float %64, %100
  br i1 %101, label %102, label %164

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 4
  %104 = load i8, i8* %103, align 4
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = fmul float %70, %107
  %109 = fmul float %98, %108
  %110 = select i1 %105, float %109, float %108
  %111 = fcmp ult float %110, 0x43F0000000000000
  br i1 %111, label %112, label %198

; <label>:112:                                    ; preds = %102
  %113 = fptoui float %110 to i64
  %114 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %113)
  br i1 %114, label %115, label %198

; <label>:115:                                    ; preds = %112
  %116 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = tail call i64 %116(i8* nonnull %1, i64 %117) #12
  %119 = load i64, i64* %9, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %115
  tail call void @abort() #15
  unreachable

; <label>:122:                                    ; preds = %115
  %123 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118
  %125 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %124, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %164, label %128

; <label>:128:                                    ; preds = %122
  %129 = icmp eq i8* %126, %1
  br i1 %129, label %159, label %130

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %132 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8
  %133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #12
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** %125, align 8
  br label %159

; <label>:136:                                    ; preds = %130
  %137 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1
  %138 = load %struct.hash_entry*, %struct.hash_entry** %137, align 8
  %139 = icmp eq %struct.hash_entry* %138, null
  br i1 %139, label %164, label %140

; <label>:140:                                    ; preds = %136
  br label %141

; <label>:141:                                    ; preds = %140, %154
  %142 = phi %struct.hash_entry* [ %156, %154 ], [ %138, %140 ]
  %143 = phi %struct.hash_entry** [ %155, %154 ], [ %137, %140 ]
  %144 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %142, i64 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = icmp eq i8* %145, %1
  br i1 %146, label %158, label %147

; <label>:147:                                    ; preds = %141
  %148 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8
  %149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #12
  %150 = load %struct.hash_entry*, %struct.hash_entry** %143, align 8
  br i1 %149, label %151, label %154

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 0
  %153 = load i8*, i8** %152, align 8
  br label %159

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 1
  %156 = load %struct.hash_entry*, %struct.hash_entry** %155, align 8
  %157 = icmp eq %struct.hash_entry* %156, null
  br i1 %157, label %163, label %141

; <label>:158:                                    ; preds = %141
  br label %159

; <label>:159:                                    ; preds = %158, %151, %128, %134
  %160 = phi i8* [ %135, %134 ], [ %1, %128 ], [ %153, %151 ], [ %1, %158 ]
  %161 = icmp eq i8* %160, null
  br i1 %161, label %164, label %162

; <label>:162:                                    ; preds = %159
  tail call void @abort() #15
  unreachable

; <label>:163:                                    ; preds = %154
  br label %164

; <label>:164:                                    ; preds = %163, %136, %122, %159, %97, %61
  %165 = phi %struct.hash_entry* [ %124, %159 ], [ %18, %97 ], [ %18, %61 ], [ %124, %122 ], [ %124, %136 ], [ %124, %163 ]
  %166 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %193, label %169

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8
  %172 = icmp eq %struct.hash_entry* %171, null
  br i1 %172, label %178, label %173

; <label>:173:                                    ; preds = %169
  %174 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %171, i64 0, i32 1
  %175 = bitcast %struct.hash_entry** %174 to i64*
  %176 = load i64, i64* %175, align 8
  %177 = bitcast %struct.hash_entry** %170 to i64*
  store i64 %176, i64* %177, align 8
  br label %182

; <label>:178:                                    ; preds = %169
  %179 = tail call noalias i8* @malloc(i64 16) #12
  %180 = bitcast i8* %179 to %struct.hash_entry*
  %181 = icmp eq i8* %179, null
  br i1 %181, label %198, label %182

; <label>:182:                                    ; preds = %173, %178
  %183 = phi %struct.hash_entry* [ %171, %173 ], [ %180, %178 ]
  %184 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 0
  store i8* %1, i8** %184, align 8
  %185 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 1
  %186 = bitcast %struct.hash_entry** %185 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 1
  %189 = bitcast %struct.hash_entry** %188 to i64*
  store i64 %187, i64* %189, align 8
  store %struct.hash_entry* %183, %struct.hash_entry** %185, align 8
  %190 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %198

; <label>:193:                                    ; preds = %164
  store i8* %1, i8** %166, align 8
  %194 = bitcast i64* %62 to <2 x i64>*
  %195 = load <2 x i64>, <2 x i64>* %194, align 8
  %196 = add <2 x i64> %195, <i64 1, i64 1>
  %197 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> %196, <2 x i64>* %197, align 8
  br label %198

; <label>:198:                                    ; preds = %112, %102, %182, %178, %59, %56, %193
  %199 = phi i32 [ 1, %193 ], [ 0, %56 ], [ 0, %59 ], [ 1, %182 ], [ -1, %178 ], [ -1, %102 ], [ -1, %112 ]
  ret i32 %199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_insert(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #12
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* %0, i8* %1, i8** nonnull %3)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %5, 0
  %9 = load i8*, i8** %3, align 8
  %10 = select i1 %8, i8* %9, i8* %1
  br label %11

; <label>:11:                                     ; preds = %7, %2
  %12 = phi i8* [ null, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #12
  ret i8* %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #12
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %155, label %18

; <label>:18:                                     ; preds = %11
  %19 = icmp eq i8* %16, %1
  br i1 %19, label %31, label %20

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #12
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %15, align 8
  br label %31

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %155, label %30

; <label>:30:                                     ; preds = %26
  br label %46

; <label>:31:                                     ; preds = %24, %18
  %32 = phi i8* [ %25, %24 ], [ %1, %18 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = icmp eq %struct.hash_entry* %34, null
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %31
  %37 = bitcast %struct.hash_entry* %14 to i8*
  %38 = bitcast %struct.hash_entry* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #12
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %41 = bitcast %struct.hash_entry** %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 1
  %44 = bitcast %struct.hash_entry** %43 to i64*
  store i64 %42, i64* %44, align 8
  store %struct.hash_entry* %34, %struct.hash_entry** %40, align 8
  br label %75

; <label>:45:                                     ; preds = %31
  store i8* null, i8** %15, align 8
  br label %75

; <label>:46:                                     ; preds = %30, %71
  %47 = phi %struct.hash_entry* [ %73, %71 ], [ %28, %30 ]
  %48 = phi %struct.hash_entry** [ %72, %71 ], [ %27, %30 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, %1
  br i1 %51, label %59, label %52

; <label>:52:                                     ; preds = %46
  %53 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #12
  %55 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8
  br i1 %54, label %56, label %71

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %60

; <label>:59:                                     ; preds = %46
  br label %60

; <label>:60:                                     ; preds = %59, %56
  %61 = phi i8* [ %58, %56 ], [ %1, %59 ]
  %62 = phi %struct.hash_entry* [ %55, %56 ], [ %47, %59 ]
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 1
  %65 = bitcast %struct.hash_entry** %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %struct.hash_entry** %48 to i64*
  store i64 %66, i64* %67, align 8
  store i8* null, i8** %63, align 8
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %69 = bitcast %struct.hash_entry** %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %65, align 8
  store %struct.hash_entry* %62, %struct.hash_entry** %68, align 8
  br label %75

; <label>:71:                                     ; preds = %52
  %72 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1
  %73 = load %struct.hash_entry*, %struct.hash_entry** %72, align 8
  %74 = icmp eq %struct.hash_entry* %73, null
  br i1 %74, label %154, label %46

; <label>:75:                                     ; preds = %36, %45, %60
  %76 = phi i8* [ %32, %36 ], [ %32, %45 ], [ %61, %60 ]
  %77 = icmp eq i8* %76, null
  br i1 %77, label %155, label %78

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %155

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = uitofp i64 %87 to float
  %89 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %90 = load %struct.hash_tuning*, %struct.hash_tuning** %89, align 8
  %91 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 0
  %92 = load float, float* %91, align 4
  %93 = load i64, i64* %5, align 8
  %94 = uitofp i64 %93 to float
  %95 = fmul float %92, %94
  %96 = fcmp olt float %88, %95
  br i1 %96, label %97, label %155

; <label>:97:                                     ; preds = %84
  %98 = icmp eq %struct.hash_tuning* %90, @default_tuning
  br i1 %98, label %121, label %99

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 2
  %101 = load float, float* %100, align 4
  %102 = fcmp ogt float %101, 0x3FB99999A0000000
  %103 = fcmp olt float %101, 0x3FECCCCCC0000000
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %120

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = fcmp ule float %107, 0x3FF19999A0000000
  %109 = fcmp ult float %92, 0.000000e+00
  %110 = or i1 %109, %108
  br i1 %110, label %120, label %111

; <label>:111:                                    ; preds = %105
  %112 = fadd float %92, 0x3FB99999A0000000
  %113 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = fcmp olt float %112, %114
  %116 = fcmp ole float %114, 1.000000e+00
  %117 = and i1 %116, %115
  %118 = fcmp olt float %112, %101
  %119 = and i1 %118, %117
  br i1 %119, label %121, label %120

; <label>:120:                                    ; preds = %105, %111, %99
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %89, align 8
  br label %121

; <label>:121:                                    ; preds = %97, %111, %120
  %122 = phi float [ %92, %97 ], [ %92, %111 ], [ 0.000000e+00, %120 ]
  %123 = phi %struct.hash_tuning* [ @default_tuning, %97 ], [ %90, %111 ], [ @default_tuning, %120 ]
  %124 = fmul float %122, %94
  %125 = fcmp olt float %88, %124
  br i1 %125, label %126, label %155

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 4
  %128 = load i8, i8* %127, align 4
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = fmul float %94, %131
  br i1 %129, label %133, label %137

; <label>:133:                                    ; preds = %126
  %134 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 2
  %135 = load float, float* %134, align 4
  %136 = fmul float %132, %135
  br label %137

; <label>:137:                                    ; preds = %126, %133
  %138 = phi float [ %136, %133 ], [ %132, %126 ]
  %139 = fptoui float %138 to i64
  %140 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %139)
  br i1 %140, label %155, label %141

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %143 = load %struct.hash_entry*, %struct.hash_entry** %142, align 8
  %144 = icmp eq %struct.hash_entry* %143, null
  br i1 %144, label %153, label %145

; <label>:145:                                    ; preds = %141
  br label %146

; <label>:146:                                    ; preds = %145, %146
  %147 = phi %struct.hash_entry* [ %150, %146 ], [ %143, %145 ]
  %148 = bitcast %struct.hash_entry* %147 to i8*
  %149 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %147, i64 0, i32 1
  %150 = load %struct.hash_entry*, %struct.hash_entry** %149, align 8
  tail call void @free(i8* %148) #12
  %151 = icmp eq %struct.hash_entry* %150, null
  br i1 %151, label %152, label %146

; <label>:152:                                    ; preds = %146
  br label %153

; <label>:153:                                    ; preds = %152, %141
  store %struct.hash_entry* null, %struct.hash_entry** %142, align 8
  br label %155

; <label>:154:                                    ; preds = %71
  br label %155

; <label>:155:                                    ; preds = %154, %26, %11, %121, %84, %78, %153, %137, %75
  %156 = phi i8* [ null, %75 ], [ %76, %137 ], [ %76, %153 ], [ %76, %78 ], [ %76, %84 ], [ %76, %121 ], [ null, %11 ], [ null, %26 ], [ null, %154 ]
  ret i8* %156
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.heap* @heap_alloc(i32 (i8*, i8*)*, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @xmalloc(i64 32) #12
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %4, i64 1, i64 %1
  %6 = icmp ugt i64 %5, 1152921504606846975
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %2
  %9 = bitcast i8* %3 to %struct.heap*
  %10 = shl i64 %5, 3
  %11 = tail call noalias i8* @xmalloc(i64 %10) #12
  %12 = bitcast i8* %11 to i8**
  %13 = bitcast i8* %3 to i8**
  store i8* %11, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %3, i64 8
  %15 = bitcast i8* %14 to i64*
  store i64 %5, i64* %15, align 8
  %16 = getelementptr inbounds i8, i8* %3, i64 16
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 8
  %18 = icmp ne i32 (i8*, i8*)* %0, null
  %19 = select i1 %18, i32 (i8*, i8*)* %0, i32 (i8*, i8*)* @heap_default_compare
  %20 = getelementptr inbounds i8, i8* %3, i64 24
  %21 = bitcast i8* %20 to i32 (i8*, i8*)**
  store i32 (i8*, i8*)* %19, i32 (i8*, i8*)** %21, align 8
  ret %struct.heap* %9
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i32 @heap_default_compare(i8* nocapture readnone, i8* nocapture readnone) #11 {
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define void @heap_free(%struct.heap* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.heap* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #12
  %4 = bitcast %struct.heap* %0 to i8*
  tail call void @free(i8* %4) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @heap_insert(%struct.heap* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  br label %33

; <label>:12:                                     ; preds = %2
  %13 = bitcast %struct.heap* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

; <label>:16:                                     ; preds = %12
  %17 = icmp eq i64 %4, 0
  %18 = select i1 %17, i64 16, i64 %4
  br label %26

; <label>:19:                                     ; preds = %12
  %20 = icmp ult i64 %4, 768614336404564650
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %19
  tail call void @xalloc_die() #15
  unreachable

; <label>:22:                                     ; preds = %19
  %23 = lshr i64 %4, 1
  %24 = add i64 %4, 1
  %25 = add i64 %24, %23
  br label %26

; <label>:26:                                     ; preds = %16, %22
  %27 = phi i64 [ %25, %22 ], [ %18, %16 ]
  store i64 %27, i64* %3, align 8
  %28 = shl i64 %27, 3
  %29 = tail call i8* @xrealloc(i8* %14, i64 %28) #12
  store i8* %29, i8** %13, align 8
  %30 = bitcast i8* %29 to i8**
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 0
  br label %33

; <label>:33:                                     ; preds = %9, %26
  %34 = phi i8*** [ %10, %9 ], [ %32, %26 ]
  %35 = phi i64 [ %7, %9 ], [ %31, %26 ]
  %36 = phi i8** [ %11, %9 ], [ %30, %26 ]
  %37 = add i64 %35, 1
  store i64 %37, i64* %6, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %1, i8** %38, align 8
  %39 = load i8**, i8*** %34, align 8
  %40 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 3
  %41 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %39, i64 %37
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i64 %35, 0
  br i1 %44, label %61, label %45

; <label>:45:                                     ; preds = %33
  br label %46

; <label>:46:                                     ; preds = %45, %53
  %47 = phi i64 [ %48, %53 ], [ %37, %45 ]
  %48 = lshr i64 %47, 1
  %49 = getelementptr inbounds i8*, i8** %39, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = tail call i32 %41(i8* %50, i8* %43) #12
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %59

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8** %49 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8*, i8** %39, i64 %47
  %57 = bitcast i8** %56 to i64*
  store i64 %55, i64* %57, align 8
  %58 = icmp eq i64 %48, 1
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %53, %46
  %60 = phi i64 [ %47, %46 ], [ 1, %53 ]
  br label %61

; <label>:61:                                     ; preds = %59, %33
  %62 = phi i64 [ 1, %33 ], [ %60, %59 ]
  %63 = getelementptr inbounds i8*, i8** %39, i64 %62
  store i8* %43, i8** %63, align 8
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @heap_remove_top(%struct.heap* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %53, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 0
  %7 = load i8**, i8*** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = add i64 %3, -1
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds i8*, i8** %7, i64 %3
  %12 = bitcast i8** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = bitcast i8** %8 to i64*
  store i64 %13, i64* %14, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds %struct.heap, %struct.heap* %0, i64 0, i32 3
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %15, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = lshr i64 %10, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %50, label %22

; <label>:22:                                     ; preds = %5
  br label %23

; <label>:23:                                     ; preds = %22, %42
  %24 = phi i64 [ %37, %42 ], [ 1, %22 ]
  %25 = shl i64 %24, 1
  %26 = icmp ult i64 %25, %10
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds i8*, i8** %15, i64 %25
  %29 = load i8*, i8** %28, align 8
  %30 = or i64 %25, 1
  %31 = getelementptr inbounds i8*, i8** %15, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = tail call i32 %17(i8* %29, i8* %32) #12
  %34 = icmp slt i32 %33, 0
  %35 = select i1 %34, i64 %30, i64 %25
  br label %36

; <label>:36:                                     ; preds = %27, %23
  %37 = phi i64 [ %25, %23 ], [ %35, %27 ]
  %38 = getelementptr inbounds i8*, i8** %15, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = tail call i32 %17(i8* %39, i8* %19) #12
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %48, label %42

; <label>:42:                                     ; preds = %36
  %43 = bitcast i8** %38 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8*, i8** %15, i64 %24
  %46 = bitcast i8** %45 to i64*
  store i64 %44, i64* %46, align 8
  %47 = icmp ugt i64 %37, %20
  br i1 %47, label %48, label %23

; <label>:48:                                     ; preds = %42, %36
  %49 = phi i64 [ %37, %42 ], [ %24, %36 ]
  br label %50

; <label>:50:                                     ; preds = %48, %5
  %51 = phi i64 [ 1, %5 ], [ %49, %48 ]
  %52 = getelementptr inbounds i8*, i8** %15, i64 %51
  store i8* %19, i8** %52, align 8
  br label %53

; <label>:53:                                     ; preds = %1, %50
  %54 = phi i8* [ %9, %50 ], [ null, %1 ]
  ret i8* %54
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @inttostr(i32, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %1, i64 11
  store i8 0, i8* %3, align 1
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %2
  br label %19

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i32 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  %10 = srem i32 %8, 10
  %11 = sub nsw i32 48, %10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8 %12, i8* %13, align 1
  %14 = sdiv i32 %8, 10
  %15 = add i32 %8, 9
  %16 = icmp ugt i32 %15, 18
  br i1 %16, label %7, label %17

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2
  store i8 45, i8* %18, align 1
  br label %30

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i32 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  %22 = srem i32 %20, 10
  %23 = add nsw i32 %22, 48
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, i8* %21, i64 -1
  store i8 %24, i8* %25, align 1
  %26 = sdiv i32 %20, 10
  %27 = add i32 %20, 9
  %28 = icmp ugt i32 %27, 18
  br i1 %28, label %19, label %29

; <label>:29:                                     ; preds = %19
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i8* [ %18, %17 ], [ %25, %29 ]
  ret i8* %31
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @uinttostr(i32, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %1, i64 10
  store i8 0, i8* %3, align 1
  br label %4

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i32 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ]
  %7 = urem i32 %5, 10
  %8 = trunc i32 %7 to i8
  %9 = or i8 %8, 48
  %10 = getelementptr inbounds i8, i8* %6, i64 -1
  store i8 %9, i8* %10, align 1
  %11 = udiv i32 %5, 10
  %12 = icmp ugt i32 %5, 9
  br i1 %12, label %4, label %13

; <label>:13:                                     ; preds = %4
  ret i8* %10
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @gnu_mbswidth(i8*, i32) local_unnamed_addr #6 {
  %3 = tail call i64 @strlen(i8* %0) #14
  %4 = tail call i32 @mbsnwidth(i8* %0, i64 %3, i32 %1)
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @mbsnwidth(i8*, i64, i32) local_unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to %struct.__mbstate_t*
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds i8, i8* %0, i64 %1
  %8 = tail call i64 @__ctype_get_mb_cur_max() #12
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %3
  %11 = and i32 %2, 2
  %12 = icmp eq i32 %11, 0
  br label %108

; <label>:13:                                     ; preds = %3
  %14 = icmp sgt i64 %1, 0
  br i1 %14, label %15, label %115

; <label>:15:                                     ; preds = %13
  %16 = bitcast i64* %4 to i8*
  %17 = bitcast i32* %6 to i8*
  %18 = ptrtoint i8* %7 to i64
  %19 = and i32 %2, 2
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, 1
  %22 = icmp eq i32 %21, 0
  %23 = xor i32 %21, 1
  %24 = shl nuw nsw i32 %21, 2
  %25 = xor i32 %24, 5
  br label %26

; <label>:26:                                     ; preds = %15, %83
  %27 = phi i8* [ %0, %15 ], [ %85, %83 ]
  %28 = phi i32 [ 0, %15 ], [ %84, %83 ]
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %34 [
    i32 32, label %31
    i32 33, label %31
    i32 34, label %31
    i32 35, label %31
    i32 37, label %31
    i32 38, label %31
    i32 39, label %31
    i32 40, label %31
    i32 41, label %31
    i32 42, label %31
    i32 43, label %31
    i32 44, label %31
    i32 45, label %31
    i32 46, label %31
    i32 47, label %31
    i32 48, label %31
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
    i32 53, label %31
    i32 54, label %31
    i32 55, label %31
    i32 56, label %31
    i32 57, label %31
    i32 58, label %31
    i32 59, label %31
    i32 60, label %31
    i32 61, label %31
    i32 62, label %31
    i32 63, label %31
    i32 65, label %31
    i32 66, label %31
    i32 67, label %31
    i32 68, label %31
    i32 69, label %31
    i32 70, label %31
    i32 71, label %31
    i32 72, label %31
    i32 73, label %31
    i32 74, label %31
    i32 75, label %31
    i32 76, label %31
    i32 77, label %31
    i32 78, label %31
    i32 79, label %31
    i32 80, label %31
    i32 81, label %31
    i32 82, label %31
    i32 83, label %31
    i32 84, label %31
    i32 85, label %31
    i32 86, label %31
    i32 87, label %31
    i32 88, label %31
    i32 89, label %31
    i32 90, label %31
    i32 91, label %31
    i32 92, label %31
    i32 93, label %31
    i32 94, label %31
    i32 95, label %31
    i32 97, label %31
    i32 98, label %31
    i32 99, label %31
    i32 100, label %31
    i32 101, label %31
    i32 102, label %31
    i32 103, label %31
    i32 104, label %31
    i32 105, label %31
    i32 106, label %31
    i32 107, label %31
    i32 108, label %31
    i32 109, label %31
    i32 110, label %31
    i32 111, label %31
    i32 112, label %31
    i32 113, label %31
    i32 114, label %31
    i32 115, label %31
    i32 116, label %31
    i32 117, label %31
    i32 118, label %31
    i32 119, label %31
    i32 120, label %31
    i32 121, label %31
    i32 122, label %31
    i32 123, label %31
    i32 124, label %31
    i32 125, label %31
    i32 126, label %31
  ]

; <label>:31:                                     ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  %32 = getelementptr inbounds i8, i8* %27, i64 1
  %33 = add nsw i32 %28, 1
  br label %83

; <label>:34:                                     ; preds = %26
  call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #12
  store i64 0, i64* %4, align 8
  br label %35

; <label>:35:                                     ; preds = %76, %34
  %36 = phi i32 [ %28, %34 ], [ %72, %76 ]
  %37 = phi i8* [ %27, %34 ], [ %73, %76 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %17) #12
  %38 = ptrtoint i8* %37 to i64
  %39 = sub i64 %18, %38
  %40 = call i64 @rpl_mbrtowc(i32* nonnull %6, i8* %37, i64 %39, %struct.__mbstate_t* nonnull %5) #12
  switch i64 %40, label %49 [
    i64 -1, label %41
    i64 -2, label %45
    i64 0, label %48
  ]

; <label>:41:                                     ; preds = %35
  br i1 %22, label %42, label %71

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds i8, i8* %37, i64 1
  %44 = add nsw i32 %36, 1
  br label %71

; <label>:45:                                     ; preds = %35
  %46 = add nsw i32 %36, %23
  %47 = select i1 %22, i8* %7, i8* %37
  br label %71

; <label>:48:                                     ; preds = %35
  br label %49

; <label>:49:                                     ; preds = %35, %48
  %50 = phi i64 [ 1, %48 ], [ %40, %35 ]
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wcwidth(i32 %51) #12
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %49
  %55 = sub nsw i32 2147483647, %36
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %71, label %57

; <label>:57:                                     ; preds = %54
  %58 = add nsw i32 %52, %36
  br label %68

; <label>:59:                                     ; preds = %49
  br i1 %20, label %60, label %71

; <label>:60:                                     ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @iswcntrl(i32 %61) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %60
  %65 = icmp eq i32 %36, 2147483647
  br i1 %65, label %71, label %66

; <label>:66:                                     ; preds = %64
  %67 = add nsw i32 %36, 1
  br label %68

; <label>:68:                                     ; preds = %60, %66, %57
  %69 = phi i32 [ %58, %57 ], [ %36, %60 ], [ %67, %66 ]
  %70 = getelementptr inbounds i8, i8* %37, i64 %50
  br label %71

; <label>:71:                                     ; preds = %45, %59, %64, %54, %41, %68, %42
  %72 = phi i32 [ %44, %42 ], [ %69, %68 ], [ %36, %41 ], [ %36, %54 ], [ 2147483647, %64 ], [ %36, %59 ], [ %46, %45 ]
  %73 = phi i8* [ %43, %42 ], [ %70, %68 ], [ %37, %41 ], [ %37, %54 ], [ %37, %64 ], [ %37, %59 ], [ %47, %45 ]
  %74 = phi i32 [ 5, %42 ], [ 0, %68 ], [ 1, %41 ], [ 7, %54 ], [ 7, %64 ], [ 1, %59 ], [ %25, %45 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %17) #12
  %75 = trunc i32 %74 to i3
  switch i3 %75, label %80 [
    i3 0, label %76
    i3 -3, label %79
  ]

; <label>:76:                                     ; preds = %71
  %77 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %5) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %35, label %79

; <label>:79:                                     ; preds = %71, %76
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #12
  br label %83

; <label>:80:                                     ; preds = %71
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #12
  %81 = icmp eq i3 %75, -1
  %82 = select i1 %81, i32 2147483647, i32 -1
  ret i32 %82

; <label>:83:                                     ; preds = %31, %79
  %84 = phi i32 [ %33, %31 ], [ %72, %79 ]
  %85 = phi i8* [ %32, %31 ], [ %73, %79 ]
  %86 = icmp ult i8* %85, %7
  br i1 %86, label %26, label %111

; <label>:87:                                     ; preds = %108, %102
  %88 = phi i8* [ %91, %102 ], [ %110, %108 ]
  %89 = icmp ult i8* %88, %7
  br i1 %89, label %90, label %112

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds i8, i8* %88, i64 1
  %92 = load i8, i8* %88, align 1
  %93 = tail call i16** @__ctype_b_loc() #1
  %94 = load i16*, i16** %93, align 8
  %95 = zext i8 %92 to i64
  %96 = getelementptr inbounds i16, i16* %94, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 16384
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

; <label>:101:                                    ; preds = %90
  br i1 %12, label %102, label %112

; <label>:102:                                    ; preds = %101
  %103 = and i32 %98, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %87

; <label>:105:                                    ; preds = %90, %102
  %106 = icmp eq i32 %109, 2147483647
  %107 = add nsw i32 %109, 1
  br i1 %106, label %114, label %108

; <label>:108:                                    ; preds = %10, %105
  %109 = phi i32 [ 0, %10 ], [ %107, %105 ]
  %110 = phi i8* [ %0, %10 ], [ %91, %105 ]
  br label %87

; <label>:111:                                    ; preds = %83
  br label %115

; <label>:112:                                    ; preds = %87, %101
  %113 = phi i32 [ -1, %101 ], [ %109, %87 ]
  br label %115

; <label>:114:                                    ; preds = %105
  br label %115

; <label>:115:                                    ; preds = %114, %112, %111, %13
  %116 = phi i32 [ 0, %13 ], [ %84, %111 ], [ %113, %112 ], [ 2147483647, %114 ]
  ret i32 %116
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @num_processors(i32) local_unnamed_addr #6 {
  %2 = alloca %struct.__sigset_t, align 8
  %3 = alloca %struct.__sigset_t, align 8
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %15

; <label>:5:                                      ; preds = %1
  %6 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.182, i64 0, i64 0)) #12
  %7 = tail call fastcc i64 @parse_omp_threads(i8* %6)
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.183, i64 0, i64 0)) #12
  %9 = tail call fastcc i64 @parse_omp_threads(i8* %8)
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %10, i64 %9, i64 -1
  %12 = icmp eq i64 %7, 0
  %13 = icmp ult i64 %7, %11
  %14 = select i1 %13, i64 %7, i64 %11
  br i1 %12, label %15, label %52

; <label>:15:                                     ; preds = %5, %1
  %16 = phi i64 [ %11, %5 ], [ -1, %1 ]
  %17 = phi i32 [ 1, %5 ], [ %0, %1 ]
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %15
  %20 = bitcast %struct.__sigset_t* %3 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %20) #12
  %21 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.__sigset_t* nonnull %3) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %19
  %24 = call i32 @__sched_cpucount(i64 128, %struct.__sigset_t* nonnull %3) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %23, %19
  call void @llvm.lifetime.end(i64 128, i8* nonnull %20) #12
  %27 = call i64 @sysconf(i32 84) #12
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %48, label %47

; <label>:29:                                     ; preds = %23
  %30 = sext i32 %24 to i64
  call void @llvm.lifetime.end(i64 128, i8* nonnull %20) #12
  br label %48

; <label>:31:                                     ; preds = %15
  %32 = tail call i64 @sysconf(i32 83) #12
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %44

; <label>:34:                                     ; preds = %31
  %35 = bitcast %struct.__sigset_t* %2 to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %35) #12
  %36 = call i32 @sched_getaffinity(i32 0, i64 128, %struct.__sigset_t* nonnull %2) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %34
  %39 = call i32 @__sched_cpucount(i64 128, %struct.__sigset_t* nonnull %2) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38, %34
  call void @llvm.lifetime.end(i64 128, i8* nonnull %35) #12
  br label %48

; <label>:42:                                     ; preds = %38
  %43 = sext i32 %39 to i64
  call void @llvm.lifetime.end(i64 128, i8* nonnull %35) #12
  br label %44

; <label>:44:                                     ; preds = %42, %31
  %45 = phi i64 [ %43, %42 ], [ %32, %31 ]
  %46 = icmp slt i64 %45, 1
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %44, %26
  br label %48

; <label>:48:                                     ; preds = %26, %29, %41, %44, %47
  %49 = phi i64 [ 1, %47 ], [ %27, %26 ], [ %30, %29 ], [ %45, %44 ], [ 1, %41 ]
  %50 = icmp ult i64 %49, %16
  %51 = select i1 %50, i64 %49, i64 %16
  br label %52

; <label>:52:                                     ; preds = %5, %48
  %53 = phi i64 [ %51, %48 ], [ %14, %5 ]
  ret i64 %53
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @parse_omp_threads(i8* readonly) unnamed_addr #6 {
  %2 = alloca i8*, align 8
  %3 = icmp eq i8* %0, null
  br i1 %3, label %64, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %0, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %4
  br label %8

; <label>:8:                                      ; preds = %7, %19
  %9 = phi i8 [ %21, %19 ], [ %5, %7 ]
  %10 = phi i8* [ %20, %19 ], [ %0, %7 ]
  %11 = sext i8 %9 to i32
  %12 = add nsw i32 %11, -9
  %13 = icmp ult i32 %12, 24
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %8
  %15 = trunc i32 %12 to i24
  %16 = lshr i24 -8388577, %15
  %17 = and i24 %16, 1
  %18 = icmp eq i24 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %10, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %8

; <label>:23:                                     ; preds = %14, %8, %19
  %24 = phi i8 [ %9, %14 ], [ %9, %8 ], [ 0, %19 ]
  %25 = phi i8* [ %10, %14 ], [ %10, %8 ], [ %20, %19 ]
  br label %26

; <label>:26:                                     ; preds = %23, %4
  %27 = phi i8 [ 0, %4 ], [ %24, %23 ]
  %28 = phi i8* [ %0, %4 ], [ %25, %23 ]
  %29 = sext i8 %27 to i32
  %30 = add nsw i32 %29, -48
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %32, label %64

; <label>:32:                                     ; preds = %26
  %33 = bitcast i8** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #12
  store i8* null, i8** %2, align 8
  %34 = call i64 @strtoul(i8* nonnull %28, i8** nonnull %2, i32 10) #12
  %35 = load i8*, i8** %2, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %63, label %37

; <label>:37:                                     ; preds = %32
  %38 = load i8, i8* %35, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %59, label %40

; <label>:40:                                     ; preds = %37
  br label %41

; <label>:41:                                     ; preds = %40, %54
  %42 = phi i8* [ %55, %54 ], [ %35, %40 ]
  %43 = phi i8 [ %56, %54 ], [ %38, %40 ]
  %44 = sext i8 %43 to i32
  %45 = add nsw i32 %44, -9
  %46 = icmp ult i32 %45, 24
  br i1 %46, label %49, label %48

; <label>:47:                                     ; preds = %54
  store i8* %55, i8** %2, align 8
  br label %59

; <label>:48:                                     ; preds = %41
  store i8* %42, i8** %2, align 8
  br label %59

; <label>:49:                                     ; preds = %41
  %50 = trunc i32 %45 to i24
  %51 = lshr i24 -8388577, %50
  %52 = and i24 %51, 1
  %53 = icmp eq i24 %52, 0
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %49
  %55 = getelementptr inbounds i8, i8* %42, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %47, label %41

; <label>:58:                                     ; preds = %49
  store i8* %42, i8** %2, align 8
  br label %59

; <label>:59:                                     ; preds = %37, %47, %48, %58
  %60 = phi i8* [ %42, %58 ], [ %42, %48 ], [ %55, %47 ], [ %35, %37 ]
  %61 = load i8, i8* %60, align 1
  switch i8 %61, label %63 [
    i8 0, label %62
    i8 44, label %62
  ]

; <label>:62:                                     ; preds = %59, %59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #12
  br label %64

; <label>:63:                                     ; preds = %32, %59
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #12
  br label %64

; <label>:64:                                     ; preds = %26, %63, %62, %1
  %65 = phi i64 [ %34, %62 ], [ 0, %1 ], [ 0, %63 ], [ 0, %26 ]
  ret i64 %65
}

; Function Attrs: nounwind
declare i32 @sched_getaffinity(i32, i64, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @sysconf(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_total() local_unnamed_addr #6 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = tail call i64 @sysconf(i32 85) #12
  %3 = tail call i64 @sysconf(i32 30) #12
  %4 = or i64 %3, %2
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %21, label %6

; <label>:6:                                      ; preds = %0
  %7 = bitcast %struct.sysinfo* %1 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %7) #12
  %8 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #12
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
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #12
  br label %19

; <label>:18:                                     ; preds = %6
  call void @llvm.lifetime.end(i64 112, i8* nonnull %7) #12
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
declare i32 @sysinfo(%struct.sysinfo*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define double @physmem_available() local_unnamed_addr #6 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = tail call i64 @sysconf(i32 86) #12
  %4 = tail call i64 @sysconf(i32 30) #12
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
  call void @llvm.lifetime.start(i64 112, i8* nonnull %12) #12
  %13 = call i32 @sysinfo(%struct.sysinfo* nonnull %2) #12
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
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #12
  br label %52

; <label>:27:                                     ; preds = %11
  call void @llvm.lifetime.end(i64 112, i8* nonnull %12) #12
  %28 = call i64 @sysconf(i32 85) #12
  %29 = call i64 @sysconf(i32 30) #12
  %30 = or i64 %29, %28
  %31 = icmp sgt i64 %30, -1
  br i1 %31, label %45, label %32

; <label>:32:                                     ; preds = %27
  %33 = bitcast %struct.sysinfo* %1 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %33) #12
  %34 = call i32 @sysinfo(%struct.sysinfo* nonnull %1) #12
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
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #12
  br label %49

; <label>:44:                                     ; preds = %32
  call void @llvm.lifetime.end(i64 112, i8* nonnull %33) #12
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
define i32 @posix2_version() local_unnamed_addr #6 {
  %1 = alloca i8*, align 8
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.190, i64 0, i64 0)) #12
  %3 = icmp eq i8* %2, null
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #12
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #12
  %10 = load i8*, i8** %1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i64 %9, i64 200809
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #12
  br label %14

; <label>:14:                                     ; preds = %4, %0, %7
  %15 = phi i64 [ %13, %7 ], [ 200809, %4 ], [ 200809, %0 ]
  %16 = icmp slt i64 %15, -2147483648
  %17 = icmp slt i64 %15, 2147483647
  %18 = select i1 %17, i64 %15, i64 2147483647
  %19 = trunc i64 %18 to i32
  %20 = select i1 %16, i32 -2147483648, i32 %19
  ret i32 %20
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.195, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.196, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.197, i64 0, i64 0), i64 3) #14
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.208, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.209, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.210, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.210, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.210, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.209, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.209, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.209, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.210, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.211, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.212, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.213, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.214, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.210, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.209, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

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
define %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.rlimit, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %2
  %10 = tail call noalias i8* @xmalloc(i64 4152) #12
  %11 = bitcast i8* %10 to %struct.randread_source*
  %12 = bitcast i8* %10 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8
  %13 = getelementptr inbounds i8, i8* %10, i64 8
  %14 = bitcast i8* %13 to void (i8*)**
  store void (i8*)* @randread_error, void (i8*)** %14, align 8
  %15 = getelementptr inbounds i8, i8* %10, i64 16
  %16 = bitcast i8* %15 to i8**
  store i8* null, i8** %16, align 8
  br label %96

; <label>:17:                                     ; preds = %2
  %18 = icmp eq i8* %0, null
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.229, i64 0, i64 0)) #12
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %96, label %22

; <label>:22:                                     ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ]
  %24 = tail call noalias i8* @xmalloc(i64 4152) #12
  %25 = bitcast i8* %24 to %struct.randread_source*
  %26 = bitcast i8* %24 to %struct._IO_FILE**
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 8
  %28 = bitcast i8* %27 to void (i8*)**
  store void (i8*)* @randread_error, void (i8*)** %28, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 16
  %30 = bitcast i8* %29 to i8**
  store i8* %0, i8** %30, align 8
  %31 = icmp eq %struct._IO_FILE* %23, null
  %32 = getelementptr inbounds i8, i8* %24, i64 24
  br i1 %31, label %37, label %33

; <label>:33:                                     ; preds = %22
  %34 = icmp ult i64 %1, 4096
  %35 = select i1 %34, i64 %1, i64 4096
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* %32, i32 0, i64 %35) #12
  br label %96

; <label>:37:                                     ; preds = %22
  %38 = bitcast i8* %32 to i64*
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds i8, i8* %24, i64 32
  %40 = bitcast i8* %39 to %struct.isaac_state*
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.230, i64 0, i64 0), i32 0) #12
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %37
  %44 = icmp ult i64 %1, 2048
  %45 = select i1 %44, i64 %1, i64 2048
  %46 = tail call i64 @read(i32 %41, i8* %39, i64 %45) #12
  %47 = icmp sgt i64 %46, 0
  %48 = tail call i32 @close(i32 %41) #12
  br i1 %47, label %49, label %51

; <label>:49:                                     ; preds = %43
  %50 = icmp ult i64 %46, 2048
  br i1 %50, label %51, label %95

; <label>:51:                                     ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.rlimit* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %53) #12
  %54 = sub nsw i64 2048, %52
  %55 = icmp ult i64 %54, 16
  %56 = select i1 %55, i64 %54, i64 16
  %57 = call i32 @gettimeofday(%struct.rlimit* nonnull %3, %struct.timezone* null) #12
  %58 = getelementptr inbounds i8, i8* %39, i64 %52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* nonnull %53, i64 %56, i32 1, i1 false) #12
  %59 = add i64 %56, %52
  call void @llvm.lifetime.end(i64 16, i8* nonnull %53) #12
  %60 = icmp ult i64 %59, 2048
  br i1 %60, label %61, label %95

; <label>:61:                                     ; preds = %51
  %62 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %62)
  %63 = sub i64 2048, %59
  %64 = icmp ult i64 %63, 4
  %65 = select i1 %64, i64 %63, i64 4
  %66 = tail call i32 @getpid() #12
  store i32 %66, i32* %4, align 4
  %67 = getelementptr inbounds i8, i8* %39, i64 %59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* nonnull %62, i64 %65, i32 1, i1 false) #12
  %68 = add i64 %65, %59
  call void @llvm.lifetime.end(i64 4, i8* nonnull %62)
  %69 = icmp ult i64 %68, 2048
  br i1 %69, label %70, label %95

; <label>:70:                                     ; preds = %61
  %71 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %71)
  %72 = sub i64 2048, %68
  %73 = icmp ult i64 %72, 4
  %74 = select i1 %73, i64 %72, i64 4
  %75 = tail call i32 @getppid() #12
  store i32 %75, i32* %5, align 4
  %76 = getelementptr inbounds i8, i8* %39, i64 %68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* nonnull %71, i64 %74, i32 1, i1 false) #12
  %77 = add i64 %74, %68
  call void @llvm.lifetime.end(i64 4, i8* nonnull %71)
  %78 = icmp ult i64 %77, 2048
  br i1 %78, label %79, label %95

; <label>:79:                                     ; preds = %70
  %80 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %80)
  %81 = sub i64 2048, %77
  %82 = icmp ult i64 %81, 4
  %83 = select i1 %82, i64 %81, i64 4
  %84 = tail call i32 @getuid() #12
  store i32 %84, i32* %6, align 4
  %85 = getelementptr inbounds i8, i8* %39, i64 %77
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* nonnull %80, i64 %83, i32 1, i1 false) #12
  %86 = add i64 %83, %77
  call void @llvm.lifetime.end(i64 4, i8* nonnull %80)
  %87 = icmp ult i64 %86, 2048
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %79
  %89 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %89)
  %90 = sub i64 2048, %86
  %91 = icmp ult i64 %90, 4
  %92 = select i1 %91, i64 %90, i64 4
  %93 = tail call i32 @getgid() #12
  store i32 %93, i32* %7, align 4
  %94 = getelementptr inbounds i8, i8* %39, i64 %86
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* nonnull %89, i64 %92, i32 1, i1 false) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %89)
  br label %95

; <label>:95:                                     ; preds = %49, %51, %61, %70, %79, %88
  tail call void @isaac_seed(%struct.isaac_state* %40) #12
  br label %96

; <label>:96:                                     ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ]
  ret %struct.randread_source* %97
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8*) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %11, label %3

; <label>:3:                                      ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.231, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.232, i64 0, i64 0)
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #12
  %10 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #12
  br label %11

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.rlimit* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler(%struct.randread_source* nocapture, void (i8*)*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  store void (i8*)* %1, void (i8*)** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler_arg(%struct.randread_source* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  store i8* %1, i8** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread(%struct.randread_source*, i8*, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #12
  %9 = tail call i32* @__errno_location() #1
  %10 = sub i64 %2, %8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %69, label %12

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  %20 = load i32, i32* %9, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i32 %20, i32 0
  store i32 %26, i32* %9, align 4
  %27 = load void (i8*)*, void (i8*)** %13, align 8
  %28 = load i8*, i8** %14, align 8
  tail call void %27(i8* %28) #12
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #12
  %31 = sub i64 %16, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %68, label %15

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %35, %2
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2
  %38 = getelementptr inbounds %union.anon.0.21, %union.anon.0.21* %37, i64 1
  %39 = bitcast %union.anon.0.21* %38 to i8*
  %40 = sub i64 0, %35
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  br i1 %36, label %42, label %49

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0.21, %union.anon.0.21* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0.21* %37 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %41, i64 %35, i32 1, i1 false) #12
  %46 = getelementptr inbounds i8, i8* %1, i64 %35
  %47 = sub i64 %2, %35
  %48 = bitcast i8* %46 to i64*
  br label %55

; <label>:49:                                     ; preds = %63, %33
  %50 = phi i64 [ %2, %33 ], [ %56, %63 ]
  %51 = phi i64 [ %35, %33 ], [ 2048, %63 ]
  %52 = phi i8* [ %1, %33 ], [ %64, %63 ]
  %53 = phi i8* [ %41, %33 ], [ %45, %63 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %50, i32 1, i1 false) #12
  %54 = sub i64 %51, %50
  br label %66

; <label>:55:                                     ; preds = %59, %42
  %56 = phi i64 [ %47, %42 ], [ %61, %59 ]
  %57 = phi i64* [ %48, %42 ], [ %60, %59 ]
  %58 = icmp ugt i64 %56, 2047
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %55
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %57) #12
  %60 = getelementptr inbounds i64, i64* %57, i64 256
  %61 = add i64 %56, -2048
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %55

; <label>:63:                                     ; preds = %55
  %64 = bitcast i64* %57 to i8*
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %44) #12
  br label %49

; <label>:65:                                     ; preds = %59
  br label %66

; <label>:66:                                     ; preds = %65, %49
  %67 = phi i64 [ %54, %49 ], [ 0, %65 ]
  store i64 %67, i64* %34, align 8
  br label %69

; <label>:68:                                     ; preds = %15
  br label %69

; <label>:69:                                     ; preds = %68, %7, %66
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @randread_free(%struct.randread_source* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = bitcast %struct.randread_source* %0 to i8*
  tail call void @free(i8* %4) #12
  %5 = icmp eq %struct._IO_FILE* %3, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #12
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_refill(%struct.isaac_state*, i64* nocapture) local_unnamed_addr #6 {
  %3 = ptrtoint %struct.isaac_state* %0 to i64
  %4 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0
  %13 = bitcast %struct.isaac_state* %0 to i8*
  %14 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  %15 = ptrtoint i64* %14 to i64
  %16 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 4
  %17 = ptrtoint i64* %16 to i64
  %18 = icmp ugt i64 %15, %17
  %19 = select i1 %18, i64 %15, i64 %17
  %20 = inttoptr i64 %19 to i8*
  %21 = xor i64 %3, -1
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = ptrtoint i8* %22 to i64
  %24 = lshr i64 %23, 5
  %25 = shl nuw nsw i64 %24, 2
  %26 = add nuw nsw i64 %25, 4
  %27 = getelementptr i64, i64* %1, i64 %26
  br label %28

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64* [ %1, %2 ], [ %112, %28 ]
  %30 = phi i64* [ %12, %2 ], [ %113, %28 ]
  %31 = phi i64 [ %11, %2 ], [ %110, %28 ]
  %32 = phi i64 [ %5, %2 ], [ %96, %28 ]
  %33 = shl i64 %32, 21
  %34 = xor i64 %32, -1
  %35 = xor i64 %33, %34
  %36 = getelementptr inbounds i64, i64* %30, i64 128
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %35, %37
  %39 = load i64, i64* %30, align 8
  %40 = and i64 %39, 2040
  %41 = getelementptr inbounds i8, i8* %13, i64 %40
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %31
  %45 = add i64 %44, %38
  store i64 %45, i64* %30, align 8
  %46 = lshr i64 %45, 8
  %47 = and i64 %46, 2040
  %48 = getelementptr inbounds i8, i8* %13, i64 %47
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %39
  store i64 %51, i64* %29, align 8
  %52 = lshr i64 %38, 5
  %53 = xor i64 %52, %38
  %54 = getelementptr inbounds i64, i64* %30, i64 129
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  %57 = getelementptr inbounds i64, i64* %30, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 2040
  %60 = getelementptr inbounds i8, i8* %13, i64 %59
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %56, %51
  %64 = add i64 %63, %62
  store i64 %64, i64* %57, align 8
  %65 = lshr i64 %64, 8
  %66 = and i64 %65, 2040
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  %68 = bitcast i8* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %58
  %71 = getelementptr inbounds i64, i64* %29, i64 1
  store i64 %70, i64* %71, align 8
  %72 = shl i64 %56, 12
  %73 = xor i64 %72, %56
  %74 = getelementptr inbounds i64, i64* %30, i64 130
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %73
  %77 = getelementptr inbounds i64, i64* %30, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, 2040
  %80 = getelementptr inbounds i8, i8* %13, i64 %79
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %76, %70
  %84 = add i64 %83, %82
  store i64 %84, i64* %77, align 8
  %85 = lshr i64 %84, 8
  %86 = and i64 %85, 2040
  %87 = getelementptr inbounds i8, i8* %13, i64 %86
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %78
  %91 = getelementptr inbounds i64, i64* %29, i64 2
  store i64 %90, i64* %91, align 8
  %92 = lshr i64 %76, 33
  %93 = xor i64 %92, %76
  %94 = getelementptr inbounds i64, i64* %30, i64 131
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %93
  %97 = getelementptr inbounds i64, i64* %30, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = and i64 %98, 2040
  %100 = getelementptr inbounds i8, i8* %13, i64 %99
  %101 = bitcast i8* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %96, %90
  %104 = add i64 %103, %102
  store i64 %104, i64* %97, align 8
  %105 = lshr i64 %104, 8
  %106 = and i64 %105, 2040
  %107 = getelementptr inbounds i8, i8* %13, i64 %106
  %108 = bitcast i8* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %98
  %111 = getelementptr inbounds i64, i64* %29, i64 3
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds i64, i64* %29, i64 4
  %113 = getelementptr inbounds i64, i64* %30, i64 4
  %114 = icmp ult i64* %113, %14
  br i1 %114, label %28, label %115

; <label>:115:                                    ; preds = %28
  %116 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %26
  %117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %118

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64* [ %202, %118 ], [ %27, %115 ]
  %120 = phi i64* [ %203, %118 ], [ %116, %115 ]
  %121 = phi i64 [ %200, %118 ], [ %110, %115 ]
  %122 = phi i64 [ %186, %118 ], [ %96, %115 ]
  %123 = shl i64 %122, 21
  %124 = xor i64 %122, -1
  %125 = xor i64 %123, %124
  %126 = getelementptr inbounds i64, i64* %120, i64 -128
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %125, %127
  %129 = load i64, i64* %120, align 8
  %130 = and i64 %129, 2040
  %131 = getelementptr inbounds i8, i8* %13, i64 %130
  %132 = bitcast i8* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %121
  %135 = add i64 %134, %128
  store i64 %135, i64* %120, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 2040
  %138 = getelementptr inbounds i8, i8* %13, i64 %137
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, %129
  store i64 %141, i64* %119, align 8
  %142 = lshr i64 %128, 5
  %143 = xor i64 %142, %128
  %144 = getelementptr inbounds i64, i64* %120, i64 -127
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %143
  %147 = getelementptr inbounds i64, i64* %120, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = and i64 %148, 2040
  %150 = getelementptr inbounds i8, i8* %13, i64 %149
  %151 = bitcast i8* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %146, %141
  %154 = add i64 %153, %152
  store i64 %154, i64* %147, align 8
  %155 = lshr i64 %154, 8
  %156 = and i64 %155, 2040
  %157 = getelementptr inbounds i8, i8* %13, i64 %156
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %148
  %161 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 %160, i64* %161, align 8
  %162 = shl i64 %146, 12
  %163 = xor i64 %162, %146
  %164 = getelementptr inbounds i64, i64* %120, i64 -126
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %163
  %167 = getelementptr inbounds i64, i64* %120, i64 2
  %168 = load i64, i64* %167, align 8
  %169 = and i64 %168, 2040
  %170 = getelementptr inbounds i8, i8* %13, i64 %169
  %171 = bitcast i8* %170 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %166, %160
  %174 = add i64 %173, %172
  store i64 %174, i64* %167, align 8
  %175 = lshr i64 %174, 8
  %176 = and i64 %175, 2040
  %177 = getelementptr inbounds i8, i8* %13, i64 %176
  %178 = bitcast i8* %177 to i64*
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %168
  %181 = getelementptr inbounds i64, i64* %119, i64 2
  store i64 %180, i64* %181, align 8
  %182 = lshr i64 %166, 33
  %183 = xor i64 %182, %166
  %184 = getelementptr inbounds i64, i64* %120, i64 -125
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, %183
  %187 = getelementptr inbounds i64, i64* %120, i64 3
  %188 = load i64, i64* %187, align 8
  %189 = and i64 %188, 2040
  %190 = getelementptr inbounds i8, i8* %13, i64 %189
  %191 = bitcast i8* %190 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %186, %180
  %194 = add i64 %193, %192
  store i64 %194, i64* %187, align 8
  %195 = lshr i64 %194, 8
  %196 = and i64 %195, 2040
  %197 = getelementptr inbounds i8, i8* %13, i64 %196
  %198 = bitcast i8* %197 to i64*
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, %188
  %201 = getelementptr inbounds i64, i64* %119, i64 3
  store i64 %200, i64* %201, align 8
  %202 = getelementptr inbounds i64, i64* %119, i64 4
  %203 = getelementptr inbounds i64, i64* %120, i64 4
  %204 = icmp ult i64* %203, %117
  br i1 %204, label %118, label %205

; <label>:205:                                    ; preds = %118
  store i64 %186, i64* %4, align 8
  store i64 %200, i64* %6, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_seed(%struct.isaac_state* nocapture) local_unnamed_addr #6 {
  br label %2

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %11
  %15 = or i64 %3, 1
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %10
  %19 = or i64 %3, 2
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %9
  %23 = or i64 %3, 3
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %8
  %27 = or i64 %3, 4
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %7
  %31 = or i64 %3, 5
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %6
  %35 = or i64 %3, 6
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %5
  %39 = or i64 %3, 7
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %4
  %43 = sub i64 %14, %30
  %44 = lshr i64 %42, 9
  %45 = xor i64 %44, %34
  %46 = add i64 %42, %43
  %47 = sub i64 %18, %45
  %48 = shl i64 %43, 9
  %49 = xor i64 %38, %48
  %50 = add i64 %47, %43
  %51 = sub i64 %22, %49
  %52 = lshr i64 %47, 23
  %53 = xor i64 %52, %46
  %54 = add i64 %47, %51
  %55 = sub i64 %26, %53
  %56 = shl i64 %51, 15
  %57 = xor i64 %50, %56
  %58 = add i64 %55, %51
  %59 = sub i64 %30, %57
  %60 = lshr i64 %55, 14
  %61 = xor i64 %60, %54
  %62 = add i64 %55, %59
  %63 = sub i64 %45, %61
  %64 = shl i64 %59, 20
  %65 = xor i64 %58, %64
  %66 = add i64 %63, %59
  %67 = sub i64 %49, %65
  %68 = lshr i64 %63, 17
  %69 = xor i64 %68, %62
  %70 = add i64 %63, %67
  %71 = sub i64 %53, %69
  %72 = shl i64 %67, 14
  %73 = xor i64 %66, %72
  %74 = add i64 %71, %67
  store i64 %57, i64* %12, align 8
  store i64 %61, i64* %16, align 8
  store i64 %65, i64* %20, align 8
  store i64 %69, i64* %24, align 8
  store i64 %73, i64* %28, align 8
  store i64 %70, i64* %32, align 8
  store i64 %74, i64* %36, align 8
  store i64 %71, i64* %40, align 8
  %75 = add nuw nsw i64 %3, 8
  %76 = icmp slt i64 %75, 256
  br i1 %76, label %2, label %77

; <label>:77:                                     ; preds = %2
  br label %78

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %151, %78 ], [ 0, %77 ]
  %80 = phi i64 [ %147, %78 ], [ %71, %77 ]
  %81 = phi i64 [ %150, %78 ], [ %74, %77 ]
  %82 = phi i64 [ %146, %78 ], [ %70, %77 ]
  %83 = phi i64 [ %149, %78 ], [ %73, %77 ]
  %84 = phi i64 [ %145, %78 ], [ %69, %77 ]
  %85 = phi i64 [ %141, %78 ], [ %65, %77 ]
  %86 = phi i64 [ %137, %78 ], [ %61, %77 ]
  %87 = phi i64 [ %133, %78 ], [ %57, %77 ]
  %88 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %79
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %87
  %91 = or i64 %79, 1
  %92 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %86
  %95 = or i64 %79, 2
  %96 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %85
  %99 = or i64 %79, 3
  %100 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %84
  %103 = or i64 %79, 4
  %104 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %83
  %107 = or i64 %79, 5
  %108 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %82
  %111 = or i64 %79, 6
  %112 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %81
  %115 = or i64 %79, 7
  %116 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %80
  %119 = sub i64 %90, %106
  %120 = lshr i64 %118, 9
  %121 = xor i64 %120, %110
  %122 = add i64 %118, %119
  %123 = sub i64 %94, %121
  %124 = shl i64 %119, 9
  %125 = xor i64 %114, %124
  %126 = add i64 %123, %119
  %127 = sub i64 %98, %125
  %128 = lshr i64 %123, 23
  %129 = xor i64 %128, %122
  %130 = add i64 %123, %127
  %131 = sub i64 %102, %129
  %132 = shl i64 %127, 15
  %133 = xor i64 %126, %132
  %134 = add i64 %131, %127
  %135 = sub i64 %106, %133
  %136 = lshr i64 %131, 14
  %137 = xor i64 %136, %130
  %138 = add i64 %131, %135
  %139 = sub i64 %121, %137
  %140 = shl i64 %135, 20
  %141 = xor i64 %134, %140
  %142 = add i64 %139, %135
  %143 = sub i64 %125, %141
  %144 = lshr i64 %139, 17
  %145 = xor i64 %144, %138
  %146 = add i64 %139, %143
  %147 = sub i64 %129, %145
  %148 = shl i64 %143, 14
  %149 = xor i64 %142, %148
  %150 = add i64 %147, %143
  store i64 %133, i64* %88, align 8
  store i64 %137, i64* %92, align 8
  store i64 %141, i64* %96, align 8
  store i64 %145, i64* %100, align 8
  store i64 %149, i64* %104, align 8
  store i64 %146, i64* %108, align 8
  store i64 %150, i64* %112, align 8
  store i64 %147, i64* %116, align 8
  %151 = add nuw nsw i64 %79, 8
  %152 = icmp slt i64 %151, 256
  br i1 %152, label %78, label %153

; <label>:153:                                    ; preds = %78
  %154 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1
  %155 = bitcast i64* %154 to i8*
  call void @llvm.memset.p0i8.i64(i8* %155, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_init(%struct.Tokens*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3
  %3 = bitcast %struct.Tokens* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  %4 = tail call i32 @_obstack_begin(%struct.obstack* %2, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #12
  %5 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4
  %6 = tail call i32 @_obstack_begin(%struct.obstack* %5, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #12
  %7 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5
  %8 = tail call i32 @_obstack_begin(%struct.obstack* %7, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @readtokens0_free(%struct.Tokens*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 3
  tail call void @_obstack_free(%struct.obstack* %2, i8* null) #12
  %3 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 4
  tail call void @_obstack_free(%struct.obstack* %3, i8* null) #12
  %4 = getelementptr inbounds %struct.Tokens, %struct.Tokens* %0, i64 0, i32 5
  tail call void @_obstack_free(%struct.obstack* %4, i8* null) #12
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
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %19, i64 1) #12
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
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %14, i64 1) #12
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
  tail call void @_obstack_newchunk(%struct.obstack* %65, i64 8) #12
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
  %135 = tail call i32 @ferror(%struct._IO_FILE* %0) #12
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
  tail call void @_obstack_newchunk(%struct.obstack* %48, i64 8) #12
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
  tail call void @_obstack_newchunk(%struct.obstack* %66, i64 8) #12
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
define i32 @mkstemp_safer(i8*) local_unnamed_addr #6 {
  %2 = tail call i32 @mkstemp(i8* %0) #12
  %3 = tail call i32 @fd_safer(i32 %2) #12
  ret i32 %3
}

declare i32 @mkstemp(i8*) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @strnumcmp(i8* nocapture readonly, i8* nocapture readonly, i32, i32) local_unnamed_addr #9 {
  %5 = load i8, i8* %0, align 1
  %6 = load i8, i8* %1, align 1
  %7 = icmp eq i8 %5, 45
  br i1 %7, label %8, label %220

; <label>:8:                                      ; preds = %4
  br label %9

; <label>:9:                                      ; preds = %8, %9
  %10 = phi i8* [ %11, %9 ], [ %0, %8 ]
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %12, 48
  %15 = icmp eq i32 %13, %3
  %16 = or i1 %14, %15
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %9
  %18 = icmp eq i8 %6, 45
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  br label %67

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i32 %13, %2
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %20
  br label %23

; <label>:23:                                     ; preds = %22, %23
  %24 = phi i8* [ %25, %23 ], [ %11, %22 ]
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 48
  br i1 %27, label %23, label %28

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %20
  %30 = phi i8 [ %12, %20 ], [ %26, %28 ]
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  br i1 %33, label %460, label %34

; <label>:34:                                     ; preds = %29
  %35 = zext i8 %6 to i32
  %36 = icmp eq i8 %6, 48
  %37 = icmp eq i32 %35, %3
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %49

; <label>:39:                                     ; preds = %34
  br label %40

; <label>:40:                                     ; preds = %39, %40
  %41 = phi i8* [ %42, %40 ], [ %1, %39 ]
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i8 %43, 48
  %46 = icmp eq i32 %44, %3
  %47 = or i1 %45, %46
  br i1 %47, label %40, label %48

; <label>:48:                                     ; preds = %40
  br label %49

; <label>:49:                                     ; preds = %48, %34
  %50 = phi i8* [ %1, %34 ], [ %42, %48 ]
  %51 = phi i8 [ %6, %34 ], [ %43, %48 ]
  %52 = phi i32 [ %35, %34 ], [ %44, %48 ]
  %53 = icmp eq i32 %52, %2
  br i1 %53, label %54, label %61

; <label>:54:                                     ; preds = %49
  br label %55

; <label>:55:                                     ; preds = %54, %55
  %56 = phi i8* [ %57, %55 ], [ %50, %54 ]
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 48
  br i1 %59, label %55, label %60

; <label>:60:                                     ; preds = %55
  br label %61

; <label>:61:                                     ; preds = %60, %49
  %62 = phi i8 [ %51, %49 ], [ %58, %60 ]
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, -48
  %65 = icmp ult i32 %64, 10
  %66 = sext i1 %65 to i32
  br label %460

; <label>:67:                                     ; preds = %19, %67
  %68 = phi i8* [ %69, %67 ], [ %1, %19 ]
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 48
  %72 = zext i8 %70 to i32
  %73 = icmp eq i32 %72, %3
  %74 = or i1 %71, %73
  br i1 %74, label %67, label %75

; <label>:75:                                     ; preds = %67
  %76 = icmp eq i8 %70, %12
  %77 = add nsw i32 %13, -48
  %78 = icmp ult i32 %77, 10
  %79 = and i1 %78, %76
  br i1 %79, label %80, label %103

; <label>:80:                                     ; preds = %75
  br label %86

; <label>:81:                                     ; preds = %96
  %82 = icmp eq i8 %99, %92
  %83 = add nsw i32 %93, -48
  %84 = icmp ult i32 %83, 10
  %85 = and i1 %84, %82
  br i1 %85, label %86, label %102

; <label>:86:                                     ; preds = %80, %81
  %87 = phi i8* [ %91, %81 ], [ %11, %80 ]
  %88 = phi i8* [ %98, %81 ], [ %69, %80 ]
  br label %89

; <label>:89:                                     ; preds = %89, %86
  %90 = phi i8* [ %91, %89 ], [ %87, %86 ]
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, %3
  br i1 %94, label %89, label %95

; <label>:95:                                     ; preds = %89
  br label %96

; <label>:96:                                     ; preds = %95, %96
  %97 = phi i8* [ %98, %96 ], [ %88, %95 ]
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, %3
  br i1 %101, label %96, label %81

; <label>:102:                                    ; preds = %81
  br label %103

; <label>:103:                                    ; preds = %102, %75
  %104 = phi i8* [ %69, %75 ], [ %98, %102 ]
  %105 = phi i8* [ %11, %75 ], [ %91, %102 ]
  %106 = phi i8 [ %12, %75 ], [ %92, %102 ]
  %107 = phi i8 [ %70, %75 ], [ %99, %102 ]
  %108 = phi i32 [ %13, %75 ], [ %93, %102 ]
  %109 = phi i1 [ %78, %75 ], [ %84, %102 ]
  %110 = zext i8 %107 to i32
  %111 = icmp ne i32 %108, %2
  %112 = add nsw i32 %110, -48
  %113 = icmp ult i32 %112, 10
  %114 = or i1 %111, %113
  %115 = icmp ne i32 %110, %2
  %116 = or i1 %115, %109
  %117 = and i1 %116, %114
  br i1 %117, label %174, label %118

; <label>:118:                                    ; preds = %103
  %119 = trunc i32 %2 to i8
  %120 = icmp eq i8 %107, %119
  br i1 %120, label %121, label %159

; <label>:121:                                    ; preds = %118
  %122 = icmp eq i8 %106, %119
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %121
  br label %126

; <label>:124:                                    ; preds = %121
  %125 = getelementptr inbounds i8, i8* %104, i64 1
  br label %146

; <label>:126:                                    ; preds = %123, %137
  %127 = phi i8* [ %129, %137 ], [ %104, %123 ]
  %128 = phi i8* [ %132, %137 ], [ %105, %123 ]
  %129 = getelementptr inbounds i8, i8* %127, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = getelementptr inbounds i8, i8* %128, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = icmp eq i8 %130, %133
  %135 = add nsw i32 %131, -48
  %136 = icmp ult i32 %135, 10
  br i1 %134, label %137, label %138

; <label>:137:                                    ; preds = %126
  br i1 %136, label %126, label %458

; <label>:138:                                    ; preds = %126
  %139 = sext i8 %133 to i32
  %140 = add nsw i32 %139, -48
  %141 = icmp ult i32 %140, 10
  %142 = and i1 %136, %141
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %138
  %144 = sub nsw i32 %131, %139
  br label %460

; <label>:145:                                    ; preds = %138
  br i1 %136, label %146, label %148

; <label>:146:                                    ; preds = %124, %145
  %147 = phi i8* [ %125, %124 ], [ %129, %145 ]
  br label %149

; <label>:148:                                    ; preds = %145
  br i1 %141, label %162, label %460

; <label>:149:                                    ; preds = %146, %149
  %150 = phi i8* [ %153, %149 ], [ %147, %146 ]
  %151 = load i8, i8* %150, align 1
  %152 = icmp eq i8 %151, 48
  %153 = getelementptr inbounds i8, i8* %150, i64 1
  br i1 %152, label %149, label %154

; <label>:154:                                    ; preds = %149
  %155 = sext i8 %151 to i32
  %156 = add nsw i32 %155, -48
  %157 = icmp ult i32 %156, 10
  %158 = zext i1 %157 to i32
  br label %460

; <label>:159:                                    ; preds = %118
  %160 = getelementptr inbounds i8, i8* %105, i64 1
  %161 = icmp eq i8 %106, %119
  br i1 %161, label %162, label %460

; <label>:162:                                    ; preds = %148, %159
  %163 = phi i8* [ %160, %159 ], [ %132, %148 ]
  br label %164

; <label>:164:                                    ; preds = %162, %164
  %165 = phi i8* [ %168, %164 ], [ %163, %162 ]
  %166 = load i8, i8* %165, align 1
  %167 = icmp eq i8 %166, 48
  %168 = getelementptr inbounds i8, i8* %165, i64 1
  br i1 %167, label %164, label %169

; <label>:169:                                    ; preds = %164
  %170 = sext i8 %166 to i32
  %171 = add nsw i32 %170, -48
  %172 = icmp ult i32 %171, 10
  %173 = sext i1 %172 to i32
  br label %460

; <label>:174:                                    ; preds = %103
  %175 = sub nsw i32 %110, %108
  %176 = zext i8 %106 to i32
  %177 = add nsw i32 %176, -48
  %178 = icmp ult i32 %177, 10
  br i1 %178, label %179, label %184

; <label>:179:                                    ; preds = %174
  br label %180

; <label>:180:                                    ; preds = %179, %193
  %181 = phi i64 [ %194, %193 ], [ 0, %179 ]
  %182 = phi i8* [ %189, %193 ], [ %105, %179 ]
  br label %187

; <label>:183:                                    ; preds = %193
  br label %184

; <label>:184:                                    ; preds = %183, %174
  %185 = phi i64 [ 0, %174 ], [ %194, %183 ]
  br i1 %113, label %186, label %211

; <label>:186:                                    ; preds = %184
  br label %197

; <label>:187:                                    ; preds = %187, %180
  %188 = phi i8* [ %189, %187 ], [ %182, %180 ]
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, %3
  br i1 %192, label %187, label %193

; <label>:193:                                    ; preds = %187
  %194 = add i64 %181, 1
  %195 = add nsw i32 %191, -48
  %196 = icmp ult i32 %195, 10
  br i1 %196, label %180, label %183

; <label>:197:                                    ; preds = %186, %206
  %198 = phi i64 [ %207, %206 ], [ 0, %186 ]
  %199 = phi i8* [ %202, %206 ], [ %104, %186 ]
  br label %200

; <label>:200:                                    ; preds = %200, %197
  %201 = phi i8* [ %202, %200 ], [ %199, %197 ]
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, %3
  br i1 %205, label %200, label %206

; <label>:206:                                    ; preds = %200
  %207 = add i64 %198, 1
  %208 = add nsw i32 %204, -48
  %209 = icmp ult i32 %208, 10
  br i1 %209, label %197, label %210

; <label>:210:                                    ; preds = %206
  br label %211

; <label>:211:                                    ; preds = %210, %184
  %212 = phi i64 [ 0, %184 ], [ %207, %210 ]
  %213 = icmp eq i64 %185, %212
  br i1 %213, label %217, label %214

; <label>:214:                                    ; preds = %211
  %215 = icmp ult i64 %185, %212
  %216 = select i1 %215, i32 1, i32 -1
  br label %460

; <label>:217:                                    ; preds = %211
  %218 = icmp eq i64 %185, 0
  %219 = select i1 %218, i32 0, i32 %175
  br label %460

; <label>:220:                                    ; preds = %4
  %221 = icmp eq i8 %6, 45
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %220
  br label %229

; <label>:223:                                    ; preds = %220
  %224 = icmp eq i8 %5, 48
  %225 = zext i8 %5 to i32
  %226 = icmp eq i32 %225, %3
  %227 = or i1 %224, %226
  br i1 %227, label %228, label %285

; <label>:228:                                    ; preds = %223
  br label %293

; <label>:229:                                    ; preds = %222, %229
  %230 = phi i8* [ %231, %229 ], [ %1, %222 ]
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = icmp eq i8 %232, 48
  %235 = icmp eq i32 %233, %3
  %236 = or i1 %234, %235
  br i1 %236, label %229, label %237

; <label>:237:                                    ; preds = %229
  %238 = icmp eq i32 %233, %2
  br i1 %238, label %239, label %246

; <label>:239:                                    ; preds = %237
  br label %240

; <label>:240:                                    ; preds = %239, %240
  %241 = phi i8* [ %242, %240 ], [ %231, %239 ]
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = icmp eq i8 %243, 48
  br i1 %244, label %240, label %245

; <label>:245:                                    ; preds = %240
  br label %246

; <label>:246:                                    ; preds = %245, %237
  %247 = phi i8 [ %232, %237 ], [ %243, %245 ]
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %248, -48
  %250 = icmp ult i32 %249, 10
  br i1 %250, label %460, label %251

; <label>:251:                                    ; preds = %246
  %252 = zext i8 %5 to i32
  %253 = icmp eq i8 %5, 48
  %254 = icmp eq i32 %252, %3
  %255 = or i1 %253, %254
  br i1 %255, label %256, label %266

; <label>:256:                                    ; preds = %251
  br label %257

; <label>:257:                                    ; preds = %256, %257
  %258 = phi i8* [ %259, %257 ], [ %0, %256 ]
  %259 = getelementptr inbounds i8, i8* %258, i64 1
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = icmp eq i8 %260, 48
  %263 = icmp eq i32 %261, %3
  %264 = or i1 %262, %263
  br i1 %264, label %257, label %265

; <label>:265:                                    ; preds = %257
  br label %266

; <label>:266:                                    ; preds = %265, %251
  %267 = phi i8* [ %0, %251 ], [ %259, %265 ]
  %268 = phi i8 [ %5, %251 ], [ %260, %265 ]
  %269 = phi i32 [ %252, %251 ], [ %261, %265 ]
  %270 = icmp eq i32 %269, %2
  br i1 %270, label %271, label %278

; <label>:271:                                    ; preds = %266
  br label %272

; <label>:272:                                    ; preds = %271, %272
  %273 = phi i8* [ %274, %272 ], [ %267, %271 ]
  %274 = getelementptr inbounds i8, i8* %273, i64 1
  %275 = load i8, i8* %274, align 1
  %276 = icmp eq i8 %275, 48
  br i1 %276, label %272, label %277

; <label>:277:                                    ; preds = %272
  br label %278

; <label>:278:                                    ; preds = %277, %266
  %279 = phi i8 [ %268, %266 ], [ %275, %277 ]
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %280, -48
  %282 = icmp ult i32 %281, 10
  %283 = zext i1 %282 to i32
  br label %460

; <label>:284:                                    ; preds = %293
  br label %285

; <label>:285:                                    ; preds = %284, %223
  %286 = phi i8* [ %0, %223 ], [ %295, %284 ]
  %287 = phi i8 [ %5, %223 ], [ %296, %284 ]
  %288 = icmp eq i8 %6, 48
  %289 = zext i8 %6 to i32
  %290 = icmp eq i32 %289, %3
  %291 = or i1 %288, %290
  br i1 %291, label %292, label %302

; <label>:292:                                    ; preds = %285
  br label %311

; <label>:293:                                    ; preds = %228, %293
  %294 = phi i8* [ %295, %293 ], [ %0, %228 ]
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8, i8* %295, align 1
  %297 = icmp eq i8 %296, 48
  %298 = zext i8 %296 to i32
  %299 = icmp eq i32 %298, %3
  %300 = or i1 %297, %299
  br i1 %300, label %293, label %284

; <label>:301:                                    ; preds = %311
  br label %302

; <label>:302:                                    ; preds = %301, %285
  %303 = phi i8* [ %1, %285 ], [ %313, %301 ]
  %304 = phi i8 [ %6, %285 ], [ %314, %301 ]
  %305 = zext i8 %287 to i32
  %306 = icmp eq i8 %287, %304
  %307 = add nsw i32 %305, -48
  %308 = icmp ult i32 %307, 10
  %309 = and i1 %308, %306
  br i1 %309, label %310, label %341

; <label>:310:                                    ; preds = %302
  br label %324

; <label>:311:                                    ; preds = %292, %311
  %312 = phi i8* [ %313, %311 ], [ %1, %292 ]
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  %314 = load i8, i8* %313, align 1
  %315 = icmp eq i8 %314, 48
  %316 = zext i8 %314 to i32
  %317 = icmp eq i32 %316, %3
  %318 = or i1 %315, %317
  br i1 %318, label %311, label %301

; <label>:319:                                    ; preds = %334
  %320 = icmp eq i8 %330, %337
  %321 = add nsw i32 %331, -48
  %322 = icmp ult i32 %321, 10
  %323 = and i1 %322, %320
  br i1 %323, label %324, label %340

; <label>:324:                                    ; preds = %310, %319
  %325 = phi i8* [ %329, %319 ], [ %286, %310 ]
  %326 = phi i8* [ %336, %319 ], [ %303, %310 ]
  br label %327

; <label>:327:                                    ; preds = %327, %324
  %328 = phi i8* [ %329, %327 ], [ %325, %324 ]
  %329 = getelementptr inbounds i8, i8* %328, i64 1
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp eq i32 %331, %3
  br i1 %332, label %327, label %333

; <label>:333:                                    ; preds = %327
  br label %334

; <label>:334:                                    ; preds = %333, %334
  %335 = phi i8* [ %336, %334 ], [ %326, %333 ]
  %336 = getelementptr inbounds i8, i8* %335, i64 1
  %337 = load i8, i8* %336, align 1
  %338 = zext i8 %337 to i32
  %339 = icmp eq i32 %338, %3
  br i1 %339, label %334, label %319

; <label>:340:                                    ; preds = %319
  br label %341

; <label>:341:                                    ; preds = %340, %302
  %342 = phi i8* [ %303, %302 ], [ %336, %340 ]
  %343 = phi i8* [ %286, %302 ], [ %329, %340 ]
  %344 = phi i8 [ %287, %302 ], [ %330, %340 ]
  %345 = phi i8 [ %304, %302 ], [ %337, %340 ]
  %346 = phi i32 [ %305, %302 ], [ %331, %340 ]
  %347 = phi i1 [ %308, %302 ], [ %322, %340 ]
  %348 = zext i8 %345 to i32
  %349 = icmp ne i32 %346, %2
  %350 = add nsw i32 %348, -48
  %351 = icmp ult i32 %350, 10
  %352 = or i1 %349, %351
  %353 = icmp ne i32 %348, %2
  %354 = or i1 %353, %347
  %355 = and i1 %354, %352
  br i1 %355, label %412, label %356

; <label>:356:                                    ; preds = %341
  %357 = trunc i32 %2 to i8
  %358 = icmp eq i8 %344, %357
  br i1 %358, label %359, label %397

; <label>:359:                                    ; preds = %356
  %360 = icmp eq i8 %345, %344
  br i1 %360, label %361, label %362

; <label>:361:                                    ; preds = %359
  br label %364

; <label>:362:                                    ; preds = %359
  %363 = getelementptr inbounds i8, i8* %343, i64 1
  br label %384

; <label>:364:                                    ; preds = %361, %375
  %365 = phi i8* [ %367, %375 ], [ %343, %361 ]
  %366 = phi i8* [ %370, %375 ], [ %342, %361 ]
  %367 = getelementptr inbounds i8, i8* %365, i64 1
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = getelementptr inbounds i8, i8* %366, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = icmp eq i8 %368, %371
  %373 = add nsw i32 %369, -48
  %374 = icmp ult i32 %373, 10
  br i1 %372, label %375, label %376

; <label>:375:                                    ; preds = %364
  br i1 %374, label %364, label %459

; <label>:376:                                    ; preds = %364
  %377 = sext i8 %371 to i32
  %378 = add nsw i32 %377, -48
  %379 = icmp ult i32 %378, 10
  %380 = and i1 %374, %379
  br i1 %380, label %381, label %383

; <label>:381:                                    ; preds = %376
  %382 = sub nsw i32 %369, %377
  br label %460

; <label>:383:                                    ; preds = %376
  br i1 %374, label %384, label %386

; <label>:384:                                    ; preds = %362, %383
  %385 = phi i8* [ %363, %362 ], [ %367, %383 ]
  br label %387

; <label>:386:                                    ; preds = %383
  br i1 %379, label %400, label %460

; <label>:387:                                    ; preds = %384, %387
  %388 = phi i8* [ %391, %387 ], [ %385, %384 ]
  %389 = load i8, i8* %388, align 1
  %390 = icmp eq i8 %389, 48
  %391 = getelementptr inbounds i8, i8* %388, i64 1
  br i1 %390, label %387, label %392

; <label>:392:                                    ; preds = %387
  %393 = sext i8 %389 to i32
  %394 = add nsw i32 %393, -48
  %395 = icmp ult i32 %394, 10
  %396 = zext i1 %395 to i32
  br label %460

; <label>:397:                                    ; preds = %356
  %398 = getelementptr inbounds i8, i8* %342, i64 1
  %399 = icmp eq i8 %345, %357
  br i1 %399, label %400, label %460

; <label>:400:                                    ; preds = %386, %397
  %401 = phi i8* [ %398, %397 ], [ %370, %386 ]
  br label %402

; <label>:402:                                    ; preds = %400, %402
  %403 = phi i8* [ %406, %402 ], [ %401, %400 ]
  %404 = load i8, i8* %403, align 1
  %405 = icmp eq i8 %404, 48
  %406 = getelementptr inbounds i8, i8* %403, i64 1
  br i1 %405, label %402, label %407

; <label>:407:                                    ; preds = %402
  %408 = sext i8 %404 to i32
  %409 = add nsw i32 %408, -48
  %410 = icmp ult i32 %409, 10
  %411 = sext i1 %410 to i32
  br label %460

; <label>:412:                                    ; preds = %341
  %413 = sub nsw i32 %346, %348
  %414 = zext i8 %344 to i32
  %415 = add nsw i32 %414, -48
  %416 = icmp ult i32 %415, 10
  br i1 %416, label %417, label %422

; <label>:417:                                    ; preds = %412
  br label %418

; <label>:418:                                    ; preds = %417, %431
  %419 = phi i64 [ %432, %431 ], [ 0, %417 ]
  %420 = phi i8* [ %427, %431 ], [ %343, %417 ]
  br label %425

; <label>:421:                                    ; preds = %431
  br label %422

; <label>:422:                                    ; preds = %421, %412
  %423 = phi i64 [ 0, %412 ], [ %432, %421 ]
  br i1 %351, label %424, label %449

; <label>:424:                                    ; preds = %422
  br label %435

; <label>:425:                                    ; preds = %425, %418
  %426 = phi i8* [ %427, %425 ], [ %420, %418 ]
  %427 = getelementptr inbounds i8, i8* %426, i64 1
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = icmp eq i32 %429, %3
  br i1 %430, label %425, label %431

; <label>:431:                                    ; preds = %425
  %432 = add i64 %419, 1
  %433 = add nsw i32 %429, -48
  %434 = icmp ult i32 %433, 10
  br i1 %434, label %418, label %421

; <label>:435:                                    ; preds = %424, %444
  %436 = phi i64 [ %445, %444 ], [ 0, %424 ]
  %437 = phi i8* [ %440, %444 ], [ %342, %424 ]
  br label %438

; <label>:438:                                    ; preds = %438, %435
  %439 = phi i8* [ %440, %438 ], [ %437, %435 ]
  %440 = getelementptr inbounds i8, i8* %439, i64 1
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, %3
  br i1 %443, label %438, label %444

; <label>:444:                                    ; preds = %438
  %445 = add i64 %436, 1
  %446 = add nsw i32 %442, -48
  %447 = icmp ult i32 %446, 10
  br i1 %447, label %435, label %448

; <label>:448:                                    ; preds = %444
  br label %449

; <label>:449:                                    ; preds = %448, %422
  %450 = phi i64 [ 0, %422 ], [ %445, %448 ]
  %451 = icmp eq i64 %423, %450
  br i1 %451, label %455, label %452

; <label>:452:                                    ; preds = %449
  %453 = icmp ult i64 %423, %450
  %454 = select i1 %453, i32 -1, i32 1
  br label %460

; <label>:455:                                    ; preds = %449
  %456 = icmp eq i64 %423, 0
  %457 = select i1 %456, i32 0, i32 %413
  br label %460

; <label>:458:                                    ; preds = %137
  br label %460

; <label>:459:                                    ; preds = %375
  br label %460

; <label>:460:                                    ; preds = %459, %458, %29, %61, %143, %148, %154, %159, %169, %214, %217, %246, %278, %381, %386, %392, %397, %407, %452, %455
  %461 = phi i32 [ %66, %61 ], [ %216, %214 ], [ %283, %278 ], [ %454, %452 ], [ -1, %29 ], [ %219, %217 ], [ 1, %246 ], [ %457, %455 ], [ %144, %143 ], [ %158, %154 ], [ %173, %169 ], [ 0, %148 ], [ 0, %159 ], [ %382, %381 ], [ %396, %392 ], [ %411, %407 ], [ 0, %386 ], [ 0, %397 ], [ 0, %458 ], [ 0, %459 ]
  ret i32 %461
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #12
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #12
  store i32 %6, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.253, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.254, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.255, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.256, i64 0, i64 0), i32 5) #12
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.257, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.258, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.259, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.260, i64 0, i64 0), i32 5) #12
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.261, i64 0, i64 0), i32 5) #12
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.262, i64 0, i64 0), i32 5) #12
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.263, i64 0, i64 0), i32 5) #12
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.264, i64 0, i64 0), i32 5) #12
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.265, i64 0, i64 0), i32 5) #12
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.266, i64 0, i64 0), i32 5) #12
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.269, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.270, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.271, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.272, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.273, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.274, i64 0, i64 0), i32 5) #12
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.287, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.288, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 {
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #12
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.289, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #12
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.290, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #12
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.291, i64 0, i64 0), i32 5) #12
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #12
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #12
  br label %16

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 {
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #12
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1
  %11 = add i64 %3, -1
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.289, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #12
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.290, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12
  %14 = load volatile i32, i32* @exit_failure, align 4
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.291, i64 0, i64 0), i32 5) #12
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #12
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #12
  br label %18

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xnanosleep(double) local_unnamed_addr #6 {
  %2 = alloca %struct.rlimit, align 8
  %3 = bitcast %struct.rlimit* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %3) #12
  %4 = tail call { i64, i64 } @dtotimespec(double %0) #1
  %5 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i64 0, i32 0
  %6 = extractvalue { i64, i64 } %4, 0
  store i64 %6, i64* %5, align 8
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i64 0, i32 1
  %8 = extractvalue { i64, i64 } %4, 1
  store i64 %8, i64* %7, align 8
  %9 = tail call i32* @__errno_location() #1
  store i32 0, i32* %9, align 4
  %10 = call i32 @rpl_nanosleep(%struct.rlimit* nonnull %2, %struct.rlimit* null) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %12, %15
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %18 [
    i32 4, label %15
    i32 0, label %15
  ]

; <label>:15:                                     ; preds = %13, %13
  store i32 0, i32* %9, align 4
  %16 = call i32 @rpl_nanosleep(%struct.rlimit* nonnull %2, %struct.rlimit* null) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %13

; <label>:18:                                     ; preds = %15, %13
  %19 = phi i32 [ 0, %15 ], [ -1, %13 ]
  br label %20

; <label>:20:                                     ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #12
  ret i32 %21
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.298, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.299, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15
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

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xstrtol_fatal(i32, i32, i8 signext, %struct.option* nocapture readonly, i8*) local_unnamed_addr #0 {
  %6 = alloca [2 x i8], align 1
  %7 = load volatile i32, i32* @exit_failure, align 4
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2, i8* nonnull %8) #12
  %9 = add i32 %0, -1
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %5
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %5
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp slt i32 %1, 0
  %17 = sext i32 %1 to i64
  br i1 %16, label %18, label %22

; <label>:18:                                     ; preds = %12
  %19 = sub nsw i64 0, %17
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.302, i64 0, i64 %19
  store i8 %2, i8* %8, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %21, align 1
  br label %25

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %17, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.302, i64 0, i64 0), %22 ]
  %27 = phi i8* [ %8, %18 ], [ %24, %22 ]
  %28 = tail call i8* @dcgettext(i8* null, i8* %15, i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 %7, i32 0, i8* %28, i8* %26, i8* %27, i8* %4) #12
  call void @llvm.lifetime.end(i64 2, i8* nonnull %8) #12
  call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.308, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.309, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
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
define i32 @rpl_nanosleep(%struct.rlimit* nocapture nonnull readonly, %struct.rlimit*) local_unnamed_addr #6 {
  %3 = alloca %struct.rlimit, align 8
  %4 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ugt i64 %5, 999999999
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #1
  store i32 22, i32* %8, align 4
  br label %33

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = bitcast %struct.rlimit* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %12) #12
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i64 0, i32 0
  br label %15

; <label>:15:                                     ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ]
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ]
  store i64 %16, i64* %13, align 8
  %18 = icmp sgt i64 %17, 2073600
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %15
  store i64 2073600, i64* %14, align 8
  %20 = call i32 @nanosleep(%struct.rlimit* nonnull %3, %struct.rlimit* %1) #12
  %21 = add nsw i64 %17, -2073600
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %15, label %23

; <label>:23:                                     ; preds = %19
  %24 = icmp eq %struct.rlimit* %1, null
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %21
  store i64 %28, i64* %26, align 8
  br label %31

; <label>:29:                                     ; preds = %15
  store i64 %17, i64* %14, align 8
  %30 = call i32 @nanosleep(%struct.rlimit* nonnull %3, %struct.rlimit* %1) #12
  br label %31

; <label>:31:                                     ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %12) #12
  br label %33

; <label>:33:                                     ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ]
  ret i32 %34
}

declare i32 @nanosleep(%struct.rlimit*, %struct.rlimit*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.324, i64 0, i64 0), i32 5) #12
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.325, i64 0, i64 0), i8* %2) #12
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
  %18 = tail call i8* %3(i64 %14) #12
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
  %22 = tail call i8* %3(i8* %5, i64 %18) #12
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
  %39 = tail call i8* %36(i8* %38, i64 %24) #12
  br label %44

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8
  %43 = tail call i8* %42(i64 %24) #12
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
  tail call void %86(i8* %88, i8* %79) #12
  br label %92

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0
  %91 = load void (i8*)*, void (i8*)** %90, align 8
  tail call void %91(i8* %79) #12
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
  tail call void %27(i8* %28, i8* nonnull %14) #12
  br label %31

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8
  tail call void %30(i8* nonnull %14) #12
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

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #11 {
  %2 = fcmp ogt double %0, 0xC3E0000000000000
  br i1 %2, label %3, label %25

; <label>:3:                                      ; preds = %1
  %4 = fcmp olt double %0, 0x43E0000000000000
  br i1 %4, label %5, label %25

; <label>:5:                                      ; preds = %3
  %6 = fptosi double %0 to i64
  %7 = sitofp i64 %6 to double
  %8 = fsub double %0, %7
  %9 = fmul double %8, 1.000000e+09
  %10 = fptosi double %9 to i64
  %11 = sitofp i64 %10 to double
  %12 = fcmp olt double %11, %9
  %13 = zext i1 %12 to i64
  %14 = add nsw i64 %13, %10
  %15 = sdiv i64 %14, 1000000000
  %16 = add nsw i64 %15, %6
  %17 = srem i64 %14, 1000000000
  %18 = icmp slt i64 %17, 0
  %19 = add nsw i64 %17, 1000000000
  %20 = ashr i64 %17, 63
  %21 = add nsw i64 %16, %20
  %22 = select i1 %18, i64 %19, i64 %17
  %23 = insertvalue { i64, i64 } undef, i64 %21, 0
  %24 = insertvalue { i64, i64 } %23, i64 %22, 1
  br label %25

; <label>:25:                                     ; preds = %3, %1, %5
  %26 = phi { i64, i64 } [ %24, %5 ], [ { i64 -9223372036854775808, i64 0 }, %1 ], [ { i64 9223372036854775807, i64 999999999 }, %3 ]
  ret { i64, i64 } %26
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #12
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.338, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.339, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.340, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.341, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.341, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.342, i64 0, i64 0)) #12
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.343, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.338, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.338, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.338, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.338, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.344, i64 0, i64 0), i8* %158
  ret i8* %161
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 {
  %5 = icmp eq i64 %1, %3
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  store i32 0, i32* %10, align 4
  br label %45

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %2, i64 %3
  %15 = load i8, i8* %14, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %14, align 1
  %16 = add i64 %1, 1
  %17 = add i64 %3, 1
  %18 = tail call i32* @__errno_location() #1
  br label %19

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  store i32 0, i32* %18, align 4
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #14
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #14
  %28 = add i64 %27, 1
  %29 = tail call i64 @strlen(i8* %20) #14
  %30 = add i64 %29, 1
  %31 = sub i64 %22, %28
  %32 = sub i64 %21, %30
  %33 = icmp eq i64 %31, 0
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0
  %36 = sext i1 %35 to i32
  br label %43

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30
  %39 = getelementptr inbounds i8, i8* %23, i64 %28
  %40 = icmp eq i64 %32, 0
  br i1 %40, label %41, label %19

; <label>:41:                                     ; preds = %37, %19
  %42 = phi i32 [ 1, %37 ], [ %24, %19 ]
  br label %43

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %41 ]
  store i8 %13, i8* %12, align 1
  store i8 %15, i8* %14, align 1
  br label %45

; <label>:45:                                     ; preds = %43, %9
  %46 = phi i32 [ 0, %9 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %5 = icmp eq i64 %1, %3
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  store i32 0, i32* %10, align 4
  br label %37

; <label>:11:                                     ; preds = %6, %4
  %12 = tail call i32* @__errno_location() #1
  br label %13

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  store i32 0, i32* %12, align 4
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #14
  %22 = add i64 %21, 1
  %23 = tail call i64 @strlen(i8* %14) #14
  %24 = add i64 %23, 1
  %25 = sub i64 %16, %22
  %26 = sub i64 %15, %24
  %27 = icmp eq i64 %25, 0
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0
  %30 = sext i1 %29 to i32
  br label %37

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24
  %33 = getelementptr inbounds i8, i8* %17, i64 %22
  %34 = icmp eq i64 %26, 0
  br i1 %34, label %35, label %13

; <label>:35:                                     ; preds = %13, %31
  %36 = phi i32 [ 1, %31 ], [ %18, %13 ]
  br label %37

; <label>:37:                                     ; preds = %35, %28, %9
  %38 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %36, %35 ]
  ret i32 %38
}

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
attributes #11 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
