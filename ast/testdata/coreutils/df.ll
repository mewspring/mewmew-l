; ModuleID = 'coreutils-8.27/src/df.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fs_type_list = type { i8*, %struct.fs_type_list* }
%struct.fs_usage = type { i64, i64, i64, i64, i8, i64, i64 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_data_t = type { i32, i8*, i32, i8*, i64, i32, i8 }
%struct.mount_entry = type { i8*, i8*, i8*, i8*, i64, i8, %struct.mount_entry* }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.devlist = type { i64, %struct.mount_entry*, %struct.devlist* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.field_values_t = type { i64, i64, i64, i64, i8, i64, i64, i8 }
%struct.saved_cwd = type { i32, i8* }
%struct.F_triple = type { i8*, i64, i64 }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"Show information about the file system on which each FILE resides,\0Aor all file systems by default.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [410 x i8] c"  -a, --all             include pseudo, duplicate, inaccessible file systems\0A  -B, --block-size=SIZE  scale sizes by SIZE before printing them; e.g.,\0A                           '-BM' prints sizes in units of 1,048,576 bytes;\0A                           see SIZE format below\0A  -h, --human-readable  print sizes in powers of 1024 (e.g., 1023M)\0A  -H, --si              print sizes in powers of 1000 (e.g., 1.1G)\0A\00", align 1
@.str.4 = private unnamed_addr constant [255 x i8] c"  -i, --inodes          list inode information instead of block usage\0A  -k                    like --block-size=1K\0A  -l, --local           limit listing to local file systems\0A      --no-sync         do not invoke sync before getting usage info (default)\0A\00", align 1
@.str.5 = private unnamed_addr constant [266 x i8] c"      --output[=FIELD_LIST]  use the output format defined by FIELD_LIST,\0A                               or print all fields if FIELD_LIST is omitted.\0A  -P, --portability     use the POSIX output format\0A      --sync            invoke sync before getting usage info\0A\00", align 1
@.str.6 = private unnamed_addr constant [129 x i8] c"      --total           elide all entries insignificant to available space,\0A                          and produce a grand total\0A\00", align 1
@.str.7 = private unnamed_addr constant [224 x i8] c"  -t, --type=TYPE       limit listing to file systems of type TYPE\0A  -T, --print-type      print file system type\0A  -x, --exclude-type=TYPE   limit listing to file systems not of type TYPE\0A  -v                    (ignored)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.37 = private unnamed_addr constant [223 x i8] c"\0ADisplay values are in units of the first available SIZE from --block-size,\0Aand the %s_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.\0AOtherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.38 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.11 = private unnamed_addr constant [220 x i8] c"\0AFIELD_LIST is a comma-separated list of columns to be included.  Valid\0Afield names are: 'source', 'fstype', 'itotal', 'iused', 'iavail', 'ipcent',\0A'size', 'used', 'avail', 'pcent', 'file' and 'target' (see info page).\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@fs_select_list = internal unnamed_addr global %struct.fs_type_list* null, align 8
@fs_exclude_list = internal unnamed_addr global %struct.fs_type_list* null, align 8
@show_all_fs = internal unnamed_addr global i1 false, align 1
@show_listed_fs = internal unnamed_addr global i1 false, align 1
@human_output_opts = internal global i32 0, align 4
@print_type = internal unnamed_addr global i1 false, align 1
@file_systems_processed = internal unnamed_addr global i1 false, align 1
@exit_status = internal unnamed_addr global i1 false, align 4
@print_grand_total = internal unnamed_addr global i1 false, align 1
@grand_fsu = internal global %struct.fs_usage zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [41 x i8] c"options %s and %s are mutually exclusive\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"aB:iF:hHklmPTt:vx:\00", align 1
@long_options = internal constant [17 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 72 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 2, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@output_block_size = internal global i64 0, align 8
@header_mode = internal unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"--output\00", align 1
@show_local_fs = internal unnamed_addr global i1 false, align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-T\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@require_sync = internal unnamed_addr global i1 false, align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"DF_BLOCK_SIZE\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"file system type %s both selected and excluded\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@field_data = internal global [12 x %struct.field_data_t] [%struct.field_data_t { i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i32 0, i32 0), i64 14, i32 0, i8 0 }, %struct.field_data_t { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i64 4, i32 0, i8 0 }, %struct.field_data_t { i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i64 4, i32 1, i8 0 }, %struct.field_data_t { i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0), i64 5, i32 1, i8 0 }, %struct.field_data_t { i32 9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i64 4, i32 1, i8 0 }, %struct.field_data_t { i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0), i64 0, i32 0, i8 0 }, %struct.field_data_t { i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i64 0, i32 0, i8 0 }], align 16
@mount_list = internal unnamed_addr global %struct.mount_entry* null, align 8
@.str.30 = private unnamed_addr constant [10 x i8] c"Warning: \00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"cannot read table of mounted file systems\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ncolumns = internal unnamed_addr global i64 0, align 8
@columns = internal unnamed_addr global %struct.field_data_t** null, align 8
@.str.75 = private unnamed_addr constant [14 x i8] c"!\22field used\22\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"src/df.c\00", align 1
@__PRETTY_FUNCTION__.alloc_field = private unnamed_addr constant [36 x i8] c"void alloc_field(int, const char *)\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"Avail\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Capacity\00", align 1
@.str.102 = private unnamed_addr constant [75 x i8] c"source,fstype,itotal,iused,iavail,ipcent,size,used,avail,pcent,file,target\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"!\22invalid header_mode\22\00", align 1
@__PRETTY_FUNCTION__.get_field_list = private unnamed_addr constant [26 x i8] c"void get_field_list(void)\00", align 1
@nrows = internal unnamed_addr global i64 0, align 8
@table = internal unnamed_addr global i8*** null, align 8
@.str.81 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.104 = private unnamed_addr constant [49 x i8] c"cannot access %s: over-mounted by another device\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"lofs\00", align 1
@devlist_table = internal unnamed_addr global %struct.hash_table* null, align 8
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"no file systems processed\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"-0123456789abcdefABCDEF\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"!\22bad field_type\22\00", align 1
@__PRETTY_FUNCTION__.get_dev = private unnamed_addr constant [129 x i8] c"void get_dev(const char *, const char *, const char *, const char *, const char *, _Bool, _Bool, const struct fs_usage *, _Bool)\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"%.0f%%\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"!\22unhandled field\22\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"!\22empty cell\22\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Filesystem\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"avail\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Available\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"pcent\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"Use%\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"itotal\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Inodes\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"iused\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"IUsed\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"iavail\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"IFree\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"ipcent\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"IUse%\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Mounted on\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"option --output: field %s used more than once\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"!\22invalid field\22\00", align 1
@__PRETTY_FUNCTION__.decode_output_arg = private unnamed_addr constant [37 x i8] c"void decode_output_arg(const char *)\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"option --output: field %s unknown\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"inodes\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"portability\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"print-type\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"no-sync\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"exclude-type\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"cannot get current directory\00", align 1
@.str.1.40 = private unnamed_addr constant [30 x i8] c"cannot change to directory %s\00", align 1
@.str.2.41 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4.42 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3.43 = private unnamed_addr constant [39 x i8] c"cannot stat current directory (now %s)\00", align 1
@.str.5.44 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.6.45 = private unnamed_addr constant [46 x i8] c"failed to return to initial working directory\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i64 0, i64 0), align 8
@.str.111 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.118 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.132 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.133 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.134 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.135 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.152 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.154 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.155 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1
@.str.4.158 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.159 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.160 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.163, i32 0, i32 0), i8* null], align 16
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4
@.str.6.161 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.162 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.163 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.174 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.175 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.176 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.179, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.180, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.181, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.182, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.183, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.184, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.185, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.186, i32 0, i32 0), i8* null], align 16
@.str.177 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.179 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.180 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.181 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.182 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.183 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.184 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.185 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.186 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.187 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.188 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.189 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.190 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.191 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.192 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.193 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.204 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.213 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.214 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.215 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.216 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.217 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.218 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.219 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.220 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.221 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.222 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.223 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.224 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.225 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.228 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.229 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.230 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.231 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.232 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.233 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.246 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@switch.table = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.253, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.254, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.254, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.255, i64 0, i64 0)]
@.str.252 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3.253 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@.str.2.254 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@.str.1.255 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@.str.258 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.259 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.264 = private unnamed_addr constant [8 x i8] c"0 < len\00", align 1
@.str.1.265 = private unnamed_addr constant [17 x i8] c"lib/chdir-long.c\00", align 1
@__PRETTY_FUNCTION__.chdir_long = private unnamed_addr constant [23 x i8] c"int chdir_long(char *)\00", align 1
@.str.2.266 = private unnamed_addr constant [12 x i8] c"4096 <= len\00", align 1
@.str.3.267 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4.268 = private unnamed_addr constant [12 x i8] c"*dir != '/'\00", align 1
@.str.5.269 = private unnamed_addr constant [15 x i8] c"dir <= dir_end\00", align 1
@.str.6.270 = private unnamed_addr constant [19 x i8] c"slash - dir < 4096\00", align 1
@.str.7.271 = private unnamed_addr constant [13 x i8] c"! close_fail\00", align 1
@__PRETTY_FUNCTION__.cdb_free = private unnamed_addr constant [37 x i8] c"void cdb_free(const struct cd_buf *)\00", align 1
@statvfs_works.statvfs_works_cache = internal unnamed_addr global i32 -1, align 4
@.str.274 = private unnamed_addr constant [7 x i8] c"2.6.36\00", align 1
@.str.279 = private unnamed_addr constant [21 x i8] c"/proc/self/mountinfo\00", align 1
@.str.1.280 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.281 = private unnamed_addr constant [32 x i8] c"%*u %*u %u:%u %n%*s%n %n%*s%n%c\00", align 1
@.str.3.282 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.4.283 = private unnamed_addr constant [22 x i8] c" - %n%*s%n %n%*s%n %c\00", align 1
@.str.5.284 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.6.285 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.7.286 = private unnamed_addr constant [6 x i8] c"subfs\00", align 1
@.str.8.287 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.9.288 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.10.289 = private unnamed_addr constant [8 x i8] c"fusectl\00", align 1
@.str.11.290 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.12.291 = private unnamed_addr constant [11 x i8] c"rpc_pipefs\00", align 1
@.str.13.292 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.14.293 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.15.294 = private unnamed_addr constant [7 x i8] c"kernfs\00", align 1
@.str.16.295 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.17.296 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.18.297 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.19.298 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.20.299 = private unnamed_addr constant [7 x i8] c"-hosts\00", align 1
@.str.21.300 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.22.301 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.308 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.309 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.310 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.311 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.312 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.1.321 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.326 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.327 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.328 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.329 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.330 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.331 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.332 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %62

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.36, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([410 x i8], [410 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str.37, i64 0, i64 0), i32 5) #12
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #12
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.38, i64 0, i64 0), i32 5) #12
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = tail call i32 @fputs_unlocked(i8* %41, %struct._IO_FILE* %42) #12
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([220 x i8], [220 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = tail call i32 @fputs_unlocked(i8* %44, %struct._IO_FILE* %45) #12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i32 5) #12
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0)) #12
  %49 = tail call i8* @setlocale(i32 5, i8* null) #12
  %50 = icmp eq i8* %49, null
  br i1 %50, label %57, label %51

; <label>:51:                                     ; preds = %8
  %52 = tail call i32 @strncmp(i8* nonnull %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 3) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.50, i64 0, i64 0), i32 5) #12
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #12
  br label %57

; <label>:57:                                     ; preds = %8, %51, %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 5) #12
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0), i32 5) #12
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0)) #12
  br label %62

; <label>:62:                                     ; preds = %57, %3
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
  %4 = alloca %struct.devlist, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [652 x i8], align 16
  %10 = alloca [21 x i8], align 16
  %11 = alloca i32, align 4
  %12 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %12) #12
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #12
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #12
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #12
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12
  store %struct.fs_type_list* null, %struct.fs_type_list** @fs_select_list, align 8
  store %struct.fs_type_list* null, %struct.fs_type_list** @fs_exclude_list, align 8
  store i1 false, i1* @show_all_fs, align 1
  store i1 false, i1* @show_listed_fs, align 1
  store i32 -1, i32* @human_output_opts, align 4
  store i1 false, i1* @print_type, align 1
  store i1 false, i1* @file_systems_processed, align 1
  store i1 false, i1* @exit_status, align 4
  store i1 false, i1* @print_grand_total, align 1
  store i64 1, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 0), align 8
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 5) #12
  %18 = bitcast i32* %11 to i8*
  br label %19

; <label>:19:                                     ; preds = %88, %2
  %20 = phi i8 [ 0, %2 ], [ %89, %88 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %18) #12
  store i32 -1, i32* %11, align 4
  %21 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), %struct.option* getelementptr inbounds ([17 x %struct.option], [17 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %11) #12
  switch i32 %21, label %87 [
    i32 -1, label %90
    i32 97, label %22
    i32 66, label %23
    i32 105, label %30
    i32 104, label %35
    i32 72, label %36
    i32 107, label %37
    i32 108, label %38
    i32 109, label %39
    i32 84, label %40
    i32 80, label %45
    i32 129, label %49
    i32 128, label %50
    i32 70, label %51
    i32 116, label %51
    i32 118, label %88
    i32 120, label %58
    i32 131, label %65
    i32 130, label %82
    i32 -130, label %83
    i32 -131, label %84
  ]

; <label>:22:                                     ; preds = %19
  store i1 true, i1* @show_all_fs, align 1
  br label %88

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i32 @human_options(i8* %24, i32* nonnull @human_output_opts, i64* nonnull @output_block_size) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %88, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %25, i32 %28, i8 signext 66, %struct.option* getelementptr inbounds ([17 x %struct.option], [17 x %struct.option]* @long_options, i64 0, i64 0), i8* %29) #15
  unreachable

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* @header_mode, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:34:                                     ; preds = %30
  store i32 1, i32* @header_mode, align 4
  br label %88

; <label>:35:                                     ; preds = %19
  store i32 176, i32* @human_output_opts, align 4
  store i64 1, i64* @output_block_size, align 8
  br label %88

; <label>:36:                                     ; preds = %19
  store i32 144, i32* @human_output_opts, align 4
  store i64 1, i64* @output_block_size, align 8
  br label %88

; <label>:37:                                     ; preds = %19
  store i32 0, i32* @human_output_opts, align 4
  store i64 1024, i64* @output_block_size, align 8
  br label %88

; <label>:38:                                     ; preds = %19
  store i1 true, i1* @show_local_fs, align 1
  br label %88

; <label>:39:                                     ; preds = %19
  store i32 0, i32* @human_output_opts, align 4
  store i64 1048576, i64* @output_block_size, align 8
  br label %88

; <label>:40:                                     ; preds = %19
  %41 = load i32, i32* @header_mode, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:44:                                     ; preds = %40
  store i1 true, i1* @print_type, align 1
  br label %88

; <label>:45:                                     ; preds = %19
  %46 = load i32, i32* @header_mode, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %88

; <label>:48:                                     ; preds = %45
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:49:                                     ; preds = %19
  store i1 true, i1* @require_sync, align 1
  br label %88

; <label>:50:                                     ; preds = %19
  store i1 false, i1* @require_sync, align 1
  br label %88

; <label>:51:                                     ; preds = %19, %19
  %52 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  %53 = call noalias i8* @xmalloc(i64 16) #12
  %54 = bitcast i8* %53 to i64*
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* bitcast (%struct.fs_type_list** @fs_select_list to i64*), align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 8
  %57 = bitcast i8* %56 to i64*
  store i64 %55, i64* %57, align 8
  store i8* %53, i8** bitcast (%struct.fs_type_list** @fs_select_list to i8**), align 8
  br label %88

; <label>:58:                                     ; preds = %19
  %59 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  %60 = call noalias i8* @xmalloc(i64 16) #12
  %61 = bitcast i8* %60 to i64*
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* bitcast (%struct.fs_type_list** @fs_exclude_list to i64*), align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 8
  %64 = bitcast i8* %63 to i64*
  store i64 %62, i64* %64, align 8
  store i8* %60, i8** bitcast (%struct.fs_type_list** @fs_exclude_list to i8**), align 8
  br label %88

; <label>:65:                                     ; preds = %19
  %66 = load i32, i32* @header_mode, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %65
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:69:                                     ; preds = %65
  %70 = and i8 %20, 1
  %71 = icmp ne i8 %70, 0
  %72 = icmp eq i32 %66, 0
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %69
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:75:                                     ; preds = %69
  %76 = load i1, i1* @print_type, align 1
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %75
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0)) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:78:                                     ; preds = %75
  store i32 4, i32* @header_mode, align 4
  %79 = load i8*, i8** @optarg, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %88, label %81

; <label>:81:                                     ; preds = %78
  call fastcc void @decode_output_arg(i8* nonnull %79)
  br label %88

; <label>:82:                                     ; preds = %19
  store i1 true, i1* @print_grand_total, align 1
  br label %88

; <label>:83:                                     ; preds = %19
  call void @usage(i32 0) #16
  unreachable

; <label>:84:                                     ; preds = %19
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* null) #12
  call void @exit(i32 0) #15
  unreachable

; <label>:87:                                     ; preds = %19
  call void @usage(i32 1) #16
  unreachable

; <label>:88:                                     ; preds = %22, %34, %35, %36, %37, %38, %39, %44, %49, %50, %51, %58, %82, %81, %78, %19, %23, %45
  %89 = phi i8 [ %20, %82 ], [ %20, %81 ], [ %20, %78 ], [ %20, %58 ], [ %20, %51 ], [ %20, %50 ], [ %20, %49 ], [ %20, %44 ], [ %20, %39 ], [ %20, %38 ], [ %20, %37 ], [ %20, %36 ], [ %20, %35 ], [ %20, %34 ], [ %20, %22 ], [ %20, %19 ], [ %20, %23 ], [ 1, %45 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %18) #12
  br label %19

; <label>:90:                                     ; preds = %19
  call void @llvm.lifetime.end(i64 4, i8* nonnull %18) #12
  %91 = load i32, i32* @human_output_opts, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %103

; <label>:93:                                     ; preds = %90
  %94 = and i8 %20, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

; <label>:96:                                     ; preds = %93
  store i32 0, i32* @human_output_opts, align 4
  %97 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0)) #12
  %98 = icmp ne i8* %97, null
  %99 = select i1 %98, i64 512, i64 1024
  store i64 %99, i64* @output_block_size, align 8
  br label %103

; <label>:100:                                    ; preds = %93
  %101 = call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0)) #12
  %102 = call i32 @human_options(i8* %101, i32* nonnull @human_output_opts, i64* nonnull @output_block_size) #12
  br label %103

; <label>:103:                                    ; preds = %96, %100, %90
  %104 = load i32, i32* @header_mode, align 4
  switch i32 %104, label %105 [
    i32 4, label %114
    i32 1, label %114
  ]

; <label>:105:                                    ; preds = %103
  %106 = load i32, i32* @human_output_opts, align 4
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

; <label>:109:                                    ; preds = %105
  store i32 2, i32* @header_mode, align 4
  br label %114

; <label>:110:                                    ; preds = %105
  %111 = and i8 %20, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113

; <label>:113:                                    ; preds = %110
  store i32 3, i32* @header_mode, align 4
  br label %114

; <label>:114:                                    ; preds = %103, %103, %110, %109, %113
  %115 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_select_list, align 8
  %116 = icmp eq %struct.fs_type_list* %115, null
  br i1 %116, label %151, label %117

; <label>:117:                                    ; preds = %114
  br label %118

; <label>:118:                                    ; preds = %117, %141
  %119 = phi %struct.fs_type_list* [ %144, %141 ], [ %115, %117 ]
  %120 = phi i8 [ %142, %141 ], [ 0, %117 ]
  %121 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_exclude_list, align 8
  %122 = icmp eq %struct.fs_type_list* %121, null
  br i1 %122, label %141, label %123

; <label>:123:                                    ; preds = %118
  %124 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %119, i64 0, i32 0
  %125 = load i8*, i8** %124, align 8
  br label %130

; <label>:126:                                    ; preds = %130
  %127 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %131, i64 0, i32 1
  %128 = load %struct.fs_type_list*, %struct.fs_type_list** %127, align 8
  %129 = icmp eq %struct.fs_type_list* %128, null
  br i1 %129, label %140, label %130

; <label>:130:                                    ; preds = %123, %126
  %131 = phi %struct.fs_type_list* [ %121, %123 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %131, i64 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @strcmp(i8* %125, i8* %133) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %126

; <label>:136:                                    ; preds = %130
  %137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i32 5) #12
  %138 = load i8*, i8** %124, align 8
  %139 = call i8* @quote(i8* %138) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %137, i8* %139) #12
  br label %141

; <label>:140:                                    ; preds = %126
  br label %141

; <label>:141:                                    ; preds = %140, %118, %136
  %142 = phi i8 [ 1, %136 ], [ %120, %118 ], [ %120, %140 ]
  %143 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %119, i64 0, i32 1
  %144 = load %struct.fs_type_list*, %struct.fs_type_list** %143, align 8
  %145 = icmp eq %struct.fs_type_list* %144, null
  br i1 %145, label %146, label %118

; <label>:146:                                    ; preds = %141
  %147 = and i8 %142, 1
  %148 = icmp eq i8 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  br i1 %148, label %151, label %1434

; <label>:151:                                    ; preds = %114, %146
  %152 = load i32, i32* @optind, align 4
  %153 = icmp slt i32 %152, %0
  br i1 %153, label %154, label %206

; <label>:154:                                    ; preds = %151
  %155 = sub nsw i32 %0, %152
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %154
  call void @xalloc_die() #15
  unreachable

; <label>:158:                                    ; preds = %154
  %159 = sext i32 %155 to i64
  %160 = mul nsw i64 %159, 144
  %161 = call noalias i8* @xmalloc(i64 %160) #12
  %162 = bitcast i8* %161 to %struct.stat*
  %163 = load i32, i32* @optind, align 4
  %164 = icmp slt i32 %163, %0
  br i1 %164, label %165, label %206

; <label>:165:                                    ; preds = %158
  %166 = sext i32 %163 to i64
  br label %167

; <label>:167:                                    ; preds = %201, %165
  %168 = phi i64 [ %166, %165 ], [ %202, %201 ]
  %169 = getelementptr inbounds i8*, i8** %1, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, i32, ...) @open(i8* %170, i32 256) #12
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %167
  %174 = trunc i64 %168 to i32
  br label %183

; <label>:175:                                    ; preds = %167
  %176 = load i32, i32* @optind, align 4
  %177 = trunc i64 %168 to i32
  %178 = sub nsw i32 %177, %176
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.stat, %struct.stat* %162, i64 %179
  %181 = call i32 @__fxstat(i32 1, i32 %171, %struct.stat* nonnull %180) #12
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %199, label %183

; <label>:183:                                    ; preds = %173, %175
  %184 = phi i32 [ %174, %173 ], [ %177, %175 ]
  %185 = load i8*, i8** %169, align 8
  %186 = load i32, i32* @optind, align 4
  %187 = sub nsw i32 %184, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %162, i64 %188
  %190 = call i32 @__xstat(i32 1, i8* nonnull %185, %struct.stat* nonnull %189) #12
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %192

; <label>:192:                                    ; preds = %183
  %193 = tail call i32* @__errno_location() #1
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %169, align 8
  %196 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %195) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %196) #12
  store i1 true, i1* @exit_status, align 4
  store i8* null, i8** %169, align 8
  br label %197

; <label>:197:                                    ; preds = %183, %192
  %198 = icmp sgt i32 %171, -1
  br i1 %198, label %199, label %201

; <label>:199:                                    ; preds = %175, %197
  %200 = call i32 @close(i32 %171) #12
  br label %201

; <label>:201:                                    ; preds = %199, %197
  %202 = add nsw i64 %168, 1
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %203, %0
  br i1 %204, label %205, label %167

; <label>:205:                                    ; preds = %201
  br label %206

; <label>:206:                                    ; preds = %205, %158, %151
  %207 = phi %struct.stat* [ undef, %151 ], [ %162, %158 ], [ %162, %205 ]
  %208 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_select_list, align 8
  %209 = icmp ne %struct.fs_type_list* %208, null
  %210 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_exclude_list, align 8
  %211 = icmp ne %struct.fs_type_list* %210, null
  %212 = or i1 %209, %211
  br i1 %212, label %220, label %213

; <label>:213:                                    ; preds = %206
  %214 = load i1, i1* @print_type, align 1
  %215 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  %216 = load i1, i1* @show_local_fs, align 1
  %217 = icmp ne i8 %215, 0
  %218 = or i1 %214, %217
  %219 = or i1 %216, %218
  br label %220

; <label>:220:                                    ; preds = %213, %206
  %221 = phi i1 [ true, %206 ], [ %219, %213 ]
  %222 = call %struct.mount_entry* @read_file_system_list(i1 zeroext %221) #12
  store %struct.mount_entry* %222, %struct.mount_entry** @mount_list, align 8
  %223 = icmp eq %struct.mount_entry* %222, null
  br i1 %223, label %224, label %245

; <label>:224:                                    ; preds = %220
  %225 = load i32, i32* @optind, align 4
  %226 = icmp slt i32 %225, %0
  br i1 %226, label %227, label %239

; <label>:227:                                    ; preds = %224
  %228 = load i1, i1* @show_all_fs, align 1
  br i1 %228, label %239, label %229

