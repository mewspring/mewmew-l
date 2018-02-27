; ModuleID = 'coreutils-8.27/src/du.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.exclude = type { %struct.exclude_segment*, %struct.pattern_buffer* }
%struct.exclude_segment = type { %struct.exclude_segment*, i32, i32, %union.anon.11 }
%union.anon.11 = type { %struct.exclude_pattern }
%struct.exclude_pattern = type { %struct.patopts*, i64, i64 }
%struct.patopts = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.re_pattern_buffer }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.pattern_buffer = type { %struct.pattern_buffer*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.di_set = type { %struct.hash_table*, %struct.ino_map*, %struct.di_ent* }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.ino_map = type { %struct.hash_table*, i64, %struct.timespec* }
%struct.timespec = type { i64, i64 }
%struct.di_ent = type { i64, %struct.hash_table* }
%struct.dulevel = type { %struct.duinfo, %struct.duinfo }
%struct.duinfo = type { i64, i64, %struct.timespec }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.argv_iterator = type { %struct._IO_FILE*, i64, i8*, i64, i8**, i8** }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i64, i64, i32 (%struct._ftsent**, %struct._ftsent**)*, i32, %struct.hash_table*, %union.anon, %struct.I_ring }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, %struct.__dirstream*, i64, i8*, i8*, i8*, i32, i32, i64, %struct.FTS*, i64, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.__dirstream = type opaque
%union.anon = type { %struct.hash_table* }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.mount_entry = type { i8*, i8*, i8*, i8*, i64, i8, %struct.mount_entry* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.regmatch_t = type { i32, i32 }
%struct.mbuiter_multi = type { i8, %struct.__mbstate_t, i8, %struct.mbchar }
%struct.__mbstate_t = type { i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mbchar = type { i8*, i64, i8, i32, [24 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.cycle_check_state = type { %struct.timespec, i64, i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.LCO_ent = type { i64, i8 }
%struct.Active_dir = type { i64, i64, %struct._ftsent* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [OPTION]... --files0-from=F\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Summarize disk usage of the set of FILEs, recursively for directories.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.56 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [441 x i8] c"  -0, --null            end each output line with NUL, not newline\0A  -a, --all             write counts for all files, not just directories\0A      --apparent-size   print apparent sizes, rather than disk usage; although\0A                          the apparent size is usually smaller, it may be\0A                          larger due to holes in ('sparse') files, internal\0A                          fragmentation, indirect blocks, and the like\0A\00", align 1
@.str.4 = private unnamed_addr constant [692 x i8] c"  -B, --block-size=SIZE  scale sizes by SIZE before printing them; e.g.,\0A                           '-BM' prints sizes in units of 1,048,576 bytes;\0A                           see SIZE format below\0A  -b, --bytes           equivalent to '--apparent-size --block-size=1'\0A  -c, --total           produce a grand total\0A  -D, --dereference-args  dereference only symlinks that are listed on the\0A                          command line\0A  -d, --max-depth=N     print the total for a directory (or file, with --all)\0A                          only if it is N or fewer levels below the command\0A                          line argument;  --max-depth=0 is the same as\0A                          --summarize\0A\00", align 1
@.str.5 = private unnamed_addr constant [417 x i8] c"      --files0-from=F   summarize disk usage of the\0A                          NUL-terminated file names specified in file F;\0A                          if F is -, then read names from standard input\0A  -H                    equivalent to --dereference-args (-D)\0A  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)\0A      --inodes          list inode usage information instead of block usage\0A\00", align 1
@.str.6 = private unnamed_addr constant [208 x i8] c"  -k                    like --block-size=1K\0A  -L, --dereference     dereference all symbolic links\0A  -l, --count-links     count sizes many times if hard linked\0A  -m                    like --block-size=1M\0A\00", align 1
@.str.7 = private unnamed_addr constant [285 x i8] c"  -P, --no-dereference  don't follow any symbolic links (this is the default)\0A  -S, --separate-dirs   for directories do not include size of subdirectories\0A      --si              like -h, but use powers of 1000 not 1024\0A  -s, --summarize       display only a total for each argument\0A\00", align 1
@.str.8 = private unnamed_addr constant [611 x i8] c"  -t, --threshold=SIZE  exclude entries smaller than SIZE if positive,\0A                          or entries greater than SIZE if negative\0A      --time            show time of the last modification of any file in the\0A                          directory, or any of its subdirectories\0A      --time=WORD       show time as WORD instead of modification time:\0A                          atime, access, use, ctime or status\0A      --time-style=STYLE  show times using STYLE, which can be:\0A                            full-iso, long-iso, iso, or +FORMAT;\0A                            FORMAT is interpreted like in 'date'\0A\00", align 1
@.str.9 = private unnamed_addr constant [203 x i8] c"  -X, --exclude-from=FILE  exclude files that match any pattern in FILE\0A      --exclude=PATTERN    exclude files that match PATTERN\0A  -x, --one-file-system    skip directories on different file systems\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.57 = private unnamed_addr constant [223 x i8] c"\0ADisplay values are in units of the first available SIZE from --block-size,\0Aand the %s_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.\0AOtherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.58 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.68 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.70 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exclude = internal unnamed_addr global %struct.exclude* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"DU_BLOCK_SIZE\00", align 1
@human_output_opts = internal global i32 0, align 4
@output_block_size = internal global i64 0, align 8
@.str.19 = private unnamed_addr constant [24 x i8] c"0abd:chHklmst:xB:DLPSX:\00", align 1
@long_options = internal constant [26 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.80, i32 0, i32 0), i32 0, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i32 1, i32* null, i32 88 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 0, i32* null, i32 135 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 48 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.90, i32 0, i32 0), i32 0, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i32 2, i32* null, i32 133 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.95, i32 0, i32 0), i32 1, i32* null, i32 134 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@opt_nul_terminate_output = internal unnamed_addr global i1 false, align 1
@opt_all = internal unnamed_addr global i1 false, align 1
@apparent_size = internal unnamed_addr global i1 false, align 1
@print_grand_total = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@max_depth = internal unnamed_addr global i64 -1, align 8
@.str.20 = private unnamed_addr constant [25 x i8] c"invalid maximum depth %s\00", align 1
@opt_count_all = internal unnamed_addr global i1 false, align 1
@opt_threshold = internal global i64 0, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"kKmMGTPEZY0\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"invalid --threshold argument '-0'\00", align 1
@opt_separate_dirs = internal unnamed_addr global i1 false, align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@opt_inodes = internal unnamed_addr global i1 false, align 1
@opt_time = internal unnamed_addr global i1 false, align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"--time\00", align 1
@time_args = internal constant [6 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.102, i32 0, i32 0), i8* null], align 16
@time_types = internal constant [5 x i32] [i32 2, i32 2, i32 2, i32 1, i32 1], align 16
@time_type = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@localtz = internal unnamed_addr global %struct.tm_zone* null, align 8
@time_style = internal unnamed_addr global i8* null, align 8
@.str.27 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"cannot both summarize and show all entries\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"warning: summarizing is the same as using --max-depth=0\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"warning: summarizing conflicts with --max-depth=%lu\00", align 1
@.str.34 = private unnamed_addr constant [70 x i8] c"warning: options --apparent-size and -b are ineffective with --inodes\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"TIME_STYLE\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"long-iso\00", align 1
@main.posix_prefix = internal constant [7 x i8] c"posix-\00", align 1
@time_format = internal unnamed_addr global i8* null, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"time style\00", align 1
@time_style_args = internal constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.104, i32 0, i32 0), i8* null], align 16
@time_style_types = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@switch.table = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0)]
@optind = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"file operands cannot be combined with --files0-from\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@hash_all = internal unnamed_addr global i8 0, align 1
@di_files = internal unnamed_addr global %struct.di_set* null, align 8
@.str.48 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"!\22unexpected error code from argv_iter\22\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"src/du.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.51 = private unnamed_addr constant [63 x i8] c"when reading file names from stdin, no file name of %s allowed\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"invalid zero-length file name\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"%s:%lu: %s\00", align 1
@main.temp_argv = internal global [2 x i8*] zeroinitializer, align 16
@.str.105 = private unnamed_addr constant [20 x i8] c"fts_read failed: %s\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"e == ent\00", align 1
@__PRETTY_FUNCTION__.process_file = private unnamed_addr constant [36 x i8] c"_Bool process_file(FTS *, FTSENT *)\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@di_mnt = internal unnamed_addr global %struct.di_set* null, align 8
@.str.110 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@process_file.n_alloc = internal unnamed_addr global i64 0, align 8
@process_file.dulvl = internal unnamed_addr global %struct.dulevel* null, align 8
@prev_level = internal unnamed_addr global i64 0, align 8
@.str.111 = private unnamed_addr constant [24 x i8] c"level == prev_level - 1\00", align 1
@tot_dui = internal global %struct.duinfo zeroinitializer, align 8
@.str.106 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"time %s is out of range\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"\09%s%c\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"%Y-%m-%d %H:%M:%S.%N %z\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"%Y-%m-%d %H:%M\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"full-iso\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"apparent-size\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"count-links\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"dereference-args\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"exclude\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"exclude-from\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"files0-from\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"inodes\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"max-depth\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"one-file-system\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"separate-dirs\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"summarize\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"time-style\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.59 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.60 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.61 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.62 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.63 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.116 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"(/.*)?\00", align 1
@.str.1.135 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@exit_failure = global i32 1, align 4
@.str.140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.141 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.142 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.143 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.144 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.149 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.150 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.151 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.166 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.167 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.168 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.169 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1
@.str.4.172 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.173 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.174 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.177, i32 0, i32 0), i8* null], align 16
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4
@.str.6.175 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.176 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.177 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"mbsinit (&iter->state)\00", align 1
@.str.1.189 = private unnamed_addr constant [16 x i8] c"./lib/mbuiter.h\00", align 1
@__PRETTY_FUNCTION__.mbuiter_multi_next = private unnamed_addr constant [48 x i8] c"void mbuiter_multi_next(struct mbuiter_multi *)\00", align 1
@.str.2.190 = private unnamed_addr constant [23 x i8] c"*iter->cur.ptr == '\5C0'\00", align 1
@.str.3.191 = private unnamed_addr constant [18 x i8] c"iter->cur.wc == 0\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.196 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.197 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.198 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.199, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.200, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.201, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.202, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.203, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.204, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.205, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.206, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.208, i32 0, i32 0), i8* null], align 16
@.str.199 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.200 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.201 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.202 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.203 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.204 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.205 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.206 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.207 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.208 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.209 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.210 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.211 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.212 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.213 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.214 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.215 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.230 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.231 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.232 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.233 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.234 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.235 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.236 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.237 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.238 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.239 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.240 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.241 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.242 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.243 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.246 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.247 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.248 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.249 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.250 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.251 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.270 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.274 = private unnamed_addr constant [16 x i8] c"errno != EINVAL\00", align 1
@.str.1.275 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@.str.280 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.281 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.284 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.285 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@switch.table.288 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.290, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.291, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.291, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.292, i64 0, i64 0)]
@.str.289 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3.290 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@.str.2.291 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@.str.1.292 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@.str.295 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.296 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.305 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.310 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.315 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@switch.table.316 = private unnamed_addr constant [12 x i32] [i32 4096, i32 8192, i32 0, i32 16384, i32 0, i32 24576, i32 0, i32 32768, i32 0, i32 40960, i32 0, i32 49152]
@.str.323 = private unnamed_addr constant [21 x i8] c"/proc/self/mountinfo\00", align 1
@.str.1.324 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.325 = private unnamed_addr constant [32 x i8] c"%*u %*u %u:%u %n%*s%n %n%*s%n%c\00", align 1
@.str.3.326 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.4.327 = private unnamed_addr constant [22 x i8] c" - %n%*s%n %n%*s%n %c\00", align 1
@.str.5.328 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.6.329 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.7.330 = private unnamed_addr constant [6 x i8] c"subfs\00", align 1
@.str.8.331 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.9.332 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.10.333 = private unnamed_addr constant [8 x i8] c"fusectl\00", align 1
@.str.11.334 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.12.335 = private unnamed_addr constant [11 x i8] c"rpc_pipefs\00", align 1
@.str.13.336 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.14.337 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.15.338 = private unnamed_addr constant [7 x i8] c"kernfs\00", align 1
@.str.16.339 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.17.340 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.18.341 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.19.342 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.20.343 = private unnamed_addr constant [7 x i8] c"-hosts\00", align 1
@.str.21.344 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.22.345 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.352 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.353 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.365 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@.str.1.370 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.381 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.382 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.383 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.384 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.385 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.386 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.387 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@is_basic_table = local_unnamed_addr constant [8 x i32] [i32 6656, i32 -17, i32 -2, i32 2147483646, i32 0, i32 0, i32 0, i32 0], align 16
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@__mon_yday = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@localtime_offset = internal global i64 0, align 8

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #13
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #13
  br label %65

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 5) #13
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #13
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 5) #13
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #13
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.56, i64 0, i64 0), i32 5) #13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([441 x i8], [441 x i8]* @.str.3, i64 0, i64 0), i32 5) #13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #13
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([692 x i8], [692 x i8]* @.str.4, i64 0, i64 0), i32 5) #13
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #13
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([417 x i8], [417 x i8]* @.str.5, i64 0, i64 0), i32 5) #13
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #13
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.6, i64 0, i64 0), i32 5) #13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #13
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @.str.7, i64 0, i64 0), i32 5) #13
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #13
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([611 x i8], [611 x i8]* @.str.8, i64 0, i64 0), i32 5) #13
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #13
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.9, i64 0, i64 0), i32 5) #13
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #13
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #13
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #13
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #13
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #13
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.57, i64 0, i64 0), i32 5) #13
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #13
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.58, i64 0, i64 0), i32 5) #13
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #13
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0), i32 5) #13
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i64 0, i64 0)) #13
  %52 = tail call i8* @setlocale(i32 5, i8* null) #13
  %53 = icmp eq i8* %52, null
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %8
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i64 0, i64 0), i64 3) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.70, i64 0, i64 0), i32 5) #13
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #13
  br label %60

; <label>:60:                                     ; preds = %8, %54, %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i64 0, i64 0), i32 5) #13
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #13
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.72, i64 0, i64 0), i32 5) #13
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0)) #13
  br label %65

; <label>:65:                                     ; preds = %60, %3
  tail call void @exit(i32 %0) #16
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
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.duinfo, align 8
  %5 = alloca <2 x i8*>, align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast <2 x i8*>* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %9) #13
  %10 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %5, i64 0, i64 0
  store <2 x i8*> <i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* null>, <2 x i8*>* %5, align 16
  %11 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %11) #13
  %12 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #13
  %13 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #13
  %14 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #13
  %15 = tail call i32 @atexit(void ()* nonnull @close_stdout) #13
  %16 = tail call %struct.exclude* @new_exclude() #13
  store %struct.exclude* %16, %struct.exclude** @exclude, align 8
  %17 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0)) #13
  %18 = tail call i32 @human_options(i8* %17, i32* nonnull @human_output_opts, i64* nonnull @output_block_size) #13
  %19 = bitcast i32* %6 to i8*
  %20 = bitcast i64* %7 to i8*
  br label %21

; <label>:21:                                     ; preds = %116, %2
  %22 = phi i8 [ 0, %2 ], [ %117, %116 ]
  %23 = phi i32 [ 16, %2 ], [ %118, %116 ]
  %24 = phi i32 [ 8, %2 ], [ %119, %116 ]
  %25 = phi i8* [ null, %2 ], [ %120, %116 ]
  %26 = phi i8 [ 1, %2 ], [ %121, %116 ]
  %27 = phi i8 [ 0, %2 ], [ %122, %116 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #13
  store i32 -1, i32* %6, align 4
  %28 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), %struct.option* getelementptr inbounds ([26 x %struct.option], [26 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %6) #13
  switch i32 %28, label %115 [
    i32 -1, label %123
    i32 48, label %29
    i32 97, label %30
    i32 128, label %31
    i32 98, label %32
    i32 99, label %33
    i32 104, label %34
    i32 131, label %35
    i32 107, label %36
    i32 100, label %37
    i32 109, label %50
    i32 108, label %51
    i32 115, label %116
    i32 116, label %52
    i32 120, label %68
    i32 66, label %70
    i32 72, label %77
    i32 68, label %77
    i32 76, label %78
    i32 80, label %79
    i32 83, label %80
    i32 88, label %81
    i32 130, label %91
    i32 129, label %93
    i32 135, label %96
    i32 133, label %97
    i32 134, label %109
    i32 -130, label %111
    i32 -131, label %112
  ]

; <label>:29:                                     ; preds = %21
  store i1 true, i1* @opt_nul_terminate_output, align 1
  br label %116

; <label>:30:                                     ; preds = %21
  store i1 true, i1* @opt_all, align 1
  br label %116

; <label>:31:                                     ; preds = %21
  store i1 true, i1* @apparent_size, align 1
  br label %116

; <label>:32:                                     ; preds = %21
  store i1 true, i1* @apparent_size, align 1
  store i32 0, i32* @human_output_opts, align 4
  store i64 1, i64* @output_block_size, align 8
  br label %116

; <label>:33:                                     ; preds = %21
  store i1 true, i1* @print_grand_total, align 1
  br label %116

; <label>:34:                                     ; preds = %21
  store i32 176, i32* @human_output_opts, align 4
  store i64 1, i64* @output_block_size, align 8
  br label %116

; <label>:35:                                     ; preds = %21
  store i32 144, i32* @human_output_opts, align 4
  store i64 1, i64* @output_block_size, align 8
  br label %116

; <label>:36:                                     ; preds = %21
  store i32 0, i32* @human_output_opts, align 4
  store i64 1024, i64* @output_block_size, align 8
  br label %116

; <label>:37:                                     ; preds = %21
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #13
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @xstrtoul(i8* %38, i8** null, i32 0, i64* nonnull %7, i8* null) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %37
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* @max_depth, align 8
  br label %47

; <label>:43:                                     ; preds = %37
  %44 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 5) #13
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i8* @quote(i8* %45) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44, i8* %46) #13
  br label %47

; <label>:47:                                     ; preds = %43, %41
  %48 = phi i8 [ %26, %41 ], [ 0, %43 ]
  %49 = phi i8 [ 1, %41 ], [ %27, %43 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #13
  br label %116

; <label>:50:                                     ; preds = %21
  store i32 0, i32* @human_output_opts, align 4
  store i64 1048576, i64* @output_block_size, align 8
  br label %116

; <label>:51:                                     ; preds = %21
  store i1 true, i1* @opt_count_all, align 1
  br label %116

; <label>:52:                                     ; preds = %21
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @xstrtoimax(i8* %53, i8** null, i32 0, i64* nonnull @opt_threshold, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0)) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %54, i32 %57, i8 signext 116, %struct.option* getelementptr inbounds ([26 x %struct.option], [26 x %struct.option]* @long_options, i64 0, i64 0), i8* %58) #16
  unreachable

; <label>:59:                                     ; preds = %52
  %60 = load i64, i64* @opt_threshold, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %116

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** @optarg, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp eq i8 %64, 45
  br i1 %65, label %66, label %116

; <label>:66:                                     ; preds = %62
  %67 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %67) #13
  unreachable

; <label>:68:                                     ; preds = %21
  %69 = or i32 %24, 64
  br label %116

; <label>:70:                                     ; preds = %21
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @human_options(i8* %71, i32* nonnull @human_output_opts, i64* nonnull @output_block_size) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %116, label %74

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %72, i32 %75, i8 signext 66, %struct.option* getelementptr inbounds ([26 x %struct.option], [26 x %struct.option]* @long_options, i64 0, i64 0), i8* %76) #16
  unreachable

; <label>:77:                                     ; preds = %21, %21
  br label %116

; <label>:78:                                     ; preds = %21
  br label %116

; <label>:79:                                     ; preds = %21
  br label %116

; <label>:80:                                     ; preds = %21
  store i1 true, i1* @opt_separate_dirs, align 1
  br label %116

; <label>:81:                                     ; preds = %21
  %82 = load %struct.exclude*, %struct.exclude** @exclude, align 8
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i32 @add_exclude_file(void (%struct.exclude*, i8*, i32)* nonnull @add_exclude, %struct.exclude* %82, i8* %83, i32 268435456, i8 signext 10) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %116, label %86

; <label>:86:                                     ; preds = %81
  %87 = tail call i32* @__errno_location() #1
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %89) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %90) #13
  br label %116

; <label>:91:                                     ; preds = %21
  %92 = load i8*, i8** @optarg, align 8
  br label %116

; <label>:93:                                     ; preds = %21
  %94 = load %struct.exclude*, %struct.exclude** @exclude, align 8
  %95 = load i8*, i8** @optarg, align 8
  call void @add_exclude(%struct.exclude* %94, i8* %95, i32 268435456) #13
  br label %116

; <label>:96:                                     ; preds = %21
  store i1 true, i1* @opt_inodes, align 1
  br label %116

; <label>:97:                                     ; preds = %21
  store i1 true, i1* @opt_time, align 1
  %98 = load i8*, i8** @optarg, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %105, label %100

; <label>:100:                                    ; preds = %97
  %101 = load void ()*, void ()** @argmatch_die, align 8
  %102 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* nonnull %98, i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @time_args, i64 0, i64 0), i8* bitcast ([5 x i32]* @time_types to i8*), i64 4, void ()* %101) #13
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* @time_types, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  br label %105

; <label>:105:                                    ; preds = %97, %100
  %106 = phi i32 [ %104, %100 ], [ 0, %97 ]
  store i32 %106, i32* @time_type, align 4
  %107 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #13
  %108 = call %struct.tm_zone* @tzalloc(i8* %107) #13
  store %struct.tm_zone* %108, %struct.tm_zone** @localtz, align 8
  br label %116

; <label>:109:                                    ; preds = %21
  %110 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %110, i64* bitcast (i8** @time_style to i64*), align 8
  br label %116

; <label>:111:                                    ; preds = %21
  call void @usage(i32 0) #17
  unreachable

; <label>:112:                                    ; preds = %21
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i8* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* null) #13
  call void @exit(i32 0) #16
  unreachable

; <label>:115:                                    ; preds = %21
  br label %116

; <label>:116:                                    ; preds = %29, %30, %31, %32, %33, %34, %35, %36, %47, %50, %51, %68, %77, %78, %79, %80, %91, %93, %96, %105, %109, %115, %86, %81, %21, %62, %59, %70
  %117 = phi i8 [ %22, %115 ], [ %22, %109 ], [ %22, %105 ], [ %22, %96 ], [ %22, %93 ], [ %22, %91 ], [ %22, %86 ], [ %22, %81 ], [ %22, %80 ], [ %22, %79 ], [ %22, %78 ], [ %22, %77 ], [ %22, %68 ], [ %22, %51 ], [ %22, %50 ], [ %22, %47 ], [ %22, %36 ], [ %22, %35 ], [ %22, %34 ], [ %22, %33 ], [ %22, %32 ], [ %22, %31 ], [ %22, %30 ], [ %22, %29 ], [ 1, %21 ], [ %22, %62 ], [ %22, %59 ], [ %22, %70 ]
  %118 = phi i32 [ %23, %115 ], [ %23, %109 ], [ %23, %105 ], [ %23, %96 ], [ %23, %93 ], [ %23, %91 ], [ %23, %86 ], [ %23, %81 ], [ %23, %80 ], [ 16, %79 ], [ 2, %78 ], [ 17, %77 ], [ %23, %68 ], [ %23, %51 ], [ %23, %50 ], [ %23, %47 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ], [ %23, %33 ], [ %23, %32 ], [ %23, %31 ], [ %23, %30 ], [ %23, %29 ], [ %23, %21 ], [ %23, %62 ], [ %23, %59 ], [ %23, %70 ]
  %119 = phi i32 [ %24, %115 ], [ %24, %109 ], [ %24, %105 ], [ %24, %96 ], [ %24, %93 ], [ %24, %91 ], [ %24, %86 ], [ %24, %81 ], [ %24, %80 ], [ %24, %79 ], [ %24, %78 ], [ %24, %77 ], [ %69, %68 ], [ %24, %51 ], [ %24, %50 ], [ %24, %47 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ %24, %32 ], [ %24, %31 ], [ %24, %30 ], [ %24, %29 ], [ %24, %21 ], [ %24, %62 ], [ %24, %59 ], [ %24, %70 ]
  %120 = phi i8* [ %25, %115 ], [ %25, %109 ], [ %25, %105 ], [ %25, %96 ], [ %25, %93 ], [ %92, %91 ], [ %25, %86 ], [ %25, %81 ], [ %25, %80 ], [ %25, %79 ], [ %25, %78 ], [ %25, %77 ], [ %25, %68 ], [ %25, %51 ], [ %25, %50 ], [ %25, %47 ], [ %25, %36 ], [ %25, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %25, %30 ], [ %25, %29 ], [ %25, %21 ], [ %25, %62 ], [ %25, %59 ], [ %25, %70 ]
  %121 = phi i8 [ 0, %115 ], [ %26, %109 ], [ %26, %105 ], [ %26, %96 ], [ %26, %93 ], [ %26, %91 ], [ 0, %86 ], [ %26, %81 ], [ %26, %80 ], [ %26, %79 ], [ %26, %78 ], [ %26, %77 ], [ %26, %68 ], [ %26, %51 ], [ %26, %50 ], [ %48, %47 ], [ %26, %36 ], [ %26, %35 ], [ %26, %34 ], [ %26, %33 ], [ %26, %32 ], [ %26, %31 ], [ %26, %30 ], [ %26, %29 ], [ %26, %21 ], [ %26, %62 ], [ %26, %59 ], [ %26, %70 ]
  %122 = phi i8 [ %27, %115 ], [ %27, %109 ], [ %27, %105 ], [ %27, %96 ], [ %27, %93 ], [ %27, %91 ], [ %27, %86 ], [ %27, %81 ], [ %27, %80 ], [ %27, %79 ], [ %27, %78 ], [ %27, %77 ], [ %27, %68 ], [ %27, %51 ], [ %27, %50 ], [ %49, %47 ], [ %27, %36 ], [ %27, %35 ], [ %27, %34 ], [ %27, %33 ], [ %27, %32 ], [ %27, %31 ], [ %27, %30 ], [ %27, %29 ], [ %27, %21 ], [ %27, %62 ], [ %27, %59 ], [ %27, %70 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13
  br label %21

; <label>:123:                                    ; preds = %21
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #13
  %124 = and i8 %26, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %123
  call void @usage(i32 1) #17
  unreachable

; <label>:127:                                    ; preds = %123
  %128 = load i1, i1* @opt_all, align 1
  %129 = xor i1 %128, true
  %130 = and i8 %22, 1
  %131 = icmp eq i8 %130, 0
  %132 = or i1 %131, %129
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %127
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %134) #13
  call void @usage(i32 1) #17
  unreachable

; <label>:135:                                    ; preds = %127
  br i1 %131, label %152, label %136

; <label>:136:                                    ; preds = %135
  %137 = and i8 %27, 1
  %138 = icmp ne i8 %137, 0
  %139 = load i64, i64* @max_depth, align 8
  %140 = icmp eq i64 %139, 0
  %141 = and i1 %138, %140
  br i1 %141, label %142, label %145

; <label>:142:                                    ; preds = %136
  %143 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %143) #13
  %144 = load i64, i64* @max_depth, align 8
  br label %145

; <label>:145:                                    ; preds = %136, %142
  %146 = phi i64 [ %139, %136 ], [ %144, %142 ]
  %147 = icmp ne i64 %146, 0
  %148 = and i1 %138, %147
  br i1 %148, label %149, label %151

; <label>:149:                                    ; preds = %145
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %150, i64 %146) #13
  call void @usage(i32 1) #17
  unreachable

; <label>:151:                                    ; preds = %145
  store i64 0, i64* @max_depth, align 8
  br label %152

; <label>:152:                                    ; preds = %135, %151
  %153 = load i1, i1* @opt_inodes, align 1
  br i1 %153, label %154, label %159

; <label>:154:                                    ; preds = %152
  %155 = load i1, i1* @apparent_size, align 1
  br i1 %155, label %156, label %158

; <label>:156:                                    ; preds = %154
  %157 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.34, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %157) #13
  br label %158

; <label>:158:                                    ; preds = %156, %154
  store i64 1, i64* @output_block_size, align 8
  br label %159

; <label>:159:                                    ; preds = %158, %152
  %160 = load i1, i1* @opt_time, align 1
  br i1 %160, label %161, label %203

; <label>:161:                                    ; preds = %159
  %162 = load i8*, i8** @time_style, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %188

; <label>:164:                                    ; preds = %161
  %165 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0)) #13
  store i8* %165, i8** @time_style, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %170, label %167

; <label>:167:                                    ; preds = %164
  %168 = call i32 @strcmp(i8* nonnull %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0)) #13
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %164, %167
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8** @time_style, align 8
  br label %188

; <label>:171:                                    ; preds = %167
  %172 = load i8, i8* %165, align 1
  %173 = icmp eq i8 %172, 43
  br i1 %173, label %178, label %174

; <label>:174:                                    ; preds = %171
  %175 = call i32 @strncmp(i8* nonnull %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @main.posix_prefix, i64 0, i64 0), i64 6) #15
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %188

; <label>:177:                                    ; preds = %174
  br label %182

; <label>:178:                                    ; preds = %171
  %179 = call i8* @strchr(i8* nonnull %165, i32 10) #13
  %180 = icmp eq i8* %179, null
  br i1 %180, label %188, label %181

; <label>:181:                                    ; preds = %178
  store i8 0, i8* %179, align 1
  br label %188

; <label>:182:                                    ; preds = %177, %182
  %183 = phi i8* [ %184, %182 ], [ %165, %177 ]
  %184 = getelementptr inbounds i8, i8* %183, i64 6
  store i8* %184, i8** @time_style, align 8
  %185 = call i32 @strncmp(i8* %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @main.posix_prefix, i64 0, i64 0), i64 6) #15
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %182, label %187

; <label>:187:                                    ; preds = %182
  br label %188

; <label>:188:                                    ; preds = %187, %174, %181, %178, %161, %170
  %189 = phi i8* [ %165, %174 ], [ %165, %181 ], [ %165, %178 ], [ %162, %161 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), %170 ], [ %184, %187 ]
  %190 = load i8, i8* %189, align 1
  %191 = icmp eq i8 %190, 43
  br i1 %191, label %192, label %194

; <label>:192:                                    ; preds = %188
  %193 = getelementptr inbounds i8, i8* %189, i64 1
  store i8* %193, i8** @time_format, align 8
  br label %203

; <label>:194:                                    ; preds = %188
  %195 = load void ()*, void ()** @argmatch_die, align 8
  %196 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %189, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @time_style_args, i64 0, i64 0), i8* bitcast ([3 x i32]* @time_style_types to i8*), i64 4, void ()* %195) #13
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* @time_style_types, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [3 x i8*], [3 x i8*]* @switch.table, i64 0, i64 %199
  %201 = bitcast i8** %200 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* bitcast (i8** @time_format to i64*), align 8
  br label %203

; <label>:203:                                    ; preds = %192, %194, %159
  %204 = icmp ne i8* %25, null
  %205 = load i32, i32* @optind, align 4
  %206 = icmp slt i32 %205, %0
  br i1 %204, label %207, label %237

; <label>:207:                                    ; preds = %203
  br i1 %206, label %208, label %218

; <label>:208:                                    ; preds = %207
  %209 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i32 5) #13
  %210 = load i32, i32* @optind, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %1, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i8* @quote(i8* %213) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %209, i8* %214) #13
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %216 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.44, i64 0, i64 0), i32 5) #13
  %217 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %215, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* %216) #13
  call void @usage(i32 1) #17
  unreachable

; <label>:218:                                    ; preds = %207
  %219 = load i8, i8* %25, align 1
  %220 = icmp eq i8 %219, 45
  br i1 %220, label %221, label %225

; <label>:221:                                    ; preds = %218
  %222 = getelementptr inbounds i8, i8* %25, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %234, label %225

; <label>:225:                                    ; preds = %218, %221
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %227 = call %struct._IO_FILE* @freopen_safer(i8* nonnull %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* %226) #13
  %228 = icmp eq %struct._IO_FILE* %227, null
  br i1 %228, label %229, label %234

; <label>:229:                                    ; preds = %225
  %230 = tail call i32* @__errno_location() #1
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 5) #13
  %233 = call i8* @quotearg_style(i32 4, i8* nonnull %25) #13
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %231, i8* %232, i8* %233) #13
  unreachable

; <label>:234:                                    ; preds = %225, %221
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %236 = call %struct.argv_iterator* @argv_iter_init_stream(%struct._IO_FILE* %235) #13
  br label %248

; <label>:237:                                    ; preds = %203
  %238 = sext i32 %205 to i64
  %239 = getelementptr inbounds i8*, i8** %1, i64 %238
  %240 = select i1 %206, i8** %239, i8** %10
  %241 = call %struct.argv_iterator* @argv_iter_init_argv(i8** %240) #13
  %242 = load i32, i32* @optind, align 4
  %243 = add nsw i32 %242, 1
  %244 = icmp slt i32 %243, %0
  %245 = icmp eq i32 %23, 2
  %246 = or i1 %245, %244
  %247 = zext i1 %246 to i8
  br label %248

; <label>:248:                                    ; preds = %237, %234
  %249 = phi i8 [ %247, %237 ], [ 1, %234 ]
  %250 = phi %struct.argv_iterator* [ %241, %237 ], [ %236, %234 ]
  store i8 %249, i8* @hash_all, align 1
  %251 = icmp eq %struct.argv_iterator* %250, null
  br i1 %251, label %252, label %253

; <label>:252:                                    ; preds = %248
  call void @xalloc_die() #16
  unreachable

; <label>:253:                                    ; preds = %248
  %254 = call %struct.di_set* @di_set_alloc() #13
  store %struct.di_set* %254, %struct.di_set** @di_files, align 8
  %255 = icmp eq %struct.di_set* %254, null
  br i1 %255, label %256, label %257

; <label>:256:                                    ; preds = %253
  call void @xalloc_die() #16
  unreachable

; <label>:257:                                    ; preds = %253
  %258 = load i1, i1* @opt_count_all, align 1
  %259 = load i8, i8* @hash_all, align 1
  %260 = icmp eq i8 %259, 0
  %261 = or i1 %258, %260
  %262 = or i32 %24, 256
  %263 = select i1 %261, i32 %262, i32 %24
  %264 = or i32 %263, %23
  %265 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %265) #13
  %266 = call i8* @argv_iter(%struct.argv_iterator* nonnull %250, i32* nonnull %8) #13
  %267 = icmp eq i8* %266, null
  br i1 %267, label %283, label %268

; <label>:268:                                    ; preds = %257
  %269 = getelementptr inbounds i8, i8* %25, i64 1
  %270 = icmp eq i8* %25, null
  %271 = bitcast %struct.duinfo* %4 to i8*
  %272 = bitcast %struct.stat* %3 to i8*
  %273 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %275 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %4, i64 0, i32 0
  %276 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %4, i64 0, i32 1
  %277 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %4, i64 0, i32 2, i32 0
  %278 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %4, i64 0, i32 2, i32 1
  %279 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %4, i64 0, i32 2
  %280 = getelementptr inbounds %struct.timespec, %struct.timespec* %279, i64 0, i32 0
  %281 = bitcast %struct.timespec* %279 to i8*
  br label %293

; <label>:282:                                    ; preds = %764
  br label %283

; <label>:283:                                    ; preds = %282, %257
  %284 = phi i8 [ %26, %257 ], [ %765, %282 ]
  %285 = load i32, i32* %8, align 4
  switch i32 %285, label %292 [
    i32 2, label %768
    i32 4, label %286
    i32 3, label %291
  ]

; <label>:286:                                    ; preds = %283
  %287 = tail call i32* @__errno_location() #1
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i32 5) #13
  %290 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %25) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %288, i8* %289, i8* %290) #13
  br label %768

; <label>:291:                                    ; preds = %283
  call void @xalloc_die() #16
  unreachable

; <label>:292:                                    ; preds = %283
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 1081, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #16
  unreachable

; <label>:293:                                    ; preds = %268, %764
  %294 = phi i8* [ %266, %268 ], [ %766, %764 ]
  %295 = phi i8 [ %26, %268 ], [ %765, %764 ]
  br i1 %204, label %296, label %312

; <label>:296:                                    ; preds = %293
  %297 = load i8, i8* %25, align 1
  %298 = icmp eq i8 %297, 45
  br i1 %298, label %299, label %312

; <label>:299:                                    ; preds = %296
  %300 = load i8, i8* %269, align 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %312

; <label>:302:                                    ; preds = %299
  %303 = load i8, i8* %294, align 1
  %304 = icmp eq i8 %303, 45
  br i1 %304, label %305, label %315

; <label>:305:                                    ; preds = %302
  %306 = getelementptr inbounds i8, i8* %294, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %309, label %312

; <label>:309:                                    ; preds = %305
  %310 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.51, i64 0, i64 0), i32 5) #13
  %311 = call i8* @quotearg_style(i32 4, i8* nonnull %294) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %310, i8* %311) #13
  br label %312

; <label>:312:                                    ; preds = %293, %299, %305, %309, %296
  %313 = phi i8 [ 0, %296 ], [ 0, %293 ], [ 0, %299 ], [ 0, %305 ], [ 1, %309 ]
  %314 = load i8, i8* %294, align 1
  br label %315

; <label>:315:                                    ; preds = %312, %302
  %316 = phi i8 [ %314, %312 ], [ %303, %302 ]
  %317 = phi i8 [ %313, %312 ], [ 0, %302 ]
  %318 = icmp eq i8 %316, 0
  br i1 %318, label %319, label %326

; <label>:319:                                    ; preds = %315
  br i1 %270, label %320, label %322

; <label>:320:                                    ; preds = %319
  %321 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %321) #13
  br label %764

; <label>:322:                                    ; preds = %319
  %323 = call i64 @argv_iter_n_args(%struct.argv_iterator* nonnull %250) #15
  %324 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %25) #13
  %325 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i8* %324, i64 %323, i8* %325) #13
  br label %764

; <label>:326:                                    ; preds = %315
  %327 = icmp eq i8 %317, 0
  br i1 %327, label %328, label %764

; <label>:328:                                    ; preds = %326
  store i8* %294, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.temp_argv, i64 0, i64 0), align 16
  %329 = call %struct.FTS* @xfts_open(i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @main.temp_argv, i64 0, i64 0), i32 %264, i32 (%struct._ftsent**, %struct._ftsent**)* null) #13
  %330 = call %struct._ftsent* @fts_read(%struct.FTS* %329) #13
  %331 = icmp eq %struct._ftsent* %330, null
  br i1 %331, label %336, label %332

; <label>:332:                                    ; preds = %328
  %333 = getelementptr inbounds %struct.FTS, %struct.FTS* %329, i64 0, i32 10
  %334 = getelementptr inbounds %struct.FTS, %struct.FTS* %329, i64 0, i32 3
  br label %346

; <label>:335:                                    ; preds = %747
  br label %336

; <label>:336:                                    ; preds = %335, %328
  %337 = phi i8 [ 1, %328 ], [ %750, %335 ]
  %338 = tail call i32* @__errno_location() #1
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %753, label %341

; <label>:341:                                    ; preds = %336
  %342 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i64 0, i64 0), i32 5) #13
  %343 = getelementptr inbounds %struct.FTS, %struct.FTS* %329, i64 0, i32 4
  %344 = load i8*, i8** %343, align 8
  %345 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %344) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %339, i8* %342, i8* %345) #13
  br label %753

; <label>:346:                                    ; preds = %747, %332
  %347 = phi %struct._ftsent* [ %330, %332 ], [ %751, %747 ]
  %348 = phi i8 [ 1, %332 ], [ %750, %747 ]
  call void @llvm.lifetime.start(i64 32, i8* nonnull %271) #13
  %349 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 7
  %350 = load i8*, i8** %349, align 8
  %351 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0
  %352 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 15
  %353 = load i16, i16* %352, align 8
  %354 = zext i16 %353 to i32
  switch i16 %353, label %360 [
    i16 4, label %355
    i16 6, label %493
  ]

; <label>:355:                                    ; preds = %346
  %356 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 8
  %357 = load i32, i32* %356, align 8
  %358 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i64 0, i64 0), i32 5) #13
  %359 = call i8* @quotearg_style(i32 4, i8* %350) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %357, i8* %358, i8* %359) #13
  br label %493

; <label>:360:                                    ; preds = %346
  %361 = load %struct.exclude*, %struct.exclude** @exclude, align 8
  %362 = call zeroext i1 @excluded_file_name(%struct.exclude* %361, i8* %350) #13
  br i1 %362, label %419, label %363

; <label>:363:                                    ; preds = %360
  %364 = icmp eq i16 %353, 11
  br i1 %364, label %365, label %373

; <label>:365:                                    ; preds = %363
  %366 = call i32 @fts_set(%struct.FTS* %329, %struct._ftsent* nonnull %347, i32 1) #13
  %367 = call %struct._ftsent* @fts_read(%struct.FTS* %329) #13
  %368 = icmp eq %struct._ftsent* %367, %347
  br i1 %368, label %370, label %369

; <label>:369:                                    ; preds = %365
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.process_file, i64 0, i64 0)) #16
  unreachable

; <label>:370:                                    ; preds = %365
  %371 = load i16, i16* %352, align 8
  %372 = zext i16 %371 to i32
  br label %373

; <label>:373:                                    ; preds = %370, %363
  %374 = phi i32 [ %372, %370 ], [ %354, %363 ]
  %375 = trunc i32 %374 to i16
  switch i16 %375, label %381 [
    i16 13, label %376
    i16 10, label %376
  ]

; <label>:376:                                    ; preds = %373, %373
  %377 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 8
  %378 = load i32, i32* %377, align 8
  %379 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.109, i64 0, i64 0), i32 5) #13
  %380 = call i8* @quotearg_style(i32 4, i8* %350) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %378, i8* %379, i8* %380) #13
  br label %747

; <label>:381:                                    ; preds = %373
  %382 = load i32, i32* %333, align 8
  %383 = and i32 %382, 64
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %394, label %385

; <label>:385:                                    ; preds = %381
  %386 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 12
  %387 = load i64, i64* %386, align 8
  %388 = icmp sgt i64 %387, 0
  br i1 %388, label %389, label %394

; <label>:389:                                    ; preds = %385
  %390 = load i64, i64* %334, align 8
  %391 = getelementptr inbounds %struct.stat, %struct.stat* %351, i64 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = icmp eq i64 %390, %392
  br i1 %393, label %394, label %419

; <label>:394:                                    ; preds = %389, %385, %381
  %395 = load i1, i1* @opt_count_all, align 1
  br i1 %395, label %427, label %396

; <label>:396:                                    ; preds = %394
  %397 = load i8, i8* @hash_all, align 1
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %408

; <label>:399:                                    ; preds = %396
  %400 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 3
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, 61440
  %403 = icmp eq i32 %402, 16384
  br i1 %403, label %427, label %404

; <label>:404:                                    ; preds = %399
  %405 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = icmp ugt i64 %406, 1
  br i1 %407, label %408, label %427

; <label>:408:                                    ; preds = %404, %396
  %409 = load %struct.di_set*, %struct.di_set** @di_files, align 8
  %410 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds %struct.stat, %struct.stat* %351, i64 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = call i32 @di_set_insert(%struct.di_set* %409, i64 %413, i64 %411) #13
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %417

; <label>:416:                                    ; preds = %408
  call void @xalloc_die() #16
  unreachable

; <label>:417:                                    ; preds = %408
  %418 = icmp eq i32 %414, 0
  br i1 %418, label %419, label %427

; <label>:419:                                    ; preds = %417, %389, %360
  %420 = phi i32 [ %374, %417 ], [ %374, %389 ], [ %354, %360 ]
  %421 = icmp eq i32 %420, 1
  br i1 %421, label %422, label %747

; <label>:422:                                    ; preds = %419
  %423 = call i32 @fts_set(%struct.FTS* %329, %struct._ftsent* nonnull %347, i32 4) #13
  %424 = call %struct._ftsent* @fts_read(%struct.FTS* %329) #13
  %425 = icmp eq %struct._ftsent* %424, %347
  br i1 %425, label %747, label %426

; <label>:426:                                    ; preds = %422
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.108, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 559, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.process_file, i64 0, i64 0)) #16
  unreachable

; <label>:427:                                    ; preds = %417, %404, %399, %394
  switch i16 %375, label %493 [
    i16 1, label %747
    i16 7, label %428
    i16 2, label %432
  ]

; <label>:428:                                    ; preds = %427
  %429 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 8
  %430 = load i32, i32* %429, align 8
  %431 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %350) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %430, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %431) #13
  br label %493

; <label>:432:                                    ; preds = %427
  %433 = call zeroext i1 @cycle_warning_required(%struct.FTS* nonnull %329, %struct._ftsent* nonnull %347) #15
  br i1 %433, label %434, label %747

; <label>:434:                                    ; preds = %432
  %435 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 0
  %436 = load %struct._ftsent*, %struct._ftsent** %435, align 8
  %437 = load %struct.di_set*, %struct.di_set** @di_mnt, align 8
  %438 = icmp eq %struct.di_set* %437, null
  br i1 %438, label %439, label %471

; <label>:439:                                    ; preds = %434
  %440 = call %struct.di_set* @di_set_alloc() #13
  store %struct.di_set* %440, %struct.di_set** @di_mnt, align 8
  %441 = icmp eq %struct.di_set* %440, null
  br i1 %441, label %442, label %443

; <label>:442:                                    ; preds = %439
  call void @xalloc_die() #16
  unreachable

; <label>:443:                                    ; preds = %439
  %444 = call %struct.mount_entry* @read_file_system_list(i1 zeroext false) #13
  %445 = icmp eq %struct.mount_entry* %444, null
  br i1 %445, label %471, label %446

; <label>:446:                                    ; preds = %443
  br label %447

; <label>:447:                                    ; preds = %446, %466
  %448 = phi %struct.mount_entry* [ %468, %466 ], [ %444, %446 ]
  %449 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %448, i64 0, i32 5
  %450 = load i8, i8* %449, align 8
  %451 = and i8 %450, 3
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %466

; <label>:453:                                    ; preds = %447
  call void @llvm.lifetime.start(i64 144, i8* nonnull %272) #13
  %454 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %448, i64 0, i32 1
  %455 = load i8*, i8** %454, align 8
  %456 = call i32 @__xstat(i32 1, i8* nonnull %455, %struct.stat* nonnull %3) #13
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %465

; <label>:458:                                    ; preds = %453
  %459 = load %struct.di_set*, %struct.di_set** @di_mnt, align 8
  %460 = load i64, i64* %273, align 8
  %461 = load i64, i64* %274, align 8
  %462 = call i32 @di_set_insert(%struct.di_set* %459, i64 %461, i64 %460) #13
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %465

; <label>:464:                                    ; preds = %458
  call void @xalloc_die() #16
  unreachable

; <label>:465:                                    ; preds = %458, %453
  call void @llvm.lifetime.end(i64 144, i8* nonnull %272) #13
  br label %466

; <label>:466:                                    ; preds = %465, %447
  %467 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %448, i64 0, i32 6
  %468 = load %struct.mount_entry*, %struct.mount_entry** %467, align 8
  call void @free_mount_entry(%struct.mount_entry* nonnull %448) #13
  %469 = icmp eq %struct.mount_entry* %468, null
  br i1 %469, label %470, label %447

; <label>:470:                                    ; preds = %466
  br label %471

; <label>:471:                                    ; preds = %470, %443, %434
  %472 = icmp eq %struct._ftsent* %436, %347
  br i1 %472, label %490, label %473

; <label>:473:                                    ; preds = %471
  br label %474

; <label>:474:                                    ; preds = %473, %483
  %475 = phi %struct._ftsent* [ %485, %483 ], [ %347, %473 ]
  %476 = load %struct.di_set*, %struct.di_set** @di_mnt, align 8
  %477 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %475, i64 0, i32 18, i64 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %475, i64 0, i32 18, i64 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @di_set_lookup(%struct.di_set* %476, i64 %478, i64 %480) #13
  %482 = icmp sgt i32 %481, 0
  br i1 %482, label %746, label %483

; <label>:483:                                    ; preds = %474
  %484 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %475, i64 0, i32 1
  %485 = load %struct._ftsent*, %struct._ftsent** %484, align 8
  %486 = icmp eq %struct._ftsent* %485, null
  %487 = icmp eq %struct._ftsent* %485, %436
  %488 = or i1 %486, %487
  br i1 %488, label %489, label %474

; <label>:489:                                    ; preds = %483
  br label %490

; <label>:490:                                    ; preds = %489, %471
  %491 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.110, i64 0, i64 0), i32 5) #13
  %492 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %350) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %491, i8* %492) #13
  br label %747

; <label>:493:                                    ; preds = %428, %427, %355, %346
  %494 = phi i32 [ %354, %355 ], [ %354, %346 ], [ 7, %428 ], [ %374, %427 ]
  %495 = phi i8 [ 0, %355 ], [ 1, %346 ], [ 0, %428 ], [ 1, %427 ]
  %496 = load i1, i1* @apparent_size, align 1
  br i1 %496, label %497, label %502

; <label>:497:                                    ; preds = %493
  %498 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 8
  %499 = load i64, i64* %498, align 8
  %500 = icmp sgt i64 %499, 0
  %501 = select i1 %500, i64 %499, i64 0
  br label %506

; <label>:502:                                    ; preds = %493
  %503 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 10
  %504 = load i64, i64* %503, align 8
  %505 = shl i64 %504, 9
  br label %506

; <label>:506:                                    ; preds = %502, %497
  %507 = phi i64 [ %505, %502 ], [ %501, %497 ]
  %508 = load i32, i32* @time_type, align 4
  switch i32 %508, label %515 [
    i32 0, label %509
    i32 2, label %512
  ]

; <label>:509:                                    ; preds = %506
  %510 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 12, i32 0
  %511 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 12, i32 1
  br label %518

; <label>:512:                                    ; preds = %506
  %513 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 11, i32 0
  %514 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 11, i32 1
  br label %518

; <label>:515:                                    ; preds = %506
  %516 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 13, i32 0
  %517 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 18, i64 0, i32 13, i32 1
  br label %518

; <label>:518:                                    ; preds = %515, %512, %509
  %519 = phi i64* [ %514, %512 ], [ %517, %515 ], [ %511, %509 ]
  %520 = phi i64* [ %513, %512 ], [ %516, %515 ], [ %510, %509 ]
  %521 = load i64, i64* %520, align 8
  %522 = load i64, i64* %519, align 8
  %523 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %347, i64 0, i32 12
  %524 = load i64, i64* %523, align 8
  store i64 %507, i64* %275, align 8
  store i64 1, i64* %276, align 8
  store i64 %521, i64* %277, align 8
  store i64 %522, i64* %278, align 8
  %525 = load i64, i64* @process_file.n_alloc, align 8
  %526 = icmp eq i64 %525, 0
  br i1 %526, label %527, label %530

; <label>:527:                                    ; preds = %518
  %528 = add i64 %524, 10
  store i64 %528, i64* @process_file.n_alloc, align 8
  %529 = call noalias i8* @xcalloc(i64 %528, i64 64) #13
  store i8* %529, i8** bitcast (%struct.dulevel** @process_file.dulvl to i8**), align 8
  br label %674

; <label>:530:                                    ; preds = %518
  %531 = load i64, i64* @prev_level, align 8
  %532 = icmp eq i64 %524, %531
  br i1 %532, label %674, label %533

; <label>:533:                                    ; preds = %530
  %534 = icmp ugt i64 %524, %531
  br i1 %534, label %535, label %564

; <label>:535:                                    ; preds = %533
  %536 = icmp ugt i64 %525, %524
  br i1 %536, label %546, label %537

; <label>:537:                                    ; preds = %535
  %538 = icmp ugt i64 %524, 72057594037927935
  br i1 %538, label %539, label %540

; <label>:539:                                    ; preds = %537
  call void @xalloc_die() #16
  unreachable

; <label>:540:                                    ; preds = %537
  %541 = load i8*, i8** bitcast (%struct.dulevel** @process_file.dulvl to i8**), align 8
  %542 = shl i64 %524, 7
  %543 = call i8* @xrealloc(i8* %541, i64 %542) #13
  store i8* %543, i8** bitcast (%struct.dulevel** @process_file.dulvl to i8**), align 8
  %544 = shl i64 %524, 1
  store i64 %544, i64* @process_file.n_alloc, align 8
  %545 = load i64, i64* @prev_level, align 8
  br label %546

; <label>:546:                                    ; preds = %540, %535
  %547 = phi i64 [ %531, %535 ], [ %545, %540 ]
  %548 = add i64 %547, 1
  %549 = icmp ugt i64 %548, %524
  br i1 %549, label %674, label %550

; <label>:550:                                    ; preds = %546
  %551 = load %struct.dulevel*, %struct.dulevel** @process_file.dulvl, align 8
  br label %552

; <label>:552:                                    ; preds = %552, %550
  %553 = phi i64 [ %548, %550 ], [ %562, %552 ]
  %554 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %551, i64 %553, i32 0
  %555 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %551, i64 %553, i32 0, i32 2, i32 0
  %556 = bitcast %struct.duinfo* %554 to i8*
  call void @llvm.memset.p0i8.i64(i8* %556, i8 0, i64 16, i32 8, i1 false) #13
  %557 = bitcast i64* %555 to <2 x i64>*
  store <2 x i64> <i64 -9223372036854775808, i64 -1>, <2 x i64>* %557, align 8
  %558 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %551, i64 %553, i32 1
  %559 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %551, i64 %553, i32 1, i32 2, i32 0
  %560 = bitcast %struct.duinfo* %558 to i8*
  call void @llvm.memset.p0i8.i64(i8* %560, i8 0, i64 16, i32 8, i1 false) #13
  %561 = bitcast i64* %559 to <2 x i64>*
  store <2 x i64> <i64 -9223372036854775808, i64 -1>, <2 x i64>* %561, align 8
  %562 = add i64 %553, 1
  %563 = icmp ugt i64 %562, %524
  br i1 %563, label %673, label %552

; <label>:564:                                    ; preds = %533
  %565 = add i64 %531, -1
  %566 = icmp eq i64 %524, %565
  br i1 %566, label %568, label %567

; <label>:567:                                    ; preds = %564
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.111, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i32 638, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.process_file, i64 0, i64 0)) #16
  unreachable

; <label>:568:                                    ; preds = %564
  %569 = load %struct.dulevel*, %struct.dulevel** @process_file.dulvl, align 8
  %570 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 0, i32 0
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %571, %507
  %573 = icmp ule i64 %507, %572
  %574 = select i1 %573, i64 %572, i64 -1
  store i64 %574, i64* %275, align 8
  %575 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 0, i32 1
  %576 = load i64, i64* %575, align 8
  %577 = add i64 %576, 1
  store i64 %577, i64* %276, align 8
  %578 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 0, i32 2
  %579 = getelementptr inbounds %struct.timespec, %struct.timespec* %578, i64 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 0, i32 2, i32 1
  %582 = load i64, i64* %581, align 8
  %583 = icmp slt i64 %521, %580
  br i1 %583, label %590, label %584

; <label>:584:                                    ; preds = %568
  %585 = icmp sgt i64 %521, %580
  br i1 %585, label %592, label %586

; <label>:586:                                    ; preds = %584
  %587 = sub nsw i64 %522, %582
  %588 = trunc i64 %587 to i32
  %589 = icmp slt i32 %588, 0
  br i1 %589, label %590, label %592

; <label>:590:                                    ; preds = %586, %568
  %591 = bitcast %struct.timespec* %578 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %281, i8* %591, i64 16, i32 8, i1 false) #13
  br label %592

; <label>:592:                                    ; preds = %590, %586, %584
  %593 = load i1, i1* @opt_separate_dirs, align 1
  br i1 %593, label %619, label %594

; <label>:594:                                    ; preds = %592
  %595 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 0
  %596 = load i64, i64* %595, align 8
  %597 = add i64 %596, %574
  %598 = icmp ule i64 %574, %597
  %599 = select i1 %598, i64 %597, i64 -1
  store i64 %599, i64* %275, align 8
  %600 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 1
  %601 = load i64, i64* %600, align 8
  %602 = add i64 %601, %577
  store i64 %602, i64* %276, align 8
  %603 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 2
  %604 = load i64, i64* %280, align 8
  %605 = load i64, i64* %278, align 8
  %606 = getelementptr inbounds %struct.timespec, %struct.timespec* %603, i64 0, i32 0
  %607 = load i64, i64* %606, align 8
  %608 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 2, i32 1
  %609 = load i64, i64* %608, align 8
  %610 = icmp slt i64 %604, %607
  br i1 %610, label %617, label %611

; <label>:611:                                    ; preds = %594
  %612 = icmp sgt i64 %604, %607
  br i1 %612, label %619, label %613

; <label>:613:                                    ; preds = %611
  %614 = sub nsw i64 %605, %609
  %615 = trunc i64 %614 to i32
  %616 = icmp slt i32 %615, 0
  br i1 %616, label %617, label %619

; <label>:617:                                    ; preds = %613, %594
  %618 = bitcast %struct.timespec* %603 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %281, i8* %618, i64 16, i32 8, i1 false) #13
  br label %619

; <label>:619:                                    ; preds = %617, %613, %611, %592
  %620 = phi i64 [ %599, %617 ], [ %599, %613 ], [ %599, %611 ], [ %574, %592 ]
  %621 = phi i64 [ %602, %617 ], [ %602, %613 ], [ %602, %611 ], [ %577, %592 ]
  %622 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %524, i32 1, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = add i64 %623, %571
  %625 = icmp ule i64 %623, %624
  %626 = select i1 %625, i64 %624, i64 -1
  store i64 %626, i64* %622, align 8
  %627 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %524, i32 1, i32 1
  %628 = load i64, i64* %627, align 8
  %629 = add i64 %628, %576
  store i64 %629, i64* %627, align 8
  %630 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %524, i32 1, i32 2
  %631 = getelementptr inbounds %struct.timespec, %struct.timespec* %630, i64 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %524, i32 1, i32 2, i32 1
  %634 = load i64, i64* %633, align 8
  %635 = icmp slt i64 %632, %580
  br i1 %635, label %642, label %636

; <label>:636:                                    ; preds = %619
  %637 = icmp sgt i64 %632, %580
  br i1 %637, label %647, label %638

; <label>:638:                                    ; preds = %636
  %639 = sub nsw i64 %634, %582
  %640 = trunc i64 %639 to i32
  %641 = icmp slt i32 %640, 0
  br i1 %641, label %642, label %647

; <label>:642:                                    ; preds = %638, %619
  %643 = bitcast %struct.timespec* %630 to i8*
  %644 = bitcast %struct.timespec* %578 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %643, i8* %644, i64 16, i32 8, i1 false) #13
  %645 = load i64, i64* %631, align 8
  %646 = load i64, i64* %633, align 8
  br label %647

; <label>:647:                                    ; preds = %642, %638, %636
  %648 = phi i64 [ %634, %636 ], [ %634, %638 ], [ %646, %642 ]
  %649 = phi i64 [ %632, %636 ], [ %632, %638 ], [ %645, %642 ]
  %650 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 0
  %651 = load i64, i64* %650, align 8
  %652 = add i64 %651, %626
  %653 = icmp ule i64 %626, %652
  %654 = select i1 %653, i64 %652, i64 -1
  store i64 %654, i64* %622, align 8
  %655 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 1
  %656 = load i64, i64* %655, align 8
  %657 = add i64 %656, %629
  store i64 %657, i64* %627, align 8
  %658 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 2
  %659 = getelementptr inbounds %struct.timespec, %struct.timespec* %658, i64 0, i32 0
  %660 = load i64, i64* %659, align 8
  %661 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %569, i64 %531, i32 1, i32 2, i32 1
  %662 = load i64, i64* %661, align 8
  %663 = icmp slt i64 %649, %660
  br i1 %663, label %670, label %664

; <label>:664:                                    ; preds = %647
  %665 = icmp sgt i64 %649, %660
  br i1 %665, label %674, label %666

; <label>:666:                                    ; preds = %664
  %667 = sub nsw i64 %648, %662
  %668 = trunc i64 %667 to i32
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %674

; <label>:670:                                    ; preds = %666, %647
  %671 = bitcast %struct.timespec* %630 to i8*
  %672 = bitcast %struct.timespec* %658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %671, i8* %672, i64 16, i32 8, i1 false) #13
  br label %674

; <label>:673:                                    ; preds = %552
  br label %674

; <label>:674:                                    ; preds = %673, %670, %666, %664, %546, %530, %527
  %675 = phi i64 [ %507, %546 ], [ %620, %670 ], [ %620, %666 ], [ %620, %664 ], [ %507, %530 ], [ %507, %527 ], [ %507, %673 ]
  %676 = phi i64 [ 1, %546 ], [ %621, %670 ], [ %621, %666 ], [ %621, %664 ], [ 1, %530 ], [ 1, %527 ], [ 1, %673 ]
  store i64 %524, i64* @prev_level, align 8
  %677 = load i1, i1* @opt_separate_dirs, align 1
  %678 = or i32 %494, 2
  %679 = icmp eq i32 %678, 6
  %680 = and i1 %679, %677
  br i1 %680, label %703, label %681

; <label>:681:                                    ; preds = %674
  %682 = load %struct.dulevel*, %struct.dulevel** @process_file.dulvl, align 8
  %683 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %682, i64 %524, i32 0, i32 0
  %684 = load i64, i64* %683, align 8
  %685 = add i64 %684, %507
  %686 = icmp ule i64 %684, %685
  %687 = select i1 %686, i64 %685, i64 -1
  store i64 %687, i64* %683, align 8
  %688 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %682, i64 %524, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = add i64 %689, 1
  store i64 %690, i64* %688, align 8
  %691 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %682, i64 %524, i32 0, i32 2, i32 0
  %692 = load i64, i64* %691, align 8
  %693 = getelementptr inbounds %struct.dulevel, %struct.dulevel* %682, i64 %524, i32 0, i32 2, i32 1
  %694 = load i64, i64* %693, align 8
  %695 = icmp slt i64 %692, %521
  br i1 %695, label %702, label %696

; <label>:696:                                    ; preds = %681
  %697 = icmp sgt i64 %692, %521
  br i1 %697, label %703, label %698

; <label>:698:                                    ; preds = %696
  %699 = sub nsw i64 %694, %522
  %700 = trunc i64 %699 to i32
  %701 = icmp slt i32 %700, 0
  br i1 %701, label %702, label %703

; <label>:702:                                    ; preds = %698, %681
  store i64 %521, i64* %691, align 8
  store i64 %522, i64* %693, align 8
  br label %703

; <label>:703:                                    ; preds = %702, %698, %696, %674
  %704 = load i64, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 0), align 8
  %705 = add i64 %704, %507
  %706 = icmp ule i64 %704, %705
  %707 = select i1 %706, i64 %705, i64 -1
  store i64 %707, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 0), align 8
  %708 = load i64, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 1), align 8
  %709 = add i64 %708, 1
  store i64 %709, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 1), align 8
  %710 = load i64, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 2, i32 0), align 8
  %711 = load i64, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 2, i32 1), align 8
  %712 = icmp slt i64 %710, %521
  br i1 %712, label %719, label %713

; <label>:713:                                    ; preds = %703
  %714 = icmp sgt i64 %710, %521
  br i1 %714, label %720, label %715

; <label>:715:                                    ; preds = %713
  %716 = sub nsw i64 %711, %522
  %717 = trunc i64 %716 to i32
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %719, label %720

; <label>:719:                                    ; preds = %715, %703
  store i64 %521, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 2, i32 0), align 8
  store i64 %522, i64* getelementptr inbounds (%struct.duinfo, %struct.duinfo* @tot_dui, i64 0, i32 2, i32 1), align 8
  br label %720

; <label>:720:                                    ; preds = %719, %715, %713
  %721 = icmp ne i32 %678, 6
  %722 = load i64, i64* @max_depth, align 8
  %723 = icmp ugt i64 %524, %722
  %724 = or i1 %721, %723
  br i1 %724, label %725, label %733

; <label>:725:                                    ; preds = %720
  %726 = load i1, i1* @opt_all, align 1
  br i1 %726, label %727, label %731

; <label>:727:                                    ; preds = %725
  %728 = icmp ule i64 %524, %722
  %729 = icmp eq i64 %524, 0
  %730 = or i1 %729, %728
  br i1 %730, label %733, label %744

; <label>:731:                                    ; preds = %725
  %732 = icmp eq i64 %524, 0
  br i1 %732, label %733, label %744

; <label>:733:                                    ; preds = %731, %727, %720
  %734 = load i1, i1* @opt_inodes, align 1
  %735 = select i1 %734, i64 %676, i64 %675
  %736 = load i64, i64* @opt_threshold, align 8
  %737 = icmp slt i64 %736, 0
  br i1 %737, label %738, label %741

; <label>:738:                                    ; preds = %733
  %739 = sub nsw i64 0, %736
  %740 = icmp ugt i64 %735, %739
  br i1 %740, label %744, label %743

; <label>:741:                                    ; preds = %733
  %742 = icmp ult i64 %735, %736
  br i1 %742, label %744, label %743

; <label>:743:                                    ; preds = %741, %738
  call fastcc void @print_size(%struct.duinfo* nonnull %4, i8* %350) #13
  br label %744

; <label>:744:                                    ; preds = %743, %741, %738, %731, %727
  %745 = icmp ne i8 %495, 0
  br label %747

; <label>:746:                                    ; preds = %474
  br label %747

; <label>:747:                                    ; preds = %746, %744, %490, %432, %427, %422, %419, %376
  %748 = phi i1 [ %745, %744 ], [ true, %432 ], [ true, %427 ], [ true, %419 ], [ true, %422 ], [ false, %376 ], [ false, %490 ], [ true, %746 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %271) #13
  %749 = zext i1 %748 to i8
  %750 = and i8 %749, %348
  %751 = call %struct._ftsent* @fts_read(%struct.FTS* %329) #13
  %752 = icmp eq %struct._ftsent* %751, null
  br i1 %752, label %335, label %346

; <label>:753:                                    ; preds = %341, %336
  %754 = phi i8 [ 0, %341 ], [ %337, %336 ]
  store i64 0, i64* @prev_level, align 8
  %755 = call i32 @fts_close(%struct.FTS* %329) #13
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %760, label %757

; <label>:757:                                    ; preds = %753
  %758 = load i32, i32* %338, align 4
  %759 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i64 0, i64 0), i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %758, i8* %759) #13
  br label %760

; <label>:760:                                    ; preds = %753, %757
  %761 = phi i8 [ 0, %757 ], [ %754, %753 ]
  %762 = and i8 %295, 1
  %763 = and i8 %762, %761
  br label %764

; <label>:764:                                    ; preds = %326, %760, %322, %320
  %765 = phi i8 [ 0, %326 ], [ %763, %760 ], [ 0, %322 ], [ 0, %320 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %265) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %265) #13
  %766 = call i8* @argv_iter(%struct.argv_iterator* nonnull %250, i32* nonnull %8) #13
  %767 = icmp eq i8* %766, null
  br i1 %767, label %282, label %293

; <label>:768:                                    ; preds = %286, %283
  %769 = phi i8 [ 0, %286 ], [ %284, %283 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %265) #13
  call void @argv_iter_free(%struct.argv_iterator* nonnull %250) #13
  %770 = load %struct.di_set*, %struct.di_set** @di_files, align 8
  call void @di_set_free(%struct.di_set* %770) #13
  %771 = load %struct.di_set*, %struct.di_set** @di_mnt, align 8
  %772 = icmp eq %struct.di_set* %771, null
  br i1 %772, label %774, label %773

; <label>:773:                                    ; preds = %768
  call void @di_set_free(%struct.di_set* nonnull %771) #13
  br label %774

; <label>:774:                                    ; preds = %768, %773
  br i1 %204, label %775, label %793

; <label>:775:                                    ; preds = %774
  %776 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %777 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %776, i64 0, i32 0
  %778 = load i32, i32* %777, align 8
  %779 = and i32 %778, 32
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %787

; <label>:781:                                    ; preds = %775
  %782 = call i32 @rpl_fclose(%struct._IO_FILE* %776) #13
  %783 = icmp eq i32 %782, 0
  %784 = and i8 %769, 1
  %785 = icmp eq i8 %784, 0
  %786 = or i1 %785, %783
  br i1 %786, label %793, label %790

; <label>:787:                                    ; preds = %775
  %788 = and i8 %769, 1
  %789 = icmp eq i8 %788, 0
  br i1 %789, label %793, label %790

; <label>:790:                                    ; preds = %781, %787
  %791 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i32 5) #13
  %792 = call i8* @quotearg_style(i32 4, i8* nonnull %25) #13
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %791, i8* %792) #13
  unreachable

; <label>:793:                                    ; preds = %787, %781, %774
  %794 = load i1, i1* @print_grand_total, align 1
  br i1 %794, label %795, label %797

; <label>:795:                                    ; preds = %793
  %796 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i32 5) #13
  call fastcc void @print_size(%struct.duinfo* nonnull @tot_dui, i8* %796)
  br label %797

; <label>:797:                                    ; preds = %793, %795
  %798 = and i8 %769, 1
  %799 = xor i8 %798, 1
  %800 = zext i8 %799 to i32
  call void @llvm.lifetime.end(i64 16, i8* nonnull %9) #13
  ret i32 %800
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_size(%struct.duinfo* nocapture readonly, i8*) unnamed_addr #6 {
  %3 = alloca <2 x i64>, align 16
  %4 = bitcast <2 x i64>* %3 to %struct.timespec*
  %5 = alloca %struct.tm, align 8
  %6 = alloca [21 x i8], align 16
  %7 = alloca [652 x i8], align 16
  %8 = load i1, i1* @opt_inodes, align 1
  %9 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %0, i64 0, i32 0
  %10 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %0, i64 0, i32 1
  %11 = select i1 %8, i64* %10, i64* %9
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds [652 x i8], [652 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 652, i8* nonnull %13) #13
  %14 = icmp eq i64 %12, -1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %2
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i64 0, i64 0), i32 5) #13
  br label %21

; <label>:17:                                     ; preds = %2
  %18 = load i32, i32* @human_output_opts, align 4
  %19 = load i64, i64* @output_block_size, align 8
  %20 = call i8* @human_readable(i64 %12, i8* nonnull %13, i32 %18, i64 1, i64 %19) #13
  br label %21

; <label>:21:                                     ; preds = %15, %17
  %22 = phi i8* [ %16, %15 ], [ %20, %17 ]
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23) #13
  call void @llvm.lifetime.end(i64 652, i8* nonnull %13) #13
  %25 = load i1, i1* @opt_time, align 1
  br i1 %25, label %26, label %63

; <label>:26:                                     ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %27, i64 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %27, i64 0, i32 6
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ult i8* %29, %31
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %26
  %34 = call i32 @__overflow(%struct._IO_FILE* %27, i32 9) #13
  br label %37

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %36, i8** %28, align 8
  store i8 9, i8* %29, align 1
  br label %37

; <label>:37:                                     ; preds = %33, %35
  %38 = load i8*, i8** @time_format, align 8
  %39 = load %struct.tm_zone*, %struct.tm_zone** @localtz, align 8
  %40 = getelementptr inbounds %struct.duinfo, %struct.duinfo* %0, i64 0, i32 2, i32 0
  %41 = bitcast i64* %40 to <2 x i64>*
  %42 = load <2 x i64>, <2 x i64>* %41, align 8
  %43 = bitcast <2 x i64>* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %43)
  %44 = getelementptr inbounds <2 x i64>, <2 x i64>* %3, i64 0, i64 0
  store <2 x i64> %42, <2 x i64>* %3, align 16
  %45 = bitcast %struct.tm* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %45) #13
  %46 = call %struct.tm* @localtime_rz(%struct.tm_zone* %39, i64* nonnull %44, %struct.tm* nonnull %5) #13
  %47 = icmp eq %struct.tm* %46, null
  br i1 %47, label %54, label %48

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0, i32 1
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = load i64, i64* %49, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @fprintftime(%struct._IO_FILE* %50, i8* %38, %struct.tm* nonnull %5, %struct.tm_zone* %39, i32 %52) #13
  br label %62

; <label>:54:                                     ; preds = %37
  %55 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %55) #13
  %56 = load i64, i64* %44, align 16
  %57 = call i8* @imaxtostr(i64 %56, i8* nonnull %55) #13
  %58 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.114, i64 0, i64 0), i32 5) #13
  %59 = call i8* @quote(i8* %57) #13
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %58, i8* %59) #13
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %60) #13
  call void @llvm.lifetime.end(i64 21, i8* nonnull %55) #13
  br label %62

; <label>:62:                                     ; preds = %48, %54
  call void @llvm.lifetime.end(i64 56, i8* nonnull %45) #13
  call void @llvm.lifetime.end(i64 16, i8* nonnull %43)
  br label %63

; <label>:63:                                     ; preds = %62, %21
  %64 = load i1, i1* @opt_nul_terminate_output, align 1
  %65 = select i1 %64, i32 0, i32 10
  %66 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i64 0, i64 0), i8* %1, i32 %65) #13
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = call i32 @fflush_unlocked(%struct._IO_FILE* %67) #13
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #13
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 {
  %5 = tail call i64 @strlen(i8* %0) #15
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
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #15
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
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #15
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
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.60, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #13
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #13
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #13
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.61, i64 0, i64 0), i32 5) #13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #13
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
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #13
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.62, i64 0, i64 0), i8* %22) #13
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #13
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.63, i64 0, i64 0), i8* %26) #13
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
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #13
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
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #15
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.60, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #13
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #13
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #13
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #13
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #13
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
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #15
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
declare noalias i8* @malloc(i64) local_unnamed_addr #2

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

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i64 0, i64 0), i32 5) #13
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #13
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.116, i64 0, i64 0), i8* %17, i8* %12) #13
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.117, i64 0, i64 0), i8* %12) #13
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #16
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #16
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.di_set* @di_set_alloc() local_unnamed_addr #6 {
  %1 = tail call noalias i8* @malloc(i64 24) #13
  %2 = bitcast i8* %1 to %struct.di_set*
  %3 = icmp eq i8* %1, null
  br i1 %3, label %11, label %4

; <label>:4:                                      ; preds = %0
  %5 = tail call %struct.hash_table* @hash_initialize(i64 11, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @di_ent_hash, i1 (i8*, i8*)* nonnull @di_ent_compare, void (i8*)* nonnull @di_ent_free) #13
  %6 = bitcast i8* %1 to %struct.hash_table**
  store %struct.hash_table* %5, %struct.hash_table** %6, align 8
  %7 = icmp eq %struct.hash_table* %5, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %4
  tail call void @free(i8* nonnull %1) #13
  br label %11

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds i8, i8* %1, i64 8
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 16, i32 8, i1 false)
  br label %11

; <label>:11:                                     ; preds = %9, %0, %8
  %12 = phi %struct.di_set* [ null, %8 ], [ %2, %0 ], [ %2, %9 ]
  ret %struct.di_set* %12
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @di_ent_hash(i8* nocapture readonly, i64) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @di_ent_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @di_ent_free(i8* nocapture) #6 {
  %2 = getelementptr inbounds i8, i8* %0, i64 8
  %3 = bitcast i8* %2 to %struct.hash_table**
  %4 = load %struct.hash_table*, %struct.hash_table** %3, align 8
  tail call void @hash_free(%struct.hash_table* %4) #13
  tail call void @free(i8* %0) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @di_set_free(%struct.di_set* nocapture nonnull) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 0
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  tail call void @hash_free(%struct.hash_table* %3) #13
  %4 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 1
  %5 = bitcast %struct.ino_map** %4 to i8**
  %6 = load i8*, i8** %5, align 8
  tail call void @free(i8* %6) #13
  %7 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 2
  %8 = bitcast %struct.di_ent** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  tail call void @free(i8* %9) #13
  %10 = bitcast %struct.di_set* %0 to i8*
  tail call void @free(i8* nonnull %10) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @di_set_insert(%struct.di_set* nocapture nonnull, i64, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 2
  %5 = load %struct.di_ent*, %struct.di_ent** %4, align 8
  %6 = icmp eq %struct.di_ent* %5, null
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %5, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %5, i64 0, i32 1
  %13 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  br label %39

; <label>:14:                                     ; preds = %3
  %15 = tail call noalias i8* @malloc(i64 16) #13
  %16 = bitcast i8* %15 to %struct.di_ent*
  %17 = bitcast %struct.di_ent** %4 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %60, label %19

; <label>:19:                                     ; preds = %14, %7
  %20 = phi %struct.di_ent* [ %5, %7 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %20, i64 0, i32 0
  store i64 %1, i64* %21, align 8
  %22 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 0
  %23 = load %struct.hash_table*, %struct.hash_table** %22, align 8
  %24 = bitcast %struct.di_ent* %20 to i8*
  %25 = tail call i8* @hash_insert(%struct.hash_table* %23, i8* %24) #13
  %26 = icmp eq i8* %25, null
  br i1 %26, label %60, label %27

; <label>:27:                                     ; preds = %19
  %28 = bitcast i8* %25 to %struct.di_ent*
  %29 = icmp eq %struct.di_ent* %28, %20
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds i8, i8* %25, i64 8
  %32 = bitcast i8* %31 to %struct.hash_table**
  %33 = load %struct.hash_table*, %struct.hash_table** %32, align 8
  br label %36

; <label>:34:                                     ; preds = %27
  store %struct.di_ent* null, %struct.di_ent** %4, align 8
  %35 = tail call %struct.hash_table* @hash_initialize(i64 1021, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @di_ino_hash, i1 (i8*, i8*)* null, void (i8*)* null) #13
  br label %36

; <label>:36:                                     ; preds = %34, %30
  %37 = phi %struct.hash_table* [ %35, %34 ], [ %33, %30 ]
  %38 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %20, i64 0, i32 1
  store %struct.hash_table* %37, %struct.hash_table** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %11, %36
  %40 = phi %struct.hash_table* [ %13, %11 ], [ %37, %36 ]
  %41 = icmp eq %struct.hash_table* %40, null
  br i1 %41, label %60, label %42

; <label>:42:                                     ; preds = %39
  %43 = add i64 %2, -1
  %44 = icmp ult i64 %43, 9223372036854775806
  br i1 %44, label %56, label %45

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 1
  %47 = load %struct.ino_map*, %struct.ino_map** %46, align 8
  %48 = icmp eq %struct.ino_map* %47, null
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %45
  %50 = tail call %struct.ino_map* @ino_map_alloc(i64 9223372036854775807) #13
  store %struct.ino_map* %50, %struct.ino_map** %46, align 8
  %51 = icmp eq %struct.ino_map* %50, null
  br i1 %51, label %60, label %52

; <label>:52:                                     ; preds = %45, %49
  %53 = phi %struct.ino_map* [ %50, %49 ], [ %47, %45 ]
  %54 = tail call i64 @ino_map_insert(%struct.ino_map* nonnull %53, i64 %2) #13
  %55 = icmp eq i64 %54, -1
  br i1 %55, label %60, label %56

; <label>:56:                                     ; preds = %42, %52
  %57 = phi i64 [ %54, %52 ], [ %2, %42 ]
  %58 = inttoptr i64 %57 to i8*
  %59 = tail call i32 @hash_insert_if_absent(%struct.hash_table* nonnull %40, i8* %58, i8** null) #13
  br label %60

; <label>:60:                                     ; preds = %49, %19, %14, %52, %39, %56
  %61 = phi i32 [ %59, %56 ], [ -1, %39 ], [ -1, %52 ], [ -1, %14 ], [ -1, %19 ], [ -1, %49 ]
  ret i32 %61
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @di_ino_hash(i8*, i64) #11 {
  %3 = ptrtoint i8* %0 to i64
  %4 = urem i64 %3, %1
  ret i64 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @di_set_lookup(%struct.di_set* nocapture nonnull, i64, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 2
  %5 = load %struct.di_ent*, %struct.di_ent** %4, align 8
  %6 = icmp eq %struct.di_ent* %5, null
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %5, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, %1
  br i1 %10, label %11, label %19

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %5, i64 0, i32 1
  %13 = load %struct.hash_table*, %struct.hash_table** %12, align 8
  br label %39

; <label>:14:                                     ; preds = %3
  %15 = tail call noalias i8* @malloc(i64 16) #13
  %16 = bitcast i8* %15 to %struct.di_ent*
  %17 = bitcast %struct.di_ent** %4 to i8**
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %62, label %19

; <label>:19:                                     ; preds = %14, %7
  %20 = phi %struct.di_ent* [ %5, %7 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %20, i64 0, i32 0
  store i64 %1, i64* %21, align 8
  %22 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 0
  %23 = load %struct.hash_table*, %struct.hash_table** %22, align 8
  %24 = bitcast %struct.di_ent* %20 to i8*
  %25 = tail call i8* @hash_insert(%struct.hash_table* %23, i8* %24) #13
  %26 = icmp eq i8* %25, null
  br i1 %26, label %62, label %27

; <label>:27:                                     ; preds = %19
  %28 = bitcast i8* %25 to %struct.di_ent*
  %29 = icmp eq %struct.di_ent* %28, %20
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds i8, i8* %25, i64 8
  %32 = bitcast i8* %31 to %struct.hash_table**
  %33 = load %struct.hash_table*, %struct.hash_table** %32, align 8
  br label %36

; <label>:34:                                     ; preds = %27
  store %struct.di_ent* null, %struct.di_ent** %4, align 8
  %35 = tail call %struct.hash_table* @hash_initialize(i64 1021, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @di_ino_hash, i1 (i8*, i8*)* null, void (i8*)* null) #13
  br label %36

; <label>:36:                                     ; preds = %34, %30
  %37 = phi %struct.hash_table* [ %35, %34 ], [ %33, %30 ]
  %38 = getelementptr inbounds %struct.di_ent, %struct.di_ent* %20, i64 0, i32 1
  store %struct.hash_table* %37, %struct.hash_table** %38, align 8
  br label %39

; <label>:39:                                     ; preds = %11, %36
  %40 = phi %struct.hash_table* [ %13, %11 ], [ %37, %36 ]
  %41 = icmp eq %struct.hash_table* %40, null
  br i1 %41, label %62, label %42

; <label>:42:                                     ; preds = %39
  %43 = add i64 %2, -1
  %44 = icmp ult i64 %43, 9223372036854775806
  br i1 %44, label %56, label %45

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.di_set, %struct.di_set* %0, i64 0, i32 1
  %47 = load %struct.ino_map*, %struct.ino_map** %46, align 8
  %48 = icmp eq %struct.ino_map* %47, null
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %45
  %50 = tail call %struct.ino_map* @ino_map_alloc(i64 9223372036854775807) #13
  store %struct.ino_map* %50, %struct.ino_map** %46, align 8
  %51 = icmp eq %struct.ino_map* %50, null
  br i1 %51, label %62, label %52

; <label>:52:                                     ; preds = %45, %49
  %53 = phi %struct.ino_map* [ %50, %49 ], [ %47, %45 ]
  %54 = tail call i64 @ino_map_insert(%struct.ino_map* nonnull %53, i64 %2) #13
  %55 = icmp eq i64 %54, -1
  br i1 %55, label %62, label %56

; <label>:56:                                     ; preds = %42, %52
  %57 = phi i64 [ %54, %52 ], [ %2, %42 ]
  %58 = inttoptr i64 %57 to i8*
  %59 = tail call i8* @hash_lookup(%struct.hash_table* nonnull %40, i8* %58) #13
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %49, %19, %14, %52, %39, %56
  %63 = phi i32 [ %61, %56 ], [ -1, %39 ], [ -1, %52 ], [ -1, %14 ], [ -1, %19 ], [ -1, %49 ]
  ret i32 %63
}

; Function Attrs: nounwind sspstrong uwtable
define void @exclude_add_pattern_buffer(%struct.exclude* nocapture, i8*) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @xmalloc(i64 16) #13
  %4 = getelementptr inbounds i8, i8* %3, i64 8
  %5 = bitcast i8* %4 to i8**
  store i8* %1, i8** %5, align 8
  %6 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 1
  %7 = bitcast %struct.pattern_buffer** %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = bitcast i8* %3 to i64*
  store i64 %8, i64* %9, align 8
  %10 = bitcast %struct.pattern_buffer** %6 to i8**
  store i8* %3, i8** %10, align 8
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @fnmatch_pattern_has_wildcards(i8* nocapture readonly, i32) local_unnamed_addr #9 {
  %3 = and i32 %1, 134217728
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %1, 2
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %1, 32
  %8 = icmp eq i32 %7, 0
  br label %9

; <label>:9:                                      ; preds = %28, %2
  %10 = phi i8* [ %0, %2 ], [ %29, %28 ]
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %28 [
    i32 46, label %14
    i32 123, label %14
    i32 125, label %14
    i32 40, label %14
    i32 41, label %14
    i32 92, label %15
    i32 43, label %24
    i32 64, label %24
    i32 33, label %24
    i32 63, label %31
    i32 42, label %31
    i32 91, label %31
    i32 0, label %30
  ]

; <label>:14:                                     ; preds = %9, %9, %9, %9, %9
  br i1 %4, label %28, label %31

; <label>:15:                                     ; preds = %9
  br i1 %4, label %16, label %28

; <label>:16:                                     ; preds = %15
  br i1 %6, label %17, label %20

; <label>:17:                                     ; preds = %16
  %18 = load i8, i8* %11, align 1
  %19 = icmp ne i8 %18, 0
  br label %20

; <label>:20:                                     ; preds = %16, %17
  %21 = phi i1 [ false, %16 ], [ %19, %17 ]
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds i8, i8* %11, i64 %22
  br label %28

; <label>:24:                                     ; preds = %9, %9, %9
  br i1 %8, label %28, label %25

; <label>:25:                                     ; preds = %24
  %26 = load i8, i8* %11, align 1
  %27 = icmp eq i8 %26, 40
  br i1 %27, label %31, label %28

; <label>:28:                                     ; preds = %25, %9, %20, %24, %15, %14
  %29 = phi i8* [ %11, %9 ], [ %11, %25 ], [ %11, %24 ], [ %11, %15 ], [ %23, %20 ], [ %11, %14 ]
  br label %9

; <label>:30:                                     ; preds = %9
  br label %32

; <label>:31:                                     ; preds = %14, %25, %9, %9, %9
  br label %32

; <label>:32:                                     ; preds = %31, %30
  %33 = phi i1 [ false, %30 ], [ true, %31 ]
  ret i1 %33
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.exclude* @new_exclude() local_unnamed_addr #6 {
  %1 = tail call noalias i8* @xzalloc(i64 16) #13
  %2 = bitcast i8* %1 to %struct.exclude*
  ret %struct.exclude* %2
}

; Function Attrs: nounwind sspstrong uwtable
define void @free_exclude(%struct.exclude* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 0
  %3 = load %struct.exclude_segment*, %struct.exclude_segment** %2, align 8
  %4 = icmp eq %struct.exclude_segment* %3, null
  br i1 %4, label %48, label %5

; <label>:5:                                      ; preds = %1
  br label %6

; <label>:6:                                      ; preds = %5, %45
  %7 = phi %struct.exclude_segment* [ %10, %45 ], [ %3, %5 ]
  %8 = bitcast %struct.exclude_segment* %7 to i8*
  %9 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %7, i64 0, i32 0
  %10 = load %struct.exclude_segment*, %struct.exclude_segment** %9, align 8
  %11 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %7, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %45 [
    i32 1, label %13
    i32 0, label %41
  ]

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %7, i64 0, i32 3, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %7, i64 0, i32 3, i32 0, i32 0
  %18 = load %struct.patopts*, %struct.patopts** %17, align 8
  br i1 %16, label %38, label %19

; <label>:19:                                     ; preds = %13
  br label %20

; <label>:20:                                     ; preds = %19, %32
  %21 = phi i64 [ %34, %32 ], [ %15, %19 ]
  %22 = phi %struct.patopts* [ %33, %32 ], [ %18, %19 ]
  %23 = phi i64 [ %35, %32 ], [ 0, %19 ]
  %24 = getelementptr inbounds %struct.patopts, %struct.patopts* %22, i64 %23, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.patopts, %struct.patopts* %22, i64 %23, i32 1, i32 0
  tail call void @regfree(%struct.re_pattern_buffer* %29) #13
  %30 = load i64, i64* %14, align 8
  %31 = load %struct.patopts*, %struct.patopts** %17, align 8
  br label %32

; <label>:32:                                     ; preds = %28, %20
  %33 = phi %struct.patopts* [ %22, %20 ], [ %31, %28 ]
  %34 = phi i64 [ %21, %20 ], [ %30, %28 ]
  %35 = add i64 %23, 1
  %36 = icmp ult i64 %35, %34
  br i1 %36, label %20, label %37

; <label>:37:                                     ; preds = %32
  br label %38

; <label>:38:                                     ; preds = %37, %13
  %39 = phi %struct.patopts* [ %18, %13 ], [ %33, %37 ]
  %40 = bitcast %struct.patopts* %39 to i8*
  tail call void @free(i8* %40) #13
  br label %45

; <label>:41:                                     ; preds = %6
  %42 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %7, i64 0, i32 3
  %43 = bitcast %union.anon.11* %42 to %struct.hash_table**
  %44 = load %struct.hash_table*, %struct.hash_table** %43, align 8
  tail call void @hash_free(%struct.hash_table* %44) #13
  br label %45

; <label>:45:                                     ; preds = %6, %38, %41
  tail call void @free(i8* %8) #13
  %46 = icmp eq %struct.exclude_segment* %10, null
  br i1 %46, label %47, label %6

; <label>:47:                                     ; preds = %45
  br label %48

; <label>:48:                                     ; preds = %47, %1
  %49 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 1
  %50 = load %struct.pattern_buffer*, %struct.pattern_buffer** %49, align 8
  %51 = icmp eq %struct.pattern_buffer* %50, null
  br i1 %51, label %62, label %52

; <label>:52:                                     ; preds = %48
  br label %53

; <label>:53:                                     ; preds = %52, %53
  %54 = phi %struct.pattern_buffer* [ %57, %53 ], [ %50, %52 ]
  %55 = bitcast %struct.pattern_buffer* %54 to i8*
  %56 = getelementptr inbounds %struct.pattern_buffer, %struct.pattern_buffer* %54, i64 0, i32 0
  %57 = load %struct.pattern_buffer*, %struct.pattern_buffer** %56, align 8
  %58 = getelementptr inbounds %struct.pattern_buffer, %struct.pattern_buffer* %54, i64 0, i32 1
  %59 = load i8*, i8** %58, align 8
  tail call void @free(i8* %59) #13
  tail call void @free(i8* %55) #13
  %60 = icmp eq %struct.pattern_buffer* %57, null
  br i1 %60, label %61, label %53

; <label>:61:                                     ; preds = %53
  br label %62

; <label>:62:                                     ; preds = %61, %48
  %63 = bitcast %struct.exclude* %0 to i8*
  tail call void @free(i8* %63) #13
  ret void
}

declare void @regfree(%struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @exclude_fnmatch(i8*, i8*, i32) local_unnamed_addr #6 {
  %4 = and i32 %2, 268435456
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %5, i32 (i8*, i8*, i32)* @fnmatch, i32 (i8*, i8*, i32)* @fnmatch_no_wildcards
  %7 = tail call i32 %6(i8* %0, i8* %1, i32 %2) #13
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  %10 = and i32 %2, 1073741824
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %39

; <label>:12:                                     ; preds = %3
  %13 = load i8, i8* %1, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %8, true
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %12
  br label %18

; <label>:18:                                     ; preds = %17, %31
  %19 = phi i8 [ %33, %31 ], [ %13, %17 ]
  %20 = phi i8* [ %23, %31 ], [ %1, %17 ]
  %21 = phi i8 [ %32, %31 ], [ %9, %17 ]
  %22 = icmp eq i8 %19, 47
  %23 = getelementptr inbounds i8, i8* %20, i64 1
  br i1 %22, label %24, label %31

; <label>:24:                                     ; preds = %18
  %25 = load i8, i8* %23, align 1
  %26 = icmp eq i8 %25, 47
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 %6(i8* %0, i8* %23, i32 %2) #13
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

; <label>:31:                                     ; preds = %18, %24, %27
  %32 = phi i8 [ %21, %24 ], [ %30, %27 ], [ %21, %18 ]
  %33 = load i8, i8* %23, align 1
  %34 = icmp ne i8 %33, 0
  %35 = and i8 %32, 1
  %36 = icmp eq i8 %35, 0
  %37 = and i1 %36, %34
  br i1 %37, label %18, label %38

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %38, %12, %3
  %40 = phi i8 [ %9, %3 ], [ %9, %12 ], [ %32, %38 ]
  %41 = and i8 %40, 1
  %42 = icmp ne i8 %41, 0
  ret i1 %42
}

declare i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @fnmatch_no_wildcards(i8* readonly, i8*, i32) unnamed_addr #6 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %2, 16
  %7 = icmp ne i32 %6, 0
  br i1 %5, label %8, label %13

; <label>:8:                                      ; preds = %3
  br i1 %7, label %9, label %11

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @mbscasecmp(i8* %0, i8* %1) #15
  br label %43

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @strcmp(i8* %0, i8* %1) #13
  br label %43

; <label>:13:                                     ; preds = %3
  br i1 %7, label %24, label %14

; <label>:14:                                     ; preds = %13
  %15 = tail call i64 @strlen(i8* %0) #15
  %16 = tail call i32 @strncmp(i8* %0, i8* %1, i64 %15) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %1, i64 %15
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i8 %20, 47
  %23 = select i1 %22, i32 0, i32 %21
  br label %43

; <label>:24:                                     ; preds = %13
  %25 = tail call noalias i8* @xstrdup(i8* %1) #13
  %26 = tail call i8* @strchr(i8* %25, i32 47) #13
  %27 = icmp eq i8* %26, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %24
  br label %32

; <label>:29:                                     ; preds = %36
  br label %30

; <label>:30:                                     ; preds = %29, %24
  %31 = tail call i32 @mbscasecmp(i8* %0, i8* %25) #15
  br label %41

; <label>:32:                                     ; preds = %28, %36
  %33 = phi i8* [ %38, %36 ], [ %26, %28 ]
  store i8 0, i8* %33, align 1
  %34 = tail call i32 @mbscasecmp(i8* %0, i8* %25) #15
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 47, i8* %33, align 1
  %38 = tail call i8* @strchr(i8* %37, i32 47) #13
  %39 = icmp eq i8* %38, null
  br i1 %39, label %29, label %32

; <label>:40:                                     ; preds = %32
  br label %41

; <label>:41:                                     ; preds = %40, %30
  %42 = phi i32 [ %31, %30 ], [ %34, %40 ]
  tail call void @free(i8* %25) #13
  br label %43

; <label>:43:                                     ; preds = %18, %14, %9, %11, %41
  %44 = phi i32 [ %42, %41 ], [ %10, %9 ], [ %12, %11 ], [ %16, %14 ], [ %23, %18 ]
  ret i32 %44
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @excluded_file_name(%struct.exclude* nocapture readonly, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 0
  %4 = load %struct.exclude_segment*, %struct.exclude_segment** %3, align 8
  %5 = icmp eq %struct.exclude_segment* %4, null
  br i1 %5, label %133, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %115
  %8 = phi %struct.exclude_segment* [ %118, %115 ], [ %4, %6 ]
  %9 = phi i8* [ %116, %115 ], [ null, %6 ]
  %10 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %50

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8* %9, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %13
  %16 = tail call i64 @strlen(i8* %1) #15
  %17 = add i64 %16, 1
  %18 = tail call noalias i8* @xmalloc(i64 %17) #13
  br label %19

; <label>:19:                                     ; preds = %13, %15
  %20 = phi i8* [ %9, %13 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 3
  %24 = bitcast %union.anon.11* %23 to %struct.hash_table**
  %25 = load %struct.hash_table*, %struct.hash_table** %24, align 8
  %26 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %20, i1 false) #13
  %27 = and i32 %22, 8
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %22, 1073741824
  %30 = icmp eq i32 %29, 0
  br label %31

; <label>:31:                                     ; preds = %46, %19
  %32 = phi i8* [ %1, %19 ], [ %49, %46 ]
  %33 = tail call i8* @__strcpy_chk(i8* nonnull %20, i8* nonnull %32, i64 %26) #13
  %34 = tail call i8* @hash_lookup(%struct.hash_table* %25, i8* %20) #13
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %121

; <label>:36:                                     ; preds = %31
  br i1 %28, label %45, label %37

; <label>:37:                                     ; preds = %36
  br label %38

; <label>:38:                                     ; preds = %37, %41
  %39 = tail call i8* @strrchr(i8* %20, i32 47) #15
  %40 = icmp eq i8* %39, null
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %38
  store i8 0, i8* %39, align 1
  %42 = tail call i8* @hash_lookup(%struct.hash_table* %25, i8* %20) #13
  %43 = icmp eq i8* %42, null
  br i1 %43, label %38, label %120

; <label>:44:                                     ; preds = %38
  br label %45

; <label>:45:                                     ; preds = %44, %36
  br i1 %30, label %46, label %113

; <label>:46:                                     ; preds = %45
  %47 = tail call i8* @strchr(i8* %32, i32 47) #13
  %48 = icmp eq i8* %47, null
  %49 = getelementptr inbounds i8, i8* %47, i64 1
  br i1 %48, label %113, label %31

; <label>:50:                                     ; preds = %7
  %51 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 3, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 3, i32 0, i32 0
  %54 = load %struct.patopts*, %struct.patopts** %53, align 8
  %55 = icmp eq i64 %52, 0
  br i1 %55, label %115, label %56

; <label>:56:                                     ; preds = %50
  br label %57

; <label>:57:                                     ; preds = %56, %110
  %58 = phi i64 [ %111, %110 ], [ 0, %56 ]
  %59 = getelementptr inbounds %struct.patopts, %struct.patopts* %54, i64 %58, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 134217728
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.patopts, %struct.patopts* %54, i64 %58, i32 1
  br i1 %62, label %64, label %106

; <label>:64:                                     ; preds = %57
  %65 = bitcast %union.anon.0* %63 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = and i32 %60, 268435456
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %68, i32 (i8*, i8*, i32)* @fnmatch, i32 (i8*, i8*, i32)* @fnmatch_no_wildcards
  %70 = tail call i32 %69(i8* %66, i8* %1, i32 %60) #13
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i8
  %73 = and i32 %60, 1073741824
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %102

; <label>:75:                                     ; preds = %64
  %76 = load i8, i8* %1, align 1
  %77 = icmp ne i8 %76, 0
  %78 = xor i1 %71, true
  %79 = and i1 %77, %78
  br i1 %79, label %80, label %102

; <label>:80:                                     ; preds = %75
  br label %81

; <label>:81:                                     ; preds = %80, %94
  %82 = phi i8 [ %96, %94 ], [ %76, %80 ]
  %83 = phi i8* [ %86, %94 ], [ %1, %80 ]
  %84 = phi i8 [ %95, %94 ], [ %72, %80 ]
  %85 = icmp eq i8 %82, 47
  %86 = getelementptr inbounds i8, i8* %83, i64 1
  br i1 %85, label %87, label %94

; <label>:87:                                     ; preds = %81
  %88 = load i8, i8* %86, align 1
  %89 = icmp eq i8 %88, 47
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %87
  %91 = tail call i32 %69(i8* %66, i8* nonnull %86, i32 %60) #13
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i8
  br label %94

; <label>:94:                                     ; preds = %90, %87, %81
  %95 = phi i8 [ %84, %87 ], [ %93, %90 ], [ %84, %81 ]
  %96 = load i8, i8* %86, align 1
  %97 = icmp ne i8 %96, 0
  %98 = and i8 %95, 1
  %99 = icmp eq i8 %98, 0
  %100 = and i1 %99, %97
  br i1 %100, label %81, label %101

; <label>:101:                                    ; preds = %94
  br label %102

; <label>:102:                                    ; preds = %101, %75, %64
  %103 = phi i8 [ %72, %64 ], [ %72, %75 ], [ %95, %101 ]
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %122

; <label>:106:                                    ; preds = %57
  %107 = getelementptr inbounds %union.anon.0, %union.anon.0* %63, i64 0, i32 0
  %108 = tail call i32 @regexec(%struct.re_pattern_buffer* %107, i8* %1, i64 0, %struct.regmatch_t* null, i32 0) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110

; <label>:110:                                    ; preds = %106, %102
  %111 = add nuw i64 %58, 1
  %112 = icmp ult i64 %111, %52
  br i1 %112, label %57, label %114

; <label>:113:                                    ; preds = %45, %46
  br label %115

; <label>:114:                                    ; preds = %110
  br label %115

; <label>:115:                                    ; preds = %114, %113, %50
  %116 = phi i8* [ %9, %50 ], [ %20, %113 ], [ %9, %114 ]
  %117 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 0
  %118 = load %struct.exclude_segment*, %struct.exclude_segment** %117, align 8
  %119 = icmp eq %struct.exclude_segment* %118, null
  br i1 %119, label %123, label %7

; <label>:120:                                    ; preds = %41
  br label %124

; <label>:121:                                    ; preds = %31
  br label %124

; <label>:122:                                    ; preds = %102, %106
  br label %124

; <label>:123:                                    ; preds = %115
  br label %124

; <label>:124:                                    ; preds = %123, %122, %121, %120
  %125 = phi i32 [ 0, %120 ], [ 0, %121 ], [ 0, %122 ], [ 1, %123 ]
  %126 = phi i8* [ %20, %120 ], [ %20, %121 ], [ %9, %122 ], [ %116, %123 ]
  tail call void @free(i8* %126) #13
  %127 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %8, i64 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = lshr i32 %128, 29
  %130 = and i32 %129, 1
  %131 = xor i32 %130, 1
  %132 = icmp ne i32 %125, %131
  br label %133

; <label>:133:                                    ; preds = %2, %124
  %134 = phi i1 [ %132, %124 ], [ false, %2 ]
  ret i1 %134
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

declare i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @add_exclude(%struct.exclude* nocapture, i8*, i32) #6 {
  %4 = and i32 %2, 402653184
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %147, label %6

; <label>:6:                                      ; preds = %3
  %7 = and i32 %2, 134217728
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %2, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %2, 32
  %12 = icmp eq i32 %11, 0
  br label %13

; <label>:13:                                     ; preds = %18, %6
  %14 = phi i8* [ %1, %6 ], [ %19, %18 ]
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %14, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %18 [
    i32 46, label %20
    i32 123, label %20
    i32 125, label %20
    i32 40, label %20
    i32 41, label %20
    i32 92, label %21
    i32 43, label %30
    i32 64, label %30
    i32 33, label %30
    i32 63, label %34
    i32 42, label %34
    i32 91, label %34
    i32 0, label %146
  ]

; <label>:18:                                     ; preds = %13, %20, %21, %26, %30, %31
  %19 = phi i8* [ %15, %13 ], [ %15, %31 ], [ %15, %30 ], [ %15, %21 ], [ %29, %26 ], [ %15, %20 ]
  br label %13

; <label>:20:                                     ; preds = %13, %13, %13, %13, %13
  br i1 %8, label %18, label %34

; <label>:21:                                     ; preds = %13
  br i1 %8, label %22, label %18

; <label>:22:                                     ; preds = %21
  br i1 %10, label %23, label %26

; <label>:23:                                     ; preds = %22
  %24 = load i8, i8* %15, align 1
  %25 = icmp ne i8 %24, 0
  br label %26

; <label>:26:                                     ; preds = %23, %22
  %27 = phi i1 [ false, %22 ], [ %25, %23 ]
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds i8, i8* %15, i64 %28
  br label %18

; <label>:30:                                     ; preds = %13, %13, %13
  br i1 %12, label %18, label %31

; <label>:31:                                     ; preds = %30
  %32 = load i8, i8* %15, align 1
  %33 = icmp eq i8 %32, 40
  br i1 %33, label %34, label %18

; <label>:34:                                     ; preds = %13, %13, %13, %20, %31
  %35 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 0
  %36 = load %struct.exclude_segment*, %struct.exclude_segment** %35, align 8
  %37 = icmp eq %struct.exclude_segment* %36, null
  br i1 %37, label %48, label %38

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %36, i64 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %48

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %36, i64 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, %2
  %46 = and i32 %45, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

; <label>:48:                                     ; preds = %34, %42, %38
  %49 = tail call noalias i8* @xzalloc(i64 40) #13
  %50 = getelementptr inbounds i8, i8* %49, i64 8
  %51 = bitcast i8* %50 to i32*
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 12
  %53 = bitcast i8* %52 to i32*
  store i32 %2, i32* %53, align 4
  %54 = bitcast %struct.exclude* %0 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast i8* %49 to i64*
  store i64 %55, i64* %56, align 8
  %57 = bitcast %struct.exclude* %0 to i8**
  store i8* %49, i8** %57, align 8
  %58 = bitcast i8* %49 to %struct.exclude_segment*
  br label %59

; <label>:59:                                     ; preds = %48, %42
  %60 = phi %struct.exclude_segment* [ %58, %48 ], [ %36, %42 ]
  %61 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %60, i64 0, i32 3, i32 0
  %62 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %60, i64 0, i32 3, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %60, i64 0, i32 3, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %70, label %67

; <label>:67:                                     ; preds = %59
  %68 = getelementptr inbounds %struct.exclude_pattern, %struct.exclude_pattern* %61, i64 0, i32 0
  %69 = load %struct.patopts*, %struct.patopts** %68, align 8
  br label %90

; <label>:70:                                     ; preds = %59
  %71 = bitcast %struct.exclude_pattern* %61 to i8**
  %72 = load i8*, i8** %71, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %70
  %75 = icmp eq i64 %63, 0
  %76 = select i1 %75, i64 1, i64 %63
  br label %84

; <label>:77:                                     ; preds = %70
  %78 = icmp ult i64 %63, 85401592933840516
  br i1 %78, label %80, label %79

; <label>:79:                                     ; preds = %77
  tail call void @xalloc_die() #16
  unreachable

; <label>:80:                                     ; preds = %77
  %81 = lshr i64 %63, 1
  %82 = add i64 %63, 1
  %83 = add i64 %82, %81
  br label %84

; <label>:84:                                     ; preds = %74, %80
  %85 = phi i64 [ %83, %80 ], [ %76, %74 ]
  store i64 %85, i64* %64, align 8
  %86 = mul i64 %85, 72
  %87 = tail call i8* @xrealloc(i8* %72, i64 %86) #13
  store i8* %87, i8** %71, align 8
  %88 = bitcast i8* %87 to %struct.patopts*
  %89 = load i64, i64* %62, align 8
  br label %90

; <label>:90:                                     ; preds = %67, %84
  %91 = phi i64 [ %63, %67 ], [ %89, %84 ]
  %92 = phi %struct.patopts* [ %69, %67 ], [ %88, %84 ]
  %93 = add i64 %91, 1
  store i64 %93, i64* %62, align 8
  %94 = getelementptr inbounds %struct.patopts, %struct.patopts* %92, i64 %91, i32 0
  store i32 %2, i32* %94, align 8
  br i1 %8, label %129, label %95

; <label>:95:                                     ; preds = %90
  %96 = lshr i32 %2, 3
  %97 = and i32 %96, 2
  %98 = or i32 %97, 9
  %99 = and i32 %2, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %117, label %101

; <label>:101:                                    ; preds = %95
  %102 = tail call i64 @strlen(i8* %1) #15
  br label %103

; <label>:103:                                    ; preds = %106, %101
  %104 = phi i64 [ %102, %101 ], [ %107, %106 ]
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %125, label %106

; <label>:106:                                    ; preds = %103
  %107 = add i64 %104, -1
  %108 = getelementptr inbounds i8, i8* %1, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = icmp eq i8 %109, 47
  br i1 %110, label %103, label %111

; <label>:111:                                    ; preds = %106
  %112 = add i64 %104, 7
  %113 = tail call noalias i8* @xmalloc(i64 %112) #13
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %113, i8* nonnull %1, i64 %104, i32 1, i1 false)
  %114 = getelementptr inbounds i8, i8* %113, i64 %104
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.132, i64 0, i64 0), i64 7, i32 1, i1 false)
  %115 = getelementptr inbounds %struct.patopts, %struct.patopts* %92, i64 %91, i32 1, i32 0
  %116 = tail call i32 @regcomp(%struct.re_pattern_buffer* %115, i8* %113, i32 %98) #13
  tail call void @free(i8* %113) #13
  br label %120

; <label>:117:                                    ; preds = %95
  %118 = getelementptr inbounds %struct.patopts, %struct.patopts* %92, i64 %91, i32 1, i32 0
  %119 = tail call i32 @regcomp(%struct.re_pattern_buffer* %118, i8* %1, i32 %98) #13
  br label %120

; <label>:120:                                    ; preds = %111, %117
  %121 = phi i32 [ %119, %117 ], [ %116, %111 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %213, label %123

; <label>:123:                                    ; preds = %120
  %124 = load i64, i64* %62, align 8
  br label %126

; <label>:125:                                    ; preds = %103
  br label %126

; <label>:126:                                    ; preds = %125, %123
  %127 = phi i64 [ %124, %123 ], [ %93, %125 ]
  %128 = add i64 %127, -1
  store i64 %128, i64* %62, align 8
  br label %213

; <label>:129:                                    ; preds = %90
  %130 = and i32 %2, 67108864
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %142, label %132

; <label>:132:                                    ; preds = %129
  %133 = tail call noalias i8* @xstrdup(i8* %1) #13
  %134 = tail call noalias i8* @xmalloc(i64 16) #13
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  %136 = bitcast i8* %135 to i8**
  store i8* %133, i8** %136, align 8
  %137 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 1
  %138 = bitcast %struct.pattern_buffer** %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = bitcast i8* %134 to i64*
  store i64 %139, i64* %140, align 8
  %141 = bitcast %struct.pattern_buffer** %137 to i8**
  store i8* %134, i8** %141, align 8
  br label %142

; <label>:142:                                    ; preds = %129, %132
  %143 = phi i8* [ %133, %132 ], [ %1, %129 ]
  %144 = getelementptr inbounds %struct.patopts, %struct.patopts* %92, i64 %91, i32 1
  %145 = bitcast %union.anon.0* %144 to i8**
  store i8* %143, i8** %145, align 8
  br label %213

; <label>:146:                                    ; preds = %13
  br label %147

; <label>:147:                                    ; preds = %146, %3
  %148 = getelementptr inbounds %struct.exclude, %struct.exclude* %0, i64 0, i32 0
  %149 = load %struct.exclude_segment*, %struct.exclude_segment** %148, align 8
  %150 = icmp eq %struct.exclude_segment* %149, null
  br i1 %150, label %161, label %151

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %149, i64 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

; <label>:155:                                    ; preds = %151
  %156 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %149, i64 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, %2
  %159 = and i32 %158, 1610612760
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %179, label %161

; <label>:161:                                    ; preds = %147, %155, %151
  %162 = tail call noalias i8* @xzalloc(i64 40) #13
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = bitcast i8* %163 to i32*
  store i32 0, i32* %164, align 8
  %165 = getelementptr inbounds i8, i8* %162, i64 12
  %166 = bitcast i8* %165 to i32*
  store i32 %2, i32* %166, align 4
  %167 = and i32 %2, 16
  %168 = icmp ne i32 %167, 0
  %169 = select i1 %168, i64 (i8*, i64)* @string_hasher_ci, i64 (i8*, i64)* @string_hasher
  %170 = select i1 %168, i1 (i8*, i8*)* @string_compare_ci, i1 (i8*, i8*)* @string_compare
  %171 = tail call %struct.hash_table* @hash_initialize(i64 0, %struct.hash_tuning* null, i64 (i8*, i64)* %169, i1 (i8*, i8*)* %170, void (i8*)* nonnull @string_free) #13
  %172 = getelementptr inbounds i8, i8* %162, i64 16
  %173 = bitcast i8* %172 to %struct.hash_table**
  store %struct.hash_table* %171, %struct.hash_table** %173, align 8
  %174 = bitcast %struct.exclude* %0 to i64*
  %175 = load i64, i64* %174, align 8
  %176 = bitcast i8* %162 to i64*
  store i64 %175, i64* %176, align 8
  %177 = bitcast %struct.exclude* %0 to i8**
  store i8* %162, i8** %177, align 8
  %178 = bitcast i8* %162 to %struct.exclude_segment*
  br label %179

; <label>:179:                                    ; preds = %161, %155
  %180 = phi %struct.exclude_segment* [ %178, %161 ], [ %149, %155 ]
  %181 = tail call noalias i8* @xstrdup(i8* %1) #13
  %182 = and i32 %2, 268435458
  %183 = icmp eq i32 %182, 268435456
  br i1 %183, label %184, label %206

; <label>:184:                                    ; preds = %179
  br label %185

; <label>:185:                                    ; preds = %184, %197
  %186 = phi i8* [ %203, %197 ], [ %181, %184 ]
  %187 = phi i8* [ %202, %197 ], [ %181, %184 ]
  %188 = load i8, i8* %187, align 1
  %189 = icmp eq i8 %188, 92
  br i1 %189, label %190, label %197

; <label>:190:                                    ; preds = %185
  %191 = getelementptr inbounds i8, i8* %187, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp ne i8 %192, 0
  %194 = zext i1 %193 to i64
  %195 = getelementptr inbounds i8, i8* %187, i64 %194
  %196 = load i8, i8* %195, align 1
  br label %197

; <label>:197:                                    ; preds = %190, %185
  %198 = phi i8 [ %188, %185 ], [ %196, %190 ]
  %199 = phi i1 [ false, %185 ], [ %193, %190 ]
  %200 = zext i1 %199 to i64
  %201 = getelementptr inbounds i8, i8* %187, i64 %200
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = getelementptr inbounds i8, i8* %186, i64 1
  store i8 %198, i8* %186, align 1
  %204 = icmp eq i8 %198, 0
  br i1 %204, label %205, label %185

; <label>:205:                                    ; preds = %197
  br label %206

; <label>:206:                                    ; preds = %205, %179
  %207 = getelementptr inbounds %struct.exclude_segment, %struct.exclude_segment* %180, i64 0, i32 3
  %208 = bitcast %union.anon.11* %207 to %struct.hash_table**
  %209 = load %struct.hash_table*, %struct.hash_table** %208, align 8
  %210 = tail call i8* @hash_insert(%struct.hash_table* %209, i8* %181) #13
  %211 = icmp eq i8* %210, %181
  br i1 %211, label %213, label %212

; <label>:212:                                    ; preds = %206
  tail call void @free(i8* %181) #13
  br label %213

; <label>:213:                                    ; preds = %142, %120, %206, %212, %126
  ret void
}

declare i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @string_hasher_ci(i8*, i64) #6 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %4) #13
  %5 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0
  store i8* %0, i8** %5, align 8
  store i8 0, i8* %4, align 8
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1
  %7 = bitcast %struct.__mbstate_t* %6 to i64*
  store i64 0, i64* %7, align 4
  %8 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2
  store i8 0, i8* %8, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2
  %10 = load i8, i8* %9, align 8
  %11 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i8 %10, 0
  %14 = icmp ne i32 %12, 0
  %15 = or i1 %13, %14
  br i1 %15, label %16, label %45

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  br label %18

; <label>:18:                                     ; preds = %16, %30
  %19 = phi i32 [ %12, %16 ], [ %40, %30 ]
  %20 = phi i8 [ %10, %16 ], [ %39, %30 ]
  %21 = phi i64 [ 0, %16 ], [ %36, %30 ]
  %22 = icmp eq i8 %20, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = call i32 @towlower(i32 %19) #13
  %25 = load i8*, i8** %5, align 8
  br label %30

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  br label %30

; <label>:30:                                     ; preds = %26, %23
  %31 = phi i8* [ %25, %23 ], [ %27, %26 ]
  %32 = phi i32 [ %24, %23 ], [ %29, %26 ]
  %33 = mul i64 %21, 31
  %34 = sext i32 %32 to i64
  %35 = add i64 %34, %33
  %36 = urem i64 %35, %1
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds i8, i8* %31, i64 %37
  store i8* %38, i8** %5, align 8
  store i8 0, i8* %8, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %39 = load i8, i8* %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i8 %39, 0
  %42 = icmp ne i32 %40, 0
  %43 = or i1 %41, %42
  br i1 %43, label %18, label %44

; <label>:44:                                     ; preds = %30
  br label %45

; <label>:45:                                     ; preds = %44, %2
  %46 = phi i64 [ 0, %2 ], [ %36, %44 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %4) #13
  ret i64 %46
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @string_hasher(i8* readonly, i64) #9 {
  %3 = tail call i64 @hash_string(i8* %0, i64 %1) #15
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @string_compare_ci(i8* readonly, i8* readonly) #9 {
  %3 = tail call i32 @mbscasecmp(i8* %0, i8* %1) #15
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @string_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = tail call i32 @strcmp(i8* %0, i8* %1) #13
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @string_free(i8* nocapture) #6 {
  tail call void @free(i8* %0) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @towlower(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @add_exclude_fp(void (%struct.exclude*, i8*, i32, i8*)* nocapture, %struct.exclude*, %struct._IO_FILE*, i32, i8 signext, i8*) local_unnamed_addr #6 {
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #13
  store i64 0, i64* %7, align 8
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 2
  br label %11

; <label>:11:                                     ; preds = %30, %6
  %12 = phi i64 [ 0, %6 ], [ %33, %30 ]
  %13 = phi i8* [ null, %6 ], [ %31, %30 ]
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ult i8* %14, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %18, i8** %9, align 8
  %19 = load i8, i8* %14, align 1
  %20 = zext i8 %19 to i32
  br label %24

; <label>:21:                                     ; preds = %11
  %22 = call i32 @__uflow(%struct._IO_FILE* nonnull %2) #13
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %35, label %24

; <label>:24:                                     ; preds = %17, %21
  %25 = phi i32 [ %20, %17 ], [ %22, %21 ]
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %12, %26
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %24
  %29 = call i8* @x2realloc(i8* %13, i64* nonnull %7) #13
  br label %30

; <label>:30:                                     ; preds = %28, %24
  %31 = phi i8* [ %29, %28 ], [ %13, %24 ]
  %32 = trunc i32 %25 to i8
  %33 = add i64 %12, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %12
  store i8 %32, i8* %34, align 1
  br label %11

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %35
  %41 = tail call i32* @__errno_location() #1
  %42 = load i32, i32* %41, align 4
  br label %43

; <label>:43:                                     ; preds = %35, %40
  %44 = phi i32 [ %42, %40 ], [ 0, %35 ]
  %45 = add i64 %12, 1
  %46 = call i8* @xrealloc(i8* %13, i64 %45) #13
  %47 = getelementptr inbounds i8, i8* %46, i64 %12
  store i8 %4, i8* %47, align 1
  %48 = icmp eq i64 %12, 0
  br i1 %48, label %54, label %49

; <label>:49:                                     ; preds = %43
  %50 = add i64 %12, -1
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, %4
  br label %54

; <label>:54:                                     ; preds = %49, %43
  %55 = phi i1 [ false, %43 ], [ %53, %49 ]
  %56 = zext i1 %55 to i64
  %57 = getelementptr inbounds i8, i8* %47, i64 %56
  %58 = call noalias i8* @xmalloc(i64 16) #13
  %59 = getelementptr inbounds i8, i8* %58, i64 8
  %60 = bitcast i8* %59 to i8**
  store i8* %46, i8** %60, align 8
  %61 = getelementptr inbounds %struct.exclude, %struct.exclude* %1, i64 0, i32 1
  %62 = bitcast %struct.pattern_buffer** %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = bitcast i8* %58 to i64*
  store i64 %63, i64* %64, align 8
  %65 = bitcast %struct.pattern_buffer** %61 to i8**
  store i8* %58, i8** %65, align 8
  %66 = icmp ult i8* %46, %57
  br i1 %66, label %67, label %108

; <label>:67:                                     ; preds = %54
  %68 = zext i8 %4 to i64
  %69 = add i64 %12, %56
  %70 = getelementptr i8, i8* %46, i64 %69
  br label %71

; <label>:71:                                     ; preds = %103, %67
  %72 = phi i8* [ %46, %67 ], [ %104, %103 ]
  %73 = phi i8* [ %46, %67 ], [ %105, %103 ]
  %74 = load i8, i8* %72, align 1
  %75 = icmp eq i8 %74, %4
  br i1 %75, label %78, label %76

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds i8, i8* %72, i64 1
  br label %103

; <label>:78:                                     ; preds = %71
  %79 = tail call i16** @__ctype_b_loc() #1
  %80 = load i16*, i16** %79, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 %68
  %82 = load i16, i16* %81, align 2
  %83 = and i16 %82, 8192
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %98, label %85

; <label>:85:                                     ; preds = %78
  br label %86

; <label>:86:                                     ; preds = %85, %89
  %87 = phi i8* [ %90, %89 ], [ %72, %85 ]
  %88 = icmp eq i8* %87, %73
  br i1 %88, label %100, label %89

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds i8, i8* %87, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i16, i16* %80, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = and i16 %94, 8192
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %86

; <label>:97:                                     ; preds = %89
  br label %98

; <label>:98:                                     ; preds = %97, %78
  %99 = phi i8* [ %72, %78 ], [ %87, %97 ]
  store i8 0, i8* %99, align 1
  call void %0(%struct.exclude* %1, i8* %73, i32 %3, i8* %5) #13
  br label %101

; <label>:100:                                    ; preds = %86
  br label %101

; <label>:101:                                    ; preds = %100, %98
  %102 = getelementptr inbounds i8, i8* %72, i64 1
  br label %103

; <label>:103:                                    ; preds = %76, %101
  %104 = phi i8* [ %77, %76 ], [ %102, %101 ]
  %105 = phi i8* [ %73, %76 ], [ %102, %101 ]
  %106 = icmp eq i8* %104, %70
  br i1 %106, label %107, label %71

; <label>:107:                                    ; preds = %103
  br label %108

; <label>:108:                                    ; preds = %107, %54
  %109 = tail call i32* @__errno_location() #1
  store i32 %44, i32* %109, align 4
  %110 = icmp ne i32 %44, 0
  %111 = sext i1 %110 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #13
  ret i32 %111
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @add_exclude_file(void (%struct.exclude*, i8*, i32)*, %struct.exclude*, i8* nocapture readonly, i32, i8 signext) local_unnamed_addr #6 {
  %6 = alloca void (%struct.exclude*, i8*, i32)*, align 8
  store void (%struct.exclude*, i8*, i32)* %0, void (%struct.exclude*, i8*, i32)** %6, align 8
  %7 = load i8, i8* %2, align 1
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds i8, i8* %2, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %15 = bitcast void (%struct.exclude*, i8*, i32)** %6 to i8*
  %16 = call i32 @add_exclude_fp(void (%struct.exclude*, i8*, i32, i8*)* nonnull @call_addfn, %struct.exclude* %1, %struct._IO_FILE* %14, i32 %3, i8 signext %4, i8* nonnull %15)
  br label %26

; <label>:17:                                     ; preds = %5, %9
  %18 = tail call %struct._IO_FILE* @fopen(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.135, i64 0, i64 0))
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %26, label %20

; <label>:20:                                     ; preds = %17
  %21 = bitcast void (%struct.exclude*, i8*, i32)** %6 to i8*
  %22 = call i32 @add_exclude_fp(void (%struct.exclude*, i8*, i32, i8*)* nonnull @call_addfn, %struct.exclude* %1, %struct._IO_FILE* nonnull %18, i32 %3, i8 signext %4, i8* nonnull %21)
  %23 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #13
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %22, i32 -1
  ret i32 %25

; <label>:26:                                     ; preds = %13, %17
  %27 = phi i32 [ -1, %17 ], [ %16, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @call_addfn(%struct.exclude*, i8*, i32, i8* nocapture readonly) #6 {
  %5 = bitcast i8* %3 to void (%struct.exclude*, i8*, i32)**
  %6 = load void (%struct.exclude*, i8*, i32)*, void (%struct.exclude*, i8*, i32)** %5, align 8
  tail call void %6(%struct.exclude* %0, i8* %1, i32 %2) #13
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @fprintftime(%struct._IO_FILE*, i8*, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #6 {
  %6 = tail call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %1, %struct.tm* %2, i1 zeroext false, %struct.tm_zone* %3, i32 %4)
  ret i64 %6
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(%struct._IO_FILE*, i8*, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #6 {
  %7 = alloca [23 x i8], align 16
  %8 = alloca [5 x i8], align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca %struct.tm, align 8
  %11 = zext i1 %3 to i8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 10
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = select i1 %16, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.140, i64 0, i64 0)
  %18 = icmp sgt i32 %13, 12
  %19 = add nsw i32 %13, -12
  %20 = icmp eq i32 %13, 0
  %21 = select i1 %20, i32 12, i32 %13
  %22 = select i1 %18, i32 %19, i32 %21
  %23 = load i8, i8* %1, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %1198, label %25

; <label>:25:                                     ; preds = %6
  %26 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 0
  %27 = icmp eq %struct._IO_FILE* %0, null
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  %35 = getelementptr inbounds [23 x i8], [23 x i8]* %7, i64 0, i64 23
  %36 = ptrtoint i8* %35 to i64
  %37 = icmp ne %struct._IO_FILE* %0, null
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 7
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  %43 = bitcast %struct.tm* %10 to i8*
  %44 = bitcast %struct.tm* %2 to i8*
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 6
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 9
  br label %48

; <label>:48:                                     ; preds = %25, %1188
  %49 = phi i8 [ %23, %25 ], [ %1194, %1188 ]
  %50 = phi i64 [ 0, %25 ], [ %1189, %1188 ]
  %51 = phi i8* [ %1, %25 ], [ %1193, %1188 ]
  %52 = phi i32 [ undef, %25 ], [ %1191, %1188 ]
  %53 = phi i32 [ undef, %25 ], [ %1192, %1188 ]
  call void @llvm.lifetime.start(i64 23, i8* nonnull %26) #13
  %54 = icmp eq i8 %49, 37
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %48
  br label %82

; <label>:56:                                     ; preds = %48
  %57 = icmp ugt i64 %50, -3
  br i1 %57, label %64, label %58

; <label>:58:                                     ; preds = %56
  br i1 %27, label %62, label %59

; <label>:59:                                     ; preds = %58
  %60 = sext i8 %49 to i32
  %61 = call i32 @fputc(i32 %60, %struct._IO_FILE* nonnull %0)
  br label %62

; <label>:62:                                     ; preds = %58, %59
  %63 = add i64 %50, 1
  br label %64

; <label>:64:                                     ; preds = %56, %62
  %65 = phi i32 [ 0, %62 ], [ 1, %56 ]
  %66 = phi i64 [ %63, %62 ], [ %50, %56 ]
  %67 = icmp eq i32 %65, 0
  %68 = select i1 %67, i32 4, i32 %65
  br label %1182

; <label>:69:                                     ; preds = %75, %77
  %70 = phi i32 [ %79, %77 ], [ %74, %75 ]
  %71 = phi i8* [ %80, %77 ], [ %72, %75 ]
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %87 [
    i32 95, label %75
    i32 45, label %75
    i32 48, label %75
    i32 94, label %76
    i32 35, label %81
  ]

; <label>:75:                                     ; preds = %69, %69, %69
  br label %69

; <label>:76:                                     ; preds = %69
  br label %77

; <label>:77:                                     ; preds = %76, %82
  %78 = phi i8 [ %84, %82 ], [ 1, %76 ]
  %79 = phi i32 [ %85, %82 ], [ %70, %76 ]
  %80 = phi i8* [ %86, %82 ], [ %72, %76 ]
  br label %69

; <label>:81:                                     ; preds = %69
  br label %82

; <label>:82:                                     ; preds = %55, %81
  %83 = phi i8 [ 1, %81 ], [ 0, %55 ]
  %84 = phi i8 [ %78, %81 ], [ %11, %55 ]
  %85 = phi i32 [ %70, %81 ], [ 0, %55 ]
  %86 = phi i8* [ %72, %81 ], [ %51, %55 ]
  br label %77

; <label>:87:                                     ; preds = %69
  %88 = add nsw i32 %74, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %114

; <label>:90:                                     ; preds = %87
  br label %91

; <label>:91:                                     ; preds = %90, %106
  %92 = phi i8 [ %109, %106 ], [ %73, %90 ]
  %93 = phi i32 [ %107, %106 ], [ 0, %90 ]
  %94 = phi i8* [ %108, %106 ], [ %72, %90 ]
  %95 = icmp sgt i32 %93, 214748364
  br i1 %95, label %106, label %96

; <label>:96:                                     ; preds = %91
  %97 = icmp eq i32 %93, 214748364
  %98 = sext i8 %92 to i32
  %99 = add nsw i32 %98, -48
  %100 = icmp sgt i32 %99, 7
  %101 = and i1 %97, %100
  br i1 %101, label %106, label %102

; <label>:102:                                    ; preds = %96
  %103 = mul nsw i32 %93, 10
  %104 = add i32 %103, -48
  %105 = add i32 %104, %98
  br label %106

; <label>:106:                                    ; preds = %96, %91, %102
  %107 = phi i32 [ %105, %102 ], [ 2147483647, %91 ], [ 2147483647, %96 ]
  %108 = getelementptr inbounds i8, i8* %94, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = add nsw i32 %110, -48
  %112 = icmp ult i32 %111, 10
  br i1 %112, label %91, label %113

; <label>:113:                                    ; preds = %106
  br label %114

; <label>:114:                                    ; preds = %113, %87
  %115 = phi i8 [ %73, %87 ], [ %109, %113 ]
  %116 = phi i32 [ -1, %87 ], [ %107, %113 ]
  %117 = phi i8* [ %72, %87 ], [ %108, %113 ]
  %118 = sext i8 %115 to i32
  switch i32 %118, label %122 [
    i32 69, label %119
    i32 79, label %119
  ]

; <label>:119:                                    ; preds = %114, %114
  %120 = getelementptr inbounds i8, i8* %117, i64 1
  %121 = load i8, i8* %120, align 1
  br label %122

; <label>:122:                                    ; preds = %114, %119
  %123 = phi i8 [ %121, %119 ], [ %115, %114 ]
  %124 = phi i32 [ %118, %119 ], [ 0, %114 ]
  %125 = phi i8* [ %120, %119 ], [ %117, %114 ]
  %126 = sext i8 %123 to i32
  switch i32 %126, label %1104 [
    i32 37, label %128
    i32 97, label %168
    i32 65, label %173
    i32 98, label %178
    i32 104, label %178
    i32 66, label %182
    i32 99, label %187
    i32 67, label %327
    i32 120, label %341
    i32 68, label %343
    i32 100, label %345
    i32 101, label %349
    i32 70, label %679
    i32 72, label %681
    i32 73, label %685
    i32 107, label %687
    i32 108, label %691
    i32 106, label %693
    i32 77, label %700
    i32 109, label %704
    i32 78, label %711
    i32 110, label %744
    i32 80, label %780
    i32 112, label %781
    i32 113, label %786
    i32 82, label %189
    i32 114, label %227
    i32 83, label %791
    i32 115, label %795
    i32 88, label %814
    i32 84, label %816
    i32 116, label %817
    i32 117, label %853
    i32 85, label %858
    i32 86, label %866
    i32 103, label %866
    i32 71, label %866
    i32 87, label %946
    i32 119, label %956
    i32 89, label %960
    i32 121, label %967
    i32 90, label %978
    i32 58, label %127
    i32 122, label %1059
    i32 0, label %1101
  ]

; <label>:127:                                    ; preds = %122
  br label %1052

; <label>:128:                                    ; preds = %122
  %129 = icmp eq i32 %124, 0
  br i1 %129, label %130, label %1104

; <label>:130:                                    ; preds = %128
  %131 = icmp sgt i32 %116, 0
  %132 = select i1 %131, i32 %116, i32 0
  %133 = icmp ugt i32 %132, 1
  %134 = icmp ugt i32 %132, 1
  %135 = select i1 %134, i32 %132, i32 1
  %136 = zext i32 %135 to i64
  %137 = xor i64 %50, -1
  %138 = icmp ult i64 %136, %137
  br i1 %138, label %139, label %1175

; <label>:139:                                    ; preds = %130
  br i1 %27, label %166, label %140

; <label>:140:                                    ; preds = %139
  br i1 %133, label %141, label %162

; <label>:141:                                    ; preds = %140
  %142 = sext i32 %116 to i64
  %143 = add nsw i64 %142, -1
  %144 = icmp eq i32 %70, 48
  %145 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %146

; <label>:146:                                    ; preds = %141
  br i1 %145, label %147, label %162

; <label>:147:                                    ; preds = %146
  br label %155

; <label>:148:                                    ; preds = %141
  br i1 %145, label %149, label %162

; <label>:149:                                    ; preds = %148
  br label %150

; <label>:150:                                    ; preds = %149, %150
  %151 = phi i64 [ %153, %150 ], [ 0, %149 ]
  %152 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %153 = add nuw i64 %151, 1
  %154 = icmp eq i64 %153, %143
  br i1 %154, label %160, label %150

; <label>:155:                                    ; preds = %147, %155
  %156 = phi i64 [ %158, %155 ], [ 0, %147 ]
  %157 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %158 = add nuw i64 %156, 1
  %159 = icmp eq i64 %158, %143
  br i1 %159, label %161, label %155

; <label>:160:                                    ; preds = %150
  br label %162

; <label>:161:                                    ; preds = %155
  br label %162

; <label>:162:                                    ; preds = %161, %160, %146, %148, %140
  %163 = load i8, i8* %125, align 1
  %164 = sext i8 %163 to i32
  %165 = call i32 @fputc(i32 %164, %struct._IO_FILE* %0)
  br label %166

; <label>:166:                                    ; preds = %162, %139
  %167 = add i64 %136, %50
  br label %1177

; <label>:168:                                    ; preds = %122
  %169 = icmp eq i32 %124, 0
  br i1 %169, label %170, label %1104

; <label>:170:                                    ; preds = %168
  %171 = icmp eq i8 %83, 0
  %172 = select i1 %171, i8 %78, i8 1
  br label %227

; <label>:173:                                    ; preds = %122
  %174 = icmp eq i32 %124, 0
  br i1 %174, label %175, label %1104

; <label>:175:                                    ; preds = %173
  %176 = icmp eq i8 %83, 0
  %177 = select i1 %176, i8 %78, i8 1
  br label %227

; <label>:178:                                    ; preds = %122, %122
  %179 = icmp eq i8 %83, 0
  %180 = select i1 %179, i8 %78, i8 1
  %181 = icmp eq i32 %124, 0
  br i1 %181, label %227, label %1104

; <label>:182:                                    ; preds = %122
  %183 = icmp eq i32 %124, 0
  br i1 %183, label %184, label %1104

; <label>:184:                                    ; preds = %182
  %185 = icmp eq i8 %83, 0
  %186 = select i1 %185, i8 %78, i8 1
  br label %227

; <label>:187:                                    ; preds = %122
  %188 = icmp eq i32 %124, 79
  br i1 %188, label %1104, label %227

; <label>:189:                                    ; preds = %122, %679, %343, %816
  %190 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.141, i64 0, i64 0), %816 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.142, i64 0, i64 0), %343 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.143, i64 0, i64 0), %679 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.144, i64 0, i64 0), %122 ]
  %191 = icmp ne i8 %78, 0
  %192 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* null, i8* nonnull %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  %193 = icmp sgt i32 %116, 0
  %194 = select i1 %193, i32 %116, i32 0
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  %197 = select i1 %196, i64 %195, i64 %192
  %198 = xor i64 %50, -1
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %1175

; <label>:200:                                    ; preds = %189
  br i1 %27, label %225, label %201

; <label>:201:                                    ; preds = %200
  br i1 %196, label %202, label %223

; <label>:202:                                    ; preds = %201
  %203 = sext i32 %116 to i64
  %204 = sub i64 %203, %192
  %205 = icmp eq i32 %70, 48
  %206 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %207

; <label>:207:                                    ; preds = %202
  br i1 %206, label %208, label %223

; <label>:208:                                    ; preds = %207
  br label %216

; <label>:209:                                    ; preds = %202
  br i1 %206, label %210, label %223

; <label>:210:                                    ; preds = %209
  br label %211

; <label>:211:                                    ; preds = %210, %211
  %212 = phi i64 [ %214, %211 ], [ 0, %210 ]
  %213 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %214 = add nuw i64 %212, 1
  %215 = icmp eq i64 %214, %204
  br i1 %215, label %221, label %211

; <label>:216:                                    ; preds = %208, %216
  %217 = phi i64 [ %219, %216 ], [ 0, %208 ]
  %218 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %219 = add nuw i64 %217, 1
  %220 = icmp eq i64 %219, %204
  br i1 %220, label %222, label %216

; <label>:221:                                    ; preds = %211
  br label %223

; <label>:222:                                    ; preds = %216
  br label %223

; <label>:223:                                    ; preds = %222, %221, %207, %209, %201
  %224 = call fastcc i64 @__strftime_internal(%struct._IO_FILE* %0, i8* %190, %struct.tm* %2, i1 zeroext %191, %struct.tm_zone* %4, i32 %5)
  br label %225

; <label>:225:                                    ; preds = %223, %200
  %226 = add i64 %197, %50
  br label %1177

; <label>:227:                                    ; preds = %781, %184, %175, %170, %960, %366, %178, %967, %814, %122, %341, %327, %187
  %228 = phi i8 [ 121, %967 ], [ 89, %960 ], [ 88, %814 ], [ 114, %122 ], [ 120, %341 ], [ 67, %327 ], [ 99, %187 ], [ %123, %178 ], [ 97, %170 ], [ 65, %175 ], [ 66, %184 ], [ %123, %366 ], [ 112, %781 ]
  %229 = phi i8 [ %78, %967 ], [ %78, %960 ], [ %78, %814 ], [ %78, %122 ], [ %78, %341 ], [ %78, %327 ], [ %78, %187 ], [ %180, %178 ], [ %172, %170 ], [ %177, %175 ], [ %186, %184 ], [ %78, %366 ], [ %784, %781 ]
  %230 = phi i8 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ 0, %366 ], [ %785, %781 ]
  %231 = phi i32 [ %116, %967 ], [ %116, %960 ], [ %116, %814 ], [ %116, %122 ], [ %116, %341 ], [ %116, %327 ], [ %116, %187 ], [ %116, %178 ], [ %116, %170 ], [ %116, %175 ], [ %116, %184 ], [ %367, %366 ], [ %116, %781 ]
  %232 = phi i32 [ %53, %967 ], [ %53, %960 ], [ %53, %814 ], [ %53, %122 ], [ %53, %341 ], [ %53, %327 ], [ %53, %187 ], [ %53, %178 ], [ %53, %170 ], [ %53, %175 ], [ %53, %184 ], [ %368, %366 ], [ %53, %781 ]
  %233 = phi i32 [ %52, %967 ], [ %52, %960 ], [ %52, %814 ], [ %52, %122 ], [ %52, %341 ], [ %52, %327 ], [ %52, %187 ], [ %52, %178 ], [ %52, %170 ], [ %52, %175 ], [ %52, %184 ], [ %371, %366 ], [ %52, %781 ]
  %234 = phi i32 [ 0, %967 ], [ 0, %960 ], [ 0, %814 ], [ 0, %122 ], [ 0, %341 ], [ 0, %327 ], [ 0, %187 ], [ 0, %178 ], [ 0, %170 ], [ 0, %175 ], [ 0, %184 ], [ %372, %366 ], [ 0, %781 ]
  %235 = phi i32 [ %70, %967 ], [ %70, %960 ], [ %70, %814 ], [ %70, %122 ], [ %70, %341 ], [ %70, %327 ], [ %70, %187 ], [ %70, %178 ], [ %70, %170 ], [ %70, %175 ], [ %70, %184 ], [ %373, %366 ], [ %70, %781 ]
  %236 = phi i8* [ %125, %967 ], [ %125, %960 ], [ %125, %814 ], [ %125, %122 ], [ %125, %341 ], [ %125, %327 ], [ %125, %187 ], [ %125, %178 ], [ %125, %170 ], [ %125, %175 ], [ %125, %184 ], [ %374, %366 ], [ %125, %781 ]
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #13
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #13
  store i8 32, i8* %28, align 1
  store i8 37, i8* %30, align 1
  %237 = icmp eq i32 %124, 0
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %227
  %239 = trunc i32 %124 to i8
  store i8 %239, i8* %31, align 1
  br label %240

; <label>:240:                                    ; preds = %227, %238
  %241 = phi i8* [ %33, %238 ], [ %31, %227 ]
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %228, i8* %241, align 1
  store i8 0, i8* %242, align 1
  %243 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %2) #13
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %324, label %245

; <label>:245:                                    ; preds = %240
  %246 = add i64 %243, -1
  %247 = icmp sgt i32 %231, 0
  %248 = select i1 %247, i32 %231, i32 0
  %249 = zext i32 %248 to i64
  %250 = icmp ult i64 %246, %249
  %251 = select i1 %250, i64 %249, i64 %246
  %252 = xor i64 %50, -1
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %326

; <label>:254:                                    ; preds = %245
  br i1 %27, label %322, label %255

; <label>:255:                                    ; preds = %254
  %256 = icmp ne i32 %234, 0
  %257 = xor i1 %250, true
  %258 = or i1 %256, %257
  br i1 %258, label %280, label %259

; <label>:259:                                    ; preds = %255
  %260 = sext i32 %231 to i64
  %261 = sub i64 %260, %246
  %262 = icmp eq i32 %235, 48
  %263 = icmp ne i64 %261, 0
  br i1 %262, label %266, label %264

; <label>:264:                                    ; preds = %259
  br i1 %263, label %265, label %280

; <label>:265:                                    ; preds = %264
  br label %273

; <label>:266:                                    ; preds = %259
  br i1 %263, label %267, label %280

; <label>:267:                                    ; preds = %266
  br label %268

; <label>:268:                                    ; preds = %267, %268
  %269 = phi i64 [ %271, %268 ], [ 0, %267 ]
  %270 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %271 = add nuw i64 %269, 1
  %272 = icmp eq i64 %271, %261
  br i1 %272, label %278, label %268

; <label>:273:                                    ; preds = %265, %273
  %274 = phi i64 [ %276, %273 ], [ 0, %265 ]
  %275 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %276 = add nuw i64 %274, 1
  %277 = icmp eq i64 %276, %261
  br i1 %277, label %279, label %273

; <label>:278:                                    ; preds = %268
  br label %280

; <label>:279:                                    ; preds = %273
  br label %280

; <label>:280:                                    ; preds = %279, %278, %264, %266, %255
  %281 = and i8 %230, 1
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %299, label %283

; <label>:283:                                    ; preds = %280
  %284 = icmp eq i64 %246, 0
  br i1 %284, label %322, label %285

; <label>:285:                                    ; preds = %283
  br label %286

; <label>:286:                                    ; preds = %285, %286
  %287 = phi i8* [ %297, %286 ], [ %32, %285 ]
  %288 = phi i64 [ %289, %286 ], [ %246, %285 ]
  %289 = add i64 %288, -1
  %290 = tail call i32** @__ctype_tolower_loc() #1
  %291 = load i32*, i32** %290, align 8
  %292 = load i8, i8* %287, align 1
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @fputc(i32 %295, %struct._IO_FILE* %0) #13
  %297 = getelementptr inbounds i8, i8* %287, i64 1
  %298 = icmp eq i64 %289, 0
  br i1 %298, label %321, label %286

; <label>:299:                                    ; preds = %280
  %300 = and i8 %229, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %318, label %302

; <label>:302:                                    ; preds = %299
  %303 = icmp eq i64 %246, 0
  br i1 %303, label %322, label %304

; <label>:304:                                    ; preds = %302
  br label %305

; <label>:305:                                    ; preds = %304, %305
  %306 = phi i8* [ %316, %305 ], [ %32, %304 ]
  %307 = phi i64 [ %308, %305 ], [ %246, %304 ]
  %308 = add i64 %307, -1
  %309 = tail call i32** @__ctype_toupper_loc() #1
  %310 = load i32*, i32** %309, align 8
  %311 = load i8, i8* %306, align 1
  %312 = zext i8 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @fputc(i32 %314, %struct._IO_FILE* %0) #13
  %316 = getelementptr inbounds i8, i8* %306, i64 1
  %317 = icmp eq i64 %308, 0
  br i1 %317, label %320, label %305

; <label>:318:                                    ; preds = %299
  %319 = call i64 @fwrite(i8* %32, i64 %246, i64 1, %struct._IO_FILE* nonnull %0)
  br label %322

; <label>:320:                                    ; preds = %305
  br label %322

; <label>:321:                                    ; preds = %286
  br label %322

; <label>:322:                                    ; preds = %321, %320, %318, %254, %283, %302
  %323 = add i64 %251, %50
  br label %324

; <label>:324:                                    ; preds = %322, %240
  %325 = phi i64 [ %323, %322 ], [ %50, %240 ]
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #13
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #13
  br label %1177

; <label>:326:                                    ; preds = %245
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #13
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #13
  br label %1176

; <label>:327:                                    ; preds = %122
  %328 = icmp eq i32 %124, 69
  br i1 %328, label %227, label %329

; <label>:329:                                    ; preds = %327
  %330 = load i32, i32* %34, align 4
  %331 = sdiv i32 %330, 100
  %332 = add nsw i32 %331, 19
  %333 = srem i32 %330, 100
  %334 = icmp slt i32 %333, 0
  %335 = icmp sgt i32 %330, -1900
  %336 = and i1 %335, %334
  %337 = sext i1 %336 to i32
  %338 = add nsw i32 %332, %337
  %339 = icmp slt i32 %330, -1900
  %340 = zext i1 %339 to i8
  br label %366

; <label>:341:                                    ; preds = %122
  %342 = icmp eq i32 %124, 79
  br i1 %342, label %1104, label %227

; <label>:343:                                    ; preds = %122
  %344 = icmp eq i32 %124, 0
  br i1 %344, label %189, label %1104

; <label>:345:                                    ; preds = %122
  %346 = icmp eq i32 %124, 69
  br i1 %346, label %1104, label %347

; <label>:347:                                    ; preds = %345
  %348 = load i32, i32* %38, align 4
  br label %359

; <label>:349:                                    ; preds = %122
  %350 = icmp eq i32 %124, 69
  br i1 %350, label %1104, label %351

; <label>:351:                                    ; preds = %349
  %352 = load i32, i32* %38, align 4
  br label %353

; <label>:353:                                    ; preds = %691, %689, %351
  %354 = phi i32 [ %690, %689 ], [ %352, %351 ], [ %22, %691 ]
  switch i32 %70, label %355 [
    i32 48, label %359
    i32 45, label %359
  ]

; <label>:355:                                    ; preds = %353
  br label %359

; <label>:356:                                    ; preds = %738
  br label %357

; <label>:357:                                    ; preds = %732, %356
  %358 = phi i32 [ %733, %732 ], [ %741, %356 ]
  br label %359

; <label>:359:                                    ; preds = %357, %715, %931, %926, %937, %973, %969, %713, %685, %353, %353, %355, %958, %948, %860, %853, %793, %702, %683, %347
  %360 = phi i32 [ %116, %958 ], [ %116, %948 ], [ %116, %860 ], [ %116, %853 ], [ %116, %793 ], [ %116, %702 ], [ %116, %355 ], [ %116, %353 ], [ %116, %683 ], [ %116, %347 ], [ %116, %353 ], [ %116, %685 ], [ 9, %713 ], [ %116, %969 ], [ %116, %973 ], [ %116, %937 ], [ %116, %926 ], [ %116, %931 ], [ %116, %715 ], [ %116, %357 ]
  %361 = phi i32 [ %959, %958 ], [ %955, %948 ], [ %865, %860 ], [ %857, %853 ], [ %794, %793 ], [ %703, %702 ], [ %354, %355 ], [ %354, %353 ], [ %684, %683 ], [ %348, %347 ], [ %354, %353 ], [ %22, %685 ], [ %5, %713 ], [ %971, %969 ], [ %977, %973 ], [ %939, %937 ], [ %929, %926 ], [ %936, %931 ], [ %5, %715 ], [ %358, %357 ]
  %362 = phi i32 [ 1, %958 ], [ 2, %948 ], [ 2, %860 ], [ 1, %853 ], [ 2, %793 ], [ 2, %702 ], [ 2, %355 ], [ 2, %353 ], [ 2, %683 ], [ 2, %347 ], [ 2, %353 ], [ 2, %685 ], [ 9, %713 ], [ 2, %969 ], [ 2, %973 ], [ 2, %937 ], [ 2, %926 ], [ 2, %931 ], [ %116, %715 ], [ %116, %357 ]
  %363 = phi i32 [ %70, %958 ], [ %70, %948 ], [ %70, %860 ], [ %70, %853 ], [ %70, %793 ], [ %70, %702 ], [ 95, %355 ], [ %70, %353 ], [ %70, %683 ], [ %70, %347 ], [ %70, %353 ], [ %70, %685 ], [ %70, %713 ], [ %70, %969 ], [ %70, %973 ], [ %70, %937 ], [ %70, %926 ], [ %70, %931 ], [ %70, %715 ], [ %70, %357 ]
  %364 = lshr i32 %361, 31
  %365 = trunc i32 %364 to i8
  br label %366

; <label>:366:                                    ; preds = %940, %359, %695, %706, %786, %329, %1095
  %367 = phi i32 [ %116, %1095 ], [ %360, %359 ], [ %116, %940 ], [ %116, %786 ], [ %116, %706 ], [ %116, %695 ], [ %116, %329 ]
  %368 = phi i32 [ %1097, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %369 = phi i8 [ 1, %1095 ], [ 0, %359 ], [ 0, %940 ], [ 0, %786 ], [ 0, %706 ], [ 0, %695 ], [ 0, %329 ]
  %370 = phi i8 [ %1075, %1095 ], [ %365, %359 ], [ %943, %940 ], [ 0, %786 ], [ %709, %706 ], [ %698, %695 ], [ %340, %329 ]
  %371 = phi i32 [ %1098, %1095 ], [ %361, %359 ], [ %945, %940 ], [ %790, %786 ], [ %710, %706 ], [ %699, %695 ], [ %338, %329 ]
  %372 = phi i32 [ %1099, %1095 ], [ %362, %359 ], [ 4, %940 ], [ 1, %786 ], [ 2, %706 ], [ 3, %695 ], [ 2, %329 ]
  %373 = phi i32 [ %70, %1095 ], [ %363, %359 ], [ %70, %940 ], [ %70, %786 ], [ %70, %706 ], [ %70, %695 ], [ %70, %329 ]
  %374 = phi i8* [ %1061, %1095 ], [ %125, %359 ], [ %125, %940 ], [ %125, %786 ], [ %125, %706 ], [ %125, %695 ], [ %125, %329 ]
  %375 = icmp eq i32 %124, 79
  %376 = and i8 %370, 1
  %377 = icmp eq i8 %376, 0
  %378 = and i1 %375, %377
  br i1 %378, label %227, label %379

; <label>:379:                                    ; preds = %961, %366
  %380 = phi i1 [ %966, %961 ], [ %377, %366 ]
  %381 = phi i8* [ %125, %961 ], [ %374, %366 ]
  %382 = phi i32 [ %70, %961 ], [ %373, %366 ]
  %383 = phi i32 [ 4, %961 ], [ %372, %366 ]
  %384 = phi i32 [ %965, %961 ], [ %371, %366 ]
  %385 = phi i8 [ %964, %961 ], [ %370, %366 ]
  %386 = phi i8 [ 0, %961 ], [ %369, %366 ]
  %387 = phi i32 [ 0, %961 ], [ %368, %366 ]
  %388 = phi i32 [ %116, %961 ], [ %367, %366 ]
  %389 = sub i32 0, %384
  %390 = select i1 %380, i32 %384, i32 %389
  br label %391

; <label>:391:                                    ; preds = %379, %399
  %392 = phi i8* [ %405, %399 ], [ %35, %379 ]
  %393 = phi i32 [ %401, %399 ], [ %387, %379 ]
  %394 = phi i32 [ %406, %399 ], [ %390, %379 ]
  %395 = and i32 %393, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %399, label %397

; <label>:397:                                    ; preds = %391
  %398 = getelementptr inbounds i8, i8* %392, i64 -1
  store i8 58, i8* %398, align 1
  br label %399

; <label>:399:                                    ; preds = %391, %397
  %400 = phi i8* [ %398, %397 ], [ %392, %391 ]
  %401 = ashr i32 %393, 1
  %402 = urem i32 %394, 10
  %403 = trunc i32 %402 to i8
  %404 = or i8 %403, 48
  %405 = getelementptr inbounds i8, i8* %400, i64 -1
  store i8 %404, i8* %405, align 1
  %406 = udiv i32 %394, 10
  %407 = icmp ugt i32 %394, 9
  %408 = icmp ne i32 %401, 0
  %409 = or i1 %407, %408
  br i1 %409, label %391, label %410

; <label>:410:                                    ; preds = %399
  br label %411

; <label>:411:                                    ; preds = %410, %812
  %412 = phi i32 [ %116, %812 ], [ %388, %410 ]
  %413 = phi i8* [ %809, %812 ], [ %405, %410 ]
  %414 = phi i32 [ %53, %812 ], [ 0, %410 ]
  %415 = phi i8 [ 0, %812 ], [ %386, %410 ]
  %416 = phi i8 [ %813, %812 ], [ %385, %410 ]
  %417 = phi i32 [ %52, %812 ], [ %406, %410 ]
  %418 = phi i32 [ 1, %812 ], [ %383, %410 ]
  %419 = phi i32 [ %70, %812 ], [ %382, %410 ]
  %420 = phi i8* [ %125, %812 ], [ %381, %410 ]
  %421 = icmp slt i32 %418, %412
  %422 = select i1 %421, i32 %412, i32 %418
  %423 = and i8 %416, 1
  %424 = icmp ne i8 %423, 0
  %425 = and i8 %415, 1
  %426 = icmp ne i8 %425, 0
  %427 = select i1 %426, i8 43, i8 0
  %428 = select i1 %424, i8 45, i8 %427
  %429 = icmp eq i32 %419, 45
  br i1 %429, label %430, label %461

; <label>:430:                                    ; preds = %411
  %431 = icmp eq i8 %428, 0
  br i1 %431, label %618, label %432

; <label>:432:                                    ; preds = %430
  %433 = icmp sgt i32 %412, 0
  %434 = select i1 %433, i32 %412, i32 0
  %435 = icmp ugt i32 %434, 1
  %436 = select i1 %435, i32 %434, i32 1
  %437 = zext i32 %436 to i64
  %438 = xor i64 %50, -1
  %439 = icmp ult i64 %437, %438
  br i1 %439, label %440, label %1175

; <label>:440:                                    ; preds = %432
  br i1 %27, label %459, label %441

; <label>:441:                                    ; preds = %440
  %442 = icmp ne i32 %422, 0
  %443 = icmp ult i32 %434, 2
  %444 = or i1 %443, %442
  br i1 %444, label %456, label %445

; <label>:445:                                    ; preds = %441
  %446 = sext i32 %412 to i64
  %447 = add nsw i64 %446, -1
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %456, label %449

; <label>:449:                                    ; preds = %445
  br label %450

; <label>:450:                                    ; preds = %449, %450
  %451 = phi i64 [ %453, %450 ], [ 0, %449 ]
  %452 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %453 = add nuw i64 %451, 1
  %454 = icmp eq i64 %453, %447
  br i1 %454, label %455, label %450

; <label>:455:                                    ; preds = %450
  br label %456

; <label>:456:                                    ; preds = %455, %445, %441
  %457 = zext i8 %428 to i32
  %458 = call i32 @fputc(i32 %457, %struct._IO_FILE* nonnull %0)
  br label %459

; <label>:459:                                    ; preds = %456, %440
  %460 = add i64 %437, %50
  br label %618

; <label>:461:                                    ; preds = %411
  %462 = sext i32 %422 to i64
  %463 = ptrtoint i8* %413 to i64
  %464 = sub i64 %463, %36
  %465 = icmp ne i8 %428, 0
  %466 = sext i1 %465 to i64
  %467 = add i64 %464, %466
  %468 = add i64 %467, %462
  %469 = trunc i64 %468 to i32
  %470 = icmp sgt i32 %469, 0
  br i1 %470, label %471, label %578

; <label>:471:                                    ; preds = %461
  %472 = icmp eq i32 %419, 95
  br i1 %472, label %473, label %520

; <label>:473:                                    ; preds = %471
  %474 = shl i64 %468, 32
  %475 = ashr exact i64 %474, 32
  %476 = xor i64 %50, -1
  %477 = icmp ult i64 %475, %476
  br i1 %477, label %478, label %1175

; <label>:478:                                    ; preds = %473
  %479 = icmp ne i64 %475, 0
  %480 = and i1 %37, %479
  br i1 %480, label %481, label %488

; <label>:481:                                    ; preds = %478
  br label %482

; <label>:482:                                    ; preds = %481, %482
  %483 = phi i64 [ %485, %482 ], [ 0, %481 ]
  %484 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %485 = add nuw i64 %483, 1
  %486 = icmp ult i64 %485, %475
  br i1 %486, label %482, label %487

; <label>:487:                                    ; preds = %482
  br label %488

; <label>:488:                                    ; preds = %487, %478
  %489 = add i64 %475, %50
  %490 = icmp sgt i32 %412, %469
  %491 = sub nsw i32 %412, %469
  %492 = select i1 %490, i32 %491, i32 0
  br i1 %465, label %493, label %618

; <label>:493:                                    ; preds = %488
  %494 = icmp ugt i32 %492, 1
  %495 = select i1 %494, i32 %492, i32 1
  %496 = zext i32 %495 to i64
  %497 = xor i64 %489, -1
  %498 = icmp ult i64 %496, %497
  br i1 %498, label %499, label %1175

; <label>:499:                                    ; preds = %493
  br i1 %37, label %500, label %518

; <label>:500:                                    ; preds = %499
  %501 = icmp ne i32 %422, 0
  %502 = icmp ult i32 %492, 2
  %503 = or i1 %501, %502
  br i1 %503, label %515, label %504

; <label>:504:                                    ; preds = %500
  %505 = zext i32 %492 to i64
  %506 = add nsw i64 %505, -1
  %507 = icmp eq i64 %506, 0
  br i1 %507, label %515, label %508

; <label>:508:                                    ; preds = %504
  br label %509

; <label>:509:                                    ; preds = %508, %509
  %510 = phi i64 [ %512, %509 ], [ 0, %508 ]
  %511 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %512 = add nuw i64 %510, 1
  %513 = icmp ult i64 %512, %506
  br i1 %513, label %509, label %514

; <label>:514:                                    ; preds = %509
  br label %515

; <label>:515:                                    ; preds = %514, %504, %500
  %516 = zext i8 %428 to i32
  %517 = call i32 @fputc(i32 %516, %struct._IO_FILE* nonnull %0)
  br label %518

; <label>:518:                                    ; preds = %499, %515
  %519 = add i64 %496, %489
  br label %618

; <label>:520:                                    ; preds = %471
  %521 = xor i64 %50, -1
  %522 = icmp ult i64 %462, %521
  br i1 %522, label %523, label %1175

; <label>:523:                                    ; preds = %520
  br i1 %465, label %524, label %562

; <label>:524:                                    ; preds = %523
  %525 = icmp sgt i32 %412, 0
  %526 = select i1 %525, i32 %412, i32 0
  %527 = icmp ugt i32 %526, 1
  %528 = select i1 %527, i32 %526, i32 1
  %529 = zext i32 %528 to i64
  %530 = icmp ult i64 %529, %521
  br i1 %530, label %531, label %1175

; <label>:531:                                    ; preds = %524
  br i1 %27, label %560, label %532

; <label>:532:                                    ; preds = %531
  %533 = icmp ne i32 %422, 0
  %534 = icmp ult i32 %526, 2
  %535 = or i1 %534, %533
  br i1 %535, label %557, label %536

; <label>:536:                                    ; preds = %532
  %537 = sext i32 %412 to i64
  %538 = add nsw i64 %537, -1
  %539 = icmp eq i32 %419, 48
  %540 = icmp ne i64 %538, 0
  br i1 %539, label %543, label %541

; <label>:541:                                    ; preds = %536
  br i1 %540, label %542, label %557

; <label>:542:                                    ; preds = %541
  br label %550

; <label>:543:                                    ; preds = %536
  br i1 %540, label %544, label %557

; <label>:544:                                    ; preds = %543
  br label %545

; <label>:545:                                    ; preds = %544, %545
  %546 = phi i64 [ %548, %545 ], [ 0, %544 ]
  %547 = call i32 @fputc(i32 48, %struct._IO_FILE* nonnull %0)
  %548 = add nuw i64 %546, 1
  %549 = icmp eq i64 %548, %538
  br i1 %549, label %555, label %545

; <label>:550:                                    ; preds = %542, %550
  %551 = phi i64 [ %553, %550 ], [ 0, %542 ]
  %552 = call i32 @fputc(i32 32, %struct._IO_FILE* nonnull %0)
  %553 = add nuw i64 %551, 1
  %554 = icmp eq i64 %553, %538
  br i1 %554, label %556, label %550

; <label>:555:                                    ; preds = %545
  br label %557

; <label>:556:                                    ; preds = %550
  br label %557

; <label>:557:                                    ; preds = %556, %555, %541, %543, %532
  %558 = zext i8 %428 to i32
  %559 = call i32 @fputc(i32 %558, %struct._IO_FILE* nonnull %0)
  br label %560

; <label>:560:                                    ; preds = %557, %531
  %561 = add i64 %529, %50
  br label %562

; <label>:562:                                    ; preds = %560, %523
  %563 = phi i64 [ %50, %523 ], [ %561, %560 ]
  %564 = shl i64 %468, 32
  %565 = ashr exact i64 %564, 32
  br i1 %27, label %575, label %566

; <label>:566:                                    ; preds = %562
  %567 = icmp eq i64 %565, 0
  br i1 %567, label %575, label %568

; <label>:568:                                    ; preds = %566
  br label %569

; <label>:569:                                    ; preds = %568, %569
  %570 = phi i64 [ %572, %569 ], [ 0, %568 ]
  %571 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %572 = add nuw i64 %570, 1
  %573 = icmp ult i64 %572, %565
  br i1 %573, label %569, label %574

; <label>:574:                                    ; preds = %569
  br label %575

; <label>:575:                                    ; preds = %574, %562, %566
  %576 = phi i64 [ 0, %566 ], [ %565, %562 ], [ %565, %574 ]
  %577 = add i64 %563, %576
  br label %618

; <label>:578:                                    ; preds = %461
  br i1 %465, label %579, label %618

; <label>:579:                                    ; preds = %578
  %580 = icmp sgt i32 %412, 0
  %581 = select i1 %580, i32 %412, i32 0
  %582 = icmp ugt i32 %581, 1
  %583 = select i1 %582, i32 %581, i32 1
  %584 = zext i32 %583 to i64
  %585 = xor i64 %50, -1
  %586 = icmp ult i64 %584, %585
  br i1 %586, label %587, label %1175

; <label>:587:                                    ; preds = %579
  br i1 %27, label %616, label %588

; <label>:588:                                    ; preds = %587
  %589 = icmp ne i32 %422, 0
  %590 = icmp ult i32 %581, 2
  %591 = or i1 %590, %589
  br i1 %591, label %613, label %592

; <label>:592:                                    ; preds = %588
  %593 = sext i32 %412 to i64
  %594 = add nsw i64 %593, -1
  %595 = icmp eq i32 %419, 48
  %596 = icmp ne i64 %594, 0
  br i1 %595, label %599, label %597

; <label>:597:                                    ; preds = %592
  br i1 %596, label %598, label %613

; <label>:598:                                    ; preds = %597
  br label %606

; <label>:599:                                    ; preds = %592
  br i1 %596, label %600, label %613

; <label>:600:                                    ; preds = %599
  br label %601

; <label>:601:                                    ; preds = %600, %601
  %602 = phi i64 [ %604, %601 ], [ 0, %600 ]
  %603 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %604 = add nuw i64 %602, 1
  %605 = icmp eq i64 %604, %594
  br i1 %605, label %611, label %601

; <label>:606:                                    ; preds = %598, %606
  %607 = phi i64 [ %609, %606 ], [ 0, %598 ]
  %608 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %609 = add nuw i64 %607, 1
  %610 = icmp eq i64 %609, %594
  br i1 %610, label %612, label %606

; <label>:611:                                    ; preds = %601
  br label %613

; <label>:612:                                    ; preds = %606
  br label %613

; <label>:613:                                    ; preds = %612, %611, %597, %599, %588
  %614 = zext i8 %428 to i32
  %615 = call i32 @fputc(i32 %614, %struct._IO_FILE* %0)
  br label %616

; <label>:616:                                    ; preds = %613, %587
  %617 = add i64 %584, %50
  br label %618

; <label>:618:                                    ; preds = %488, %575, %578, %518, %616, %459, %430
  %619 = phi i32 [ %412, %430 ], [ %412, %459 ], [ %412, %616 ], [ %492, %518 ], [ %412, %578 ], [ 0, %575 ], [ %492, %488 ]
  %620 = phi i64 [ %50, %430 ], [ %460, %459 ], [ %617, %616 ], [ %519, %518 ], [ %50, %578 ], [ %577, %575 ], [ %489, %488 ]
  %621 = ptrtoint i8* %413 to i64
  %622 = sub i64 %36, %621
  %623 = icmp sgt i32 %619, 0
  %624 = select i1 %623, i32 %619, i32 0
  %625 = zext i32 %624 to i64
  %626 = icmp ult i64 %622, %625
  %627 = select i1 %626, i64 %625, i64 %622
  %628 = xor i64 %620, -1
  %629 = icmp ult i64 %627, %628
  br i1 %629, label %630, label %1175

; <label>:630:                                    ; preds = %618
  br i1 %27, label %677, label %631

; <label>:631:                                    ; preds = %630
  %632 = icmp ne i32 %422, 0
  %633 = xor i1 %626, true
  %634 = or i1 %632, %633
  br i1 %634, label %656, label %635

; <label>:635:                                    ; preds = %631
  %636 = sext i32 %619 to i64
  %637 = sub i64 %636, %622
  %638 = icmp eq i32 %419, 48
  %639 = icmp ne i64 %637, 0
  br i1 %638, label %642, label %640

; <label>:640:                                    ; preds = %635
  br i1 %639, label %641, label %656

; <label>:641:                                    ; preds = %640
  br label %649

; <label>:642:                                    ; preds = %635
  br i1 %639, label %643, label %656

; <label>:643:                                    ; preds = %642
  br label %644

; <label>:644:                                    ; preds = %643, %644
  %645 = phi i64 [ %647, %644 ], [ 0, %643 ]
  %646 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %647 = add nuw i64 %645, 1
  %648 = icmp eq i64 %647, %637
  br i1 %648, label %654, label %644

; <label>:649:                                    ; preds = %641, %649
  %650 = phi i64 [ %652, %649 ], [ 0, %641 ]
  %651 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %652 = add nuw i64 %650, 1
  %653 = icmp eq i64 %652, %637
  br i1 %653, label %655, label %649

; <label>:654:                                    ; preds = %644
  br label %656

; <label>:655:                                    ; preds = %649
  br label %656

; <label>:656:                                    ; preds = %655, %654, %640, %642, %631
  %657 = icmp eq i8 %78, 0
  br i1 %657, label %674, label %658

; <label>:658:                                    ; preds = %656
  %659 = icmp eq i64 %622, 0
  br i1 %659, label %677, label %660

; <label>:660:                                    ; preds = %658
  br label %661

; <label>:661:                                    ; preds = %660, %661
  %662 = phi i8* [ %672, %661 ], [ %413, %660 ]
  %663 = phi i64 [ %664, %661 ], [ %622, %660 ]
  %664 = add i64 %663, -1
  %665 = tail call i32** @__ctype_toupper_loc() #1
  %666 = load i32*, i32** %665, align 8
  %667 = load i8, i8* %662, align 1
  %668 = zext i8 %667 to i64
  %669 = getelementptr inbounds i32, i32* %666, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = call i32 @fputc(i32 %670, %struct._IO_FILE* %0) #13
  %672 = getelementptr inbounds i8, i8* %662, i64 1
  %673 = icmp eq i64 %664, 0
  br i1 %673, label %676, label %661

; <label>:674:                                    ; preds = %656
  %675 = call i64 @fwrite(i8* %413, i64 %622, i64 1, %struct._IO_FILE* %0)
  br label %677

; <label>:676:                                    ; preds = %661
  br label %677

; <label>:677:                                    ; preds = %676, %674, %630, %658
  %678 = add i64 %627, %620
  br label %1177

; <label>:679:                                    ; preds = %122
  %680 = icmp eq i32 %124, 0
  br i1 %680, label %189, label %1104

; <label>:681:                                    ; preds = %122
  %682 = icmp eq i32 %124, 69
  br i1 %682, label %1104, label %683

; <label>:683:                                    ; preds = %681
  %684 = load i32, i32* %12, align 8
  br label %359

; <label>:685:                                    ; preds = %122
  %686 = icmp eq i32 %124, 69
  br i1 %686, label %1104, label %359

; <label>:687:                                    ; preds = %122
  %688 = icmp eq i32 %124, 69
  br i1 %688, label %1104, label %689

; <label>:689:                                    ; preds = %687
  %690 = load i32, i32* %12, align 8
  br label %353

; <label>:691:                                    ; preds = %122
  %692 = icmp eq i32 %124, 69
  br i1 %692, label %1104, label %353

; <label>:693:                                    ; preds = %122
  %694 = icmp eq i32 %124, 69
  br i1 %694, label %1104, label %695

; <label>:695:                                    ; preds = %693
  %696 = load i32, i32* %39, align 4
  %697 = icmp slt i32 %696, -1
  %698 = zext i1 %697 to i8
  %699 = add i32 %696, 1
  br label %366

; <label>:700:                                    ; preds = %122
  %701 = icmp eq i32 %124, 69
  br i1 %701, label %1104, label %702

; <label>:702:                                    ; preds = %700
  %703 = load i32, i32* %40, align 4
  br label %359

; <label>:704:                                    ; preds = %122
  %705 = icmp eq i32 %124, 69
  br i1 %705, label %1104, label %706

; <label>:706:                                    ; preds = %704
  %707 = load i32, i32* %41, align 8
  %708 = icmp slt i32 %707, -1
  %709 = zext i1 %708 to i8
  %710 = add i32 %707, 1
  br label %366

; <label>:711:                                    ; preds = %122
  %712 = icmp eq i32 %124, 69
  br i1 %712, label %1104, label %713

; <label>:713:                                    ; preds = %711
  %714 = icmp eq i32 %116, -1
  br i1 %714, label %359, label %715

; <label>:715:                                    ; preds = %713
  %716 = icmp slt i32 %116, 9
  br i1 %716, label %717, label %359

; <label>:717:                                    ; preds = %715
  %718 = sub i32 9, %116
  %719 = sub i32 8, %116
  %720 = and i32 %718, 3
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %732, label %722

; <label>:722:                                    ; preds = %717
  br label %723

; <label>:723:                                    ; preds = %723, %722
  %724 = phi i32 [ %727, %723 ], [ %5, %722 ]
  %725 = phi i32 [ %728, %723 ], [ %116, %722 ]
  %726 = phi i32 [ %729, %723 ], [ %720, %722 ]
  %727 = sdiv i32 %724, 10
  %728 = add nsw i32 %725, 1
  %729 = add i32 %726, -1
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %723

; <label>:731:                                    ; preds = %723
  br label %732

; <label>:732:                                    ; preds = %717, %731
  %733 = phi i32 [ undef, %717 ], [ %727, %731 ]
  %734 = phi i32 [ %5, %717 ], [ %727, %731 ]
  %735 = phi i32 [ %116, %717 ], [ %728, %731 ]
  %736 = icmp ult i32 %719, 3
  br i1 %736, label %357, label %737

; <label>:737:                                    ; preds = %732
  br label %738

; <label>:738:                                    ; preds = %738, %737
  %739 = phi i32 [ %734, %737 ], [ %741, %738 ]
  %740 = phi i32 [ %735, %737 ], [ %742, %738 ]
  %741 = sdiv i32 %739, 10000
  %742 = add nsw i32 %740, 4
  %743 = icmp eq i32 %742, 9
  br i1 %743, label %356, label %738

; <label>:744:                                    ; preds = %122
  %745 = icmp sgt i32 %116, 0
  %746 = select i1 %745, i32 %116, i32 0
  %747 = icmp ugt i32 %746, 1
  %748 = icmp ugt i32 %746, 1
  %749 = select i1 %748, i32 %746, i32 1
  %750 = zext i32 %749 to i64
  %751 = xor i64 %50, -1
  %752 = icmp ult i64 %750, %751
  br i1 %752, label %753, label %1175

; <label>:753:                                    ; preds = %744
  br i1 %27, label %778, label %754

; <label>:754:                                    ; preds = %753
  br i1 %747, label %755, label %776

; <label>:755:                                    ; preds = %754
  %756 = sext i32 %116 to i64
  %757 = add nsw i64 %756, -1
  %758 = icmp eq i32 %70, 48
  %759 = icmp ne i64 %757, 0
  br i1 %758, label %762, label %760

; <label>:760:                                    ; preds = %755
  br i1 %759, label %761, label %776

; <label>:761:                                    ; preds = %760
  br label %769

; <label>:762:                                    ; preds = %755
  br i1 %759, label %763, label %776

; <label>:763:                                    ; preds = %762
  br label %764

; <label>:764:                                    ; preds = %763, %764
  %765 = phi i64 [ %767, %764 ], [ 0, %763 ]
  %766 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %767 = add nuw i64 %765, 1
  %768 = icmp eq i64 %767, %757
  br i1 %768, label %774, label %764

; <label>:769:                                    ; preds = %761, %769
  %770 = phi i64 [ %772, %769 ], [ 0, %761 ]
  %771 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %772 = add nuw i64 %770, 1
  %773 = icmp eq i64 %772, %757
  br i1 %773, label %775, label %769

; <label>:774:                                    ; preds = %764
  br label %776

; <label>:775:                                    ; preds = %769
  br label %776

; <label>:776:                                    ; preds = %775, %774, %760, %762, %754
  %777 = call i32 @fputc(i32 10, %struct._IO_FILE* %0)
  br label %778

; <label>:778:                                    ; preds = %776, %753
  %779 = add i64 %750, %50
  br label %1177

; <label>:780:                                    ; preds = %122
  br label %781

; <label>:781:                                    ; preds = %122, %780
  %782 = phi i8 [ 0, %122 ], [ 1, %780 ]
  %783 = icmp eq i8 %83, 0
  %784 = select i1 %783, i8 %78, i8 0
  %785 = select i1 %783, i8 %782, i8 1
  br label %227

; <label>:786:                                    ; preds = %122
  %787 = load i32, i32* %41, align 8
  %788 = mul nsw i32 %787, 11
  %789 = ashr i32 %788, 5
  %790 = add nsw i32 %789, 1
  br label %366

; <label>:791:                                    ; preds = %122
  %792 = icmp eq i32 %124, 69
  br i1 %792, label %1104, label %793

; <label>:793:                                    ; preds = %791
  %794 = load i32, i32* %42, align 8
  br label %359

; <label>:795:                                    ; preds = %122
  call void @llvm.lifetime.start(i64 56, i8* nonnull %43) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %43, i8* %44, i64 56, i32 8, i1 false)
  %796 = call i64 @mktime_z(%struct.tm_zone* %4, %struct.tm* nonnull %10) #13
  %797 = icmp slt i64 %796, 0
  %798 = lshr i64 %796, 63
  br label %799

; <label>:799:                                    ; preds = %799, %795
  %800 = phi i64 [ %796, %795 ], [ %804, %799 ]
  %801 = phi i8* [ %35, %795 ], [ %809, %799 ]
  %802 = srem i64 %800, 10
  %803 = trunc i64 %802 to i32
  %804 = sdiv i64 %800, 10
  %805 = sub nsw i32 0, %803
  %806 = select i1 %797, i32 %805, i32 %803
  %807 = add nsw i32 %806, 48
  %808 = trunc i32 %807 to i8
  %809 = getelementptr inbounds i8, i8* %801, i64 -1
  store i8 %808, i8* %809, align 1
  %810 = add i64 %800, 9
  %811 = icmp ugt i64 %810, 18
  br i1 %811, label %799, label %812

; <label>:812:                                    ; preds = %799
  %813 = trunc i64 %798 to i8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %43) #13
  br label %411

; <label>:814:                                    ; preds = %122
  %815 = icmp eq i32 %124, 79
  br i1 %815, label %1104, label %227

; <label>:816:                                    ; preds = %122
  br label %189

; <label>:817:                                    ; preds = %122
  %818 = icmp sgt i32 %116, 0
  %819 = select i1 %818, i32 %116, i32 0
  %820 = icmp ugt i32 %819, 1
  %821 = icmp ugt i32 %819, 1
  %822 = select i1 %821, i32 %819, i32 1
  %823 = zext i32 %822 to i64
  %824 = xor i64 %50, -1
  %825 = icmp ult i64 %823, %824
  br i1 %825, label %826, label %1175

; <label>:826:                                    ; preds = %817
  br i1 %27, label %851, label %827

; <label>:827:                                    ; preds = %826
  br i1 %820, label %828, label %849

; <label>:828:                                    ; preds = %827
  %829 = sext i32 %116 to i64
  %830 = add nsw i64 %829, -1
  %831 = icmp eq i32 %70, 48
  %832 = icmp ne i64 %830, 0
  br i1 %831, label %835, label %833

; <label>:833:                                    ; preds = %828
  br i1 %832, label %834, label %849

; <label>:834:                                    ; preds = %833
  br label %842

; <label>:835:                                    ; preds = %828
  br i1 %832, label %836, label %849

; <label>:836:                                    ; preds = %835
  br label %837

; <label>:837:                                    ; preds = %836, %837
  %838 = phi i64 [ %840, %837 ], [ 0, %836 ]
  %839 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %840 = add nuw i64 %838, 1
  %841 = icmp eq i64 %840, %830
  br i1 %841, label %847, label %837

; <label>:842:                                    ; preds = %834, %842
  %843 = phi i64 [ %845, %842 ], [ 0, %834 ]
  %844 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %845 = add nuw i64 %843, 1
  %846 = icmp eq i64 %845, %830
  br i1 %846, label %848, label %842

; <label>:847:                                    ; preds = %837
  br label %849

; <label>:848:                                    ; preds = %842
  br label %849

; <label>:849:                                    ; preds = %848, %847, %833, %835, %827
  %850 = call i32 @fputc(i32 9, %struct._IO_FILE* %0)
  br label %851

; <label>:851:                                    ; preds = %849, %826
  %852 = add i64 %823, %50
  br label %1177

; <label>:853:                                    ; preds = %122
  %854 = load i32, i32* %45, align 8
  %855 = add nsw i32 %854, 6
  %856 = srem i32 %855, 7
  %857 = add nsw i32 %856, 1
  br label %359

; <label>:858:                                    ; preds = %122
  %859 = icmp eq i32 %124, 69
  br i1 %859, label %1104, label %860

; <label>:860:                                    ; preds = %858
  %861 = load i32, i32* %39, align 4
  %862 = load i32, i32* %45, align 8
  %863 = add i32 %861, 7
  %864 = sub i32 %863, %862
  %865 = sdiv i32 %864, 7
  br label %359

; <label>:866:                                    ; preds = %122, %122, %122
  %867 = icmp eq i32 %124, 69
  br i1 %867, label %1104, label %868

; <label>:868:                                    ; preds = %866
  %869 = load i32, i32* %34, align 4
  %870 = ashr i32 %869, 31
  %871 = and i32 %870, 400
  %872 = add i32 %869, -100
  %873 = add i32 %872, %871
  %874 = load i32, i32* %39, align 4
  %875 = load i32, i32* %45, align 8
  %876 = add i32 %874, 382
  %877 = sub i32 %876, %875
  %878 = srem i32 %877, 7
  %879 = add i32 %874, 3
  %880 = sub i32 %879, %878
  %881 = icmp slt i32 %880, 0
  br i1 %881, label %882, label %901

; <label>:882:                                    ; preds = %868
  %883 = add nsw i32 %873, -1
  %884 = and i32 %883, 3
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %893

; <label>:886:                                    ; preds = %882
  %887 = srem i32 %883, 100
  %888 = icmp ne i32 %887, 0
  %889 = srem i32 %883, 400
  %890 = icmp eq i32 %889, 0
  %891 = or i1 %888, %890
  %892 = select i1 %891, i32 366, i32 365
  br label %893

; <label>:893:                                    ; preds = %886, %882
  %894 = phi i32 [ 365, %882 ], [ %892, %886 ]
  %895 = add nsw i32 %894, %874
  %896 = add i32 %895, 382
  %897 = sub i32 %896, %875
  %898 = srem i32 %897, 7
  %899 = add i32 %895, 3
  %900 = sub i32 %899, %898
  br label %923

; <label>:901:                                    ; preds = %868
  %902 = and i32 %873, 3
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %911

; <label>:904:                                    ; preds = %901
  %905 = srem i32 %873, 100
  %906 = icmp ne i32 %905, 0
  %907 = srem i32 %873, 400
  %908 = icmp eq i32 %907, 0
  %909 = or i1 %906, %908
  %910 = select i1 %909, i32 366, i32 365
  br label %911

; <label>:911:                                    ; preds = %904, %901
  %912 = phi i32 [ 365, %901 ], [ %910, %904 ]
  %913 = sub nsw i32 %874, %912
  %914 = add i32 %913, 382
  %915 = sub i32 %914, %875
  %916 = srem i32 %915, 7
  %917 = add i32 %913, 3
  %918 = sub i32 %917, %916
  %919 = icmp sgt i32 %918, -1
  %920 = lshr i32 %918, 31
  %921 = xor i32 %920, 1
  %922 = select i1 %919, i32 %918, i32 %880
  br label %923

; <label>:923:                                    ; preds = %911, %893
  %924 = phi i32 [ -1, %893 ], [ %921, %911 ]
  %925 = phi i32 [ %900, %893 ], [ %922, %911 ]
  switch i32 %126, label %937 [
    i32 103, label %926
    i32 71, label %940
  ]

; <label>:926:                                    ; preds = %923
  %927 = srem i32 %869, 100
  %928 = add nsw i32 %927, %924
  %929 = srem i32 %928, 100
  %930 = icmp sgt i32 %929, -1
  br i1 %930, label %359, label %931

; <label>:931:                                    ; preds = %926
  %932 = sub nsw i32 -1900, %924
  %933 = icmp slt i32 %869, %932
  %934 = sub nsw i32 0, %929
  %935 = add nsw i32 %929, 100
  %936 = select i1 %933, i32 %934, i32 %935
  br label %359

; <label>:937:                                    ; preds = %923
  %938 = sdiv i32 %925, 7
  %939 = add nsw i32 %938, 1
  br label %359

; <label>:940:                                    ; preds = %923
  %941 = sub nsw i32 -1900, %924
  %942 = icmp slt i32 %869, %941
  %943 = zext i1 %942 to i8
  %944 = add nsw i32 %924, 1900
  %945 = add i32 %944, %869
  br label %366

; <label>:946:                                    ; preds = %122
  %947 = icmp eq i32 %124, 69
  br i1 %947, label %1104, label %948

; <label>:948:                                    ; preds = %946
  %949 = load i32, i32* %39, align 4
  %950 = load i32, i32* %45, align 8
  %951 = add nsw i32 %950, 6
  %952 = srem i32 %951, 7
  %953 = add i32 %949, 7
  %954 = sub i32 %953, %952
  %955 = sdiv i32 %954, 7
  br label %359

; <label>:956:                                    ; preds = %122
  %957 = icmp eq i32 %124, 69
  br i1 %957, label %1104, label %958

; <label>:958:                                    ; preds = %956
  %959 = load i32, i32* %45, align 8
  br label %359

; <label>:960:                                    ; preds = %122
  switch i32 %124, label %961 [
    i32 69, label %227
    i32 79, label %1104
  ]

; <label>:961:                                    ; preds = %960
  %962 = load i32, i32* %34, align 4
  %963 = icmp slt i32 %962, -1900
  %964 = zext i1 %963 to i8
  %965 = add i32 %962, 1900
  %966 = xor i1 %963, true
  br label %379

; <label>:967:                                    ; preds = %122
  %968 = icmp eq i32 %124, 69
  br i1 %968, label %227, label %969

; <label>:969:                                    ; preds = %967
  %970 = load i32, i32* %34, align 4
  %971 = srem i32 %970, 100
  %972 = icmp slt i32 %971, 0
  br i1 %972, label %973, label %359

; <label>:973:                                    ; preds = %969
  %974 = icmp slt i32 %970, -1900
  %975 = sub nsw i32 0, %971
  %976 = add nsw i32 %971, 100
  %977 = select i1 %974, i32 %975, i32 %976
  br label %359

; <label>:978:                                    ; preds = %122
  %979 = icmp eq i8 %83, 0
  %980 = call i64 @strlen(i8* %17) #15
  %981 = icmp sgt i32 %116, 0
  %982 = select i1 %981, i32 %116, i32 0
  %983 = zext i32 %982 to i64
  %984 = icmp ult i64 %980, %983
  %985 = select i1 %984, i64 %983, i64 %980
  %986 = xor i64 %50, -1
  %987 = icmp ult i64 %985, %986
  br i1 %987, label %988, label %1175

; <label>:988:                                    ; preds = %978
  br i1 %27, label %1050, label %989

; <label>:989:                                    ; preds = %988
  br i1 %984, label %990, label %1011

; <label>:990:                                    ; preds = %989
  %991 = sext i32 %116 to i64
  %992 = sub i64 %991, %980
  %993 = icmp eq i32 %70, 48
  %994 = icmp ne i64 %992, 0
  br i1 %993, label %997, label %995

; <label>:995:                                    ; preds = %990
  br i1 %994, label %996, label %1011

; <label>:996:                                    ; preds = %995
  br label %1004

; <label>:997:                                    ; preds = %990
  br i1 %994, label %998, label %1011

; <label>:998:                                    ; preds = %997
  br label %999

; <label>:999:                                    ; preds = %998, %999
  %1000 = phi i64 [ %1002, %999 ], [ 0, %998 ]
  %1001 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1002 = add nuw i64 %1000, 1
  %1003 = icmp eq i64 %1002, %992
  br i1 %1003, label %1009, label %999

; <label>:1004:                                   ; preds = %996, %1004
  %1005 = phi i64 [ %1007, %1004 ], [ 0, %996 ]
  %1006 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1007 = add nuw i64 %1005, 1
  %1008 = icmp eq i64 %1007, %992
  br i1 %1008, label %1010, label %1004

; <label>:1009:                                   ; preds = %999
  br label %1011

; <label>:1010:                                   ; preds = %1004
  br label %1011

; <label>:1011:                                   ; preds = %1010, %1009, %995, %997, %989
  br i1 %979, label %1028, label %1012

; <label>:1012:                                   ; preds = %1011
  %1013 = icmp eq i64 %980, 0
  br i1 %1013, label %1050, label %1014

; <label>:1014:                                   ; preds = %1012
  br label %1015

; <label>:1015:                                   ; preds = %1014, %1015
  %1016 = phi i8* [ %1026, %1015 ], [ %17, %1014 ]
  %1017 = phi i64 [ %1018, %1015 ], [ %980, %1014 ]
  %1018 = add i64 %1017, -1
  %1019 = tail call i32** @__ctype_tolower_loc() #1
  %1020 = load i32*, i32** %1019, align 8
  %1021 = load i8, i8* %1016, align 1
  %1022 = zext i8 %1021 to i64
  %1023 = getelementptr inbounds i32, i32* %1020, i64 %1022
  %1024 = load i32, i32* %1023, align 4
  %1025 = call i32 @fputc(i32 %1024, %struct._IO_FILE* %0) #13
  %1026 = getelementptr inbounds i8, i8* %1016, i64 1
  %1027 = icmp eq i64 %1018, 0
  br i1 %1027, label %1049, label %1015

; <label>:1028:                                   ; preds = %1011
  %1029 = icmp eq i8 %78, 0
  br i1 %1029, label %1046, label %1030

; <label>:1030:                                   ; preds = %1028
  %1031 = icmp eq i64 %980, 0
  br i1 %1031, label %1050, label %1032

; <label>:1032:                                   ; preds = %1030
  br label %1033

; <label>:1033:                                   ; preds = %1032, %1033
  %1034 = phi i8* [ %1044, %1033 ], [ %17, %1032 ]
  %1035 = phi i64 [ %1036, %1033 ], [ %980, %1032 ]
  %1036 = add i64 %1035, -1
  %1037 = tail call i32** @__ctype_toupper_loc() #1
  %1038 = load i32*, i32** %1037, align 8
  %1039 = load i8, i8* %1034, align 1
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds i32, i32* %1038, i64 %1040
  %1042 = load i32, i32* %1041, align 4
  %1043 = call i32 @fputc(i32 %1042, %struct._IO_FILE* %0) #13
  %1044 = getelementptr inbounds i8, i8* %1034, i64 1
  %1045 = icmp eq i64 %1036, 0
  br i1 %1045, label %1048, label %1033

; <label>:1046:                                   ; preds = %1028
  %1047 = call i64 @fwrite(i8* %17, i64 %980, i64 1, %struct._IO_FILE* %0)
  br label %1050

; <label>:1048:                                   ; preds = %1033
  br label %1050

; <label>:1049:                                   ; preds = %1015
  br label %1050

; <label>:1050:                                   ; preds = %1049, %1048, %1046, %988, %1012, %1030
  %1051 = add i64 %985, %50
  br label %1177

; <label>:1052:                                   ; preds = %127, %1056
  %1053 = phi i64 [ %1057, %1056 ], [ 1, %127 ]
  %1054 = getelementptr inbounds i8, i8* %125, i64 %1053
  %1055 = load i8, i8* %1054, align 1
  switch i8 %1055, label %1103 [
    i8 58, label %1056
    i8 122, label %1058
  ]

; <label>:1056:                                   ; preds = %1052
  %1057 = add i64 %1053, 1
  br label %1052

; <label>:1058:                                   ; preds = %1052
  br label %1059

; <label>:1059:                                   ; preds = %1058, %122
  %1060 = phi i64 [ 0, %122 ], [ %1053, %1058 ]
  %1061 = phi i8* [ %125, %122 ], [ %1054, %1058 ]
  %1062 = load i32, i32* %46, align 8
  %1063 = icmp slt i32 %1062, 0
  br i1 %1063, label %1177, label %1064

; <label>:1064:                                   ; preds = %1059
  %1065 = load i64, i64* %47, align 8
  %1066 = trunc i64 %1065 to i32
  %1067 = icmp slt i32 %1066, 0
  br i1 %1067, label %1073, label %1068

; <label>:1068:                                   ; preds = %1064
  %1069 = icmp eq i32 %1066, 0
  br i1 %1069, label %1070, label %1073

; <label>:1070:                                   ; preds = %1068
  %1071 = load i8, i8* %17, align 1
  %1072 = icmp eq i8 %1071, 45
  br label %1073

; <label>:1073:                                   ; preds = %1068, %1070, %1064
  %1074 = phi i1 [ true, %1064 ], [ false, %1068 ], [ %1072, %1070 ]
  %1075 = zext i1 %1074 to i8
  %1076 = sdiv i32 %1066, 60
  %1077 = sdiv i32 %1066, 3600
  %1078 = srem i32 %1076, 60
  %1079 = srem i32 %1066, 60
  switch i64 %1060, label %1095 [
    i64 0, label %1080
    i64 1, label %1083
    i64 2, label %1086
    i64 3, label %1091
  ]

; <label>:1080:                                   ; preds = %1073
  %1081 = mul nsw i32 %1077, 100
  %1082 = add nsw i32 %1081, %1078
  br label %1095

; <label>:1083:                                   ; preds = %1093, %1073
  %1084 = mul nsw i32 %1077, 100
  %1085 = add nsw i32 %1084, %1078
  br label %1095

; <label>:1086:                                   ; preds = %1091, %1073
  %1087 = mul nsw i32 %1077, 10000
  %1088 = mul nsw i32 %1078, 100
  %1089 = add i32 %1087, %1079
  %1090 = add i32 %1089, %1088
  br label %1095

; <label>:1091:                                   ; preds = %1073
  %1092 = icmp eq i32 %1079, 0
  br i1 %1092, label %1093, label %1086

; <label>:1093:                                   ; preds = %1091
  %1094 = icmp eq i32 %1078, 0
  br i1 %1094, label %1095, label %1083

; <label>:1095:                                   ; preds = %1073, %1093, %1086, %1083, %1080
  %1096 = phi i32 [ 74, %1086 ], [ 74, %1083 ], [ 74, %1080 ], [ 74, %1093 ], [ 24, %1073 ]
  %1097 = phi i32 [ 20, %1086 ], [ 4, %1083 ], [ 0, %1080 ], [ 0, %1093 ], [ %53, %1073 ]
  %1098 = phi i32 [ %1090, %1086 ], [ %1085, %1083 ], [ %1082, %1080 ], [ %1077, %1093 ], [ %52, %1073 ]
  %1099 = phi i32 [ 9, %1086 ], [ 6, %1083 ], [ 5, %1080 ], [ 3, %1093 ], [ 0, %1073 ]
  %1100 = trunc i32 %1096 to i7
  switch i7 %1100, label %1182 [
    i7 -54, label %366
    i7 24, label %1104
  ]

; <label>:1101:                                   ; preds = %122
  %1102 = getelementptr inbounds i8, i8* %125, i64 -1
  br label %1104

; <label>:1103:                                   ; preds = %1052
  br label %1104

; <label>:1104:                                   ; preds = %1103, %960, %128, %168, %173, %178, %182, %343, %679, %1101, %122, %956, %946, %866, %858, %814, %791, %711, %704, %700, %693, %691, %687, %685, %681, %349, %345, %341, %187, %1095
  %1105 = phi i8 [ %78, %122 ], [ %78, %1101 ], [ %78, %1095 ], [ %78, %956 ], [ %78, %946 ], [ %78, %866 ], [ %78, %858 ], [ %78, %814 ], [ %78, %791 ], [ %78, %711 ], [ %78, %704 ], [ %78, %700 ], [ %78, %693 ], [ %78, %691 ], [ %78, %687 ], [ %78, %685 ], [ %78, %681 ], [ %78, %679 ], [ %78, %349 ], [ %78, %345 ], [ %78, %343 ], [ %78, %341 ], [ %78, %187 ], [ %78, %182 ], [ %180, %178 ], [ %78, %173 ], [ %78, %168 ], [ %78, %128 ], [ %78, %960 ], [ %78, %1103 ]
  %1106 = phi i32 [ %53, %122 ], [ %53, %1101 ], [ %1097, %1095 ], [ %53, %956 ], [ %53, %946 ], [ %53, %866 ], [ %53, %858 ], [ %53, %814 ], [ %53, %791 ], [ %53, %711 ], [ %53, %704 ], [ %53, %700 ], [ %53, %693 ], [ %53, %691 ], [ %53, %687 ], [ %53, %685 ], [ %53, %681 ], [ %53, %679 ], [ %53, %349 ], [ %53, %345 ], [ %53, %343 ], [ %53, %341 ], [ %53, %187 ], [ %53, %182 ], [ %53, %178 ], [ %53, %173 ], [ %53, %168 ], [ %53, %128 ], [ %53, %960 ], [ %53, %1103 ]
  %1107 = phi i32 [ %52, %122 ], [ %52, %1101 ], [ %1098, %1095 ], [ %52, %956 ], [ %52, %946 ], [ %52, %866 ], [ %52, %858 ], [ %52, %814 ], [ %52, %791 ], [ %52, %711 ], [ %52, %704 ], [ %52, %700 ], [ %52, %693 ], [ %52, %691 ], [ %52, %687 ], [ %52, %685 ], [ %52, %681 ], [ %52, %679 ], [ %52, %349 ], [ %52, %345 ], [ %52, %343 ], [ %52, %341 ], [ %52, %187 ], [ %52, %182 ], [ %52, %178 ], [ %52, %173 ], [ %52, %168 ], [ %52, %128 ], [ %52, %960 ], [ %52, %1103 ]
  %1108 = phi i32 [ 0, %122 ], [ 0, %1101 ], [ %1099, %1095 ], [ 0, %956 ], [ 0, %946 ], [ 0, %866 ], [ 0, %858 ], [ 0, %814 ], [ 0, %791 ], [ 0, %711 ], [ 0, %704 ], [ 0, %700 ], [ 0, %693 ], [ 0, %691 ], [ 0, %687 ], [ 0, %685 ], [ 0, %681 ], [ 0, %679 ], [ 0, %349 ], [ 0, %345 ], [ 0, %343 ], [ 0, %341 ], [ 0, %187 ], [ 0, %182 ], [ 0, %178 ], [ 0, %173 ], [ 0, %168 ], [ 0, %128 ], [ 0, %960 ], [ 0, %1103 ]
  %1109 = phi i8* [ %125, %122 ], [ %1102, %1101 ], [ %1061, %1095 ], [ %125, %956 ], [ %125, %946 ], [ %125, %866 ], [ %125, %858 ], [ %125, %814 ], [ %125, %791 ], [ %125, %711 ], [ %125, %704 ], [ %125, %700 ], [ %125, %693 ], [ %125, %691 ], [ %125, %687 ], [ %125, %685 ], [ %125, %681 ], [ %125, %679 ], [ %125, %349 ], [ %125, %345 ], [ %125, %343 ], [ %125, %341 ], [ %125, %187 ], [ %125, %182 ], [ %125, %178 ], [ %125, %173 ], [ %125, %168 ], [ %125, %128 ], [ %125, %960 ], [ %125, %1103 ]
  br label %1110

; <label>:1110:                                   ; preds = %1110, %1104
  %1111 = phi i64 [ %1116, %1110 ], [ 1, %1104 ]
  %1112 = sub nsw i64 1, %1111
  %1113 = getelementptr inbounds i8, i8* %1109, i64 %1112
  %1114 = load i8, i8* %1113, align 1
  %1115 = icmp eq i8 %1114, 37
  %1116 = add nuw i64 %1111, 1
  br i1 %1115, label %1117, label %1110

; <label>:1117:                                   ; preds = %1110
  %1118 = shl i64 %1111, 32
  %1119 = ashr exact i64 %1118, 32
  %1120 = icmp sgt i32 %116, 0
  %1121 = select i1 %1120, i32 %116, i32 0
  %1122 = zext i32 %1121 to i64
  %1123 = icmp ult i64 %1119, %1122
  %1124 = select i1 %1123, i64 %1122, i64 %1119
  %1125 = xor i64 %50, -1
  %1126 = icmp ult i64 %1124, %1125
  br i1 %1126, label %1127, label %1175

; <label>:1127:                                   ; preds = %1117
  br i1 %27, label %1173, label %1128

; <label>:1128:                                   ; preds = %1127
  %1129 = icmp ne i32 %1108, 0
  %1130 = xor i1 %1123, true
  %1131 = or i1 %1129, %1130
  br i1 %1131, label %1153, label %1132

; <label>:1132:                                   ; preds = %1128
  %1133 = sext i32 %116 to i64
  %1134 = sub nsw i64 %1133, %1119
  %1135 = icmp eq i32 %70, 48
  %1136 = icmp ne i64 %1134, 0
  br i1 %1135, label %1139, label %1137

; <label>:1137:                                   ; preds = %1132
  br i1 %1136, label %1138, label %1153

; <label>:1138:                                   ; preds = %1137
  br label %1146

; <label>:1139:                                   ; preds = %1132
  br i1 %1136, label %1140, label %1153

; <label>:1140:                                   ; preds = %1139
  br label %1141

; <label>:1141:                                   ; preds = %1140, %1141
  %1142 = phi i64 [ %1144, %1141 ], [ 0, %1140 ]
  %1143 = call i32 @fputc(i32 48, %struct._IO_FILE* %0)
  %1144 = add nuw i64 %1142, 1
  %1145 = icmp eq i64 %1144, %1134
  br i1 %1145, label %1151, label %1141

; <label>:1146:                                   ; preds = %1138, %1146
  %1147 = phi i64 [ %1149, %1146 ], [ 0, %1138 ]
  %1148 = call i32 @fputc(i32 32, %struct._IO_FILE* %0)
  %1149 = add nuw i64 %1147, 1
  %1150 = icmp eq i64 %1149, %1134
  br i1 %1150, label %1152, label %1146

; <label>:1151:                                   ; preds = %1141
  br label %1153

; <label>:1152:                                   ; preds = %1146
  br label %1153

; <label>:1153:                                   ; preds = %1152, %1151, %1137, %1139, %1128
  %1154 = and i8 %1105, 1
  %1155 = icmp eq i8 %1154, 0
  br i1 %1155, label %1170, label %1156

; <label>:1156:                                   ; preds = %1153
  br label %1157

; <label>:1157:                                   ; preds = %1156, %1157
  %1158 = phi i8* [ %1168, %1157 ], [ %1113, %1156 ]
  %1159 = phi i64 [ %1160, %1157 ], [ %1119, %1156 ]
  %1160 = add i64 %1159, -1
  %1161 = tail call i32** @__ctype_toupper_loc() #1
  %1162 = load i32*, i32** %1161, align 8
  %1163 = load i8, i8* %1158, align 1
  %1164 = zext i8 %1163 to i64
  %1165 = getelementptr inbounds i32, i32* %1162, i64 %1164
  %1166 = load i32, i32* %1165, align 4
  %1167 = call i32 @fputc(i32 %1166, %struct._IO_FILE* %0) #13
  %1168 = getelementptr inbounds i8, i8* %1158, i64 1
  %1169 = icmp eq i64 %1160, 0
  br i1 %1169, label %1172, label %1157

; <label>:1170:                                   ; preds = %1153
  %1171 = call i64 @fwrite(i8* %1113, i64 %1119, i64 1, %struct._IO_FILE* %0)
  br label %1173

; <label>:1172:                                   ; preds = %1157
  br label %1173

; <label>:1173:                                   ; preds = %1172, %1170, %1127
  %1174 = add i64 %1124, %50
  br label %1177

; <label>:1175:                                   ; preds = %1117, %978, %817, %744, %618, %579, %524, %493, %520, %473, %432, %189, %130
  br label %1176

; <label>:1176:                                   ; preds = %1175, %326
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #13
  br label %1198

; <label>:1177:                                   ; preds = %1173, %1050, %851, %778, %677, %324, %225, %166, %1059
  %1178 = phi i32 [ %1106, %1173 ], [ %53, %1050 ], [ %53, %851 ], [ %53, %778 ], [ %414, %677 ], [ %232, %324 ], [ %53, %225 ], [ %53, %166 ], [ %53, %1059 ]
  %1179 = phi i32 [ %1107, %1173 ], [ %52, %1050 ], [ %52, %851 ], [ %52, %778 ], [ %417, %677 ], [ %233, %324 ], [ %52, %225 ], [ %52, %166 ], [ %52, %1059 ]
  %1180 = phi i8* [ %1109, %1173 ], [ %125, %1050 ], [ %125, %851 ], [ %125, %778 ], [ %420, %677 ], [ %236, %324 ], [ %125, %225 ], [ %125, %166 ], [ %1061, %1059 ]
  %1181 = phi i64 [ %1174, %1173 ], [ %1051, %1050 ], [ %852, %851 ], [ %779, %778 ], [ %678, %677 ], [ %325, %324 ], [ %226, %225 ], [ %167, %166 ], [ %50, %1059 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #13
  br label %1188

; <label>:1182:                                   ; preds = %64, %1095
  %1183 = phi i32 [ %1096, %1095 ], [ %68, %64 ]
  %1184 = phi i32 [ %1097, %1095 ], [ %53, %64 ]
  %1185 = phi i32 [ %1098, %1095 ], [ %52, %64 ]
  %1186 = phi i8* [ %1061, %1095 ], [ %51, %64 ]
  %1187 = phi i64 [ %50, %1095 ], [ %66, %64 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %26) #13
  switch i32 %1183, label %1196 [
    i32 0, label %1188
    i32 4, label %1188
  ]

; <label>:1188:                                   ; preds = %1177, %1182, %1182
  %1189 = phi i64 [ %1181, %1177 ], [ %1187, %1182 ], [ %1187, %1182 ]
  %1190 = phi i8* [ %1180, %1177 ], [ %1186, %1182 ], [ %1186, %1182 ]
  %1191 = phi i32 [ %1179, %1177 ], [ %1185, %1182 ], [ %1185, %1182 ]
  %1192 = phi i32 [ %1178, %1177 ], [ %1184, %1182 ], [ %1184, %1182 ]
  %1193 = getelementptr inbounds i8, i8* %1190, i64 1
  %1194 = load i8, i8* %1193, align 1
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1196, label %48

; <label>:1196:                                   ; preds = %1188, %1182
  %1197 = phi i64 [ 0, %1182 ], [ %1189, %1188 ]
  br label %1198

; <label>:1198:                                   ; preds = %1196, %6, %1176
  %1199 = phi i64 [ 0, %1176 ], [ 0, %6 ], [ %1197, %1196 ]
  ret i64 %1199
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 {
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #13
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ]

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #13
  %7 = icmp ne i32 %6, 2
  %8 = zext i1 %7 to i8
  br label %9

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  %11 = tail call i32 @dup2(i32 1, i32 1) #13
  %12 = icmp ne i32 %11, 1
  %13 = zext i1 %12 to i8
  br label %14

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  %17 = tail call i32 @dup2(i32 0, i32 0) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %14
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0), i32 0) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1
  br i1 %23, label %24, label %54

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #13
  %26 = tail call i32* @__errno_location() #1
  store i32 9, i32* %26, align 4
  br label %54

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0
  br i1 %29, label %38, label %30

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0), i32 0) #13
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %38, label %33

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1
  br i1 %34, label %35, label %54

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #13
  %37 = tail call i32* @__errno_location() #1
  store i32 9, i32* %37, align 4
  br label %54

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

; <label>:41:                                     ; preds = %38
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i64 0, i64 0), i32 0) #13
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %49, label %44

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #13
  %48 = tail call i32* @__errno_location() #1
  store i32 9, i32* %48, align 4
  br label %54

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @rpl_freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #13
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  %59 = tail call i32* @__errno_location() #1
  %60 = load i32, i32* %59, align 4
  %61 = and i8 %55, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #13
  br label %65

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #13
  br label %70

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #13
  br label %73

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4
  br label %76

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

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
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.148, i64 0, i64 0), i64 %4) #13
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.149, i64 0, i64 0), i64 %6) #13
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.150, i64 0, i64 0), i64 %8, double %79) #13
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.151, i64 0, i64 0), i64 %73) #13
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #13
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16
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
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #13
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
  tail call void @abort() #16
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #13
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16
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
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #13
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
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #13
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
  %10 = tail call noalias i8* @malloc(i64 80) #13
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
  %91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #13
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
  tail call void @free(i8* nonnull %10) #13
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
  tail call void %26(i8* %30) #13
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
  tail call void %42(i8* %45) #13
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
  tail call void %25(i8* %20) #13
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
  tail call void %34(i8* %33) #13
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
  tail call void @free(i8* %62) #13
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
  tail call void @free(i8* %80) #13
  %83 = icmp eq %struct.hash_entry* %82, null
  br i1 %83, label %84, label %78

; <label>:84:                                     ; preds = %78
  br label %85

; <label>:85:                                     ; preds = %84, %73
  %86 = bitcast %struct.hash_table* %0 to i8**
  %87 = load i8*, i8** %86, align 8
  tail call void @free(i8* %87) #13
  %88 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* %88) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.hash_table, align 16
  %4 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #13
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
  %56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #13
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
  tail call void @free(i8* %84) #13
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
  %118 = tail call i64 %117(i8* %116, i64 %113) #13
  %119 = load i64, i64* %52, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %112
  tail call void @abort() #16
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
  tail call void @abort() #16
  unreachable

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %57, align 16
  tail call void @free(i8* %150) #13
  br label %152

; <label>:151:                                    ; preds = %45
  br label %152

; <label>:152:                                    ; preds = %151, %17, %48, %10, %55, %51, %149, %82
  %153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
  call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #13
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
  %34 = tail call i64 %33(i8* %32, i64 %29) #13
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %28
  tail call void @abort() #16
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
  %63 = tail call i64 %61(i8* %59, i64 %62) #13
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %60
  tail call void @abort() #16
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
  %80 = tail call noalias i8* @malloc(i64 16) #13
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
  tail call void @abort() #16
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #13
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %6
  tail call void @abort() #16
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
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #13
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
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #13
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
  %118 = tail call i64 %116(i8* nonnull %1, i64 %117) #13
  %119 = load i64, i64* %9, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %115
  tail call void @abort() #16
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
  %133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #13
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
  %149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #13
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
  tail call void @abort() #16
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
  %179 = tail call noalias i8* @malloc(i64 16) #13
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #13
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #13
  ret i8* %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #13
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #16
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
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #13
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #13
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
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #13
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
  tail call void @free(i8* %148) #13
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
define i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #6 {
  %6 = alloca [41 x i8], align 16
  %7 = and i32 %2, 3
  %8 = and i32 %2, 32
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 1024, i32 1000
  %11 = tail call %struct.lconv* @localeconv() #13
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i64 @strlen(i8* %13) #15
  %15 = add i64 %14, -1
  %16 = icmp ult i64 %15, 16
  %17 = select i1 %16, i64 %14, i64 1
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.166, i64 0, i64 0)
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i64 @strlen(i8* %22) #15
  %24 = icmp ult i64 %23, 17
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.167, i64 0, i64 0)
  %26 = getelementptr inbounds i8, i8* %1, i64 647
  %27 = icmp ugt i64 %4, %3
  br i1 %27, label %36, label %28

; <label>:28:                                     ; preds = %5
  %29 = urem i64 %3, %4
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56

; <label>:31:                                     ; preds = %28
  %32 = udiv i64 %3, %4
  %33 = mul i64 %32, %0
  %34 = udiv i64 %33, %32
  %35 = icmp eq i64 %34, %0
  br i1 %35, label %149, label %56

; <label>:36:                                     ; preds = %5
  %37 = icmp eq i64 %3, 0
  br i1 %37, label %56, label %38

; <label>:38:                                     ; preds = %36
  %39 = urem i64 %4, %3
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

; <label>:41:                                     ; preds = %38
  %42 = udiv i64 %4, %3
  %43 = urem i64 %0, %42
  %44 = mul i64 %43, 10
  %45 = urem i64 %44, %42
  %46 = shl i64 %45, 1
  %47 = udiv i64 %0, %42
  %48 = udiv i64 %44, %42
  %49 = trunc i64 %48 to i32
  %50 = icmp ult i64 %46, %42
  %51 = icmp ne i64 %46, 0
  %52 = zext i1 %51 to i32
  %53 = icmp ult i64 %42, %46
  %54 = select i1 %53, i32 3, i32 2
  %55 = select i1 %50, i32 %52, i32 %54
  br label %149

; <label>:56:                                     ; preds = %31, %36, %38, %28
  %57 = uitofp i64 %4 to x86_fp80
  %58 = uitofp i64 %0 to x86_fp80
  %59 = uitofp i64 %3 to x86_fp80
  %60 = fdiv x86_fp80 %59, %57
  %61 = fmul x86_fp80 %58, %60
  %62 = and i32 %2, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

; <label>:64:                                     ; preds = %56
  %65 = uitofp i32 %10 to x86_fp80
  br label %84

; <label>:66:                                     ; preds = %56
  %67 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %68 = icmp ne i32 %7, 1
  %69 = fcmp olt x86_fp80 %61, 0xK403EFFFFFFFFFFFFFFFF
  %70 = and i1 %68, %69
  br i1 %70, label %71, label %80

; <label>:71:                                     ; preds = %66
  %72 = fptoui x86_fp80 %61 to i64
  %73 = icmp eq i32 %7, 0
  %74 = uitofp i64 %72 to x86_fp80
  %75 = fcmp une x86_fp80 %74, %61
  %76 = and i1 %73, %75
  %77 = zext i1 %76 to i64
  %78 = add i64 %77, %72
  %79 = uitofp i64 %78 to x86_fp80
  br label %80

; <label>:80:                                     ; preds = %66, %71
  %81 = phi x86_fp80 [ %79, %71 ], [ %61, %66 ]
  %82 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.168, i64 0, i64 0), x86_fp80 %81) #13
  %83 = tail call i64 @strlen(i8* %1) #15
  br label %140

; <label>:84:                                     ; preds = %64
  %85 = fmul x86_fp80 %65, %65
  %86 = fcmp ugt x86_fp80 %85, %61
  br i1 %86, label %87, label %384

; <label>:87:                                     ; preds = %404, %400, %396, %392, %388, %384, %84, %408
  %88 = phi x86_fp80 [ %65, %84 ], [ %385, %384 ], [ %389, %388 ], [ %393, %392 ], [ %397, %396 ], [ %401, %400 ], [ %405, %404 ], [ %409, %408 ]
  %89 = phi i32 [ 1, %84 ], [ 2, %384 ], [ 3, %388 ], [ 4, %392 ], [ 5, %396 ], [ 6, %400 ], [ 7, %404 ], [ 8, %408 ]
  %90 = fdiv x86_fp80 %61, %88
  %91 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %92 = icmp ne i32 %7, 1
  %93 = fcmp olt x86_fp80 %90, 0xK403EFFFFFFFFFFFFFFFF
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %104

; <label>:95:                                     ; preds = %87
  %96 = fptoui x86_fp80 %90 to i64
  %97 = icmp eq i32 %7, 0
  %98 = uitofp i64 %96 to x86_fp80
  %99 = fcmp une x86_fp80 %98, %90
  %100 = and i1 %97, %99
  %101 = zext i1 %100 to i64
  %102 = add i64 %101, %96
  %103 = uitofp i64 %102 to x86_fp80
  br label %104

; <label>:104:                                    ; preds = %87, %95
  %105 = phi x86_fp80 [ %103, %95 ], [ %90, %87 ]
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.169, i64 0, i64 0), x86_fp80 %105) #13
  %107 = tail call i64 @strlen(i8* %1) #15
  %108 = add i64 %17, 1
  %109 = zext i32 %8 to i64
  %110 = lshr exact i64 %109, 5
  %111 = xor i64 %110, 3
  %112 = add i64 %111, %17
  %113 = icmp ult i64 %112, %107
  br i1 %113, label %122, label %114

; <label>:114:                                    ; preds = %104
  %115 = and i32 %2, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %140, label %117

; <label>:117:                                    ; preds = %114
  %118 = add i64 %107, -1
  %119 = getelementptr inbounds i8, i8* %1, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 48
  br i1 %121, label %122, label %140

; <label>:122:                                    ; preds = %117, %104
  %123 = fmul x86_fp80 %90, 0xK4002A000000000000000
  %124 = fcmp olt x86_fp80 %123, 0xK403EFFFFFFFFFFFFFFFF
  %125 = and i1 %92, %124
  br i1 %125, label %126, label %135

; <label>:126:                                    ; preds = %122
  %127 = fptoui x86_fp80 %123 to i64
  %128 = icmp eq i32 %7, 0
  %129 = uitofp i64 %127 to x86_fp80
  %130 = fcmp une x86_fp80 %129, %123
  %131 = and i1 %128, %130
  %132 = zext i1 %131 to i64
  %133 = add i64 %132, %127
  %134 = uitofp i64 %133 to x86_fp80
  br label %135

; <label>:135:                                    ; preds = %122, %126
  %136 = phi x86_fp80 [ %134, %126 ], [ %123, %122 ]
  %137 = fdiv x86_fp80 %136, 0xK4002A000000000000000
  %138 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.168, i64 0, i64 0), x86_fp80 %137) #13
  %139 = tail call i64 @strlen(i8* %1) #15
  br label %140

; <label>:140:                                    ; preds = %117, %135, %114, %80
  %141 = phi i64 [ %83, %80 ], [ %139, %135 ], [ %107, %117 ], [ %107, %114 ]
  %142 = phi i64 [ 0, %80 ], [ 0, %135 ], [ %108, %117 ], [ %108, %114 ]
  %143 = phi i32 [ -1, %80 ], [ %89, %135 ], [ %89, %117 ], [ %89, %114 ]
  %144 = sub i64 0, %141
  %145 = getelementptr inbounds i8, i8* %26, i64 %144
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %145, i8* %1, i64 %141, i32 1, i1 false)
  %146 = getelementptr inbounds i8, i8* %145, i64 %141
  %147 = sub i64 0, %142
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  br label %269

; <label>:149:                                    ; preds = %31, %41
  %150 = phi i32 [ 0, %31 ], [ %55, %41 ]
  %151 = phi i32 [ 0, %31 ], [ %49, %41 ]
  %152 = phi i64 [ %33, %31 ], [ %47, %41 ]
  %153 = and i32 %2, 16
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %222

; <label>:155:                                    ; preds = %149
  %156 = zext i32 %10 to i64
  %157 = icmp ugt i64 %156, %152
  br i1 %157, label %222, label %158

; <label>:158:                                    ; preds = %155
  br label %159

; <label>:159:                                    ; preds = %158, %184
  %160 = phi i32 [ %185, %184 ], [ %150, %158 ]
  %161 = phi i32 [ %186, %184 ], [ 0, %158 ]
  %162 = phi i32 [ %174, %184 ], [ %151, %158 ]
  %163 = phi i64 [ %173, %184 ], [ %152, %158 ]
  %164 = urem i64 %163, %156
  %165 = mul nuw nsw i64 %164, 10
  %166 = zext i32 %162 to i64
  %167 = add nuw nsw i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = urem i32 %168, %10
  %170 = shl nuw nsw i32 %169, 1
  %171 = ashr i32 %160, 1
  %172 = add nsw i32 %170, %171
  %173 = udiv i64 %163, %156
  %174 = udiv i32 %168, %10
  %175 = icmp ult i32 %172, %10
  br i1 %175, label %176, label %180

; <label>:176:                                    ; preds = %159
  %177 = sub nsw i32 0, %160
  %178 = icmp ne i32 %172, %177
  %179 = zext i1 %178 to i32
  br label %184

; <label>:180:                                    ; preds = %159
  %181 = add i32 %172, %160
  %182 = icmp ult i32 %10, %181
  %183 = select i1 %182, i32 3, i32 2
  br label %184

; <label>:184:                                    ; preds = %180, %176
  %185 = phi i32 [ %179, %176 ], [ %183, %180 ]
  %186 = add nuw nsw i32 %161, 1
  %187 = icmp ule i64 %156, %173
  %188 = icmp slt i32 %186, 8
  %189 = and i1 %188, %187
  br i1 %189, label %159, label %190

; <label>:190:                                    ; preds = %184
  %191 = icmp ult i64 %173, 10
  br i1 %191, label %192, label %222

; <label>:192:                                    ; preds = %190
  %193 = icmp eq i32 %7, 1
  br i1 %193, label %194, label %198

; <label>:194:                                    ; preds = %192
  %195 = and i32 %174, 1
  %196 = add nuw nsw i32 %185, %195
  %197 = icmp ugt i32 %196, 2
  br i1 %197, label %202, label %208

; <label>:198:                                    ; preds = %192
  %199 = icmp eq i32 %7, 0
  %200 = icmp ne i32 %185, 0
  %201 = and i1 %199, %200
  br i1 %201, label %202, label %208

; <label>:202:                                    ; preds = %198, %194
  %203 = add nsw i32 %174, 1
  %204 = icmp eq i32 %203, 10
  %205 = add i64 %173, 1
  br i1 %204, label %206, label %208

; <label>:206:                                    ; preds = %202
  %207 = icmp ult i64 %205, 10
  br i1 %207, label %208, label %222

; <label>:208:                                    ; preds = %202, %198, %194, %206
  %209 = phi i64 [ %205, %206 ], [ %173, %194 ], [ %173, %198 ], [ %173, %202 ]
  %210 = phi i32 [ 0, %206 ], [ %174, %194 ], [ %174, %198 ], [ %203, %202 ]
  %211 = phi i32 [ 0, %206 ], [ %185, %194 ], [ %185, %198 ], [ 0, %202 ]
  %212 = icmp ne i32 %210, 0
  %213 = and i32 %2, 8
  %214 = icmp eq i32 %213, 0
  %215 = or i1 %214, %212
  br i1 %215, label %216, label %222

; <label>:216:                                    ; preds = %208
  %217 = add nsw i32 %210, 48
  %218 = trunc i32 %217 to i8
  %219 = getelementptr inbounds i8, i8* %1, i64 646
  store i8 %218, i8* %219, align 1
  %220 = sub i64 0, %17
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %221, i8* %18, i64 %17, i32 1, i1 false)
  br label %222

; <label>:222:                                    ; preds = %208, %155, %206, %216, %190, %149
  %223 = phi i32 [ 0, %216 ], [ 0, %206 ], [ %185, %190 ], [ %150, %155 ], [ %150, %149 ], [ %211, %208 ]
  %224 = phi i8* [ %221, %216 ], [ %26, %206 ], [ %26, %190 ], [ %26, %155 ], [ %26, %149 ], [ %26, %208 ]
  %225 = phi i32 [ %186, %216 ], [ %186, %206 ], [ %186, %190 ], [ 0, %155 ], [ -1, %149 ], [ %186, %208 ]
  %226 = phi i32 [ 0, %216 ], [ 0, %206 ], [ %174, %190 ], [ %151, %155 ], [ %151, %149 ], [ 0, %208 ]
  %227 = phi i64 [ %209, %216 ], [ 10, %206 ], [ %173, %190 ], [ %152, %155 ], [ %152, %149 ], [ %209, %208 ]
  %228 = trunc i32 %2 to i2
  switch i2 %228, label %255 [
    i2 1, label %229
    i2 0, label %237
  ]

; <label>:229:                                    ; preds = %222
  %230 = sext i32 %223 to i64
  %231 = and i64 %227, 1
  %232 = sub nsw i64 0, %231
  %233 = icmp ne i64 %230, %232
  %234 = zext i1 %233 to i32
  %235 = add nsw i32 %234, %226
  %236 = icmp sgt i32 %235, 5
  br i1 %236, label %240, label %255

; <label>:237:                                    ; preds = %222
  %238 = add nsw i32 %226, %223
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %255

; <label>:240:                                    ; preds = %237, %229
  %241 = add i64 %227, 1
  %242 = zext i32 %10 to i64
  %243 = icmp eq i64 %241, %242
  %244 = and i1 %154, %243
  %245 = icmp slt i32 %225, 8
  %246 = and i1 %245, %244
  br i1 %246, label %247, label %255

; <label>:247:                                    ; preds = %240
  %248 = add nsw i32 %225, 1
  %249 = and i32 %2, 8
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

; <label>:251:                                    ; preds = %247
  %252 = getelementptr inbounds i8, i8* %224, i64 -1
  store i8 48, i8* %252, align 1
  %253 = sub i64 0, %17
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %18, i64 %17, i32 1, i1 false)
  br label %255

; <label>:255:                                    ; preds = %251, %247, %222, %240, %237, %229
  %256 = phi i8* [ %224, %240 ], [ %224, %229 ], [ %224, %237 ], [ %224, %222 ], [ %224, %247 ], [ %254, %251 ]
  %257 = phi i32 [ %225, %240 ], [ %225, %229 ], [ %225, %237 ], [ %225, %222 ], [ %248, %247 ], [ %248, %251 ]
  %258 = phi i64 [ %241, %240 ], [ %227, %229 ], [ %227, %237 ], [ %227, %222 ], [ 1, %247 ], [ 1, %251 ]
  br label %259

; <label>:259:                                    ; preds = %259, %255
  %260 = phi i8* [ %256, %255 ], [ %265, %259 ]
  %261 = phi i64 [ %258, %255 ], [ %266, %259 ]
  %262 = urem i64 %261, 10
  %263 = trunc i64 %262 to i8
  %264 = or i8 %263, 48
  %265 = getelementptr inbounds i8, i8* %260, i64 -1
  store i8 %264, i8* %265, align 1
  %266 = udiv i64 %261, 10
  %267 = icmp ugt i64 %261, 9
  br i1 %267, label %259, label %268

; <label>:268:                                    ; preds = %259
  br label %269

; <label>:269:                                    ; preds = %268, %140
  %270 = phi i8* [ %148, %140 ], [ %256, %268 ]
  %271 = phi i8* [ %145, %140 ], [ %265, %268 ]
  %272 = phi i32 [ %143, %140 ], [ %257, %268 ]
  %273 = and i32 %2, 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %307, label %275

; <label>:275:                                    ; preds = %269
  %276 = ptrtoint i8* %270 to i64
  %277 = ptrtoint i8* %271 to i64
  %278 = sub i64 %276, %277
  %279 = tail call i64 @strlen(i8* %25) #15
  %280 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 41, i8* nonnull %280) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %280, i8* %271, i64 %278, i32 1, i1 false) #13
  %281 = sub i64 0, %279
  br label %282

; <label>:282:                                    ; preds = %304, %275
  %283 = phi i8* [ %270, %275 ], [ %305, %304 ]
  %284 = phi i64 [ -1, %275 ], [ %298, %304 ]
  %285 = phi i8* [ %20, %275 ], [ %296, %304 ]
  %286 = phi i64 [ %278, %275 ], [ %301, %304 ]
  %287 = load i8, i8* %285, align 1
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %294, label %289

; <label>:289:                                    ; preds = %282
  %290 = icmp ult i8 %287, 127
  %291 = zext i8 %287 to i64
  %292 = select i1 %290, i64 %291, i64 %286
  %293 = getelementptr inbounds i8, i8* %285, i64 1
  br label %294

; <label>:294:                                    ; preds = %289, %282
  %295 = phi i64 [ %292, %289 ], [ %284, %282 ]
  %296 = phi i8* [ %293, %289 ], [ %285, %282 ]
  %297 = icmp ult i64 %286, %295
  %298 = select i1 %297, i64 %286, i64 %295
  %299 = sub i64 0, %298
  %300 = getelementptr inbounds i8, i8* %283, i64 %299
  %301 = sub i64 %286, %298
  %302 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 %301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %302, i64 %298, i32 1, i1 false) #13
  %303 = icmp eq i64 %301, 0
  br i1 %303, label %306, label %304

; <label>:304:                                    ; preds = %294
  %305 = getelementptr inbounds i8, i8* %300, i64 %281
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %305, i8* %25, i64 %279, i32 1, i1 false) #13
  br label %282

; <label>:306:                                    ; preds = %294
  call void @llvm.lifetime.end(i64 41, i8* nonnull %280) #13
  br label %307

; <label>:307:                                    ; preds = %269, %306
  %308 = phi i8* [ %300, %306 ], [ %271, %269 ]
  %309 = trunc i32 %2 to i8
  %310 = icmp slt i8 %309, 0
  br i1 %310, label %311, label %356

; <label>:311:                                    ; preds = %307
  %312 = icmp slt i32 %272, 0
  br i1 %312, label %313, label %322

; <label>:313:                                    ; preds = %311
  %314 = icmp ugt i64 %4, 1
  br i1 %314, label %315, label %322

; <label>:315:                                    ; preds = %313
  %316 = zext i32 %10 to i64
  br label %317

; <label>:317:                                    ; preds = %315
  br i1 false, label %320, label %318

; <label>:318:                                    ; preds = %317
  %319 = icmp ult i64 %316, %4
  br i1 %319, label %358, label %320

; <label>:320:                                    ; preds = %383, %382, %379, %378, %375, %374, %371, %370, %367, %366, %363, %362, %359, %358, %318, %317
  %321 = phi i32 [ 8, %317 ], [ 1, %318 ], [ 8, %358 ], [ 2, %359 ], [ 8, %362 ], [ 3, %363 ], [ 8, %366 ], [ 4, %367 ], [ 8, %370 ], [ 5, %371 ], [ 8, %374 ], [ 6, %375 ], [ 8, %378 ], [ 7, %379 ], [ 8, %382 ], [ 8, %383 ]
  br label %322

; <label>:322:                                    ; preds = %320, %313, %311
  %323 = phi i32 [ %272, %311 ], [ 0, %313 ], [ %321, %320 ]
  %324 = and i32 %2, 256
  %325 = or i32 %323, %324
  %326 = icmp eq i32 %325, 0
  %327 = and i32 %2, 64
  %328 = icmp eq i32 %327, 0
  %329 = or i1 %328, %326
  br i1 %329, label %332, label %330

; <label>:330:                                    ; preds = %322
  %331 = getelementptr inbounds i8, i8* %1, i64 648
  store i8 32, i8* %26, align 1
  br label %332

; <label>:332:                                    ; preds = %322, %330
  %333 = phi i8* [ %331, %330 ], [ %26, %322 ]
  %334 = icmp ne i32 %323, 0
  br i1 %334, label %335, label %346

; <label>:335:                                    ; preds = %332
  %336 = icmp eq i32 %8, 0
  %337 = icmp eq i32 %323, 1
  %338 = and i1 %336, %337
  br i1 %338, label %343, label %339

; <label>:339:                                    ; preds = %335
  %340 = sext i32 %323 to i64
  %341 = getelementptr inbounds [9 x i8], [9 x i8]* @power_letter, i64 0, i64 %340
  %342 = load i8, i8* %341, align 1
  br label %343

; <label>:343:                                    ; preds = %335, %339
  %344 = phi i8 [ %342, %339 ], [ 107, %335 ]
  %345 = getelementptr inbounds i8, i8* %333, i64 1
  store i8 %344, i8* %333, align 1
  br label %346

; <label>:346:                                    ; preds = %343, %332
  %347 = phi i8* [ %345, %343 ], [ %333, %332 ]
  %348 = icmp eq i32 %324, 0
  br i1 %348, label %356, label %349

; <label>:349:                                    ; preds = %346
  %350 = and i1 %9, %334
  br i1 %350, label %351, label %353

; <label>:351:                                    ; preds = %349
  %352 = getelementptr inbounds i8, i8* %347, i64 1
  store i8 105, i8* %347, align 1
  br label %353

; <label>:353:                                    ; preds = %351, %349
  %354 = phi i8* [ %352, %351 ], [ %347, %349 ]
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  store i8 66, i8* %354, align 1
  br label %356

; <label>:356:                                    ; preds = %346, %353, %307
  %357 = phi i8* [ %355, %353 ], [ %347, %346 ], [ %26, %307 ]
  store i8 0, i8* %357, align 1
  ret i8* %308

; <label>:358:                                    ; preds = %318
  br i1 false, label %320, label %359

; <label>:359:                                    ; preds = %358
  %360 = mul nuw nsw i64 %316, %316
  %361 = icmp ult i64 %360, %4
  br i1 %361, label %362, label %320

; <label>:362:                                    ; preds = %359
  br i1 false, label %320, label %363

; <label>:363:                                    ; preds = %362
  %364 = mul nuw nsw i64 %360, %316
  %365 = icmp ult i64 %364, %4
  br i1 %365, label %366, label %320

; <label>:366:                                    ; preds = %363
  br i1 false, label %320, label %367

; <label>:367:                                    ; preds = %366
  %368 = mul nuw nsw i64 %364, %316
  %369 = icmp ult i64 %368, %4
  br i1 %369, label %370, label %320

; <label>:370:                                    ; preds = %367
  br i1 false, label %320, label %371

; <label>:371:                                    ; preds = %370
  %372 = mul nuw nsw i64 %368, %316
  %373 = icmp ult i64 %372, %4
  br i1 %373, label %374, label %320

; <label>:374:                                    ; preds = %371
  br i1 false, label %320, label %375

; <label>:375:                                    ; preds = %374
  %376 = mul i64 %372, %316
  %377 = icmp ult i64 %376, %4
  br i1 %377, label %378, label %320

; <label>:378:                                    ; preds = %375
  br i1 false, label %320, label %379

; <label>:379:                                    ; preds = %378
  %380 = mul i64 %376, %316
  %381 = icmp ult i64 %380, %4
  br i1 %381, label %382, label %320

; <label>:382:                                    ; preds = %379
  br i1 true, label %320, label %383

; <label>:383:                                    ; preds = %382
  br label %320

; <label>:384:                                    ; preds = %84
  %385 = fmul x86_fp80 %65, %65
  %386 = fmul x86_fp80 %65, %385
  %387 = fcmp ugt x86_fp80 %386, %61
  br i1 %387, label %87, label %388

; <label>:388:                                    ; preds = %384
  %389 = fmul x86_fp80 %65, %385
  %390 = fmul x86_fp80 %65, %389
  %391 = fcmp ugt x86_fp80 %390, %61
  br i1 %391, label %87, label %392

; <label>:392:                                    ; preds = %388
  %393 = fmul x86_fp80 %65, %389
  %394 = fmul x86_fp80 %65, %393
  %395 = fcmp ugt x86_fp80 %394, %61
  br i1 %395, label %87, label %396

; <label>:396:                                    ; preds = %392
  %397 = fmul x86_fp80 %65, %393
  %398 = fmul x86_fp80 %65, %397
  %399 = fcmp ugt x86_fp80 %398, %61
  br i1 %399, label %87, label %400

; <label>:400:                                    ; preds = %396
  %401 = fmul x86_fp80 %65, %397
  %402 = fmul x86_fp80 %65, %401
  %403 = fcmp ugt x86_fp80 %402, %61
  br i1 %403, label %87, label %404

; <label>:404:                                    ; preds = %400
  %405 = fmul x86_fp80 %65, %401
  %406 = fmul x86_fp80 %65, %405
  %407 = fcmp ugt x86_fp80 %406, %61
  br i1 %407, label %87, label %408

; <label>:408:                                    ; preds = %404
  %409 = fmul x86_fp80 %65, %405
  br label %87
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %16

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.172, i64 0, i64 0)) #13
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.173, i64 0, i64 0)) #13
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.174, i64 0, i64 0)) #13
  %14 = icmp ne i8* %13, null
  %15 = select i1 %14, i64 512, i64 1024
  br label %67

; <label>:16:                                     ; preds = %9, %6, %3
  %17 = phi i8* [ %0, %3 ], [ %7, %6 ], [ %10, %9 ]
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 39
  %20 = getelementptr inbounds i8, i8* %17, i64 1
  %21 = select i1 %19, i8* %20, i8* %17
  %22 = select i1 %19, i32 4, i32 0
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #15
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %16
  %27 = shl i64 %23, 32
  %28 = ashr exact i64 %27, 32
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* @block_size_opts, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %22
  br label %67

; <label>:32:                                     ; preds = %16
  %33 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #13
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.175, i64 0, i64 0)) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

; <label>:36:                                     ; preds = %32
  %37 = load i8, i8* %21, align 1
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %64, label %40

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %4, align 8
  br label %46

; <label>:42:                                     ; preds = %46
  %43 = load i8, i8* %49, align 1
  %44 = add i8 %43, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %63, label %46

; <label>:46:                                     ; preds = %42, %40
  %47 = phi i8* [ %21, %40 ], [ %49, %42 ]
  %48 = icmp eq i8* %47, %41
  %49 = getelementptr inbounds i8, i8* %47, i64 1
  br i1 %48, label %50, label %42

; <label>:50:                                     ; preds = %46
  %51 = or i32 %22, 128
  %52 = getelementptr inbounds i8, i8* %41, i64 -1
  %53 = load i8, i8* %52, align 1
  %54 = icmp eq i8 %53, 66
  %55 = or i32 %22, 384
  %56 = select i1 %54, i32 %55, i32 %51
  br i1 %54, label %57, label %61

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %41, i64 -2
  %59 = load i8, i8* %58, align 1
  %60 = icmp eq i8 %59, 105
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %57, %50
  %62 = or i32 %56, 32
  br label %64

; <label>:63:                                     ; preds = %42
  br label %64

; <label>:64:                                     ; preds = %63, %61, %57, %36
  %65 = phi i32 [ %55, %57 ], [ %62, %61 ], [ %22, %36 ], [ %22, %63 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #13
  br label %70

; <label>:66:                                     ; preds = %32
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #13
  br label %72

; <label>:67:                                     ; preds = %26, %12
  %68 = phi i64 [ 1, %26 ], [ %15, %12 ]
  %69 = phi i32 [ %31, %26 ], [ 0, %12 ]
  store i64 %68, i64* %2, align 8
  br label %70

; <label>:70:                                     ; preds = %67, %64
  %71 = phi i32 [ %69, %67 ], [ %65, %64 ]
  store i32 %71, i32* %1, align 4
  br label %72

; <label>:72:                                     ; preds = %66, %70
  %73 = phi i32 [ 0, %70 ], [ %34, %66 ]
  %74 = load i64, i64* %2, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %72
  %77 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.174, i64 0, i64 0)) #13
  %78 = icmp ne i8* %77, null
  %79 = select i1 %78, i64 512, i64 1024
  store i64 %79, i64* %2, align 8
  br label %80

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ 4, %76 ], [ %73, %72 ]
  ret i32 %81
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.ino_map* @ino_map_alloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 24) #13
  %3 = bitcast i8* %2 to %struct.ino_map*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.hash_table* @hash_initialize(i64 1021, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @ino_hash, i1 (i8*, i8*)* nonnull @ino_compare, void (i8*)* nonnull @free) #13
  %7 = bitcast i8* %2 to %struct.hash_table**
  store %struct.hash_table* %6, %struct.hash_table** %7, align 8
  %8 = icmp eq %struct.hash_table* %6, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %5
  tail call void @free(i8* nonnull %2) #13
  br label %15

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %2, i64 8
  %12 = bitcast i8* %11 to i64*
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds i8, i8* %2, i64 16
  %14 = bitcast i8* %13 to %struct.timespec**
  store %struct.timespec* null, %struct.timespec** %14, align 8
  br label %15

; <label>:15:                                     ; preds = %10, %1, %9
  %16 = phi %struct.ino_map* [ null, %9 ], [ %3, %1 ], [ %3, %10 ]
  ret %struct.ino_map* %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @ino_hash(i8* nocapture readonly, i64) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @ino_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind sspstrong uwtable
define void @ino_map_free(%struct.ino_map* nocapture nonnull) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ino_map, %struct.ino_map* %0, i64 0, i32 0
  %3 = load %struct.hash_table*, %struct.hash_table** %2, align 8
  tail call void @hash_free(%struct.hash_table* %3) #13
  %4 = getelementptr inbounds %struct.ino_map, %struct.ino_map* %0, i64 0, i32 2
  %5 = bitcast %struct.timespec** %4 to i8**
  %6 = load i8*, i8** %5, align 8
  tail call void @free(i8* %6) #13
  %7 = bitcast %struct.ino_map* %0 to i8*
  tail call void @free(i8* nonnull %7) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @ino_map_insert(%struct.ino_map* nocapture nonnull, i64) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.ino_map, %struct.ino_map* %0, i64 0, i32 2
  %4 = load %struct.timespec*, %struct.timespec** %3, align 8
  %5 = icmp eq %struct.timespec* %4, null
  br i1 %5, label %13, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, %1
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  br label %40

; <label>:13:                                     ; preds = %2
  %14 = tail call noalias i8* @malloc(i64 16) #13
  %15 = bitcast i8* %14 to %struct.timespec*
  %16 = bitcast %struct.timespec** %3 to i8**
  store i8* %14, i8** %16, align 8
  %17 = icmp eq i8* %14, null
  br i1 %17, label %40, label %18

; <label>:18:                                     ; preds = %13, %6
  %19 = phi %struct.timespec* [ %4, %6 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0, i32 0
  store i64 %1, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ino_map, %struct.ino_map* %0, i64 0, i32 0
  %22 = load %struct.hash_table*, %struct.hash_table** %21, align 8
  %23 = bitcast %struct.timespec* %19 to i8*
  %24 = tail call i8* @hash_insert(%struct.hash_table* %22, i8* %23) #13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %40, label %26

; <label>:26:                                     ; preds = %18
  %27 = bitcast i8* %24 to %struct.timespec*
  %28 = icmp eq %struct.timespec* %27, %19
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds i8, i8* %24, i64 8
  %31 = bitcast i8* %30 to i64*
  %32 = load i64, i64* %31, align 8
  br label %37

; <label>:33:                                     ; preds = %26
  store %struct.timespec* null, %struct.timespec** %3, align 8
  %34 = getelementptr inbounds %struct.ino_map, %struct.ino_map* %0, i64 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

; <label>:37:                                     ; preds = %33, %29
  %38 = phi i64 [ %35, %33 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 0, i32 1
  store i64 %38, i64* %39, align 8
  br label %40

; <label>:40:                                     ; preds = %18, %13, %37, %10
  %41 = phi i64 [ %12, %10 ], [ %38, %37 ], [ -1, %13 ], [ -1, %18 ]
  ret i64 %41
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @imaxtostr(i64, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %1, i64 20
  store i8 0, i8* %3, align 1
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %2
  br label %19

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %7
  %8 = phi i64 [ %14, %7 ], [ %0, %6 ]
  %9 = phi i8* [ %13, %7 ], [ %3, %6 ]
  %10 = srem i64 %8, 10
  %11 = sub nsw i64 48, %10
  %12 = trunc i64 %11 to i8
  %13 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8 %12, i8* %13, align 1
  %14 = sdiv i64 %8, 10
  %15 = add i64 %8, 9
  %16 = icmp ugt i64 %15, 18
  br i1 %16, label %7, label %17

; <label>:17:                                     ; preds = %7
  %18 = getelementptr inbounds i8, i8* %9, i64 -2
  store i8 45, i8* %18, align 1
  br label %30

; <label>:19:                                     ; preds = %5, %19
  %20 = phi i64 [ %26, %19 ], [ %0, %5 ]
  %21 = phi i8* [ %25, %19 ], [ %3, %5 ]
  %22 = srem i64 %20, 10
  %23 = add nsw i64 %22, 48
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds i8, i8* %21, i64 -1
  store i8 %24, i8* %25, align 1
  %26 = sdiv i64 %20, 10
  %27 = add i64 %20, 9
  %28 = icmp ugt i64 %27, 18
  br i1 %28, label %19, label %29

; <label>:29:                                     ; preds = %19
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i8* [ %18, %17 ], [ %25, %29 ]
  ret i8* %31
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @mbscasecmp(i8* nonnull, i8* nonnull) local_unnamed_addr #9 {
  %3 = alloca %struct.mbuiter_multi, align 8
  %4 = alloca %struct.mbuiter_multi, align 8
  %5 = icmp eq i8* %0, %1
  br i1 %5, label %152, label %6

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @__ctype_get_mb_cur_max() #13
  %8 = icmp ugt i64 %7, 1
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i16** @__ctype_b_loc() #1
  %11 = load i16*, i16** %10, align 8
  br label %105

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %13) #13
  %14 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 64, i8* nonnull %14) #13
  %15 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 0
  store i8* %0, i8** %15, align 8
  store i8 0, i8* %13, align 8
  %16 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 1
  %17 = bitcast %struct.__mbstate_t* %16 to i64*
  store i64 0, i64* %17, align 4
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 2
  store i8 0, i8* %18, align 4
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 0
  store i8* %1, i8** %19, align 8
  store i8 0, i8* %14, align 8
  %20 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 1
  %21 = bitcast %struct.__mbstate_t* %20 to i64*
  store i64 0, i64* %21, align 4
  %22 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 2
  store i8 0, i8* %22, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %23 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 2
  %24 = load i8, i8* %23, align 8
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i8 %24, 0
  %28 = icmp ne i32 %26, 0
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %86

; <label>:30:                                     ; preds = %12
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %32 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %33 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %3, i64 0, i32 3, i32 1
  %34 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 1
  br label %35

; <label>:35:                                     ; preds = %30, %73
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %36 = load i8, i8* %31, align 8
  %37 = icmp ne i8 %36, 0
  %38 = load i32, i32* %32, align 4
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %37, %39
  br i1 %40, label %85, label %41

; <label>:41:                                     ; preds = %35
  %42 = load i8, i8* %23, align 8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

; <label>:44:                                     ; preds = %41
  br i1 %37, label %45, label %101

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %25, align 4
  %47 = call i32 @towlower(i32 %46) #13
  %48 = load i32, i32* %32, align 4
  %49 = call i32 @towlower(i32 %48) #13
  %50 = sub nsw i32 %47, %49
  br label %70

; <label>:51:                                     ; preds = %41
  br i1 %37, label %101, label %52

; <label>:52:                                     ; preds = %51
  %53 = load i64, i64* %33, align 8
  %54 = load i64, i64* %34, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %52
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = call i32 @memcmp(i8* %57, i8* %58, i64 %53) #15
  br label %70

; <label>:60:                                     ; preds = %52
  %61 = icmp ult i64 %53, %54
  %62 = load i8*, i8** %15, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = select i1 %61, i64 %53, i64 %54
  %65 = xor i1 %61, true
  %66 = sext i1 %65 to i32
  %67 = call i32 @memcmp(i8* %62, i8* %63, i64 %64) #15
  %68 = icmp sgt i32 %67, %66
  %69 = select i1 %68, i32 1, i32 -1
  br label %103

; <label>:70:                                     ; preds = %56, %45
  %71 = phi i32 [ %50, %45 ], [ %59, %56 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %101

; <label>:73:                                     ; preds = %70
  %74 = load i64, i64* %33, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %15, align 8
  store i8 0, i8* %18, align 4
  %77 = load i64, i64* %34, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %19, align 8
  store i8 0, i8* %22, align 4
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %80 = load i8, i8* %23, align 8
  %81 = load i32, i32* %25, align 4
  %82 = icmp eq i8 %80, 0
  %83 = icmp ne i32 %81, 0
  %84 = or i1 %82, %83
  br i1 %84, label %35, label %85

; <label>:85:                                     ; preds = %35, %73
  br label %86

; <label>:86:                                     ; preds = %85, %12
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %3)
  %87 = load i8, i8* %23, align 8
  %88 = load i32, i32* %25, align 4
  %89 = icmp eq i8 %87, 0
  %90 = icmp ne i32 %88, 0
  %91 = or i1 %89, %90
  br i1 %91, label %103, label %92

; <label>:92:                                     ; preds = %86
  call void @mbuiter_multi_next(%struct.mbuiter_multi* nonnull %4)
  %93 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 2
  %94 = load i8, i8* %93, align 8
  %95 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %4, i64 0, i32 3, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i8 %94, 0
  %98 = icmp ne i32 %96, 0
  %99 = or i1 %97, %98
  %100 = sext i1 %99 to i32
  br label %103

; <label>:101:                                    ; preds = %70, %44, %51
  %102 = phi i32 [ -1, %44 ], [ 1, %51 ], [ %71, %70 ]
  br label %103

; <label>:103:                                    ; preds = %101, %60, %92, %86
  %104 = phi i32 [ 1, %86 ], [ %100, %92 ], [ %69, %60 ], [ %102, %101 ]
  call void @llvm.lifetime.end(i64 64, i8* nonnull %14) #13
  call void @llvm.lifetime.end(i64 64, i8* nonnull %13) #13
  br label %152

; <label>:105:                                    ; preds = %9, %142
  %106 = phi i8* [ %144, %142 ], [ %1, %9 ]
  %107 = phi i8* [ %143, %142 ], [ %0, %9 ]
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i16, i16* %11, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = and i16 %111, 256
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %119, label %114

; <label>:114:                                    ; preds = %105
  %115 = tail call i32** @__ctype_tolower_loc() #1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 %109
  %118 = load i32, i32* %117, align 4
  br label %121

; <label>:119:                                    ; preds = %105
  %120 = zext i8 %108 to i32
  br label %121

; <label>:121:                                    ; preds = %119, %114
  %122 = phi i32 [ %118, %114 ], [ %120, %119 ]
  %123 = load i8, i8* %106, align 1
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds i16, i16* %11, i64 %124
  %126 = load i16, i16* %125, align 2
  %127 = and i16 %126, 256
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %134, label %129

; <label>:129:                                    ; preds = %121
  %130 = tail call i32** @__ctype_tolower_loc() #1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 %124
  %133 = load i32, i32* %132, align 4
  br label %136

; <label>:134:                                    ; preds = %121
  %135 = zext i8 %123 to i32
  br label %136

; <label>:136:                                    ; preds = %134, %129
  %137 = phi i32 [ %133, %129 ], [ %135, %134 ]
  %138 = and i32 %122, 255
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %136
  %141 = and i32 %137, 255
  br label %148

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds i8, i8* %107, i64 1
  %144 = getelementptr inbounds i8, i8* %106, i64 1
  %145 = and i32 %137, 255
  %146 = icmp eq i32 %138, %145
  br i1 %146, label %105, label %147

; <label>:147:                                    ; preds = %142
  br label %148

; <label>:148:                                    ; preds = %147, %140
  %149 = phi i32 [ %141, %140 ], [ %145, %147 ]
  %150 = phi i32 [ 0, %140 ], [ %138, %147 ]
  %151 = sub nsw i32 %150, %149
  br label %152

; <label>:152:                                    ; preds = %2, %148, %103
  %153 = phi i32 [ %104, %103 ], [ %151, %148 ], [ 0, %2 ]
  ret i32 %153
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_next(%struct.mbuiter_multi*) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2
  %3 = load i8, i8* %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %64

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0
  %7 = load i8, i8* %6, align 8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  %10 = load i8*, i8** %9, align 8
  br i1 %8, label %13, label %11

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  br label %36

; <label>:13:                                     ; preds = %5
  %14 = load i8, i8* %10, align 1
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %15, 5
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([8 x i32]* @is_basic_table to [0 x i32]*), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, 31
  %21 = shl i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %13
  %25 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 1, i64* %25, align 8
  %26 = load i8, i8* %10, align 1
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 1, i8* %29, align 8
  br label %63

; <label>:30:                                     ; preds = %13
  %31 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  %32 = tail call i32 @mbsinit(%struct.__mbstate_t* %31) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %30
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.188, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.189, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16
  unreachable

; <label>:35:                                     ; preds = %30
  store i8 1, i8* %6, align 8
  br label %36

; <label>:36:                                     ; preds = %11, %35
  %37 = phi %struct.__mbstate_t* [ %12, %11 ], [ %31, %35 ]
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  %39 = tail call i64 @__ctype_get_mb_cur_max() #13
  %40 = tail call i64 @strnlen1(i8* %10, i64 %39) #15
  %41 = tail call i64 @rpl_mbrtowc(i32* %38, i8* %10, i64 %40, %struct.__mbstate_t* %37) #13
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 %41, i64* %42, align 8
  switch i64 %41, label %58 [
    i64 -1, label %43
    i64 -2, label %45
    i64 0, label %49
  ]

; <label>:43:                                     ; preds = %36
  store i64 1, i64* %42, align 8
  %44 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 0, i8* %44, align 8
  br label %63

; <label>:45:                                     ; preds = %36
  %46 = load i8*, i8** %9, align 8
  %47 = tail call i64 @strlen(i8* %46) #15
  store i64 %47, i64* %42, align 8
  %48 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 0, i8* %48, align 8
  br label %63

; <label>:49:                                     ; preds = %36
  store i64 1, i64* %42, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49
  tail call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.190, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.189, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16
  unreachable

; <label>:54:                                     ; preds = %49
  %55 = load i32, i32* %38, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %54
  tail call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.191, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.189, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.mbuiter_multi_next, i64 0, i64 0)) #16
  unreachable

; <label>:58:                                     ; preds = %36, %54
  %59 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 1, i8* %59, align 8
  %60 = tail call i32 @mbsinit(%struct.__mbstate_t* %37) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

; <label>:62:                                     ; preds = %58
  store i8 0, i8* %6, align 8
  br label %63

; <label>:63:                                     ; preds = %58, %43, %62, %45, %24
  store i8 1, i8* %2, align 4
  br label %64

; <label>:64:                                     ; preds = %1, %63
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_reloc(%struct.mbuiter_multi* nocapture, i64) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8* %5, i8** %3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mbuiter_multi_copy(%struct.mbuiter_multi*, %struct.mbuiter_multi* readonly) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 0
  %4 = load i8, i8* %3, align 8
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 0
  store i8 %4, i8* %6, align 8
  %7 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 1
  br i1 %5, label %13, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 1
  %10 = bitcast %struct.__mbstate_t* %9 to i64*
  %11 = bitcast %struct.__mbstate_t* %7 to i64*
  %12 = load i64, i64* %10, align 4
  store i64 %12, i64* %11, align 4
  br label %15

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.__mbstate_t* %7 to i64*
  store i64 0, i64* %14, align 4
  br label %15

; <label>:15:                                     ; preds = %13, %8
  %16 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 2
  %17 = load i8, i8* %16, align 4
  %18 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 2
  store i8 %17, i8* %18, align 4
  %19 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 4, i64 0
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1
  br label %29

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 4, i64 0
  %27 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 1
  %28 = load i64, i64* %27, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %20, i64 %28, i32 8, i1 false) #13
  br label %29

; <label>:29:                                     ; preds = %25, %23
  %30 = phi i64* [ %24, %23 ], [ %27, %25 ]
  %31 = phi i8* [ %20, %23 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %30, align 8
  %34 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 1
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 2
  %36 = load i8, i8* %35, align 8
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 2
  store i8 %36, i8* %38, align 8
  br i1 %37, label %43, label %39

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %1, i64 0, i32 3, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.mbuiter_multi, %struct.mbuiter_multi* %0, i64 0, i32 3, i32 3
  store i32 %41, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %29, %39
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.196, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18
  tail call void @abort() #16
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #15
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.197, i64 0, i64 0), i64 7) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.198, i64 0, i64 0), i64 3) #15
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
  tail call void @abort() #16
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.209, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.210, i64 0, i64 0), i32 %28)
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
  %75 = call i64 @strlen(i8* %53) #15
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
  call void @abort() #16
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.211, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.211, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.211, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.210, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.210, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.210, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.211, i64 0, i64 0), %41 ]
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
  %144 = call i64 @strlen(i8* %2) #15
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #15
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
  %311 = call i64 @strlen(i8* nonnull %2) #15
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #15
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.212, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.213, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.214, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.215, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.211, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.210, i64 0, i64 0)
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
  tail call void @abort() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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
  tail call void @abort() #16
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

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @strnlen1(i8*, i64) local_unnamed_addr #9 {
  %3 = tail call i8* @memchr(i8* %0, i32 0, i64 %1) #15
  %4 = icmp eq i8* %3, null
  %5 = ptrtoint i8* %3 to i64
  %6 = ptrtoint i8* %0 to i64
  %7 = sub i64 1, %6
  %8 = add i64 %7, %5
  %9 = select i1 %4, i64 %1, i64 %8
  ret i64 %9
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.230, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #13
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.231, i64 0, i64 0), i8* %2, i8* %3) #13
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.232, i64 0, i64 0), i32 5) #13
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #13
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.233, i64 0, i64 0), i32 5) #13
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
  tail call void @abort() #16
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.234, i64 0, i64 0), i32 5) #13
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #13
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.235, i64 0, i64 0), i32 5) #13
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #13
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.236, i64 0, i64 0), i32 5) #13
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #13
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.237, i64 0, i64 0), i32 5) #13
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.238, i64 0, i64 0), i32 5) #13
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.239, i64 0, i64 0), i32 5) #13
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.240, i64 0, i64 0), i32 5) #13
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.241, i64 0, i64 0), i32 5) #13
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.242, i64 0, i64 0), i32 5) #13
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.243, i64 0, i64 0), i32 5) #13
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.246, i64 0, i64 0), i32 5) #13
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.247, i64 0, i64 0)) #13
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.248, i64 0, i64 0), i32 5) #13
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.249, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.250, i64 0, i64 0)) #13
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.251, i64 0, i64 0), i32 5) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #13
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #16
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #13
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 {
  %2 = tail call noalias i8* @malloc(i64 %0) #13
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
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
  tail call void @xalloc_die() #16
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #15
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #13
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #16
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #13
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.270, i64 0, i64 0), i32 5) #13
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.271, i64 0, i64 0), i8* %2) #13
  tail call void @abort() #16
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.FTS* @xfts_open(i8**, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) local_unnamed_addr #6 {
  %4 = or i32 %1, 512
  %5 = tail call %struct.FTS* @fts_open(i8** %0, i32 %4, i32 (%struct._ftsent**, %struct._ftsent**)* %2) #13
  %6 = icmp eq %struct.FTS* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.274, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.275, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #16
  unreachable

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #16
  unreachable

; <label>:13:                                     ; preds = %3
  ret %struct.FTS* %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @cycle_warning_required(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 17
  %6 = trunc i32 %5 to i5
  switch i5 %6, label %11 [
    i5 -16, label %12
    i5 -15, label %7
  ]

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br label %12

; <label>:11:                                     ; preds = %2
  br label %12

; <label>:12:                                     ; preds = %2, %11, %7
  %13 = phi i1 [ %10, %7 ], [ true, %2 ], [ false, %11 ]
  ret i1 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #13
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.280, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.281, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #16
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null
  %12 = select i1 %11, i8** %1, i8** %6
  %13 = tail call i32* @__errno_location() #1
  store i32 0, i32* %13, align 4
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #13
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
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #13
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
  %40 = call i8* @strchr(i8* nonnull %4, i32 %39) #13
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
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #13
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #13
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

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #13
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.284, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.285, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #16
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
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #13
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
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #13
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
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #13
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
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #13
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #13
  ret i32 %266
}

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xstrtol_fatal(i32, i32, i8 signext, %struct.option* nocapture readonly, i8*) local_unnamed_addr #0 {
  %6 = alloca [2 x i8], align 1
  %7 = load volatile i32, i32* @exit_failure, align 4
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 2, i8* nonnull %8) #13
  %9 = add i32 %0, -1
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %5
  tail call void @abort() #16
  unreachable

; <label>:12:                                     ; preds = %5
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.288, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp slt i32 %1, 0
  %17 = sext i32 %1 to i64
  br i1 %16, label %18, label %22

; <label>:18:                                     ; preds = %12
  %19 = sub nsw i64 0, %17
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.289, i64 0, i64 %19
  store i8 %2, i8* %8, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %21, align 1
  br label %25

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %17, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.289, i64 0, i64 0), %22 ]
  %27 = phi i8* [ %8, %18 ], [ %24, %22 ]
  %28 = tail call i8* @dcgettext(i8* null, i8* %15, i32 5) #13
  call void (i32, i32, i8*, ...) @error(i32 %7, i32 0, i8* %28, i8* %26, i8* %27, i8* %4) #13
  call void @llvm.lifetime.end(i64 2, i8* nonnull %8) #13
  call void @abort() #16
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #13
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.295, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.296, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #16
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
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #13
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
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #13
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
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #13
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
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #13
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #13
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

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

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
define %struct._IO_FILE* @rpl_freopen(i8*, i8* nonnull, %struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %4 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* nonnull %1, %struct._IO_FILE* nonnull %2) #13
  %5 = icmp ne %struct._IO_FILE* %4, null
  %6 = icmp ne i8* %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @fileno(%struct._IO_FILE* nonnull %4) #13
  %10 = tail call i32 @dup2(i32 %9, i32 %9) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 9
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.305, i64 0, i64 0), i32 524288) #13
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @dup2(i32 %17, i32 %9) #13
  %21 = icmp slt i32 %20, 0
  %22 = tail call i32 @close(i32 %17) #13
  br i1 %21, label %25, label %23

; <label>:23:                                     ; preds = %19, %16
  %24 = tail call %struct._IO_FILE* @freopen(i8* nonnull %0, i8* nonnull %1, %struct._IO_FILE* nonnull %4) #13
  br label %25

; <label>:25:                                     ; preds = %19, %8, %12, %23, %3
  %26 = phi %struct._IO_FILE* [ %4, %3 ], [ %4, %12 ], [ %4, %8 ], [ %24, %23 ], [ %4, %19 ]
  ret %struct._IO_FILE* %26
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

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
define %struct.FTS* @fts_open(i8** nocapture readonly, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) local_unnamed_addr #6 {
  %4 = icmp ugt i32 %1, 8191
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32* @__errno_location() #1
  store i32 22, i32* %6, align 4
  br label %292

; <label>:7:                                      ; preds = %3
  %8 = and i32 %1, 516
  %9 = icmp eq i32 %8, 516
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno_location() #1
  store i32 22, i32* %11, align 4
  br label %292

; <label>:12:                                     ; preds = %7
  %13 = and i32 %1, 18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = tail call i32* @__errno_location() #1
  store i32 22, i32* %16, align 4
  br label %292

; <label>:17:                                     ; preds = %12
  %18 = tail call noalias i8* @malloc(i64 128) #13
  %19 = bitcast i8* %18 to %struct.FTS*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %292, label %21

; <label>:21:                                     ; preds = %17
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %18, i8 0, i64 128, i32 8, i1 false)
  %22 = getelementptr inbounds i8, i8* %18, i64 64
  %23 = bitcast i8* %22 to i32 (%struct._ftsent**, %struct._ftsent**)**
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %18, i64 72
  %25 = bitcast i8* %24 to i32*
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, -517
  %29 = or i32 %28, 4
  %30 = select i1 %27, i32 %1, i32 %29
  store i32 %30, i32* %25, align 8
  %31 = getelementptr inbounds i8, i8* %18, i64 44
  %32 = bitcast i8* %31 to i32*
  store i32 -100, i32* %32, align 4
  %33 = load i8*, i8** %0, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %48, label %35

; <label>:35:                                     ; preds = %21
  br label %36

; <label>:36:                                     ; preds = %35, %36
  %37 = phi i8* [ %44, %36 ], [ %33, %35 ]
  %38 = phi i64 [ %42, %36 ], [ 0, %35 ]
  %39 = phi i8** [ %43, %36 ], [ %0, %35 ]
  %40 = tail call i64 @strlen(i8* nonnull %37) #15
  %41 = icmp ugt i64 %40, %38
  %42 = select i1 %41, i64 %40, i64 %38
  %43 = getelementptr inbounds i8*, i8** %39, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %36

; <label>:46:                                     ; preds = %36
  %47 = add i64 %42, 1
  br label %48

; <label>:48:                                     ; preds = %46, %21
  %49 = phi i64 [ 1, %21 ], [ %47, %46 ]
  %50 = icmp ugt i64 %49, 4096
  %51 = select i1 %50, i64 %49, i64 4096
  %52 = add i64 %51, 256
  %53 = getelementptr inbounds i8, i8* %18, i64 48
  %54 = bitcast i8* %53 to i64*
  store i64 %52, i64* %54, align 8
  %55 = getelementptr inbounds i8, i8* %18, i64 32
  %56 = bitcast i8* %55 to i8**
  %57 = tail call i8* @realloc(i8* null, i64 %52) #13
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %48
  %60 = load i8*, i8** %56, align 8
  tail call void @free(i8* %60) #13
  br label %291

; <label>:61:                                     ; preds = %48
  store i8* %57, i8** %56, align 8
  %62 = load i8*, i8** %0, align 8
  %63 = icmp eq i8* %62, null
  %64 = ptrtoint i8* %57 to i64
  br i1 %63, label %87, label %65

; <label>:65:                                     ; preds = %61
  %66 = tail call noalias i8* @malloc(i64 272) #13
  %67 = icmp eq i8* %66, null
  br i1 %67, label %289, label %68

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds i8, i8* %66, i64 264
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds i8, i8* %66, i64 96
  %71 = bitcast i8* %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds i8, i8* %66, i64 80
  %73 = bitcast i8* %72 to i8**
  store i8* %18, i8** %73, align 8
  %74 = getelementptr inbounds i8, i8* %66, i64 56
  %75 = bitcast i8* %74 to i64*
  store i64 %64, i64* %75, align 8
  %76 = getelementptr inbounds i8, i8* %66, i64 64
  %77 = bitcast i8* %76 to i32*
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds i8, i8* %66, i64 24
  %79 = bitcast i8* %78 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %79, align 8
  %80 = getelementptr inbounds i8, i8* %66, i64 114
  %81 = bitcast i8* %80 to i16*
  store i16 0, i16* %81, align 2
  %82 = getelementptr inbounds i8, i8* %66, i64 116
  %83 = bitcast i8* %82 to i16*
  store i16 3, i16* %83, align 4
  %84 = getelementptr inbounds i8, i8* %66, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %84, i8 0, i64 16, i32 8, i1 false) #13
  %85 = getelementptr inbounds i8, i8* %66, i64 88
  %86 = bitcast i8* %85 to i64*
  store i64 -1, i64* %86, align 8
  br label %87

; <label>:87:                                     ; preds = %61, %68
  %88 = phi i8* [ %66, %68 ], [ null, %61 ]
  %89 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %25, align 8
  %92 = and i32 %91, 1024
  %93 = icmp ne i32 %92, 0
  br label %94

; <label>:94:                                     ; preds = %90, %87
  %95 = phi i1 [ true, %87 ], [ %93, %90 ]
  br i1 %63, label %191, label %96

; <label>:96:                                     ; preds = %94
  %97 = and i32 %1, 4096
  %98 = icmp eq i32 %97, 0
  %99 = bitcast i8* %55 to i64*
  br label %100

; <label>:100:                                    ; preds = %96, %178
  %101 = phi i8* [ %62, %96 ], [ %183, %178 ]
  %102 = phi i8** [ %0, %96 ], [ %181, %178 ]
  %103 = phi %struct._ftsent* [ null, %96 ], [ %180, %178 ]
  %104 = phi %struct._ftsent* [ null, %96 ], [ %179, %178 ]
  %105 = phi i64 [ 0, %96 ], [ %182, %178 ]
  %106 = tail call i64 @strlen(i8* nonnull %101) #15
  %107 = icmp ugt i64 %106, 2
  %108 = and i1 %98, %107
  br i1 %108, label %109, label %126

; <label>:109:                                    ; preds = %100
  %110 = add i64 %106, -1
  %111 = getelementptr inbounds i8, i8* %101, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = icmp eq i8 %112, 47
  br i1 %113, label %114, label %126

; <label>:114:                                    ; preds = %109
  br label %115

; <label>:115:                                    ; preds = %114, %121
  %116 = phi i64 [ %122, %121 ], [ %106, %114 ]
  %117 = add i64 %116, -2
  %118 = getelementptr inbounds i8, i8* %101, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = icmp eq i8 %119, 47
  br i1 %120, label %121, label %124

; <label>:121:                                    ; preds = %115
  %122 = add i64 %116, -1
  %123 = icmp ugt i64 %122, 1
  br i1 %123, label %115, label %124

; <label>:124:                                    ; preds = %115, %121
  %125 = phi i64 [ %116, %115 ], [ %122, %121 ]
  br label %126

; <label>:126:                                    ; preds = %124, %109, %100
  %127 = phi i64 [ %106, %100 ], [ %106, %109 ], [ %125, %124 ]
  %128 = add i64 %127, 272
  %129 = and i64 %128, -8
  %130 = tail call noalias i8* @malloc(i64 %129) #13
  %131 = icmp eq i8* %130, null
  br i1 %131, label %269, label %132

; <label>:132:                                    ; preds = %126
  %133 = bitcast i8* %130 to %struct._ftsent*
  %134 = getelementptr inbounds i8, i8* %130, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* nonnull %101, i64 %127, i32 1, i1 false) #13
  %135 = getelementptr inbounds i8, i8* %134, i64 %127
  store i8 0, i8* %135, align 1
  %136 = getelementptr inbounds i8, i8* %130, i64 96
  %137 = bitcast i8* %136 to i64*
  store i64 %127, i64* %137, align 8
  %138 = getelementptr inbounds i8, i8* %130, i64 80
  %139 = bitcast i8* %138 to i8**
  store i8* %18, i8** %139, align 8
  %140 = load i64, i64* %99, align 8
  %141 = getelementptr inbounds i8, i8* %130, i64 56
  %142 = bitcast i8* %141 to i64*
  store i64 %140, i64* %142, align 8
  %143 = getelementptr inbounds i8, i8* %130, i64 64
  %144 = bitcast i8* %143 to i32*
  store i32 0, i32* %144, align 8
  %145 = getelementptr inbounds i8, i8* %130, i64 24
  %146 = bitcast i8* %145 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %146, align 8
  %147 = getelementptr inbounds i8, i8* %130, i64 114
  %148 = bitcast i8* %147 to i16*
  store i16 0, i16* %148, align 2
  %149 = getelementptr inbounds i8, i8* %130, i64 116
  %150 = bitcast i8* %149 to i16*
  store i16 3, i16* %150, align 4
  %151 = getelementptr inbounds i8, i8* %130, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %151, i8 0, i64 16, i32 8, i1 false) #13
  %152 = getelementptr inbounds i8, i8* %130, i64 88
  %153 = bitcast i8* %152 to i64*
  store i64 0, i64* %153, align 8
  %154 = getelementptr inbounds i8, i8* %130, i64 8
  %155 = bitcast i8* %154 to i8**
  store i8* %88, i8** %155, align 8
  %156 = getelementptr inbounds i8, i8* %130, i64 48
  %157 = bitcast i8* %156 to i8**
  store i8* %134, i8** %157, align 8
  %158 = icmp ne %struct._ftsent* %103, null
  %159 = and i1 %95, %158
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %132
  %161 = getelementptr inbounds i8, i8* %130, i64 112
  %162 = bitcast i8* %161 to i16*
  store i16 11, i16* %162, align 8
  %163 = getelementptr inbounds i8, i8* %130, i64 168
  %164 = bitcast i8* %163 to i64*
  store i64 2, i64* %164, align 8
  br label %169

; <label>:165:                                    ; preds = %132
  %166 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %19, %struct._ftsent* nonnull %133, i1 zeroext false)
  %167 = getelementptr inbounds i8, i8* %130, i64 112
  %168 = bitcast i8* %167 to i16*
  store i16 %166, i16* %168, align 8
  br label %169

; <label>:169:                                    ; preds = %165, %160
  %170 = getelementptr inbounds i8, i8* %130, i64 16
  %171 = bitcast i8* %170 to %struct._ftsent**
  br i1 %89, label %173, label %172

; <label>:172:                                    ; preds = %169
  store %struct._ftsent* %103, %struct._ftsent** %171, align 8
  br label %178

; <label>:173:                                    ; preds = %169
  store %struct._ftsent* null, %struct._ftsent** %171, align 8
  %174 = icmp eq %struct._ftsent* %103, null
  br i1 %174, label %178, label %175

; <label>:175:                                    ; preds = %173
  %176 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %104, i64 0, i32 2
  %177 = bitcast %struct._ftsent** %176 to i8**
  store i8* %130, i8** %177, align 8
  br label %178

; <label>:178:                                    ; preds = %173, %175, %172
  %179 = phi %struct._ftsent* [ %133, %173 ], [ %133, %175 ], [ %104, %172 ]
  %180 = phi %struct._ftsent* [ %133, %173 ], [ %103, %175 ], [ %133, %172 ]
  %181 = getelementptr inbounds i8*, i8** %102, i64 1
  %182 = add i64 %105, 1
  %183 = load i8*, i8** %181, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %100

; <label>:185:                                    ; preds = %178
  %186 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  %187 = icmp ugt i64 %182, 1
  %188 = and i1 %186, %187
  br i1 %188, label %189, label %191

; <label>:189:                                    ; preds = %185
  %190 = tail call fastcc %struct._ftsent* @fts_sort(%struct.FTS* %19, %struct._ftsent* nonnull %180, i64 %182)
  br label %191

; <label>:191:                                    ; preds = %94, %189, %185
  %192 = phi %struct._ftsent* [ %190, %189 ], [ %180, %185 ], [ null, %94 ]
  %193 = tail call noalias i8* @malloc(i64 272) #13
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %197

; <label>:195:                                    ; preds = %191
  %196 = bitcast i8* %18 to %struct._ftsent**
  store %struct._ftsent* null, %struct._ftsent** %196, align 8
  br label %270

; <label>:197:                                    ; preds = %191
  %198 = getelementptr inbounds i8, i8* %193, i64 264
  store i8 0, i8* %198, align 1
  %199 = getelementptr inbounds i8, i8* %193, i64 96
  %200 = bitcast i8* %199 to i64*
  store i64 0, i64* %200, align 8
  %201 = getelementptr inbounds i8, i8* %193, i64 80
  %202 = bitcast i8* %201 to i8**
  store i8* %18, i8** %202, align 8
  %203 = bitcast i8* %55 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i8, i8* %193, i64 56
  %206 = bitcast i8* %205 to i64*
  store i64 %204, i64* %206, align 8
  %207 = getelementptr inbounds i8, i8* %193, i64 64
  %208 = bitcast i8* %207 to i32*
  store i32 0, i32* %208, align 8
  %209 = getelementptr inbounds i8, i8* %193, i64 24
  %210 = bitcast i8* %209 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %210, align 8
  %211 = getelementptr inbounds i8, i8* %193, i64 114
  %212 = bitcast i8* %211 to i16*
  store i16 0, i16* %212, align 2
  %213 = getelementptr inbounds i8, i8* %193, i64 116
  %214 = bitcast i8* %213 to i16*
  store i16 3, i16* %214, align 4
  %215 = getelementptr inbounds i8, i8* %193, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %215, i8 0, i64 16, i32 8, i1 false) #13
  %216 = bitcast i8* %18 to i8**
  store i8* %193, i8** %216, align 8
  %217 = getelementptr inbounds i8, i8* %193, i64 16
  %218 = bitcast i8* %217 to %struct._ftsent**
  store %struct._ftsent* %192, %struct._ftsent** %218, align 8
  %219 = getelementptr inbounds i8, i8* %193, i64 112
  %220 = bitcast i8* %219 to i16*
  store i16 9, i16* %220, align 8
  %221 = load i32, i32* %25, align 8
  %222 = and i32 %221, 258
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %229, label %224

; <label>:224:                                    ; preds = %197
  %225 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #13
  %226 = getelementptr inbounds i8, i8* %18, i64 88
  %227 = bitcast i8* %226 to %struct.hash_table**
  store %struct.hash_table* %225, %struct.hash_table** %227, align 8
  %228 = icmp eq %struct.hash_table* %225, null
  br i1 %228, label %270, label %236

; <label>:229:                                    ; preds = %197
  %230 = tail call noalias i8* @malloc(i64 32) #13
  %231 = getelementptr inbounds i8, i8* %18, i64 88
  %232 = bitcast i8* %231 to i8**
  store i8* %230, i8** %232, align 8
  %233 = icmp eq i8* %230, null
  br i1 %233, label %270, label %234

; <label>:234:                                    ; preds = %229
  %235 = bitcast i8* %230 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %235) #13
  br label %236

; <label>:236:                                    ; preds = %234, %224
  %237 = load i32, i32* %25, align 8
  %238 = and i32 %237, 516
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %266

; <label>:240:                                    ; preds = %236
  %241 = shl i32 %237, 13
  %242 = and i32 %241, 131072
  %243 = shl i32 %237, 7
  %244 = and i32 %243, 262144
  %245 = or i32 %242, %244
  %246 = or i32 %245, 67840
  %247 = and i32 %237, 512
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

; <label>:249:                                    ; preds = %240
  %250 = load i32, i32* %32, align 4
  %251 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %246) #13
  br label %254

; <label>:252:                                    ; preds = %240
  %253 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %246) #13
  br label %254

; <label>:254:                                    ; preds = %252, %249
  %255 = phi i32 [ %251, %249 ], [ %253, %252 ]
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %257, label %261

; <label>:257:                                    ; preds = %254
  %258 = tail call i32 @set_cloexec_flag(i32 %255, i1 zeroext true) #13
  %259 = getelementptr inbounds i8, i8* %18, i64 40
  %260 = bitcast i8* %259 to i32*
  store i32 %255, i32* %260, align 8
  br label %266

; <label>:261:                                    ; preds = %254
  %262 = getelementptr inbounds i8, i8* %18, i64 40
  %263 = bitcast i8* %262 to i32*
  store i32 %255, i32* %263, align 8
  %264 = load i32, i32* %25, align 8
  %265 = or i32 %264, 4
  store i32 %265, i32* %25, align 8
  br label %266

; <label>:266:                                    ; preds = %257, %236, %261
  %267 = getelementptr inbounds i8, i8* %18, i64 96
  %268 = bitcast i8* %267 to %struct.I_ring*
  tail call void @i_ring_init(%struct.I_ring* %268, i32 -1) #13
  br label %292

; <label>:269:                                    ; preds = %126
  br label %270

; <label>:270:                                    ; preds = %269, %229, %224, %195
  %271 = phi %struct._ftsent* [ %192, %195 ], [ %192, %224 ], [ %192, %229 ], [ %103, %269 ]
  %272 = icmp eq %struct._ftsent* %271, null
  br i1 %272, label %287, label %273

; <label>:273:                                    ; preds = %270
  br label %274

; <label>:274:                                    ; preds = %273, %283
  %275 = phi %struct._ftsent* [ %277, %283 ], [ %271, %273 ]
  %276 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %275, i64 0, i32 2
  %277 = load %struct._ftsent*, %struct._ftsent** %276, align 8
  %278 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %275, i64 0, i32 3
  %279 = load %struct.__dirstream*, %struct.__dirstream** %278, align 8
  %280 = icmp eq %struct.__dirstream* %279, null
  br i1 %280, label %283, label %281

; <label>:281:                                    ; preds = %274
  %282 = tail call i32 @closedir(%struct.__dirstream* nonnull %279) #13
  br label %283

; <label>:283:                                    ; preds = %281, %274
  %284 = bitcast %struct._ftsent* %275 to i8*
  tail call void @free(i8* %284) #13
  %285 = icmp eq %struct._ftsent* %277, null
  br i1 %285, label %286, label %274

; <label>:286:                                    ; preds = %283
  br label %287

; <label>:287:                                    ; preds = %286, %270
  tail call void @free(i8* %88) #13
  %288 = load i8*, i8** %56, align 8
  br label %289

; <label>:289:                                    ; preds = %65, %287
  %290 = phi i8* [ %57, %65 ], [ %288, %287 ]
  tail call void @free(i8* %290) #13
  br label %291

; <label>:291:                                    ; preds = %59, %289
  tail call void @free(i8* nonnull %18) #13
  br label %292

; <label>:292:                                    ; preds = %17, %291, %266, %15, %10, %5
  %293 = phi %struct.FTS* [ null, %5 ], [ null, %10 ], [ null, %291 ], [ %19, %266 ], [ null, %15 ], [ null, %17 ]
  ret %struct.FTS* %293
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @fts_stat(%struct.FTS* nocapture readonly, %struct._ftsent*, i1 zeroext) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %5 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %3
  %9 = zext i1 %2 to i8
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %11 = load i32, i32* %10, align 8
  br label %19

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = or i1 %16, %2
  %18 = zext i1 %17 to i8
  br label %19

; <label>:19:                                     ; preds = %8, %12
  %20 = phi i32* [ %10, %8 ], [ %13, %12 ]
  %21 = phi i32 [ %11, %8 ], [ %14, %12 ]
  %22 = phi i8 [ %9, %8 ], [ %18, %12 ]
  %23 = and i32 %21, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i8 %22, 0
  %26 = and i1 %25, %24
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = tail call i32 @__xstat(i32 1, i8* nonnull %29, %struct.stat* nonnull %4) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %28, align 8
  %38 = tail call i32 @__lxstat(i32 1, i8* nonnull %37, %struct.stat* nonnull %4) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

; <label>:40:                                     ; preds = %36
  store i32 0, i32* %33, align 4
  br label %86

; <label>:41:                                     ; preds = %19
  %42 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = tail call i32 @__fxstatat(i32 1, i32 %43, i8* nonnull %45, %struct.stat* nonnull %4, i32 256) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

; <label>:48:                                     ; preds = %41
  %49 = tail call i32* @__errno_location() #1
  %50 = load i32, i32* %49, align 4
  br label %51

; <label>:51:                                     ; preds = %32, %36, %48
  %52 = phi i32 [ %50, %48 ], [ 2, %36 ], [ %34, %32 ]
  %53 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  store i32 %52, i32* %53, align 8
  %54 = bitcast %struct.stat* %4 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 144, i32 8, i1 false)
  br label %86

; <label>:55:                                     ; preds = %27, %41
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = trunc i32 %57 to i16
  %59 = and i16 %58, -4096
  switch i16 %59, label %85 [
    i16 16384, label %60
    i16 -24576, label %86
    i16 -32768, label %84
  ]

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %20, align 8
  %64 = lshr i32 %63, 4
  %65 = and i32 %64, 2
  %66 = xor i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = sub i64 %62, %67
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 14
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 0
  %71 = load i8, i8* %70, align 8
  %72 = icmp eq i8 %71, 46
  br i1 %72, label %73, label %86

; <label>:73:                                     ; preds = %60
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 1
  %75 = load i8, i8* %74, align 1
  switch i8 %75, label %86 [
    i8 0, label %80
    i8 46, label %76
  ]

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 2
  %78 = load i8, i8* %77, align 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %73, %76
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %81, 0
  %83 = select i1 %82, i16 1, i16 5
  br label %86

; <label>:84:                                     ; preds = %55
  br label %86

; <label>:85:                                     ; preds = %55
  br label %86

; <label>:86:                                     ; preds = %55, %60, %76, %73, %85, %84, %80, %51, %40
  %87 = phi i16 [ 13, %40 ], [ 10, %51 ], [ %83, %80 ], [ 8, %84 ], [ 3, %85 ], [ 1, %73 ], [ 1, %76 ], [ 1, %60 ], [ 12, %55 ]
  ret i16 %87
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct._ftsent* @fts_sort(%struct.FTS* nocapture, %struct._ftsent*, i64) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %5 = bitcast i32 (%struct._ftsent**, %struct._ftsent**)** %4 to i32 (i8*, i8*)**
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %12 = load %struct._ftsent**, %struct._ftsent*** %11, align 8
  %13 = bitcast %struct._ftsent** %12 to i8*
  br label %28

; <label>:14:                                     ; preds = %3
  %15 = add i64 %2, 40
  store i64 %15, i64* %7, align 8
  %16 = icmp ugt i64 %15, 2305843009213693951
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %18 = bitcast %struct._ftsent*** %17 to i8**
  br i1 %16, label %24, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %18, align 8
  %21 = shl i64 %15, 3
  %22 = tail call i8* @realloc(i8* %20, i64 %21) #13
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %14, %19
  %25 = load i8*, i8** %18, align 8
  tail call void @free(i8* %25) #13
  store %struct._ftsent** null, %struct._ftsent*** %17, align 8
  store i64 0, i64* %7, align 8
  br label %119

; <label>:26:                                     ; preds = %19
  store i8* %22, i8** %18, align 8
  %27 = bitcast i8* %22 to %struct._ftsent**
  br label %28

; <label>:28:                                     ; preds = %10, %26
  %29 = phi %struct._ftsent*** [ %11, %10 ], [ %17, %26 ]
  %30 = phi i8* [ %13, %10 ], [ %22, %26 ]
  %31 = phi %struct._ftsent** [ %12, %10 ], [ %27, %26 ]
  %32 = icmp eq %struct._ftsent* %1, null
  br i1 %32, label %44, label %33

; <label>:33:                                     ; preds = %28
  br label %34

; <label>:34:                                     ; preds = %33, %34
  %35 = phi %struct._ftsent* [ %39, %34 ], [ %1, %33 ]
  %36 = phi %struct._ftsent** [ %37, %34 ], [ %31, %33 ]
  %37 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %36, i64 1
  store %struct._ftsent* %35, %struct._ftsent** %36, align 8
  %38 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %35, i64 0, i32 2
  %39 = load %struct._ftsent*, %struct._ftsent** %38, align 8
  %40 = icmp eq %struct._ftsent* %39, null
  br i1 %40, label %41, label %34

; <label>:41:                                     ; preds = %34
  %42 = bitcast %struct._ftsent*** %29 to i8**
  %43 = load i8*, i8** %42, align 8
  br label %44

; <label>:44:                                     ; preds = %28, %41
  %45 = phi i8* [ %43, %41 ], [ %30, %28 ]
  tail call void @qsort(i8* %45, i64 %2, i64 8, i32 (i8*, i8*)* %6) #13
  %46 = load %struct._ftsent**, %struct._ftsent*** %29, align 8
  %47 = load %struct._ftsent*, %struct._ftsent** %46, align 8
  %48 = add i64 %2, -1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %116, label %50

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %46, i64 1
  %52 = bitcast %struct._ftsent** %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %47, i64 0, i32 2
  %55 = bitcast %struct._ftsent** %54 to i64*
  store i64 %53, i64* %55, align 8
  %56 = add i64 %2, -2
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %113, label %58

; <label>:58:                                     ; preds = %50
  %59 = add i64 %2, -3
  %60 = and i64 %56, 3
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %63, %62
  %64 = phi i64 [ %73, %63 ], [ %56, %62 ]
  %65 = phi %struct._ftsent** [ %68, %63 ], [ %51, %62 ]
  %66 = phi i64 [ %74, %63 ], [ %60, %62 ]
  %67 = load %struct._ftsent*, %struct._ftsent** %65, align 8
  %68 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %65, i64 1
  %69 = bitcast %struct._ftsent** %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %67, i64 0, i32 2
  %72 = bitcast %struct._ftsent** %71 to i64*
  store i64 %70, i64* %72, align 8
  %73 = add i64 %64, -1
  %74 = add i64 %66, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %63

; <label>:76:                                     ; preds = %63
  br label %77

; <label>:77:                                     ; preds = %58, %76
  %78 = phi i64 [ %56, %58 ], [ %73, %76 ]
  %79 = phi %struct._ftsent** [ %51, %58 ], [ %68, %76 ]
  %80 = icmp ult i64 %59, 3
  br i1 %80, label %112, label %81

; <label>:81:                                     ; preds = %77
  br label %82

; <label>:82:                                     ; preds = %82, %81
  %83 = phi i64 [ %78, %81 ], [ %109, %82 ]
  %84 = phi %struct._ftsent** [ %79, %81 ], [ %104, %82 ]
  %85 = load %struct._ftsent*, %struct._ftsent** %84, align 8
  %86 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 1
  %87 = bitcast %struct._ftsent** %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %85, i64 0, i32 2
  %90 = bitcast %struct._ftsent** %89 to i64*
  store i64 %88, i64* %90, align 8
  %91 = load %struct._ftsent*, %struct._ftsent** %86, align 8
  %92 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 2
  %93 = bitcast %struct._ftsent** %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %91, i64 0, i32 2
  %96 = bitcast %struct._ftsent** %95 to i64*
  store i64 %94, i64* %96, align 8
  %97 = load %struct._ftsent*, %struct._ftsent** %92, align 8
  %98 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 3
  %99 = bitcast %struct._ftsent** %98 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %97, i64 0, i32 2
  %102 = bitcast %struct._ftsent** %101 to i64*
  store i64 %100, i64* %102, align 8
  %103 = load %struct._ftsent*, %struct._ftsent** %98, align 8
  %104 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 4
  %105 = bitcast %struct._ftsent** %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %103, i64 0, i32 2
  %108 = bitcast %struct._ftsent** %107 to i64*
  store i64 %106, i64* %108, align 8
  %109 = add i64 %83, -4
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %82

; <label>:111:                                    ; preds = %82
  br label %112

; <label>:112:                                    ; preds = %77, %111
  br label %113

; <label>:113:                                    ; preds = %112, %50
  %114 = getelementptr %struct._ftsent*, %struct._ftsent** %46, i64 %48
  %115 = load %struct._ftsent*, %struct._ftsent** %114, align 8
  br label %116

; <label>:116:                                    ; preds = %113, %44
  %117 = phi %struct._ftsent* [ %47, %44 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %118, align 8
  br label %119

; <label>:119:                                    ; preds = %24, %116
  %120 = phi %struct._ftsent* [ %47, %116 ], [ %1, %24 ]
  ret %struct._ftsent* %120
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @AD_hash(i8* nocapture readonly, i64) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @AD_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8* %0 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = bitcast i8* %1 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %12, %14
  br label %16

; <label>:16:                                     ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @fts_close(%struct.FTS*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %26, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 12
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %5
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi %struct._ftsent* [ %17, %10 ], [ %3, %9 ]
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %11, i64 0, i32 2
  %13 = load %struct._ftsent*, %struct._ftsent** %12, align 8
  %14 = icmp ne %struct._ftsent* %13, null
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %11, i64 0, i32 1
  %16 = select i1 %14, %struct._ftsent** %12, %struct._ftsent** %15
  %17 = load %struct._ftsent*, %struct._ftsent** %16, align 8
  %18 = bitcast %struct._ftsent* %11 to i8*
  tail call void @free(i8* %18) #13
  %19 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %17, i64 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %10, label %22

; <label>:22:                                     ; preds = %10
  br label %23

; <label>:23:                                     ; preds = %22, %5
  %24 = phi %struct._ftsent* [ %3, %5 ], [ %17, %22 ]
  %25 = bitcast %struct._ftsent* %24 to i8*
  tail call void @free(i8* %25) #13
  br label %26

; <label>:26:                                     ; preds = %1, %23
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %28 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %29 = icmp eq %struct._ftsent* %28, null
  br i1 %29, label %44, label %30

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %30, %40
  %32 = phi %struct._ftsent* [ %34, %40 ], [ %28, %30 ]
  %33 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 2
  %34 = load %struct._ftsent*, %struct._ftsent** %33, align 8
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 3
  %36 = load %struct.__dirstream*, %struct.__dirstream** %35, align 8
  %37 = icmp eq %struct.__dirstream* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %31
  %39 = tail call i32 @closedir(%struct.__dirstream* nonnull %36) #13
  br label %40

; <label>:40:                                     ; preds = %38, %31
  %41 = bitcast %struct._ftsent* %32 to i8*
  tail call void @free(i8* %41) #13
  %42 = icmp eq %struct._ftsent* %34, null
  br i1 %42, label %43, label %31

; <label>:43:                                     ; preds = %40
  br label %44

; <label>:44:                                     ; preds = %43, %26
  %45 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %46 = bitcast %struct._ftsent*** %45 to i8**
  %47 = load i8*, i8** %46, align 8
  tail call void @free(i8* %47) #13
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %49 = load i8*, i8** %48, align 8
  tail call void @free(i8* %49) #13
  %50 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

; <label>:54:                                     ; preds = %44
  %55 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %85

; <label>:58:                                     ; preds = %54
  %59 = tail call i32 @close(i32 %56) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno_location() #1
  %63 = load i32, i32* %62, align 4
  br label %85

; <label>:64:                                     ; preds = %44
  %65 = and i32 %51, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = tail call i32 @fchdir(i32 %69) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

; <label>:72:                                     ; preds = %67
  %73 = tail call i32* @__errno_location() #1
  %74 = load i32, i32* %73, align 4
  br label %75

; <label>:75:                                     ; preds = %67, %72
  %76 = phi i32 [ %74, %72 ], [ 0, %67 ]
  %77 = load i32, i32* %68, align 8
  %78 = tail call i32 @close(i32 %77) #13
  %79 = icmp ne i32 %78, 0
  %80 = icmp eq i32 %76, 0
  %81 = and i1 %80, %79
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #1
  %84 = load i32, i32* %83, align 4
  br label %85

; <label>:85:                                     ; preds = %58, %64, %82, %75, %54, %61
  %86 = phi i32 [ %63, %61 ], [ 0, %58 ], [ 0, %54 ], [ 0, %64 ], [ %84, %82 ], [ %76, %75 ]
  %87 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %88 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #15
  br i1 %88, label %98, label %89

; <label>:89:                                     ; preds = %85
  br label %90

; <label>:90:                                     ; preds = %89, %95
  %91 = tail call i32 @i_ring_pop(%struct.I_ring* %87) #13
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %90
  %94 = tail call i32 @close(i32 %91) #13
  br label %95

; <label>:95:                                     ; preds = %93, %90
  %96 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #15
  br i1 %96, label %97, label %90

; <label>:97:                                     ; preds = %95
  br label %98

; <label>:98:                                     ; preds = %97, %85
  %99 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 11
  %100 = load %struct.hash_table*, %struct.hash_table** %99, align 8
  %101 = icmp eq %struct.hash_table* %100, null
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %98
  tail call void @hash_free(%struct.hash_table* nonnull %100) #13
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = load i32, i32* %50, align 8
  %105 = and i32 %104, 258
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  br i1 %106, label %113, label %108

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %union.anon, %union.anon* %107, i64 0, i32 0
  %110 = load %struct.hash_table*, %struct.hash_table** %109, align 8
  %111 = icmp eq %struct.hash_table* %110, null
  br i1 %111, label %116, label %112

; <label>:112:                                    ; preds = %108
  tail call void @hash_free(%struct.hash_table* nonnull %110) #13
  br label %116

; <label>:113:                                    ; preds = %103
  %114 = bitcast %union.anon* %107 to i8**
  %115 = load i8*, i8** %114, align 8
  tail call void @free(i8* %115) #13
  br label %116

; <label>:116:                                    ; preds = %108, %112, %113
  %117 = bitcast %struct.FTS* %0 to i8*
  tail call void @free(i8* %117) #13
  %118 = icmp eq i32 %86, 0
  br i1 %118, label %121, label %119

; <label>:119:                                    ; preds = %116
  %120 = tail call i32* @__errno_location() #1
  store i32 %86, i32* %120, align 4
  br label %121

; <label>:121:                                    ; preds = %116, %119
  %122 = phi i32 [ -1, %119 ], [ 0, %116 ]
  ret i32 %122
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._ftsent* @fts_read(%struct.FTS*) local_unnamed_addr #6 {
  %2 = alloca %struct.statfs, align 8
  %3 = alloca %struct.LCO_ent, align 8
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %6 = icmp eq %struct._ftsent* %5, null
  br i1 %6, label %538, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %538

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17
  %14 = load i16, i16* %13, align 4
  store i16 3, i16* %13, align 4
  switch i16 %14, label %15 [
    i16 1, label %18
    i16 2, label %21
  ]

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %17 = load i16, i16* %16, align 8
  br label %62

; <label>:18:                                     ; preds = %12
  %19 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 %19, i16* %20, align 8
  br label %538

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, -2
  %25 = icmp eq i16 %24, 12
  br i1 %25, label %26, label %62

; <label>:26:                                     ; preds = %21
  %27 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext true)
  store i16 %27, i16* %22, align 8
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %326

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %8, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %326

; <label>:33:                                     ; preds = %29
  %34 = shl i32 %30, 13
  %35 = and i32 %34, 131072
  %36 = shl i32 %30, 7
  %37 = and i32 %36, 262144
  %38 = or i32 %35, %37
  %39 = or i32 %38, 67840
  %40 = and i32 %30, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %39) #13
  br label %48

; <label>:46:                                     ; preds = %33
  %47 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %39) #13
  br label %48

; <label>:48:                                     ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  store i32 %49, i32* %52, align 4
  %53 = tail call i32* @__errno_location() #1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %54, i32* %55, align 8
  store i16 7, i16* %22, align 8
  br label %326

; <label>:56:                                     ; preds = %48
  %57 = tail call i32 @set_cloexec_flag(i32 %49, i1 zeroext true) #13
  %58 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  store i32 %49, i32* %58, align 4
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %60 = load i16, i16* %59, align 2
  %61 = or i16 %60, 2
  store i16 %61, i16* %59, align 2
  br label %326

; <label>:62:                                     ; preds = %15, %21
  %63 = phi i16* [ %16, %15 ], [ %22, %21 ]
  %64 = phi i16 [ %17, %15 ], [ %23, %21 ]
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %62
  br label %174

; <label>:67:                                     ; preds = %62
  %68 = icmp eq i16 %14, 4
  br i1 %68, label %78, label %69

; <label>:69:                                     ; preds = %67
  %70 = and i32 %9, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %106, label %72

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 18, i64 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %106, label %78

; <label>:78:                                     ; preds = %72, %67
  %79 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %80 = load i16, i16* %79, align 2
  %81 = and i16 %80, 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %87, label %83

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = tail call i32 @close(i32 %85) #13
  br label %87

; <label>:87:                                     ; preds = %78, %83
  %88 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %89 = load %struct._ftsent*, %struct._ftsent** %88, align 8
  %90 = icmp eq %struct._ftsent* %89, null
  br i1 %90, label %105, label %91

; <label>:91:                                     ; preds = %87
  br label %92

; <label>:92:                                     ; preds = %91, %101
  %93 = phi %struct._ftsent* [ %95, %101 ], [ %89, %91 ]
  %94 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %93, i64 0, i32 2
  %95 = load %struct._ftsent*, %struct._ftsent** %94, align 8
  %96 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %93, i64 0, i32 3
  %97 = load %struct.__dirstream*, %struct.__dirstream** %96, align 8
  %98 = icmp eq %struct.__dirstream* %97, null
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @closedir(%struct.__dirstream* nonnull %97) #13
  br label %101

; <label>:101:                                    ; preds = %99, %92
  %102 = bitcast %struct._ftsent* %93 to i8*
  tail call void @free(i8* %102) #13
  %103 = icmp eq %struct._ftsent* %95, null
  br i1 %103, label %104, label %92

; <label>:104:                                    ; preds = %101
  store %struct._ftsent* null, %struct._ftsent** %88, align 8
  br label %105

; <label>:105:                                    ; preds = %87, %104
  store i16 6, i16* %63, align 8
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* %5)
  br label %538

; <label>:106:                                    ; preds = %72, %69
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %108 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  %109 = icmp eq %struct._ftsent* %108, null
  br i1 %109, label %155, label %110

; <label>:110:                                    ; preds = %106
  %111 = and i32 %9, 8192
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113

; <label>:113:                                    ; preds = %110
  %114 = and i32 %9, -8193
  store i32 %114, i32* %8, align 8
  br label %115

; <label>:115:                                    ; preds = %113, %124
  %116 = phi %struct._ftsent* [ %118, %124 ], [ %108, %113 ]
  %117 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %116, i64 0, i32 2
  %118 = load %struct._ftsent*, %struct._ftsent** %117, align 8
  %119 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %116, i64 0, i32 3
  %120 = load %struct.__dirstream*, %struct.__dirstream** %119, align 8
  %121 = icmp eq %struct.__dirstream* %120, null
  br i1 %121, label %124, label %122

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @closedir(%struct.__dirstream* nonnull %120) #13
  br label %124

; <label>:124:                                    ; preds = %122, %115
  %125 = bitcast %struct._ftsent* %116 to i8*
  tail call void @free(i8* %125) #13
  %126 = icmp eq %struct._ftsent* %118, null
  br i1 %126, label %127, label %115

; <label>:127:                                    ; preds = %124
  store %struct._ftsent* null, %struct._ftsent** %107, align 8
  br label %155

; <label>:128:                                    ; preds = %110
  %129 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 6
  %130 = load i8*, i8** %129, align 8
  %131 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i32 -1, i8* %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %172, label %133

; <label>:133:                                    ; preds = %128
  %134 = tail call i32* @__errno_location() #1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %138 = load i16, i16* %137, align 2
  %139 = or i16 %138, 1
  store i16 %139, i16* %137, align 2
  %140 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  %141 = icmp eq %struct._ftsent* %140, null
  br i1 %141, label %172, label %142

; <label>:142:                                    ; preds = %133
  br label %143

; <label>:143:                                    ; preds = %142, %143
  %144 = phi %struct._ftsent* [ %153, %143 ], [ %140, %142 ]
  %145 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 1
  %146 = load %struct._ftsent*, %struct._ftsent** %145, align 8
  %147 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %146, i64 0, i32 6
  %148 = bitcast i8** %147 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 6
  %151 = bitcast i8** %150 to i64*
  store i64 %149, i64* %151, align 8
  %152 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 2
  %153 = load %struct._ftsent*, %struct._ftsent** %152, align 8
  %154 = icmp eq %struct._ftsent* %153, null
  br i1 %154, label %171, label %143

; <label>:155:                                    ; preds = %127, %106
  %156 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* nonnull %0, i32 3)
  store %struct._ftsent* %156, %struct._ftsent** %107, align 8
  %157 = icmp eq %struct._ftsent* %156, null
  br i1 %157, label %158, label %172

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %8, align 8
  %160 = and i32 %159, 16384
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %538

; <label>:162:                                    ; preds = %158
  %163 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

; <label>:166:                                    ; preds = %162
  %167 = load i16, i16* %63, align 8
  %168 = icmp eq i16 %167, 4
  br i1 %168, label %170, label %169

; <label>:169:                                    ; preds = %166
  store i16 7, i16* %63, align 8
  br label %170

; <label>:170:                                    ; preds = %166, %162, %169
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  br label %538

; <label>:171:                                    ; preds = %143
  br label %172

; <label>:172:                                    ; preds = %171, %133, %128, %155
  %173 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  store %struct._ftsent* null, %struct._ftsent** %107, align 8
  br label %305

; <label>:174:                                    ; preds = %66, %263
  %175 = phi %struct._ftsent* [ %177, %263 ], [ %5, %66 ]
  %176 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %175, i64 0, i32 2
  %177 = load %struct._ftsent*, %struct._ftsent** %176, align 8
  %178 = icmp eq %struct._ftsent* %177, null
  br i1 %178, label %179, label %201

; <label>:179:                                    ; preds = %174
  %180 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %175, i64 0, i32 1
  %181 = load %struct._ftsent*, %struct._ftsent** %180, align 8
  %182 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %181, i64 0, i32 3
  %183 = load %struct.__dirstream*, %struct.__dirstream** %182, align 8
  %184 = icmp eq %struct.__dirstream* %183, null
  br i1 %184, label %434, label %185

; <label>:185:                                    ; preds = %179
  store %struct._ftsent* %181, %struct._ftsent** %4, align 8
  %186 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %181, i64 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 0, i8* %190, align 1
  %191 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* %0, i32 3)
  %192 = icmp eq %struct._ftsent* %191, null
  br i1 %192, label %193, label %199

; <label>:193:                                    ; preds = %185
  %194 = load i32, i32* %8, align 8
  %195 = and i32 %194, 16384
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %538

; <label>:197:                                    ; preds = %193
  %198 = load %struct._ftsent*, %struct._ftsent** %180, align 8
  br label %434

; <label>:199:                                    ; preds = %185
  %200 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %200) #13
  br label %305

; <label>:201:                                    ; preds = %174
  store %struct._ftsent* %177, %struct._ftsent** %4, align 8
  %202 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %202) #13
  %203 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %263

; <label>:206:                                    ; preds = %201
  %207 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %208 = icmp eq i32 %207, 0
  %209 = load i32, i32* %8, align 8
  br i1 %208, label %212, label %210

; <label>:210:                                    ; preds = %206
  %211 = or i32 %209, 16384
  store i32 %211, i32* %8, align 8
  br label %538

; <label>:212:                                    ; preds = %206
  %213 = and i32 %209, 258
  %214 = icmp eq i32 %213, 0
  %215 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  br i1 %214, label %221, label %216

; <label>:216:                                    ; preds = %212
  %217 = getelementptr inbounds %union.anon, %union.anon* %215, i64 0, i32 0
  %218 = load %struct.hash_table*, %struct.hash_table** %217, align 8
  %219 = icmp eq %struct.hash_table* %218, null
  br i1 %219, label %224, label %220

; <label>:220:                                    ; preds = %216
  tail call void @hash_free(%struct.hash_table* nonnull %218) #13
  br label %224

; <label>:221:                                    ; preds = %212
  %222 = bitcast %union.anon* %215 to i8**
  %223 = load i8*, i8** %222, align 8
  tail call void @free(i8* %223) #13
  br label %224

; <label>:224:                                    ; preds = %216, %220, %221
  %225 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 13
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 10
  store i64 %226, i64* %227, align 8
  %228 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 19, i64 0
  %231 = add i64 %226, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %229, i8* %230, i64 %231, i32 1, i1 false) #13
  %232 = tail call i8* @strrchr(i8* %230, i32 47) #15
  %233 = icmp eq i8* %232, null
  br i1 %233, label %244, label %234

; <label>:234:                                    ; preds = %224
  %235 = icmp eq i8* %232, %230
  br i1 %235, label %236, label %240

; <label>:236:                                    ; preds = %234
  %237 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 19, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %244, label %240

; <label>:240:                                    ; preds = %236, %234
  %241 = getelementptr inbounds i8, i8* %232, i64 1
  %242 = tail call i64 @strlen(i8* %241) #15
  %243 = add i64 %242, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %230, i8* %241, i64 %243, i32 1, i1 false) #13
  store i64 %242, i64* %225, align 8
  br label %244

; <label>:244:                                    ; preds = %224, %236, %240
  %245 = bitcast i8** %228 to i64*
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 7
  %248 = bitcast i8** %247 to i64*
  store i64 %246, i64* %248, align 8
  %249 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 6
  %250 = bitcast i8** %249 to i64*
  store i64 %246, i64* %250, align 8
  %251 = load i32, i32* %8, align 8
  %252 = and i32 %251, 258
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

; <label>:254:                                    ; preds = %244
  %255 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #13
  %256 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %255, %struct.hash_table** %256, align 8
  br label %326

; <label>:257:                                    ; preds = %244
  %258 = tail call noalias i8* @malloc(i64 32) #13
  %259 = bitcast %union.anon* %215 to i8**
  store i8* %258, i8** %259, align 8
  %260 = icmp eq i8* %258, null
  br i1 %260, label %326, label %261

; <label>:261:                                    ; preds = %257
  %262 = bitcast i8* %258 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %262) #13
  br label %326

; <label>:263:                                    ; preds = %201
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 17
  %265 = load i16, i16* %264, align 4
  switch i16 %265, label %304 [
    i16 4, label %174
    i16 2, label %266
  ]

; <label>:266:                                    ; preds = %263
  %267 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %177, i1 zeroext true)
  %268 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 15
  store i16 %267, i16* %268, align 8
  %269 = icmp eq i16 %267, 1
  br i1 %269, label %270, label %303

; <label>:270:                                    ; preds = %266
  %271 = load i32, i32* %8, align 8
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %303

; <label>:274:                                    ; preds = %270
  %275 = shl i32 %271, 13
  %276 = and i32 %275, 131072
  %277 = shl i32 %271, 7
  %278 = and i32 %277, 262144
  %279 = or i32 %276, %278
  %280 = or i32 %279, 67840
  %281 = and i32 %271, 512
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

; <label>:283:                                    ; preds = %274
  %284 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %280) #13
  br label %289

; <label>:287:                                    ; preds = %274
  %288 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %280) #13
  br label %289

; <label>:289:                                    ; preds = %287, %283
  %290 = phi i32 [ %286, %283 ], [ %288, %287 ]
  %291 = icmp sgt i32 %290, -1
  br i1 %291, label %297, label %292

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 9
  store i32 %290, i32* %293, align 4
  %294 = tail call i32* @__errno_location() #1
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 8
  store i32 %295, i32* %296, align 8
  store i16 7, i16* %268, align 8
  br label %303

; <label>:297:                                    ; preds = %289
  %298 = tail call i32 @set_cloexec_flag(i32 %290, i1 zeroext true) #13
  %299 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 9
  store i32 %290, i32* %299, align 4
  %300 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 16
  %301 = load i16, i16* %300, align 2
  %302 = or i16 %301, 2
  store i16 %302, i16* %300, align 2
  br label %303

; <label>:303:                                    ; preds = %270, %292, %297, %266
  store i16 3, i16* %264, align 4
  br label %305

; <label>:304:                                    ; preds = %263
  br label %305

; <label>:305:                                    ; preds = %304, %303, %199, %172
  %306 = phi %struct._ftsent* [ %173, %172 ], [ %191, %199 ], [ %177, %303 ], [ %177, %304 ]
  %307 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 1
  %310 = load %struct._ftsent*, %struct._ftsent** %309, align 8
  %311 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %310, i64 0, i32 7
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %310, i64 0, i32 10
  %314 = load i64, i64* %313, align 8
  %315 = add i64 %314, -1
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = icmp eq i8 %317, 47
  %319 = select i1 %318, i64 %315, i64 %314
  %320 = getelementptr inbounds i8, i8* %308, i64 %319
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  store i8 47, i8* %320, align 1
  %322 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 19, i64 0
  %323 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 13
  %324 = load i64, i64* %323, align 8
  %325 = add i64 %324, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %321, i8* %322, i64 %325, i32 1, i1 false)
  br label %326

; <label>:326:                                    ; preds = %254, %257, %261, %29, %26, %56, %51, %305
  %327 = phi %struct._ftsent* [ %5, %29 ], [ %5, %51 ], [ %5, %56 ], [ %5, %26 ], [ %306, %305 ], [ %177, %261 ], [ %177, %254 ], [ %177, %257 ]
  store %struct._ftsent* %327, %struct._ftsent** %4, align 8
  %328 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 15
  %329 = load i16, i16* %328, align 8
  %330 = icmp eq i16 %329, 11
  br i1 %330, label %331, label %419

; <label>:331:                                    ; preds = %326
  %332 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 8
  %333 = load i64, i64* %332, align 8
  switch i64 %333, label %416 [
    i64 2, label %334
    i64 1, label %417
  ]

; <label>:334:                                    ; preds = %331
  %335 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 1
  %336 = load %struct._ftsent*, %struct._ftsent** %335, align 8
  %337 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 12
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %401

; <label>:340:                                    ; preds = %334
  %341 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 14
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %401

; <label>:344:                                    ; preds = %340
  %345 = load i32, i32* %8, align 8
  %346 = and i32 %345, 24
  %347 = icmp eq i32 %346, 24
  br i1 %347, label %348, label %401

; <label>:348:                                    ; preds = %344
  %349 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 11
  %350 = load %struct.FTS*, %struct.FTS** %349, align 8
  %351 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 11
  %352 = load %struct.hash_table*, %struct.hash_table** %351, align 8
  %353 = bitcast %struct.LCO_ent* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %353) #13
  %354 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 512
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %399, label %358

; <label>:358:                                    ; preds = %348
  %359 = icmp eq %struct.hash_table* %352, null
  br i1 %359, label %360, label %363

; <label>:360:                                    ; preds = %358
  %361 = tail call %struct.hash_table* @hash_initialize(i64 13, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @LCO_hash, i1 (i8*, i8*)* nonnull @LCO_compare, void (i8*)* nonnull @free) #13
  store %struct.hash_table* %361, %struct.hash_table** %351, align 8
  %362 = icmp eq %struct.hash_table* %361, null
  br i1 %362, label %399, label %363

; <label>:363:                                    ; preds = %360, %358
  %364 = phi %struct.hash_table* [ %361, %360 ], [ %352, %358 ]
  %365 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 18, i64 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.LCO_ent, %struct.LCO_ent* %3, i64 0, i32 0
  store i64 %366, i64* %367, align 8
  %368 = call i8* @hash_lookup(%struct.hash_table* nonnull %364, i8* nonnull %353) #13
  %369 = icmp eq i8* %368, null
  br i1 %369, label %374, label %370

; <label>:370:                                    ; preds = %363
  %371 = getelementptr inbounds i8, i8* %368, i64 8
  %372 = load i8, i8* %371, align 8
  %373 = icmp eq i8 %372, 0
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #13
  br i1 %373, label %401, label %417

; <label>:374:                                    ; preds = %363
  %375 = call noalias i8* @malloc(i64 16) #13
  %376 = icmp eq i8* %375, null
  br i1 %376, label %399, label %377

; <label>:377:                                    ; preds = %374
  %378 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 6
  %379 = load i32, i32* %378, align 4
  %380 = bitcast %struct.statfs* %2 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %380) #13
  %381 = call i32 @fstatfs(i32 %379, %struct.statfs* nonnull %2) #13
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %377
  %384 = getelementptr inbounds %struct.statfs, %struct.statfs* %2, i64 0, i32 0
  %385 = load i64, i64* %384, align 8
  switch i64 %385, label %386 [
    i64 1382369651, label %387
    i64 1481003842, label %387
  ]

; <label>:386:                                    ; preds = %383
  br label %387

; <label>:387:                                    ; preds = %386, %383, %383, %377
  %388 = phi i1 [ false, %386 ], [ false, %377 ], [ true, %383 ], [ true, %383 ]
  call void @llvm.lifetime.end(i64 120, i8* nonnull %380) #13
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds i8, i8* %375, i64 8
  store i8 %389, i8* %390, align 8
  %391 = load i64, i64* %365, align 8
  %392 = bitcast i8* %375 to i64*
  store i64 %391, i64* %392, align 8
  %393 = call i8* @hash_insert(%struct.hash_table* nonnull %364, i8* nonnull %375) #13
  %394 = icmp eq i8* %393, null
  br i1 %394, label %395, label %396

; <label>:395:                                    ; preds = %387
  call void @free(i8* nonnull %375) #13
  br label %399

; <label>:396:                                    ; preds = %387
  %397 = icmp eq i8* %393, %375
  br i1 %397, label %400, label %398

; <label>:398:                                    ; preds = %396
  call void @abort() #16
  unreachable

; <label>:399:                                    ; preds = %395, %348, %360, %374
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #13
  br label %401

; <label>:400:                                    ; preds = %396
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #13
  br i1 %388, label %417, label %401

; <label>:401:                                    ; preds = %370, %344, %399, %400, %340, %334
  %402 = call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* %327, i1 zeroext false)
  store i16 %402, i16* %328, align 8
  %403 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = and i32 %404, 61440
  %406 = icmp eq i32 %405, 16384
  br i1 %406, label %407, label %419

; <label>:407:                                    ; preds = %401
  %408 = load i64, i64* %337, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %417, label %410

; <label>:410:                                    ; preds = %407
  %411 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 14
  %412 = load i64, i64* %411, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %417, label %414

; <label>:414:                                    ; preds = %410
  %415 = add i64 %412, -1
  store i64 %415, i64* %411, align 8
  br label %417

; <label>:416:                                    ; preds = %331
  tail call void @abort() #16
  unreachable

; <label>:417:                                    ; preds = %370, %410, %407, %414, %400, %331
  %418 = load i16, i16* %328, align 8
  br label %419

; <label>:419:                                    ; preds = %417, %401, %326
  %420 = phi i16 [ %418, %417 ], [ %402, %401 ], [ %329, %326 ]
  %421 = icmp eq i16 %420, 1
  br i1 %421, label %422, label %538

; <label>:422:                                    ; preds = %419
  %423 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 12
  %424 = load i64, i64* %423, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %430

; <label>:426:                                    ; preds = %422
  %427 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  store i64 %428, i64* %429, align 8
  br label %430

; <label>:430:                                    ; preds = %426, %422
  %431 = call fastcc zeroext i1 @enter_dir(%struct.FTS* %0, %struct._ftsent* nonnull %327)
  br i1 %431, label %538, label %432

; <label>:432:                                    ; preds = %430
  %433 = tail call i32* @__errno_location() #1
  store i32 12, i32* %433, align 4
  br label %538

; <label>:434:                                    ; preds = %179, %197
  %435 = phi %struct._ftsent* [ %198, %197 ], [ %181, %179 ]
  store %struct._ftsent* %435, %struct._ftsent** %4, align 8
  %436 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %436) #13
  %437 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 12
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %443

; <label>:440:                                    ; preds = %434
  %441 = bitcast %struct._ftsent* %435 to i8*
  tail call void @free(i8* %441) #13
  %442 = tail call i32* @__errno_location() #1
  store i32 0, i32* %442, align 4
  store %struct._ftsent* null, %struct._ftsent** %4, align 8
  br label %538

; <label>:443:                                    ; preds = %434
  %444 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 15
  %445 = load i16, i16* %444, align 8
  %446 = icmp eq i16 %445, 11
  br i1 %446, label %447, label %448

; <label>:447:                                    ; preds = %443
  tail call void @abort() #16
  unreachable

; <label>:448:                                    ; preds = %443
  %449 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %450 = load i8*, i8** %449, align 8
  %451 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 10
  %452 = load i64, i64* %451, align 8
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  store i8 0, i8* %453, align 1
  %454 = load i64, i64* %437, align 8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %465

; <label>:456:                                    ; preds = %448
  %457 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %523, label %459

; <label>:459:                                    ; preds = %456
  %460 = tail call i32* @__errno_location() #1
  %461 = load i32, i32* %460, align 4
  %462 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %461, i32* %462, align 8
  %463 = load i32, i32* %8, align 8
  %464 = or i32 %463, 16384
  store i32 %464, i32* %8, align 8
  br label %523

; <label>:465:                                    ; preds = %448
  %466 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 16
  %467 = load i16, i16* %466, align 2
  %468 = zext i16 %467 to i32
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %509, label %471

; <label>:471:                                    ; preds = %465
  %472 = load i32, i32* %8, align 8
  %473 = and i32 %472, 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %477, label %475

; <label>:475:                                    ; preds = %471
  %476 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 9
  br label %505

; <label>:477:                                    ; preds = %471
  %478 = and i32 %472, 512
  %479 = icmp eq i32 %478, 0
  %480 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 9
  %481 = load i32, i32* %480, align 4
  br i1 %479, label %496, label %482

; <label>:482:                                    ; preds = %477
  %483 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, %481
  %486 = icmp eq i32 %484, -100
  %487 = or i1 %485, %486
  br i1 %487, label %489, label %488

; <label>:488:                                    ; preds = %482
  tail call void @abort() #16
  unreachable

; <label>:489:                                    ; preds = %482
  %490 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %491 = tail call i32 @i_ring_push(%struct.I_ring* %490, i32 %484) #13
  %492 = icmp sgt i32 %491, -1
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %489
  %494 = tail call i32 @close(i32 %491) #13
  br label %495

; <label>:495:                                    ; preds = %489, %493
  store i32 %481, i32* %483, align 4
  br label %505

; <label>:496:                                    ; preds = %477
  %497 = tail call i32 @fchdir(i32 %481) #13
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %505, label %499

; <label>:499:                                    ; preds = %496
  %500 = tail call i32* @__errno_location() #1
  %501 = load i32, i32* %500, align 4
  %502 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %501, i32* %502, align 8
  %503 = load i32, i32* %8, align 8
  %504 = or i32 %503, 16384
  store i32 %504, i32* %8, align 8
  br label %505

; <label>:505:                                    ; preds = %475, %496, %495, %499
  %506 = phi i32* [ %476, %475 ], [ %480, %496 ], [ %480, %495 ], [ %480, %499 ]
  %507 = load i32, i32* %506, align 4
  %508 = tail call i32 @close(i32 %507) #13
  br label %523

; <label>:509:                                    ; preds = %465
  %510 = and i32 %468, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %523

; <label>:512:                                    ; preds = %509
  %513 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 1
  %514 = load %struct._ftsent*, %struct._ftsent** %513, align 8
  %515 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %514, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.315, i64 0, i64 0))
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %523, label %517

; <label>:517:                                    ; preds = %512
  %518 = tail call i32* @__errno_location() #1
  %519 = load i32, i32* %518, align 4
  %520 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %519, i32* %520, align 8
  %521 = load i32, i32* %8, align 8
  %522 = or i32 %521, 16384
  store i32 %522, i32* %8, align 8
  br label %523

; <label>:523:                                    ; preds = %456, %512, %509, %505, %517, %459
  %524 = load i16, i16* %444, align 8
  %525 = icmp eq i16 %524, 2
  br i1 %525, label %533, label %526

; <label>:526:                                    ; preds = %523
  %527 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %529, i16 7, i16 6
  store i16 %530, i16* %444, align 8
  %531 = icmp eq i32 %528, 0
  br i1 %531, label %532, label %533

; <label>:532:                                    ; preds = %526
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %435)
  br label %533

; <label>:533:                                    ; preds = %523, %526, %532
  %534 = load i32, i32* %8, align 8
  %535 = and i32 %534, 16384
  %536 = icmp ne i32 %535, 0
  %537 = select i1 %536, %struct._ftsent* null, %struct._ftsent* %435
  br label %538

; <label>:538:                                    ; preds = %419, %430, %193, %158, %1, %7, %533, %440, %432, %210, %170, %105, %18
  %539 = phi %struct._ftsent* [ %5, %18 ], [ null, %432 ], [ %5, %105 ], [ %5, %170 ], [ null, %440 ], [ %537, %533 ], [ null, %210 ], [ null, %7 ], [ null, %1 ], [ null, %158 ], [ null, %193 ], [ %327, %430 ], [ %327, %419 ]
  ret %struct._ftsent* %539
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @leave_dir(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly) unnamed_addr #6 {
  %3 = alloca %struct.Active_dir, align 16
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 258
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.Active_dir* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %10) #13
  %11 = bitcast %struct.stat* %4 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %13 = bitcast %struct.Active_dir* %3 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %15 = load %struct.hash_table*, %struct.hash_table** %14, align 8
  %16 = call i8* @hash_delete(%struct.hash_table* %15, i8* nonnull %10) #13
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %9
  call void @abort() #16
  unreachable

; <label>:19:                                     ; preds = %9
  call void @free(i8* nonnull %16) #13
  call void @llvm.lifetime.end(i64 24, i8* nonnull %10) #13
  br label %53

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %22 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  %23 = icmp eq %struct._ftsent* %22, null
  br i1 %23, label %53, label %24

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, -1
  br i1 %27, label %28, label %53

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %30 = bitcast %union.anon* %29 to %struct.cycle_check_state**
  %31 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %28
  tail call void @abort() #16
  unreachable

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %53

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 18, i64 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %43, align 8
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 18, i64 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %37, align 8
  br label %53

; <label>:53:                                     ; preds = %24, %48, %42, %36, %20, %19
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @fts_safe_changedir(%struct.FTS*, %struct._ftsent* nocapture readonly, i32, i8*) unnamed_addr #6 {
  %5 = alloca %struct.stat, align 8
  %6 = icmp eq i8* %3, null
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 46, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds i8, i8* %3, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 46, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds i8, i8* %3, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 0, %21
  br label %23

; <label>:23:                                     ; preds = %18, %12, %7
  %24 = phi i32 [ %22, %18 ], [ %16, %12 ], [ %10, %7 ]
  %25 = icmp eq i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %4, %23
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

; <label>:33:                                     ; preds = %26
  %34 = and i32 %30, 512
  %35 = icmp ne i32 %34, 0
  %36 = icmp sgt i32 %2, -1
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %155

; <label>:38:                                     ; preds = %33
  %39 = tail call i32 @close(i32 %2) #13
  br label %155

; <label>:40:                                     ; preds = %26
  %41 = icmp sgt i32 %2, -1
  %42 = xor i1 %27, true
  %43 = or i1 %41, %42
  %44 = and i32 %30, 512
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %43, %45
  br i1 %46, label %55, label %47

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %49 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %48) #15
  br i1 %49, label %55, label %50

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @i_ring_pop(%struct.I_ring* %48) #13
  %52 = icmp sgt i32 %51, -1
  %53 = select i1 %52, i8* null, i8* %3
  %54 = select i1 %52, i32 %51, i32 %2
  br label %55

; <label>:55:                                     ; preds = %40, %47, %50
  %56 = phi i8 [ %28, %47 ], [ 1, %50 ], [ %28, %40 ]
  %57 = phi i8* [ %3, %47 ], [ %53, %50 ], [ %3, %40 ]
  %58 = phi i32 [ %2, %47 ], [ %54, %50 ], [ %2, %40 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %81

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %29, align 8
  %62 = shl i32 %61, 13
  %63 = and i32 %62, 131072
  %64 = shl i32 %61, 7
  %65 = and i32 %64, 262144
  %66 = or i32 %63, %65
  %67 = or i32 %66, 67840
  %68 = and i32 %61, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

; <label>:70:                                     ; preds = %60
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %72, i8* %57, i32 %67) #13
  br label %76

; <label>:74:                                     ; preds = %60
  %75 = tail call i32 (i8*, i32, ...) @open_safer(i8* %57, i32 %67) #13
  br label %76

; <label>:76:                                     ; preds = %74, %70
  %77 = phi i32 [ %73, %70 ], [ %75, %74 ]
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %155

; <label>:79:                                     ; preds = %76
  %80 = tail call i32 @set_cloexec_flag(i32 %77, i1 zeroext true) #13
  br label %81

; <label>:81:                                     ; preds = %79, %55
  %82 = phi i32 [ %77, %79 ], [ %58, %55 ]
  %83 = load i32, i32* %29, align 8
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

; <label>:86:                                     ; preds = %81
  %87 = icmp eq i8* %57, null
  br i1 %87, label %120, label %88

; <label>:88:                                     ; preds = %86
  %89 = load i8, i8* %57, align 1
  %90 = icmp eq i8 %89, 46
  br i1 %90, label %91, label %120

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i8, i8* %57, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = icmp eq i8 %93, 46
  br i1 %94, label %95, label %120

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %57, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %120

; <label>:99:                                     ; preds = %81, %95
  %100 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %100) #13
  %101 = call i32 @__fxstat(i32 1, i32 %82, %struct.stat* nonnull %5) #13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %115

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %118, label %115

; <label>:115:                                    ; preds = %109, %103
  %116 = tail call i32* @__errno_location() #1
  store i32 2, i32* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %115, %99
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #13
  br label %149

; <label>:118:                                    ; preds = %109
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #13
  %119 = load i32, i32* %29, align 8
  br label %120

; <label>:120:                                    ; preds = %88, %91, %118, %86, %95
  %121 = phi i32 [ %83, %88 ], [ %83, %91 ], [ %119, %118 ], [ %83, %86 ], [ %83, %95 ]
  %122 = and i32 %121, 512
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %147, label %124

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, %82
  %128 = icmp eq i32 %126, -100
  %129 = or i1 %127, %128
  br i1 %129, label %131, label %130

; <label>:130:                                    ; preds = %124
  call void @abort() #16
  unreachable

; <label>:131:                                    ; preds = %124
  %132 = icmp eq i8 %56, 0
  br i1 %132, label %133, label %139

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %135 = call i32 @i_ring_push(%struct.I_ring* %134, i32 %126) #13
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %146

; <label>:137:                                    ; preds = %133
  %138 = call i32 @close(i32 %135) #13
  br label %146

; <label>:139:                                    ; preds = %131
  %140 = and i32 %121, 4
  %141 = icmp eq i32 %140, 0
  %142 = icmp sgt i32 %126, -1
  %143 = and i1 %141, %142
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %139
  %145 = call i32 @close(i32 %126) #13
  br label %146

; <label>:146:                                    ; preds = %133, %137, %139, %144
  store i32 %82, i32* %125, align 4
  br label %155

; <label>:147:                                    ; preds = %120
  %148 = call i32 @fchdir(i32 %82) #13
  br label %149

; <label>:149:                                    ; preds = %117, %147
  %150 = phi i32 [ %148, %147 ], [ -1, %117 ]
  br i1 %59, label %151, label %155

; <label>:151:                                    ; preds = %149
  %152 = tail call i32* @__errno_location() #1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @close(i32 %82) #13
  store i32 %153, i32* %152, align 4
  br label %155

; <label>:155:                                    ; preds = %76, %149, %151, %33, %38, %146
  %156 = phi i32 [ 0, %146 ], [ 0, %38 ], [ 0, %33 ], [ %150, %151 ], [ %150, %149 ], [ -1, %76 ]
  ret i32 %156
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct._ftsent* @fts_build(%struct.FTS*, i32) unnamed_addr #6 {
  %3 = alloca %struct.statfs, align 8
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 3
  %7 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %8 = icmp ne %struct.__dirstream* %7, null
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %2
  %10 = tail call i32 @dirfd(%struct.__dirstream* nonnull %7) #13
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %80

; <label>:12:                                     ; preds = %9
  %13 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %14 = tail call i32 @closedir(%struct.__dirstream* %13)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %15 = icmp eq i32 %1, 3
  br i1 %15, label %16, label %566

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 4, i16* %17, align 8
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %19, i32* %20, align 8
  br label %566

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 516
  %25 = icmp eq i32 %24, 512
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %28 = load i32, i32* %27, align 4
  br label %29

; <label>:29:                                     ; preds = %21, %26
  %30 = phi i32 [ %28, %26 ], [ -100, %21 ]
  %31 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = and i32 %23, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

; <label>:35:                                     ; preds = %29
  %36 = and i32 %23, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %38, %35
  br label %43

; <label>:43:                                     ; preds = %38, %29, %42
  %44 = phi i32 [ 198912, %42 ], [ 67840, %38 ], [ 67840, %29 ]
  %45 = shl i32 %23, 7
  %46 = and i32 %45, 262144
  %47 = or i32 %44, %46
  %48 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %30, i8* %32, i32 %47) #13
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %58, label %50

; <label>:50:                                     ; preds = %43
  %51 = tail call i32 @set_cloexec_flag(i32 %48, i1 zeroext true) #13
  %52 = tail call %struct.__dirstream* @fdopendir(i32 %48) #13
  %53 = icmp eq %struct.__dirstream* %52, null
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %50
  %55 = tail call i32* @__errno_location() #1
  %56 = load i32, i32* %55, align 4
  %57 = tail call i32 @close(i32 %48) #13
  store i32 %56, i32* %55, align 4
  br label %58

; <label>:58:                                     ; preds = %43, %54
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %59 = icmp eq i32 %1, 3
  br i1 %59, label %60, label %566

; <label>:60:                                     ; preds = %58
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 4, i16* %61, align 8
  %62 = tail call i32* @__errno_location() #1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %63, i32* %64, align 8
  br label %566

; <label>:65:                                     ; preds = %50
  store %struct.__dirstream* %52, %struct.__dirstream** %6, align 8
  %66 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %67 = load i16, i16* %66, align 8
  %68 = icmp eq i16 %67, 11
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %65
  %70 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  store i16 %70, i16* %66, align 8
  br label %80

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %22, align 8
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

; <label>:75:                                     ; preds = %71
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  %76 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  %77 = tail call fastcc zeroext i1 @enter_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %75
  %79 = tail call i32* @__errno_location() #1
  store i32 12, i32* %79, align 4
  br label %566

; <label>:80:                                     ; preds = %9, %71, %69, %75
  %81 = phi i32 [ %10, %9 ], [ %48, %69 ], [ %48, %71 ], [ %48, %75 ]
  %82 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %83 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %84 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %83, null
  %85 = select i1 %84, i64 -1, i64 100000
  %86 = icmp eq i32 %1, 2
  br i1 %86, label %100, label %87

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 24
  %91 = icmp eq i32 %90, 24
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 18, i64 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = lshr i32 %89, 4
  %96 = and i32 %95, 2
  %97 = xor i32 %96, 2
  %98 = zext i32 %97 to i64
  %99 = sub i64 %94, %98
  br label %100

; <label>:100:                                    ; preds = %87, %80, %92
  %101 = phi i64 [ %99, %92 ], [ 0, %80 ], [ -1, %87 ]
  br i1 %8, label %143, label %102

; <label>:102:                                    ; preds = %100
  %103 = icmp ne i64 %101, 0
  %104 = icmp eq i32 %1, 3
  %105 = or i1 %104, %103
  br i1 %105, label %106, label %143

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

; <label>:111:                                    ; preds = %106
  %112 = tail call i32 @dup_safer(i32 %81) #13
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %122

; <label>:114:                                    ; preds = %111
  %115 = tail call i32 @set_cloexec_flag(i32 %112, i1 zeroext true) #13
  br label %118

; <label>:116:                                    ; preds = %106
  %117 = icmp slt i32 %81, 0
  br i1 %117, label %122, label %118

; <label>:118:                                    ; preds = %114, %116
  %119 = phi i32 [ %112, %114 ], [ %81, %116 ]
  %120 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %5, i32 %119, i8* null)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %143, label %122

; <label>:122:                                    ; preds = %111, %118, %116
  %123 = phi i32 [ %119, %118 ], [ %81, %116 ], [ %112, %111 ]
  %124 = and i1 %104, %103
  br i1 %124, label %125, label %129

; <label>:125:                                    ; preds = %122
  %126 = tail call i32* @__errno_location() #1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %127, i32* %128, align 8
  br label %129

; <label>:129:                                    ; preds = %125, %122
  %130 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %131 = load i16, i16* %130, align 2
  %132 = or i16 %131, 1
  store i16 %132, i16* %130, align 2
  %133 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %134 = tail call i32 @closedir(%struct.__dirstream* %133)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %135 = load i32, i32* %107, align 8
  %136 = and i32 %135, 512
  %137 = icmp ne i32 %136, 0
  %138 = icmp sgt i32 %123, -1
  %139 = and i1 %138, %137
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %129
  %141 = tail call i32 @close(i32 %123) #13
  br label %142

; <label>:142:                                    ; preds = %140, %129
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  br label %143

; <label>:143:                                    ; preds = %102, %118, %100, %142
  %144 = phi i1 [ true, %142 ], [ false, %100 ], [ false, %118 ], [ true, %102 ]
  %145 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 7
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 10
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -1
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = icmp eq i8 %151, 47
  %153 = select i1 %152, i64 %149, i64 %148
  %154 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  br i1 %157, label %163, label %159

; <label>:159:                                    ; preds = %143
  %160 = load i8*, i8** %158, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %153
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 47, i8* %161, align 1
  br label %163

; <label>:163:                                    ; preds = %143, %159
  %164 = phi i8* [ %162, %159 ], [ null, %143 ]
  %165 = add i64 %153, 1
  %166 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %167, %165
  %169 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = bitcast i8** %158 to i64*
  %173 = bitcast %struct.FTS* %0 to i64*
  %174 = add i64 %153, 258
  br label %175

; <label>:175:                                    ; preds = %391, %163
  %176 = phi i64 [ %295, %391 ], [ %168, %163 ]
  %177 = phi i8* [ %296, %391 ], [ %164, %163 ]
  %178 = phi i8 [ %297, %391 ], [ 0, %163 ]
  %179 = phi %struct._ftsent* [ %224, %391 ], [ null, %163 ]
  %180 = phi i64 [ %393, %391 ], [ 0, %163 ]
  %181 = phi %struct._ftsent* [ %392, %391 ], [ null, %163 ]
  %182 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %183 = icmp eq %struct.__dirstream* %182, null
  br i1 %183, label %401, label %184

; <label>:184:                                    ; preds = %175
  br label %185

; <label>:185:                                    ; preds = %184, %210
  %186 = phi %struct.__dirstream* [ %211, %210 ], [ %182, %184 ]
  %187 = tail call i32* @__errno_location() #1
  store i32 0, i32* %187, align 4
  %188 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %186) #13
  %189 = icmp eq %struct.dirent* %188, null
  br i1 %189, label %190, label %199

; <label>:190:                                    ; preds = %185
  %191 = load i32, i32* %187, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %395, label %193

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %191, i32* %194, align 8
  %195 = icmp ne i64 %180, 0
  %196 = or i1 %8, %195
  %197 = select i1 %196, i16 7, i16 4
  %198 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 %197, i16* %198, align 8
  br label %395

; <label>:199:                                    ; preds = %185
  %200 = load i32, i32* %154, align 8
  %201 = and i32 %200, 32
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 0
  br i1 %202, label %204, label %217

; <label>:204:                                    ; preds = %199
  %205 = load i8, i8* %203, align 1
  %206 = icmp eq i8 %205, 46
  br i1 %206, label %207, label %217

; <label>:207:                                    ; preds = %204
  %208 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 1
  %209 = load i8, i8* %208, align 1
  switch i8 %209, label %217 [
    i8 0, label %210
    i8 46, label %213
  ]

; <label>:210:                                    ; preds = %207, %213
  %211 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %212 = icmp eq %struct.__dirstream* %211, null
  br i1 %212, label %400, label %185

; <label>:213:                                    ; preds = %207
  %214 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %210, label %217

; <label>:217:                                    ; preds = %207, %213, %204, %199
  %218 = tail call i64 @strlen(i8* %203) #15
  %219 = add i64 %218, 272
  %220 = and i64 %219, -8
  %221 = tail call noalias i8* @malloc(i64 %220) #13
  %222 = icmp eq i8* %221, null
  br i1 %222, label %256, label %223

; <label>:223:                                    ; preds = %217
  %224 = bitcast i8* %221 to %struct._ftsent*
  %225 = getelementptr inbounds i8, i8* %221, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %203, i64 %218, i32 1, i1 false) #13
  %226 = getelementptr inbounds i8, i8* %225, i64 %218
  store i8 0, i8* %226, align 1
  %227 = getelementptr inbounds i8, i8* %221, i64 96
  %228 = bitcast i8* %227 to i64*
  store i64 %218, i64* %228, align 8
  %229 = getelementptr inbounds i8, i8* %221, i64 80
  %230 = bitcast i8* %229 to %struct.FTS**
  store %struct.FTS* %0, %struct.FTS** %230, align 8
  %231 = load i64, i64* %172, align 8
  %232 = getelementptr inbounds i8, i8* %221, i64 56
  %233 = bitcast i8* %232 to i64*
  store i64 %231, i64* %233, align 8
  %234 = getelementptr inbounds i8, i8* %221, i64 64
  %235 = bitcast i8* %234 to i32*
  store i32 0, i32* %235, align 8
  %236 = getelementptr inbounds i8, i8* %221, i64 24
  %237 = bitcast i8* %236 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %237, align 8
  %238 = getelementptr inbounds i8, i8* %221, i64 114
  %239 = bitcast i8* %238 to i16*
  store i16 0, i16* %239, align 2
  %240 = getelementptr inbounds i8, i8* %221, i64 116
  %241 = bitcast i8* %240 to i16*
  store i16 3, i16* %241, align 4
  %242 = getelementptr inbounds i8, i8* %221, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %242, i8 0, i64 16, i32 8, i1 false) #13
  %243 = icmp ult i64 %218, %176
  %244 = inttoptr i64 %231 to i8*
  br i1 %243, label %294, label %245

; <label>:245:                                    ; preds = %223
  %246 = load i64, i64* %166, align 8
  %247 = add i64 %174, %218
  %248 = add i64 %247, %246
  %249 = icmp ult i64 %248, %246
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %245
  tail call void @free(i8* %244) #13
  store i8* null, i8** %158, align 8
  store i32 36, i32* %187, align 4
  br label %257

; <label>:251:                                    ; preds = %245
  store i64 %248, i64* %166, align 8
  %252 = tail call i8* @realloc(i8* %244, i64 %248) #13
  %253 = icmp eq i8* %252, null
  br i1 %253, label %254, label %281

; <label>:254:                                    ; preds = %251
  %255 = load i8*, i8** %158, align 8
  tail call void @free(i8* %255) #13
  store i8* null, i8** %158, align 8
  br label %257

; <label>:256:                                    ; preds = %217
  br label %257

; <label>:257:                                    ; preds = %256, %254, %250
  %258 = phi i8* [ %221, %250 ], [ %221, %254 ], [ null, %256 ]
  %259 = load i32, i32* %187, align 4
  tail call void @free(i8* %258) #13
  %260 = icmp eq %struct._ftsent* %181, null
  br i1 %260, label %275, label %261

; <label>:261:                                    ; preds = %257
  br label %262

; <label>:262:                                    ; preds = %261, %271
  %263 = phi %struct._ftsent* [ %265, %271 ], [ %181, %261 ]
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 2
  %265 = load %struct._ftsent*, %struct._ftsent** %264, align 8
  %266 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 3
  %267 = load %struct.__dirstream*, %struct.__dirstream** %266, align 8
  %268 = icmp eq %struct.__dirstream* %267, null
  br i1 %268, label %271, label %269

; <label>:269:                                    ; preds = %262
  %270 = tail call i32 @closedir(%struct.__dirstream* nonnull %267) #13
  br label %271

; <label>:271:                                    ; preds = %269, %262
  %272 = bitcast %struct._ftsent* %263 to i8*
  tail call void @free(i8* %272) #13
  %273 = icmp eq %struct._ftsent* %265, null
  br i1 %273, label %274, label %262

; <label>:274:                                    ; preds = %271
  br label %275

; <label>:275:                                    ; preds = %274, %257
  %276 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %277 = tail call i32 @closedir(%struct.__dirstream* %276)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %278 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %278, align 8
  %279 = load i32, i32* %154, align 8
  %280 = or i32 %279, 16384
  store i32 %280, i32* %154, align 8
  store i32 %259, i32* %187, align 4
  br label %566

; <label>:281:                                    ; preds = %251
  store i8* %252, i8** %158, align 8
  %282 = icmp eq i8* %244, %252
  br i1 %282, label %289, label %283

; <label>:283:                                    ; preds = %281
  %284 = load i32, i32* %154, align 8
  %285 = and i32 %284, 4
  %286 = icmp eq i32 %285, 0
  %287 = getelementptr inbounds i8, i8* %252, i64 %165
  %288 = select i1 %286, i8* %177, i8* %287
  br label %289

; <label>:289:                                    ; preds = %283, %281
  %290 = phi i8* [ %177, %281 ], [ %288, %283 ]
  %291 = phi i8 [ %178, %281 ], [ 1, %283 ]
  %292 = load i64, i64* %166, align 8
  %293 = sub i64 %292, %165
  br label %294

; <label>:294:                                    ; preds = %223, %289
  %295 = phi i64 [ %293, %289 ], [ %176, %223 ]
  %296 = phi i8* [ %290, %289 ], [ %177, %223 ]
  %297 = phi i8 [ %291, %289 ], [ %178, %223 ]
  %298 = add i64 %218, %165
  %299 = icmp ult i64 %298, %165
  br i1 %299, label %300, label %322

; <label>:300:                                    ; preds = %294
  tail call void @free(i8* nonnull %221) #13
  %301 = icmp eq %struct._ftsent* %181, null
  br i1 %301, label %316, label %302

; <label>:302:                                    ; preds = %300
  br label %303

; <label>:303:                                    ; preds = %302, %312
  %304 = phi %struct._ftsent* [ %306, %312 ], [ %181, %302 ]
  %305 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %304, i64 0, i32 2
  %306 = load %struct._ftsent*, %struct._ftsent** %305, align 8
  %307 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %304, i64 0, i32 3
  %308 = load %struct.__dirstream*, %struct.__dirstream** %307, align 8
  %309 = icmp eq %struct.__dirstream* %308, null
  br i1 %309, label %312, label %310

; <label>:310:                                    ; preds = %303
  %311 = tail call i32 @closedir(%struct.__dirstream* nonnull %308) #13
  br label %312

; <label>:312:                                    ; preds = %310, %303
  %313 = bitcast %struct._ftsent* %304 to i8*
  tail call void @free(i8* %313) #13
  %314 = icmp eq %struct._ftsent* %306, null
  br i1 %314, label %315, label %303

; <label>:315:                                    ; preds = %312
  br label %316

; <label>:316:                                    ; preds = %315, %300
  %317 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %318 = tail call i32 @closedir(%struct.__dirstream* %317)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %319 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %319, align 8
  %320 = load i32, i32* %154, align 8
  %321 = or i32 %320, 16384
  store i32 %321, i32* %154, align 8
  store i32 36, i32* %187, align 4
  br label %566

; <label>:322:                                    ; preds = %294
  %323 = getelementptr inbounds i8, i8* %221, i64 88
  %324 = bitcast i8* %323 to i64*
  store i64 %171, i64* %324, align 8
  %325 = load i64, i64* %173, align 8
  %326 = getelementptr inbounds i8, i8* %221, i64 8
  %327 = bitcast i8* %326 to i64*
  store i64 %325, i64* %327, align 8
  %328 = getelementptr inbounds i8, i8* %221, i64 72
  %329 = bitcast i8* %328 to i64*
  store i64 %298, i64* %329, align 8
  %330 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds i8, i8* %221, i64 128
  %333 = bitcast i8* %332 to i64*
  store i64 %331, i64* %333, align 8
  %334 = load i32, i32* %154, align 8
  %335 = and i32 %334, 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %322
  %338 = load i64, i64* %233, align 8
  %339 = getelementptr inbounds i8, i8* %221, i64 48
  %340 = bitcast i8* %339 to i64*
  store i64 %338, i64* %340, align 8
  %341 = load i64, i64* %228, align 8
  %342 = add i64 %341, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %296, i8* nonnull %225, i64 %342, i32 1, i1 false)
  br label %346

; <label>:343:                                    ; preds = %322
  %344 = getelementptr inbounds i8, i8* %221, i64 48
  %345 = bitcast i8* %344 to i8**
  store i8* %225, i8** %345, align 8
  br label %346

; <label>:346:                                    ; preds = %343, %337
  %347 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %348 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %347, null
  %349 = load i32, i32* %154, align 8
  %350 = and i32 %349, 1024
  %351 = icmp eq i32 %350, 0
  %352 = and i1 %348, %351
  br i1 %352, label %380, label %353

; <label>:353:                                    ; preds = %346
  %354 = and i32 %349, 24
  %355 = icmp eq i32 %354, 24
  %356 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 3
  %357 = load i8, i8* %356, align 2
  br i1 %355, label %358, label %362

; <label>:358:                                    ; preds = %353
  %359 = icmp ne i8 %357, 4
  %360 = icmp ne i8 %357, 0
  %361 = and i1 %359, %360
  br label %362

; <label>:362:                                    ; preds = %353, %358
  %363 = phi i1 [ %361, %358 ], [ false, %353 ]
  %364 = getelementptr inbounds i8, i8* %221, i64 112
  %365 = bitcast i8* %364 to i16*
  store i16 11, i16* %365, align 8
  %366 = zext i8 %357 to i32
  %367 = add nsw i32 %366, -1
  %368 = icmp ult i32 %367, 12
  br i1 %368, label %369, label %373

; <label>:369:                                    ; preds = %362
  %370 = sext i32 %367 to i64
  %371 = getelementptr inbounds [12 x i32], [12 x i32]* @switch.table.316, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  br label %373

; <label>:373:                                    ; preds = %369, %362
  %374 = phi i32 [ %372, %369 ], [ 0, %362 ]
  %375 = getelementptr inbounds i8, i8* %221, i64 144
  %376 = bitcast i8* %375 to i32*
  store i32 %374, i32* %376, align 8
  %377 = select i1 %363, i64 1, i64 2
  %378 = getelementptr inbounds i8, i8* %221, i64 168
  %379 = bitcast i8* %378 to i64*
  store i64 %377, i64* %379, align 8
  br label %384

; <label>:380:                                    ; preds = %346
  %381 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %224, i1 zeroext false)
  %382 = getelementptr inbounds i8, i8* %221, i64 112
  %383 = bitcast i8* %382 to i16*
  store i16 %381, i16* %383, align 8
  br label %384

; <label>:384:                                    ; preds = %373, %380
  %385 = getelementptr inbounds i8, i8* %221, i64 16
  %386 = bitcast i8* %385 to %struct._ftsent**
  store %struct._ftsent* null, %struct._ftsent** %386, align 8
  %387 = icmp eq %struct._ftsent* %181, null
  br i1 %387, label %391, label %388

; <label>:388:                                    ; preds = %384
  %389 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %179, i64 0, i32 2
  %390 = bitcast %struct._ftsent** %389 to i8**
  store i8* %221, i8** %390, align 8
  br label %391

; <label>:391:                                    ; preds = %388, %384
  %392 = phi %struct._ftsent* [ %181, %388 ], [ %224, %384 ]
  %393 = add nuw i64 %180, 1
  %394 = icmp ugt i64 %85, %393
  br i1 %394, label %175, label %401

; <label>:395:                                    ; preds = %193, %190
  %396 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %397 = icmp eq %struct.__dirstream* %396, null
  br i1 %397, label %406, label %398

; <label>:398:                                    ; preds = %395
  %399 = tail call i32 @closedir(%struct.__dirstream* nonnull %396)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  br label %406

; <label>:400:                                    ; preds = %210
  br label %406

; <label>:401:                                    ; preds = %391, %175
  %402 = phi i8* [ %177, %175 ], [ %296, %391 ]
  %403 = phi i8 [ %178, %175 ], [ %297, %391 ]
  %404 = phi i64 [ %180, %175 ], [ %393, %391 ]
  %405 = phi %struct._ftsent* [ %181, %175 ], [ %392, %391 ]
  br label %406

; <label>:406:                                    ; preds = %401, %400, %395, %398
  %407 = phi i8* [ %177, %398 ], [ %177, %395 ], [ %177, %400 ], [ %402, %401 ]
  %408 = phi i8 [ %178, %398 ], [ %178, %395 ], [ %178, %400 ], [ %403, %401 ]
  %409 = phi i64 [ %180, %398 ], [ %180, %395 ], [ %180, %400 ], [ %404, %401 ]
  %410 = phi %struct._ftsent* [ %181, %398 ], [ %181, %395 ], [ %181, %400 ], [ %405, %401 ]
  %411 = and i8 %408, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %466, label %413

; <label>:413:                                    ; preds = %406
  %414 = load i8*, i8** %158, align 8
  %415 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %416 = load %struct._ftsent*, %struct._ftsent** %415, align 8
  %417 = icmp eq %struct._ftsent* %416, null
  br i1 %417, label %420, label %418

; <label>:418:                                    ; preds = %413
  br label %425

; <label>:419:                                    ; preds = %438
  br label %420

; <label>:420:                                    ; preds = %419, %413
  %421 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %410, i64 0, i32 12
  %422 = load i64, i64* %421, align 8
  %423 = icmp sgt i64 %422, -1
  br i1 %423, label %424, label %466

; <label>:424:                                    ; preds = %420
  br label %442

; <label>:425:                                    ; preds = %418, %438
  %426 = phi %struct._ftsent* [ %440, %438 ], [ %416, %418 ]
  %427 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 6
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 19, i64 0
  %430 = icmp eq i8* %428, %429
  %431 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 7
  br i1 %430, label %438, label %432

; <label>:432:                                    ; preds = %425
  %433 = bitcast i8** %431 to i64*
  %434 = load i64, i64* %433, align 8
  %435 = ptrtoint i8* %428 to i64
  %436 = sub i64 %435, %434
  %437 = getelementptr inbounds i8, i8* %414, i64 %436
  store i8* %437, i8** %427, align 8
  br label %438

; <label>:438:                                    ; preds = %432, %425
  store i8* %414, i8** %431, align 8
  %439 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 2
  %440 = load %struct._ftsent*, %struct._ftsent** %439, align 8
  %441 = icmp eq %struct._ftsent* %440, null
  br i1 %441, label %419, label %425

; <label>:442:                                    ; preds = %424, %455
  %443 = phi %struct._ftsent* [ %461, %455 ], [ %410, %424 ]
  %444 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 6
  %445 = load i8*, i8** %444, align 8
  %446 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 19, i64 0
  %447 = icmp eq i8* %445, %446
  %448 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 7
  br i1 %447, label %455, label %449

; <label>:449:                                    ; preds = %442
  %450 = bitcast i8** %448 to i64*
  %451 = load i64, i64* %450, align 8
  %452 = ptrtoint i8* %445 to i64
  %453 = sub i64 %452, %451
  %454 = getelementptr inbounds i8, i8* %414, i64 %453
  store i8* %454, i8** %444, align 8
  br label %455

; <label>:455:                                    ; preds = %449, %442
  store i8* %414, i8** %448, align 8
  %456 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 2
  %457 = load %struct._ftsent*, %struct._ftsent** %456, align 8
  %458 = icmp ne %struct._ftsent* %457, null
  %459 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 1
  %460 = select i1 %458, %struct._ftsent** %456, %struct._ftsent** %459
  %461 = load %struct._ftsent*, %struct._ftsent** %460, align 8
  %462 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %461, i64 0, i32 12
  %463 = load i64, i64* %462, align 8
  %464 = icmp sgt i64 %463, -1
  br i1 %464, label %442, label %465

; <label>:465:                                    ; preds = %455
  br label %466

; <label>:466:                                    ; preds = %465, %420, %406
  %467 = load i32, i32* %154, align 8
  %468 = and i32 %467, 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %477, label %470

; <label>:470:                                    ; preds = %466
  %471 = load i64, i64* %166, align 8
  %472 = icmp eq i64 %165, %471
  %473 = icmp eq i64 %409, 0
  %474 = or i1 %473, %472
  %475 = getelementptr inbounds i8, i8* %407, i64 -1
  %476 = select i1 %474, i8* %475, i8* %407
  store i8 0, i8* %476, align 1
  br label %477

; <label>:477:                                    ; preds = %466, %470
  %478 = or i1 %8, %144
  br i1 %478, label %512, label %479

; <label>:479:                                    ; preds = %477
  %480 = icmp ne i32 %1, 1
  %481 = icmp ne i64 %409, 0
  %482 = and i1 %480, %481
  br i1 %482, label %535, label %483

; <label>:483:                                    ; preds = %479
  %484 = load i64, i64* %169, align 8
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %489

; <label>:486:                                    ; preds = %483
  %487 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %512, label %494

; <label>:489:                                    ; preds = %483
  %490 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 1
  %491 = load %struct._ftsent*, %struct._ftsent** %490, align 8
  %492 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %491, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.315, i64 0, i64 0))
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %512, label %494

; <label>:494:                                    ; preds = %486, %489
  %495 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %495, align 8
  %496 = load i32, i32* %154, align 8
  %497 = or i32 %496, 16384
  store i32 %497, i32* %154, align 8
  %498 = icmp eq %struct._ftsent* %410, null
  br i1 %498, label %566, label %499

; <label>:499:                                    ; preds = %494
  br label %500

; <label>:500:                                    ; preds = %499, %509
  %501 = phi %struct._ftsent* [ %503, %509 ], [ %410, %499 ]
  %502 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %501, i64 0, i32 2
  %503 = load %struct._ftsent*, %struct._ftsent** %502, align 8
  %504 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %501, i64 0, i32 3
  %505 = load %struct.__dirstream*, %struct.__dirstream** %504, align 8
  %506 = icmp eq %struct.__dirstream* %505, null
  br i1 %506, label %509, label %507

; <label>:507:                                    ; preds = %500
  %508 = tail call i32 @closedir(%struct.__dirstream* nonnull %505) #13
  br label %509

; <label>:509:                                    ; preds = %507, %500
  %510 = bitcast %struct._ftsent* %501 to i8*
  tail call void @free(i8* %510) #13
  %511 = icmp eq %struct._ftsent* %503, null
  br i1 %511, label %565, label %500

; <label>:512:                                    ; preds = %477, %486, %489
  %513 = icmp eq i64 %409, 0
  br i1 %513, label %514, label %535

; <label>:514:                                    ; preds = %512
  %515 = icmp eq i32 %1, 3
  br i1 %515, label %516, label %520

; <label>:516:                                    ; preds = %514
  %517 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %518 = load i16, i16* %517, align 8
  switch i16 %518, label %519 [
    i16 4, label %520
    i16 7, label %520
  ]

; <label>:519:                                    ; preds = %516
  store i16 6, i16* %517, align 8
  br label %520

; <label>:520:                                    ; preds = %516, %516, %519, %514
  %521 = icmp eq %struct._ftsent* %410, null
  br i1 %521, label %566, label %522

; <label>:522:                                    ; preds = %520
  br label %523

; <label>:523:                                    ; preds = %522, %532
  %524 = phi %struct._ftsent* [ %526, %532 ], [ %410, %522 ]
  %525 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %524, i64 0, i32 2
  %526 = load %struct._ftsent*, %struct._ftsent** %525, align 8
  %527 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %524, i64 0, i32 3
  %528 = load %struct.__dirstream*, %struct.__dirstream** %527, align 8
  %529 = icmp eq %struct.__dirstream* %528, null
  br i1 %529, label %532, label %530

; <label>:530:                                    ; preds = %523
  %531 = tail call i32 @closedir(%struct.__dirstream* nonnull %528) #13
  br label %532

; <label>:532:                                    ; preds = %530, %523
  %533 = bitcast %struct._ftsent* %524 to i8*
  tail call void @free(i8* %533) #13
  %534 = icmp eq %struct._ftsent* %526, null
  br i1 %534, label %564, label %523

; <label>:535:                                    ; preds = %479, %512
  %536 = icmp ugt i64 %409, 10000
  br i1 %536, label %537, label %556

; <label>:537:                                    ; preds = %535
  %538 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %539 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %538, null
  br i1 %539, label %540, label %556

; <label>:540:                                    ; preds = %537
  %541 = load i32, i32* %154, align 8
  %542 = and i32 %541, 512
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %556, label %544

; <label>:544:                                    ; preds = %540
  %545 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %546 = load i32, i32* %545, align 4
  %547 = bitcast %struct.statfs* %3 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %547) #13
  %548 = call i32 @fstatfs(i32 %546, %struct.statfs* nonnull %3) #13
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %554

; <label>:550:                                    ; preds = %544
  %551 = getelementptr inbounds %struct.statfs, %struct.statfs* %3, i64 0, i32 0
  %552 = load i64, i64* %551, align 8
  switch i64 %552, label %554 [
    i64 16914836, label %553
    i64 26985, label %553
  ]

; <label>:553:                                    ; preds = %550, %550
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #13
  br label %556

; <label>:554:                                    ; preds = %550, %544
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #13
  store i32 (%struct._ftsent**, %struct._ftsent**)* @fts_compare_ino, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %555 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* nonnull %0, %struct._ftsent* %410, i64 %409)
  store i32 (%struct._ftsent**, %struct._ftsent**)* null, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  br label %556

; <label>:556:                                    ; preds = %553, %540, %537, %554, %535
  %557 = phi %struct._ftsent* [ %410, %537 ], [ %555, %554 ], [ %410, %553 ], [ %410, %540 ], [ %410, %535 ]
  %558 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %559 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %558, null
  %560 = icmp ugt i64 %409, 1
  %561 = and i1 %560, %559
  br i1 %561, label %562, label %566

; <label>:562:                                    ; preds = %556
  %563 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* nonnull %0, %struct._ftsent* %557, i64 %409)
  br label %566

; <label>:564:                                    ; preds = %532
  br label %566

; <label>:565:                                    ; preds = %509
  br label %566

; <label>:566:                                    ; preds = %565, %564, %275, %316, %520, %494, %12, %556, %562, %58, %60, %16, %78
  %567 = phi %struct._ftsent* [ null, %78 ], [ null, %16 ], [ null, %60 ], [ null, %58 ], [ %563, %562 ], [ %557, %556 ], [ null, %12 ], [ null, %494 ], [ null, %520 ], [ null, %316 ], [ null, %275 ], [ null, %564 ], [ null, %565 ]
  ret %struct._ftsent* %567
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @restore_initial_cwd(%struct.FTS*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* %12, i32 %11) #13
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @close(i32 %13) #13
  br label %17

; <label>:17:                                     ; preds = %9, %15
  store i32 -100, i32* %10, align 4
  br label %23

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = tail call i32 @fchdir(i32 %20) #13
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23:                                     ; preds = %17, %18, %1
  %24 = phi i1 [ false, %1 ], [ false, %17 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %27 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #15
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %34
  %30 = tail call i32 @i_ring_pop(%struct.I_ring* %26) #13
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @close(i32 %30) #13
  br label %34

; <label>:34:                                     ; preds = %32, %29
  %35 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #15
  br i1 %35, label %36, label %29

; <label>:36:                                     ; preds = %34
  br label %37

; <label>:37:                                     ; preds = %36, %23
  ret i32 %25
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @LCO_hash(i8* nocapture readonly, i64) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @LCO_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32, %struct.statfs*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @enter_dir(%struct.FTS* nocapture readonly, %struct._ftsent*) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 258
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call noalias i8* @malloc(i64 24) #13
  %9 = icmp eq i8* %8, null
  br i1 %9, label %38, label %10

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 0
  %12 = bitcast i64* %11 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %14 = bitcast i8* %8 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %14, align 8
  %15 = getelementptr inbounds i8, i8* %8, i64 16
  %16 = bitcast i8* %15 to %struct._ftsent**
  store %struct._ftsent* %1, %struct._ftsent** %16, align 8
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %18 = load %struct.hash_table*, %struct.hash_table** %17, align 8
  %19 = tail call i8* @hash_insert(%struct.hash_table* %18, i8* nonnull %8) #13
  %20 = icmp eq i8* %19, %8
  br i1 %20, label %38, label %21

; <label>:21:                                     ; preds = %10
  tail call void @free(i8* nonnull %8) #13
  %22 = icmp eq i8* %19, null
  br i1 %22, label %38, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds i8, i8* %19, i64 16
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %struct._ftsent* %1 to i64*
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 15
  store i16 2, i16* %28, align 8
  br label %38

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %31 = bitcast %union.anon* %30 to %struct.cycle_check_state**
  %32 = load %struct.cycle_check_state*, %struct.cycle_check_state** %31, align 8
  %33 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %34 = tail call zeroext i1 @cycle_check(%struct.cycle_check_state* %32, %struct.stat* %33) #13
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 0
  store %struct._ftsent* %1, %struct._ftsent** %36, align 8
  %37 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 15
  store i16 2, i16* %37, align 8
  br label %38

; <label>:38:                                     ; preds = %21, %7, %35, %29, %23, %10
  %39 = phi i1 [ true, %10 ], [ true, %23 ], [ true, %29 ], [ true, %35 ], [ false, %7 ], [ false, %21 ]
  ret i1 %39
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

declare %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @fts_compare_ino(%struct._ftsent** nocapture readonly, %struct._ftsent** nocapture readonly) #9 {
  %3 = load %struct._ftsent*, %struct._ftsent** %0, align 8
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 18, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct._ftsent*, %struct._ftsent** %1, align 8
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 18, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  %10 = icmp ult i64 %8, %5
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @fts_set(%struct.FTS* nocapture readnone, %struct._ftsent* nocapture, i32) local_unnamed_addr #6 {
  %4 = icmp ugt i32 %2, 4
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32* @__errno_location() #1
  store i32 22, i32* %6, align 4
  br label %10

; <label>:7:                                      ; preds = %3
  %8 = trunc i32 %2 to i16
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17
  store i16 %8, i16* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %5
  %11 = phi i32 [ 1, %5 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._ftsent* @fts_children(%struct.FTS*, i32) local_unnamed_addr #6 {
  switch i32 %1, label %3 [
    i32 8192, label %5
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %2
  %4 = tail call i32* @__errno_location() #1
  store i32 22, i32* %4, align 4
  br label %107

; <label>:5:                                      ; preds = %2, %2
  %6 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %7 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %8 = tail call i32* @__errno_location() #1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %107

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 15
  %15 = load i16, i16* %14, align 8
  switch i16 %15, label %107 [
    i16 9, label %16
    i16 1, label %19
  ]

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 2
  %18 = load %struct._ftsent*, %struct._ftsent** %17, align 8
  br label %107

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %21 = load %struct._ftsent*, %struct._ftsent** %20, align 8
  %22 = icmp eq %struct._ftsent* %21, null
  br i1 %22, label %37, label %23

; <label>:23:                                     ; preds = %19
  br label %24

; <label>:24:                                     ; preds = %23, %33
  %25 = phi %struct._ftsent* [ %27, %33 ], [ %21, %23 ]
  %26 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %25, i64 0, i32 2
  %27 = load %struct._ftsent*, %struct._ftsent** %26, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %25, i64 0, i32 3
  %29 = load %struct.__dirstream*, %struct.__dirstream** %28, align 8
  %30 = icmp eq %struct.__dirstream* %29, null
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 @closedir(%struct.__dirstream* nonnull %29) #13
  br label %33

; <label>:33:                                     ; preds = %31, %24
  %34 = bitcast %struct._ftsent* %25 to i8*
  tail call void @free(i8* %34) #13
  %35 = icmp eq %struct._ftsent* %27, null
  br i1 %35, label %36, label %24

; <label>:36:                                     ; preds = %33
  br label %37

; <label>:37:                                     ; preds = %36, %19
  %38 = icmp eq i32 %1, 8192
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %9, align 8
  %41 = or i32 %40, 8192
  store i32 %41, i32* %9, align 8
  br label %42

; <label>:42:                                     ; preds = %37, %39
  %43 = phi i32 [ 2, %39 ], [ 1, %37 ]
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 47
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %9, align 8
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %52, %42, %47
  %57 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* %0, i32 %43)
  store %struct._ftsent* %57, %struct._ftsent** %20, align 8
  br label %107

; <label>:58:                                     ; preds = %52
  %59 = shl i32 %53, 13
  %60 = and i32 %59, 131072
  %61 = shl i32 %53, 7
  %62 = and i32 %61, 262144
  %63 = or i32 %60, %62
  %64 = or i32 %63, 67840
  %65 = and i32 %53, 512
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

; <label>:67:                                     ; preds = %58
  %68 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %64) #13
  br label %73

; <label>:71:                                     ; preds = %58
  %72 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.310, i64 0, i64 0), i32 %64) #13
  br label %73

; <label>:73:                                     ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %77, label %76

; <label>:76:                                     ; preds = %73
  store %struct._ftsent* null, %struct._ftsent** %20, align 8
  br label %107

; <label>:77:                                     ; preds = %73
  %78 = tail call i32 @set_cloexec_flag(i32 %74, i1 zeroext true) #13
  %79 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* nonnull %0, i32 %43)
  store %struct._ftsent* %79, %struct._ftsent** %20, align 8
  %80 = load i32, i32* %9, align 8
  %81 = and i32 %80, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, %74
  %87 = icmp eq i32 %85, -100
  %88 = or i1 %86, %87
  br i1 %88, label %90, label %89

; <label>:89:                                     ; preds = %83
  tail call void @abort() #16
  unreachable

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %92 = tail call i32 @i_ring_push(%struct.I_ring* %91, i32 %85) #13
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %90
  %95 = tail call i32 @close(i32 %92) #13
  br label %96

; <label>:96:                                     ; preds = %90, %94
  store i32 %74, i32* %84, align 4
  br label %105

; <label>:97:                                     ; preds = %77
  %98 = tail call i32 @fchdir(i32 %74) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = tail call i32 @close(i32 %74) #13
  store i32 %101, i32* %8, align 4
  br label %107

; <label>:103:                                    ; preds = %97
  %104 = tail call i32 @close(i32 %74) #13
  br label %105

; <label>:105:                                    ; preds = %103, %96
  %106 = load %struct._ftsent*, %struct._ftsent** %20, align 8
  br label %107

; <label>:107:                                    ; preds = %13, %5, %105, %100, %76, %56, %16, %3
  %108 = phi %struct._ftsent* [ null, %3 ], [ %18, %16 ], [ %57, %56 ], [ null, %76 ], [ %106, %105 ], [ null, %100 ], [ null, %5 ], [ null, %13 ]
  ret %struct._ftsent* %108
}

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

; Function Attrs: nounwind sspstrong uwtable
define %struct.mount_entry* @read_file_system_list(i1 zeroext) local_unnamed_addr #6 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to %struct.mount_entry**
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %17)
  %18 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.323, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.324, i64 0, i64 0))
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %353, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %21) #13
  store i8* null, i8** %4, align 8
  %22 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %22) #13
  store i64 0, i64* %5, align 8
  %23 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #13
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %337, label %25

; <label>:25:                                     ; preds = %20
  %26 = bitcast i32* %6 to i8*
  %27 = bitcast i32* %7 to i8*
  %28 = bitcast i32* %8 to i8*
  %29 = bitcast i32* %9 to i8*
  %30 = bitcast i32* %10 to i8*
  %31 = bitcast i32* %11 to i8*
  %32 = bitcast i32* %12 to i8*
  %33 = bitcast i32* %13 to i8*
  %34 = bitcast i32* %14 to i8*
  %35 = bitcast i32* %15 to i8*
  br label %36

; <label>:36:                                     ; preds = %25, %332
  %37 = phi %struct.mount_entry** [ %3, %25 ], [ %333, %332 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %26) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %27) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %28) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %29) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %30) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %31) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %32) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %33) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %34) #13
  call void @llvm.lifetime.start(i64 4, i8* nonnull %35) #13
  call void @llvm.lifetime.start(i64 1, i8* nonnull %16) #13
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @sscanf(i8* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.325, i64 0, i64 0), i32* nonnull %6, i32* nonnull %7, i32* nonnull %14, i32* nonnull %15, i32* nonnull %8, i32* nonnull %9, i8* nonnull %16) #13
  switch i32 %39, label %332 [
    i32 7, label %40
    i32 3, label %40
  ]

; <label>:40:                                     ; preds = %36, %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.326, i64 0, i64 0)) #15
  %46 = icmp eq i8* %45, null
  br i1 %46, label %332, label %47

; <label>:47:                                     ; preds = %40
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.327, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i8* nonnull %16) #13
  switch i32 %48, label %332 [
    i32 5, label %49
    i32 1, label %49
  ]

; <label>:49:                                     ; preds = %47, %47
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %45, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %45, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %45, i64 %65
  %67 = call i64 @strlen(i8* %66) #15
  %68 = add i64 %67, 1
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %112, label %70

; <label>:70:                                     ; preds = %49
  br label %71

; <label>:71:                                     ; preds = %70, %104
  %72 = phi i64 [ %109, %104 ], [ 0, %70 ]
  %73 = phi i64 [ %108, %104 ], [ 0, %70 ]
  %74 = getelementptr inbounds i8, i8* %66, i64 %72
  %75 = load i8, i8* %74, align 1
  %76 = icmp eq i8 %75, 92
  %77 = add i64 %72, 4
  %78 = icmp ult i64 %77, %68
  %79 = and i1 %78, %76
  br i1 %79, label %80, label %104

; <label>:80:                                     ; preds = %71
  %81 = add i64 %72, 1
  %82 = getelementptr inbounds i8, i8* %66, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = and i8 %83, -4
  %85 = icmp eq i8 %84, 48
  br i1 %85, label %86, label %104

; <label>:86:                                     ; preds = %80
  %87 = add i64 %72, 2
  %88 = getelementptr inbounds i8, i8* %66, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = and i8 %89, -8
  %91 = icmp eq i8 %90, 48
  br i1 %91, label %92, label %104

; <label>:92:                                     ; preds = %86
  %93 = add i64 %72, 3
  %94 = getelementptr inbounds i8, i8* %66, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = and i8 %95, -8
  %97 = icmp eq i8 %96, 48
  br i1 %97, label %98, label %104

; <label>:98:                                     ; preds = %92
  %99 = shl i8 %83, 6
  %100 = shl i8 %89, 3
  %101 = add i8 %99, 80
  %102 = add i8 %101, %100
  %103 = add i8 %102, %95
  br label %104

; <label>:104:                                    ; preds = %98, %92, %86, %80, %71
  %105 = phi i8 [ %103, %98 ], [ 92, %92 ], [ 92, %86 ], [ 92, %80 ], [ %75, %71 ]
  %106 = phi i64 [ %93, %98 ], [ %72, %92 ], [ %72, %86 ], [ %72, %80 ], [ %72, %71 ]
  %107 = getelementptr inbounds i8, i8* %66, i64 %73
  store i8 %105, i8* %107, align 1
  %108 = add i64 %73, 1
  %109 = add i64 %106, 1
  %110 = icmp ult i64 %109, %68
  br i1 %110, label %71, label %111

; <label>:111:                                    ; preds = %104
  br label %112

; <label>:112:                                    ; preds = %111, %49
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = call i64 @strlen(i8* %116) #15
  %118 = add i64 %117, 1
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %163, label %120

; <label>:120:                                    ; preds = %112
  br label %121

; <label>:121:                                    ; preds = %120, %154
  %122 = phi i64 [ %159, %154 ], [ 0, %120 ]
  %123 = phi i64 [ %158, %154 ], [ 0, %120 ]
  %124 = getelementptr inbounds i8, i8* %116, i64 %122
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 92
  %127 = add i64 %122, 4
  %128 = icmp ult i64 %127, %118
  %129 = and i1 %128, %126
  br i1 %129, label %130, label %154

; <label>:130:                                    ; preds = %121
  %131 = add i64 %122, 1
  %132 = getelementptr inbounds i8, i8* %116, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = and i8 %133, -4
  %135 = icmp eq i8 %134, 48
  br i1 %135, label %136, label %154

; <label>:136:                                    ; preds = %130
  %137 = add i64 %122, 2
  %138 = getelementptr inbounds i8, i8* %116, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = and i8 %139, -8
  %141 = icmp eq i8 %140, 48
  br i1 %141, label %142, label %154

; <label>:142:                                    ; preds = %136
  %143 = add i64 %122, 3
  %144 = getelementptr inbounds i8, i8* %116, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = and i8 %145, -8
  %147 = icmp eq i8 %146, 48
  br i1 %147, label %148, label %154

; <label>:148:                                    ; preds = %142
  %149 = shl i8 %133, 6
  %150 = shl i8 %139, 3
  %151 = add i8 %149, 80
  %152 = add i8 %151, %150
  %153 = add i8 %152, %145
  br label %154

; <label>:154:                                    ; preds = %148, %142, %136, %130, %121
  %155 = phi i8 [ %153, %148 ], [ 92, %142 ], [ 92, %136 ], [ 92, %130 ], [ %125, %121 ]
  %156 = phi i64 [ %143, %148 ], [ %122, %142 ], [ %122, %136 ], [ %122, %130 ], [ %122, %121 ]
  %157 = getelementptr inbounds i8, i8* %116, i64 %123
  store i8 %155, i8* %157, align 1
  %158 = add i64 %123, 1
  %159 = add i64 %156, 1
  %160 = icmp ult i64 %159, %118
  br i1 %160, label %121, label %161

; <label>:161:                                    ; preds = %154
  %162 = load i8*, i8** %4, align 8
  br label %163

; <label>:163:                                    ; preds = %161, %112
  %164 = phi i8* [ %162, %161 ], [ %113, %112 ]
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = call i64 @strlen(i8* %167) #15
  %169 = add i64 %168, 1
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %213, label %171

; <label>:171:                                    ; preds = %163
  br label %172

; <label>:172:                                    ; preds = %171, %205
  %173 = phi i64 [ %210, %205 ], [ 0, %171 ]
  %174 = phi i64 [ %209, %205 ], [ 0, %171 ]
  %175 = getelementptr inbounds i8, i8* %167, i64 %173
  %176 = load i8, i8* %175, align 1
  %177 = icmp eq i8 %176, 92
  %178 = add i64 %173, 4
  %179 = icmp ult i64 %178, %169
  %180 = and i1 %179, %177
  br i1 %180, label %181, label %205

; <label>:181:                                    ; preds = %172
  %182 = add i64 %173, 1
  %183 = getelementptr inbounds i8, i8* %167, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = and i8 %184, -4
  %186 = icmp eq i8 %185, 48
  br i1 %186, label %187, label %205

; <label>:187:                                    ; preds = %181
  %188 = add i64 %173, 2
  %189 = getelementptr inbounds i8, i8* %167, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = and i8 %190, -8
  %192 = icmp eq i8 %191, 48
  br i1 %192, label %193, label %205

; <label>:193:                                    ; preds = %187
  %194 = add i64 %173, 3
  %195 = getelementptr inbounds i8, i8* %167, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = and i8 %196, -8
  %198 = icmp eq i8 %197, 48
  br i1 %198, label %199, label %205

; <label>:199:                                    ; preds = %193
  %200 = shl i8 %184, 6
  %201 = shl i8 %190, 3
  %202 = add i8 %200, 80
  %203 = add i8 %202, %201
  %204 = add i8 %203, %196
  br label %205

; <label>:205:                                    ; preds = %199, %193, %187, %181, %172
  %206 = phi i8 [ %204, %199 ], [ 92, %193 ], [ 92, %187 ], [ 92, %181 ], [ %176, %172 ]
  %207 = phi i64 [ %194, %199 ], [ %173, %193 ], [ %173, %187 ], [ %173, %181 ], [ %173, %172 ]
  %208 = getelementptr inbounds i8, i8* %167, i64 %174
  store i8 %206, i8* %208, align 1
  %209 = add i64 %174, 1
  %210 = add i64 %207, 1
  %211 = icmp ult i64 %210, %169
  br i1 %211, label %172, label %212

; <label>:212:                                    ; preds = %205
  br label %213

; <label>:213:                                    ; preds = %212, %163
  %214 = call noalias i8* @xmalloc(i64 56) #13
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %45, i64 %216
  %218 = call noalias i8* @xstrdup(i8* %217) #13
  %219 = bitcast i8* %214 to i8**
  store i8* %218, i8** %219, align 8
  %220 = load i8*, i8** %4, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = call noalias i8* @xstrdup(i8* %223) #13
  %225 = getelementptr inbounds i8, i8* %214, i64 8
  %226 = bitcast i8* %225 to i8**
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = call noalias i8* @xstrdup(i8* %230) #13
  %232 = getelementptr inbounds i8, i8* %214, i64 16
  %233 = bitcast i8* %232 to i8**
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %45, i64 %235
  %237 = call noalias i8* @xstrdup(i8* %236) #13
  %238 = getelementptr inbounds i8, i8* %214, i64 24
  %239 = bitcast i8* %238 to i8**
  store i8* %237, i8** %239, align 8
  %240 = getelementptr inbounds i8, i8* %214, i64 40
  %241 = load i8, i8* %240, align 8
  %242 = or i8 %241, 4
  store i8 %242, i8* %240, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %7, align 4
  %245 = shl i32 %243, 8
  %246 = and i32 %245, 1048320
  %247 = zext i32 %246 to i64
  %248 = and i32 %243, -4096
  %249 = zext i32 %248 to i64
  %250 = shl nuw i64 %249, 32
  %251 = or i64 %247, %250
  %252 = and i32 %244, 255
  %253 = zext i32 %252 to i64
  %254 = or i64 %251, %253
  %255 = and i32 %244, -256
  %256 = zext i32 %255 to i64
  %257 = shl nuw nsw i64 %256, 12
  %258 = or i64 %254, %257
  %259 = getelementptr inbounds i8, i8* %214, i64 32
  %260 = bitcast i8* %259 to i64*
  store i64 %258, i64* %260, align 8
  %261 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.328, i64 0, i64 0)) #13
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %299, label %263

; <label>:263:                                    ; preds = %213
  %264 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.329, i64 0, i64 0)) #13
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %299, label %266

; <label>:266:                                    ; preds = %263
  %267 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.330, i64 0, i64 0)) #13
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %299, label %269

; <label>:269:                                    ; preds = %266
  %270 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.331, i64 0, i64 0)) #13
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %299, label %272

; <label>:272:                                    ; preds = %269
  %273 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.332, i64 0, i64 0)) #13
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %299, label %275

; <label>:275:                                    ; preds = %272
  %276 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.333, i64 0, i64 0)) #13
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %299, label %278

; <label>:278:                                    ; preds = %275
  %279 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.334, i64 0, i64 0)) #13
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %299, label %281

; <label>:281:                                    ; preds = %278
  %282 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.335, i64 0, i64 0)) #13
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %299, label %284

; <label>:284:                                    ; preds = %281
  %285 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.336, i64 0, i64 0)) #13
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %299, label %287

; <label>:287:                                    ; preds = %284
  %288 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.337, i64 0, i64 0)) #13
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %299, label %290

; <label>:290:                                    ; preds = %287
  %291 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.338, i64 0, i64 0)) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %290
  %294 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.339, i64 0, i64 0)) #13
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

; <label>:296:                                    ; preds = %293
  %297 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.340, i64 0, i64 0)) #13
  %298 = icmp eq i32 %297, 0
  br label %299

; <label>:299:                                    ; preds = %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %213
  %300 = phi i1 [ true, %293 ], [ true, %290 ], [ true, %287 ], [ true, %284 ], [ true, %281 ], [ true, %278 ], [ true, %275 ], [ true, %272 ], [ true, %269 ], [ true, %266 ], [ true, %263 ], [ true, %213 ], [ %298, %296 ]
  %301 = zext i1 %300 to i8
  %302 = and i8 %242, -2
  %303 = or i8 %302, %301
  store i8 %303, i8* %240, align 8
  %304 = load i8*, i8** %219, align 8
  %305 = call i8* @strchr(i8* %304, i32 58) #13
  %306 = icmp eq i8* %305, null
  br i1 %306, label %307, label %323

; <label>:307:                                    ; preds = %299
  %308 = load i8, i8* %304, align 1
  %309 = icmp eq i8 %308, 47
  br i1 %309, label %310, label %320

; <label>:310:                                    ; preds = %307
  %311 = getelementptr inbounds i8, i8* %304, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = icmp eq i8 %312, 47
  br i1 %313, label %314, label %320

; <label>:314:                                    ; preds = %310
  %315 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.341, i64 0, i64 0)) #13
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %323, label %317

; <label>:317:                                    ; preds = %314
  %318 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.342, i64 0, i64 0)) #13
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

; <label>:320:                                    ; preds = %307, %310, %317
  %321 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.343, i64 0, i64 0), i8* nonnull %304) #13
  %322 = icmp eq i32 %321, 0
  br label %323

; <label>:323:                                    ; preds = %299, %320, %317, %314
  %324 = phi i1 [ true, %317 ], [ true, %314 ], [ true, %299 ], [ %322, %320 ]
  %325 = zext i1 %324 to i8
  %326 = shl nuw nsw i8 %325, 1
  %327 = and i8 %303, -3
  %328 = or i8 %327, %326
  store i8 %328, i8* %240, align 8
  %329 = bitcast %struct.mount_entry** %37 to i8**
  store i8* %214, i8** %329, align 8
  %330 = getelementptr inbounds i8, i8* %214, i64 48
  %331 = bitcast i8* %330 to %struct.mount_entry**
  br label %332

; <label>:332:                                    ; preds = %47, %40, %36, %323
  %333 = phi %struct.mount_entry** [ %331, %323 ], [ %37, %36 ], [ %37, %40 ], [ %37, %47 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %16) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %35) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %34) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %33) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %32) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %31) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %30) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %29) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %28) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %27) #13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %26) #13
  %334 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #13
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %36

; <label>:336:                                    ; preds = %332
  br label %337

; <label>:337:                                    ; preds = %336, %20
  %338 = phi %struct.mount_entry** [ %3, %20 ], [ %333, %336 ]
  %339 = load i8*, i8** %4, align 8
  call void @free(i8* %339) #13
  %340 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = and i32 %341, 32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %348, label %344

; <label>:344:                                    ; preds = %337
  %345 = tail call i32* @__errno_location() #1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #13
  store i32 %346, i32* %345, align 4
  br label %351

; <label>:348:                                    ; preds = %337
  %349 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #13
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %352

; <label>:351:                                    ; preds = %348, %344
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #13
  br label %469

; <label>:352:                                    ; preds = %348
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #13
  br label %466

; <label>:353:                                    ; preds = %1
  %354 = tail call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21.344, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.324, i64 0, i64 0)) #13
  %355 = icmp eq %struct._IO_FILE* %354, null
  br i1 %355, label %500, label %356

; <label>:356:                                    ; preds = %353
  %357 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #13
  %358 = icmp eq %struct.mntent* %357, null
  br i1 %358, label %462, label %359

; <label>:359:                                    ; preds = %356
  br label %360

; <label>:360:                                    ; preds = %359, %448
  %361 = phi %struct.mntent* [ %459, %448 ], [ %357, %359 ]
  %362 = phi %struct.mount_entry** [ %458, %448 ], [ %3, %359 ]
  %363 = tail call i8* @hasmntopt(%struct.mntent* nonnull %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.345, i64 0, i64 0)) #13
  %364 = tail call noalias i8* @xmalloc(i64 56) #13
  %365 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = tail call noalias i8* @xstrdup(i8* %366) #13
  %368 = bitcast i8* %364 to i8**
  store i8* %367, i8** %368, align 8
  %369 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 1
  %370 = load i8*, i8** %369, align 8
  %371 = tail call noalias i8* @xstrdup(i8* %370) #13
  %372 = getelementptr inbounds i8, i8* %364, i64 8
  %373 = bitcast i8* %372 to i8**
  store i8* %371, i8** %373, align 8
  %374 = getelementptr inbounds i8, i8* %364, i64 16
  %375 = bitcast i8* %374 to i8**
  store i8* null, i8** %375, align 8
  %376 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 2
  %377 = load i8*, i8** %376, align 8
  %378 = tail call noalias i8* @xstrdup(i8* %377) #13
  %379 = getelementptr inbounds i8, i8* %364, i64 24
  %380 = bitcast i8* %379 to i8**
  store i8* %378, i8** %380, align 8
  %381 = getelementptr inbounds i8, i8* %364, i64 40
  %382 = load i8, i8* %381, align 8
  %383 = or i8 %382, 4
  store i8 %383, i8* %381, align 8
  %384 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.328, i64 0, i64 0)) #13
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %424, label %386

; <label>:386:                                    ; preds = %360
  %387 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.329, i64 0, i64 0)) #13
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %424, label %389

; <label>:389:                                    ; preds = %386
  %390 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.330, i64 0, i64 0)) #13
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %424, label %392

; <label>:392:                                    ; preds = %389
  %393 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.331, i64 0, i64 0)) #13
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %424, label %395

; <label>:395:                                    ; preds = %392
  %396 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.332, i64 0, i64 0)) #13
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %424, label %398

; <label>:398:                                    ; preds = %395
  %399 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.333, i64 0, i64 0)) #13
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %424, label %401

; <label>:401:                                    ; preds = %398
  %402 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.334, i64 0, i64 0)) #13
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %424, label %404

; <label>:404:                                    ; preds = %401
  %405 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.335, i64 0, i64 0)) #13
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %424, label %407

; <label>:407:                                    ; preds = %404
  %408 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.336, i64 0, i64 0)) #13
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %424, label %410

; <label>:410:                                    ; preds = %407
  %411 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.337, i64 0, i64 0)) #13
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %424, label %413

; <label>:413:                                    ; preds = %410
  %414 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.338, i64 0, i64 0)) #13
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %424, label %416

; <label>:416:                                    ; preds = %413
  %417 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.339, i64 0, i64 0)) #13
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %424, label %419

; <label>:419:                                    ; preds = %416
  %420 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.340, i64 0, i64 0)) #13
  %421 = icmp eq i32 %420, 0
  %422 = icmp eq i8* %363, null
  %423 = and i1 %422, %421
  br label %424

; <label>:424:                                    ; preds = %419, %416, %413, %410, %407, %404, %401, %398, %395, %392, %389, %386, %360
  %425 = phi i1 [ true, %416 ], [ true, %413 ], [ true, %410 ], [ true, %407 ], [ true, %404 ], [ true, %401 ], [ true, %398 ], [ true, %395 ], [ true, %392 ], [ true, %389 ], [ true, %386 ], [ true, %360 ], [ %423, %419 ]
  %426 = zext i1 %425 to i8
  %427 = and i8 %383, -2
  %428 = or i8 %427, %426
  store i8 %428, i8* %381, align 8
  %429 = load i8*, i8** %368, align 8
  %430 = tail call i8* @strchr(i8* %429, i32 58) #13
  %431 = icmp eq i8* %430, null
  br i1 %431, label %432, label %448

; <label>:432:                                    ; preds = %424
  %433 = load i8, i8* %429, align 1
  %434 = icmp eq i8 %433, 47
  br i1 %434, label %435, label %445

; <label>:435:                                    ; preds = %432
  %436 = getelementptr inbounds i8, i8* %429, i64 1
  %437 = load i8, i8* %436, align 1
  %438 = icmp eq i8 %437, 47
  br i1 %438, label %439, label %445

; <label>:439:                                    ; preds = %435
  %440 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.341, i64 0, i64 0)) #13
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %448, label %442

; <label>:442:                                    ; preds = %439
  %443 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.342, i64 0, i64 0)) #13
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

; <label>:445:                                    ; preds = %432, %435, %442
  %446 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.343, i64 0, i64 0), i8* nonnull %429) #13
  %447 = icmp eq i32 %446, 0
  br label %448

; <label>:448:                                    ; preds = %424, %445, %442, %439
  %449 = phi i1 [ true, %442 ], [ true, %439 ], [ true, %424 ], [ %447, %445 ]
  %450 = zext i1 %449 to i8
  %451 = shl nuw nsw i8 %450, 1
  %452 = and i8 %428, -3
  %453 = or i8 %452, %451
  store i8 %453, i8* %381, align 8
  %454 = getelementptr inbounds i8, i8* %364, i64 32
  %455 = bitcast i8* %454 to i64*
  store i64 -1, i64* %455, align 8
  %456 = bitcast %struct.mount_entry** %362 to i8**
  store i8* %364, i8** %456, align 8
  %457 = getelementptr inbounds i8, i8* %364, i64 48
  %458 = bitcast i8* %457 to %struct.mount_entry**
  %459 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #13
  %460 = icmp eq %struct.mntent* %459, null
  br i1 %460, label %461, label %360

; <label>:461:                                    ; preds = %448
  br label %462

; <label>:462:                                    ; preds = %461, %356
  %463 = phi %struct.mount_entry** [ %3, %356 ], [ %458, %461 ]
  %464 = tail call i32 @endmntent(%struct._IO_FILE* nonnull %354) #13
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %469, label %466

; <label>:466:                                    ; preds = %462, %352
  %467 = phi %struct.mount_entry** [ %463, %462 ], [ %338, %352 ]
  store %struct.mount_entry* null, %struct.mount_entry** %467, align 8
  %468 = load %struct.mount_entry*, %struct.mount_entry** %3, align 8
  br label %500

; <label>:469:                                    ; preds = %462, %351
  %470 = phi %struct.mount_entry** [ %338, %351 ], [ %463, %462 ]
  %471 = tail call i32* @__errno_location() #1
  %472 = load i32, i32* %471, align 4
  store %struct.mount_entry* null, %struct.mount_entry** %470, align 8
  %473 = load %struct.mount_entry*, %struct.mount_entry** %3, align 8
  %474 = icmp eq %struct.mount_entry* %473, null
  br i1 %474, label %499, label %475

; <label>:475:                                    ; preds = %469
  br label %476

; <label>:476:                                    ; preds = %475, %494
  %477 = phi %struct.mount_entry* [ %496, %494 ], [ %473, %475 ]
  %478 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 6
  %479 = bitcast %struct.mount_entry** %478 to i64*
  %480 = load i64, i64* %479, align 8
  %481 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 0
  %482 = load i8*, i8** %481, align 8
  call void @free(i8* %482) #13
  %483 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 1
  %484 = load i8*, i8** %483, align 8
  call void @free(i8* %484) #13
  %485 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 2
  %486 = load i8*, i8** %485, align 8
  call void @free(i8* %486) #13
  %487 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 5
  %488 = load i8, i8* %487, align 8
  %489 = and i8 %488, 4
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %494, label %491

; <label>:491:                                    ; preds = %476
  %492 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 3
  %493 = load i8*, i8** %492, align 8
  call void @free(i8* %493) #13
  br label %494

; <label>:494:                                    ; preds = %476, %491
  %495 = bitcast %struct.mount_entry* %477 to i8*
  call void @free(i8* %495) #13
  store i64 %480, i64* %2, align 8
  %496 = inttoptr i64 %480 to %struct.mount_entry*
  %497 = icmp eq i64 %480, 0
  br i1 %497, label %498, label %476

; <label>:498:                                    ; preds = %494
  br label %499

; <label>:499:                                    ; preds = %498, %469
  store i32 %472, i32* %471, align 4
  br label %500

; <label>:500:                                    ; preds = %353, %499, %466
  %501 = phi %struct.mount_entry* [ null, %499 ], [ %468, %466 ], [ null, %353 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %17)
  ret %struct.mount_entry* %501
}

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare %struct._IO_FILE* @setmntent(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.mntent* @getmntent(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @hasmntopt(%struct.mntent*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @endmntent(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @free_mount_entry(%struct.mount_entry* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 0
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #13
  %4 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #13
  %6 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #13
  %8 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 5
  %9 = load i8, i8* %8, align 8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 8
  tail call void @free(i8* %14) #13
  br label %15

; <label>:15:                                     ; preds = %1, %12
  %16 = bitcast %struct.mount_entry* %0 to i8*
  tail call void @free(i8* %16) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #6 {
  %2 = icmp ne i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #15
  %5 = add i64 %4, 1
  br label %6

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  %8 = icmp ult i64 %7, 119
  %9 = add i64 %7, 17
  %10 = and i64 %9, -8
  %11 = select i1 %8, i64 128, i64 %10
  %12 = tail call noalias i8* @malloc(i64 %11) #13
  %13 = bitcast i8* %12 to %struct.tm_zone*
  %14 = icmp eq i8* %12, null
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %6
  %16 = bitcast i8* %12 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %16, align 8
  %17 = zext i1 %2 to i8
  %18 = getelementptr inbounds i8, i8* %12, i64 8
  store i8 %17, i8* %18, align 8
  %19 = getelementptr inbounds i8, i8* %12, i64 9
  store i8 0, i8* %19, align 1
  br i1 %2, label %20, label %22

; <label>:20:                                     ; preds = %15
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* nonnull %0, i64 %7, i32 1, i1 false) #13
  %21 = getelementptr inbounds i8, i8* %19, i64 %7
  store i8 0, i8* %21, align 1
  br label %22

; <label>:22:                                     ; preds = %6, %15, %20
  ret %struct.tm_zone* %13
}

; Function Attrs: nounwind sspstrong uwtable
define void @tzfree(%struct.tm_zone*) local_unnamed_addr #6 {
  %2 = icmp ult %struct.tm_zone* %0, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %2, label %11, label %3

; <label>:3:                                      ; preds = %1
  br label %4

; <label>:4:                                      ; preds = %3, %4
  %5 = phi %struct.tm_zone* [ %7, %4 ], [ %0, %3 ]
  %6 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %5, i64 0, i32 0
  %7 = load %struct.tm_zone*, %struct.tm_zone** %6, align 8
  %8 = bitcast %struct.tm_zone* %5 to i8*
  tail call void @free(i8* %8) #13
  %9 = icmp eq %struct.tm_zone* %7, null
  br i1 %9, label %10, label %4

; <label>:10:                                     ; preds = %4
  br label %11

; <label>:11:                                     ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.tm* @localtime_rz(%struct.tm_zone*, i64* nonnull, %struct.tm* nonnull) local_unnamed_addr #6 {
  %4 = icmp eq %struct.tm_zone* %0, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #13
  br label %54

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %54, label %10

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #13
  %12 = icmp eq %struct.tm* %11, null
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %10
  %14 = tail call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %2)
  %15 = xor i1 %14, true
  br label %16

; <label>:16:                                     ; preds = %10, %13
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  %18 = icmp eq %struct.tm_zone* %8, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %18, label %49, label %19

; <label>:19:                                     ; preds = %16
  %20 = tail call i32* @__errno_location() #1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 1
  %23 = load i8, i8* %22, align 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %8, i64 0, i32 2, i64 0
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0), i8* nonnull %26, i32 1) #13
  br label %30

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0)) #13
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #13
  br label %36

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %20, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %33
  %37 = phi i1 [ false, %34 ], [ true, %33 ]
  %38 = phi i32 [ %35, %34 ], [ %21, %33 ]
  %39 = icmp ult %struct.tm_zone* %8, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %39, label %48, label %40

; <label>:40:                                     ; preds = %36
  br label %41

; <label>:41:                                     ; preds = %40, %41
  %42 = phi %struct.tm_zone* [ %44, %41 ], [ %8, %40 ]
  %43 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %42, i64 0, i32 0
  %44 = load %struct.tm_zone*, %struct.tm_zone** %43, align 8
  %45 = bitcast %struct.tm_zone* %42 to i8*
  tail call void @free(i8* %45) #13
  %46 = icmp eq %struct.tm_zone* %44, null
  br i1 %46, label %47, label %41

; <label>:47:                                     ; preds = %41
  br label %48

; <label>:48:                                     ; preds = %47, %36
  store i32 %38, i32* %20, align 4
  br label %49

; <label>:49:                                     ; preds = %16, %48
  %50 = phi i1 [ %37, %48 ], [ true, %16 ]
  %51 = xor i1 %50, true
  %52 = or i1 %17, %51
  %53 = select i1 %52, %struct.tm* null, %struct.tm* %2
  ret %struct.tm* %53

; <label>:54:                                     ; preds = %7, %5
  %55 = phi %struct.tm* [ %6, %5 ], [ null, %7 ]
  ret %struct.tm* %55
}

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct.tm_zone* @set_tz(%struct.tm_zone*) unnamed_addr #6 {
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0)) #13
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* %9, i8* nonnull %2) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %13

; <label>:12:                                     ; preds = %1
  br i1 %6, label %56, label %16

; <label>:13:                                     ; preds = %7, %8
  %14 = tail call i64 @strlen(i8* nonnull %2) #15
  %15 = add i64 %14, 1
  br label %16

; <label>:16:                                     ; preds = %12, %13
  %17 = phi i1 [ true, %13 ], [ false, %12 ]
  %18 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %19 = icmp ult i64 %18, 119
  %20 = add i64 %18, 17
  %21 = and i64 %20, -8
  %22 = select i1 %19, i64 128, i64 %21
  %23 = tail call noalias i8* @malloc(i64 %22) #13
  %24 = bitcast i8* %23 to %struct.tm_zone*
  %25 = icmp eq i8* %23, null
  br i1 %25, label %56, label %26

; <label>:26:                                     ; preds = %16
  %27 = bitcast i8* %23 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %27, align 8
  %28 = zext i1 %17 to i8
  %29 = getelementptr inbounds i8, i8* %23, i64 8
  store i8 %28, i8* %29, align 8
  %30 = getelementptr inbounds i8, i8* %23, i64 9
  store i8 0, i8* %30, align 1
  br i1 %17, label %31, label %33

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* nonnull %2, i64 %18, i32 1, i1 false) #13
  %32 = getelementptr inbounds i8, i8* %30, i64 %18
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  br i1 %6, label %37, label %34

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %36 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0), i8* nonnull %35, i32 1) #13
  br label %39

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0)) #13
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call void @tzset() #13
  br label %56

; <label>:43:                                     ; preds = %39
  %44 = tail call i32* @__errno_location() #1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i8* %23, inttoptr (i64 2 to i8*)
  br i1 %46, label %55, label %47

; <label>:47:                                     ; preds = %43
  br label %48

; <label>:48:                                     ; preds = %47, %48
  %49 = phi %struct.tm_zone* [ %51, %48 ], [ %24, %47 ]
  %50 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %49, i64 0, i32 0
  %51 = load %struct.tm_zone*, %struct.tm_zone** %50, align 8
  %52 = bitcast %struct.tm_zone* %49 to i8*
  tail call void @free(i8* %52) #13
  %53 = icmp eq %struct.tm_zone* %51, null
  br i1 %53, label %54, label %48

; <label>:54:                                     ; preds = %48
  br label %55

; <label>:55:                                     ; preds = %54, %43
  store i32 %45, i32* %44, align 4
  br label %56

; <label>:56:                                     ; preds = %16, %42, %55, %8, %12
  %57 = phi %struct.tm_zone* [ inttoptr (i64 1 to %struct.tm_zone*), %12 ], [ inttoptr (i64 1 to %struct.tm_zone*), %8 ], [ null, %55 ], [ %24, %42 ], [ null, %16 ]
  ret %struct.tm_zone* %57
}

; Function Attrs: nounwind
declare %struct.tm* @localtime_r(i64*, %struct.tm*) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @save_abbr(%struct.tm_zone*, %struct.tm*) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 10
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %77, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.tm* %1 to i8*
  %8 = icmp ugt i8* %7, %4
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 1
  %11 = bitcast %struct.tm* %10 to i8*
  %12 = icmp ult i8* %4, %11
  br i1 %12, label %77, label %13

; <label>:13:                                     ; preds = %6, %9
  %14 = load i8, i8* %4, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %75, label %16

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  br label %18

; <label>:18:                                     ; preds = %67, %16
  %19 = phi i8* [ %72, %67 ], [ %17, %16 ]
  %20 = phi %struct.tm_zone* [ %73, %67 ], [ %0, %16 ]
  %21 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 0
  %22 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 1
  br label %23

; <label>:23:                                     ; preds = %18, %61
  %24 = phi i8* [ %64, %61 ], [ %19, %18 ]
  %25 = tail call i32 @strcmp(i8* %24, i8* nonnull %4) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %74, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %24, align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %27
  %31 = icmp eq i8* %24, %21
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %30
  %33 = load i8, i8* %22, align 8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %61

; <label>:35:                                     ; preds = %32, %30
  %36 = phi i8* [ %21, %32 ], [ %24, %30 ]
  %37 = tail call i64 @strlen(i8* nonnull %4) #15
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 119
  %40 = ptrtoint i8* %39 to i64
  %41 = ptrtoint i8* %36 to i64
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %4, i64 %38, i32 1, i1 false) #13
  %45 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %45, align 1
  br label %75

; <label>:46:                                     ; preds = %35
  %47 = icmp ult i64 %38, 119
  %48 = add i64 %37, 18
  %49 = and i64 %48, -8
  %50 = select i1 %47, i64 128, i64 %49
  %51 = tail call noalias i8* @malloc(i64 %50) #13
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8* %51 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 8
  store i8 1, i8* %55, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 0, i8* %56, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* nonnull %4, i64 %38, i32 1, i1 false) #13
  %57 = getelementptr inbounds i8, i8* %56, i64 %38
  store i8 0, i8* %57, align 1
  %58 = bitcast %struct.tm_zone* %20 to i8**
  store i8* %51, i8** %58, align 8
  store i8 0, i8* %55, align 8
  br label %75

; <label>:59:                                     ; preds = %46
  %60 = bitcast %struct.tm_zone* %20 to i8**
  store i8* null, i8** %60, align 8
  br label %77

; <label>:61:                                     ; preds = %32, %27
  %62 = tail call i64 @strlen(i8* nonnull %24) #15
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %24, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %23

; <label>:67:                                     ; preds = %61
  %68 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 0
  %69 = load %struct.tm_zone*, %struct.tm_zone** %68, align 8
  %70 = icmp eq %struct.tm_zone* %69, null
  %71 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %69, i64 0, i32 2, i64 0
  %72 = select i1 %70, i8* %64, i8* %71
  %73 = select i1 %70, %struct.tm_zone* %20, %struct.tm_zone* %69
  br label %18

; <label>:74:                                     ; preds = %23
  br label %75

; <label>:75:                                     ; preds = %74, %44, %53, %13
  %76 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.353, i64 0, i64 0), %13 ], [ %56, %53 ], [ %36, %44 ], [ %24, %74 ]
  store i8* %76, i8** %3, align 8
  br label %77

; <label>:77:                                     ; preds = %59, %9, %2, %75
  %78 = phi i1 [ true, %75 ], [ true, %2 ], [ true, %9 ], [ false, %59 ]
  ret i1 %78
}

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unsetenv(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @tzset() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_z(%struct.tm_zone*, %struct.tm* nonnull) local_unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  %5 = icmp eq %struct.tm_zone* %0, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #13
  br label %106

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %10 = icmp eq %struct.tm_zone* %9, null
  br i1 %10, label %106, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #13
  %13 = tail call i64 @rpl_mktime(%struct.tm* nonnull %1) #13
  store i64 %13, i64* %3, align 8
  %14 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #13
  %15 = icmp eq i64 %13, -1
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %11
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #13
  %18 = icmp eq %struct.tm* %17, null
  br i1 %18, label %71, label %19

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = xor i32 %23, %21
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, %26
  %30 = or i32 %29, %24
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = xor i32 %34, %32
  %36 = or i32 %30, %35
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, %38
  %42 = or i32 %36, %41
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, %44
  %48 = or i32 %42, %47
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, %50
  %54 = or i32 %48, %53
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %1, i64 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %56, 0
  %60 = icmp eq i32 %58, 0
  %61 = xor i1 %59, %60
  %62 = or i32 %58, %56
  %63 = icmp sgt i32 %62, -1
  %64 = and i1 %63, %61
  %65 = zext i1 %64 to i32
  %66 = or i32 %54, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %19, %11
  %69 = call fastcc zeroext i1 @save_abbr(%struct.tm_zone* nonnull %0, %struct.tm* nonnull %1)
  br i1 %69, label %71, label %70

; <label>:70:                                     ; preds = %68
  store i64 -1, i64* %3, align 8
  br label %71

; <label>:71:                                     ; preds = %19, %16, %70, %68
  %72 = icmp eq %struct.tm_zone* %9, inttoptr (i64 1 to %struct.tm_zone*)
  br i1 %72, label %104, label %73

; <label>:73:                                     ; preds = %71
  %74 = tail call i32* @__errno_location() #1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %73
  %80 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %9, i64 0, i32 2, i64 0
  %81 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0), i8* nonnull %80, i32 1) #13
  br label %84

; <label>:82:                                     ; preds = %73
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.352, i64 0, i64 0)) #13
  br label %84

; <label>:84:                                     ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call void @tzset() #13
  br label %90

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %74, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %87
  %91 = phi i1 [ false, %88 ], [ true, %87 ]
  %92 = phi i32 [ %89, %88 ], [ %75, %87 ]
  %93 = icmp ult %struct.tm_zone* %9, inttoptr (i64 2 to %struct.tm_zone*)
  br i1 %93, label %102, label %94

; <label>:94:                                     ; preds = %90
  br label %95

; <label>:95:                                     ; preds = %94, %95
  %96 = phi %struct.tm_zone* [ %98, %95 ], [ %9, %94 ]
  %97 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %96, i64 0, i32 0
  %98 = load %struct.tm_zone*, %struct.tm_zone** %97, align 8
  %99 = bitcast %struct.tm_zone* %96 to i8*
  call void @free(i8* %99) #13
  %100 = icmp eq %struct.tm_zone* %98, null
  br i1 %100, label %101, label %95

; <label>:101:                                    ; preds = %95
  br label %102

; <label>:102:                                    ; preds = %101, %90
  store i32 %92, i32* %74, align 4
  br i1 %91, label %104, label %103

; <label>:103:                                    ; preds = %102
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #13
  br label %106

; <label>:104:                                    ; preds = %71, %102
  %105 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #13
  br label %106

; <label>:106:                                    ; preds = %8, %103, %104, %6
  %107 = phi i64 [ %7, %6 ], [ %105, %104 ], [ -1, %103 ], [ -1, %8 ]
  ret i64 %107
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 {
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #13
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1
  %7 = and i32 %3, -2
  %8 = select i1 %1, i32 %6, i32 %7
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #13
  %12 = icmp eq i32 %11, -1
  %13 = sext i1 %12 to i32
  ret i32 %13

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #13
  ret i32 %2
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
define void @cycle_check_init(%struct.cycle_check_state* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  store i32 9827862, i32* %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @cycle_check(%struct.cycle_check_state* nocapture, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 9827862
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.364, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.365, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #16
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %36, label %23

; <label>:23:                                     ; preds = %7, %17, %11
  %24 = add i64 %9, 1
  store i64 %24, i64* %8, align 8
  %25 = and i64 %24, %9
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %23, %29, %27, %17
  %37 = phi i1 [ true, %17 ], [ true, %27 ], [ false, %29 ], [ false, %23 ]
  ret i1 %37
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #13
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #13
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #13
  %28 = call i32 @fd_safer(i32 %27) #13
  ret i32 %28
}

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.370, i64 0, i64 0)) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind sspstrong uwtable
define void @i_ring_init(%struct.I_ring* nocapture, i32) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  store i8 1, i8* %3, align 4
  %4 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = insertelement <4 x i32> undef, i32 %1, i32 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> undef, <4 x i32> zeroinitializer
  %8 = bitcast %struct.I_ring* %0 to <4 x i32>*
  store <4 x i32> %7, <4 x i32>* %8, align 4
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  store i32 %1, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @i_ring_empty(%struct.I_ring* nocapture readonly) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @i_ring_push(%struct.I_ring* nocapture, i32) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 4
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = add i32 %8, %4
  %10 = and i32 %9, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %1, i32* %12, align 4
  store i32 %10, i32* %3, align 4
  %14 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %2
  %18 = load i8, i8* %5, align 4
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = add i32 %20, %9
  %22 = and i32 %21, 3
  store i32 %22, i32* %14, align 4
  br label %23

; <label>:23:                                     ; preds = %17, %2
  store i8 0, i8* %5, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @i_ring_pop(%struct.I_ring* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @abort() #16
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %6
  store i8 1, i8* %2, align 4
  br label %22

; <label>:19:                                     ; preds = %6
  %20 = add i32 %14, 3
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %18
  ret i32 %11
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #13
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.382, i64 0, i64 0)) #13
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.383, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #15
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.384, i64 0, i64 0), i64 14, i32 1, i1 false) #13
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.384, i64 0, i64 0), i64 14, i32 1, i1 false) #13
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.385, i64 0, i64 0)) #13
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.386, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #13
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #15
  %83 = call i64 @strlen(i8* nonnull %45) #15
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #13
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.381, i64 0, i64 0), %24 ]
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
  %144 = call i64 @strlen(i8* %134) #15
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #15
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #15
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.387, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @mb_width_aux(i32) local_unnamed_addr #12 {
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
declare i32 @wcwidth(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define void @mb_copy(%struct.mbchar*, %struct.mbchar* readonly) local_unnamed_addr #12 {
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

; Function Attrs: inlinehint nounwind readnone sspstrong uwtable
define zeroext i1 @is_basic(i8 signext) local_unnamed_addr #14 {
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
define i32 @openat_safer(i32, i8*, i32, ...) local_unnamed_addr #6 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = and i32 %2, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %3
  %8 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %8) #13
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 16
  br label %22

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  store i8* %21, i8** %19, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8* [ %16, %12 ], [ %20, %18 ]
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %8) #13
  br label %26

; <label>:26:                                     ; preds = %3, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %3 ]
  %28 = call i32 (i32, i8*, i32, ...) @openat(i32 %0, i8* %1, i32 %2, i32 %27) #13
  %29 = call i32 @fd_safer(i32 %28) #13
  ret i32 %29
}

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #13
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #13
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #13
  store i32 %6, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #13
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
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #13
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
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #13
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #13
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #13
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
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #13
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #13
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @mktime_internal(%struct.tm* nocapture, %struct.tm* (i64*, %struct.tm*)* nocapture, i64* nocapture) local_unnamed_addr #6 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tm, align 8
  %15 = alloca %struct.tm, align 8
  %16 = bitcast %struct.tm* %14 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %16) #13
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %26, 12
  %32 = lshr i32 %31, 31
  %33 = sdiv i32 %26, 12
  %34 = sub nsw i32 %33, %32
  %35 = sext i32 %28 to i64
  %36 = sext i32 %34 to i64
  %37 = add nsw i64 %36, %35
  %38 = and i64 %37, 3
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %3
  %41 = srem i64 %37, 100
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

; <label>:43:                                     ; preds = %40
  %44 = sdiv i64 %37, 100
  %45 = and i64 %44, 3
  %46 = icmp eq i64 %45, 1
  br label %47

; <label>:47:                                     ; preds = %3, %40, %43
  %48 = phi i1 [ false, %3 ], [ true, %40 ], [ %46, %43 ]
  %49 = zext i1 %48 to i64
  %50 = ashr i32 %31, 31
  %51 = and i32 %50, 12
  %52 = add nsw i32 %51, %31
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @__mon_yday, i64 0, i64 %49, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i64
  %57 = sext i32 %24 to i64
  %58 = add nsw i64 %57, -1
  %59 = add nsw i64 %58, %56
  %60 = icmp sgt i32 %18, 0
  %61 = select i1 %60, i32 %18, i32 0
  %62 = icmp slt i32 %61, 59
  %63 = select i1 %62, i32 %61, i32 59
  %64 = load i64, i64* %2, align 8
  %65 = sub i64 0, %64
  %66 = lshr i64 %37, 2
  %67 = add nuw nsw i64 %66, 475
  %68 = sext i1 %39 to i64
  %69 = add i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = sdiv i32 %70, 25
  %72 = srem i32 %70, 25
  %73 = lshr i32 %72, 31
  %74 = sub nsw i32 %71, %73
  %75 = ashr i32 %74, 2
  %76 = sub i32 %70, %74
  %77 = add i32 %76, %75
  %78 = add i32 %77, -477
  %79 = mul nsw i64 %37, 365
  %80 = add i64 %79, -25550
  %81 = sext i32 %78 to i64
  %82 = add i64 %80, %81
  %83 = add i64 %82, %59
  %84 = mul nsw i64 %83, 24
  %85 = sext i32 %22 to i64
  %86 = add i64 %84, %85
  %87 = mul nsw i64 %86, 60
  %88 = sext i32 %20 to i64
  %89 = add i64 %87, %88
  %90 = mul nsw i64 %89, 60
  %91 = zext i32 %63 to i64
  %92 = shl i64 %65, 32
  %93 = ashr exact i64 %92, 32
  %94 = sub nsw i64 %91, %93
  %95 = add i64 %94, %90
  %96 = bitcast i64* %9 to i8*
  %97 = bitcast i64* %7 to i8*
  %98 = bitcast i64* %8 to i8*
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 8
  %100 = icmp slt i32 %30, 0
  %101 = icmp ne i32 %30, 0
  br label %102

; <label>:102:                                    ; preds = %231, %47
  %103 = phi i64 [ %95, %47 ], [ %212, %231 ]
  %104 = phi i32 [ 0, %47 ], [ %234, %231 ]
  %105 = phi i32 [ 6, %47 ], [ %229, %231 ]
  %106 = phi i64 [ %95, %47 ], [ %103, %231 ]
  %107 = phi i64 [ %95, %47 ], [ %106, %231 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #13
  store i64 %103, i64* %9, align 8
  %108 = call %struct.tm* %1(i64* nonnull %9, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #13
  %109 = icmp eq %struct.tm* %108, null
  br i1 %109, label %110, label %145

; <label>:110:                                    ; preds = %102
  %111 = icmp eq i64 %103, 0
  br i1 %111, label %207, label %112

; <label>:112:                                    ; preds = %110
  %113 = ashr i64 %103, 1
  %114 = and i64 %103, 1
  %115 = add nsw i64 %113, %114
  %116 = icmp eq i64 %115, 0
  %117 = icmp eq i64 %115, %103
  %118 = or i1 %116, %117
  br i1 %118, label %119, label %201

; <label>:119:                                    ; preds = %112
  br label %120

; <label>:120:                                    ; preds = %119, %120
  %121 = phi i64 [ %133, %120 ], [ %115, %119 ]
  %122 = phi i64 [ %127, %120 ], [ 0, %119 ]
  %123 = phi i64 [ %126, %120 ], [ %103, %119 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #13
  store i64 %121, i64* %7, align 8
  %124 = call %struct.tm* %1(i64* nonnull %7, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #13
  %125 = icmp eq %struct.tm* %124, null
  %126 = select i1 %125, i64 %121, i64 %123
  %127 = select i1 %125, i64 %122, i64 %121
  %128 = ashr i64 %127, 1
  %129 = ashr i64 %126, 1
  %130 = add nsw i64 %128, %129
  %131 = or i64 %127, %126
  %132 = and i64 %131, 1
  %133 = add nsw i64 %130, %132
  %134 = icmp eq i64 %133, %127
  %135 = icmp eq i64 %133, %126
  %136 = or i1 %134, %135
  br i1 %136, label %120, label %137

; <label>:137:                                    ; preds = %120
  %138 = icmp ne i64 %127, 0
  %139 = and i1 %125, %138
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %137
  call void @llvm.lifetime.start(i64 8, i8* nonnull %98) #13
  store i64 %127, i64* %8, align 8
  %141 = call %struct.tm* %1(i64* nonnull %8, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %98) #13
  br label %142

; <label>:142:                                    ; preds = %137, %140
  %143 = phi %struct.tm* [ %141, %140 ], [ %124, %137 ]
  %144 = icmp eq %struct.tm* %143, null
  br i1 %144, label %201, label %145

; <label>:145:                                    ; preds = %102, %142
  %146 = phi %struct.tm* [ %143, %142 ], [ %108, %102 ]
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.tm, %struct.tm* %146, i64 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %148 to i64
  %158 = lshr i64 %157, 2
  %159 = add nuw nsw i64 %158, 475
  %160 = and i32 %148, 3
  %161 = icmp eq i32 %160, 0
  %162 = sext i1 %161 to i64
  %163 = add i64 %159, %162
  %164 = trunc i64 %163 to i32
  %165 = sdiv i32 %164, 25
  %166 = srem i32 %164, 25
  %167 = lshr i32 %166, 31
  %168 = sub nsw i32 %165, %167
  %169 = ashr i32 %168, 2
  %170 = sub i32 %77, %164
  %171 = add i32 %170, %168
  %172 = sub i32 %171, %169
  %173 = sub nsw i64 %37, %157
  %174 = mul nsw i64 %173, 365
  %175 = sext i32 %150 to i64
  %176 = sext i32 %172 to i64
  %177 = sub nsw i64 %59, %175
  %178 = add i64 %177, %174
  %179 = add i64 %178, %176
  %180 = mul nsw i64 %179, 24
  %181 = sext i32 %152 to i64
  %182 = sub nsw i64 %85, %181
  %183 = add i64 %182, %180
  %184 = mul nsw i64 %183, 60
  %185 = sext i32 %154 to i64
  %186 = sub nsw i64 %88, %185
  %187 = add i64 %186, %184
  %188 = mul nsw i64 %187, 60
  %189 = sext i32 %156 to i64
  %190 = sub nsw i64 %91, %189
  %191 = add i64 %188, %190
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %196

; <label>:193:                                    ; preds = %145
  %194 = sub nsw i64 -9223372036854775808, %191
  %195 = icmp sgt i64 %194, %103
  br i1 %195, label %201, label %199

; <label>:196:                                    ; preds = %145
  %197 = sub nsw i64 9223372036854775807, %191
  %198 = icmp slt i64 %197, %103
  br i1 %198, label %201, label %199

; <label>:199:                                    ; preds = %196, %193
  %200 = add i64 %191, %103
  br label %211

; <label>:201:                                    ; preds = %112, %196, %193, %142
  %202 = icmp slt i64 %103, 0
  br i1 %202, label %203, label %207

; <label>:203:                                    ; preds = %201
  %204 = icmp slt i64 %103, -9223372036854775806
  %205 = add nsw i64 %103, 1
  %206 = select i1 %204, i64 %205, i64 -9223372036854775808
  br label %211

; <label>:207:                                    ; preds = %110, %201
  %208 = icmp sgt i64 %103, 9223372036854775805
  %209 = add nsw i64 %103, -1
  %210 = select i1 %208, i64 %209, i64 9223372036854775807
  br label %211

; <label>:211:                                    ; preds = %199, %203, %207
  %212 = phi i64 [ %200, %199 ], [ %206, %203 ], [ %210, %207 ]
  %213 = icmp eq i64 %103, %212
  br i1 %213, label %235, label %214

; <label>:214:                                    ; preds = %211
  %215 = icmp ne i64 %103, %107
  %216 = icmp eq i64 %103, %106
  %217 = or i1 %216, %215
  br i1 %217, label %228, label %218

; <label>:218:                                    ; preds = %214
  %219 = load i32, i32* %99, align 8
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %404, label %221

; <label>:221:                                    ; preds = %218
  %222 = icmp ne i32 %219, 0
  br i1 %100, label %223, label %226

; <label>:223:                                    ; preds = %221
  %224 = zext i1 %222 to i32
  %225 = icmp ugt i32 %104, %224
  br i1 %225, label %228, label %404

; <label>:226:                                    ; preds = %221
  %227 = xor i1 %101, %222
  br i1 %227, label %404, label %228

; <label>:228:                                    ; preds = %214, %223, %226
  %229 = add nsw i32 %105, -1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %435, label %231

; <label>:231:                                    ; preds = %228
  %232 = load i32, i32* %99, align 8
  %233 = icmp ne i32 %232, 0
  %234 = zext i1 %233 to i32
  br label %102

; <label>:235:                                    ; preds = %211
  %236 = load i32, i32* %99, align 8
  %237 = icmp eq i32 %30, 0
  %238 = icmp eq i32 %236, 0
  %239 = xor i1 %237, %238
  %240 = or i32 %236, %30
  %241 = icmp sgt i32 %240, -1
  %242 = and i1 %241, %239
  br i1 %242, label %243, label %405

; <label>:243:                                    ; preds = %235
  %244 = bitcast %struct.tm* %15 to i8*
  %245 = bitcast i64* %6 to i8*
  %246 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 8
  %247 = bitcast i64* %4 to i8*
  %248 = bitcast i64* %5 to i8*
  br label %249

; <label>:249:                                    ; preds = %485, %243
  %250 = phi i64 [ 601200, %243 ], [ %486, %485 ]
  %251 = xor i64 %250, -9223372036854775808
  %252 = icmp slt i64 %103, %251
  br i1 %252, label %438, label %253

; <label>:253:                                    ; preds = %249
  %254 = sub i64 %103, %250
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #13
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #13
  store i64 %254, i64* %6, align 8
  %255 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #13
  %256 = icmp ne %struct.tm* %255, null
  %257 = icmp eq i64 %254, 0
  %258 = or i1 %257, %256
  br i1 %258, label %289, label %259

; <label>:259:                                    ; preds = %253
  %260 = ashr i64 %254, 1
  %261 = and i64 %254, 1
  %262 = add nsw i64 %260, %261
  %263 = icmp eq i64 %262, 0
  %264 = icmp eq i64 %262, %254
  %265 = or i1 %263, %264
  br i1 %265, label %266, label %289

; <label>:266:                                    ; preds = %259
  br label %267

; <label>:267:                                    ; preds = %266, %267
  %268 = phi i64 [ %280, %267 ], [ %262, %266 ]
  %269 = phi i64 [ %274, %267 ], [ 0, %266 ]
  %270 = phi i64 [ %273, %267 ], [ %254, %266 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #13
  store i64 %268, i64* %4, align 8
  %271 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #13
  %272 = icmp eq %struct.tm* %271, null
  %273 = select i1 %272, i64 %268, i64 %270
  %274 = select i1 %272, i64 %269, i64 %268
  %275 = ashr i64 %274, 1
  %276 = ashr i64 %273, 1
  %277 = add nsw i64 %275, %276
  %278 = or i64 %274, %273
  %279 = and i64 %278, 1
  %280 = add nsw i64 %277, %279
  %281 = icmp eq i64 %280, %274
  %282 = icmp eq i64 %280, %273
  %283 = or i1 %281, %282
  br i1 %283, label %267, label %284

; <label>:284:                                    ; preds = %267
  %285 = icmp ne i64 %274, 0
  %286 = and i1 %272, %285
  br i1 %286, label %287, label %289

; <label>:287:                                    ; preds = %284
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #13
  store i64 %274, i64* %5, align 8
  %288 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #13
  br label %289

; <label>:289:                                    ; preds = %253, %259, %284, %287
  %290 = load i32, i32* %246, align 8
  %291 = icmp eq i32 %290, 0
  %292 = xor i1 %237, %291
  %293 = or i32 %290, %30
  %294 = icmp sgt i32 %293, -1
  %295 = and i1 %294, %292
  br i1 %295, label %401, label %296

; <label>:296:                                    ; preds = %477, %289
  %297 = phi i64 [ %254, %289 ], [ %442, %477 ]
  %298 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 7
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.tm, %struct.tm* %15, i64 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %299 to i64
  %309 = lshr i64 %308, 2
  %310 = add nuw nsw i64 %309, 475
  %311 = and i32 %299, 3
  %312 = icmp eq i32 %311, 0
  %313 = sext i1 %312 to i64
  %314 = add i64 %310, %313
  %315 = trunc i64 %314 to i32
  %316 = sdiv i32 %315, 25
  %317 = srem i32 %315, 25
  %318 = lshr i32 %317, 31
  %319 = sub nsw i32 %316, %318
  %320 = ashr i32 %319, 2
  %321 = sub i32 %77, %315
  %322 = add i32 %321, %319
  %323 = sub i32 %322, %320
  %324 = sub nsw i64 %37, %308
  %325 = mul nsw i64 %324, 365
  %326 = sext i32 %301 to i64
  %327 = sext i32 %323 to i64
  %328 = sub nsw i64 %59, %326
  %329 = add i64 %328, %325
  %330 = add i64 %329, %327
  %331 = mul nsw i64 %330, 24
  %332 = sext i32 %303 to i64
  %333 = sub nsw i64 %85, %332
  %334 = add i64 %333, %331
  %335 = mul nsw i64 %334, 60
  %336 = sext i32 %305 to i64
  %337 = sub nsw i64 %88, %336
  %338 = add i64 %337, %335
  %339 = mul nsw i64 %338, 60
  %340 = sext i32 %307 to i64
  %341 = sub nsw i64 %91, %340
  %342 = add i64 %339, %341
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %347

; <label>:344:                                    ; preds = %296
  %345 = sub nsw i64 -9223372036854775808, %342
  %346 = icmp sgt i64 %345, %297
  br i1 %346, label %352, label %350

; <label>:347:                                    ; preds = %296
  %348 = sub nsw i64 9223372036854775807, %342
  %349 = icmp slt i64 %348, %297
  br i1 %349, label %352, label %350

; <label>:350:                                    ; preds = %347, %344
  %351 = add i64 %342, %297
  br label %362

; <label>:352:                                    ; preds = %347, %344
  %353 = icmp slt i64 %297, 0
  br i1 %353, label %354, label %358

; <label>:354:                                    ; preds = %352
  %355 = icmp slt i64 %297, -9223372036854775806
  %356 = add nsw i64 %297, 1
  %357 = select i1 %355, i64 %356, i64 -9223372036854775808
  br label %362

; <label>:358:                                    ; preds = %352
  %359 = icmp sgt i64 %297, 9223372036854775805
  %360 = add nsw i64 %297, -1
  %361 = select i1 %359, i64 %360, i64 9223372036854775807
  br label %362

; <label>:362:                                    ; preds = %350, %354, %358
  %363 = phi i64 [ %351, %350 ], [ %357, %354 ], [ %361, %358 ]
  %364 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %364) #13
  store i64 %363, i64* %12, align 8
  %365 = call %struct.tm* %1(i64* nonnull %12, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %364) #13
  %366 = icmp ne %struct.tm* %365, null
  %367 = icmp eq i64 %363, 0
  %368 = or i1 %367, %366
  br i1 %368, label %402, label %369

; <label>:369:                                    ; preds = %362
  %370 = ashr i64 %363, 1
  %371 = and i64 %363, 1
  %372 = add nsw i64 %370, %371
  %373 = icmp eq i64 %372, 0
  %374 = icmp eq i64 %372, %363
  %375 = or i1 %373, %374
  br i1 %375, label %376, label %402

; <label>:376:                                    ; preds = %369
  %377 = bitcast i64* %10 to i8*
  br label %378

; <label>:378:                                    ; preds = %378, %376
  %379 = phi i64 [ %372, %376 ], [ %391, %378 ]
  %380 = phi i64 [ 0, %376 ], [ %385, %378 ]
  %381 = phi i64 [ %363, %376 ], [ %384, %378 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %377) #13
  store i64 %379, i64* %10, align 8
  %382 = call %struct.tm* %1(i64* nonnull %10, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %377) #13
  %383 = icmp eq %struct.tm* %382, null
  %384 = select i1 %383, i64 %379, i64 %381
  %385 = select i1 %383, i64 %380, i64 %379
  %386 = ashr i64 %385, 1
  %387 = ashr i64 %384, 1
  %388 = add nsw i64 %386, %387
  %389 = or i64 %385, %384
  %390 = and i64 %389, 1
  %391 = add nsw i64 %388, %390
  %392 = icmp eq i64 %391, %385
  %393 = icmp eq i64 %391, %384
  %394 = or i1 %392, %393
  br i1 %394, label %378, label %395

; <label>:395:                                    ; preds = %378
  %396 = icmp ne i64 %385, 0
  %397 = and i1 %383, %396
  br i1 %397, label %398, label %402

; <label>:398:                                    ; preds = %395
  %399 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %399) #13
  store i64 %385, i64* %11, align 8
  %400 = call %struct.tm* %1(i64* nonnull %11, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %399) #13
  br label %402

; <label>:401:                                    ; preds = %289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #13
  br label %438

; <label>:402:                                    ; preds = %362, %369, %395, %398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #13
  br label %405

; <label>:403:                                    ; preds = %485
  br label %405

; <label>:404:                                    ; preds = %223, %218, %226
  br label %405

; <label>:405:                                    ; preds = %404, %403, %402, %235
  %406 = phi i64 [ %103, %235 ], [ %363, %402 ], [ %103, %403 ], [ %103, %404 ]
  %407 = add i64 %91, %90
  %408 = sub i64 %406, %407
  store i64 %408, i64* %2, align 8
  %409 = getelementptr inbounds %struct.tm, %struct.tm* %14, i64 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp eq i32 %18, %410
  br i1 %411, label %432, label %412

; <label>:412:                                    ; preds = %405
  %413 = icmp eq i32 %63, 0
  %414 = icmp eq i32 %410, 60
  %415 = and i1 %413, %414
  %416 = zext i1 %415 to i64
  %417 = sub nsw i64 %416, %91
  %418 = sext i32 %18 to i64
  %419 = add nsw i64 %417, %418
  %420 = icmp slt i64 %419, 0
  br i1 %420, label %421, label %424

; <label>:421:                                    ; preds = %412
  %422 = sub nsw i64 -9223372036854775808, %419
  %423 = icmp slt i64 %406, %422
  br i1 %423, label %436, label %427

; <label>:424:                                    ; preds = %412
  %425 = sub nsw i64 9223372036854775807, %419
  %426 = icmp slt i64 %425, %406
  br i1 %426, label %436, label %427

; <label>:427:                                    ; preds = %424, %421
  %428 = add i64 %419, %406
  %429 = bitcast i64* %13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %429) #13
  store i64 %428, i64* %13, align 8
  %430 = call %struct.tm* %1(i64* nonnull %13, %struct.tm* nonnull %14) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %429) #13
  %431 = icmp eq %struct.tm* %430, null
  br i1 %431, label %436, label %432

; <label>:432:                                    ; preds = %427, %405
  %433 = phi i64 [ %406, %405 ], [ %428, %427 ]
  %434 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %434, i8* nonnull %16, i64 56, i32 8, i1 false)
  br label %436

; <label>:435:                                    ; preds = %228
  br label %436

; <label>:436:                                    ; preds = %435, %421, %424, %427, %432
  %437 = phi i64 [ %433, %432 ], [ -1, %427 ], [ -1, %424 ], [ -1, %421 ], [ -1, %435 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %16) #13
  ret i64 %437

; <label>:438:                                    ; preds = %401, %249
  %439 = sub nuw nsw i64 9223372036854775807, %250
  %440 = icmp slt i64 %439, %103
  br i1 %440, label %485, label %441

; <label>:441:                                    ; preds = %438
  %442 = add i64 %250, %103
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #13
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #13
  store i64 %442, i64* %6, align 8
  %443 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #13
  %444 = icmp ne %struct.tm* %443, null
  %445 = icmp eq i64 %442, 0
  %446 = or i1 %445, %444
  br i1 %446, label %477, label %447

; <label>:447:                                    ; preds = %441
  %448 = ashr i64 %442, 1
  %449 = and i64 %442, 1
  %450 = add nsw i64 %448, %449
  %451 = icmp eq i64 %450, 0
  %452 = icmp eq i64 %450, %442
  %453 = or i1 %451, %452
  br i1 %453, label %454, label %477

; <label>:454:                                    ; preds = %447
  br label %455

; <label>:455:                                    ; preds = %454, %455
  %456 = phi i64 [ %468, %455 ], [ %450, %454 ]
  %457 = phi i64 [ %462, %455 ], [ 0, %454 ]
  %458 = phi i64 [ %461, %455 ], [ %442, %454 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #13
  store i64 %456, i64* %4, align 8
  %459 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #13
  %460 = icmp eq %struct.tm* %459, null
  %461 = select i1 %460, i64 %456, i64 %458
  %462 = select i1 %460, i64 %457, i64 %456
  %463 = ashr i64 %462, 1
  %464 = ashr i64 %461, 1
  %465 = add nsw i64 %463, %464
  %466 = or i64 %462, %461
  %467 = and i64 %466, 1
  %468 = add nsw i64 %465, %467
  %469 = icmp eq i64 %468, %462
  %470 = icmp eq i64 %468, %461
  %471 = or i1 %469, %470
  br i1 %471, label %455, label %472

; <label>:472:                                    ; preds = %455
  %473 = icmp ne i64 %462, 0
  %474 = and i1 %460, %473
  br i1 %474, label %475, label %477

; <label>:475:                                    ; preds = %472
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #13
  store i64 %462, i64* %5, align 8
  %476 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #13
  br label %477

; <label>:477:                                    ; preds = %475, %472, %447, %441
  %478 = load i32, i32* %246, align 8
  %479 = icmp eq i32 %478, 0
  %480 = xor i1 %237, %479
  %481 = or i32 %478, %30
  %482 = icmp sgt i32 %481, -1
  %483 = and i1 %482, %480
  br i1 %483, label %484, label %296

; <label>:484:                                    ; preds = %477
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #13
  br label %485

; <label>:485:                                    ; preds = %484, %438
  %486 = add nuw nsw i64 %250, 601200
  %487 = icmp slt i64 %486, 268828200
  br i1 %487, label %249, label %403
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mktime(%struct.tm* nocapture nonnull) local_unnamed_addr #6 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca %struct.tm, align 8
  tail call void @tzset() #13
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #13
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %24, 12
  %30 = lshr i32 %29, 31
  %31 = sdiv i32 %24, 12
  %32 = sub nsw i32 %31, %30
  %33 = sext i32 %26 to i64
  %34 = sext i32 %32 to i64
  %35 = add nsw i64 %34, %33
  %36 = and i64 %35, 3
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %1
  %39 = srem i64 %35, 100
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %38
  %42 = sdiv i64 %35, 100
  %43 = and i64 %42, 3
  %44 = icmp eq i64 %43, 1
  br label %45

; <label>:45:                                     ; preds = %41, %38, %1
  %46 = phi i1 [ false, %1 ], [ true, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i64
  %48 = ashr i32 %29, 31
  %49 = and i32 %48, 12
  %50 = add nsw i32 %49, %29
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [13 x i16]], [2 x [13 x i16]]* @__mon_yday, i64 0, i64 %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i64
  %55 = sext i32 %22 to i64
  %56 = add nsw i64 %55, -1
  %57 = add nsw i64 %56, %54
  %58 = icmp sgt i32 %16, 0
  %59 = select i1 %58, i32 %16, i32 0
  %60 = icmp slt i32 %59, 59
  %61 = select i1 %60, i32 %59, i32 59
  %62 = load i64, i64* @localtime_offset, align 8
  %63 = sub i64 0, %62
  %64 = lshr i64 %35, 2
  %65 = add nuw nsw i64 %64, 475
  %66 = sext i1 %37 to i64
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = sdiv i32 %68, 25
  %70 = srem i32 %68, 25
  %71 = lshr i32 %70, 31
  %72 = sub nsw i32 %69, %71
  %73 = ashr i32 %72, 2
  %74 = sub i32 %68, %72
  %75 = add i32 %74, %73
  %76 = add i32 %75, -477
  %77 = mul nsw i64 %35, 365
  %78 = add i64 %77, -25550
  %79 = sext i32 %76 to i64
  %80 = add i64 %78, %79
  %81 = add i64 %80, %57
  %82 = mul nsw i64 %81, 24
  %83 = sext i32 %20 to i64
  %84 = add i64 %82, %83
  %85 = mul nsw i64 %84, 60
  %86 = sext i32 %18 to i64
  %87 = add i64 %85, %86
  %88 = mul nsw i64 %87, 60
  %89 = zext i32 %61 to i64
  %90 = shl i64 %63, 32
  %91 = ashr exact i64 %90, 32
  %92 = sub nsw i64 %89, %91
  %93 = add i64 %88, %92
  %94 = bitcast i64* %7 to i8*
  %95 = bitcast i64* %5 to i8*
  %96 = bitcast i64* %6 to i8*
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %12, i64 0, i32 8
  %98 = icmp slt i32 %28, 0
  %99 = icmp ne i32 %28, 0
  br label %100

; <label>:100:                                    ; preds = %229, %45
  %101 = phi i64 [ %93, %45 ], [ %210, %229 ]
  %102 = phi i32 [ 0, %45 ], [ %232, %229 ]
  %103 = phi i32 [ 6, %45 ], [ %227, %229 ]
  %104 = phi i64 [ %93, %45 ], [ %101, %229 ]
  %105 = phi i64 [ %93, %45 ], [ %104, %229 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #13
  store i64 %101, i64* %7, align 8
  %106 = call %struct.tm* @localtime_r(i64* nonnull %7, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #13
  %107 = icmp eq %struct.tm* %106, null
  br i1 %107, label %108, label %143

; <label>:108:                                    ; preds = %100
  %109 = icmp eq i64 %101, 0
  br i1 %109, label %205, label %110

; <label>:110:                                    ; preds = %108
  %111 = ashr i64 %101, 1
  %112 = and i64 %101, 1
  %113 = add nsw i64 %111, %112
  %114 = icmp eq i64 %113, 0
  %115 = icmp eq i64 %113, %101
  %116 = or i1 %114, %115
  br i1 %116, label %117, label %199

; <label>:117:                                    ; preds = %110
  br label %118

; <label>:118:                                    ; preds = %117, %118
  %119 = phi i64 [ %131, %118 ], [ %113, %117 ]
  %120 = phi i64 [ %125, %118 ], [ 0, %117 ]
  %121 = phi i64 [ %124, %118 ], [ %101, %117 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #13
  store i64 %119, i64* %5, align 8
  %122 = call %struct.tm* @localtime_r(i64* nonnull %5, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #13
  %123 = icmp eq %struct.tm* %122, null
  %124 = select i1 %123, i64 %119, i64 %121
  %125 = select i1 %123, i64 %120, i64 %119
  %126 = ashr i64 %125, 1
  %127 = ashr i64 %124, 1
  %128 = add nsw i64 %126, %127
  %129 = or i64 %125, %124
  %130 = and i64 %129, 1
  %131 = add nsw i64 %128, %130
  %132 = icmp eq i64 %131, %125
  %133 = icmp eq i64 %131, %124
  %134 = or i1 %132, %133
  br i1 %134, label %118, label %135

; <label>:135:                                    ; preds = %118
  %136 = icmp ne i64 %125, 0
  %137 = and i1 %123, %136
  br i1 %137, label %138, label %140

; <label>:138:                                    ; preds = %135
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #13
  store i64 %125, i64* %6, align 8
  %139 = call %struct.tm* @localtime_r(i64* nonnull %6, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #13
  br label %140

; <label>:140:                                    ; preds = %138, %135
  %141 = phi %struct.tm* [ %139, %138 ], [ %122, %135 ]
  %142 = icmp eq %struct.tm* %141, null
  br i1 %142, label %199, label %143

; <label>:143:                                    ; preds = %140, %100
  %144 = phi %struct.tm* [ %141, %140 ], [ %106, %100 ]
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %144, i64 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %146 to i64
  %156 = lshr i64 %155, 2
  %157 = add nuw nsw i64 %156, 475
  %158 = and i32 %146, 3
  %159 = icmp eq i32 %158, 0
  %160 = sext i1 %159 to i64
  %161 = add i64 %157, %160
  %162 = trunc i64 %161 to i32
  %163 = sdiv i32 %162, 25
  %164 = srem i32 %162, 25
  %165 = lshr i32 %164, 31
  %166 = sub nsw i32 %163, %165
  %167 = ashr i32 %166, 2
  %168 = sub i32 %75, %162
  %169 = add i32 %168, %166
  %170 = sub i32 %169, %167
  %171 = sub nsw i64 %35, %155
  %172 = mul nsw i64 %171, 365
  %173 = sext i32 %148 to i64
  %174 = sext i32 %170 to i64
  %175 = sub nsw i64 %57, %173
  %176 = add i64 %175, %172
  %177 = add i64 %176, %174
  %178 = mul nsw i64 %177, 24
  %179 = sext i32 %150 to i64
  %180 = sub nsw i64 %83, %179
  %181 = add i64 %180, %178
  %182 = mul nsw i64 %181, 60
  %183 = sext i32 %152 to i64
  %184 = sub nsw i64 %86, %183
  %185 = add i64 %184, %182
  %186 = mul nsw i64 %185, 60
  %187 = sext i32 %154 to i64
  %188 = sub nsw i64 %89, %187
  %189 = add i64 %186, %188
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %194

; <label>:191:                                    ; preds = %143
  %192 = sub nsw i64 -9223372036854775808, %189
  %193 = icmp sgt i64 %192, %101
  br i1 %193, label %199, label %197

; <label>:194:                                    ; preds = %143
  %195 = sub nsw i64 9223372036854775807, %189
  %196 = icmp slt i64 %195, %101
  br i1 %196, label %199, label %197

; <label>:197:                                    ; preds = %194, %191
  %198 = add i64 %189, %101
  br label %209

; <label>:199:                                    ; preds = %194, %191, %140, %110
  %200 = icmp slt i64 %101, 0
  br i1 %200, label %201, label %205

; <label>:201:                                    ; preds = %199
  %202 = icmp slt i64 %101, -9223372036854775806
  %203 = add nsw i64 %101, 1
  %204 = select i1 %202, i64 %203, i64 -9223372036854775808
  br label %209

; <label>:205:                                    ; preds = %199, %108
  %206 = icmp sgt i64 %101, 9223372036854775805
  %207 = add nsw i64 %101, -1
  %208 = select i1 %206, i64 %207, i64 9223372036854775807
  br label %209

; <label>:209:                                    ; preds = %205, %201, %197
  %210 = phi i64 [ %198, %197 ], [ %204, %201 ], [ %208, %205 ]
  %211 = icmp eq i64 %101, %210
  br i1 %211, label %233, label %212

; <label>:212:                                    ; preds = %209
  %213 = icmp ne i64 %101, %105
  %214 = icmp eq i64 %101, %104
  %215 = or i1 %214, %213
  br i1 %215, label %226, label %216

; <label>:216:                                    ; preds = %212
  %217 = load i32, i32* %97, align 8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %402, label %219

; <label>:219:                                    ; preds = %216
  %220 = icmp ne i32 %217, 0
  br i1 %98, label %221, label %224

; <label>:221:                                    ; preds = %219
  %222 = zext i1 %220 to i32
  %223 = icmp ugt i32 %102, %222
  br i1 %223, label %226, label %402

; <label>:224:                                    ; preds = %219
  %225 = xor i1 %99, %220
  br i1 %225, label %402, label %226

; <label>:226:                                    ; preds = %224, %221, %212
  %227 = add nsw i32 %103, -1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %483, label %229

; <label>:229:                                    ; preds = %226
  %230 = load i32, i32* %97, align 8
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i32
  br label %100

; <label>:233:                                    ; preds = %209
  %234 = load i32, i32* %97, align 8
  %235 = icmp eq i32 %28, 0
  %236 = icmp eq i32 %234, 0
  %237 = xor i1 %235, %236
  %238 = or i32 %234, %28
  %239 = icmp sgt i32 %238, -1
  %240 = and i1 %239, %237
  br i1 %240, label %241, label %403

; <label>:241:                                    ; preds = %233
  %242 = bitcast %struct.tm* %13 to i8*
  %243 = bitcast i64* %4 to i8*
  %244 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 8
  %245 = bitcast i64* %2 to i8*
  %246 = bitcast i64* %3 to i8*
  br label %247

; <label>:247:                                    ; preds = %480, %241
  %248 = phi i64 [ 601200, %241 ], [ %481, %480 ]
  %249 = xor i64 %248, -9223372036854775808
  %250 = icmp slt i64 %101, %249
  br i1 %250, label %433, label %251

; <label>:251:                                    ; preds = %247
  %252 = sub i64 %101, %248
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #13
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #13
  store i64 %252, i64* %4, align 8
  %253 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #13
  %254 = icmp ne %struct.tm* %253, null
  %255 = icmp eq i64 %252, 0
  %256 = or i1 %255, %254
  br i1 %256, label %287, label %257

; <label>:257:                                    ; preds = %251
  %258 = ashr i64 %252, 1
  %259 = and i64 %252, 1
  %260 = add nsw i64 %258, %259
  %261 = icmp eq i64 %260, 0
  %262 = icmp eq i64 %260, %252
  %263 = or i1 %261, %262
  br i1 %263, label %264, label %287

; <label>:264:                                    ; preds = %257
  br label %265

; <label>:265:                                    ; preds = %264, %265
  %266 = phi i64 [ %278, %265 ], [ %260, %264 ]
  %267 = phi i64 [ %272, %265 ], [ 0, %264 ]
  %268 = phi i64 [ %271, %265 ], [ %252, %264 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #13
  store i64 %266, i64* %2, align 8
  %269 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #13
  %270 = icmp eq %struct.tm* %269, null
  %271 = select i1 %270, i64 %266, i64 %268
  %272 = select i1 %270, i64 %267, i64 %266
  %273 = ashr i64 %272, 1
  %274 = ashr i64 %271, 1
  %275 = add nsw i64 %273, %274
  %276 = or i64 %272, %271
  %277 = and i64 %276, 1
  %278 = add nsw i64 %275, %277
  %279 = icmp eq i64 %278, %272
  %280 = icmp eq i64 %278, %271
  %281 = or i1 %279, %280
  br i1 %281, label %265, label %282

; <label>:282:                                    ; preds = %265
  %283 = icmp ne i64 %272, 0
  %284 = and i1 %270, %283
  br i1 %284, label %285, label %287

; <label>:285:                                    ; preds = %282
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #13
  store i64 %272, i64* %3, align 8
  %286 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #13
  br label %287

; <label>:287:                                    ; preds = %285, %282, %257, %251
  %288 = load i32, i32* %244, align 8
  %289 = icmp eq i32 %288, 0
  %290 = xor i1 %235, %289
  %291 = or i32 %288, %28
  %292 = icmp sgt i32 %291, -1
  %293 = and i1 %292, %290
  br i1 %293, label %399, label %294

; <label>:294:                                    ; preds = %472, %287
  %295 = phi i64 [ %252, %287 ], [ %437, %472 ]
  %296 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 5
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = getelementptr inbounds %struct.tm, %struct.tm* %13, i64 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %297 to i64
  %307 = lshr i64 %306, 2
  %308 = add nuw nsw i64 %307, 475
  %309 = and i32 %297, 3
  %310 = icmp eq i32 %309, 0
  %311 = sext i1 %310 to i64
  %312 = add i64 %308, %311
  %313 = trunc i64 %312 to i32
  %314 = sdiv i32 %313, 25
  %315 = srem i32 %313, 25
  %316 = lshr i32 %315, 31
  %317 = sub nsw i32 %314, %316
  %318 = ashr i32 %317, 2
  %319 = sub i32 %75, %313
  %320 = add i32 %319, %317
  %321 = sub i32 %320, %318
  %322 = sub nsw i64 %35, %306
  %323 = mul nsw i64 %322, 365
  %324 = sext i32 %299 to i64
  %325 = sext i32 %321 to i64
  %326 = sub nsw i64 %57, %324
  %327 = add i64 %326, %323
  %328 = add i64 %327, %325
  %329 = mul nsw i64 %328, 24
  %330 = sext i32 %301 to i64
  %331 = sub nsw i64 %83, %330
  %332 = add i64 %331, %329
  %333 = mul nsw i64 %332, 60
  %334 = sext i32 %303 to i64
  %335 = sub nsw i64 %86, %334
  %336 = add i64 %335, %333
  %337 = mul nsw i64 %336, 60
  %338 = sext i32 %305 to i64
  %339 = sub nsw i64 %89, %338
  %340 = add i64 %337, %339
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %345

; <label>:342:                                    ; preds = %294
  %343 = sub nsw i64 -9223372036854775808, %340
  %344 = icmp sgt i64 %343, %295
  br i1 %344, label %350, label %348

; <label>:345:                                    ; preds = %294
  %346 = sub nsw i64 9223372036854775807, %340
  %347 = icmp slt i64 %346, %295
  br i1 %347, label %350, label %348

; <label>:348:                                    ; preds = %345, %342
  %349 = add i64 %340, %295
  br label %360

; <label>:350:                                    ; preds = %345, %342
  %351 = icmp slt i64 %295, 0
  br i1 %351, label %352, label %356

; <label>:352:                                    ; preds = %350
  %353 = icmp slt i64 %295, -9223372036854775806
  %354 = add nsw i64 %295, 1
  %355 = select i1 %353, i64 %354, i64 -9223372036854775808
  br label %360

; <label>:356:                                    ; preds = %350
  %357 = icmp sgt i64 %295, 9223372036854775805
  %358 = add nsw i64 %295, -1
  %359 = select i1 %357, i64 %358, i64 9223372036854775807
  br label %360

; <label>:360:                                    ; preds = %356, %352, %348
  %361 = phi i64 [ %349, %348 ], [ %355, %352 ], [ %359, %356 ]
  %362 = bitcast i64* %10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %362) #13
  store i64 %361, i64* %10, align 8
  %363 = call %struct.tm* @localtime_r(i64* nonnull %10, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %362) #13
  %364 = icmp ne %struct.tm* %363, null
  %365 = icmp eq i64 %361, 0
  %366 = or i1 %365, %364
  br i1 %366, label %400, label %367

; <label>:367:                                    ; preds = %360
  %368 = ashr i64 %361, 1
  %369 = and i64 %361, 1
  %370 = add nsw i64 %368, %369
  %371 = icmp eq i64 %370, 0
  %372 = icmp eq i64 %370, %361
  %373 = or i1 %371, %372
  br i1 %373, label %374, label %400

; <label>:374:                                    ; preds = %367
  %375 = bitcast i64* %8 to i8*
  br label %376

; <label>:376:                                    ; preds = %376, %374
  %377 = phi i64 [ %370, %374 ], [ %389, %376 ]
  %378 = phi i64 [ 0, %374 ], [ %383, %376 ]
  %379 = phi i64 [ %361, %374 ], [ %382, %376 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %375) #13
  store i64 %377, i64* %8, align 8
  %380 = call %struct.tm* @localtime_r(i64* nonnull %8, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %375) #13
  %381 = icmp eq %struct.tm* %380, null
  %382 = select i1 %381, i64 %377, i64 %379
  %383 = select i1 %381, i64 %378, i64 %377
  %384 = ashr i64 %383, 1
  %385 = ashr i64 %382, 1
  %386 = add nsw i64 %384, %385
  %387 = or i64 %383, %382
  %388 = and i64 %387, 1
  %389 = add nsw i64 %386, %388
  %390 = icmp eq i64 %389, %383
  %391 = icmp eq i64 %389, %382
  %392 = or i1 %390, %391
  br i1 %392, label %376, label %393

; <label>:393:                                    ; preds = %376
  %394 = icmp ne i64 %383, 0
  %395 = and i1 %381, %394
  br i1 %395, label %396, label %400

; <label>:396:                                    ; preds = %393
  %397 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %397) #13
  store i64 %383, i64* %9, align 8
  %398 = call %struct.tm* @localtime_r(i64* nonnull %9, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %397) #13
  br label %400

; <label>:399:                                    ; preds = %287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #13
  br label %433

; <label>:400:                                    ; preds = %396, %393, %367, %360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #13
  br label %403

; <label>:401:                                    ; preds = %480
  br label %403

; <label>:402:                                    ; preds = %216, %221, %224
  br label %403

; <label>:403:                                    ; preds = %402, %401, %400, %233
  %404 = phi i64 [ %101, %233 ], [ %361, %400 ], [ %101, %401 ], [ %101, %402 ]
  %405 = add i64 %88, %89
  %406 = sub i64 %404, %405
  store i64 %406, i64* @localtime_offset, align 8
  %407 = getelementptr inbounds %struct.tm, %struct.tm* %12, i64 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %16, %408
  br i1 %409, label %430, label %410

; <label>:410:                                    ; preds = %403
  %411 = icmp eq i32 %61, 0
  %412 = icmp eq i32 %408, 60
  %413 = and i1 %411, %412
  %414 = zext i1 %413 to i64
  %415 = sub nsw i64 %414, %89
  %416 = sext i32 %16 to i64
  %417 = add nsw i64 %415, %416
  %418 = icmp slt i64 %417, 0
  br i1 %418, label %419, label %422

; <label>:419:                                    ; preds = %410
  %420 = sub nsw i64 -9223372036854775808, %417
  %421 = icmp slt i64 %404, %420
  br i1 %421, label %484, label %425

; <label>:422:                                    ; preds = %410
  %423 = sub nsw i64 9223372036854775807, %417
  %424 = icmp slt i64 %423, %404
  br i1 %424, label %484, label %425

; <label>:425:                                    ; preds = %422, %419
  %426 = add i64 %417, %404
  %427 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %427) #13
  store i64 %426, i64* %11, align 8
  %428 = call %struct.tm* @localtime_r(i64* nonnull %11, %struct.tm* nonnull %12) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %427) #13
  %429 = icmp eq %struct.tm* %428, null
  br i1 %429, label %484, label %430

; <label>:430:                                    ; preds = %425, %403
  %431 = phi i64 [ %404, %403 ], [ %426, %425 ]
  %432 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %432, i8* nonnull %14, i64 56, i32 8, i1 false) #13
  br label %484

; <label>:433:                                    ; preds = %399, %247
  %434 = sub nuw nsw i64 9223372036854775807, %248
  %435 = icmp slt i64 %434, %101
  br i1 %435, label %480, label %436

; <label>:436:                                    ; preds = %433
  %437 = add i64 %248, %101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #13
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #13
  store i64 %437, i64* %4, align 8
  %438 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #13
  %439 = icmp ne %struct.tm* %438, null
  %440 = icmp eq i64 %437, 0
  %441 = or i1 %440, %439
  br i1 %441, label %472, label %442

; <label>:442:                                    ; preds = %436
  %443 = ashr i64 %437, 1
  %444 = and i64 %437, 1
  %445 = add nsw i64 %443, %444
  %446 = icmp eq i64 %445, 0
  %447 = icmp eq i64 %445, %437
  %448 = or i1 %446, %447
  br i1 %448, label %449, label %472

; <label>:449:                                    ; preds = %442
  br label %450

; <label>:450:                                    ; preds = %449, %450
  %451 = phi i64 [ %463, %450 ], [ %445, %449 ]
  %452 = phi i64 [ %457, %450 ], [ 0, %449 ]
  %453 = phi i64 [ %456, %450 ], [ %437, %449 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #13
  store i64 %451, i64* %2, align 8
  %454 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #13
  %455 = icmp eq %struct.tm* %454, null
  %456 = select i1 %455, i64 %451, i64 %453
  %457 = select i1 %455, i64 %452, i64 %451
  %458 = ashr i64 %457, 1
  %459 = ashr i64 %456, 1
  %460 = add nsw i64 %458, %459
  %461 = or i64 %457, %456
  %462 = and i64 %461, 1
  %463 = add nsw i64 %460, %462
  %464 = icmp eq i64 %463, %457
  %465 = icmp eq i64 %463, %456
  %466 = or i1 %464, %465
  br i1 %466, label %450, label %467

; <label>:467:                                    ; preds = %450
  %468 = icmp ne i64 %457, 0
  %469 = and i1 %455, %468
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %467
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #13
  store i64 %457, i64* %3, align 8
  %471 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #13
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #13
  br label %472

; <label>:472:                                    ; preds = %470, %467, %442, %436
  %473 = load i32, i32* %244, align 8
  %474 = icmp eq i32 %473, 0
  %475 = xor i1 %235, %474
  %476 = or i32 %473, %28
  %477 = icmp sgt i32 %476, -1
  %478 = and i1 %477, %475
  br i1 %478, label %479, label %294

; <label>:479:                                    ; preds = %472
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #13
  br label %480

; <label>:480:                                    ; preds = %479, %433
  %481 = add nuw nsw i64 %248, 601200
  %482 = icmp slt i64 %481, 268828200
  br i1 %482, label %247, label %401

; <label>:483:                                    ; preds = %226
  br label %484

; <label>:484:                                    ; preds = %483, %419, %422, %425, %430
  %485 = phi i64 [ %431, %430 ], [ -1, %425 ], [ -1, %422 ], [ -1, %419 ], [ -1, %483 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #13
  ret i64 %485
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
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind }
attributes #14 = { inlinehint nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind readonly }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { cold }