; <label>:229:                                    ; preds = %227
  %230 = load i1, i1* @show_local_fs, align 1
  %231 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_select_list, align 8
  %232 = icmp ne %struct.fs_type_list* %231, null
  %233 = or i1 %230, %232
  %234 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_exclude_list, align 8
  %235 = icmp ne %struct.fs_type_list* %234, null
  %236 = or i1 %233, %235
  br i1 %236, label %239, label %237

; <label>:237:                                    ; preds = %229
  %238 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 5) #12
  br label %239

; <label>:239:                                    ; preds = %229, %227, %224, %237
  %240 = phi i32 [ 0, %237 ], [ 1, %224 ], [ 1, %227 ], [ 1, %229 ]
  %241 = phi i8* [ %238, %237 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %224 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %227 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %229 ]
  %242 = tail call i32* @__errno_location() #1
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 %240, i32 %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i8* %241, i8* %244) #12
  br label %245

; <label>:245:                                    ; preds = %239, %220
  %246 = load i1, i1* @require_sync, align 1
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %245
  call void @sync() #12
  br label %248

; <label>:248:                                    ; preds = %247, %245
  %249 = load i32, i32* @header_mode, align 4
  switch i32 %249, label %678 [
    i32 0, label %250
    i32 2, label %356
    i32 1, label %462
    i32 3, label %568
    i32 4, label %674
  ]

; <label>:250:                                    ; preds = %248
  %251 = load i64, i64* @ncolumns, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* @ncolumns, align 8
  %253 = icmp ugt i64 %252, 1152921504606846975
  br i1 %253, label %254, label %255

; <label>:254:                                    ; preds = %250
  call void @xalloc_die() #15
  unreachable

; <label>:255:                                    ; preds = %250
  %256 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %257 = shl i64 %252, 3
  %258 = call i8* @xrealloc(i8* %256, i64 %257) #12
  %259 = bitcast i8* %258 to %struct.field_data_t**
  store i8* %258, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %260 = load i64, i64* @ncolumns, align 8
  %261 = add i64 %260, -1
  %262 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %259, i64 %261
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0), %struct.field_data_t** %262, align 8
  %263 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %266, label %265

; <label>:265:                                    ; preds = %255
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:266:                                    ; preds = %255
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %267 = load i1, i1* @print_type, align 1
  br i1 %267, label %268, label %283

; <label>:268:                                    ; preds = %266
  %269 = add i64 %260, 1
  store i64 %269, i64* @ncolumns, align 8
  %270 = icmp ugt i64 %269, 1152921504606846975
  br i1 %270, label %271, label %272

; <label>:271:                                    ; preds = %268
  call void @xalloc_die() #15
  unreachable

; <label>:272:                                    ; preds = %268
  %273 = shl i64 %269, 3
  %274 = call i8* @xrealloc(i8* %258, i64 %273) #12
  %275 = bitcast i8* %274 to %struct.field_data_t**
  store i8* %274, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %276 = load i64, i64* @ncolumns, align 8
  %277 = add i64 %276, -1
  %278 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %275, i64 %277
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1), %struct.field_data_t** %278, align 8
  %279 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %282, label %281

; <label>:281:                                    ; preds = %272
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:282:                                    ; preds = %272
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  br label %283

; <label>:283:                                    ; preds = %282, %266
  %284 = phi i8* [ %274, %282 ], [ %258, %266 ]
  %285 = phi i64 [ %276, %282 ], [ %260, %266 ]
  %286 = add i64 %285, 1
  store i64 %286, i64* @ncolumns, align 8
  %287 = icmp ugt i64 %286, 1152921504606846975
  br i1 %287, label %288, label %289

; <label>:288:                                    ; preds = %283
  call void @xalloc_die() #15
  unreachable

; <label>:289:                                    ; preds = %283
  %290 = shl i64 %286, 3
  %291 = call i8* @xrealloc(i8* %284, i64 %290) #12
  %292 = bitcast i8* %291 to %struct.field_data_t**
  store i8* %291, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %293 = load i64, i64* @ncolumns, align 8
  %294 = add i64 %293, -1
  %295 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %292, i64 %294
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2), %struct.field_data_t** %295, align 8
  %296 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %299, label %298

; <label>:298:                                    ; preds = %289
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:299:                                    ; preds = %289
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %300 = add i64 %293, 1
  store i64 %300, i64* @ncolumns, align 8
  %301 = icmp ugt i64 %300, 1152921504606846975
  br i1 %301, label %302, label %303

; <label>:302:                                    ; preds = %299
  call void @xalloc_die() #15
  unreachable

; <label>:303:                                    ; preds = %299
  %304 = shl i64 %300, 3
  %305 = call i8* @xrealloc(i8* %291, i64 %304) #12
  %306 = bitcast i8* %305 to %struct.field_data_t**
  store i8* %305, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %307 = load i64, i64* @ncolumns, align 8
  %308 = add i64 %307, -1
  %309 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %306, i64 %308
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3), %struct.field_data_t** %309, align 8
  %310 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %313, label %312

; <label>:312:                                    ; preds = %303
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:313:                                    ; preds = %303
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %314 = add i64 %307, 1
  store i64 %314, i64* @ncolumns, align 8
  %315 = icmp ugt i64 %314, 1152921504606846975
  br i1 %315, label %316, label %317

; <label>:316:                                    ; preds = %313
  call void @xalloc_die() #15
  unreachable

; <label>:317:                                    ; preds = %313
  %318 = shl i64 %314, 3
  %319 = call i8* @xrealloc(i8* %305, i64 %318) #12
  %320 = bitcast i8* %319 to %struct.field_data_t**
  store i8* %319, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %321 = load i64, i64* @ncolumns, align 8
  %322 = add i64 %321, -1
  %323 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %320, i64 %322
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4), %struct.field_data_t** %323, align 8
  %324 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %327, label %326

; <label>:326:                                    ; preds = %317
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:327:                                    ; preds = %317
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %328 = add i64 %321, 1
  store i64 %328, i64* @ncolumns, align 8
  %329 = icmp ugt i64 %328, 1152921504606846975
  br i1 %329, label %330, label %331

; <label>:330:                                    ; preds = %327
  call void @xalloc_die() #15
  unreachable

; <label>:331:                                    ; preds = %327
  %332 = shl i64 %328, 3
  %333 = call i8* @xrealloc(i8* %319, i64 %332) #12
  %334 = bitcast i8* %333 to %struct.field_data_t**
  store i8* %333, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %335 = load i64, i64* @ncolumns, align 8
  %336 = add i64 %335, -1
  %337 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %334, i64 %336
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5), %struct.field_data_t** %337, align 8
  %338 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %341, label %340

; <label>:340:                                    ; preds = %331
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:341:                                    ; preds = %331
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %342 = add i64 %335, 1
  store i64 %342, i64* @ncolumns, align 8
  %343 = icmp ugt i64 %342, 1152921504606846975
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %341
  call void @xalloc_die() #15
  unreachable

; <label>:345:                                    ; preds = %341
  %346 = shl i64 %342, 3
  %347 = call i8* @xrealloc(i8* %333, i64 %346) #12
  %348 = bitcast i8* %347 to %struct.field_data_t**
  store i8* %347, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %349 = load i64, i64* @ncolumns, align 8
  %350 = add i64 %349, -1
  %351 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %348, i64 %350
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10), %struct.field_data_t** %351, align 8
  %352 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %355, label %354

; <label>:354:                                    ; preds = %345
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:355:                                    ; preds = %345
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  br label %679

; <label>:356:                                    ; preds = %248
  %357 = load i64, i64* @ncolumns, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* @ncolumns, align 8
  %359 = icmp ugt i64 %358, 1152921504606846975
  br i1 %359, label %360, label %361

; <label>:360:                                    ; preds = %356
  call void @xalloc_die() #15
  unreachable

; <label>:361:                                    ; preds = %356
  %362 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %363 = shl i64 %358, 3
  %364 = call i8* @xrealloc(i8* %362, i64 %363) #12
  %365 = bitcast i8* %364 to %struct.field_data_t**
  store i8* %364, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %366 = load i64, i64* @ncolumns, align 8
  %367 = add i64 %366, -1
  %368 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %365, i64 %367
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0), %struct.field_data_t** %368, align 8
  %369 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %372, label %371

; <label>:371:                                    ; preds = %361
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:372:                                    ; preds = %361
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %373 = load i1, i1* @print_type, align 1
  br i1 %373, label %374, label %389

; <label>:374:                                    ; preds = %372
  %375 = add i64 %366, 1
  store i64 %375, i64* @ncolumns, align 8
  %376 = icmp ugt i64 %375, 1152921504606846975
  br i1 %376, label %377, label %378

; <label>:377:                                    ; preds = %374
  call void @xalloc_die() #15
  unreachable

; <label>:378:                                    ; preds = %374
  %379 = shl i64 %375, 3
  %380 = call i8* @xrealloc(i8* %364, i64 %379) #12
  %381 = bitcast i8* %380 to %struct.field_data_t**
  store i8* %380, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %382 = load i64, i64* @ncolumns, align 8
  %383 = add i64 %382, -1
  %384 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %381, i64 %383
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1), %struct.field_data_t** %384, align 8
  %385 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %388, label %387

; <label>:387:                                    ; preds = %378
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:388:                                    ; preds = %378
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  br label %389

; <label>:389:                                    ; preds = %388, %372
  %390 = phi i8* [ %380, %388 ], [ %364, %372 ]
  %391 = phi i64 [ %382, %388 ], [ %366, %372 ]
  %392 = add i64 %391, 1
  store i64 %392, i64* @ncolumns, align 8
  %393 = icmp ugt i64 %392, 1152921504606846975
  br i1 %393, label %394, label %395

; <label>:394:                                    ; preds = %389
  call void @xalloc_die() #15
  unreachable

; <label>:395:                                    ; preds = %389
  %396 = shl i64 %392, 3
  %397 = call i8* @xrealloc(i8* %390, i64 %396) #12
  %398 = bitcast i8* %397 to %struct.field_data_t**
  store i8* %397, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %399 = load i64, i64* @ncolumns, align 8
  %400 = add i64 %399, -1
  %401 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %398, i64 %400
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2), %struct.field_data_t** %401, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 3), align 8
  %402 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %405, label %404

; <label>:404:                                    ; preds = %395
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:405:                                    ; preds = %395
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %406 = add i64 %399, 1
  store i64 %406, i64* @ncolumns, align 8
  %407 = icmp ugt i64 %406, 1152921504606846975
  br i1 %407, label %408, label %409

; <label>:408:                                    ; preds = %405
  call void @xalloc_die() #15
  unreachable

; <label>:409:                                    ; preds = %405
  %410 = shl i64 %406, 3
  %411 = call i8* @xrealloc(i8* %397, i64 %410) #12
  %412 = bitcast i8* %411 to %struct.field_data_t**
  store i8* %411, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %413 = load i64, i64* @ncolumns, align 8
  %414 = add i64 %413, -1
  %415 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %412, i64 %414
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3), %struct.field_data_t** %415, align 8
  %416 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %419, label %418

; <label>:418:                                    ; preds = %409
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:419:                                    ; preds = %409
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %420 = add i64 %413, 1
  store i64 %420, i64* @ncolumns, align 8
  %421 = icmp ugt i64 %420, 1152921504606846975
  br i1 %421, label %422, label %423

; <label>:422:                                    ; preds = %419
  call void @xalloc_die() #15
  unreachable

; <label>:423:                                    ; preds = %419
  %424 = shl i64 %420, 3
  %425 = call i8* @xrealloc(i8* %411, i64 %424) #12
  %426 = bitcast i8* %425 to %struct.field_data_t**
  store i8* %425, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %427 = load i64, i64* @ncolumns, align 8
  %428 = add i64 %427, -1
  %429 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %426, i64 %428
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4), %struct.field_data_t** %429, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 3), align 8
  %430 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %433, label %432

; <label>:432:                                    ; preds = %423
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:433:                                    ; preds = %423
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %434 = add i64 %427, 1
  store i64 %434, i64* @ncolumns, align 8
  %435 = icmp ugt i64 %434, 1152921504606846975
  br i1 %435, label %436, label %437

; <label>:436:                                    ; preds = %433
  call void @xalloc_die() #15
  unreachable

; <label>:437:                                    ; preds = %433
  %438 = shl i64 %434, 3
  %439 = call i8* @xrealloc(i8* %425, i64 %438) #12
  %440 = bitcast i8* %439 to %struct.field_data_t**
  store i8* %439, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %441 = load i64, i64* @ncolumns, align 8
  %442 = add i64 %441, -1
  %443 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %440, i64 %442
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5), %struct.field_data_t** %443, align 8
  %444 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %447, label %446

; <label>:446:                                    ; preds = %437
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:447:                                    ; preds = %437
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %448 = add i64 %441, 1
  store i64 %448, i64* @ncolumns, align 8
  %449 = icmp ugt i64 %448, 1152921504606846975
  br i1 %449, label %450, label %451

; <label>:450:                                    ; preds = %447
  call void @xalloc_die() #15
  unreachable

; <label>:451:                                    ; preds = %447
  %452 = shl i64 %448, 3
  %453 = call i8* @xrealloc(i8* %439, i64 %452) #12
  %454 = bitcast i8* %453 to %struct.field_data_t**
  store i8* %453, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %455 = load i64, i64* @ncolumns, align 8
  %456 = add i64 %455, -1
  %457 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %454, i64 %456
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10), %struct.field_data_t** %457, align 8
  %458 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %461, label %460

; <label>:460:                                    ; preds = %451
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:461:                                    ; preds = %451
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  br label %679

; <label>:462:                                    ; preds = %248
  %463 = load i64, i64* @ncolumns, align 8
  %464 = add i64 %463, 1
  store i64 %464, i64* @ncolumns, align 8
  %465 = icmp ugt i64 %464, 1152921504606846975
  br i1 %465, label %466, label %467

; <label>:466:                                    ; preds = %462
  call void @xalloc_die() #15
  unreachable

; <label>:467:                                    ; preds = %462
  %468 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %469 = shl i64 %464, 3
  %470 = call i8* @xrealloc(i8* %468, i64 %469) #12
  %471 = bitcast i8* %470 to %struct.field_data_t**
  store i8* %470, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %472 = load i64, i64* @ncolumns, align 8
  %473 = add i64 %472, -1
  %474 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %471, i64 %473
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0), %struct.field_data_t** %474, align 8
  %475 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %478, label %477

; <label>:477:                                    ; preds = %467
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:478:                                    ; preds = %467
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %479 = load i1, i1* @print_type, align 1
  br i1 %479, label %480, label %495

; <label>:480:                                    ; preds = %478
  %481 = add i64 %472, 1
  store i64 %481, i64* @ncolumns, align 8
  %482 = icmp ugt i64 %481, 1152921504606846975
  br i1 %482, label %483, label %484

; <label>:483:                                    ; preds = %480
  call void @xalloc_die() #15
  unreachable

; <label>:484:                                    ; preds = %480
  %485 = shl i64 %481, 3
  %486 = call i8* @xrealloc(i8* %470, i64 %485) #12
  %487 = bitcast i8* %486 to %struct.field_data_t**
  store i8* %486, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %488 = load i64, i64* @ncolumns, align 8
  %489 = add i64 %488, -1
  %490 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %487, i64 %489
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1), %struct.field_data_t** %490, align 8
  %491 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  %492 = icmp eq i8 %491, 0
  br i1 %492, label %494, label %493

; <label>:493:                                    ; preds = %484
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:494:                                    ; preds = %484
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  br label %495

; <label>:495:                                    ; preds = %494, %478
  %496 = phi i8* [ %486, %494 ], [ %470, %478 ]
  %497 = phi i64 [ %488, %494 ], [ %472, %478 ]
  %498 = add i64 %497, 1
  store i64 %498, i64* @ncolumns, align 8
  %499 = icmp ugt i64 %498, 1152921504606846975
  br i1 %499, label %500, label %501

; <label>:500:                                    ; preds = %495
  call void @xalloc_die() #15
  unreachable

; <label>:501:                                    ; preds = %495
  %502 = shl i64 %498, 3
  %503 = call i8* @xrealloc(i8* %496, i64 %502) #12
  %504 = bitcast i8* %503 to %struct.field_data_t**
  store i8* %503, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %505 = load i64, i64* @ncolumns, align 8
  %506 = add i64 %505, -1
  %507 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %504, i64 %506
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 6), %struct.field_data_t** %507, align 8
  %508 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 6, i32 6), align 4
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %511, label %510

; <label>:510:                                    ; preds = %501
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:511:                                    ; preds = %501
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 6, i32 6), align 4
  %512 = add i64 %505, 1
  store i64 %512, i64* @ncolumns, align 8
  %513 = icmp ugt i64 %512, 1152921504606846975
  br i1 %513, label %514, label %515

; <label>:514:                                    ; preds = %511
  call void @xalloc_die() #15
  unreachable

; <label>:515:                                    ; preds = %511
  %516 = shl i64 %512, 3
  %517 = call i8* @xrealloc(i8* %503, i64 %516) #12
  %518 = bitcast i8* %517 to %struct.field_data_t**
  store i8* %517, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %519 = load i64, i64* @ncolumns, align 8
  %520 = add i64 %519, -1
  %521 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %518, i64 %520
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 7), %struct.field_data_t** %521, align 8
  %522 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 7, i32 6), align 4
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %525, label %524

; <label>:524:                                    ; preds = %515
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:525:                                    ; preds = %515
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 7, i32 6), align 4
  %526 = add i64 %519, 1
  store i64 %526, i64* @ncolumns, align 8
  %527 = icmp ugt i64 %526, 1152921504606846975
  br i1 %527, label %528, label %529

; <label>:528:                                    ; preds = %525
  call void @xalloc_die() #15
  unreachable

; <label>:529:                                    ; preds = %525
  %530 = shl i64 %526, 3
  %531 = call i8* @xrealloc(i8* %517, i64 %530) #12
  %532 = bitcast i8* %531 to %struct.field_data_t**
  store i8* %531, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %533 = load i64, i64* @ncolumns, align 8
  %534 = add i64 %533, -1
  %535 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %532, i64 %534
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 8), %struct.field_data_t** %535, align 8
  %536 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 8, i32 6), align 4
  %537 = icmp eq i8 %536, 0
  br i1 %537, label %539, label %538

; <label>:538:                                    ; preds = %529
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:539:                                    ; preds = %529
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 8, i32 6), align 4
  %540 = add i64 %533, 1
  store i64 %540, i64* @ncolumns, align 8
  %541 = icmp ugt i64 %540, 1152921504606846975
  br i1 %541, label %542, label %543

; <label>:542:                                    ; preds = %539
  call void @xalloc_die() #15
  unreachable

; <label>:543:                                    ; preds = %539
  %544 = shl i64 %540, 3
  %545 = call i8* @xrealloc(i8* %531, i64 %544) #12
  %546 = bitcast i8* %545 to %struct.field_data_t**
  store i8* %545, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %547 = load i64, i64* @ncolumns, align 8
  %548 = add i64 %547, -1
  %549 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %546, i64 %548
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 9), %struct.field_data_t** %549, align 8
  %550 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 9, i32 6), align 4
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %553, label %552

; <label>:552:                                    ; preds = %543
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:553:                                    ; preds = %543
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 9, i32 6), align 4
  %554 = add i64 %547, 1
  store i64 %554, i64* @ncolumns, align 8
  %555 = icmp ugt i64 %554, 1152921504606846975
  br i1 %555, label %556, label %557

; <label>:556:                                    ; preds = %553
  call void @xalloc_die() #15
  unreachable

; <label>:557:                                    ; preds = %553
  %558 = shl i64 %554, 3
  %559 = call i8* @xrealloc(i8* %545, i64 %558) #12
  %560 = bitcast i8* %559 to %struct.field_data_t**
  store i8* %559, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %561 = load i64, i64* @ncolumns, align 8
  %562 = add i64 %561, -1
  %563 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %560, i64 %562
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10), %struct.field_data_t** %563, align 8
  %564 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %567, label %566

; <label>:566:                                    ; preds = %557
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:567:                                    ; preds = %557
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  br label %679

; <label>:568:                                    ; preds = %248
  %569 = load i64, i64* @ncolumns, align 8
  %570 = add i64 %569, 1
  store i64 %570, i64* @ncolumns, align 8
  %571 = icmp ugt i64 %570, 1152921504606846975
  br i1 %571, label %572, label %573

; <label>:572:                                    ; preds = %568
  call void @xalloc_die() #15
  unreachable

; <label>:573:                                    ; preds = %568
  %574 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %575 = shl i64 %570, 3
  %576 = call i8* @xrealloc(i8* %574, i64 %575) #12
  %577 = bitcast i8* %576 to %struct.field_data_t**
  store i8* %576, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %578 = load i64, i64* @ncolumns, align 8
  %579 = add i64 %578, -1
  %580 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %577, i64 %579
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0), %struct.field_data_t** %580, align 8
  %581 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %584, label %583

; <label>:583:                                    ; preds = %573
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:584:                                    ; preds = %573
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %585 = load i1, i1* @print_type, align 1
  br i1 %585, label %586, label %601

; <label>:586:                                    ; preds = %584
  %587 = add i64 %578, 1
  store i64 %587, i64* @ncolumns, align 8
  %588 = icmp ugt i64 %587, 1152921504606846975
  br i1 %588, label %589, label %590

; <label>:589:                                    ; preds = %586
  call void @xalloc_die() #15
  unreachable

; <label>:590:                                    ; preds = %586
  %591 = shl i64 %587, 3
  %592 = call i8* @xrealloc(i8* %576, i64 %591) #12
  %593 = bitcast i8* %592 to %struct.field_data_t**
  store i8* %592, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %594 = load i64, i64* @ncolumns, align 8
  %595 = add i64 %594, -1
  %596 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %593, i64 %595
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1), %struct.field_data_t** %596, align 8
  %597 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %600, label %599

; <label>:599:                                    ; preds = %590
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:600:                                    ; preds = %590
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 6), align 4
  br label %601

; <label>:601:                                    ; preds = %600, %584
  %602 = phi i8* [ %592, %600 ], [ %576, %584 ]
  %603 = phi i64 [ %594, %600 ], [ %578, %584 ]
  %604 = add i64 %603, 1
  store i64 %604, i64* @ncolumns, align 8
  %605 = icmp ugt i64 %604, 1152921504606846975
  br i1 %605, label %606, label %607

; <label>:606:                                    ; preds = %601
  call void @xalloc_die() #15
  unreachable

; <label>:607:                                    ; preds = %601
  %608 = shl i64 %604, 3
  %609 = call i8* @xrealloc(i8* %602, i64 %608) #12
  %610 = bitcast i8* %609 to %struct.field_data_t**
  store i8* %609, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %611 = load i64, i64* @ncolumns, align 8
  %612 = add i64 %611, -1
  %613 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %610, i64 %612
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2), %struct.field_data_t** %613, align 8
  %614 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %615 = icmp eq i8 %614, 0
  br i1 %615, label %617, label %616

; <label>:616:                                    ; preds = %607
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:617:                                    ; preds = %607
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %618 = add i64 %611, 1
  store i64 %618, i64* @ncolumns, align 8
  %619 = icmp ugt i64 %618, 1152921504606846975
  br i1 %619, label %620, label %621

; <label>:620:                                    ; preds = %617
  call void @xalloc_die() #15
  unreachable

; <label>:621:                                    ; preds = %617
  %622 = shl i64 %618, 3
  %623 = call i8* @xrealloc(i8* %609, i64 %622) #12
  %624 = bitcast i8* %623 to %struct.field_data_t**
  store i8* %623, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %625 = load i64, i64* @ncolumns, align 8
  %626 = add i64 %625, -1
  %627 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %624, i64 %626
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3), %struct.field_data_t** %627, align 8
  %628 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %631, label %630

; <label>:630:                                    ; preds = %621
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:631:                                    ; preds = %621
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 6), align 4
  %632 = add i64 %625, 1
  store i64 %632, i64* @ncolumns, align 8
  %633 = icmp ugt i64 %632, 1152921504606846975
  br i1 %633, label %634, label %635

; <label>:634:                                    ; preds = %631
  call void @xalloc_die() #15
  unreachable

; <label>:635:                                    ; preds = %631
  %636 = shl i64 %632, 3
  %637 = call i8* @xrealloc(i8* %623, i64 %636) #12
  %638 = bitcast i8* %637 to %struct.field_data_t**
  store i8* %637, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %639 = load i64, i64* @ncolumns, align 8
  %640 = add i64 %639, -1
  %641 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %638, i64 %640
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4), %struct.field_data_t** %641, align 8
  %642 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %645, label %644

; <label>:644:                                    ; preds = %635
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:645:                                    ; preds = %635
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %646 = add i64 %639, 1
  store i64 %646, i64* @ncolumns, align 8
  %647 = icmp ugt i64 %646, 1152921504606846975
  br i1 %647, label %648, label %649

; <label>:648:                                    ; preds = %645
  call void @xalloc_die() #15
  unreachable

; <label>:649:                                    ; preds = %645
  %650 = shl i64 %646, 3
  %651 = call i8* @xrealloc(i8* %637, i64 %650) #12
  %652 = bitcast i8* %651 to %struct.field_data_t**
  store i8* %651, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %653 = load i64, i64* @ncolumns, align 8
  %654 = add i64 %653, -1
  %655 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %652, i64 %654
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5), %struct.field_data_t** %655, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.100, i64 0, i64 0), i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 3), align 8
  %656 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %657 = icmp eq i8 %656, 0
  br i1 %657, label %659, label %658

; <label>:658:                                    ; preds = %649
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:659:                                    ; preds = %649
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 6), align 4
  %660 = add i64 %653, 1
  store i64 %660, i64* @ncolumns, align 8
  %661 = icmp ugt i64 %660, 1152921504606846975
  br i1 %661, label %662, label %663

; <label>:662:                                    ; preds = %659
  call void @xalloc_die() #15
  unreachable

; <label>:663:                                    ; preds = %659
  %664 = shl i64 %660, 3
  %665 = call i8* @xrealloc(i8* %651, i64 %664) #12
  %666 = bitcast i8* %665 to %struct.field_data_t**
  store i8* %665, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %667 = load i64, i64* @ncolumns, align 8
  %668 = add i64 %667, -1
  %669 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %666, i64 %668
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10), %struct.field_data_t** %669, align 8
  %670 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %673, label %672

; <label>:672:                                    ; preds = %663
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:673:                                    ; preds = %663
  store i8 1, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 6), align 4
  br label %679

; <label>:674:                                    ; preds = %248
  %675 = load i64, i64* @ncolumns, align 8
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %677, label %679

; <label>:677:                                    ; preds = %674
  call fastcc void @decode_output_arg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.102, i64 0, i64 0)) #12
  br label %679

; <label>:678:                                    ; preds = %248
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 496, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.get_field_list, i64 0, i64 0)) #15
  unreachable

; <label>:679:                                    ; preds = %355, %461, %567, %673, %674, %677
  %680 = load i64, i64* @nrows, align 8
  %681 = add i64 %680, 1
  store i64 %681, i64* @nrows, align 8
  %682 = icmp ugt i64 %681, 1152921504606846975
  br i1 %682, label %683, label %684

; <label>:683:                                    ; preds = %679
  call void @xalloc_die() #15
  unreachable

; <label>:684:                                    ; preds = %679
  %685 = load i8*, i8** bitcast (i8**** @table to i8**), align 8
  %686 = shl i64 %681, 3
  %687 = call i8* @xrealloc(i8* %685, i64 %686) #12
  store i8* %687, i8** bitcast (i8**** @table to i8**), align 8
  %688 = load i64, i64* @ncolumns, align 8
  %689 = icmp ugt i64 %688, 1152921504606846975
  br i1 %689, label %690, label %691

; <label>:690:                                    ; preds = %684
  call void @xalloc_die() #15
  unreachable

; <label>:691:                                    ; preds = %684
  %692 = shl i64 %688, 3
  %693 = call noalias i8* @xmalloc(i64 %692) #12
  %694 = load i8***, i8**** @table, align 8
  %695 = load i64, i64* @nrows, align 8
  %696 = add i64 %695, -1
  %697 = getelementptr inbounds i8**, i8*** %694, i64 %696
  %698 = bitcast i8*** %697 to i8**
  store i8* %693, i8** %698, align 8
  %699 = load i64, i64* @ncolumns, align 8
  %700 = icmp eq i64 %699, 0
  br i1 %700, label %842, label %701

; <label>:701:                                    ; preds = %691
  %702 = bitcast i8** %8 to i8*
  %703 = getelementptr inbounds [652 x i8], [652 x i8]* %9, i64 0, i64 0
  %704 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %705 = bitcast i8** %8 to i64*
  %706 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  br label %707

; <label>:707:                                    ; preds = %833, %701
  %708 = phi %struct.field_data_t** [ %706, %701 ], [ %835, %833 ]
  %709 = phi i64 [ 0, %701 ], [ %838, %833 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %702) #12
  store i8* null, i8** %8, align 8
  %710 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %708, i64 %709
  %711 = load %struct.field_data_t*, %struct.field_data_t** %710, align 8
  %712 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %711, i64 0, i32 3
  %713 = load i8*, i8** %712, align 8
  %714 = call i8* @dcgettext(i8* null, i8* %713, i32 5) #12
  %715 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %716 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %715, i64 %709
  %717 = load %struct.field_data_t*, %struct.field_data_t** %716, align 8
  %718 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %717, i64 0, i32 0
  %719 = load i32, i32* %718, align 8
  %720 = icmp eq i32 %719, 2
  br i1 %720, label %721, label %772

; <label>:721:                                    ; preds = %707
  %722 = load i32, i32* @header_mode, align 4
  switch i32 %722, label %772 [
    i32 0, label %723
    i32 4, label %725
    i32 3, label %764
  ]

; <label>:723:                                    ; preds = %721
  %724 = load i32, i32* @human_output_opts, align 4
  br label %729

; <label>:725:                                    ; preds = %721
  %726 = load i32, i32* @human_output_opts, align 4
  %727 = and i32 %726, 16
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %772

; <label>:729:                                    ; preds = %725, %723
  %730 = phi i32 [ %724, %723 ], [ %726, %725 ]
  call void @llvm.lifetime.start(i64 652, i8* nonnull %703) #12
  %731 = load i64, i64* @output_block_size, align 8
  br label %732

; <label>:732:                                    ; preds = %732, %729
  %733 = phi i64 [ %731, %729 ], [ %738, %732 ]
  %734 = phi i64 [ %731, %729 ], [ %736, %732 ]
  %735 = urem i64 %734, 1000
  %736 = udiv i64 %734, 1000
  %737 = and i64 %733, 1023
  %738 = lshr i64 %733, 10
  %739 = or i64 %735, %737
  %740 = icmp eq i64 %739, 0
  br i1 %740, label %732, label %741

; <label>:741:                                    ; preds = %732
  %742 = and i32 %730, 292
  %743 = icmp eq i64 %735, 0
  %744 = icmp eq i64 %737, 0
  %745 = xor i1 %743, true
  %746 = and i1 %744, %745
  %747 = select i1 %746, i32 184, i32 152
  %748 = or i32 %747, %742
  %749 = xor i1 %744, true
  %750 = and i1 %743, %749
  %751 = and i32 %748, 412
  %752 = select i1 %750, i32 %751, i32 %748
  %753 = shl nuw nsw i32 %752, 3
  %754 = and i32 %753, 256
  %755 = xor i32 %754, 256
  %756 = or i32 %755, %752
  %757 = call i8* @human_readable(i64 %731, i8* nonnull %703, i32 %756, i64 1, i64 1) #12
  %758 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), i32 5) #12
  %759 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i64 0, i64 0), i32 5) #12
  %760 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %8, i32 1, i8* %759, i8* %757, i8* %758) #12
  %761 = icmp eq i32 %760, -1
  br i1 %761, label %762, label %763

; <label>:762:                                    ; preds = %741
  store i8* null, i8** %8, align 8
  br label %763

; <label>:763:                                    ; preds = %762, %741
  call void @llvm.lifetime.end(i64 652, i8* nonnull %703) #12
  br label %774

; <label>:764:                                    ; preds = %721
  call void @llvm.lifetime.start(i64 21, i8* nonnull %704) #12
  %765 = load i64, i64* @output_block_size, align 8
  %766 = call i8* @umaxtostr(i64 %765, i8* nonnull %704) #12
  %767 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i64 0, i64 0), i32 5) #12
  %768 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %8, i32 1, i8* %767, i8* %766, i8* %714) #12
  %769 = icmp eq i32 %768, -1
  br i1 %769, label %770, label %771

; <label>:770:                                    ; preds = %764
  store i8* null, i8** %8, align 8
  br label %771

; <label>:771:                                    ; preds = %770, %764
  call void @llvm.lifetime.end(i64 21, i8* nonnull %704) #12
  br label %774

; <label>:772:                                    ; preds = %721, %707, %725
  %773 = call noalias i8* @__strdup(i8* %714) #12
  store i8* %773, i8** %8, align 8
  br label %776

; <label>:774:                                    ; preds = %771, %763
  %775 = load i8*, i8** %8, align 8
  br label %776

; <label>:776:                                    ; preds = %774, %772
  %777 = phi i8* [ %775, %774 ], [ %773, %772 ]
  %778 = icmp eq i8* %777, null
  br i1 %778, label %779, label %780

; <label>:779:                                    ; preds = %776
  call void @xalloc_die() #15
  unreachable

; <label>:780:                                    ; preds = %776
  %781 = ptrtoint i8* %777 to i64
  %782 = load i8, i8* %777, align 1
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %802, label %784

; <label>:784:                                    ; preds = %780
  %785 = tail call i16** @__ctype_b_loc() #1
  br label %786

; <label>:786:                                    ; preds = %796, %784
  %787 = phi i8 [ %782, %784 ], [ %798, %796 ]
  %788 = phi i8* [ %777, %784 ], [ %797, %796 ]
  %789 = load i16*, i16** %785, align 8
  %790 = zext i8 %787 to i64
  %791 = getelementptr inbounds i16, i16* %789, i64 %790
  %792 = load i16, i16* %791, align 2
  %793 = and i16 %792, 2
  %794 = icmp eq i16 %793, 0
  br i1 %794, label %796, label %795

; <label>:795:                                    ; preds = %786
  store i8 63, i8* %788, align 1
  br label %796

; <label>:796:                                    ; preds = %795, %786
  %797 = getelementptr inbounds i8, i8* %788, i64 1
  %798 = load i8, i8* %797, align 1
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %800, label %786

; <label>:800:                                    ; preds = %796
  %801 = load i64, i64* %705, align 8
  br label %802

; <label>:802:                                    ; preds = %800, %780
  %803 = phi i64 [ %801, %800 ], [ %781, %780 ]
  %804 = load i8***, i8**** @table, align 8
  %805 = load i64, i64* @nrows, align 8
  %806 = add i64 %805, -1
  %807 = getelementptr inbounds i8**, i8*** %804, i64 %806
  %808 = load i8**, i8*** %807, align 8
  %809 = getelementptr inbounds i8*, i8** %808, i64 %709
  %810 = bitcast i8** %809 to i64*
  store i64 %803, i64* %810, align 8
  %811 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %812 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %811, i64 %709
  %813 = load %struct.field_data_t*, %struct.field_data_t** %812, align 8
  %814 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %813, i64 0, i32 4
  %815 = load i64, i64* %814, align 8
  %816 = load i8*, i8** %8, align 8
  %817 = call i32 @gnu_mbswidth(i8* %816, i32 0) #12
  %818 = sext i32 %817 to i64
  %819 = icmp ugt i64 %815, %818
  br i1 %819, label %820, label %826

; <label>:820:                                    ; preds = %802
  %821 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %822 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %821, i64 %709
  %823 = load %struct.field_data_t*, %struct.field_data_t** %822, align 8
  %824 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %823, i64 0, i32 4
  %825 = load i64, i64* %824, align 8
  br label %833

; <label>:826:                                    ; preds = %802
  %827 = load i8*, i8** %8, align 8
  %828 = call i32 @gnu_mbswidth(i8* %827, i32 0) #12
  %829 = sext i32 %828 to i64
  %830 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %831 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %830, i64 %709
  %832 = load %struct.field_data_t*, %struct.field_data_t** %831, align 8
  br label %833

; <label>:833:                                    ; preds = %826, %820
  %834 = phi %struct.field_data_t* [ %823, %820 ], [ %832, %826 ]
  %835 = phi %struct.field_data_t** [ %821, %820 ], [ %830, %826 ]
  %836 = phi i64 [ %825, %820 ], [ %829, %826 ]
  %837 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %834, i64 0, i32 4
  store i64 %836, i64* %837, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %702) #12
  %838 = add i64 %709, 1
  %839 = load i64, i64* @ncolumns, align 8
  %840 = icmp ult i64 %838, %839
  br i1 %840, label %707, label %841

; <label>:841:                                    ; preds = %833
  br label %842

; <label>:842:                                    ; preds = %841, %691
  %843 = load i32, i32* @optind, align 4
  %844 = icmp slt i32 %843, %0
  br i1 %844, label %845, label %1156

; <label>:845:                                    ; preds = %842
  store i1 true, i1* @show_listed_fs, align 1
  %846 = bitcast %struct.stat* %6 to i8*
  %847 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %848 = bitcast %struct.stat* %7 to i8*
  %849 = sext i32 %843 to i64
  br label %850

; <label>:850:                                    ; preds = %1152, %845
  %851 = phi i64 [ %849, %845 ], [ %1153, %1152 ]
  %852 = getelementptr inbounds i8*, i8** %1, i64 %851
  %853 = load i8*, i8** %852, align 8
  %854 = icmp eq i8* %853, null
  br i1 %854, label %1152, label %855

; <label>:855:                                    ; preds = %850
  %856 = load i32, i32* @optind, align 4
  %857 = trunc i64 %851 to i32
  %858 = sub nsw i32 %857, %856
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds %struct.stat, %struct.stat* %207, i64 %859
  %861 = getelementptr inbounds %struct.stat, %struct.stat* %207, i64 %859, i32 3
  %862 = load i32, i32* %861, align 8
  %863 = trunc i32 %862 to i16
  %864 = and i16 %863, -4096
  switch i16 %864, label %998 [
    i16 24576, label %865
    i16 8192, label %865
  ]

; <label>:865:                                    ; preds = %855, %855
  %866 = call i8* @canonicalize_file_name(i8* nonnull %853) #12
  %867 = icmp eq i8* %866, null
  br i1 %867, label %872, label %868

; <label>:868:                                    ; preds = %865
  %869 = load i8, i8* %866, align 1
  %870 = icmp eq i8 %869, 47
  %871 = select i1 %870, i8* %866, i8* %853
  br label %872

; <label>:872:                                    ; preds = %868, %865
  %873 = phi i8* [ %853, %865 ], [ %871, %868 ]
  %874 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %875 = icmp eq %struct.mount_entry* %874, null
  br i1 %875, label %877, label %876

; <label>:876:                                    ; preds = %872
  br label %878

; <label>:877:                                    ; preds = %872
  call void @free(i8* %866) #12
  br label %998

; <label>:878:                                    ; preds = %876, %968
  %879 = phi %struct.mount_entry* [ %974, %968 ], [ %874, %876 ]
  %880 = phi %struct.mount_entry* [ %972, %968 ], [ null, %876 ]
  %881 = phi i8 [ %971, %968 ], [ 0, %876 ]
  %882 = phi i8 [ %970, %968 ], [ 0, %876 ]
  %883 = phi i64 [ %969, %968 ], [ -1, %876 ]
  %884 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %879, i64 0, i32 0
  %885 = load i8*, i8** %884, align 8
  %886 = call i8* @canonicalize_file_name(i8* %885) #12
  %887 = icmp eq i8* %886, null
  br i1 %887, label %892, label %888

; <label>:888:                                    ; preds = %878
  %889 = load i8, i8* %886, align 1
  %890 = icmp eq i8 %889, 47
  %891 = select i1 %890, i8* %886, i8* %885
  br label %892

; <label>:892:                                    ; preds = %888, %878
  %893 = phi i8* [ %885, %878 ], [ %891, %888 ]
  %894 = call i32 @strcmp(i8* %873, i8* %893) #12
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %896, label %968

; <label>:896:                                    ; preds = %892
  %897 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %879, i64 0, i32 1
  %898 = load i8*, i8** %897, align 8
  %899 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %900 = icmp eq %struct.mount_entry* %899, null
  br i1 %900, label %929, label %901

; <label>:901:                                    ; preds = %896
  br label %902

; <label>:902:                                    ; preds = %901, %902
  %903 = phi %struct.mount_entry* [ %911, %902 ], [ %899, %901 ]
  %904 = phi %struct.mount_entry* [ %909, %902 ], [ null, %901 ]
  %905 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %903, i64 0, i32 1
  %906 = load i8*, i8** %905, align 8
  %907 = call i32 @strcmp(i8* %906, i8* %898) #12
  %908 = icmp eq i32 %907, 0
  %909 = select i1 %908, %struct.mount_entry* %903, %struct.mount_entry* %904
  %910 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %903, i64 0, i32 6
  %911 = load %struct.mount_entry*, %struct.mount_entry** %910, align 8
  %912 = icmp eq %struct.mount_entry* %911, null
  br i1 %912, label %913, label %902

; <label>:913:                                    ; preds = %902
  %914 = icmp eq %struct.mount_entry* %909, null
  br i1 %914, label %929, label %915

; <label>:915:                                    ; preds = %913
  %916 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %909, i64 0, i32 0
  %917 = load i8*, i8** %916, align 8
  %918 = call i8* @canonicalize_file_name(i8* %917) #12
  %919 = icmp eq i8* %918, null
  br i1 %919, label %923, label %920

; <label>:920:                                    ; preds = %915
  %921 = load i8, i8* %918, align 1
  %922 = icmp eq i8 %921, 47
  br i1 %922, label %932, label %923

; <label>:923:                                    ; preds = %920, %915
  call void @free(i8* %918) #12
  %924 = load i8*, i8** %916, align 8
  %925 = call noalias i8* @xstrdup(i8* %924) #12
  %926 = icmp eq i8* %925, null
  br i1 %926, label %927, label %932

; <label>:927:                                    ; preds = %923
  %928 = load i8*, i8** %897, align 8
  br label %929

; <label>:929:                                    ; preds = %927, %913, %896
  %930 = phi i8* [ %928, %927 ], [ %898, %913 ], [ %898, %896 ]
  %931 = call i64 @strlen(i8* %930) #14
  br label %939

; <label>:932:                                    ; preds = %923, %920
  %933 = phi i8* [ %925, %923 ], [ %918, %920 ]
  %934 = call i32 @strcmp(i8* nonnull %933, i8* %893) #12
  %935 = icmp ne i32 %934, 0
  %936 = zext i1 %935 to i8
  %937 = load i8*, i8** %897, align 8
  %938 = call i64 @strlen(i8* %937) #14
  br i1 %935, label %961, label %939

; <label>:939:                                    ; preds = %932, %929
  %940 = phi i8* [ %930, %929 ], [ %937, %932 ]
  %941 = phi i64 [ %931, %929 ], [ %938, %932 ]
  %942 = phi i8 [ 0, %929 ], [ %936, %932 ]
  %943 = phi i8* [ null, %929 ], [ %933, %932 ]
  %944 = and i8 %881, 1
  %945 = icmp eq i8 %944, 0
  %946 = icmp ult i64 %941, %883
  %947 = or i1 %945, %946
  br i1 %947, label %948, label %961

; <label>:948:                                    ; preds = %939
  call void @llvm.lifetime.start(i64 144, i8* nonnull %848) #12
  %949 = call i32 @__xstat(i32 1, i8* nonnull %940, %struct.stat* nonnull %7) #12
  %950 = icmp eq i32 %949, 0
  %951 = select i1 %950, i8 1, i8 %881
  br i1 %950, label %956, label %952

; <label>:952:                                    ; preds = %948
  %953 = and i8 %951, 1
  %954 = icmp eq i8 %953, 0
  %955 = and i1 %946, %954
  br i1 %955, label %956, label %958

; <label>:956:                                    ; preds = %952, %948
  %957 = icmp eq i64 %941, 1
  br i1 %957, label %967, label %958

; <label>:958:                                    ; preds = %956, %952
  %959 = phi i64 [ %941, %956 ], [ %883, %952 ]
  %960 = phi %struct.mount_entry* [ %879, %956 ], [ %880, %952 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %848) #12
  br label %961

; <label>:961:                                    ; preds = %958, %939, %932
  %962 = phi i8 [ %936, %932 ], [ %942, %939 ], [ %942, %958 ]
  %963 = phi i8* [ %933, %932 ], [ %943, %939 ], [ %943, %958 ]
  %964 = phi i64 [ %883, %932 ], [ %883, %939 ], [ %959, %958 ]
  %965 = phi i8 [ %881, %932 ], [ %881, %939 ], [ %951, %958 ]
  %966 = phi %struct.mount_entry* [ %880, %932 ], [ %880, %939 ], [ %960, %958 ]
  call void @free(i8* %963) #12
  br label %968

; <label>:967:                                    ; preds = %956
  call void @free(i8* %943) #12
  call void @free(i8* %886) #12
  call void @llvm.lifetime.end(i64 144, i8* nonnull %848) #12
  call void @free(i8* %866) #12
  br label %978

; <label>:968:                                    ; preds = %961, %892
  %969 = phi i64 [ %883, %892 ], [ %964, %961 ]
  %970 = phi i8 [ %882, %892 ], [ %962, %961 ]
  %971 = phi i8 [ %881, %892 ], [ %965, %961 ]
  %972 = phi %struct.mount_entry* [ %880, %892 ], [ %966, %961 ]
  call void @free(i8* %886) #12
  %973 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %879, i64 0, i32 6
  %974 = load %struct.mount_entry*, %struct.mount_entry** %973, align 8
  %975 = icmp eq %struct.mount_entry* %974, null
  br i1 %975, label %976, label %878

; <label>:976:                                    ; preds = %968
  call void @free(i8* %866) #12
  %977 = icmp eq %struct.mount_entry* %972, null
  br i1 %977, label %992, label %978

; <label>:978:                                    ; preds = %976, %967
  %979 = phi %struct.mount_entry* [ %879, %967 ], [ %972, %976 ]
  %980 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %979, i64 0, i32 0
  %981 = load i8*, i8** %980, align 8
  %982 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %979, i64 0, i32 1
  %983 = load i8*, i8** %982, align 8
  %984 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %979, i64 0, i32 3
  %985 = load i8*, i8** %984, align 8
  %986 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %979, i64 0, i32 5
  %987 = load i8, i8* %986, align 8
  %988 = and i8 %987, 1
  %989 = icmp ne i8 %988, 0
  %990 = and i8 %987, 2
  %991 = icmp ne i8 %990, 0
  call fastcc void @get_dev(i8* %981, i8* %983, i8* nonnull %853, i8* null, i8* %985, i1 zeroext %989, i1 zeroext %991, %struct.fs_usage* null, i1 zeroext false) #12
  br label %1152

; <label>:992:                                    ; preds = %976
  %993 = and i8 %970, 1
  %994 = icmp eq i8 %993, 0
  br i1 %994, label %998, label %995

; <label>:995:                                    ; preds = %992
  %996 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.104, i64 0, i64 0), i32 5) #12
  %997 = call i8* @quotearg_style(i32 4, i8* nonnull %853) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %996, i8* %997) #12
  store i1 true, i1* @exit_status, align 4
  br label %1152

; <label>:998:                                    ; preds = %992, %877, %855
  call void @llvm.lifetime.start(i64 144, i8* nonnull %846) #12
  %999 = call i8* @canonicalize_file_name(i8* nonnull %853) #12
  %1000 = icmp eq i8* %999, null
  br i1 %1000, label %1055, label %1001

; <label>:1001:                                   ; preds = %998
  %1002 = load i8, i8* %999, align 1
  %1003 = icmp eq i8 %1002, 47
  br i1 %1003, label %1004, label %1055

; <label>:1004:                                   ; preds = %1001
  %1005 = call i64 @strlen(i8* nonnull %999) #14
  %1006 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %1007 = icmp eq %struct.mount_entry* %1006, null
  br i1 %1007, label %1009, label %1008

; <label>:1008:                                   ; preds = %1004
  br label %1010

; <label>:1009:                                   ; preds = %1004
  call void @free(i8* nonnull %999) #12
  br label %1068

; <label>:1010:                                   ; preds = %1008, %1049
  %1011 = phi %struct.mount_entry* [ %1053, %1049 ], [ %1006, %1008 ]
  %1012 = phi %struct.mount_entry* [ %1051, %1049 ], [ null, %1008 ]
  %1013 = phi i64 [ %1050, %1049 ], [ 0, %1008 ]
  %1014 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1011, i64 0, i32 3
  %1015 = load i8*, i8** %1014, align 8
  %1016 = call i32 @strcmp(i8* %1015, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0)) #12
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1049, label %1018

; <label>:1018:                                   ; preds = %1010
  %1019 = icmp eq %struct.mount_entry* %1012, null
  br i1 %1019, label %1030, label %1020

; <label>:1020:                                   ; preds = %1018
  %1021 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1012, i64 0, i32 5
  %1022 = load i8, i8* %1021, align 8
  %1023 = and i8 %1022, 1
  %1024 = icmp eq i8 %1023, 0
  br i1 %1024, label %1025, label %1030

; <label>:1025:                                   ; preds = %1020
  %1026 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1011, i64 0, i32 5
  %1027 = load i8, i8* %1026, align 8
  %1028 = and i8 %1027, 1
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1030, label %1049

; <label>:1030:                                   ; preds = %1025, %1020, %1018
  %1031 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1011, i64 0, i32 1
  %1032 = load i8*, i8** %1031, align 8
  %1033 = call i64 @strlen(i8* %1032) #14
  %1034 = icmp ugt i64 %1013, %1033
  %1035 = icmp ugt i64 %1033, %1005
  %1036 = or i1 %1034, %1035
  br i1 %1036, label %1049, label %1037

; <label>:1037:                                   ; preds = %1030
  %1038 = icmp eq i64 %1033, 1
  br i1 %1038, label %1048, label %1039

; <label>:1039:                                   ; preds = %1037
  %1040 = icmp eq i64 %1033, %1005
  br i1 %1040, label %1045, label %1041

; <label>:1041:                                   ; preds = %1039
  %1042 = getelementptr inbounds i8, i8* %999, i64 %1033
  %1043 = load i8, i8* %1042, align 1
  %1044 = icmp eq i8 %1043, 47
  br i1 %1044, label %1045, label %1049

; <label>:1045:                                   ; preds = %1041, %1039
  %1046 = call i32 @strncmp(i8* %1032, i8* nonnull %999, i64 %1033) #14
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1049

; <label>:1048:                                   ; preds = %1045, %1037
  br label %1049

; <label>:1049:                                   ; preds = %1048, %1045, %1041, %1030, %1025, %1010
  %1050 = phi i64 [ %1013, %1010 ], [ %1013, %1025 ], [ %1033, %1048 ], [ %1013, %1045 ], [ %1013, %1041 ], [ %1013, %1030 ]
  %1051 = phi %struct.mount_entry* [ %1012, %1010 ], [ %1012, %1025 ], [ %1011, %1048 ], [ %1012, %1045 ], [ %1012, %1041 ], [ %1012, %1030 ]
  %1052 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1011, i64 0, i32 6
  %1053 = load %struct.mount_entry*, %struct.mount_entry** %1052, align 8
  %1054 = icmp eq %struct.mount_entry* %1053, null
  br i1 %1054, label %1056, label %1010

; <label>:1055:                                   ; preds = %1001, %998
  call void @free(i8* %999) #12
  br label %1068

; <label>:1056:                                   ; preds = %1049
  call void @free(i8* %999) #12
  %1057 = icmp eq %struct.mount_entry* %1051, null
  br i1 %1057, label %1068, label %1058

; <label>:1058:                                   ; preds = %1056
  %1059 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1051, i64 0, i32 1
  %1060 = load i8*, i8** %1059, align 8
  %1061 = call i32 @__xstat(i32 1, i8* nonnull %1060, %struct.stat* nonnull %6) #12
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1063, label %1068

; <label>:1063:                                   ; preds = %1058
  %1064 = load i64, i64* %847, align 8
  %1065 = getelementptr inbounds %struct.stat, %struct.stat* %860, i64 0, i32 0
  %1066 = load i64, i64* %1065, align 8
  %1067 = icmp eq i64 %1064, %1066
  br i1 %1067, label %1133, label %1068

; <label>:1068:                                   ; preds = %1063, %1058, %1056, %1055, %1009
  %1069 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %1070 = icmp eq %struct.mount_entry* %1069, null
  br i1 %1070, label %1147, label %1071

; <label>:1071:                                   ; preds = %1068
  %1072 = getelementptr inbounds %struct.stat, %struct.stat* %860, i64 0, i32 0
  br label %1073

; <label>:1073:                                   ; preds = %1126, %1071
  %1074 = phi %struct.mount_entry* [ %1069, %1071 ], [ %1129, %1126 ]
  %1075 = phi %struct.mount_entry* [ null, %1071 ], [ %1127, %1126 ]
  %1076 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 4
  %1077 = load i64, i64* %1076, align 8
  %1078 = icmp eq i64 %1077, -1
  br i1 %1078, label %1079, label %1095

; <label>:1079:                                   ; preds = %1073
  %1080 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 1
  %1081 = load i8*, i8** %1080, align 8
  %1082 = call i32 @__xstat(i32 1, i8* nonnull %1081, %struct.stat* nonnull %6) #12
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1086

; <label>:1084:                                   ; preds = %1079
  %1085 = load i64, i64* %847, align 8
  br label %1093

; <label>:1086:                                   ; preds = %1079
  %1087 = tail call i32* @__errno_location() #1
  %1088 = load i32, i32* %1087, align 4
  %1089 = icmp eq i32 %1088, 5
  br i1 %1089, label %1090, label %1093

; <label>:1090:                                   ; preds = %1086
  %1091 = load i8*, i8** %1080, align 8
  %1092 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1091) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %1092) #12
  store i1 true, i1* @exit_status, align 4
  br label %1093

; <label>:1093:                                   ; preds = %1090, %1086, %1084
  %1094 = phi i64 [ %1085, %1084 ], [ -2, %1090 ], [ -2, %1086 ]
  store i64 %1094, i64* %1076, align 8
  br label %1095

; <label>:1095:                                   ; preds = %1093, %1073
  %1096 = phi i64 [ %1094, %1093 ], [ %1077, %1073 ]
  %1097 = load i64, i64* %1072, align 8
  %1098 = icmp eq i64 %1097, %1096
  br i1 %1098, label %1099, label %1126

; <label>:1099:                                   ; preds = %1095
  %1100 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 3
  %1101 = load i8*, i8** %1100, align 8
  %1102 = call i32 @strcmp(i8* %1101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0)) #12
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1126, label %1104

; <label>:1104:                                   ; preds = %1099
  %1105 = icmp eq %struct.mount_entry* %1075, null
  br i1 %1105, label %1116, label %1106

; <label>:1106:                                   ; preds = %1104
  %1107 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1075, i64 0, i32 5
  %1108 = load i8, i8* %1107, align 8
  %1109 = and i8 %1108, 1
  %1110 = icmp eq i8 %1109, 0
  br i1 %1110, label %1111, label %1116

; <label>:1111:                                   ; preds = %1106
  %1112 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 5
  %1113 = load i8, i8* %1112, align 8
  %1114 = and i8 %1113, 1
  %1115 = icmp eq i8 %1114, 0
  br i1 %1115, label %1116, label %1126

; <label>:1116:                                   ; preds = %1111, %1106, %1104
  %1117 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 1
  %1118 = load i8*, i8** %1117, align 8
  %1119 = call i32 @__xstat(i32 1, i8* nonnull %1118, %struct.stat* nonnull %6) #12
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1125

; <label>:1121:                                   ; preds = %1116
  %1122 = load i64, i64* %847, align 8
  %1123 = load i64, i64* %1076, align 8
  %1124 = icmp eq i64 %1122, %1123
  br i1 %1124, label %1126, label %1125

; <label>:1125:                                   ; preds = %1121, %1116
  store i64 -2, i64* %1076, align 8
  br label %1126

; <label>:1126:                                   ; preds = %1125, %1121, %1111, %1099, %1095
  %1127 = phi %struct.mount_entry* [ %1075, %1099 ], [ %1075, %1125 ], [ %1075, %1111 ], [ %1075, %1095 ], [ %1074, %1121 ]
  %1128 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1074, i64 0, i32 6
  %1129 = load %struct.mount_entry*, %struct.mount_entry** %1128, align 8
  %1130 = icmp eq %struct.mount_entry* %1129, null
  br i1 %1130, label %1131, label %1073

; <label>:1131:                                   ; preds = %1126
  %1132 = icmp eq %struct.mount_entry* %1127, null
  br i1 %1132, label %1147, label %1133

; <label>:1133:                                   ; preds = %1131, %1063
  %1134 = phi %struct.mount_entry* [ %1127, %1131 ], [ %1051, %1063 ]
  %1135 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1134, i64 0, i32 0
  %1136 = load i8*, i8** %1135, align 8
  %1137 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1134, i64 0, i32 1
  %1138 = load i8*, i8** %1137, align 8
  %1139 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1134, i64 0, i32 3
  %1140 = load i8*, i8** %1139, align 8
  %1141 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1134, i64 0, i32 5
  %1142 = load i8, i8* %1141, align 8
  %1143 = and i8 %1142, 1
  %1144 = icmp ne i8 %1143, 0
  %1145 = and i8 %1142, 2
  %1146 = icmp ne i8 %1145, 0
  call fastcc void @get_dev(i8* %1136, i8* %1138, i8* nonnull %853, i8* nonnull %853, i8* %1140, i1 zeroext %1144, i1 zeroext %1146, %struct.fs_usage* null, i1 zeroext false) #12
  br label %1151

; <label>:1147:                                   ; preds = %1131, %1068
  %1148 = call i8* @find_mount_point(i8* nonnull %853, %struct.stat* %860) #12
  %1149 = icmp eq i8* %1148, null
  br i1 %1149, label %1151, label %1150

; <label>:1150:                                   ; preds = %1147
  call fastcc void @get_dev(i8* null, i8* nonnull %1148, i8* nonnull %853, i8* null, i8* null, i1 zeroext false, i1 zeroext false, %struct.fs_usage* null, i1 zeroext false) #12
  call void @free(i8* nonnull %1148) #12
  br label %1151

; <label>:1151:                                   ; preds = %1150, %1147, %1133
  call void @llvm.lifetime.end(i64 144, i8* nonnull %846) #12
  br label %1152

; <label>:1152:                                   ; preds = %1151, %995, %978, %850
  %1153 = add nsw i64 %851, 1
  %1154 = trunc i64 %1153 to i32
  %1155 = icmp eq i32 %1154, %0
  br i1 %1155, label %1342, label %850

; <label>:1156:                                   ; preds = %842
  %1157 = load i1, i1* @show_all_fs, align 1
  %1158 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %1159 = icmp eq %struct.mount_entry* %1158, null
  br i1 %1159, label %1170, label %1160

; <label>:1160:                                   ; preds = %1156
  br label %1161

; <label>:1161:                                   ; preds = %1160, %1161
  %1162 = phi %struct.mount_entry* [ %1166, %1161 ], [ %1158, %1160 ]
  %1163 = phi i32 [ %1164, %1161 ], [ 0, %1160 ]
  %1164 = add nuw nsw i32 %1163, 1
  %1165 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1162, i64 0, i32 6
  %1166 = load %struct.mount_entry*, %struct.mount_entry** %1165, align 8
  %1167 = icmp eq %struct.mount_entry* %1166, null
  br i1 %1167, label %1168, label %1161

; <label>:1168:                                   ; preds = %1161
  %1169 = sext i32 %1164 to i64
  br label %1170

; <label>:1170:                                   ; preds = %1168, %1156
  %1171 = phi i64 [ 0, %1156 ], [ %1169, %1168 ]
  %1172 = call %struct.hash_table* @hash_initialize(i64 %1171, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @devlist_hash, i1 (i8*, i8*)* nonnull @devlist_compare, void (i8*)* nonnull @devlist_free) #12
  store %struct.hash_table* %1172, %struct.hash_table** @devlist_table, align 8
  %1173 = icmp eq %struct.hash_table* %1172, null
  br i1 %1173, label %1174, label %1175

; <label>:1174:                                   ; preds = %1170
  call void @xalloc_die() #15
  unreachable

; <label>:1175:                                   ; preds = %1170
  %1176 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %1177 = icmp eq %struct.mount_entry* %1176, null
  br i1 %1177, label %1302, label %1178

; <label>:1178:                                   ; preds = %1175
  %1179 = bitcast %struct.stat* %5 to i8*
  %1180 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %1181 = bitcast %struct.devlist* %4 to i8*
  %1182 = getelementptr inbounds %struct.devlist, %struct.devlist* %4, i64 0, i32 0
  br label %1183

; <label>:1183:                                   ; preds = %1297, %1178
  %1184 = phi %struct.mount_entry* [ %1176, %1178 ], [ %1299, %1297 ]
  %1185 = phi %struct.devlist* [ null, %1178 ], [ %1298, %1297 ]
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1179) #12
  %1186 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 5
  %1187 = load i8, i8* %1186, align 8
  %1188 = and i8 %1187, 2
  %1189 = icmp eq i8 %1188, 0
  br i1 %1189, label %1192, label %1190

; <label>:1190:                                   ; preds = %1183
  %1191 = load i1, i1* @show_local_fs, align 1
  br i1 %1191, label %1197, label %1192

; <label>:1192:                                   ; preds = %1190, %1183
  %1193 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 1
  %1194 = load i8*, i8** %1193, align 8
  %1195 = call i32 @__xstat(i32 1, i8* nonnull %1194, %struct.stat* nonnull %5) #12
  %1196 = icmp eq i32 %1195, -1
  br i1 %1196, label %1197, label %1200

; <label>:1197:                                   ; preds = %1192, %1190
  %1198 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 4
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %1180, align 8
  br label %1281

; <label>:1200:                                   ; preds = %1192
  %1201 = load %struct.hash_table*, %struct.hash_table** @devlist_table, align 8
  %1202 = icmp eq %struct.hash_table* %1201, null
  br i1 %1202, label %1281, label %1203

; <label>:1203:                                   ; preds = %1200
  %1204 = load i64, i64* %1180, align 8
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1181) #12
  store i64 %1204, i64* %1182, align 8
  %1205 = call i8* @hash_lookup(%struct.hash_table* nonnull %1201, i8* nonnull %1181) #12
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1181) #12
  %1206 = icmp eq i8* %1205, null
  br i1 %1206, label %1281, label %1207

; <label>:1207:                                   ; preds = %1203
  %1208 = getelementptr inbounds i8, i8* %1205, i64 8
  %1209 = bitcast i8* %1208 to %struct.mount_entry**
  %1210 = load %struct.mount_entry*, %struct.mount_entry** %1209, align 8
  %1211 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 1
  %1212 = load i8*, i8** %1211, align 8
  %1213 = call i64 @strlen(i8* %1212) #14
  %1214 = load i8*, i8** %1193, align 8
  %1215 = call i64 @strlen(i8* %1214) #14
  %1216 = icmp ugt i64 %1213, %1215
  %1217 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 2
  %1218 = load i8*, i8** %1217, align 8
  %1219 = icmp eq i8* %1218, null
  br i1 %1219, label %1228, label %1220

; <label>:1220:                                   ; preds = %1207
  %1221 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 2
  %1222 = load i8*, i8** %1221, align 8
  %1223 = icmp eq i8* %1222, null
  br i1 %1223, label %1228, label %1224

; <label>:1224:                                   ; preds = %1220
  %1225 = call i64 @strlen(i8* nonnull %1218) #14
  %1226 = call i64 @strlen(i8* nonnull %1222) #14
  %1227 = icmp ult i64 %1225, %1226
  br label %1228

; <label>:1228:                                   ; preds = %1224, %1220, %1207
  %1229 = phi i1 [ false, %1220 ], [ false, %1207 ], [ %1227, %1224 ]
  %1230 = load i1, i1* @print_grand_total, align 1
  br i1 %1230, label %1247, label %1231

; <label>:1231:                                   ; preds = %1228
  %1232 = load i8, i8* %1186, align 8
  %1233 = and i8 %1232, 2
  %1234 = icmp eq i8 %1233, 0
  br i1 %1234, label %1247, label %1235

; <label>:1235:                                   ; preds = %1231
  %1236 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 5
  %1237 = load i8, i8* %1236, align 8
  %1238 = and i8 %1237, 2
  %1239 = icmp eq i8 %1238, 0
  br i1 %1239, label %1247, label %1240

; <label>:1240:                                   ; preds = %1235
  %1241 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 0
  %1242 = load i8*, i8** %1241, align 8
  %1243 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 0
  %1244 = load i8*, i8** %1243, align 8
  %1245 = call i32 @strcmp(i8* %1242, i8* %1244) #12
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1247, label %1281

; <label>:1247:                                   ; preds = %1240, %1235, %1231, %1228
  %1248 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 0
  %1249 = load i8*, i8** %1248, align 8
  %1250 = call i8* @strchr(i8* %1249, i32 47) #12
  %1251 = icmp eq i8* %1250, null
  br i1 %1251, label %1260, label %1252

; <label>:1252:                                   ; preds = %1247
  %1253 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 0
  %1254 = load i8*, i8** %1253, align 8
  %1255 = call i8* @strchr(i8* %1254, i32 47) #12
  %1256 = icmp ne i8* %1255, null
  %1257 = xor i1 %1216, true
  %1258 = or i1 %1229, %1257
  %1259 = and i1 %1258, %1256
  br i1 %1259, label %1266, label %1273

; <label>:1260:                                   ; preds = %1247
  %1261 = xor i1 %1216, true
  %1262 = or i1 %1229, %1261
  br i1 %1262, label %1263, label %1274

; <label>:1263:                                   ; preds = %1260
  %1264 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1210, i64 0, i32 0
  %1265 = load i8*, i8** %1264, align 8
  br label %1266

; <label>:1266:                                   ; preds = %1263, %1252
  %1267 = phi i8* [ %1265, %1263 ], [ %1254, %1252 ]
  %1268 = call i32 @strcmp(i8* %1267, i8* %1249) #12
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1276, label %1270

; <label>:1270:                                   ; preds = %1266
  %1271 = call i32 @strcmp(i8* %1214, i8* %1212) #12
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1273, label %1276

; <label>:1273:                                   ; preds = %1270, %1252
  store %struct.mount_entry* %1184, %struct.mount_entry** %1209, align 8
  br label %1276

; <label>:1274:                                   ; preds = %1260
  store %struct.mount_entry* %1184, %struct.mount_entry** %1209, align 8
  %1275 = icmp eq %struct.mount_entry* %1210, null
  br i1 %1275, label %1281, label %1276

; <label>:1276:                                   ; preds = %1274, %1273, %1270, %1266
  %1277 = phi %struct.mount_entry* [ %1210, %1274 ], [ %1184, %1270 ], [ %1184, %1266 ], [ %1210, %1273 ]
  %1278 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 6
  %1279 = load %struct.mount_entry*, %struct.mount_entry** %1278, align 8
  br i1 %1157, label %1297, label %1280

; <label>:1280:                                   ; preds = %1276
  call void @free_mount_entry(%struct.mount_entry* nonnull %1277) #12
  br label %1297

; <label>:1281:                                   ; preds = %1274, %1240, %1203, %1200, %1197
  %1282 = call noalias i8* @xmalloc(i64 24) #12
  %1283 = getelementptr inbounds i8, i8* %1282, i64 8
  %1284 = bitcast i8* %1283 to %struct.mount_entry**
  store %struct.mount_entry* %1184, %struct.mount_entry** %1284, align 8
  %1285 = load i64, i64* %1180, align 8
  %1286 = bitcast i8* %1282 to i64*
  store i64 %1285, i64* %1286, align 8
  %1287 = getelementptr inbounds i8, i8* %1282, i64 16
  %1288 = bitcast i8* %1287 to %struct.devlist**
  store %struct.devlist* %1185, %struct.devlist** %1288, align 8
  %1289 = load %struct.hash_table*, %struct.hash_table** @devlist_table, align 8
  %1290 = call i8* @hash_insert(%struct.hash_table* %1289, i8* %1282) #12
  %1291 = icmp eq i8* %1290, null
  br i1 %1291, label %1292, label %1293

; <label>:1292:                                   ; preds = %1281
  call void @xalloc_die() #15
  unreachable

; <label>:1293:                                   ; preds = %1281
  %1294 = bitcast i8* %1282 to %struct.devlist*
  %1295 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1184, i64 0, i32 6
  %1296 = load %struct.mount_entry*, %struct.mount_entry** %1295, align 8
  br label %1297

; <label>:1297:                                   ; preds = %1293, %1280, %1276
  %1298 = phi %struct.devlist* [ %1185, %1276 ], [ %1185, %1280 ], [ %1294, %1293 ]
  %1299 = phi %struct.mount_entry* [ %1279, %1276 ], [ %1279, %1280 ], [ %1296, %1293 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1179) #12
  %1300 = icmp eq %struct.mount_entry* %1299, null
  br i1 %1300, label %1301, label %1183

; <label>:1301:                                   ; preds = %1297
  br label %1302

; <label>:1302:                                   ; preds = %1301, %1175
  %1303 = phi %struct.devlist* [ null, %1175 ], [ %1298, %1301 ]
  br i1 %1157, label %1321, label %1304

; <label>:1304:                                   ; preds = %1302
  store %struct.mount_entry* null, %struct.mount_entry** @mount_list, align 8
  %1305 = icmp eq %struct.devlist* %1303, null
  br i1 %1305, label %1319, label %1306

; <label>:1306:                                   ; preds = %1304
  br label %1307

; <label>:1307:                                   ; preds = %1306, %1307
  %1308 = phi i64 [ %1317, %1307 ], [ 0, %1306 ]
  %1309 = phi %struct.devlist* [ %1315, %1307 ], [ %1303, %1306 ]
  %1310 = getelementptr inbounds %struct.devlist, %struct.devlist* %1309, i64 0, i32 1
  %1311 = load %struct.mount_entry*, %struct.mount_entry** %1310, align 8
  %1312 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1311, i64 0, i32 6
  %1313 = bitcast %struct.mount_entry** %1312 to i64*
  store i64 %1308, i64* %1313, align 8
  %1314 = getelementptr inbounds %struct.devlist, %struct.devlist* %1309, i64 0, i32 2
  %1315 = load %struct.devlist*, %struct.devlist** %1314, align 8
  %1316 = icmp eq %struct.devlist* %1315, null
  %1317 = ptrtoint %struct.mount_entry* %1311 to i64
  br i1 %1316, label %1318, label %1307

; <label>:1318:                                   ; preds = %1307
  store %struct.mount_entry* %1311, %struct.mount_entry** @mount_list, align 8
  br label %1319

; <label>:1319:                                   ; preds = %1318, %1304
  %1320 = load %struct.hash_table*, %struct.hash_table** @devlist_table, align 8
  call void @hash_free(%struct.hash_table* %1320) #12
  store %struct.hash_table* null, %struct.hash_table** @devlist_table, align 8
  br label %1321

; <label>:1321:                                   ; preds = %1319, %1302
  %1322 = load %struct.mount_entry*, %struct.mount_entry** @mount_list, align 8
  %1323 = icmp eq %struct.mount_entry* %1322, null
  br i1 %1323, label %1344, label %1324

; <label>:1324:                                   ; preds = %1321
  br label %1325

; <label>:1325:                                   ; preds = %1324, %1325
  %1326 = phi %struct.mount_entry* [ %1340, %1325 ], [ %1322, %1324 ]
  %1327 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1326, i64 0, i32 0
  %1328 = load i8*, i8** %1327, align 8
  %1329 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1326, i64 0, i32 1
  %1330 = load i8*, i8** %1329, align 8
  %1331 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1326, i64 0, i32 3
  %1332 = load i8*, i8** %1331, align 8
  %1333 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1326, i64 0, i32 5
  %1334 = load i8, i8* %1333, align 8
  %1335 = and i8 %1334, 1
  %1336 = icmp ne i8 %1335, 0
  %1337 = and i8 %1334, 2
  %1338 = icmp ne i8 %1337, 0
  call fastcc void @get_dev(i8* %1328, i8* %1330, i8* null, i8* null, i8* %1332, i1 zeroext %1336, i1 zeroext %1338, %struct.fs_usage* null, i1 zeroext true) #12
  %1339 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %1326, i64 0, i32 6
  %1340 = load %struct.mount_entry*, %struct.mount_entry** %1339, align 8
  %1341 = icmp eq %struct.mount_entry* %1340, null
  br i1 %1341, label %1343, label %1325

; <label>:1342:                                   ; preds = %1152
  br label %1344

; <label>:1343:                                   ; preds = %1325
  br label %1344

; <label>:1344:                                   ; preds = %1343, %1342, %1321
  %1345 = load i1, i1* @file_systems_processed, align 1
  br i1 %1345, label %1346, label %1426

; <label>:1346:                                   ; preds = %1344
  %1347 = load i1, i1* @print_grand_total, align 1
  br i1 %1347, label %1348, label %1352

; <label>:1348:                                   ; preds = %1346
  %1349 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 6), align 4
  %1350 = icmp ne i8 %1349, 0
  %1351 = select i1 %1350, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)
  call fastcc void @get_dev(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %1351, i8* null, i8* null, i8* null, i1 zeroext false, i1 zeroext false, %struct.fs_usage* nonnull @grand_fsu, i1 zeroext false)
  br label %1352

; <label>:1352:                                   ; preds = %1348, %1346
  %1353 = load i64, i64* @nrows, align 8
  %1354 = icmp eq i64 %1353, 0
  br i1 %1354, label %1431, label %1355

; <label>:1355:                                   ; preds = %1352
  %1356 = bitcast i64* %3 to i8*
  br label %1357

; <label>:1357:                                   ; preds = %1422, %1355
  %1358 = phi i64 [ 0, %1355 ], [ %1423, %1422 ]
  %1359 = load i64, i64* @ncolumns, align 8
  %1360 = icmp eq i64 %1359, 0
  br i1 %1360, label %1411, label %1361

; <label>:1361:                                   ; preds = %1357
  br label %1362

; <label>:1362:                                   ; preds = %1361, %1403
  %1363 = phi i64 [ %1408, %1403 ], [ %1359, %1361 ]
  %1364 = phi i64 [ %1407, %1403 ], [ 0, %1361 ]
  %1365 = load i8***, i8**** @table, align 8
  %1366 = getelementptr inbounds i8**, i8*** %1365, i64 %1358
  %1367 = load i8**, i8*** %1366, align 8
  %1368 = getelementptr inbounds i8*, i8** %1367, i64 %1364
  %1369 = load i8*, i8** %1368, align 8
  %1370 = icmp eq i64 %1364, 0
  br i1 %1370, label %1383, label %1371

; <label>:1371:                                   ; preds = %1362
  %1372 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1373 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1372, i64 0, i32 5
  %1374 = load i8*, i8** %1373, align 8
  %1375 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1372, i64 0, i32 6
  %1376 = load i8*, i8** %1375, align 8
  %1377 = icmp ult i8* %1374, %1376
  br i1 %1377, label %1381, label %1378

; <label>:1378:                                   ; preds = %1371
  %1379 = call i32 @__overflow(%struct._IO_FILE* %1372, i32 32) #12
  %1380 = load i64, i64* @ncolumns, align 8
  br label %1383

; <label>:1381:                                   ; preds = %1371
  %1382 = getelementptr inbounds i8, i8* %1374, i64 1
  store i8* %1382, i8** %1373, align 8
  store i8 32, i8* %1374, align 1
  br label %1383

; <label>:1383:                                   ; preds = %1381, %1378, %1362
  %1384 = phi i64 [ %1363, %1381 ], [ %1380, %1378 ], [ %1363, %1362 ]
  %1385 = add i64 %1384, -1
  %1386 = icmp eq i64 %1364, %1385
  %1387 = select i1 %1386, i32 8, i32 0
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1356) #12
  %1388 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %1389 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %1388, i64 %1364
  %1390 = load %struct.field_data_t*, %struct.field_data_t** %1389, align 8
  %1391 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %1390, i64 0, i32 4
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %3, align 8
  %1393 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %1390, i64 0, i32 5
  %1394 = load i32, i32* %1393, align 8
  %1395 = call i8* @ambsalign(i8* %1369, i64* nonnull %3, i32 %1394, i32 %1387) #12
  %1396 = icmp eq i8* %1395, null
  br i1 %1396, label %1397, label %1403

; <label>:1397:                                   ; preds = %1383
  %1398 = load i8***, i8**** @table, align 8
  %1399 = getelementptr inbounds i8**, i8*** %1398, i64 %1358
  %1400 = load i8**, i8*** %1399, align 8
  %1401 = getelementptr inbounds i8*, i8** %1400, i64 %1364
  %1402 = load i8*, i8** %1401, align 8
  br label %1403

; <label>:1403:                                   ; preds = %1397, %1383
  %1404 = phi i8* [ %1402, %1397 ], [ %1395, %1383 ]
  %1405 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1406 = call i32 @fputs_unlocked(i8* %1404, %struct._IO_FILE* %1405) #12
  call void @free(i8* %1395) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1356) #12
  %1407 = add i64 %1364, 1
  %1408 = load i64, i64* @ncolumns, align 8
  %1409 = icmp ult i64 %1407, %1408
  br i1 %1409, label %1362, label %1410

; <label>:1410:                                   ; preds = %1403
  br label %1411

; <label>:1411:                                   ; preds = %1410, %1357
  %1412 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1413 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1412, i64 0, i32 5
  %1414 = load i8*, i8** %1413, align 8
  %1415 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1412, i64 0, i32 6
  %1416 = load i8*, i8** %1415, align 8
  %1417 = icmp ult i8* %1414, %1416
  br i1 %1417, label %1420, label %1418

; <label>:1418:                                   ; preds = %1411
  %1419 = call i32 @__overflow(%struct._IO_FILE* %1412, i32 10) #12
  br label %1422

; <label>:1420:                                   ; preds = %1411
  %1421 = getelementptr inbounds i8, i8* %1414, i64 1
  store i8* %1421, i8** %1413, align 8
  store i8 10, i8* %1414, align 1
  br label %1422

; <label>:1422:                                   ; preds = %1420, %1418
  %1423 = add i64 %1358, 1
  %1424 = load i64, i64* @nrows, align 8
  %1425 = icmp ult i64 %1423, %1424
  br i1 %1425, label %1357, label %1430

; <label>:1426:                                   ; preds = %1344
  %1427 = load i1, i1* @exit_status, align 4
  br i1 %1427, label %1431, label %1428

; <label>:1428:                                   ; preds = %1426
  %1429 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %1429) #12
  unreachable

; <label>:1430:                                   ; preds = %1422
  br label %1431

; <label>:1431:                                   ; preds = %1430, %1352, %1426
  %1432 = load i1, i1* @exit_status, align 4
  %1433 = zext i1 %1432 to i32
  br label %1434

; <label>:1434:                                   ; preds = %146, %1431
  %1435 = phi i32 [ %1433, %1431 ], [ %150, %146 ]
  ret i32 %1435
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @decode_output_arg(i8*) unnamed_addr #6 {
  %2 = tail call noalias i8* @xstrdup(i8* %0) #12
  br label %3

; <label>:3:                                      ; preds = %83, %1
  %4 = phi i8* [ %2, %1 ], [ %10, %83 ]
  %5 = tail call i8* @strchr(i8* %4, i32 44) #12
  %6 = icmp eq i8* %5, null
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %5, align 1
  br label %9

; <label>:9:                                      ; preds = %3, %7
  %10 = phi i8* [ %8, %7 ], [ null, %3 ]
  %11 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 0, i32 1), align 8
  %12 = tail call i32 @strcmp(i8* %11, i8* %4) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 1, i32 1), align 8
  %16 = tail call i32 @strcmp(i8* %15, i8* %4) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %87

; <label>:18:                                     ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %14, %9
  %19 = phi i32 [ 0, %9 ], [ 1, %14 ], [ 2, %87 ], [ 3, %91 ], [ 4, %95 ], [ 5, %99 ], [ 6, %103 ], [ 7, %107 ], [ 8, %111 ], [ 9, %115 ], [ 10, %119 ], [ 11, %123 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 %20, i32 6
  %22 = load i8, i8* %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %18
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i64 0, i64 0), i32 5) #12
  %26 = getelementptr inbounds [12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 %20, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = tail call i8* @quote(i8* %27) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %25, i8* %28) #12
  tail call void @usage(i32 1) #16
  unreachable

; <label>:29:                                     ; preds = %18
  %30 = trunc i32 %19 to i4
  switch i4 %30, label %82 [
    i4 0, label %31
    i4 1, label %31
    i4 3, label %31
    i4 5, label %31
    i4 6, label %31
    i4 7, label %31
    i4 -8, label %31
    i4 -7, label %31
    i4 -6, label %31
    i4 -5, label %31
    i4 2, label %50
    i4 4, label %66
  ]

; <label>:31:                                     ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %32 = load i64, i64* @ncolumns, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @ncolumns, align 8
  %34 = icmp ugt i64 %33, 1152921504606846975
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  tail call void @xalloc_die() #15
  unreachable

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %38 = shl i64 %33, 3
  %39 = tail call i8* @xrealloc(i8* %37, i64 %38) #12
  %40 = bitcast i8* %39 to %struct.field_data_t**
  store i8* %39, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %41 = zext i32 %19 to i64
  %42 = getelementptr inbounds [12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 %41
  %43 = load i64, i64* @ncolumns, align 8
  %44 = add i64 %43, -1
  %45 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %40, i64 %44
  store %struct.field_data_t* %42, %struct.field_data_t** %45, align 8
  %46 = getelementptr inbounds [12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 %41, i32 6
  %47 = load i8, i8* %46, align 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %83, label %49

; <label>:49:                                     ; preds = %36
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:50:                                     ; preds = %29
  %51 = load i64, i64* @ncolumns, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* @ncolumns, align 8
  %53 = icmp ugt i64 %52, 1152921504606846975
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %50
  tail call void @xalloc_die() #15
  unreachable

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %57 = shl i64 %52, 3
  %58 = tail call i8* @xrealloc(i8* %56, i64 %57) #12
  %59 = bitcast i8* %58 to %struct.field_data_t**
  store i8* %58, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %60 = load i64, i64* @ncolumns, align 8
  %61 = add i64 %60, -1
  %62 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %59, i64 %61
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2), %struct.field_data_t** %62, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 3), align 8
  %63 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %65

; <label>:65:                                     ; preds = %55
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:66:                                     ; preds = %29
  %67 = load i64, i64* @ncolumns, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* @ncolumns, align 8
  %69 = icmp ugt i64 %68, 1152921504606846975
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %66
  tail call void @xalloc_die() #15
  unreachable

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %73 = shl i64 %68, 3
  %74 = tail call i8* @xrealloc(i8* %72, i64 %73) #12
  %75 = bitcast i8* %74 to %struct.field_data_t**
  store i8* %74, i8** bitcast (%struct.field_data_t*** @columns to i8**), align 8
  %76 = load i64, i64* @ncolumns, align 8
  %77 = add i64 %76, -1
  %78 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %75, i64 %77
  store %struct.field_data_t* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4), %struct.field_data_t** %78, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 3), align 8
  %79 = load i8, i8* getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %71
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.alloc_field, i64 0, i64 0)) #15
  unreachable

; <label>:82:                                     ; preds = %29
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 427, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.decode_output_arg, i64 0, i64 0)) #15
  unreachable

; <label>:83:                                     ; preds = %36, %71, %55
  %84 = phi i8* [ getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 6), %55 ], [ getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 6), %71 ], [ %46, %36 ]
  store i8 1, i8* %84, align 4
  %85 = icmp eq i8* %10, null
  br i1 %85, label %86, label %3

; <label>:86:                                     ; preds = %83
  tail call void @free(i8* %2) #12
  ret void

; <label>:87:                                     ; preds = %14
  %88 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 2, i32 1), align 8
  %89 = tail call i32 @strcmp(i8* %88, i8* %4) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %18, label %91

; <label>:91:                                     ; preds = %87
  %92 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 3, i32 1), align 8
  %93 = tail call i32 @strcmp(i8* %92, i8* %4) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %18, label %95

; <label>:95:                                     ; preds = %91
  %96 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 4, i32 1), align 8
  %97 = tail call i32 @strcmp(i8* %96, i8* %4) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %18, label %99

; <label>:99:                                     ; preds = %95
  %100 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 5, i32 1), align 8
  %101 = tail call i32 @strcmp(i8* %100, i8* %4) #12
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %18, label %103

; <label>:103:                                    ; preds = %99
  %104 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 6, i32 1), align 8
  %105 = tail call i32 @strcmp(i8* %104, i8* %4) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %18, label %107

; <label>:107:                                    ; preds = %103
  %108 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 7, i32 1), align 8
  %109 = tail call i32 @strcmp(i8* %108, i8* %4) #12
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %18, label %111

; <label>:111:                                    ; preds = %107
  %112 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 8, i32 1), align 8
  %113 = tail call i32 @strcmp(i8* %112, i8* %4) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %18, label %115

; <label>:115:                                    ; preds = %111
  %116 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 9, i32 1), align 8
  %117 = tail call i32 @strcmp(i8* %116, i8* %4) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %18, label %119

; <label>:119:                                    ; preds = %115
  %120 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 10, i32 1), align 8
  %121 = tail call i32 @strcmp(i8* %120, i8* %4) #12
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %18, label %123

; <label>:123:                                    ; preds = %119
  %124 = load i8*, i8** getelementptr inbounds ([12 x %struct.field_data_t], [12 x %struct.field_data_t]* @field_data, i64 0, i64 11, i32 1), align 8
  %125 = tail call i32 @strcmp(i8* %124, i8* %4) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %18, label %127

; <label>:127:                                    ; preds = %123
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.69, i64 0, i64 0), i32 5) #12
  %129 = tail call i8* @quote(i8* %4) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %128, i8* %129) #12
  tail call void @usage(i32 1) #16
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @sync() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__asprintf_chk(i8**, i32, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @__strdup(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @get_dev(i8*, i8*, i8*, i8*, i8*, i1 zeroext, i1 zeroext, %struct.fs_usage* readonly, i1 zeroext) unnamed_addr #6 {
  %10 = alloca %struct.devlist, align 8
  %11 = alloca %struct.fs_usage, align 8
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.field_values_t, align 8
  %14 = alloca %struct.field_values_t, align 16
  %15 = alloca [653 x i8], align 16
  %16 = alloca i8*, align 8
  br i1 %6, label %17, label %19

; <label>:17:                                     ; preds = %9
  %18 = load i1, i1* @show_local_fs, align 1
  br i1 %18, label %542, label %19

; <label>:19:                                     ; preds = %17, %9
  br i1 %5, label %20, label %24

; <label>:20:                                     ; preds = %19
  %21 = load i1, i1* @show_all_fs, align 1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %20
  %23 = load i1, i1* @show_listed_fs, align 1
  br i1 %23, label %24, label %542

; <label>:24:                                     ; preds = %22, %20, %19
  %25 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_select_list, align 8
  %26 = icmp eq %struct.fs_type_list* %25, null
  %27 = icmp eq i8* %4, null
  %28 = or i1 %27, %26
  br i1 %28, label %41, label %29

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %36
  %31 = phi %struct.fs_type_list* [ %38, %36 ], [ %25, %29 ]
  %32 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = tail call i32 @strcmp(i8* %4, i8* %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %31, i64 0, i32 1
  %38 = load %struct.fs_type_list*, %struct.fs_type_list** %37, align 8
  %39 = icmp eq %struct.fs_type_list* %38, null
  br i1 %39, label %541, label %30

; <label>:40:                                     ; preds = %30
  br label %41

; <label>:41:                                     ; preds = %40, %24
  %42 = load %struct.fs_type_list*, %struct.fs_type_list** @fs_exclude_list, align 8
  %43 = icmp eq %struct.fs_type_list* %42, null
  %44 = or i1 %27, %43
  br i1 %44, label %57, label %45

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %45, %52
  %47 = phi %struct.fs_type_list* [ %54, %52 ], [ %42, %45 ]
  %48 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %47, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = tail call i32 @strcmp(i8* %4, i8* %49) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %540, label %52

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.fs_type_list, %struct.fs_type_list* %47, i64 0, i32 1
  %54 = load %struct.fs_type_list*, %struct.fs_type_list** %53, align 8
  %55 = icmp eq %struct.fs_type_list* %54, null
  br i1 %55, label %56, label %46

; <label>:56:                                     ; preds = %52
  br label %57

; <label>:57:                                     ; preds = %56, %41
  %58 = icmp eq %struct.fs_usage* %7, null
  %59 = icmp ne i8* %1, null
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %57
  %62 = load i8, i8* %1, align 1
  %63 = icmp eq i8 %62, 47
  br i1 %63, label %64, label %542

; <label>:64:                                     ; preds = %61
  %65 = icmp eq i8* %3, null
  %66 = select i1 %65, i8* %1, i8* %3
  %67 = bitcast %struct.fs_usage* %11 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %67) #12
  br label %75

; <label>:68:                                     ; preds = %57
  %69 = icmp eq i8* %3, null
  %70 = select i1 %59, i8* %1, i8* %0
  %71 = select i1 %69, i8* %70, i8* %3
  %72 = bitcast %struct.fs_usage* %11 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %72) #12
  br i1 %58, label %75, label %73

; <label>:73:                                     ; preds = %68
  %74 = bitcast %struct.fs_usage* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %72, i8* %74, i64 56, i32 8, i1 false)
  br label %135

; <label>:75:                                     ; preds = %68, %64
  %76 = phi i8* [ %67, %64 ], [ %72, %68 ]
  %77 = phi i8* [ %66, %64 ], [ %71, %68 ]
  %78 = call i32 @get_fs_usage(i8* %77, i8* %0, %struct.fs_usage* nonnull %11) #12
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

; <label>:80:                                     ; preds = %75
  %81 = tail call i32* @__errno_location() #1
  br i1 %8, label %82, label %91

; <label>:82:                                     ; preds = %80
  %83 = load i32, i32* %81, align 4
  switch i32 %83, label %91 [
    i32 13, label %84
    i32 2, label %84
  ]

; <label>:84:                                     ; preds = %82, %82
  %85 = load i1, i1* @show_all_fs, align 1
  br i1 %85, label %86, label %538

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 4
  store i8 0, i8* %87, align 8
  %88 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 5
  %89 = bitcast %struct.fs_usage* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %89, i8 -1, i64 32, i32 8, i1 false)
  %90 = bitcast i64* %88 to i8*
  call void @llvm.memset.p0i8.i64(i8* %90, i8 -1, i64 16, i32 8, i1 false)
  br label %135

; <label>:91:                                     ; preds = %80, %82
  %92 = load i32, i32* %81, align 4
  %93 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %77) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* %93) #12
  store i1 true, i1* @exit_status, align 4
  br label %538

; <label>:94:                                     ; preds = %75
  br i1 %8, label %95, label %135

; <label>:95:                                     ; preds = %94
  %96 = load i1, i1* @show_all_fs, align 1
  br i1 %96, label %97, label %135

; <label>:97:                                     ; preds = %95
  %98 = bitcast %struct.stat* %12 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %98) #12
  %99 = call i32 @__xstat(i32 1, i8* nonnull %77, %struct.stat* nonnull %12) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %133

; <label>:101:                                    ; preds = %97
  %102 = load %struct.hash_table*, %struct.hash_table** @devlist_table, align 8
  %103 = icmp eq %struct.hash_table* %102, null
  br i1 %103, label %133, label %104

; <label>:104:                                    ; preds = %101
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = bitcast %struct.devlist* %10 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %107) #12
  %108 = getelementptr inbounds %struct.devlist, %struct.devlist* %10, i64 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = call i8* @hash_lookup(%struct.hash_table* nonnull %102, i8* nonnull %107) #12
  call void @llvm.lifetime.end(i64 24, i8* nonnull %107) #12
  %110 = icmp eq i8* %109, null
  br i1 %110, label %133, label %111

; <label>:111:                                    ; preds = %104
  %112 = getelementptr inbounds i8, i8* %109, i64 8
  %113 = bitcast i8* %112 to %struct.mount_entry**
  %114 = load %struct.mount_entry*, %struct.mount_entry** %113, align 8
  %115 = icmp eq %struct.mount_entry* %114, null
  br i1 %115, label %133, label %116

; <label>:116:                                    ; preds = %111
  %117 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %114, i64 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* %0) #12
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %114, i64 0, i32 5
  %123 = load i8, i8* %122, align 8
  %124 = and i8 %123, 2
  %125 = icmp eq i8 %124, 0
  %126 = xor i1 %6, true
  %127 = or i1 %125, %126
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %121
  %129 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 4
  store i8 0, i8* %129, align 8
  %130 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 5
  %131 = bitcast %struct.fs_usage* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull %131, i8 -1, i64 32, i32 8, i1 false)
  %132 = bitcast i64* %130 to i8*
  call void @llvm.memset.p0i8.i64(i8* %132, i8 -1, i64 16, i32 8, i1 false)
  br label %133

; <label>:133:                                    ; preds = %101, %104, %116, %128, %111, %121, %97
  %134 = phi i8* [ %4, %97 ], [ %4, %116 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %128 ], [ %4, %111 ], [ %4, %121 ], [ %4, %104 ], [ %4, %101 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %98) #12
  br label %135

; <label>:135:                                    ; preds = %86, %133, %95, %94, %73
  %136 = phi i1 [ true, %73 ], [ false, %86 ], [ false, %133 ], [ false, %95 ], [ false, %94 ]
  %137 = phi i8* [ %72, %73 ], [ %76, %86 ], [ %76, %133 ], [ %76, %95 ], [ %76, %94 ]
  %138 = phi i8* [ %4, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %86 ], [ %134, %133 ], [ %4, %95 ], [ %4, %94 ]
  %139 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

; <label>:142:                                    ; preds = %135
  %143 = load i1, i1* @show_all_fs, align 1
  br i1 %143, label %146, label %144

; <label>:144:                                    ; preds = %142
  %145 = load i1, i1* @show_listed_fs, align 1
  br i1 %145, label %146, label %538

; <label>:146:                                    ; preds = %144, %142, %135
  br i1 %136, label %148, label %147

; <label>:147:                                    ; preds = %146
  store i1 true, i1* @file_systems_processed, align 1
  br label %148

; <label>:148:                                    ; preds = %147, %146
  %149 = load i64, i64* @nrows, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* @nrows, align 8
  %151 = icmp ugt i64 %150, 1152921504606846975
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %148
  call void @xalloc_die() #15
  unreachable

; <label>:153:                                    ; preds = %148
  %154 = load i8*, i8** bitcast (i8**** @table to i8**), align 8
  %155 = shl i64 %150, 3
  %156 = call i8* @xrealloc(i8* %154, i64 %155) #12
  store i8* %156, i8** bitcast (i8**** @table to i8**), align 8
  %157 = load i64, i64* @ncolumns, align 8
  %158 = icmp ugt i64 %157, 1152921504606846975
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %153
  call void @xalloc_die() #15
  unreachable

; <label>:160:                                    ; preds = %153
  %161 = shl i64 %157, 3
  %162 = call noalias i8* @xmalloc(i64 %161) #12
  %163 = load i8***, i8**** @table, align 8
  %164 = load i64, i64* @nrows, align 8
  %165 = add i64 %164, -1
  %166 = getelementptr inbounds i8**, i8*** %163, i64 %165
  %167 = bitcast i8*** %166 to i8**
  store i8* %162, i8** %167, align 8
  %168 = icmp eq i8* %0, null
  %169 = select i1 %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %0
  %170 = icmp eq i8* %2, null
  %171 = select i1 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %2
  %172 = call noalias i8* @xstrdup(i8* %169) #12
  br i1 %8, label %173, label %185

; <label>:173:                                    ; preds = %160
  %174 = call i64 @strlen(i8* %172) #14
  %175 = icmp ugt i64 %174, 36
  br i1 %175, label %176, label %185

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %172, i64 %174
  %178 = getelementptr inbounds i8, i8* %177, i64 -36
  %179 = call i64 @strspn(i8* %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.110, i64 0, i64 0)) #12
  %180 = icmp eq i64 %179, 36
  br i1 %180, label %181, label %185

; <label>:181:                                    ; preds = %176
  %182 = call i8* @canonicalize_filename_mode(i8* %172, i32 0) #12
  %183 = icmp eq i8* %182, null
  br i1 %183, label %185, label %184

; <label>:184:                                    ; preds = %181
  call void @free(i8* %172) #12
  br label %185

; <label>:185:                                    ; preds = %173, %181, %184, %176, %160
  %186 = phi i8* [ %182, %184 ], [ %172, %181 ], [ %172, %176 ], [ %172, %160 ], [ %172, %173 ]
  %187 = icmp eq i8* %138, null
  %188 = select i1 %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), i8* %138
  %189 = bitcast %struct.field_values_t* %13 to i8*
  call void @llvm.lifetime.start(i64 64, i8* nonnull %189) #12
  %190 = bitcast %struct.field_values_t* %14 to i8*
  call void @llvm.lifetime.start(i64 64, i8* nonnull %190) #12
  %191 = bitcast %struct.field_values_t* %14 to <2 x i64>*
  store <2 x i64> <i64 1, i64 1>, <2 x i64>* %191, align 16
  %192 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 2
  store i64 %193, i64* %194, align 16
  %195 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 5
  store i64 %196, i64* %197, align 8
  %198 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 4
  store i8 0, i8* %199, align 16
  %200 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 6
  store i64 -1, i64* %200, align 16
  %201 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %14, i64 0, i32 7
  store i8 0, i8* %201, align 8
  %202 = icmp ult i64 %193, -2
  %203 = icmp ult i64 %196, -2
  %204 = and i1 %202, %203
  br i1 %204, label %205, label %209

; <label>:205:                                    ; preds = %185
  %206 = sub i64 %193, %196
  store i64 %206, i64* %200, align 16
  %207 = icmp ult i64 %193, %196
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %201, align 8
  br label %209

; <label>:209:                                    ; preds = %205, %185
  %210 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 0
  store i64 %211, i64* %212, align 8
  %213 = load i64, i64* @output_block_size, align 8
  %214 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 1
  store i64 %213, i64* %214, align 8
  %215 = load i64, i64* %139, align 8
  %216 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 2
  store i64 %215, i64* %216, align 8
  %217 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 3
  store i64 %218, i64* %219, align 8
  %220 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 5
  store i64 %221, i64* %222, align 8
  %223 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %11, i64 0, i32 4
  %224 = load i8, i8* %223, align 8
  %225 = icmp ult i64 %218, -2
  %226 = icmp ne i8 %224, 0
  %227 = and i1 %225, %226
  %228 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 4
  %229 = zext i1 %227 to i8
  store i8 %229, i8* %228, align 8
  %230 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 6
  store i64 -1, i64* %230, align 8
  %231 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %13, i64 0, i32 7
  store i8 0, i8* %231, align 8
  %232 = icmp ult i64 %215, -2
  %233 = icmp ult i64 %221, -2
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %239

; <label>:235:                                    ; preds = %209
  %236 = sub i64 %215, %221
  store i64 %236, i64* %230, align 8
  %237 = icmp ult i64 %215, %221
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %231, align 8
  br label %239

; <label>:239:                                    ; preds = %209, %235
  %240 = load i1, i1* @print_grand_total, align 1
  %241 = xor i1 %240, true
  %242 = or i1 %136, %241
  br i1 %242, label %291, label %243

; <label>:243:                                    ; preds = %239
  br i1 %202, label %244, label %247

; <label>:244:                                    ; preds = %243
  %245 = load i64, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 5), align 8
  %246 = add i64 %245, %193
  store i64 %246, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 5), align 8
  br label %247

; <label>:247:                                    ; preds = %244, %243
  br i1 %203, label %248, label %251

; <label>:248:                                    ; preds = %247
  %249 = load i64, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 6), align 8
  %250 = add i64 %249, %196
  store i64 %250, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 6), align 8
  br label %251

; <label>:251:                                    ; preds = %248, %247
  br i1 %232, label %252, label %256

; <label>:252:                                    ; preds = %251
  %253 = mul i64 %211, %215
  %254 = load i64, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 1), align 8
  %255 = add i64 %254, %253
  store i64 %255, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 1), align 8
  br label %256

; <label>:256:                                    ; preds = %252, %251
  br i1 %233, label %257, label %261

; <label>:257:                                    ; preds = %256
  %258 = mul i64 %211, %221
  %259 = load i64, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 2), align 8
  %260 = add i64 %259, %258
  store i64 %260, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 2), align 8
  br label %261

; <label>:261:                                    ; preds = %257, %256
  br i1 %225, label %262, label %291

; <label>:262:                                    ; preds = %261
  %263 = mul i64 %211, %218
  %264 = load i8, i8* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 4), align 8
  %265 = icmp ne i8 %264, 0
  %266 = xor i1 %265, true
  %267 = xor i1 %227, %266
  %268 = load i64, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 3), align 8
  br i1 %267, label %269, label %271

; <label>:269:                                    ; preds = %262
  %270 = add i64 %268, %263
  br label %289

; <label>:271:                                    ; preds = %262
  br i1 %265, label %272, label %274

; <label>:272:                                    ; preds = %271
  %273 = sub i64 0, %268
  store i64 %273, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 3), align 8
  br label %274

; <label>:274:                                    ; preds = %272, %271
  %275 = phi i64 [ %273, %272 ], [ %268, %271 ]
  %276 = sub i64 0, %263
  %277 = select i1 %227, i64 %276, i64 %263
  %278 = icmp ult i64 %277, %275
  br i1 %278, label %279, label %281

; <label>:279:                                    ; preds = %274
  %280 = sub i64 %275, %277
  store i64 %280, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 3), align 8
  br label %283

; <label>:281:                                    ; preds = %274
  %282 = sub i64 %277, %275
  store i64 %282, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 3), align 8
  store i8 %229, i8* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 4), align 8
  br label %283

; <label>:283:                                    ; preds = %281, %279
  %284 = phi i64 [ %282, %281 ], [ %280, %279 ]
  %285 = phi i8 [ %229, %281 ], [ %264, %279 ]
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %291, label %287

; <label>:287:                                    ; preds = %283
  %288 = sub i64 0, %284
  br label %289

; <label>:289:                                    ; preds = %287, %269
  %290 = phi i64 [ %270, %269 ], [ %288, %287 ]
  store i64 %290, i64* getelementptr inbounds (%struct.fs_usage, %struct.fs_usage* @grand_fsu, i64 0, i32 3), align 8
  br label %291

; <label>:291:                                    ; preds = %239, %261, %283, %289
  %292 = load i64, i64* @ncolumns, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %537, label %294

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds [653 x i8], [653 x i8]* %15, i64 0, i64 0
  %296 = bitcast i8** %16 to i8*
  %297 = bitcast i8** %16 to i64*
  %298 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  br label %299

; <label>:299:                                    ; preds = %294, %520
  %300 = phi %struct.field_data_t** [ %298, %294 ], [ %522, %520 ]
  %301 = phi i64 [ 0, %294 ], [ %533, %520 ]
  call void @llvm.lifetime.start(i64 653, i8* nonnull %295) #12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %296) #12
  %302 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %300, i64 %301
  %303 = load %struct.field_data_t*, %struct.field_data_t** %302, align 8
  %304 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %303, i64 0, i32 2
  %305 = load i32, i32* %304, align 8
  switch i32 %305, label %308 [
    i32 0, label %309
    i32 1, label %306
    i32 2, label %307
  ]

; <label>:306:                                    ; preds = %299
  br label %309

; <label>:307:                                    ; preds = %299
  br label %309

; <label>:308:                                    ; preds = %299
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 1074, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__PRETTY_FUNCTION__.get_dev, i64 0, i64 0)) #15
  unreachable

; <label>:309:                                    ; preds = %299, %307, %306
  %310 = phi %struct.field_values_t* [ null, %307 ], [ %14, %306 ], [ %13, %299 ]
  %311 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %303, i64 0, i32 0
  %312 = load i32, i32* %311, align 8
  switch i32 %312, label %470 [
    i32 0, label %313
    i32 1, label %315
    i32 2, label %317
    i32 6, label %317
    i32 3, label %331
    i32 7, label %331
    i32 4, label %355
    i32 8, label %355
    i32 5, label %379
    i32 9, label %379
    i32 11, label %466
    i32 10, label %468
  ]

; <label>:313:                                    ; preds = %309
  %314 = call noalias i8* @xstrdup(i8* %186) #12
  store i8* %314, i8** %16, align 8
  br label %471

; <label>:315:                                    ; preds = %309
  %316 = call noalias i8* @xstrdup(i8* %188) #12
  store i8* %316, i8** %16, align 8
  br label %471

; <label>:317:                                    ; preds = %309, %309
  %318 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ult i64 %319, -2
  br i1 %320, label %321, label %328

; <label>:321:                                    ; preds = %317
  %322 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @human_output_opts, align 4
  %327 = call i8* @human_readable(i64 %319, i8* nonnull %295, i32 %326, i64 %325, i64 %323) #12
  br label %328

; <label>:328:                                    ; preds = %317, %321
  %329 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %317 ], [ %327, %321 ]
  %330 = call noalias i8* @xstrdup(i8* %329) #12
  store i8* %330, i8** %16, align 8
  br label %471

; <label>:331:                                    ; preds = %309, %309
  %332 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 7
  %333 = load i8, i8* %332, align 8
  %334 = icmp ne i8 %333, 0
  %335 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 6
  %336 = load i64, i64* %335, align 8
  %337 = icmp ult i64 %336, -2
  %338 = or i1 %334, %337
  br i1 %338, label %339, label %352

; <label>:339:                                    ; preds = %331
  %340 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = sub i64 0, %336
  %345 = select i1 %334, i64 %344, i64 %336
  %346 = zext i8 %333 to i64
  %347 = getelementptr inbounds [653 x i8], [653 x i8]* %15, i64 0, i64 %346
  %348 = load i32, i32* @human_output_opts, align 4
  %349 = call i8* @human_readable(i64 %345, i8* %347, i32 %348, i64 %343, i64 %341) #12
  br i1 %334, label %350, label %352

; <label>:350:                                    ; preds = %339
  %351 = getelementptr inbounds i8, i8* %349, i64 -1
  store i8 45, i8* %351, align 1
  br label %352

; <label>:352:                                    ; preds = %331, %339, %350
  %353 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %331 ], [ %351, %350 ], [ %349, %339 ]
  %354 = call noalias i8* @xstrdup(i8* %353) #12
  store i8* %354, i8** %16, align 8
  br label %471

; <label>:355:                                    ; preds = %309, %309
  %356 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 4
  %357 = load i8, i8* %356, align 8
  %358 = icmp ne i8 %357, 0
  %359 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 3
  %360 = load i64, i64* %359, align 8
  %361 = icmp ult i64 %360, -2
  %362 = or i1 %358, %361
  br i1 %362, label %363, label %376

; <label>:363:                                    ; preds = %355
  %364 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = sub i64 0, %360
  %369 = select i1 %358, i64 %368, i64 %360
  %370 = zext i8 %357 to i64
  %371 = getelementptr inbounds [653 x i8], [653 x i8]* %15, i64 0, i64 %370
  %372 = load i32, i32* @human_output_opts, align 4
  %373 = call i8* @human_readable(i64 %369, i8* %371, i32 %372, i64 %367, i64 %365) #12
  br i1 %358, label %374, label %376

; <label>:374:                                    ; preds = %363
  %375 = getelementptr inbounds i8, i8* %373, i64 -1
  store i8 45, i8* %375, align 1
  br label %376

; <label>:376:                                    ; preds = %355, %363, %374
  %377 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %355 ], [ %375, %374 ], [ %373, %363 ]
  %378 = call noalias i8* @xstrdup(i8* %377) #12
  store i8* %378, i8** %16, align 8
  br label %471

; <label>:379:                                    ; preds = %309, %309
  %380 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 6
  %381 = load i64, i64* %380, align 8
  %382 = icmp ult i64 %381, -2
  br i1 %382, label %383, label %453

; <label>:383:                                    ; preds = %379
  %384 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = icmp ult i64 %385, -2
  br i1 %386, label %387, label %453

; <label>:387:                                    ; preds = %383
  %388 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 7
  %389 = load i8, i8* %388, align 8
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %411

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, 184467440737095517
  br i1 %392, label %393, label %415

; <label>:393:                                    ; preds = %391
  %394 = add i64 %385, %381
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %415, label %396

; <label>:396:                                    ; preds = %393
  %397 = icmp ult i64 %394, %381
  %398 = zext i1 %397 to i32
  %399 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 4
  %400 = load i8, i8* %399, align 8
  %401 = zext i8 %400 to i32
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %403, label %415

; <label>:403:                                    ; preds = %396
  %404 = mul i64 %381, 100
  %405 = udiv i64 %404, %394
  %406 = urem i64 %404, %394
  %407 = icmp ne i64 %406, 0
  %408 = zext i1 %407 to i64
  %409 = add i64 %408, %405
  %410 = uitofp i64 %409 to double
  br label %446

; <label>:411:                                    ; preds = %387
  %412 = sub i64 0, %381
  %413 = uitofp i64 %412 to double
  %414 = fsub double -0.000000e+00, %413
  br label %417

; <label>:415:                                    ; preds = %391, %396, %393
  %416 = uitofp i64 %381 to double
  br label %417

; <label>:417:                                    ; preds = %415, %411
  %418 = phi double [ %414, %411 ], [ %416, %415 ]
  %419 = getelementptr inbounds %struct.field_values_t, %struct.field_values_t* %310, i64 0, i32 4
  %420 = load i8, i8* %419, align 8
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %426, label %422

; <label>:422:                                    ; preds = %417
  %423 = sub i64 0, %385
  %424 = uitofp i64 %423 to double
  %425 = fsub double -0.000000e+00, %424
  br label %428

; <label>:426:                                    ; preds = %417
  %427 = uitofp i64 %385 to double
  br label %428

; <label>:428:                                    ; preds = %426, %422
  %429 = phi double [ %425, %422 ], [ %427, %426 ]
  %430 = fadd double %418, %429
  %431 = fcmp une double %430, 0.000000e+00
  br i1 %431, label %432, label %453

; <label>:432:                                    ; preds = %428
  %433 = fmul double %418, 1.000000e+02
  %434 = fdiv double %433, %430
  %435 = fptosi double %434 to i64
  %436 = sitofp i64 %435 to double
  %437 = fadd double %436, -1.000000e+00
  %438 = fcmp uge double %437, %434
  %439 = fadd double %436, 1.000000e+00
  %440 = fcmp ugt double %434, %439
  %441 = or i1 %438, %440
  %442 = fcmp olt double %436, %434
  %443 = uitofp i1 %442 to double
  %444 = fadd double %436, %443
  %445 = select i1 %441, double %434, double %444
  br label %446

; <label>:446:                                    ; preds = %432, %403
  %447 = phi double [ %410, %403 ], [ %445, %432 ]
  %448 = fcmp ult double %447, 0.000000e+00
  br i1 %448, label %453, label %449

; <label>:449:                                    ; preds = %446
  %450 = call i32 (i8**, i32, i8*, ...) @__asprintf_chk(i8** nonnull %16, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.107, i64 0, i64 0), double %447) #12
  %451 = icmp eq i32 %450, -1
  br i1 %451, label %452, label %459

; <label>:452:                                    ; preds = %449
  store i8* null, i8** %16, align 8
  br label %465

; <label>:453:                                    ; preds = %428, %379, %383, %446
  %454 = call noalias i8* @malloc(i64 2) #12
  %455 = icmp eq i8* %454, null
  br i1 %455, label %458, label %456

; <label>:456:                                    ; preds = %453
  %457 = bitcast i8* %454 to i16*
  store i16 45, i16* %457, align 1
  br label %458

; <label>:458:                                    ; preds = %456, %453
  store i8* %454, i8** %16, align 8
  br label %461

; <label>:459:                                    ; preds = %449
  %460 = load i8*, i8** %16, align 8
  br label %461

; <label>:461:                                    ; preds = %459, %458
  %462 = phi i8* [ %460, %459 ], [ %454, %458 ]
  %463 = icmp eq i8* %462, null
  br i1 %463, label %464, label %475

; <label>:464:                                    ; preds = %461
  br label %465

; <label>:465:                                    ; preds = %464, %452
  call void @xalloc_die() #15
  unreachable

; <label>:466:                                    ; preds = %309
  %467 = call noalias i8* @xstrdup(i8* %171) #12
  store i8* %467, i8** %16, align 8
  br label %471

; <label>:468:                                    ; preds = %309
  %469 = call noalias i8* @xstrdup(i8* %1) #12
  store i8* %469, i8** %16, align 8
  br label %471

; <label>:470:                                    ; preds = %309
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.108, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 1176, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__PRETTY_FUNCTION__.get_dev, i64 0, i64 0)) #15
  unreachable

; <label>:471:                                    ; preds = %468, %466, %376, %352, %328, %315, %313
  %472 = phi i8* [ %469, %468 ], [ %467, %466 ], [ %378, %376 ], [ %354, %352 ], [ %330, %328 ], [ %316, %315 ], [ %314, %313 ]
  %473 = icmp eq i8* %472, null
  br i1 %473, label %474, label %475

; <label>:474:                                    ; preds = %471
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i32 1180, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @__PRETTY_FUNCTION__.get_dev, i64 0, i64 0)) #15
  unreachable

; <label>:475:                                    ; preds = %461, %471
  %476 = phi i8* [ %472, %471 ], [ %462, %461 ]
  %477 = load i8, i8* %476, align 1
  %478 = icmp eq i8 %477, 0
  br i1 %478, label %497, label %479

; <label>:479:                                    ; preds = %475
  %480 = tail call i16** @__ctype_b_loc() #1
  br label %481

; <label>:481:                                    ; preds = %491, %479
  %482 = phi i8 [ %477, %479 ], [ %493, %491 ]
  %483 = phi i8* [ %476, %479 ], [ %492, %491 ]
  %484 = load i16*, i16** %480, align 8
  %485 = zext i8 %482 to i64
  %486 = getelementptr inbounds i16, i16* %484, i64 %485
  %487 = load i16, i16* %486, align 2
  %488 = and i16 %487, 2
  %489 = icmp eq i16 %488, 0
  br i1 %489, label %491, label %490

; <label>:490:                                    ; preds = %481
  store i8 63, i8* %483, align 1
  br label %491

; <label>:491:                                    ; preds = %490, %481
  %492 = getelementptr inbounds i8, i8* %483, i64 1
  %493 = load i8, i8* %492, align 1
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %481

; <label>:495:                                    ; preds = %491
  %496 = load i8*, i8** %16, align 8
  br label %497

; <label>:497:                                    ; preds = %495, %475
  %498 = phi i8* [ %496, %495 ], [ %476, %475 ]
  %499 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %500 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %499, i64 %301
  %501 = load %struct.field_data_t*, %struct.field_data_t** %500, align 8
  %502 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %501, i64 0, i32 4
  %503 = load i64, i64* %502, align 8
  %504 = call i32 @gnu_mbswidth(i8* %498, i32 0) #12
  %505 = sext i32 %504 to i64
  %506 = icmp ugt i64 %503, %505
  br i1 %506, label %507, label %513

; <label>:507:                                    ; preds = %497
  %508 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %509 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %508, i64 %301
  %510 = load %struct.field_data_t*, %struct.field_data_t** %509, align 8
  %511 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %510, i64 0, i32 4
  %512 = load i64, i64* %511, align 8
  br label %520

; <label>:513:                                    ; preds = %497
  %514 = load i8*, i8** %16, align 8
  %515 = call i32 @gnu_mbswidth(i8* %514, i32 0) #12
  %516 = sext i32 %515 to i64
  %517 = load %struct.field_data_t**, %struct.field_data_t*** @columns, align 8
  %518 = getelementptr inbounds %struct.field_data_t*, %struct.field_data_t** %517, i64 %301
  %519 = load %struct.field_data_t*, %struct.field_data_t** %518, align 8
  br label %520

; <label>:520:                                    ; preds = %513, %507
  %521 = phi %struct.field_data_t* [ %510, %507 ], [ %519, %513 ]
  %522 = phi %struct.field_data_t** [ %508, %507 ], [ %517, %513 ]
  %523 = phi i64 [ %512, %507 ], [ %516, %513 ]
  %524 = getelementptr inbounds %struct.field_data_t, %struct.field_data_t* %521, i64 0, i32 4
  store i64 %523, i64* %524, align 8
  %525 = load i64, i64* %297, align 8
  %526 = load i8***, i8**** @table, align 8
  %527 = load i64, i64* @nrows, align 8
  %528 = add i64 %527, -1
  %529 = getelementptr inbounds i8**, i8*** %526, i64 %528
  %530 = load i8**, i8*** %529, align 8
  %531 = getelementptr inbounds i8*, i8** %530, i64 %301
  %532 = bitcast i8** %531 to i64*
  store i64 %525, i64* %532, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %296) #12
  call void @llvm.lifetime.end(i64 653, i8* nonnull %295) #12
  %533 = add i64 %301, 1
  %534 = load i64, i64* @ncolumns, align 8
  %535 = icmp ult i64 %533, %534
  br i1 %535, label %299, label %536

; <label>:536:                                    ; preds = %520
  br label %537

; <label>:537:                                    ; preds = %536, %291
  call void @free(i8* %186) #12
  call void @llvm.lifetime.end(i64 64, i8* nonnull %190) #12
  call void @llvm.lifetime.end(i64 64, i8* nonnull %189) #12
  br label %538

; <label>:538:                                    ; preds = %144, %84, %537, %91
  %539 = phi i8* [ %137, %144 ], [ %76, %84 ], [ %137, %537 ], [ %76, %91 ]
  call void @llvm.lifetime.end(i64 56, i8* %539) #12
  br label %542

; <label>:540:                                    ; preds = %46
  br label %542

; <label>:541:                                    ; preds = %36
  br label %542

; <label>:542:                                    ; preds = %541, %540, %61, %22, %17, %538
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @devlist_hash(i8* nocapture readonly, i64) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @devlist_compare(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @devlist_free(i8* nocapture) #6 {
  tail call void @free(i8* %0) #12
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @find_mount_point(i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %3 = alloca %struct.saved_cwd, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = bitcast %struct.saved_cwd* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #12
  %7 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %7) #12
  %8 = call i32 @save_cwd(%struct.saved_cwd* nonnull %3) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %12, i8* %13) #12
  br label %95

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 61440
  %18 = icmp eq i32 %17, 16384
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.stat* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* %20, i64 144, i32 8, i1 false)
  %21 = call i32 @chdir(i8* %0) #12
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %19
  %24 = tail call i32* @__errno_location() #1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.40, i64 0, i64 0), i32 5) #12
  %27 = call i8* @quotearg_style(i32 4, i8* %0) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %25, i8* %26, i8* %27) #12
  br label %95

; <label>:28:                                     ; preds = %14
  %29 = call i8* @dir_name(i8* %0) #12
  %30 = call i64 @strlen(i8* %29) #14
  %31 = add i64 %30, 1
  %32 = alloca i8, i64 %31, align 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %32, i8* %29, i64 %31, i32 1, i1 false)
  call void @free(i8* %29) #12
  %33 = call i32 @chdir(i8* nonnull %32) #12
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %28
  %36 = tail call i32* @__errno_location() #1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.40, i64 0, i64 0), i32 5) #12
  %39 = call i8* @quotearg_style(i32 4, i8* nonnull %32) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %37, i8* %38, i8* %39) #12
  br label %95

; <label>:40:                                     ; preds = %28
  %41 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.41, i64 0, i64 0), %struct.stat* nonnull %4) #12
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %19, %40
  %44 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #12
  %45 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.42, i64 0, i64 0), %struct.stat* nonnull %5) #12
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %58, label %47

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  br label %63

; <label>:52:                                     ; preds = %40
  %53 = tail call i32* @__errno_location() #1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3.43, i64 0, i64 0), i32 5) #12
  %56 = call i8* @quotearg_style(i32 4, i8* nonnull %32) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* %55, i8* %56) #12
  br label %85

; <label>:57:                                     ; preds = %80
  br label %58

; <label>:58:                                     ; preds = %57, %43
  %59 = tail call i32* @__errno_location() #1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.44, i64 0, i64 0), i32 5) #12
  %62 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.42, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %60, i8* %61, i8* %62) #12
  br label %79

; <label>:63:                                     ; preds = %47, %80
  %64 = load i64, i64* %48, align 8
  %65 = load i64, i64* %49, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %83

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %50, align 8
  %69 = load i64, i64* %51, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

; <label>:71:                                     ; preds = %67
  %72 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.42, i64 0, i64 0)) #12
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %71
  %75 = tail call i32* @__errno_location() #1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.40, i64 0, i64 0), i32 5) #12
  %78 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.42, i64 0, i64 0)) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %76, i8* %77, i8* %78) #12
  br label %79

; <label>:79:                                     ; preds = %58, %74
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  br label %85

; <label>:80:                                     ; preds = %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* nonnull %44, i64 144, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #12
  %81 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.42, i64 0, i64 0), %struct.stat* nonnull %5) #12
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %57, label %63

; <label>:83:                                     ; preds = %63, %67
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  %84 = call i8* @xgetcwd() #12
  br label %85

; <label>:85:                                     ; preds = %79, %52, %83
  %86 = phi i8* [ %84, %83 ], [ null, %52 ], [ null, %79 ]
  %87 = tail call i32* @__errno_location() #1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @restore_cwd(%struct.saved_cwd* nonnull %3) #12
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %87, align 4
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6.45, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %92, i8* %93) #12
  unreachable

; <label>:94:                                     ; preds = %85
  call void @free_cwd(%struct.saved_cwd* nonnull %3) #12
  store i32 %88, i32* %87, align 4
  br label %95

; <label>:95:                                     ; preds = %35, %94, %23, %10
  %96 = phi i8* [ null, %10 ], [ null, %23 ], [ %86, %94 ], [ null, %35 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %7) #12
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #12
  ret i8* %96
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @canonicalize_filename_mode(i8*, i32) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = and i32 %1, 4
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %1, 3
  %7 = add i32 %1, 3
  %8 = and i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno_location() #1
  store i32 22, i32* %11, align 4
  br label %312

; <label>:12:                                     ; preds = %2
  %13 = icmp eq i8* %0, null
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %12
  %15 = tail call i32* @__errno_location() #1
  store i32 22, i32* %15, align 4
  br label %312

; <label>:16:                                     ; preds = %12
  %17 = load i8, i8* %0, align 1
  switch i8 %17, label %20 [
    i8 0, label %18
    i8 47, label %33
  ]

; <label>:18:                                     ; preds = %16
  %19 = tail call i32* @__errno_location() #1
  store i32 2, i32* %19, align 4
  br label %312

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @xgetcwd() #12
  %22 = icmp eq i8* %21, null
  br i1 %22, label %312, label %23

; <label>:23:                                     ; preds = %20
  %24 = tail call i8* @__rawmemchr(i8* nonnull %21, i32 0) #12
  %25 = ptrtoint i8* %24 to i64
  %26 = ptrtoint i8* %21 to i64
  %27 = sub i64 %25, %26
  %28 = icmp slt i64 %27, 4096
  br i1 %28, label %29, label %37

; <label>:29:                                     ; preds = %23
  %30 = tail call i8* @xrealloc(i8* nonnull %21, i64 4096) #12
  %31 = getelementptr inbounds i8, i8* %30, i64 %27
  %32 = getelementptr inbounds i8, i8* %30, i64 4096
  br label %37

; <label>:33:                                     ; preds = %16
  %34 = tail call noalias i8* @xmalloc(i64 4096) #12
  %35 = getelementptr inbounds i8, i8* %34, i64 4096
  %36 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 47, i8* %34, align 1
  br label %37

; <label>:37:                                     ; preds = %33, %23, %29
  %38 = phi i8* [ %35, %33 ], [ %24, %23 ], [ %32, %29 ]
  %39 = phi i8* [ %36, %33 ], [ %24, %23 ], [ %31, %29 ]
  %40 = phi i8* [ %34, %33 ], [ %21, %23 ], [ %30, %29 ]
  %41 = load i8, i8* %0, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %276, label %43

; <label>:43:                                     ; preds = %37
  %44 = bitcast %struct.stat* %3 to i8*
  %45 = icmp eq i32 %6, 2
  %46 = and i32 %1, 7
  %47 = icmp eq i32 %46, 6
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %49 = select i1 %45, i32 4, i32 13
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %51 = trunc i32 %1 to i2
  %52 = icmp ne i32 %6, 2
  br label %53

; <label>:53:                                     ; preds = %43, %249
  %54 = phi i8 [ %41, %43 ], [ %256, %249 ]
  %55 = phi i8* [ %0, %43 ], [ %255, %249 ]
  %56 = phi i8* [ %40, %43 ], [ %154, %249 ]
  %57 = phi i8* [ %39, %43 ], [ %254, %249 ]
  %58 = phi i8* [ null, %43 ], [ %253, %249 ]
  %59 = phi i8* [ %0, %43 ], [ %252, %249 ]
  %60 = phi i32 [ undef, %43 ], [ %181, %249 ]
  %61 = phi i64 [ 0, %43 ], [ %251, %249 ]
  %62 = phi i8* [ %38, %43 ], [ %152, %249 ]
  %63 = phi %struct.hash_table* [ null, %43 ], [ %250, %249 ]
  br label %64

; <label>:64:                                     ; preds = %53, %267
  %65 = phi i8 [ %54, %53 ], [ %270, %267 ]
  %66 = phi i8* [ %56, %53 ], [ %154, %267 ]
  %67 = phi i8* [ %57, %53 ], [ %155, %267 ]
  %68 = phi i8* [ %59, %53 ], [ %98, %267 ]
  %69 = phi i32 [ %60, %53 ], [ %269, %267 ]
  %70 = phi i8* [ %62, %53 ], [ %152, %267 ]
  %71 = phi %struct.hash_table* [ %63, %53 ], [ %268, %267 ]
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  br label %75

; <label>:73:                                     ; preds = %123, %119
  %74 = icmp eq i8 %97, 0
  br i1 %74, label %273, label %75

; <label>:75:                                     ; preds = %64, %73
  %76 = phi i8 [ %65, %64 ], [ %97, %73 ]
  %77 = phi i8* [ %67, %64 ], [ %121, %73 ]
  %78 = phi i8* [ %68, %64 ], [ %98, %73 ]
  %79 = icmp ugt i8* %77, %72
  br label %80

; <label>:80:                                     ; preds = %75, %116
  %81 = phi i8 [ %76, %75 ], [ %117, %116 ]
  %82 = phi i8* [ %78, %75 ], [ %98, %116 ]
  %83 = icmp eq i8 %81, 47
  %84 = getelementptr inbounds i8, i8* %82, i64 1
  br i1 %83, label %85, label %87

; <label>:85:                                     ; preds = %80
  br label %91

; <label>:86:                                     ; preds = %91
  br label %87

; <label>:87:                                     ; preds = %86, %80
  %88 = phi i8 [ %81, %80 ], [ %93, %86 ]
  %89 = phi i8* [ %82, %80 ], [ %92, %86 ]
  %90 = phi i8* [ %84, %80 ], [ %95, %86 ]
  br label %96

; <label>:91:                                     ; preds = %85, %91
  %92 = phi i8* [ %95, %91 ], [ %84, %85 ]
  %93 = load i8, i8* %92, align 1
  %94 = icmp eq i8 %93, 47
  %95 = getelementptr inbounds i8, i8* %92, i64 1
  br i1 %94, label %91, label %86

; <label>:96:                                     ; preds = %87, %99
  %97 = phi i8 [ %101, %99 ], [ %88, %87 ]
  %98 = phi i8* [ %100, %99 ], [ %89, %87 ]
  switch i8 %97, label %99 [
    i8 0, label %102
    i8 47, label %102
  ]

; <label>:99:                                     ; preds = %96
  %100 = getelementptr inbounds i8, i8* %98, i64 1
  %101 = load i8, i8* %100, align 1
  br label %96

; <label>:102:                                    ; preds = %96, %96
  %103 = ptrtoint i8* %98 to i64
  %104 = ptrtoint i8* %89 to i64
  %105 = sub i64 %103, %104
  switch i64 %105, label %127 [
    i64 0, label %272
    i64 1, label %106
    i64 2, label %109
  ]

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* %89, align 1
  %108 = icmp eq i8 %107, 46
  br i1 %108, label %116, label %127

; <label>:109:                                    ; preds = %102
  %110 = icmp eq i8 %88, 46
  br i1 %110, label %111, label %127

; <label>:111:                                    ; preds = %109
  %112 = load i8, i8* %90, align 1
  %113 = icmp eq i8 %112, 46
  br i1 %113, label %114, label %127

; <label>:114:                                    ; preds = %111
  br i1 %79, label %115, label %116

; <label>:115:                                    ; preds = %114
  br label %119

; <label>:116:                                    ; preds = %114, %106
  %117 = load i8, i8* %98, align 1
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %272, label %80

; <label>:119:                                    ; preds = %115, %123
  %120 = phi i8* [ %121, %123 ], [ %77, %115 ]
  %121 = getelementptr inbounds i8, i8* %120, i64 -1
  %122 = icmp ugt i8* %121, %66
  br i1 %122, label %123, label %73

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds i8, i8* %120, i64 -2
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 47
  br i1 %126, label %73, label %119

; <label>:127:                                    ; preds = %106, %102, %111, %109
  %128 = phi i64 [ 1, %106 ], [ %105, %102 ], [ 2, %111 ], [ 2, %109 ]
  call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #12
  %129 = getelementptr inbounds i8, i8* %77, i64 -1
  %130 = load i8, i8* %129, align 1
  %131 = icmp eq i8 %130, 47
  br i1 %131, label %134, label %132

; <label>:132:                                    ; preds = %127
  %133 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 47, i8* %77, align 1
  br label %134

; <label>:134:                                    ; preds = %132, %127
  %135 = phi i8* [ %77, %127 ], [ %133, %132 ]
  %136 = getelementptr inbounds i8, i8* %135, i64 %128
  %137 = icmp ult i8* %136, %70
  br i1 %137, label %151, label %138

; <label>:138:                                    ; preds = %134
  %139 = ptrtoint i8* %135 to i64
  %140 = ptrtoint i8* %66 to i64
  %141 = sub i64 %139, %140
  %142 = ptrtoint i8* %70 to i64
  %143 = sub i64 %142, %140
  %144 = icmp sgt i64 %128, 4095
  %145 = add nsw i64 %128, 1
  %146 = select i1 %144, i64 %145, i64 4096
  %147 = add i64 %146, %143
  %148 = call i8* @xrealloc(i8* %66, i64 %147) #12
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  %150 = getelementptr inbounds i8, i8* %148, i64 %141
  br label %151

; <label>:151:                                    ; preds = %134, %138
  %152 = phi i8* [ %149, %138 ], [ %70, %134 ]
  %153 = phi i8* [ %150, %138 ], [ %135, %134 ]
  %154 = phi i8* [ %148, %138 ], [ %66, %134 ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %153, i8* %89, i64 %128, i32 1, i1 false)
  %155 = getelementptr inbounds i8, i8* %153, i64 %128
  store i8 0, i8* %155, align 1
  br i1 %47, label %177, label %156

; <label>:156:                                    ; preds = %151
  br i1 %5, label %159, label %157

; <label>:157:                                    ; preds = %156
  %158 = call i32 @__xstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %3) #12
  br label %161

; <label>:159:                                    ; preds = %156
  %160 = call i32 @__lxstat(i32 1, i8* nonnull %154, %struct.stat* nonnull %3) #12
  br label %161

; <label>:161:                                    ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %166

; <label>:164:                                    ; preds = %161
  %165 = load i32, i32* %48, align 8
  br label %179

; <label>:166:                                    ; preds = %161
  %167 = tail call i32* @__errno_location() #1
  %168 = load i32, i32* %167, align 4
  switch i2 %51, label %177 [
    i2 0, label %258
    i2 1, label %169
  ]

; <label>:169:                                    ; preds = %166
  %170 = call i64 @strspn(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.114, i64 0, i64 0)) #12
  %171 = getelementptr inbounds i8, i8* %98, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  %174 = icmp ne i32 %168, 2
  %175 = or i1 %174, %173
  %176 = select i1 %175, i32 13, i32 4
  br label %262

; <label>:177:                                    ; preds = %166, %151
  %178 = phi i32 [ %69, %151 ], [ %168, %166 ]
  store i32 0, i32* %48, align 8
  br label %179

; <label>:179:                                    ; preds = %164, %177
  %180 = phi i32 [ 0, %177 ], [ %165, %164 ]
  %181 = phi i32 [ %178, %177 ], [ %69, %164 ]
  %182 = trunc i32 %180 to i16
  %183 = and i16 %182, -4096
  switch i16 %183, label %244 [
    i16 -24576, label %184
    i16 16384, label %248
  ]

; <label>:184:                                    ; preds = %179
  %185 = icmp eq %struct.hash_table* %71, null
  br i1 %185, label %186, label %190

; <label>:186:                                    ; preds = %184
  %187 = call %struct.hash_table* @hash_initialize(i64 7, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash, i1 (i8*, i8*)* nonnull @triple_compare_ino_str, void (i8*)* nonnull @triple_free) #12
  %188 = icmp eq %struct.hash_table* %187, null
  br i1 %188, label %189, label %190

; <label>:189:                                    ; preds = %186
  call void @xalloc_die() #15
  unreachable

; <label>:190:                                    ; preds = %186, %184
  %191 = phi %struct.hash_table* [ %187, %186 ], [ %71, %184 ]
  %192 = call zeroext i1 @seen_file(%struct.hash_table* nonnull %191, i8* %55, %struct.stat* nonnull %3) #12
  br i1 %192, label %193, label %195

; <label>:193:                                    ; preds = %190
  %194 = select i1 %45, i32 %181, i32 40
  br label %262

; <label>:195:                                    ; preds = %190
  call void @record_file(%struct.hash_table* nonnull %191, i8* %55, %struct.stat* nonnull %3) #12
  %196 = load i64, i64* %50, align 8
  %197 = call i8* @areadlink_with_size(i8* %154, i64 %196) #12
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %207

; <label>:199:                                    ; preds = %195
  %200 = tail call i32* @__errno_location() #1
  br i1 %45, label %201, label %205

; <label>:201:                                    ; preds = %199
  %202 = load i32, i32* %200, align 4
  %203 = icmp eq i32 %202, 12
  br i1 %203, label %205, label %204

; <label>:204:                                    ; preds = %201
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  br label %267

; <label>:205:                                    ; preds = %201, %199
  %206 = load i32, i32* %200, align 4
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  br label %304

; <label>:207:                                    ; preds = %195
  %208 = call i64 @strlen(i8* nonnull %197) #14
  %209 = call i64 @strlen(i8* %98) #14
  %210 = icmp eq i64 %61, 0
  %211 = add i64 %208, 1
  %212 = add i64 %211, %209
  br i1 %210, label %213, label %217

; <label>:213:                                    ; preds = %207
  %214 = icmp ugt i64 %212, 4096
  %215 = select i1 %214, i64 %212, i64 4096
  %216 = call noalias i8* @xmalloc(i64 %215) #12
  br label %221

; <label>:217:                                    ; preds = %207
  %218 = icmp ugt i64 %212, %61
  br i1 %218, label %219, label %221

; <label>:219:                                    ; preds = %217
  %220 = call i8* @xrealloc(i8* %58, i64 %212) #12
  br label %221

; <label>:221:                                    ; preds = %217, %219, %213
  %222 = phi i64 [ %212, %219 ], [ %61, %217 ], [ %215, %213 ]
  %223 = phi i8* [ %220, %219 ], [ %58, %217 ], [ %216, %213 ]
  %224 = getelementptr inbounds i8, i8* %223, i64 %208
  %225 = add i64 %209, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %224, i8* %98, i64 %225, i32 1, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* nonnull %197, i64 %208, i32 1, i1 false)
  %226 = load i8, i8* %197, align 1
  %227 = icmp eq i8 %226, 47
  %228 = getelementptr inbounds i8, i8* %154, i64 1
  br i1 %227, label %229, label %230

; <label>:229:                                    ; preds = %221
  store i8 47, i8* %154, align 1
  br label %242

; <label>:230:                                    ; preds = %221
  %231 = icmp ugt i8* %155, %228
  br i1 %231, label %232, label %242

; <label>:232:                                    ; preds = %230
  br label %233

; <label>:233:                                    ; preds = %232, %237
  %234 = phi i8* [ %235, %237 ], [ %155, %232 ]
  %235 = getelementptr inbounds i8, i8* %234, i64 -1
  %236 = icmp ugt i8* %235, %154
  br i1 %236, label %237, label %241

; <label>:237:                                    ; preds = %233
  %238 = getelementptr inbounds i8, i8* %234, i64 -2
  %239 = load i8, i8* %238, align 1
  %240 = icmp eq i8 %239, 47
  br i1 %240, label %241, label %233

; <label>:241:                                    ; preds = %237, %233
  br label %242

; <label>:242:                                    ; preds = %241, %229, %230
  %243 = phi i8* [ %228, %229 ], [ %155, %230 ], [ %235, %241 ]
  call void @free(i8* %197) #12
  br label %249

; <label>:244:                                    ; preds = %179
  %245 = load i8, i8* %98, align 1
  %246 = icmp ne i8 %245, 0
  %247 = and i1 %52, %246
  br i1 %247, label %259, label %249

; <label>:248:                                    ; preds = %179
  br label %249

; <label>:249:                                    ; preds = %248, %244, %242
  %250 = phi %struct.hash_table* [ %71, %244 ], [ %191, %242 ], [ %71, %248 ]
  %251 = phi i64 [ %61, %244 ], [ %222, %242 ], [ %61, %248 ]
  %252 = phi i8* [ %98, %244 ], [ %223, %242 ], [ %98, %248 ]
  %253 = phi i8* [ %58, %244 ], [ %223, %242 ], [ %58, %248 ]
  %254 = phi i8* [ %155, %244 ], [ %243, %242 ], [ %155, %248 ]
  %255 = phi i8* [ %55, %244 ], [ %223, %242 ], [ %55, %248 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  %256 = load i8, i8* %252, align 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %275, label %53

; <label>:258:                                    ; preds = %166
  br label %260

; <label>:259:                                    ; preds = %244
  br label %260

; <label>:260:                                    ; preds = %259, %258
  %261 = phi i32 [ %168, %258 ], [ 20, %259 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  br label %304

; <label>:262:                                    ; preds = %193, %169
  %263 = phi %struct.hash_table* [ %71, %169 ], [ %191, %193 ]
  %264 = phi i32 [ %168, %169 ], [ %194, %193 ]
  %265 = phi i32 [ %176, %169 ], [ %49, %193 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #12
  %266 = trunc i32 %265 to i4
  switch i4 %266, label %311 [
    i4 -3, label %303
    i4 4, label %267
  ]

; <label>:267:                                    ; preds = %262, %204
  %268 = phi %struct.hash_table* [ %191, %204 ], [ %263, %262 ]
  %269 = phi i32 [ %181, %204 ], [ %264, %262 ]
  %270 = load i8, i8* %98, align 1
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %274, label %64

; <label>:272:                                    ; preds = %102, %116
  br label %276

; <label>:273:                                    ; preds = %73
  br label %276

; <label>:274:                                    ; preds = %267
  br label %276

; <label>:275:                                    ; preds = %249
  br label %276

; <label>:276:                                    ; preds = %275, %274, %273, %272, %37
  %277 = phi i8* [ null, %37 ], [ %58, %272 ], [ %58, %273 ], [ %58, %274 ], [ %253, %275 ]
  %278 = phi %struct.hash_table* [ null, %37 ], [ %71, %272 ], [ %71, %273 ], [ %268, %274 ], [ %250, %275 ]
  %279 = phi i8* [ %38, %37 ], [ %70, %272 ], [ %70, %273 ], [ %152, %274 ], [ %152, %275 ]
  %280 = phi i8* [ %40, %37 ], [ %66, %272 ], [ %66, %273 ], [ %154, %274 ], [ %154, %275 ]
  %281 = phi i8* [ %39, %37 ], [ %77, %272 ], [ %121, %273 ], [ %155, %274 ], [ %254, %275 ]
  %282 = getelementptr inbounds i8, i8* %280, i64 1
  %283 = icmp ugt i8* %281, %282
  br i1 %283, label %284, label %289

; <label>:284:                                    ; preds = %276
  %285 = getelementptr inbounds i8, i8* %281, i64 -1
  %286 = load i8, i8* %285, align 1
  %287 = icmp eq i8 %286, 47
  %288 = select i1 %287, i8* %285, i8* %281
  br label %289

; <label>:289:                                    ; preds = %284, %276
  %290 = phi i8* [ %281, %276 ], [ %288, %284 ]
  store i8 0, i8* %290, align 1
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  %292 = icmp eq i8* %279, %291
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %289
  %294 = ptrtoint i8* %290 to i64
  %295 = ptrtoint i8* %280 to i64
  %296 = sub i64 1, %295
  %297 = add i64 %296, %294
  %298 = call i8* @xrealloc(i8* %280, i64 %297) #12
  br label %299

; <label>:299:                                    ; preds = %289, %293
  %300 = phi i8* [ %298, %293 ], [ %280, %289 ]
  call void @free(i8* %277) #12
  %301 = icmp eq %struct.hash_table* %278, null
  br i1 %301, label %312, label %302

; <label>:302:                                    ; preds = %299
  call void @hash_free(%struct.hash_table* nonnull %278) #12
  br label %312

; <label>:303:                                    ; preds = %262
  br label %304

; <label>:304:                                    ; preds = %303, %205, %260
  %305 = phi i32 [ %261, %260 ], [ %206, %205 ], [ %264, %303 ]
  %306 = phi %struct.hash_table* [ %71, %260 ], [ %191, %205 ], [ %263, %303 ]
  call void @free(i8* %58) #12
  call void @free(i8* %154) #12
  %307 = icmp eq %struct.hash_table* %306, null
  br i1 %307, label %309, label %308

; <label>:308:                                    ; preds = %304
  call void @hash_free(%struct.hash_table* nonnull %306) #12
  br label %309

; <label>:309:                                    ; preds = %304, %308
  %310 = tail call i32* @__errno_location() #1
  store i32 %305, i32* %310, align 4
  br label %312

; <label>:311:                                    ; preds = %262
  br label %312

; <label>:312:                                    ; preds = %311, %302, %299, %20, %309, %18, %14, %10
  %313 = phi i8* [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %309 ], [ null, %20 ], [ %300, %299 ], [ %300, %302 ], [ undef, %311 ]
  ret i8* %313
}

declare i8* @__rawmemchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.118, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.119, i64 0, i64 0), i8* %12) #12
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
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define i8* @dir_name(i8*) local_unnamed_addr #6 {
  %2 = tail call i8* @mdir_name(i8* %0) #12
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:5:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #9 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  br label %9

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  %11 = icmp ult i64 %4, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %12, %9
  ret i64 %10
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  br label %9

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  %11 = icmp ult i64 %4, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %9, %12
  %18 = icmp eq i64 %10, 0
  %19 = zext i1 %18 to i64
  %20 = add i64 %10, 1
  %21 = add i64 %20, %19
  %22 = tail call noalias i8* @malloc(i64 %21) #12
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %0, i64 %10, i32 1, i1 false)
  br i1 %18, label %25, label %26

; <label>:25:                                     ; preds = %24
  store i8 46, i8* %22, align 1
  br label %26

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ]
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %17, %26
  %30 = phi i8* [ %22, %26 ], [ null, %17 ]
  ret i8* %30
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #9 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 47
  %6 = getelementptr inbounds i8, i8* %3, i64 1
  br i1 %5, label %2, label %7

; <label>:7:                                      ; preds = %2
  br label %8

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ]
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ]

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8* %10, i8* %11
  %17 = select i1 %15, i8 %12, i8 0
  br label %18

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  %21 = getelementptr inbounds i8, i8* %11, i64 1
  %22 = load i8, i8* %21, align 1
  br label %8

; <label>:23:                                     ; preds = %8
  ret i8* %10
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #9 {
  %2 = tail call i64 @strlen(i8* %0) #14
  br label %3

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  %5 = icmp ugt i64 %4, 1
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %3, label %11

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4
}

; Function Attrs: nounwind sspstrong uwtable
define void @record_file(%struct.hash_table*, i8* nonnull, %struct.stat* nocapture nonnull readonly) local_unnamed_addr #6 {
  %4 = icmp eq %struct.hash_table* %0, null
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call noalias i8* @xmalloc(i64 24) #12
  %7 = tail call noalias i8* @xstrdup(i8* nonnull %1) #12
  %8 = bitcast i8* %6 to i8**
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %6, i64 8
  %12 = bitcast i8* %11 to i64*
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %6, i64 16
  %16 = bitcast i8* %15 to i64*
  store i64 %14, i64* %16, align 8
  %17 = tail call i8* @hash_insert(%struct.hash_table* nonnull %0, i8* %6) #12
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %5
  tail call void @xalloc_die() #15
  unreachable

; <label>:20:                                     ; preds = %5
  %21 = icmp eq i8* %17, %6
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %20
  tail call void @triple_free(i8* %6) #12
  br label %23

; <label>:23:                                     ; preds = %22, %20, %3
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @seen_file(%struct.hash_table*, i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %4 = alloca %struct.F_triple, align 8
  %5 = bitcast %struct.F_triple* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %5) #12
  %6 = icmp eq %struct.hash_table* %0, null
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0
  store i8* %1, i8** %8, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = call i8* @hash_lookup(%struct.hash_table* nonnull %0, i8* nonnull %5) #12
  %16 = icmp ne i8* %15, null
  br label %17

; <label>:17:                                     ; preds = %3, %7
  %18 = phi i1 [ %16, %7 ], [ false, %3 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %5) #12
  ret i1 %18
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
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.132, i64 0, i64 0), i64 %4) #12
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.133, i64 0, i64 0), i64 %6) #12
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.134, i64 0, i64 0), i64 %8, double %79) #12
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.135, i64 0, i64 0), i64 %73) #12
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

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash(i8* nocapture readonly, i64) #9 {
  %3 = bitcast i8* %0 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = tail call i64 @hash_pjw(i8* %4, i64 %1) #14
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = xor i64 %8, %5
  %10 = urem i64 %9, %1
  ret i64 %10
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash_no_name(i8* nocapture readonly, i64) local_unnamed_addr #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @triple_compare(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = tail call zeroext i1 @same_name(i8* %20, i8* %22) #12
  br label %24

; <label>:24:                                     ; preds = %18, %10, %2
  %25 = phi i1 [ false, %10 ], [ false, %2 ], [ %23, %18 ]
  ret i1 %25
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @triple_compare_ino_str(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i32 @strcmp(i8* %20, i8* %22) #12
  %24 = icmp eq i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %18, %10, %2
  %26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %18 ]
  ret i1 %26
}

; Function Attrs: nounwind sspstrong uwtable
define void @triple_free(i8* nocapture) #6 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #12
  tail call void @free(i8* %0) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #6 {
  %6 = alloca [41 x i8], align 16
  %7 = and i32 %2, 3
  %8 = and i32 %2, 32
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 1024, i32 1000
  %11 = tail call %struct.lconv* @localeconv() #12
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i64 @strlen(i8* %13) #14
  %15 = add i64 %14, -1
  %16 = icmp ult i64 %15, 16
  %17 = select i1 %16, i64 %14, i64 1
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i64 0, i64 0)
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i64 @strlen(i8* %22) #14
  %24 = icmp ult i64 %23, 17
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.153, i64 0, i64 0)
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
  %82 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.154, i64 0, i64 0), x86_fp80 %81) #12
  %83 = tail call i64 @strlen(i8* %1) #14
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
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.155, i64 0, i64 0), x86_fp80 %105) #12
  %107 = tail call i64 @strlen(i8* %1) #14
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
  %138 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.154, i64 0, i64 0), x86_fp80 %137) #12
  %139 = tail call i64 @strlen(i8* %1) #14
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
  %279 = tail call i64 @strlen(i8* %25) #14
  %280 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 41, i8* nonnull %280) #12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %280, i8* %271, i64 %278, i32 1, i1 false) #12
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %302, i64 %298, i32 1, i1 false) #12
  %303 = icmp eq i64 %301, 0
  br i1 %303, label %306, label %304

; <label>:304:                                    ; preds = %294
  %305 = getelementptr inbounds i8, i8* %300, i64 %281
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %305, i8* %25, i64 %279, i32 1, i1 false) #12
  br label %282

; <label>:306:                                    ; preds = %294
  call void @llvm.lifetime.end(i64 41, i8* nonnull %280) #12
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %16

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.158, i64 0, i64 0)) #12
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.159, i64 0, i64 0)) #12
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.160, i64 0, i64 0)) #12
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
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #14
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #12
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.161, i64 0, i64 0)) #12
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #12
  br label %70

; <label>:66:                                     ; preds = %32
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #12
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
  %77 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.160, i64 0, i64 0)) #12
  %78 = icmp ne i8* %77, null
  %79 = select i1 %78, i64 512, i64 1024
  store i64 %79, i64* %2, align 8
  br label %80

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ 4, %76 ], [ %73, %72 ]
  ret i32 %81
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
define i64 @mbsalign(i8*, i8*, i64, i64* nocapture, i32, i32) local_unnamed_addr #6 {
  %7 = ptrtoint i8* %1 to i64
  %8 = tail call i64 @strlen(i8* %0) #14
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
declare i32 @iswcntrl(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.174, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.175, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.176, i64 0, i64 0), i64 3) #14
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.187, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.188, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.189, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.189, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.189, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.188, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.188, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.188, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.189, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.190, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.191, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.192, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.193, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.189, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.188, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

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
define zeroext i1 @same_name(i8*, i8*) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = tail call i8* @last_component(i8* %1) #14
  %7 = tail call i64 @base_len(i8* %5) #14
  %8 = tail call i64 @base_len(i8* %6) #14
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %43

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @memcmp(i8* %5, i8* %6, i64 %7) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

; <label>:13:                                     ; preds = %10
  %14 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %14) #12
  %15 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %15) #12
  %16 = tail call i8* @dir_name(i8* %0) #12
  %17 = tail call i8* @dir_name(i8* %1) #12
  %18 = call i32 @__xstat(i32 1, i8* nonnull %16, %struct.stat* nonnull %3) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %13
  %21 = tail call i32* @__errno_location() #1
  %22 = load i32, i32* %21, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i64 0, i64 0), i8* %16) #12
  br label %23

; <label>:23:                                     ; preds = %13, %20
  %24 = call i32 @__xstat(i32 1, i8* nonnull %17, %struct.stat* nonnull %4) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = tail call i32* @__errno_location() #1
  %28 = load i32, i32* %27, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.204, i64 0, i64 0), i8* %17) #12
  br label %29

; <label>:29:                                     ; preds = %23, %26
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br label %41

; <label>:41:                                     ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  call void @free(i8* %16) #12
  call void @free(i8* %17) #12
  call void @llvm.lifetime.end(i64 144, i8* nonnull %15) #12
  call void @llvm.lifetime.end(i64 144, i8* nonnull %14) #12
  br label %43

; <label>:43:                                     ; preds = %2, %41, %10
  %44 = phi i1 [ %42, %41 ], [ false, %10 ], [ false, %2 ]
  ret i1 %44
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @save_cwd(%struct.saved_cwd* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  store i8* null, i8** %2, align 8
  %3 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.207, i64 0, i64 0), i32 0) #12
  %4 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 0
  store i32 %3, i32* %4, align 8
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @getcwd(i8* null, i64 0) #12
  store i8* %7, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  %9 = sext i1 %8 to i32
  br label %12

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @set_cloexec_flag(i32 %3, i1 zeroext true) #12
  br label %12

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i32 [ %9, %6 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @restore_cwd(%struct.saved_cwd* nocapture readonly) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @fchdir(i32 %3) #12
  br label %11

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = tail call i32 @chdir_long(i8* %9) #12
  br label %11

; <label>:11:                                     ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @free_cwd(%struct.saved_cwd* nocapture readonly) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @close(i32 %3) #12
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  tail call void @free(i8* %9) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.212, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.213, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.214, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.215, i64 0, i64 0), i32 5) #12
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.216, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.217, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.218, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.219, i64 0, i64 0), i32 5) #12
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.220, i64 0, i64 0), i32 5) #12
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.221, i64 0, i64 0), i32 5) #12
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.222, i64 0, i64 0), i32 5) #12
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.223, i64 0, i64 0), i32 5) #12
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.224, i64 0, i64 0), i32 5) #12
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.225, i64 0, i64 0), i32 5) #12
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.228, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.229, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.230, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.231, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.232, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.233, i64 0, i64 0), i32 5) #12
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.246, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.247, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xgetcwd() local_unnamed_addr #6 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #12
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #1
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1
}

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
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.252, i64 0, i64 %19
  store i8 %2, i8* %8, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %21, align 1
  br label %25

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %17, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0), %22 ]
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.258, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.259, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
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
define i32 @chdir_long(i8*) local_unnamed_addr #6 {
  %2 = tail call i32 @chdir(i8* %0) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %118, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 36
  br i1 %7, label %8, label %118

; <label>:8:                                      ; preds = %4
  %9 = tail call i64 @strlen(i8* %0) #14
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.264, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #15
  unreachable

; <label>:13:                                     ; preds = %8
  %14 = icmp ugt i64 %9, 4095
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %13
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.266, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #15
  unreachable

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @strspn(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.267, i64 0, i64 0)) #12
  switch i64 %17, label %33 [
    i64 2, label %18
    i64 0, label %38
  ]

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds i8, i8* %0, i64 3
  %20 = ptrtoint i8* %10 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = tail call i8* @memchr(i8* %19, i32 47, i64 %22) #14
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18
  store i32 36, i32* %5, align 4
  br label %118

; <label>:26:                                     ; preds = %18
  store i8 0, i8* %23, align 1
  %27 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %0, i32 67840) #12
  %28 = icmp slt i32 %27, 0
  store i8 47, i8* %23, align 1
  br i1 %28, label %106, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds i8, i8* %23, i64 1
  %31 = tail call i64 @strspn(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.267, i64 0, i64 0)) #12
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  br label %38

; <label>:33:                                     ; preds = %16
  %34 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.267, i64 0, i64 0), i32 67840) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %106, label %36

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds i8, i8* %0, i64 %17
  br label %38

; <label>:38:                                     ; preds = %29, %16, %36
  %39 = phi i32 [ %34, %36 ], [ -100, %16 ], [ %27, %29 ]
  %40 = phi i8* [ %37, %36 ], [ %0, %16 ], [ %32, %29 ]
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 47
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.268, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #15
  unreachable

; <label>:44:                                     ; preds = %38
  %45 = icmp ugt i8* %40, %10
  br i1 %45, label %52, label %46

; <label>:46:                                     ; preds = %44
  %47 = ptrtoint i8* %10 to i64
  %48 = ptrtoint i8* %40 to i64
  %49 = sub i64 %47, %48
  %50 = icmp sgt i64 %49, 4095
  br i1 %50, label %51, label %83

; <label>:51:                                     ; preds = %46
  br label %53

; <label>:52:                                     ; preds = %44
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.269, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #15
  unreachable

; <label>:53:                                     ; preds = %51, %74
  %54 = phi i64 [ %78, %74 ], [ %48, %51 ]
  %55 = phi i8* [ %77, %74 ], [ %40, %51 ]
  %56 = phi i32 [ %66, %74 ], [ %39, %51 ]
  %57 = tail call i8* @memrchr(i8* %55, i32 47, i64 4096) #14
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %53
  store i32 36, i32* %5, align 4
  br label %118

; <label>:60:                                     ; preds = %53
  store i8 0, i8* %57, align 1
  %61 = ptrtoint i8* %57 to i64
  %62 = sub i64 %61, %54
  %63 = icmp slt i64 %62, 4096
  br i1 %63, label %65, label %64

; <label>:64:                                     ; preds = %60
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.270, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #15
  unreachable

; <label>:65:                                     ; preds = %60
  %66 = tail call i32 (i32, i8*, i32, ...) @openat(i32 %56, i8* %55, i32 67840) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %81, label %68

; <label>:68:                                     ; preds = %65
  %69 = icmp sgt i32 %56, -1
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %68
  %71 = tail call i32 @close(i32 %56) #12
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

; <label>:73:                                     ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.271, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #15
  unreachable

; <label>:74:                                     ; preds = %68, %70
  store i8 47, i8* %57, align 1
  %75 = getelementptr inbounds i8, i8* %57, i64 1
  %76 = tail call i64 @strspn(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.267, i64 0, i64 0)) #12
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = ptrtoint i8* %77 to i64
  %79 = sub i64 %47, %78
  %80 = icmp sgt i64 %79, 4095
  br i1 %80, label %53, label %82

; <label>:81:                                     ; preds = %65
  store i8 47, i8* %57, align 1
  br label %108

; <label>:82:                                     ; preds = %74
  br label %83

; <label>:83:                                     ; preds = %82, %46
  %84 = phi i32 [ %39, %46 ], [ %66, %82 ]
  %85 = phi i8* [ %40, %46 ], [ %77, %82 ]
  %86 = icmp ult i8* %85, %10
  br i1 %86, label %87, label %96

; <label>:87:                                     ; preds = %83
  %88 = tail call i32 (i32, i8*, i32, ...) @openat(i32 %84, i8* %85, i32 67840) #12
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %108, label %90

; <label>:90:                                     ; preds = %87
  %91 = icmp sgt i32 %84, -1
  br i1 %91, label %92, label %96

; <label>:92:                                     ; preds = %90
  %93 = tail call i32 @close(i32 %84) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %92
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.271, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #15
  unreachable

; <label>:96:                                     ; preds = %90, %92, %83
  %97 = phi i32 [ %84, %83 ], [ %88, %92 ], [ %88, %90 ]
  %98 = tail call i32 @fchdir(i32 %97) #12
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

; <label>:100:                                    ; preds = %96
  %101 = icmp sgt i32 %97, -1
  br i1 %101, label %102, label %118

; <label>:102:                                    ; preds = %100
  %103 = tail call i32 @close(i32 %97) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

; <label>:105:                                    ; preds = %102
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.271, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #15
  unreachable

; <label>:106:                                    ; preds = %26, %33
  %107 = load i32, i32* %5, align 4
  br label %116

; <label>:108:                                    ; preds = %87, %81, %96
  %109 = phi i32 [ %56, %81 ], [ %97, %96 ], [ %84, %87 ]
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %109, -1
  br i1 %111, label %112, label %116

; <label>:112:                                    ; preds = %108
  %113 = tail call i32 @close(i32 %109) #12
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

; <label>:115:                                    ; preds = %112
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.271, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.265, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #15
  unreachable

; <label>:116:                                    ; preds = %106, %108, %112
  %117 = phi i32 [ %107, %106 ], [ %110, %108 ], [ %110, %112 ]
  store i32 %117, i32* %5, align 4
  br label %118

; <label>:118:                                    ; preds = %116, %25, %59, %100, %102, %1, %4
  %119 = phi i32 [ %2, %4 ], [ 0, %1 ], [ -1, %116 ], [ -1, %25 ], [ -1, %59 ], [ 0, %100 ], [ 0, %102 ]
  ret i32 %119
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @get_fs_usage(i8*, i8* nocapture readnone, %struct.fs_usage* nocapture) local_unnamed_addr #6 {
  %4 = alloca %struct.utsname, align 1
  %5 = alloca %struct.statvfs, align 8
  %6 = alloca %struct.statfs, align 8
  %7 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start(i64 390, i8* nonnull %7) #12
  %8 = load i32, i32* @statvfs_works.statvfs_works_cache, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %3
  %11 = call i32 @uname(%struct.utsname* nonnull %4) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i64 0, i32 2, i64 0
  %15 = call i32 @strverscmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.274, i64 0, i64 0)) #14
  %16 = icmp sgt i32 %15, -1
  br label %17

; <label>:17:                                     ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* @statvfs_works.statvfs_works_cache, align 4
  br label %20

; <label>:20:                                     ; preds = %3, %17
  %21 = phi i32 [ %19, %17 ], [ %8, %3 ]
  call void @llvm.lifetime.end(i64 390, i8* nonnull %7) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %53, label %23

; <label>:23:                                     ; preds = %20
  %24 = bitcast %struct.statvfs* %5 to i8*
  call void @llvm.lifetime.start(i64 112, i8* nonnull %24) #12
  %25 = call i32 @statvfs(i8* %0, %struct.statvfs* nonnull %5) #12
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %51, label %27

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i64 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = select i1 %30, i64 %29, i64 %32
  %34 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i64 0, i32 2
  %36 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 1
  %37 = bitcast i64* %35 to <2 x i64>*
  %38 = load <2 x i64>, <2 x i64>* %37, align 8
  %39 = bitcast i64* %36 to <2 x i64>*
  store <2 x i64> %38, <2 x i64>* %39, align 8
  %40 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i64 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 3
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 4
  %44 = lshr i64 %41, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %43, align 8
  %46 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %5, i64 0, i32 5
  %47 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 5
  %48 = bitcast i64* %46 to <2 x i64>*
  %49 = load <2 x i64>, <2 x i64>* %48, align 8
  %50 = bitcast i64* %47 to <2 x i64>*
  store <2 x i64> %49, <2 x i64>* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %23, %27
  %52 = phi i32 [ 0, %27 ], [ -1, %23 ]
  call void @llvm.lifetime.end(i64 112, i8* nonnull %24) #12
  br label %79

; <label>:53:                                     ; preds = %20
  %54 = bitcast %struct.statfs* %6 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %54) #12
  %55 = call i32 @statfs(i8* %0, %struct.statfs* nonnull %6) #12
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %77, label %57

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i64 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i64 0, i32 2
  %62 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 1
  %63 = bitcast i64* %61 to <2 x i64>*
  %64 = load <2 x i64>, <2 x i64>* %63, align 8
  %65 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %65, align 8
  %66 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i64 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 3
  store i64 %67, i64* %68, align 8
  %69 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 4
  %70 = lshr i64 %67, 63
  %71 = trunc i64 %70 to i8
  store i8 %71, i8* %69, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i64 0, i32 5
  %73 = getelementptr inbounds %struct.fs_usage, %struct.fs_usage* %2, i64 0, i32 5
  %74 = bitcast i64* %72 to <2 x i64>*
  %75 = load <2 x i64>, <2 x i64>* %74, align 8
  %76 = bitcast i64* %73 to <2 x i64>*
  store <2 x i64> %75, <2 x i64>* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %53, %57
  %78 = phi i32 [ 0, %57 ], [ -1, %53 ]
  call void @llvm.lifetime.end(i64 120, i8* nonnull %54) #12
  br label %79

; <label>:79:                                     ; preds = %77, %51
  %80 = phi i32 [ %52, %51 ], [ %78, %77 ]
  ret i32 %80
}

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strverscmp(i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @statvfs(i8* nocapture readonly, %struct.statvfs* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @statfs(i8*, %struct.statfs*) local_unnamed_addr #2

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
  %18 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.279, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.280, i64 0, i64 0))
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %353, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %21) #12
  store i8* null, i8** %4, align 8
  %22 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %22) #12
  store i64 0, i64* %5, align 8
  %23 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #12
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %26) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %27) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %28) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %29) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %30) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %31) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %32) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %33) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %34) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %35) #12
  call void @llvm.lifetime.start(i64 1, i8* nonnull %16) #12
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @sscanf(i8* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.281, i64 0, i64 0), i32* nonnull %6, i32* nonnull %7, i32* nonnull %14, i32* nonnull %15, i32* nonnull %8, i32* nonnull %9, i8* nonnull %16) #12
  switch i32 %39, label %332 [
    i32 7, label %40
    i32 3, label %40
  ]

; <label>:40:                                     ; preds = %36, %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.282, i64 0, i64 0)) #14
  %46 = icmp eq i8* %45, null
  br i1 %46, label %332, label %47

; <label>:47:                                     ; preds = %40
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.283, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i8* nonnull %16) #12
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
  %67 = call i64 @strlen(i8* %66) #14
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
  %117 = call i64 @strlen(i8* %116) #14
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
  %168 = call i64 @strlen(i8* %167) #14
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
  %214 = call noalias i8* @xmalloc(i64 56) #12
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %45, i64 %216
  %218 = call noalias i8* @xstrdup(i8* %217) #12
  %219 = bitcast i8* %214 to i8**
  store i8* %218, i8** %219, align 8
  %220 = load i8*, i8** %4, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = call noalias i8* @xstrdup(i8* %223) #12
  %225 = getelementptr inbounds i8, i8* %214, i64 8
  %226 = bitcast i8* %225 to i8**
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = call noalias i8* @xstrdup(i8* %230) #12
  %232 = getelementptr inbounds i8, i8* %214, i64 16
  %233 = bitcast i8* %232 to i8**
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %45, i64 %235
  %237 = call noalias i8* @xstrdup(i8* %236) #12
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
  %261 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.284, i64 0, i64 0)) #12
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %299, label %263

; <label>:263:                                    ; preds = %213
  %264 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.285, i64 0, i64 0)) #12
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %299, label %266

; <label>:266:                                    ; preds = %263
  %267 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.286, i64 0, i64 0)) #12
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %299, label %269

; <label>:269:                                    ; preds = %266
  %270 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.287, i64 0, i64 0)) #12
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %299, label %272

; <label>:272:                                    ; preds = %269
  %273 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.288, i64 0, i64 0)) #12
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %299, label %275

; <label>:275:                                    ; preds = %272
  %276 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.289, i64 0, i64 0)) #12
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %299, label %278

; <label>:278:                                    ; preds = %275
  %279 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.290, i64 0, i64 0)) #12
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %299, label %281

; <label>:281:                                    ; preds = %278
  %282 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.291, i64 0, i64 0)) #12
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %299, label %284

; <label>:284:                                    ; preds = %281
  %285 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.292, i64 0, i64 0)) #12
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %299, label %287

; <label>:287:                                    ; preds = %284
  %288 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.293, i64 0, i64 0)) #12
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %299, label %290

; <label>:290:                                    ; preds = %287
  %291 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.294, i64 0, i64 0)) #12
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %290
  %294 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.295, i64 0, i64 0)) #12
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

; <label>:296:                                    ; preds = %293
  %297 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.296, i64 0, i64 0)) #12
  %298 = icmp eq i32 %297, 0
  br label %299

; <label>:299:                                    ; preds = %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %213
  %300 = phi i1 [ true, %293 ], [ true, %290 ], [ true, %287 ], [ true, %284 ], [ true, %281 ], [ true, %278 ], [ true, %275 ], [ true, %272 ], [ true, %269 ], [ true, %266 ], [ true, %263 ], [ true, %213 ], [ %298, %296 ]
  %301 = zext i1 %300 to i8
  %302 = and i8 %242, -2
  %303 = or i8 %302, %301
  store i8 %303, i8* %240, align 8
  %304 = load i8*, i8** %219, align 8
  %305 = call i8* @strchr(i8* %304, i32 58) #12
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
  %315 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.297, i64 0, i64 0)) #12
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %323, label %317

; <label>:317:                                    ; preds = %314
  %318 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.298, i64 0, i64 0)) #12
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

; <label>:320:                                    ; preds = %307, %310, %317
  %321 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.299, i64 0, i64 0), i8* nonnull %304) #12
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
  call void @llvm.lifetime.end(i64 1, i8* nonnull %16) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %35) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %34) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %33) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %32) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %31) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %30) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %29) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %28) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %27) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %26) #12
  %334 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #12
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %36

; <label>:336:                                    ; preds = %332
  br label %337

; <label>:337:                                    ; preds = %336, %20
  %338 = phi %struct.mount_entry** [ %3, %20 ], [ %333, %336 ]
  %339 = load i8*, i8** %4, align 8
  call void @free(i8* %339) #12
  %340 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = and i32 %341, 32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %348, label %344

; <label>:344:                                    ; preds = %337
  %345 = tail call i32* @__errno_location() #1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #12
  store i32 %346, i32* %345, align 4
  br label %351

; <label>:348:                                    ; preds = %337
  %349 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #12
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %352

; <label>:351:                                    ; preds = %348, %344
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #12
  br label %469

; <label>:352:                                    ; preds = %348
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #12
  br label %466

; <label>:353:                                    ; preds = %1
  %354 = tail call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21.300, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.280, i64 0, i64 0)) #12
  %355 = icmp eq %struct._IO_FILE* %354, null
  br i1 %355, label %500, label %356

; <label>:356:                                    ; preds = %353
  %357 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #12
  %358 = icmp eq %struct.mntent* %357, null
  br i1 %358, label %462, label %359

; <label>:359:                                    ; preds = %356
  br label %360

; <label>:360:                                    ; preds = %359, %448
  %361 = phi %struct.mntent* [ %459, %448 ], [ %357, %359 ]
  %362 = phi %struct.mount_entry** [ %458, %448 ], [ %3, %359 ]
  %363 = tail call i8* @hasmntopt(%struct.mntent* nonnull %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.301, i64 0, i64 0)) #12
  %364 = tail call noalias i8* @xmalloc(i64 56) #12
  %365 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = tail call noalias i8* @xstrdup(i8* %366) #12
  %368 = bitcast i8* %364 to i8**
  store i8* %367, i8** %368, align 8
  %369 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 1
  %370 = load i8*, i8** %369, align 8
  %371 = tail call noalias i8* @xstrdup(i8* %370) #12
  %372 = getelementptr inbounds i8, i8* %364, i64 8
  %373 = bitcast i8* %372 to i8**
  store i8* %371, i8** %373, align 8
  %374 = getelementptr inbounds i8, i8* %364, i64 16
  %375 = bitcast i8* %374 to i8**
  store i8* null, i8** %375, align 8
  %376 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 2
  %377 = load i8*, i8** %376, align 8
  %378 = tail call noalias i8* @xstrdup(i8* %377) #12
  %379 = getelementptr inbounds i8, i8* %364, i64 24
  %380 = bitcast i8* %379 to i8**
  store i8* %378, i8** %380, align 8
  %381 = getelementptr inbounds i8, i8* %364, i64 40
  %382 = load i8, i8* %381, align 8
  %383 = or i8 %382, 4
  store i8 %383, i8* %381, align 8
  %384 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.284, i64 0, i64 0)) #12
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %424, label %386

; <label>:386:                                    ; preds = %360
  %387 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.285, i64 0, i64 0)) #12
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %424, label %389

; <label>:389:                                    ; preds = %386
  %390 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.286, i64 0, i64 0)) #12
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %424, label %392

; <label>:392:                                    ; preds = %389
  %393 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.287, i64 0, i64 0)) #12
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %424, label %395

; <label>:395:                                    ; preds = %392
  %396 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.288, i64 0, i64 0)) #12
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %424, label %398

; <label>:398:                                    ; preds = %395
  %399 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.289, i64 0, i64 0)) #12
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %424, label %401

; <label>:401:                                    ; preds = %398
  %402 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.290, i64 0, i64 0)) #12
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %424, label %404

; <label>:404:                                    ; preds = %401
  %405 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.291, i64 0, i64 0)) #12
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %424, label %407

; <label>:407:                                    ; preds = %404
  %408 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.292, i64 0, i64 0)) #12
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %424, label %410

; <label>:410:                                    ; preds = %407
  %411 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.293, i64 0, i64 0)) #12
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %424, label %413

; <label>:413:                                    ; preds = %410
  %414 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.294, i64 0, i64 0)) #12
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %424, label %416

; <label>:416:                                    ; preds = %413
  %417 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.295, i64 0, i64 0)) #12
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %424, label %419

; <label>:419:                                    ; preds = %416
  %420 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.296, i64 0, i64 0)) #12
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
  %430 = tail call i8* @strchr(i8* %429, i32 58) #12
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
  %440 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.297, i64 0, i64 0)) #12
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %448, label %442

; <label>:442:                                    ; preds = %439
  %443 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.298, i64 0, i64 0)) #12
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

; <label>:445:                                    ; preds = %432, %435, %442
  %446 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.299, i64 0, i64 0), i8* nonnull %429) #12
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
  %459 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #12
  %460 = icmp eq %struct.mntent* %459, null
  br i1 %460, label %461, label %360

; <label>:461:                                    ; preds = %448
  br label %462

; <label>:462:                                    ; preds = %461, %356
  %463 = phi %struct.mount_entry** [ %3, %356 ], [ %458, %461 ]
  %464 = tail call i32 @endmntent(%struct._IO_FILE* nonnull %354) #12
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
  call void @free(i8* %482) #12
  %483 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 1
  %484 = load i8*, i8** %483, align 8
  call void @free(i8* %484) #12
  %485 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 2
  %486 = load i8*, i8** %485, align 8
  call void @free(i8* %486) #12
  %487 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 5
  %488 = load i8, i8* %487, align 8
  %489 = and i8 %488, 4
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %494, label %491

; <label>:491:                                    ; preds = %476
  %492 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 3
  %493 = load i8*, i8** %492, align 8
  call void @free(i8* %493) #12
  br label %494

; <label>:494:                                    ; preds = %476, %491
  %495 = bitcast %struct.mount_entry* %477 to i8*
  call void @free(i8* %495) #12
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

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

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
  tail call void @free(i8* %3) #12
  %4 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #12
  %6 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #12
  %8 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 5
  %9 = load i8, i8* %8, align 8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 8
  tail call void @free(i8* %14) #12
  br label %15

; <label>:15:                                     ; preds = %1, %12
  %16 = bitcast %struct.mount_entry* %0 to i8*
  tail call void @free(i8* %16) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @areadlink_with_size(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = icmp ult i64 %1, 1025
  %4 = add i64 %1, 1
  %5 = select i1 %3, i64 %4, i64 1025
  %6 = tail call noalias i8* @malloc(i64 %5) #12
  %7 = icmp eq i8* %6, null
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %27
  %10 = phi i8* [ %29, %27 ], [ %6, %8 ]
  %11 = phi i64 [ %28, %27 ], [ %5, %8 ]
  %12 = tail call i64 @readlink(i8* %0, i8* nonnull %10, i64 %11) #12
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* nonnull %10) #12
  store i32 %16, i32* %15, align 4
  br label %36

; <label>:19:                                     ; preds = %14, %9
  %20 = icmp ult i64 %12, %11
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 0, i8* %22, align 1
  br label %36

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %10) #12
  %24 = icmp ult i64 %11, 4611686018427387904
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %23
  %26 = shl i64 %11, 1
  br label %27

; <label>:27:                                     ; preds = %25, %31
  %28 = phi i64 [ %26, %25 ], [ 9223372036854775807, %31 ]
  %29 = tail call noalias i8* @malloc(i64 %28) #12
  %30 = icmp eq i8* %29, null
  br i1 %30, label %35, label %9

; <label>:31:                                     ; preds = %23
  %32 = icmp ult i64 %11, 9223372036854775807
  br i1 %32, label %27, label %33

; <label>:33:                                     ; preds = %31
  %34 = tail call i32* @__errno_location() #1
  store i32 12, i32* %34, align 4
  br label %36

; <label>:35:                                     ; preds = %27
  br label %36

; <label>:36:                                     ; preds = %35, %2, %18, %21, %33
  %37 = phi i8* [ null, %33 ], [ %10, %21 ], [ null, %18 ], [ null, %2 ], [ null, %35 ]
  ret i8* %37
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

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
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.309, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.310, i64 0, i64 0), i32 5) #12
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
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.311, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.312, i64 0, i64 0), i8* %26) #12
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
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.308, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.309, i64 0, i64 0)
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
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 {
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #12
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1
  %7 = and i32 %3, -2
  %8 = select i1 %1, i32 %6, i32 %7
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #12
  %12 = icmp eq i32 %11, -1
  %13 = sext i1 %12 to i32
  ret i32 %13

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #12
  ret i32 %2
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #12
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
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #12
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #12
  %28 = call i32 @fd_safer(i32 %27) #12
  ret i32 %28
}

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.321, i64 0, i64 0)) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_pjw(i8* nocapture readonly, i64) local_unnamed_addr #9 {
  %3 = load i8, i8* %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %2
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %16, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %5 ]
  %9 = phi i8* [ %15, %6 ], [ %0, %5 ]
  %10 = sext i8 %7 to i64
  %11 = shl i64 %8, 9
  %12 = lshr i64 %8, 55
  %13 = or i64 %11, %12
  %14 = add i64 %10, %13
  %15 = getelementptr inbounds i8, i8* %9, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %6
  br label %19

; <label>:19:                                     ; preds = %18, %2
  %20 = phi i64 [ 0, %2 ], [ %14, %18 ]
  %21 = urem i64 %20, %1
  ret i64 %21
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #12
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.326, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.327, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.328, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.329, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.329, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.330, i64 0, i64 0)) #12
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.331, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.326, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.326, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.326, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.326, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.332, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

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
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #12
  ret i32 %2
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
