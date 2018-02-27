; ModuleID = 'coreutils-8.27/src/split.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.numname = type { i32, [8 x i8] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.of_info = type { i8*, i32, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon.4 }
%union.anon.4 = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION]... [FILE [PREFIX]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [106 x i8] c"Output pieces of FILE to PREFIXaa, PREFIXab, ...;\0Adefault size is 1000 lines, and default PREFIX is 'x'.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.42 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.43 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [942 x i8] c"  -a, --suffix-length=N   generate suffixes of length N (default %d)\0A      --additional-suffix=SUFFIX  append an additional SUFFIX to file names\0A  -b, --bytes=SIZE        put SIZE bytes per output file\0A  -C, --line-bytes=SIZE   put at most SIZE bytes of records per output file\0A  -d                      use numeric suffixes starting at 0, not alphabetic\0A      --numeric-suffixes[=FROM]  same as -d, but allow setting the start value\0A  -e, --elide-empty-files  do not generate empty output files with '-n'\0A      --filter=COMMAND    write to shell COMMAND; file name is $FILE\0A  -l, --lines=NUMBER      put NUMBER lines/records per output file\0A  -n, --number=CHUNKS     generate CHUNKS output files; see explanation below\0A  -t, --separator=SEP     use SEP instead of newline as the record separator;\0A                            '\5C0' (zero) specifies the NUL character\0A  -u, --unbuffered        immediately copy input to output with '-n r/...'\0A\00", align 1
@.str.4 = private unnamed_addr constant [113 x i8] c"      --verbose           print a diagnostic just before each\0A                            output file is opened\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.44 = private unnamed_addr constant [153 x i8] c"\0AThe SIZE argument is an integer and optional unit (example: 10K is 10*1024).\0AUnits are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).\0A\00", align 1
@.str.7 = private unnamed_addr constant [340 x i8] c"\0ACHUNKS may be:\0A  N       split into N files based on size of input\0A  K/N     output Kth of N to stdout\0A  l/N     split into N files without splitting lines/records\0A  l/K/N   output Kth of N to stdout without splitting lines/records\0A  r/N     like 'l' but use round robin distribution\0A  r/K/N   likewise but only output Kth of N to stdout\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.56 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.58 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@infile = internal unnamed_addr global i8* null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@outbase = internal unnamed_addr global i8* null, align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"0123456789C:a:b:del:n:t:u\00", align 1
@longopts = internal constant [16 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 67 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i32 1, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i32 2, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"invalid suffix length\00", align 1
@suffix_length = internal unnamed_addr global i64 0, align 8
@.str.16 = private unnamed_addr constant [48 x i8] c"invalid suffix %s, contains directory separator\00", align 1
@additional_suffix = internal unnamed_addr global i8* null, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"cannot split in more than one way\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@main.multipliers = internal constant [13 x i8] c"bEGKkMmPTYZ0\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"r/\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"l/\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"invalid number of chunks\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"invalid chunk number\00", align 1
@unbuffered = internal unnamed_addr global i1 false, align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"empty record separator\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"multi-character separator %s\00", align 1
@eolchar = internal unnamed_addr global i32 -1, align 4
@.str.26 = private unnamed_addr constant [40 x i8] c"multiple separator characters specified\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"line count option -%s%c... is too large\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@suffix_alphabet = internal unnamed_addr global i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), align 8
@.str.29 = private unnamed_addr constant [45 x i8] c"%s: invalid start value for numerical suffix\00", align 1
@numeric_suffix_start = internal unnamed_addr global i8* null, align 8
@elide_empty_files = internal unnamed_addr global i1 false, align 1
@filter_command = internal unnamed_addr global i8* null, align 8
@.str.30 = private unnamed_addr constant [22 x i8] c"invalid IO block size\00", align 1
@verbose = internal unnamed_addr global i1 false, align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"--filter does not process a chunk extracted to stdout\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@suffix_auto = internal unnamed_addr global i1 false, align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"the suffix length needs to be at least %lu\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.38 = private unnamed_addr constant [64 x i8] c"numerical suffix start value is too large for the suffix length\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@in_stat_buf = internal global %struct.stat zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"%s: cannot determine file size\00", align 1
@newblocked = internal global %struct.__sigset_t zeroinitializer, align 8
@oldblocked = internal global %struct.__sigset_t zeroinitializer, align 8
@.str.99 = private unnamed_addr constant [35 x i8] c"k && n && k <= n && n <= file_size\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"src/split.c\00", align 1
@__PRETTY_FUNCTION__.bytes_chunk_extract = private unnamed_addr constant [78 x i8] c"void bytes_chunk_extract(uintmax_t, uintmax_t, char *, size_t, size_t, off_t)\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"n && k <= n && n <= file_size\00", align 1
@__PRETTY_FUNCTION__.lines_chunk_split = private unnamed_addr constant [76 x i8] c"void lines_chunk_split(uintmax_t, uintmax_t, char *, size_t, size_t, off_t)\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@outfile = internal unnamed_addr global i8* null, align 8
@output_desc = internal unnamed_addr global i32 -1, align 4
@filter_pid = internal unnamed_addr global i32 0, align 4
@n_open_pipes = internal unnamed_addr global i64 0, align 8
@open_pipes = internal unnamed_addr global i32* null, align 8
@.str.103 = private unnamed_addr constant [26 x i8] c"waiting for child process\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.105 = private unnamed_addr constant [41 x i8] c"with FILE=%s, signal %s from command: %s\00", align 1
@.str.106 = private unnamed_addr constant [39 x i8] c"with FILE=%s, exit %d from command: %s\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"unknown status from command (0x%X)\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"creating file %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"%s would overwrite input; aborting\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c"%s: error truncating\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.88 = private unnamed_addr constant [40 x i8] c"failed to set FILE environment variable\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"executing with FILE=%s\0A\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"failed to create pipe\00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"closing prior pipe\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"closing output pipe\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"moving input pipe\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"closing input pipe\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"failed to run command: \22%s -c %s\22\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"fork system call failed\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"failed to close input pipe\00", align 1
@open_pipes_alloc = internal global i64 0, align 8
@next_file_name.outfile_length = internal unnamed_addr global i64 0, align 8
@next_file_name.outbase_length = internal unnamed_addr global i64 0, align 8
@next_file_name.addsuf_length = internal unnamed_addr global i64 0, align 8
@next_file_name.sufindex = internal unnamed_addr global i64* null, align 8
@outfile_mid = internal unnamed_addr global i8* null, align 8
@.str.78 = private unnamed_addr constant [8 x i8] c"! widen\00", align 1
@__PRETTY_FUNCTION__.next_file_name = private unnamed_addr constant [26 x i8] c"void next_file_name(void)\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"output file suffixes exhausted\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"line-bytes\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"elide-empty-files\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"unbuffered\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"suffix-length\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"additional-suffix\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"numeric-suffixes\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"-io-blksize\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.47 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.108 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.109 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.110 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.113, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.114, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.115, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.116, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.117, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.119, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.120, i32 0, i32 0), i8* null], align 16
@.str.111 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.113 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.114 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.115 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.116 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.117 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.118 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.119 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.120 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.121 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.122 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.123 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.124 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.125 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.126 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.127 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.142 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.143 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.144 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.145 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.146 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.147 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.148 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.149 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.150 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.151 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.152 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.153 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.154 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.155 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.158 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.159 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.160 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.161 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.162 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.163 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.178 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.186 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16
@.str.197 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.198 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.201 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.206 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.209 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.210 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.211 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.212 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.213 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.214 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.215 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %54

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.43, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([942 x i8], [942 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* %22, i32 2) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.44, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([340 x i8], [340 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0), i32 5) #11
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0)) #11
  %41 = tail call i8* @setlocale(i32 5, i8* null) #11
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i64 3) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.56, i64 0, i64 0), i32 5) #11
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11
  br label %49

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i64 0, i64 0), i32 5) #11
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0)) #11
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.58, i64 0, i64 0), i32 5) #11
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0)) #11
  br label %54

; <label>:54:                                     ; preds = %49, %3
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
  %3 = alloca i64, align 8
  %4 = alloca [21 x i8], align 16
  %5 = alloca [21 x i8], align 16
  %6 = alloca %struct.sigaction, align 8
  %7 = tail call i32 @getpagesize() #1
  %8 = sext i32 %7 to i64
  %9 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %9) #11
  %10 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11
  %11 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11
  %12 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11
  %13 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** @infile, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** @outbase, align 8
  %14 = xor i64 %8, -1
  br label %15

; <label>:15:                                     ; preds = %175, %2
  %16 = phi i64 [ 0, %2 ], [ %176, %175 ]
  %17 = phi i64 [ 0, %2 ], [ %177, %175 ]
  %18 = phi i32 [ 0, %2 ], [ %178, %175 ]
  %19 = phi i64 [ 0, %2 ], [ %179, %175 ]
  %20 = phi i32 [ 0, %2 ], [ %180, %175 ]
  %21 = load i32, i32* @optind, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %22, i32 %21, i32 1
  %24 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([16 x %struct.option], [16 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  switch i32 %24, label %217 [
    i32 -1, label %218
    i32 97, label %25
    i32 131, label %29
    i32 98, label %38
    i32 108, label %46
    i32 67, label %54
    i32 110, label %62
    i32 117, label %116
    i32 116, label %117
    i32 48, label %149
    i32 49, label %149
    i32 50, label %149
    i32 51, label %149
    i32 52, label %149
    i32 53, label %149
    i32 54, label %149
    i32 55, label %149
    i32 56, label %149
    i32 57, label %149
    i32 100, label %172
    i32 101, label %205
    i32 129, label %206
    i32 130, label %208
    i32 128, label %212
    i32 -130, label %213
    i32 -131, label %214
  ]

; <label>:25:                                     ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %28 = tail call i64 @xdectoumax(i8* %26, i64 0, i64 2305843009213693951, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* %27, i32 0) #11
  store i64 %28, i64* @suffix_length, align 8
  br label %175

; <label>:29:                                     ; preds = %15
  %30 = load i8*, i8** @optarg, align 8
  %31 = tail call i8* @last_component(i8* %30) #13
  %32 = icmp eq i8* %31, %30
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %29
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 5) #11
  %35 = load i8*, i8** @optarg, align 8
  %36 = tail call i8* @quote(i8* %35) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %34, i8* %36) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:37:                                     ; preds = %29
  store i8* %30, i8** @additional_suffix, align 8
  br label %175

; <label>:38:                                     ; preds = %15
  %39 = icmp eq i32 %20, 0
  br i1 %39, label %42, label %40

; <label>:40:                                     ; preds = %38
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %41) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** @optarg, align 8
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #11
  %45 = tail call i64 @xdectoumax(i8* %43, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0), i8* %44, i32 0) #11
  br label %175

; <label>:46:                                     ; preds = %15
  %47 = icmp eq i32 %20, 0
  br i1 %47, label %50, label %48

; <label>:48:                                     ; preds = %46
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:50:                                     ; preds = %46
  %51 = load i8*, i8** @optarg, align 8
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 5) #11
  %53 = tail call i64 @xdectoumax(i8* %51, i64 1, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* %52, i32 0) #11
  br label %175

; <label>:54:                                     ; preds = %15
  %55 = icmp eq i32 %20, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %54
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %57) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** @optarg, align 8
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #11
  %61 = tail call i64 @xdectoumax(i8* %59, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0), i8* %60, i32 0) #11
  br label %175

; <label>:62:                                     ; preds = %15
  %63 = icmp eq i32 %20, 0
  br i1 %63, label %64, label %75

; <label>:64:                                     ; preds = %62
  %65 = tail call i16** @__ctype_b_loc() #1
  %66 = load i16*, i16** %65, align 8
  %67 = load i8*, i8** @optarg, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i16, i16* %66, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = and i16 %71, 8192
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %88, label %74

; <label>:74:                                     ; preds = %64
  br label %77

; <label>:75:                                     ; preds = %62
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %76) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:77:                                     ; preds = %74, %77
  %78 = phi i8* [ %79, %77 ], [ %67, %74 ]
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  store i8* %79, i8** @optarg, align 8
  %80 = load i16*, i16** %65, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, i16* %80, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = and i16 %84, 8192
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %77

; <label>:87:                                     ; preds = %77
  br label %88

; <label>:88:                                     ; preds = %87, %64
  %89 = phi i8* [ %67, %64 ], [ %79, %87 ]
  %90 = tail call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i64 2) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %88
  %93 = tail call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i64 2) #13
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

; <label>:95:                                     ; preds = %88, %92
  %96 = phi i32 [ 6, %92 ], [ 7, %88 ]
  %97 = getelementptr inbounds i8, i8* %89, i64 2
  store i8* %97, i8** @optarg, align 8
  br label %98

; <label>:98:                                     ; preds = %95, %92
  %99 = phi i8* [ %89, %92 ], [ %97, %95 ]
  %100 = phi i32 [ 5, %92 ], [ %96, %95 ]
  %101 = tail call i8* @strchr(i8* %99, i32 47) #11
  %102 = icmp eq i8* %101, null
  br i1 %102, label %113, label %103

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds i8, i8* %101, i64 1
  %105 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  %106 = tail call i64 @xdectoumax(i8* %104, i64 1, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* %105, i32 0) #11
  %107 = load i8*, i8** @optarg, align 8
  %108 = icmp eq i8* %107, %101
  br i1 %108, label %175, label %109

; <label>:109:                                    ; preds = %103
  store i8 0, i8* %101, align 1
  %110 = load i8*, i8** @optarg, align 8
  %111 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i64 0, i64 0), i32 5) #11
  %112 = tail call i64 @xdectoumax(i8* %110, i64 1, i64 %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* %111, i32 0) #11
  br label %175

; <label>:113:                                    ; preds = %98
  %114 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  %115 = tail call i64 @xdectoumax(i8* %99, i64 1, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* %114, i32 0) #11
  br label %175

; <label>:116:                                    ; preds = %15
  store i1 true, i1* @unbuffered, align 1
  br label %175

; <label>:117:                                    ; preds = %15
  %118 = load i8*, i8** @optarg, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %123

; <label>:121:                                    ; preds = %117
  %122 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %122) #11
  unreachable

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds i8, i8* %118, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %139, label %127

; <label>:127:                                    ; preds = %123
  %128 = icmp eq i8 %119, 92
  %129 = icmp eq i8 %125, 48
  %130 = and i1 %128, %129
  br i1 %130, label %131, label %135

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds i8, i8* %118, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %139, label %135

; <label>:135:                                    ; preds = %127, %131
  %136 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i32 5) #11
  %137 = load i8*, i8** @optarg, align 8
  %138 = tail call i8* @quote(i8* %137) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %136, i8* %138) #11
  unreachable

; <label>:139:                                    ; preds = %131, %123
  %140 = phi i8 [ %119, %123 ], [ 0, %131 ]
  %141 = load i32, i32* @eolchar, align 4
  %142 = icmp slt i32 %141, 0
  %143 = sext i8 %140 to i32
  %144 = icmp eq i32 %143, %141
  %145 = or i1 %142, %144
  br i1 %145, label %148, label %146

; <label>:146:                                    ; preds = %139
  %147 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %147) #11
  unreachable

; <label>:148:                                    ; preds = %139
  store i32 %143, i32* @eolchar, align 4
  br label %175

; <label>:149:                                    ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  switch i32 %20, label %150 [
    i32 0, label %153
    i32 4, label %152
  ]

; <label>:150:                                    ; preds = %149
  %151 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %151) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:152:                                    ; preds = %149
  br label %153

; <label>:153:                                    ; preds = %149, %152
  %154 = phi i64 [ 0, %149 ], [ %17, %152 ]
  %155 = icmp eq i32 %18, 0
  %156 = icmp eq i32 %18, %23
  %157 = or i1 %155, %156
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %153
  %159 = icmp ugt i64 %154, 1844674407370955161
  br i1 %159, label %167, label %160

; <label>:160:                                    ; preds = %153, %158
  %161 = phi i64 [ %154, %158 ], [ 0, %153 ]
  %162 = mul i64 %161, 10
  %163 = add nsw i32 %24, -48
  %164 = sext i32 %163 to i64
  %165 = add i64 %162, %164
  %166 = icmp ult i64 %165, %161
  br i1 %166, label %167, label %175

; <label>:167:                                    ; preds = %160, %158
  %168 = phi i64 [ %161, %160 ], [ %154, %158 ]
  %169 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %169) #11
  %170 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i32 5) #11
  %171 = call i8* @umaxtostr(i64 %168, i8* nonnull %169) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %170, i8* %171, i32 %24) #11
  unreachable

; <label>:172:                                    ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8** @suffix_alphabet, align 8
  %173 = load i8*, i8** @optarg, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %181

; <label>:175:                                    ; preds = %172, %203, %113, %212, %208, %206, %205, %148, %116, %58, %50, %42, %37, %25, %103, %109, %160
  %176 = phi i64 [ %16, %160 ], [ %112, %109 ], [ %16, %103 ], [ %16, %25 ], [ %16, %37 ], [ %16, %42 ], [ %16, %50 ], [ %16, %58 ], [ %16, %113 ], [ %16, %116 ], [ %16, %148 ], [ %16, %203 ], [ %16, %172 ], [ %16, %205 ], [ %16, %206 ], [ %16, %208 ], [ %16, %212 ]
  %177 = phi i64 [ %165, %160 ], [ %106, %109 ], [ %106, %103 ], [ %17, %25 ], [ %17, %37 ], [ %45, %42 ], [ %53, %50 ], [ %61, %58 ], [ %115, %113 ], [ %17, %116 ], [ %17, %148 ], [ %17, %203 ], [ %17, %172 ], [ %17, %205 ], [ %17, %206 ], [ %17, %208 ], [ %17, %212 ]
  %178 = phi i32 [ %23, %160 ], [ %18, %109 ], [ %18, %103 ], [ %18, %25 ], [ %18, %37 ], [ %18, %42 ], [ %18, %50 ], [ %18, %58 ], [ %18, %113 ], [ %18, %116 ], [ %18, %148 ], [ %18, %203 ], [ %18, %172 ], [ %18, %205 ], [ %18, %206 ], [ %18, %208 ], [ %18, %212 ]
  %179 = phi i64 [ %19, %160 ], [ %19, %109 ], [ %19, %103 ], [ %19, %25 ], [ %19, %37 ], [ %19, %42 ], [ %19, %50 ], [ %19, %58 ], [ %19, %113 ], [ %19, %116 ], [ %19, %148 ], [ %19, %203 ], [ %19, %172 ], [ %19, %205 ], [ %19, %206 ], [ %211, %208 ], [ %19, %212 ]
  %180 = phi i32 [ 4, %160 ], [ %100, %109 ], [ %100, %103 ], [ %20, %25 ], [ %20, %37 ], [ 1, %42 ], [ 3, %50 ], [ 2, %58 ], [ %100, %113 ], [ %20, %116 ], [ %20, %148 ], [ %20, %203 ], [ %20, %172 ], [ %20, %205 ], [ %20, %206 ], [ %20, %208 ], [ %20, %212 ]
  br label %15

; <label>:181:                                    ; preds = %172
  %182 = tail call i64 @strlen(i8* nonnull %173) #13
  %183 = tail call i64 @strspn(i8* nonnull %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0)) #11
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

; <label>:185:                                    ; preds = %181
  %186 = load i8, i8* %173, align 1
  %187 = icmp eq i8 %186, 48
  br i1 %187, label %188, label %203

; <label>:188:                                    ; preds = %185
  br label %193

; <label>:189:                                    ; preds = %181
  %190 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i32 5) #11
  %191 = load i8*, i8** @optarg, align 8
  %192 = tail call i8* @quote(i8* %191) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %190, i8* %192) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:193:                                    ; preds = %188, %198
  %194 = phi i8* [ %195, %198 ], [ %173, %188 ]
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %201, label %198

; <label>:198:                                    ; preds = %193
  store i8* %195, i8** @optarg, align 8
  %199 = load i8, i8* %195, align 1
  %200 = icmp eq i8 %199, 48
  br i1 %200, label %193, label %201

; <label>:201:                                    ; preds = %198, %193
  %202 = phi i8* [ %194, %193 ], [ %195, %198 ]
  br label %203

; <label>:203:                                    ; preds = %201, %185
  %204 = phi i8* [ %173, %185 ], [ %202, %201 ]
  store i8* %204, i8** @numeric_suffix_start, align 8
  br label %175

; <label>:205:                                    ; preds = %15
  store i1 true, i1* @elide_empty_files, align 1
  br label %175

; <label>:206:                                    ; preds = %15
  %207 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %207, i64* bitcast (i8** @filter_command to i64*), align 8
  br label %175

; <label>:208:                                    ; preds = %15
  %209 = load i8*, i8** @optarg, align 8
  %210 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 5) #11
  %211 = tail call i64 @xdectoumax(i8* %209, i64 1, i64 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0), i8* %210, i32 0) #11
  br label %175

; <label>:212:                                    ; preds = %15
  store i1 true, i1* @verbose, align 1
  br label %175

; <label>:213:                                    ; preds = %15
  tail call void @usage(i32 0) #15
  unreachable

; <label>:214:                                    ; preds = %15
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %216 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i8* null) #11
  tail call void @exit(i32 0) #14
  unreachable

; <label>:217:                                    ; preds = %15
  tail call void @usage(i32 1) #15
  unreachable

; <label>:218:                                    ; preds = %15
  %219 = icmp ne i64 %16, 0
  %220 = load i8*, i8** @filter_command, align 8
  %221 = icmp ne i8* %220, null
  %222 = and i1 %219, %221
  br i1 %222, label %223, label %225

; <label>:223:                                    ; preds = %218
  %224 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.34, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %224) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:225:                                    ; preds = %218
  %226 = icmp eq i32 %20, 0
  br i1 %226, label %232, label %227

; <label>:227:                                    ; preds = %225
  %228 = icmp eq i64 %17, 0
  br i1 %228, label %229, label %232

; <label>:229:                                    ; preds = %227
  %230 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 5) #11
  %231 = tail call i8* @quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %230, i8* %231) #11
  tail call void @usage(i32 1) #15
  unreachable

; <label>:232:                                    ; preds = %225, %227
  %233 = phi i32 [ %20, %227 ], [ 3, %225 ]
  %234 = phi i64 [ %17, %227 ], [ 1000, %225 ]
  %235 = load i32, i32* @eolchar, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %238

; <label>:237:                                    ; preds = %232
  store i32 10, i32* @eolchar, align 4
  br label %238

; <label>:238:                                    ; preds = %237, %232
  %239 = load i8*, i8** @numeric_suffix_start, align 8
  %240 = icmp eq i8* %239, null
  br i1 %240, label %242, label %241

; <label>:241:                                    ; preds = %238
  store i1 true, i1* @suffix_auto, align 1
  br label %242

; <label>:242:                                    ; preds = %241, %238
  %243 = add i32 %233, -5
  %244 = icmp ult i32 %243, 3
  br i1 %244, label %245, label %279

; <label>:245:                                    ; preds = %242
  br i1 %240, label %260, label %246

; <label>:246:                                    ; preds = %245
  %247 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #11
  %248 = call i32 @xstrtoumax(i8* nonnull %239, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %258

; <label>:250:                                    ; preds = %246
  %251 = load i64, i64* %3, align 8
  %252 = xor i64 %234, -1
  %253 = icmp ule i64 %251, %252
  %254 = icmp ult i64 %251, %234
  %255 = and i1 %253, %254
  %256 = select i1 %255, i64 %251, i64 0
  %257 = add i64 %256, %234
  br label %258

; <label>:258:                                    ; preds = %250, %246
  %259 = phi i64 [ %234, %246 ], [ %257, %250 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #11
  br label %260

; <label>:260:                                    ; preds = %258, %245
  %261 = phi i64 [ %259, %258 ], [ %234, %245 ]
  %262 = load i8*, i8** @suffix_alphabet, align 8
  %263 = call i64 @strlen(i8* %262) #13
  %264 = urem i64 %261, %263
  %265 = icmp ne i64 %264, 0
  %266 = icmp ugt i64 %263, %261
  br i1 %266, label %275, label %267

; <label>:267:                                    ; preds = %260
  br label %268

; <label>:268:                                    ; preds = %267, %268
  %269 = phi i64 [ %272, %268 ], [ 0, %267 ]
  %270 = phi i64 [ %271, %268 ], [ %261, %267 ]
  %271 = udiv i64 %270, %263
  %272 = add i64 %269, 1
  %273 = icmp ugt i64 %263, %271
  br i1 %273, label %274, label %268

; <label>:274:                                    ; preds = %268
  br label %275

; <label>:275:                                    ; preds = %274, %260
  %276 = phi i64 [ 0, %260 ], [ %272, %274 ]
  %277 = zext i1 %265 to i64
  %278 = add i64 %276, %277
  store i1 true, i1* @suffix_auto, align 1
  br label %279

; <label>:279:                                    ; preds = %275, %242
  %280 = phi i64 [ %278, %275 ], [ 0, %242 ]
  %281 = load i64, i64* @suffix_length, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %288, label %283

; <label>:283:                                    ; preds = %279
  %284 = icmp ult i64 %281, %280
  br i1 %284, label %285, label %287

; <label>:285:                                    ; preds = %283
  %286 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.77, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %286, i64 %280) #11
  unreachable

; <label>:287:                                    ; preds = %283
  store i1 true, i1* @suffix_auto, align 1
  br label %291

; <label>:288:                                    ; preds = %279
  %289 = icmp ugt i64 %280, 2
  %290 = select i1 %289, i64 %280, i64 2
  store i64 %290, i64* @suffix_length, align 8
  br label %291

; <label>:291:                                    ; preds = %287, %288
  %292 = phi i64 [ %281, %287 ], [ %290, %288 ]
  %293 = load i32, i32* @optind, align 4
  %294 = icmp slt i32 %293, %0
  br i1 %294, label %295, label %301

; <label>:295:                                    ; preds = %291
  %296 = add nsw i32 %293, 1
  store i32 %296, i32* @optind, align 4
  %297 = sext i32 %293 to i64
  %298 = getelementptr inbounds i8*, i8** %1, i64 %297
  %299 = bitcast i8** %298 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* bitcast (i8** @infile to i64*), align 8
  br label %301

; <label>:301:                                    ; preds = %295, %291
  %302 = phi i32 [ %296, %295 ], [ %293, %291 ]
  %303 = icmp slt i32 %302, %0
  br i1 %303, label %304, label %310

; <label>:304:                                    ; preds = %301
  %305 = add nsw i32 %302, 1
  store i32 %305, i32* @optind, align 4
  %306 = sext i32 %302 to i64
  %307 = getelementptr inbounds i8*, i8** %1, i64 %306
  %308 = bitcast i8** %307 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* bitcast (i8** @outbase to i64*), align 8
  br label %310

; <label>:310:                                    ; preds = %304, %301
  %311 = phi i32 [ %305, %304 ], [ %302, %301 ]
  %312 = icmp slt i32 %311, %0
  br i1 %312, label %313, label %320

; <label>:313:                                    ; preds = %310
  %314 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  %315 = load i32, i32* @optind, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %1, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = call i8* @quote(i8* %318) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %314, i8* %319) #11
  call void @usage(i32 1) #15
  unreachable

; <label>:320:                                    ; preds = %310
  %321 = load i8*, i8** @numeric_suffix_start, align 8
  %322 = icmp eq i8* %321, null
  br i1 %322, label %328, label %323

; <label>:323:                                    ; preds = %320
  %324 = call i64 @strlen(i8* nonnull %321) #13
  %325 = icmp ugt i64 %324, %292
  br i1 %325, label %326, label %328

; <label>:326:                                    ; preds = %323
  %327 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %327) #11
  call void @usage(i32 1) #15
  unreachable

; <label>:328:                                    ; preds = %320, %323
  %329 = load i8*, i8** @infile, align 8
  %330 = load i8, i8* %329, align 1
  %331 = icmp eq i8 %330, 45
  br i1 %331, label %332, label %336

; <label>:332:                                    ; preds = %328
  %333 = getelementptr inbounds i8, i8* %329, i64 1
  %334 = load i8, i8* %333, align 1
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %345, label %336

; <label>:336:                                    ; preds = %328, %332
  %337 = call i32 @fd_reopen(i32 0, i8* %329, i32 0, i32 0) #11
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %345

; <label>:339:                                    ; preds = %336
  %340 = tail call i32* @__errno_location() #1
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 5) #11
  %343 = load i8*, i8** @infile, align 8
  %344 = call i8* @quotearg_style(i32 4, i8* %343) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %341, i8* %342, i8* %344) #11
  unreachable

; <label>:345:                                    ; preds = %336, %332
  %346 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull @in_stat_buf) #11
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %353, label %348

; <label>:348:                                    ; preds = %345
  %349 = tail call i32* @__errno_location() #1
  %350 = load i32, i32* %349, align 4
  %351 = load i8*, i8** @infile, align 8
  %352 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %351) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %352) #11
  unreachable

; <label>:353:                                    ; preds = %345
  %354 = icmp eq i64 %19, 0
  br i1 %354, label %355, label %366

; <label>:355:                                    ; preds = %353
  %356 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @in_stat_buf, i64 0, i32 9), align 8
  %357 = icmp sgt i64 %356, 0
  %358 = icmp ult i64 %356, 2305843009213693953
  %359 = and i1 %357, %358
  %360 = and i1 %357, %358
  %361 = xor i1 %360, true
  %362 = icmp slt i64 %356, 131072
  %363 = or i1 %362, %361
  %364 = select i1 %359, i64 %356, i64 512
  %365 = select i1 %363, i64 131072, i64 %364
  br label %366

; <label>:366:                                    ; preds = %355, %353
  %367 = phi i64 [ %19, %353 ], [ %365, %355 ]
  %368 = add i64 %367, %8
  %369 = call noalias i8* @xmalloc(i64 %368) #11
  %370 = getelementptr inbounds i8, i8* %369, i64 %8
  %371 = getelementptr inbounds i8, i8* %370, i64 -1
  %372 = ptrtoint i8* %371 to i64
  %373 = urem i64 %372, %8
  %374 = sub i64 0, %373
  %375 = getelementptr inbounds i8, i8* %371, i64 %374
  %376 = icmp ult i32 %243, 2
  br i1 %376, label %377, label %447

; <label>:377:                                    ; preds = %366
  %378 = call i64 @lseek(i32 0, i64 0, i32 1) #11
  %379 = icmp slt i64 %378, 0
  br i1 %379, label %381, label %380

; <label>:380:                                    ; preds = %377
  br label %386

; <label>:381:                                    ; preds = %377
  %382 = tail call i32* @__errno_location() #1
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 29
  br i1 %384, label %385, label %429

; <label>:385:                                    ; preds = %381
  store i32 0, i32* %382, align 4
  br label %429

; <label>:386:                                    ; preds = %380, %391
  %387 = phi i64 [ %392, %391 ], [ 0, %380 ]
  %388 = getelementptr inbounds i8, i8* %375, i64 %387
  %389 = sub i64 %367, %387
  %390 = call i64 @safe_read(i32 0, i8* %388, i64 %389) #11
  switch i64 %390, label %391 [
    i64 0, label %424
    i64 -1, label %428
  ]

; <label>:391:                                    ; preds = %386
  %392 = add i64 %390, %387
  %393 = icmp ult i64 %392, %367
  br i1 %393, label %386, label %394

; <label>:394:                                    ; preds = %391
  %395 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @in_stat_buf, i64 0, i32 8), align 8
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %399

; <label>:397:                                    ; preds = %394
  %398 = tail call i32* @__errno_location() #1
  store i32 75, i32* %398, align 4
  br label %429

; <label>:399:                                    ; preds = %394
  %400 = add nsw i64 %392, %378
  %401 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @in_stat_buf, i64 0, i32 3), align 8
  %402 = trunc i32 %401 to i16
  %403 = and i16 %402, -4096
  switch i16 %403, label %406 [
    i16 -32768, label %404
    i16 -24576, label %404
  ]

; <label>:404:                                    ; preds = %399, %399
  %405 = icmp sgt i64 %400, %395
  br i1 %405, label %406, label %417

; <label>:406:                                    ; preds = %404, %399
  %407 = call i64 @lseek(i32 0, i64 0, i32 2) #11
  %408 = icmp slt i64 %407, 0
  br i1 %408, label %429, label %409

; <label>:409:                                    ; preds = %406
  %410 = icmp eq i64 %407, %400
  br i1 %410, label %417, label %411

; <label>:411:                                    ; preds = %409
  %412 = call i64 @lseek(i32 0, i64 %400, i32 0) #11
  %413 = icmp slt i64 %412, 0
  br i1 %413, label %429, label %414

; <label>:414:                                    ; preds = %411
  %415 = icmp slt i64 %407, %400
  %416 = select i1 %415, i64 %400, i64 %407
  br label %417

; <label>:417:                                    ; preds = %414, %409, %404
  %418 = phi i64 [ %400, %409 ], [ %395, %404 ], [ %416, %414 ]
  %419 = sub nsw i64 %418, %400
  %420 = add nsw i64 %419, %392
  %421 = icmp eq i64 %420, 9223372036854775807
  br i1 %421, label %422, label %425

; <label>:422:                                    ; preds = %417
  %423 = tail call i32* @__errno_location() #1
  store i32 75, i32* %423, align 4
  br label %429

; <label>:424:                                    ; preds = %386
  br label %425

; <label>:425:                                    ; preds = %424, %417
  %426 = phi i64 [ %420, %417 ], [ %387, %424 ]
  %427 = icmp slt i64 %426, 0
  br i1 %427, label %429, label %435

; <label>:428:                                    ; preds = %386
  br label %429

; <label>:429:                                    ; preds = %428, %411, %406, %422, %397, %381, %385, %425
  %430 = tail call i32* @__errno_location() #1
  %431 = load i32, i32* %430, align 4
  %432 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #11
  %433 = load i8*, i8** @infile, align 8
  %434 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %433) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %431, i8* %432, i8* %434) #11
  unreachable

; <label>:435:                                    ; preds = %425
  %436 = icmp slt i64 %234, 0
  br i1 %436, label %437, label %442

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %438) #11
  %439 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  %440 = call i8* @umaxtostr(i64 %234, i8* nonnull %438) #11
  %441 = call i8* @quote(i8* %440) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* %439, i8* %441) #11
  unreachable

; <label>:442:                                    ; preds = %435
  %443 = icmp ult i64 %426, %367
  %444 = select i1 %443, i64 %426, i64 %367
  %445 = icmp ugt i64 %426, %234
  %446 = select i1 %445, i64 %426, i64 %234
  br label %447

; <label>:447:                                    ; preds = %366, %442
  %448 = phi i64 [ %446, %442 ], [ 9223372036854775807, %366 ]
  %449 = phi i64 [ %444, %442 ], [ -1, %366 ]
  %450 = load i8*, i8** @filter_command, align 8
  %451 = icmp eq i8* %450, null
  br i1 %451, label %463, label %452

; <label>:452:                                    ; preds = %447
  %453 = bitcast %struct.sigaction* %6 to i8*
  call void @llvm.lifetime.start(i64 152, i8* nonnull %453) #11
  %454 = call i32 @sigemptyset(%struct.__sigset_t* nonnull @newblocked) #11
  %455 = call i32 @sigaction(i32 13, %struct.sigaction* null, %struct.sigaction* nonnull %6) #11
  %456 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 0, i32 0
  %457 = load void (i32)*, void (i32)** %456, align 8
  %458 = icmp eq void (i32)* %457, inttoptr (i64 1 to void (i32)*)
  br i1 %458, label %461, label %459

; <label>:459:                                    ; preds = %452
  %460 = call i32 @sigaddset(%struct.__sigset_t* nonnull @newblocked, i32 13) #11
  br label %461

; <label>:461:                                    ; preds = %452, %459
  %462 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @newblocked, %struct.__sigset_t* nonnull @oldblocked) #11
  call void @llvm.lifetime.end(i64 152, i8* nonnull %453) #11
  br label %463

; <label>:463:                                    ; preds = %447, %461
  switch i32 %233, label %1080 [
    i32 4, label %464
    i32 3, label %464
    i32 1, label %516
    i32 2, label %517
    i32 5, label %648
    i32 6, label %713
    i32 7, label %885
  ]

; <label>:464:                                    ; preds = %463, %463
  br label %465

; <label>:465:                                    ; preds = %464, %513
  %466 = phi i8 [ %514, %513 ], [ 1, %464 ]
  %467 = phi i64 [ %487, %513 ], [ 0, %464 ]
  %468 = call i64 @safe_read(i32 0, i8* %375, i64 %367) #11
  %469 = icmp eq i64 %468, -1
  br i1 %469, label %470, label %475

; <label>:470:                                    ; preds = %465
  %471 = tail call i32* @__errno_location() #1
  %472 = load i32, i32* %471, align 4
  %473 = load i8*, i8** @infile, align 8
  %474 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %473) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %472, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %474) #11
  unreachable

; <label>:475:                                    ; preds = %465
  %476 = getelementptr inbounds i8, i8* %375, i64 %468
  %477 = load i32, i32* @eolchar, align 4
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %476, align 1
  %479 = ptrtoint i8* %476 to i64
  %480 = add i64 %479, 1
  br label %481

; <label>:481:                                    ; preds = %505, %475
  %482 = phi i32 [ %512, %505 ], [ %477, %475 ]
  %483 = phi i8* [ %502, %505 ], [ %375, %475 ]
  %484 = phi i8 [ 1, %505 ], [ %466, %475 ]
  %485 = phi i64 [ 0, %505 ], [ %467, %475 ]
  br label %486

; <label>:486:                                    ; preds = %501, %481
  %487 = phi i64 [ %503, %501 ], [ %485, %481 ]
  %488 = phi i8* [ %502, %501 ], [ %483, %481 ]
  %489 = ptrtoint i8* %488 to i64
  %490 = sub i64 %480, %489
  %491 = call i8* @memchr(i8* %488, i32 %482, i64 %490) #13
  %492 = icmp eq i8* %491, %476
  br i1 %492, label %493, label %501

; <label>:493:                                    ; preds = %486
  %494 = icmp eq i8* %476, %483
  br i1 %494, label %513, label %495

; <label>:495:                                    ; preds = %493
  %496 = ptrtoint i8* %483 to i64
  %497 = sub i64 %479, %496
  %498 = and i8 %484, 1
  %499 = icmp ne i8 %498, 0
  %500 = call fastcc zeroext i1 @cwrite(i1 zeroext %499, i8* %483, i64 %497) #11
  br label %513

; <label>:501:                                    ; preds = %486
  %502 = getelementptr inbounds i8, i8* %491, i64 1
  %503 = add i64 %487, 1
  %504 = icmp ult i64 %503, %234
  br i1 %504, label %486, label %505

; <label>:505:                                    ; preds = %501
  %506 = and i8 %484, 1
  %507 = icmp ne i8 %506, 0
  %508 = ptrtoint i8* %502 to i64
  %509 = ptrtoint i8* %483 to i64
  %510 = sub i64 %508, %509
  %511 = call fastcc zeroext i1 @cwrite(i1 zeroext %507, i8* %483, i64 %510) #11
  %512 = load i32, i32* @eolchar, align 4
  br label %481

; <label>:513:                                    ; preds = %495, %493
  %514 = phi i8 [ 0, %495 ], [ %484, %493 ]
  %515 = icmp eq i64 %468, 0
  br i1 %515, label %1081, label %465

; <label>:516:                                    ; preds = %463
  call fastcc void @bytes_split(i64 %234, i8* %375, i64 %367, i64 -1, i64 0)
  br label %1087

; <label>:517:                                    ; preds = %463
  %518 = xor i64 %367, -1
  br label %519

; <label>:519:                                    ; preds = %637, %517
  %520 = phi i64 [ 0, %517 ], [ %629, %637 ]
  %521 = phi i8 [ 0, %517 ], [ %634, %637 ]
  %522 = phi i8* [ null, %517 ], [ %632, %637 ]
  %523 = phi i64 [ 0, %517 ], [ %633, %637 ]
  %524 = phi i64 [ 0, %517 ], [ %635, %637 ]
  %525 = call i64 @safe_read(i32 0, i8* %375, i64 %367) #11
  switch i64 %525, label %526 [
    i64 -1, label %527
    i64 0, label %639
  ]

; <label>:526:                                    ; preds = %519
  br label %532

; <label>:527:                                    ; preds = %519
  %528 = tail call i32* @__errno_location() #1
  %529 = load i32, i32* %528, align 4
  %530 = load i8*, i8** @infile, align 8
  %531 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %530) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %529, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %531) #11
  unreachable

; <label>:532:                                    ; preds = %526, %628
  %533 = phi i64 [ %635, %628 ], [ %524, %526 ]
  %534 = phi i64 [ %633, %628 ], [ %523, %526 ]
  %535 = phi i8* [ %632, %628 ], [ %522, %526 ]
  %536 = phi i8* [ %631, %628 ], [ %375, %526 ]
  %537 = phi i64 [ %630, %628 ], [ %525, %526 ]
  %538 = phi i8 [ %634, %628 ], [ %521, %526 ]
  %539 = phi i64 [ %629, %628 ], [ %520, %526 ]
  %540 = sub i64 %234, %533
  %541 = sub i64 %540, %534
  %542 = icmp ugt i64 %541, %537
  %543 = getelementptr inbounds i8, i8* %536, i64 %541
  %544 = getelementptr inbounds i8, i8* %543, i64 -1
  %545 = select i1 %542, i64 %537, i64 %541
  %546 = select i1 %542, i64 0, i64 %541
  %547 = select i1 %542, i8* null, i8* %544
  %548 = load i32, i32* @eolchar, align 4
  %549 = call i8* @memrchr(i8* %536, i32 %548, i64 %545) #13
  %550 = icmp eq i64 %534, 0
  br i1 %550, label %562, label %551

; <label>:551:                                    ; preds = %532
  %552 = icmp eq i8* %549, null
  %553 = icmp ne i64 %533, 0
  %554 = and i1 %553, %552
  br i1 %554, label %579, label %555

; <label>:555:                                    ; preds = %551
  %556 = icmp eq i64 %533, 0
  %557 = call fastcc zeroext i1 @cwrite(i1 zeroext %556, i8* %535, i64 %534) #11
  %558 = add i64 %534, %533
  %559 = icmp ugt i64 %534, %367
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %555
  %561 = call i8* @xrealloc(i8* %535, i64 %367) #11
  br label %562

; <label>:562:                                    ; preds = %560, %555, %532
  %563 = phi i64 [ %539, %532 ], [ %367, %560 ], [ %367, %555 ]
  %564 = phi i8* [ %535, %532 ], [ %561, %560 ], [ %535, %555 ]
  %565 = phi i64 [ %533, %532 ], [ %558, %560 ], [ %558, %555 ]
  %566 = icmp eq i8* %549, null
  br i1 %566, label %579, label %567

; <label>:567:                                    ; preds = %562
  %568 = ptrtoint i8* %549 to i64
  %569 = ptrtoint i8* %536 to i64
  %570 = sub i64 %568, %569
  %571 = add nsw i64 %570, 1
  %572 = icmp eq i64 %565, 0
  %573 = call fastcc zeroext i1 @cwrite(i1 zeroext %572, i8* %536, i64 %571) #11
  %574 = add i64 %565, %571
  %575 = sub i64 %537, %571
  %576 = getelementptr inbounds i8, i8* %536, i64 %571
  %577 = sub i64 %541, %571
  %578 = select i1 %542, i64 0, i64 %577
  br label %596

; <label>:579:                                    ; preds = %562, %551
  %580 = phi i64 [ 0, %562 ], [ %534, %551 ]
  %581 = phi i8* [ %564, %562 ], [ %535, %551 ]
  %582 = phi i64 [ %563, %562 ], [ %539, %551 ]
  %583 = phi i64 [ %565, %562 ], [ %533, %551 ]
  %584 = and i8 %538, 1
  %585 = icmp eq i8 %584, 0
  br i1 %585, label %586, label %596

; <label>:586:                                    ; preds = %579
  %587 = icmp ne i8* %547, null
  %588 = select i1 %587, i64 %546, i64 %537
  %589 = icmp eq i64 %583, 0
  %590 = call fastcc zeroext i1 @cwrite(i1 zeroext %589, i8* %536, i64 %588) #11
  %591 = add i64 %583, %588
  %592 = sub i64 %537, %588
  %593 = getelementptr inbounds i8, i8* %536, i64 %588
  %594 = select i1 %587, i64 %546, i64 0
  %595 = sub i64 %546, %594
  br label %596

; <label>:596:                                    ; preds = %586, %579, %567
  %597 = phi i8 [ %538, %586 ], [ %538, %579 ], [ 1, %567 ]
  %598 = phi i64 [ %582, %586 ], [ %582, %579 ], [ %563, %567 ]
  %599 = phi i8* [ %581, %586 ], [ %581, %579 ], [ %564, %567 ]
  %600 = phi i64 [ %580, %586 ], [ %580, %579 ], [ 0, %567 ]
  %601 = phi i64 [ %592, %586 ], [ %537, %579 ], [ %575, %567 ]
  %602 = phi i8* [ %593, %586 ], [ %536, %579 ], [ %576, %567 ]
  %603 = phi i64 [ %595, %586 ], [ %546, %579 ], [ %578, %567 ]
  %604 = phi i64 [ %591, %586 ], [ %583, %579 ], [ %574, %567 ]
  %605 = icmp ne i8* %547, null
  %606 = icmp ne i64 %603, 0
  %607 = and i1 %605, %606
  %608 = icmp ne i64 %601, 0
  %609 = and i1 %542, %608
  %610 = or i1 %609, %607
  br i1 %610, label %611, label %628

; <label>:611:                                    ; preds = %596
  %612 = select i1 %605, i64 %603, i64 %601
  %613 = sub i64 %598, %600
  %614 = icmp ult i64 %613, %612
  br i1 %614, label %615, label %621

; <label>:615:                                    ; preds = %611
  %616 = icmp ugt i64 %598, %518
  br i1 %616, label %620, label %617

; <label>:617:                                    ; preds = %615
  %618 = add i64 %598, %367
  %619 = call i8* @xrealloc(i8* %599, i64 %618) #11
  br label %621

; <label>:620:                                    ; preds = %615
  call void @xalloc_die() #14
  unreachable

; <label>:621:                                    ; preds = %617, %611
  %622 = phi i64 [ %618, %617 ], [ %598, %611 ]
  %623 = phi i8* [ %619, %617 ], [ %599, %611 ]
  %624 = getelementptr inbounds i8, i8* %623, i64 %600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %624, i8* %602, i64 %612, i32 1, i1 false) #11
  %625 = add i64 %612, %600
  %626 = sub i64 %601, %612
  %627 = getelementptr inbounds i8, i8* %602, i64 %612
  br label %628

; <label>:628:                                    ; preds = %621, %596
  %629 = phi i64 [ %622, %621 ], [ %598, %596 ]
  %630 = phi i64 [ %626, %621 ], [ %601, %596 ]
  %631 = phi i8* [ %627, %621 ], [ %602, %596 ]
  %632 = phi i8* [ %623, %621 ], [ %599, %596 ]
  %633 = phi i64 [ %625, %621 ], [ %600, %596 ]
  %634 = select i1 %605, i8 0, i8 %597
  %635 = select i1 %605, i64 0, i64 %604
  %636 = icmp eq i64 %630, 0
  br i1 %636, label %637, label %532

; <label>:637:                                    ; preds = %628
  %638 = icmp eq i64 %525, 0
  br i1 %638, label %639, label %519

; <label>:639:                                    ; preds = %637, %519
  %640 = phi i64 [ %635, %637 ], [ %524, %519 ]
  %641 = phi i64 [ %633, %637 ], [ %523, %519 ]
  %642 = phi i8* [ %632, %637 ], [ %522, %519 ]
  %643 = icmp eq i64 %641, 0
  br i1 %643, label %647, label %644

; <label>:644:                                    ; preds = %639
  %645 = icmp eq i64 %640, 0
  %646 = call fastcc zeroext i1 @cwrite(i1 zeroext %645, i8* %642, i64 %641) #11
  br label %647

; <label>:647:                                    ; preds = %639, %644
  call void @free(i8* %642) #11
  br label %1087

; <label>:648:                                    ; preds = %463
  %649 = icmp eq i64 %16, 0
  br i1 %649, label %650, label %652

; <label>:650:                                    ; preds = %648
  %651 = udiv i64 %448, %234
  call fastcc void @bytes_split(i64 %651, i8* %375, i64 %367, i64 %449, i64 %234)
  br label %1087

; <label>:652:                                    ; preds = %648
  %653 = add i64 %16, -1
  %654 = icmp uge i64 %653, %234
  %655 = icmp ugt i64 %234, %448
  %656 = or i1 %654, %655
  br i1 %656, label %657, label %658

; <label>:657:                                    ; preds = %652
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i32 980, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.bytes_chunk_extract, i64 0, i64 0)) #14
  unreachable

; <label>:658:                                    ; preds = %652
  %659 = udiv i64 %448, %234
  %660 = mul i64 %659, %653
  %661 = icmp eq i64 %16, %234
  %662 = mul i64 %659, %16
  %663 = select i1 %661, i64 %448, i64 %662
  %664 = icmp ugt i64 %449, %660
  br i1 %664, label %665, label %668

; <label>:665:                                    ; preds = %658
  %666 = getelementptr inbounds i8, i8* %375, i64 %660
  %667 = sub i64 %449, %660
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %375, i8* %666, i64 %667, i32 1, i1 false) #11
  br label %671

; <label>:668:                                    ; preds = %658
  %669 = call i64 @lseek(i32 0, i64 %660, i32 1) #11
  %670 = icmp slt i64 %669, 0
  br i1 %670, label %675, label %671

; <label>:671:                                    ; preds = %668, %665
  %672 = phi i64 [ -1, %668 ], [ %667, %665 ]
  %673 = icmp sgt i64 %663, %660
  br i1 %673, label %674, label %1087

; <label>:674:                                    ; preds = %671
  br label %680

; <label>:675:                                    ; preds = %668
  %676 = tail call i32* @__errno_location() #1
  %677 = load i32, i32* %676, align 4
  %678 = load i8*, i8** @infile, align 8
  %679 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %678) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %677, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %679) #11
  unreachable

; <label>:680:                                    ; preds = %674, %710
  %681 = phi i64 [ -1, %710 ], [ %672, %674 ]
  %682 = phi i64 [ %711, %710 ], [ %660, %674 ]
  %683 = icmp eq i64 %681, -1
  br i1 %683, label %684, label %692

; <label>:684:                                    ; preds = %680
  %685 = call i64 @safe_read(i32 0, i8* %375, i64 %367) #11
  %686 = icmp eq i64 %685, -1
  br i1 %686, label %687, label %692

; <label>:687:                                    ; preds = %684
  %688 = tail call i32* @__errno_location() #1
  %689 = load i32, i32* %688, align 4
  %690 = load i8*, i8** @infile, align 8
  %691 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %690) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %689, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %691) #11
  unreachable

; <label>:692:                                    ; preds = %684, %680
  %693 = phi i64 [ %685, %684 ], [ %681, %680 ]
  %694 = icmp eq i64 %693, 0
  br i1 %694, label %1082, label %695

; <label>:695:                                    ; preds = %692
  %696 = sub nsw i64 %663, %682
  %697 = icmp ult i64 %693, %696
  %698 = select i1 %697, i64 %693, i64 %696
  %699 = call i64 @full_write(i32 1, i8* %375, i64 %698) #11
  %700 = icmp eq i64 %699, %698
  br i1 %700, label %710, label %701

; <label>:701:                                    ; preds = %695
  %702 = tail call i32* @__errno_location() #1
  %703 = load i32, i32* %702, align 4
  %704 = load i8*, i8** @filter_command, align 8
  %705 = icmp ne i8* %704, null
  %706 = icmp eq i32 %703, 32
  %707 = and i1 %706, %705
  br i1 %707, label %710, label %708

; <label>:708:                                    ; preds = %701
  %709 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %703, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %709) #11
  unreachable

; <label>:710:                                    ; preds = %701, %695
  %711 = add i64 %698, %682
  %712 = icmp sgt i64 %663, %711
  br i1 %712, label %680, label %1082

; <label>:713:                                    ; preds = %463
  %714 = icmp ugt i64 %16, %234
  %715 = add i64 %234, -1
  %716 = icmp uge i64 %715, %448
  %717 = or i1 %714, %716
  br i1 %717, label %718, label %719

; <label>:718:                                    ; preds = %713
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i32 854, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.lines_chunk_split, i64 0, i64 0)) #14
  unreachable

; <label>:719:                                    ; preds = %713
  %720 = udiv i64 %448, %234
  %721 = add nsw i64 %720, -1
  %722 = icmp ugt i64 %16, 1
  br i1 %722, label %723, label %731

; <label>:723:                                    ; preds = %719
  %724 = add i64 %16, -1
  %725 = mul i64 %720, %724
  %726 = add i64 %725, -1
  %727 = icmp ult i64 %726, %449
  br i1 %727, label %728, label %740

; <label>:728:                                    ; preds = %723
  %729 = getelementptr inbounds i8, i8* %375, i64 %726
  %730 = sub i64 %449, %726
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %375, i8* %729, i64 %730, i32 1, i1 false) #11
  br label %731

; <label>:731:                                    ; preds = %740, %728, %719
  %732 = phi i64 [ %726, %728 ], [ %726, %740 ], [ 0, %719 ]
  %733 = phi i64 [ %726, %728 ], [ %726, %740 ], [ %721, %719 ]
  %734 = phi i64 [ %724, %728 ], [ %724, %740 ], [ 1, %719 ]
  %735 = phi i64 [ %730, %728 ], [ -1, %740 ], [ %449, %719 ]
  %736 = icmp slt i64 %732, %448
  br i1 %736, label %737, label %871

; <label>:737:                                    ; preds = %731
  %738 = add nsw i64 %448, -1
  %739 = icmp eq i64 %16, 0
  br label %757

; <label>:740:                                    ; preds = %723
  %741 = sub i64 %726, %449
  %742 = call i64 @lseek(i32 0, i64 %741, i32 1) #11
  %743 = icmp slt i64 %742, 0
  br i1 %743, label %744, label %731

; <label>:744:                                    ; preds = %740
  %745 = tail call i32* @__errno_location() #1
  %746 = load i32, i32* %745, align 4
  %747 = load i8*, i8** @infile, align 8
  %748 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %747) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %746, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %748) #11
  unreachable

; <label>:749:                                    ; preds = %787
  br label %750

; <label>:750:                                    ; preds = %749, %776
  %751 = phi i8 [ %763, %776 ], [ %812, %749 ]
  %752 = phi i8 [ 0, %776 ], [ %790, %749 ]
  %753 = phi i64 [ %761, %776 ], [ %831, %749 ]
  %754 = phi i64 [ %760, %776 ], [ %788, %749 ]
  %755 = phi i64 [ %759, %776 ], [ %789, %749 ]
  %756 = icmp slt i64 %753, %448
  br i1 %756, label %757, label %868

; <label>:757:                                    ; preds = %750, %737
  %758 = phi i64 [ %735, %737 ], [ -1, %750 ]
  %759 = phi i64 [ %734, %737 ], [ %755, %750 ]
  %760 = phi i64 [ %733, %737 ], [ %754, %750 ]
  %761 = phi i64 [ %732, %737 ], [ %753, %750 ]
  %762 = phi i8 [ 0, %737 ], [ %752, %750 ]
  %763 = phi i8 [ 1, %737 ], [ %751, %750 ]
  %764 = icmp eq i64 %758, -1
  br i1 %764, label %765, label %773

; <label>:765:                                    ; preds = %757
  %766 = call i64 @safe_read(i32 0, i8* %375, i64 %367) #11
  %767 = icmp eq i64 %766, -1
  br i1 %767, label %768, label %773

; <label>:768:                                    ; preds = %765
  %769 = tail call i32* @__errno_location() #1
  %770 = load i32, i32* %769, align 4
  %771 = load i8*, i8** @infile, align 8
  %772 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %771) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %770, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %772) #11
  unreachable

; <label>:773:                                    ; preds = %765, %757
  %774 = phi i64 [ %766, %765 ], [ %758, %757 ]
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %868, label %776

; <label>:776:                                    ; preds = %773
  %777 = sub nsw i64 %448, %761
  %778 = icmp ult i64 %774, %777
  %779 = select i1 %778, i64 %774, i64 %777
  %780 = getelementptr inbounds i8, i8* %375, i64 %779
  %781 = icmp eq i64 %779, 0
  br i1 %781, label %750, label %782

; <label>:782:                                    ; preds = %776
  br label %792

; <label>:783:                                    ; preds = %843, %837
  %784 = phi i64 [ %847, %843 ], [ %860, %837 ]
  %785 = phi i64 [ %846, %843 ], [ %856, %837 ]
  %786 = phi i8 [ 1, %843 ], [ %798, %837 ]
  br label %787

; <label>:787:                                    ; preds = %783, %830
  %788 = phi i64 [ %795, %830 ], [ %784, %783 ]
  %789 = phi i64 [ %793, %830 ], [ %785, %783 ]
  %790 = phi i8 [ %798, %830 ], [ %786, %783 ]
  %791 = icmp eq i8* %813, %780
  br i1 %791, label %749, label %792

; <label>:792:                                    ; preds = %782, %787
  %793 = phi i64 [ %789, %787 ], [ %759, %782 ]
  %794 = phi i64 [ %832, %787 ], [ %779, %782 ]
  %795 = phi i64 [ %788, %787 ], [ %760, %782 ]
  %796 = phi i8* [ %813, %787 ], [ %375, %782 ]
  %797 = phi i64 [ %831, %787 ], [ %761, %782 ]
  %798 = phi i8 [ %790, %787 ], [ 0, %782 ]
  %799 = phi i8 [ %812, %787 ], [ %763, %782 ]
  %800 = sub nsw i64 %795, %797
  %801 = icmp sgt i64 %800, 0
  %802 = select i1 %801, i64 %800, i64 0
  %803 = icmp ult i64 %794, %802
  %804 = select i1 %803, i64 %794, i64 %802
  %805 = getelementptr inbounds i8, i8* %796, i64 %804
  %806 = load i32, i32* @eolchar, align 4
  %807 = sub i64 %794, %804
  %808 = call i8* @memchr(i8* %805, i32 %806, i64 %807) #13
  %809 = icmp eq i8* %808, null
  %810 = getelementptr inbounds i8, i8* %808, i64 1
  %811 = xor i1 %809, true
  %812 = zext i1 %811 to i8
  %813 = select i1 %809, i8* %780, i8* %810
  %814 = ptrtoint i8* %813 to i64
  %815 = ptrtoint i8* %796 to i64
  %816 = sub i64 %814, %815
  %817 = icmp eq i64 %793, %16
  br i1 %817, label %818, label %825

; <label>:818:                                    ; preds = %792
  %819 = call i64 @full_write(i32 1, i8* %796, i64 %816) #11
  %820 = icmp eq i64 %819, %816
  br i1 %820, label %830, label %821

; <label>:821:                                    ; preds = %818
  %822 = tail call i32* @__errno_location() #1
  %823 = load i32, i32* %822, align 4
  %824 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %823, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %824) #11
  unreachable

; <label>:825:                                    ; preds = %792
  br i1 %739, label %826, label %830

; <label>:826:                                    ; preds = %825
  %827 = and i8 %799, 1
  %828 = icmp ne i8 %827, 0
  %829 = call fastcc zeroext i1 @cwrite(i1 zeroext %828, i8* %796, i64 %816) #11
  br label %830

; <label>:830:                                    ; preds = %826, %825, %818
  %831 = add i64 %816, %797
  %832 = sub i64 %794, %816
  %833 = icmp slt i64 %795, %831
  %834 = or i1 %833, %811
  br i1 %834, label %835, label %787

; <label>:835:                                    ; preds = %830
  %836 = icmp eq i8* %813, %780
  br label %843

; <label>:837:                                    ; preds = %855
  %838 = select i1 %861, i8 0, i8 %845
  %839 = and i8 %838, 1
  %840 = icmp ne i8 %839, 0
  %841 = icmp slt i64 %860, %831
  %842 = or i1 %841, %840
  br i1 %842, label %843, label %783

; <label>:843:                                    ; preds = %837, %835
  %844 = phi i1 [ %811, %835 ], [ %840, %837 ]
  %845 = phi i8 [ %812, %835 ], [ %838, %837 ]
  %846 = phi i64 [ %793, %835 ], [ %856, %837 ]
  %847 = phi i64 [ %795, %835 ], [ %860, %837 ]
  %848 = xor i1 %844, true
  %849 = and i1 %836, %848
  br i1 %849, label %783, label %850

; <label>:850:                                    ; preds = %843
  %851 = add i64 %846, 1
  %852 = icmp ugt i64 %851, %16
  %853 = and i1 %219, %852
  br i1 %853, label %1085, label %854

; <label>:854:                                    ; preds = %850
  br label %855

; <label>:855:                                    ; preds = %854, %863
  %856 = phi i64 [ %865, %863 ], [ %851, %854 ]
  %857 = phi i64 [ %860, %863 ], [ %847, %854 ]
  %858 = icmp eq i64 %856, %234
  %859 = add nsw i64 %857, %720
  %860 = select i1 %858, i64 %738, i64 %859
  %861 = icmp sge i64 %860, %831
  %862 = or i1 %219, %861
  br i1 %862, label %837, label %863

; <label>:863:                                    ; preds = %855
  %864 = call fastcc zeroext i1 @cwrite(i1 zeroext true, i8* null, i64 0) #11
  %865 = add i64 %856, 1
  %866 = icmp ugt i64 %865, %16
  %867 = and i1 %219, %866
  br i1 %867, label %1084, label %855

; <label>:868:                                    ; preds = %750, %773
  %869 = phi i8 [ %752, %750 ], [ %762, %773 ]
  %870 = phi i64 [ %755, %750 ], [ %759, %773 ]
  br label %871

; <label>:871:                                    ; preds = %868, %731
  %872 = phi i8 [ 0, %731 ], [ %869, %868 ]
  %873 = phi i64 [ %734, %731 ], [ %870, %868 ]
  %874 = and i8 %872, 1
  %875 = zext i8 %874 to i64
  %876 = add i64 %875, %873
  %877 = icmp ugt i64 %876, %234
  %878 = or i1 %219, %877
  br i1 %878, label %1087, label %879

; <label>:879:                                    ; preds = %871
  br label %880

; <label>:880:                                    ; preds = %879, %880
  %881 = phi i64 [ %882, %880 ], [ %876, %879 ]
  %882 = add i64 %881, 1
  %883 = call fastcc zeroext i1 @cwrite(i1 zeroext true, i8* null, i64 0) #11
  %884 = icmp ugt i64 %882, %234
  br i1 %884, label %1083, label %880

; <label>:885:                                    ; preds = %463
  br i1 %219, label %894, label %886

; <label>:886:                                    ; preds = %885
  %887 = icmp ugt i64 %234, 288230376151711743
  br i1 %887, label %888, label %889

; <label>:888:                                    ; preds = %886
  call void @xalloc_die() #14
  unreachable

; <label>:889:                                    ; preds = %886
  %890 = shl i64 %234, 5
  %891 = call noalias i8* @xmalloc(i64 %890) #11
  %892 = bitcast i8* %891 to %struct.of_info*
  br label %896

; <label>:893:                                    ; preds = %896
  br label %894

; <label>:894:                                    ; preds = %893, %885
  %895 = phi %struct.of_info* [ undef, %885 ], [ %892, %893 ]
  br label %907

; <label>:896:                                    ; preds = %889, %896
  %897 = phi i64 [ %904, %896 ], [ 0, %889 ]
  call fastcc void @next_file_name() #11
  %898 = load i8*, i8** @outfile, align 8
  %899 = call noalias i8* @xstrdup(i8* %898) #11
  %900 = getelementptr inbounds %struct.of_info, %struct.of_info* %892, i64 %897, i32 0
  store i8* %899, i8** %900, align 8
  %901 = getelementptr inbounds %struct.of_info, %struct.of_info* %892, i64 %897, i32 1
  store i32 -1, i32* %901, align 8
  %902 = getelementptr inbounds %struct.of_info, %struct.of_info* %892, i64 %897, i32 2
  store %struct._IO_FILE* null, %struct._IO_FILE** %902, align 8
  %903 = getelementptr inbounds %struct.of_info, %struct.of_info* %892, i64 %897, i32 3
  store i32 0, i32* %903, align 8
  %904 = add nuw i64 %897, 1
  %905 = icmp eq i64 %904, %234
  br i1 %905, label %893, label %896

; <label>:906:                                    ; preds = %947
  br label %907

; <label>:907:                                    ; preds = %906, %894
  %908 = phi i64 [ 1, %894 ], [ %923, %906 ]
  %909 = phi i64 [ 0, %894 ], [ %938, %906 ]
  %910 = phi i8 [ 0, %894 ], [ %945, %906 ]
  %911 = phi i8 [ 0, %894 ], [ %946, %906 ]
  %912 = phi i8 [ 0, %894 ], [ %935, %906 ]
  %913 = call i64 @safe_read(i32 0, i8* %375, i64 %367) #11
  switch i64 %913, label %919 [
    i64 -1, label %914
    i64 0, label %1049
  ]

; <label>:914:                                    ; preds = %907
  %915 = tail call i32* @__errno_location() #1
  %916 = load i32, i32* %915, align 4
  %917 = load i8*, i8** @infile, align 8
  %918 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %917) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %916, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %918) #11
  unreachable

; <label>:919:                                    ; preds = %907
  %920 = getelementptr inbounds i8, i8* %375, i64 %913
  %921 = ptrtoint i8* %920 to i64
  br label %922

; <label>:922:                                    ; preds = %980, %919
  %923 = phi i64 [ %983, %980 ], [ %908, %919 ]
  %924 = phi i8* [ %956, %980 ], [ %375, %919 ]
  %925 = phi i64 [ %938, %980 ], [ %909, %919 ]
  %926 = phi i8 [ %945, %980 ], [ %910, %919 ]
  %927 = phi i8 [ %946, %980 ], [ %911, %919 ]
  %928 = phi i8 [ %935, %980 ], [ %912, %919 ]
  %929 = icmp eq i64 %923, %16
  br label %930

; <label>:930:                                    ; preds = %1045, %922
  %931 = phi i8* [ %956, %1045 ], [ %924, %922 ]
  %932 = phi i64 [ 0, %1045 ], [ %925, %922 ]
  %933 = phi i8 [ %991, %1045 ], [ %926, %922 ]
  %934 = phi i8 [ 0, %1045 ], [ %927, %922 ]
  %935 = phi i8 [ 1, %1045 ], [ %928, %922 ]
  br label %936

; <label>:936:                                    ; preds = %1042, %930
  %937 = phi i8* [ %956, %1042 ], [ %931, %930 ]
  %938 = phi i64 [ %1043, %1042 ], [ %932, %930 ]
  %939 = phi i8 [ %991, %1042 ], [ %933, %930 ]
  %940 = phi i8 [ %1030, %1042 ], [ %934, %930 ]
  %941 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %938, i32 1
  %942 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %938, i32 2
  br label %943

; <label>:943:                                    ; preds = %1041, %936
  %944 = phi i8* [ %937, %936 ], [ %920, %1041 ]
  %945 = phi i8 [ %939, %936 ], [ %991, %1041 ]
  %946 = phi i8 [ %940, %936 ], [ %1030, %1041 ]
  br label %947

; <label>:947:                                    ; preds = %979, %943
  %948 = phi i8* [ %920, %979 ], [ %944, %943 ]
  %949 = icmp eq i8* %948, %920
  br i1 %949, label %906, label %950

; <label>:950:                                    ; preds = %947
  %951 = load i32, i32* @eolchar, align 4
  %952 = ptrtoint i8* %948 to i64
  %953 = sub i64 %921, %952
  %954 = call i8* @memchr(i8* %948, i32 %951, i64 %953) #13
  %955 = icmp eq i8* %954, null
  %956 = getelementptr inbounds i8, i8* %954, i64 1
  %957 = select i1 %955, i8* %920, i8* %956
  %958 = ptrtoint i8* %957 to i64
  %959 = sub i64 %958, %952
  br i1 %219, label %960, label %984

; <label>:960:                                    ; preds = %950
  br i1 %929, label %961, label %979

; <label>:961:                                    ; preds = %960
  %962 = load i1, i1* @unbuffered, align 1
  br i1 %962, label %963, label %970

; <label>:963:                                    ; preds = %961
  %964 = call i64 @full_write(i32 1, i8* %948, i64 %959) #11
  %965 = icmp eq i64 %964, %959
  br i1 %965, label %979, label %966

; <label>:966:                                    ; preds = %963
  %967 = tail call i32* @__errno_location() #1
  %968 = load i32, i32* %967, align 4
  %969 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %968, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %969) #11
  unreachable

; <label>:970:                                    ; preds = %961
  %971 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %972 = call i64 @fwrite_unlocked(i8* %948, i64 %959, i64 1, %struct._IO_FILE* %971) #11
  %973 = icmp eq i64 %972, 1
  br i1 %973, label %979, label %974

; <label>:974:                                    ; preds = %970
  %975 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @clearerr_unlocked(%struct._IO_FILE* %975) #11
  %976 = tail call i32* @__errno_location() #1
  %977 = load i32, i32* %976, align 4
  %978 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %977, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %978) #11
  unreachable

; <label>:979:                                    ; preds = %970, %963, %960
  br i1 %955, label %947, label %980

; <label>:980:                                    ; preds = %979
  %981 = icmp eq i64 %923, %234
  %982 = add i64 %923, 1
  %983 = select i1 %981, i64 1, i64 %982
  br label %922

; <label>:984:                                    ; preds = %950
  %985 = call fastcc zeroext i1 @ofile_open(%struct.of_info* %895, i64 %938, i64 %234) #11
  %986 = zext i1 %985 to i32
  %987 = and i8 %945, 1
  %988 = zext i8 %987 to i32
  %989 = or i32 %986, %988
  %990 = icmp eq i32 %989, 0
  %991 = trunc i32 %989 to i8
  %992 = load i1, i1* @unbuffered, align 1
  br i1 %992, label %993, label %1008

; <label>:993:                                    ; preds = %984
  %994 = load i32, i32* %941, align 8
  %995 = call i64 @full_write(i32 %994, i8* %948, i64 %959) #11
  %996 = icmp eq i64 %995, %959
  br i1 %996, label %1023, label %997

; <label>:997:                                    ; preds = %993
  %998 = tail call i32* @__errno_location() #1
  %999 = load i32, i32* %998, align 4
  %1000 = load i8*, i8** @filter_command, align 8
  %1001 = icmp ne i8* %1000, null
  %1002 = icmp eq i32 %999, 32
  %1003 = and i1 %1002, %1001
  br i1 %1003, label %1023, label %1004

; <label>:1004:                                   ; preds = %997
  %1005 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %938, i32 0
  %1006 = load i8*, i8** %1005, align 8
  %1007 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1006) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %999, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %1007) #11
  unreachable

; <label>:1008:                                   ; preds = %984
  %1009 = load %struct._IO_FILE*, %struct._IO_FILE** %942, align 8
  %1010 = call i64 @fwrite_unlocked(i8* %948, i64 %959, i64 1, %struct._IO_FILE* %1009) #11
  %1011 = icmp eq i64 %1010, 1
  br i1 %1011, label %1023, label %1012

; <label>:1012:                                   ; preds = %1008
  %1013 = tail call i32* @__errno_location() #1
  %1014 = load i32, i32* %1013, align 4
  %1015 = load i8*, i8** @filter_command, align 8
  %1016 = icmp ne i8* %1015, null
  %1017 = icmp eq i32 %1014, 32
  %1018 = and i1 %1017, %1016
  br i1 %1018, label %1023, label %1019

; <label>:1019:                                   ; preds = %1012
  %1020 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %938, i32 0
  %1021 = load i8*, i8** %1020, align 8
  %1022 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1021) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1014, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %1022) #11
  unreachable

; <label>:1023:                                   ; preds = %1012, %1008, %997, %993
  %1024 = tail call i32* @__errno_location() #1
  %1025 = load i32, i32* %1024, align 4
  %1026 = load i8*, i8** @filter_command, align 8
  %1027 = icmp ne i8* %1026, null
  %1028 = icmp eq i32 %1025, 32
  %1029 = and i1 %1028, %1027
  %1030 = select i1 %1029, i8 %946, i8 1
  br i1 %990, label %1041, label %1031

; <label>:1031:                                   ; preds = %1023
  %1032 = load %struct._IO_FILE*, %struct._IO_FILE** %942, align 8
  %1033 = call i32 @rpl_fclose(%struct._IO_FILE* %1032) #11
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1040, label %1035

; <label>:1035:                                   ; preds = %1031
  %1036 = load i32, i32* %1024, align 4
  %1037 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %938, i32 0
  %1038 = load i8*, i8** %1037, align 8
  %1039 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1038) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1036, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %1039) #11
  unreachable

; <label>:1040:                                   ; preds = %1031
  store %struct._IO_FILE* null, %struct._IO_FILE** %942, align 8
  store i32 -2, i32* %941, align 8
  br label %1041

; <label>:1041:                                   ; preds = %1040, %1023
  br i1 %955, label %943, label %1042

; <label>:1042:                                   ; preds = %1041
  %1043 = add i64 %938, 1
  %1044 = icmp eq i64 %1043, %234
  br i1 %1044, label %1045, label %936

; <label>:1045:                                   ; preds = %1042
  %1046 = and i8 %1030, 1
  %1047 = icmp eq i8 %1046, 0
  br i1 %1047, label %1048, label %930

; <label>:1048:                                   ; preds = %1045
  br label %1050

; <label>:1049:                                   ; preds = %907
  br label %1050

; <label>:1050:                                   ; preds = %1049, %1048
  %1051 = phi i64 [ %234, %1048 ], [ %909, %1049 ]
  %1052 = phi i8 [ 1, %1048 ], [ %912, %1049 ]
  br i1 %219, label %1087, label %1053

; <label>:1053:                                   ; preds = %1050
  %1054 = and i8 %1052, 1
  %1055 = icmp ne i8 %1054, 0
  %1056 = select i1 %1055, i64 %234, i64 %1051
  %1057 = shl i64 %1056, 32
  %1058 = ashr exact i64 %1057, 32
  br label %1059

; <label>:1059:                                   ; preds = %1077, %1053
  %1060 = phi i64 [ 0, %1053 ], [ %1078, %1077 ]
  %1061 = icmp ult i64 %1060, %1058
  br i1 %1061, label %1066, label %1062

; <label>:1062:                                   ; preds = %1059
  %1063 = load i1, i1* @elide_empty_files, align 1
  br i1 %1063, label %1066, label %1064

; <label>:1064:                                   ; preds = %1062
  %1065 = call fastcc zeroext i1 @ofile_open(%struct.of_info* %895, i64 %1060, i64 %234) #11
  br label %1066

; <label>:1066:                                   ; preds = %1064, %1062, %1059
  %1067 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %1060, i32 1
  %1068 = load i32, i32* %1067, align 8
  %1069 = icmp sgt i32 %1068, -1
  br i1 %1069, label %1070, label %1077

; <label>:1070:                                   ; preds = %1066
  %1071 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %1060, i32 2
  %1072 = load %struct._IO_FILE*, %struct._IO_FILE** %1071, align 8
  %1073 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %1060, i32 3
  %1074 = load i32, i32* %1073, align 8
  %1075 = getelementptr inbounds %struct.of_info, %struct.of_info* %895, i64 %1060, i32 0
  %1076 = load i8*, i8** %1075, align 8
  call fastcc void @closeout(%struct._IO_FILE* %1072, i32 %1068, i32 %1074, i8* %1076) #11
  br label %1077

; <label>:1077:                                   ; preds = %1070, %1066
  store i32 -2, i32* %1067, align 8
  %1078 = add nuw i64 %1060, 1
  %1079 = icmp eq i64 %1078, %234
  br i1 %1079, label %1086, label %1059

; <label>:1080:                                   ; preds = %463
  call void @abort() #14
  unreachable

; <label>:1081:                                   ; preds = %513
  br label %1087

; <label>:1082:                                   ; preds = %692, %710
  br label %1087

; <label>:1083:                                   ; preds = %880
  br label %1087

; <label>:1084:                                   ; preds = %863
  br label %1087

; <label>:1085:                                   ; preds = %850
  br label %1087

; <label>:1086:                                   ; preds = %1077
  br label %1087

; <label>:1087:                                   ; preds = %1086, %1085, %1084, %1083, %1082, %1081, %1050, %871, %671, %650, %647, %516
  %1088 = call i32 @close(i32 0) #11
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1095, label %1090

; <label>:1090:                                   ; preds = %1087
  %1091 = tail call i32* @__errno_location() #1
  %1092 = load i32, i32* %1091, align 4
  %1093 = load i8*, i8** @infile, align 8
  %1094 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1093) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1092, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %1094) #11
  unreachable

; <label>:1095:                                   ; preds = %1087
  %1096 = load i32, i32* @output_desc, align 4
  %1097 = load i32, i32* @filter_pid, align 4
  %1098 = load i8*, i8** @outfile, align 8
  call fastcc void @closeout(%struct._IO_FILE* null, i32 %1096, i32 %1097, i8* %1098)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cwrite(i1 zeroext, i8*, i64) unnamed_addr #6 {
  br i1 %0, label %6, label %4

; <label>:4:                                      ; preds = %3
  %5 = load i32, i32* @output_desc, align 4
  br label %24

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i8* %1, null
  %8 = icmp eq i64 %2, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %6
  %11 = load i1, i1* @elide_empty_files, align 1
  br i1 %11, label %38, label %12

; <label>:12:                                     ; preds = %6, %10
  %13 = load i32, i32* @output_desc, align 4
  %14 = load i32, i32* @filter_pid, align 4
  %15 = load i8*, i8** @outfile, align 8
  tail call fastcc void @closeout(%struct._IO_FILE* null, i32 %13, i32 %14, i8* %15)
  tail call fastcc void @next_file_name()
  %16 = load i8*, i8** @outfile, align 8
  %17 = tail call fastcc i32 @create(i8* %16)
  store i32 %17, i32* @output_desc, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %12
  %20 = tail call i32* @__errno_location() #1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** @outfile, align 8
  %23 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %22) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %23) #11
  unreachable

; <label>:24:                                     ; preds = %4, %12
  %25 = phi i32 [ %5, %4 ], [ %17, %12 ]
  %26 = tail call i64 @full_write(i32 %25, i8* %1, i64 %2) #11
  %27 = icmp eq i64 %26, %2
  br i1 %27, label %38, label %28

; <label>:28:                                     ; preds = %24
  %29 = tail call i32* @__errno_location() #1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** @filter_command, align 8
  %32 = icmp ne i8* %31, null
  %33 = icmp eq i32 %30, 32
  %34 = and i1 %33, %32
  br i1 %34, label %38, label %35

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** @outfile, align 8
  %37 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %36) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %37) #11
  unreachable

; <label>:38:                                     ; preds = %28, %24, %10
  %39 = phi i1 [ true, %10 ], [ true, %24 ], [ false, %28 ]
  ret i1 %39
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bytes_split(i64, i8*, i64, i64, i64) unnamed_addr #6 {
  %6 = add i64 %4, -1
  br label %7

; <label>:7:                                      ; preds = %64, %5
  %8 = phi i64 [ %0, %5 ], [ %65, %64 ]
  %9 = phi i64 [ 0, %5 ], [ %66, %64 ]
  %10 = phi i8 [ 1, %5 ], [ %67, %64 ]
  %11 = phi i64 [ %3, %5 ], [ -1, %64 ]
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %7
  %14 = icmp ult i64 %11, %2
  br label %25

; <label>:15:                                     ; preds = %7
  %16 = tail call i64 @safe_read(i32 0, i8* %1, i64 %2) #11
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %15
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** @infile, align 8
  %22 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %21) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %22) #11
  unreachable

; <label>:23:                                     ; preds = %15
  %24 = icmp eq i64 %16, 0
  br label %25

; <label>:25:                                     ; preds = %23, %13
  %26 = phi i1 [ %24, %23 ], [ %14, %13 ]
  %27 = phi i64 [ %16, %23 ], [ %11, %13 ]
  %28 = icmp ult i64 %27, %8
  br i1 %28, label %49, label %29

; <label>:29:                                     ; preds = %25
  br label %30

; <label>:30:                                     ; preds = %29, %44
  %31 = phi i8 [ %42, %44 ], [ %10, %29 ]
  %32 = phi i64 [ %46, %44 ], [ %27, %29 ]
  %33 = phi i8* [ %45, %44 ], [ %1, %29 ]
  %34 = phi i64 [ %40, %44 ], [ %9, %29 ]
  %35 = phi i64 [ %0, %44 ], [ %8, %29 ]
  %36 = and i8 %31, 1
  %37 = icmp ne i8 %36, 0
  %38 = tail call fastcc zeroext i1 @cwrite(i1 zeroext %37, i8* %33, i64 %35)
  %39 = zext i8 %36 to i64
  %40 = add i64 %39, %34
  %41 = icmp uge i64 %6, %40
  %42 = zext i1 %41 to i8
  %43 = or i1 %41, %38
  br i1 %43, label %44, label %63

; <label>:44:                                     ; preds = %30
  %45 = getelementptr inbounds i8, i8* %33, i64 %35
  %46 = sub i64 %32, %35
  %47 = icmp ult i64 %46, %0
  br i1 %47, label %48, label %30

; <label>:48:                                     ; preds = %44
  br label %49

; <label>:49:                                     ; preds = %48, %25
  %50 = phi i64 [ %8, %25 ], [ %0, %48 ]
  %51 = phi i64 [ %9, %25 ], [ %40, %48 ]
  %52 = phi i8* [ %1, %25 ], [ %45, %48 ]
  %53 = phi i64 [ %27, %25 ], [ %46, %48 ]
  %54 = phi i8 [ %10, %25 ], [ %42, %48 ]
  %55 = icmp eq i64 %53, 0
  br i1 %55, label %64, label %56

; <label>:56:                                     ; preds = %49
  %57 = and i8 %54, 1
  %58 = icmp ne i8 %57, 0
  %59 = tail call fastcc zeroext i1 @cwrite(i1 zeroext %58, i8* %52, i64 %53)
  %60 = zext i8 %57 to i64
  %61 = add i64 %60, %51
  %62 = sub i64 %50, %53
  br i1 %59, label %64, label %68

; <label>:63:                                     ; preds = %30
  br label %64

; <label>:64:                                     ; preds = %63, %56, %49
  %65 = phi i64 [ %62, %56 ], [ %50, %49 ], [ %35, %63 ]
  %66 = phi i64 [ %61, %56 ], [ %51, %49 ], [ %40, %63 ]
  %67 = phi i8 [ 0, %56 ], [ %54, %49 ], [ %42, %63 ]
  br i1 %26, label %68, label %7

; <label>:68:                                     ; preds = %64, %56
  %69 = phi i64 [ %66, %64 ], [ %61, %56 ]
  %70 = icmp ult i64 %69, %4
  br i1 %70, label %71, label %78

; <label>:71:                                     ; preds = %68
  br label %72

; <label>:72:                                     ; preds = %71, %72
  %73 = phi i64 [ %74, %72 ], [ %69, %71 ]
  %74 = add nuw i64 %73, 1
  %75 = tail call fastcc zeroext i1 @cwrite(i1 zeroext true, i8* null, i64 0)
  %76 = icmp eq i64 %74, %4
  br i1 %76, label %77, label %72

; <label>:77:                                     ; preds = %72
  br label %78

; <label>:78:                                     ; preds = %77, %68
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @next_file_name() unnamed_addr #6 {
  %1 = load i8*, i8** @outfile, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %4, label %184

; <label>:3:                                      ; preds = %201
  br label %4

; <label>:4:                                      ; preds = %3, %0
  %5 = load i64, i64* @next_file_name.outfile_length, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i8*, i8** @outbase, align 8
  %9 = tail call i64 @strlen(i8* %8) #13
  store i64 %9, i64* @next_file_name.outbase_length, align 8
  %10 = load i8*, i8** @additional_suffix, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %14, label %12

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 @strlen(i8* nonnull %10) #13
  br label %14

; <label>:14:                                     ; preds = %7, %12
  %15 = phi i64 [ %13, %12 ], [ 0, %7 ]
  store i64 %15, i64* @next_file_name.addsuf_length, align 8
  %16 = load i64, i64* @suffix_length, align 8
  %17 = add i64 %16, %9
  br label %22

; <label>:18:                                     ; preds = %4
  %19 = add i64 %5, 2
  store i64 %19, i64* @next_file_name.outfile_length, align 8
  %20 = load i64, i64* @suffix_length, align 8
  %21 = load i64, i64* @next_file_name.outbase_length, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = phi i64 [ %21, %18 ], [ %9, %14 ]
  %24 = phi i64 [ 1, %18 ], [ %15, %14 ]
  %25 = phi i64 [ %20, %18 ], [ %17, %14 ]
  %26 = phi i64* [ @suffix_length, %18 ], [ @next_file_name.outfile_length, %14 ]
  %27 = add i64 %25, %24
  store i64 %27, i64* %26, align 8
  %28 = load i64, i64* @next_file_name.outfile_length, align 8
  %29 = add i64 %28, 1
  %30 = icmp ult i64 %29, %23
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %22
  tail call void @xalloc_die() #14
  unreachable

; <label>:32:                                     ; preds = %22
  %33 = tail call i8* @xrealloc(i8* %1, i64 %29) #11
  store i8* %33, i8** @outfile, align 8
  br i1 %6, label %38, label %34

; <label>:34:                                     ; preds = %32
  %35 = load i8*, i8** @outbase, align 8
  %36 = load i64, i64* @next_file_name.outbase_length, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %35, i64 %36, i32 1, i1 false)
  %37 = load i8*, i8** @suffix_alphabet, align 8
  br label %47

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** @suffix_alphabet, align 8
  %40 = load i64*, i64** @next_file_name.sufindex, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i64, i64* @next_file_name.outbase_length, align 8
  %45 = getelementptr inbounds i8, i8* %33, i64 %44
  store i8 %43, i8* %45, align 1
  %46 = add i64 %44, 1
  store i64 %46, i64* @next_file_name.outbase_length, align 8
  br label %47

; <label>:47:                                     ; preds = %38, %34
  %48 = phi i8* [ %39, %38 ], [ %37, %34 ]
  %49 = phi i64 [ %46, %38 ], [ %36, %34 ]
  %50 = getelementptr inbounds i8, i8* %33, i64 %49
  store i8* %50, i8** @outfile_mid, align 8
  %51 = load i8, i8* %48, align 1
  %52 = load i64, i64* @suffix_length, align 8
  tail call void @llvm.memset.p0i8.i64(i8* %50, i8 %51, i64 %52, i32 1, i1 false)
  %53 = load i8*, i8** @additional_suffix, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %59, label %55

; <label>:55:                                     ; preds = %47
  %56 = load i64, i64* @suffix_length, align 8
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  %58 = load i64, i64* @next_file_name.addsuf_length, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* nonnull %53, i64 %58, i32 1, i1 false)
  br label %59

; <label>:59:                                     ; preds = %47, %55
  %60 = load i64, i64* @next_file_name.outfile_length, align 8
  %61 = getelementptr inbounds i8, i8* %33, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** bitcast (i64** @next_file_name.sufindex to i8**), align 8
  tail call void @free(i8* %62) #11
  %63 = load i64, i64* @suffix_length, align 8
  %64 = tail call noalias i8* @xcalloc(i64 %63, i64 8) #11
  store i8* %64, i8** bitcast (i64** @next_file_name.sufindex to i8**), align 8
  %65 = load i8*, i8** @numeric_suffix_start, align 8
  %66 = icmp eq i8* %65, null
  %67 = bitcast i8* %64 to i64*
  br i1 %66, label %220, label %68

; <label>:68:                                     ; preds = %59
  br i1 %6, label %69, label %70

; <label>:69:                                     ; preds = %68
  tail call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i64 0, i64 0), i32 405, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.next_file_name, i64 0, i64 0)) #14
  unreachable

; <label>:70:                                     ; preds = %68
  %71 = tail call i64 @strlen(i8* nonnull %65) #13
  %72 = load i8*, i8** @outfile_mid, align 8
  %73 = load i64, i64* @suffix_length, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = sub i64 0, %71
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* nonnull %65, i64 %71, i32 1, i1 false)
  %77 = icmp eq i64 %71, 0
  br i1 %77, label %220, label %78

; <label>:78:                                     ; preds = %70
  %79 = load i64, i64* @suffix_length, align 8
  %80 = getelementptr inbounds i64, i64* %67, i64 %79
  %81 = icmp ult i64 %71, 4
  br i1 %81, label %131, label %82

; <label>:82:                                     ; preds = %78
  %83 = and i64 %71, 3
  %84 = sub i64 %71, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %131, label %86

; <label>:86:                                     ; preds = %82
  %87 = shl i64 %79, 3
  %88 = shl i64 %71, 3
  %89 = sub i64 %87, %88
  %90 = getelementptr i8, i8* %64, i64 %89
  %91 = getelementptr i8, i8* %64, i64 %87
  %92 = getelementptr i8, i8* %65, i64 %71
  %93 = icmp ult i8* %90, %92
  %94 = icmp ult i8* %65, %91
  %95 = and i1 %93, %94
  %96 = sub i64 %83, %71
  %97 = getelementptr i64, i64* %80, i64 %96
  br i1 %95, label %131, label %98

; <label>:98:                                     ; preds = %86
  br label %99

; <label>:99:                                     ; preds = %98, %99
  %100 = phi i64 [ %127, %99 ], [ 0, %98 ]
  %101 = sub i64 %71, %100
  %102 = sub i64 0, %100
  %103 = getelementptr i64, i64* %80, i64 %102
  %104 = add i64 %101, -1
  %105 = getelementptr inbounds i8, i8* %65, i64 %104
  %106 = getelementptr i8, i8* %105, i64 -1
  %107 = bitcast i8* %106 to <2 x i8>*
  %108 = load <2 x i8>, <2 x i8>* %107, align 1
  %109 = shufflevector <2 x i8> %108, <2 x i8> undef, <2 x i32> <i32 1, i32 0>
  %110 = getelementptr i8, i8* %105, i64 -2
  %111 = getelementptr i8, i8* %110, i64 -1
  %112 = bitcast i8* %111 to <2 x i8>*
  %113 = load <2 x i8>, <2 x i8>* %112, align 1
  %114 = shufflevector <2 x i8> %113, <2 x i8> undef, <2 x i32> <i32 1, i32 0>
  %115 = sext <2 x i8> %109 to <2 x i64>
  %116 = sext <2 x i8> %114 to <2 x i64>
  %117 = add nsw <2 x i64> %115, <i64 -48, i64 -48>
  %118 = add nsw <2 x i64> %116, <i64 -48, i64 -48>
  %119 = getelementptr inbounds i64, i64* %103, i64 -1
  %120 = shufflevector <2 x i64> %117, <2 x i64> undef, <2 x i32> <i32 1, i32 0>
  %121 = getelementptr i64, i64* %119, i64 -1
  %122 = bitcast i64* %121 to <2 x i64>*
  store <2 x i64> %120, <2 x i64>* %122, align 8
  %123 = shufflevector <2 x i64> %118, <2 x i64> undef, <2 x i32> <i32 1, i32 0>
  %124 = getelementptr i64, i64* %119, i64 -2
  %125 = getelementptr i64, i64* %124, i64 -1
  %126 = bitcast i64* %125 to <2 x i64>*
  store <2 x i64> %123, <2 x i64>* %126, align 8
  %127 = add i64 %100, 4
  %128 = icmp eq i64 %127, %84
  br i1 %128, label %129, label %99

; <label>:129:                                    ; preds = %99
  %130 = icmp eq i64 %83, 0
  br i1 %130, label %220, label %131

; <label>:131:                                    ; preds = %129, %86, %82, %78
  %132 = phi i64 [ %71, %86 ], [ %71, %82 ], [ %71, %78 ], [ %83, %129 ]
  %133 = phi i64* [ %80, %86 ], [ %80, %82 ], [ %80, %78 ], [ %97, %129 ]
  %134 = add i64 %132, -1
  %135 = and i64 %132, 3
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %151, label %137

; <label>:137:                                    ; preds = %131
  br label %138

; <label>:138:                                    ; preds = %138, %137
  %139 = phi i64 [ %142, %138 ], [ %132, %137 ]
  %140 = phi i64* [ %147, %138 ], [ %133, %137 ]
  %141 = phi i64 [ %148, %138 ], [ %135, %137 ]
  %142 = add i64 %139, -1
  %143 = getelementptr inbounds i8, i8* %65, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i64
  %146 = add nsw i64 %145, -48
  %147 = getelementptr inbounds i64, i64* %140, i64 -1
  store i64 %146, i64* %147, align 8
  %148 = add i64 %141, -1
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %138

; <label>:150:                                    ; preds = %138
  br label %151

; <label>:151:                                    ; preds = %131, %150
  %152 = phi i64 [ %132, %131 ], [ %142, %150 ]
  %153 = phi i64* [ %133, %131 ], [ %147, %150 ]
  %154 = icmp ult i64 %134, 3
  br i1 %154, label %218, label %155

; <label>:155:                                    ; preds = %151
  br label %156

; <label>:156:                                    ; preds = %156, %155
  %157 = phi i64 [ %152, %155 ], [ %177, %156 ]
  %158 = phi i64* [ %153, %155 ], [ %182, %156 ]
  %159 = add i64 %157, -1
  %160 = getelementptr inbounds i8, i8* %65, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i64
  %163 = add nsw i64 %162, -48
  %164 = getelementptr inbounds i64, i64* %158, i64 -1
  store i64 %163, i64* %164, align 8
  %165 = add i64 %157, -2
  %166 = getelementptr inbounds i8, i8* %65, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i64
  %169 = add nsw i64 %168, -48
  %170 = getelementptr inbounds i64, i64* %158, i64 -2
  store i64 %169, i64* %170, align 8
  %171 = add i64 %157, -3
  %172 = getelementptr inbounds i8, i8* %65, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i64
  %175 = add nsw i64 %174, -48
  %176 = getelementptr inbounds i64, i64* %158, i64 -3
  store i64 %175, i64* %176, align 8
  %177 = add i64 %157, -4
  %178 = getelementptr inbounds i8, i8* %65, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i64
  %181 = add nsw i64 %180, -48
  %182 = getelementptr inbounds i64, i64* %158, i64 -4
  store i64 %181, i64* %182, align 8
  %183 = icmp eq i64 %177, 0
  br i1 %183, label %217, label %156

; <label>:184:                                    ; preds = %0
  %185 = load i64, i64* @suffix_length, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %215, label %187

; <label>:187:                                    ; preds = %184
  %188 = load i64*, i64** @next_file_name.sufindex, align 8
  %189 = load i1, i1* @suffix_auto, align 1
  %190 = xor i1 %189, true
  %191 = load i8*, i8** @suffix_alphabet, align 8
  %192 = load i8*, i8** @outfile_mid, align 8
  br label %193

; <label>:193:                                    ; preds = %187, %212
  %194 = phi i64 [ %185, %187 ], [ %195, %212 ]
  %195 = add i64 %194, -1
  %196 = getelementptr inbounds i64, i64* %188, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %196, align 8
  %199 = icmp eq i64 %195, 0
  %200 = and i1 %199, %190
  br i1 %200, label %201, label %207

; <label>:201:                                    ; preds = %193
  %202 = load i64, i64* %188, align 8
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i8, i8* %191, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %3, label %207

; <label>:207:                                    ; preds = %201, %193
  %208 = getelementptr inbounds i8, i8* %191, i64 %198
  %209 = load i8, i8* %208, align 1
  %210 = getelementptr inbounds i8, i8* %192, i64 %195
  store i8 %209, i8* %210, align 1
  %211 = icmp eq i8 %209, 0
  br i1 %211, label %212, label %219

; <label>:212:                                    ; preds = %207
  store i64 0, i64* %196, align 8
  %213 = load i8, i8* %191, align 1
  store i8 %213, i8* %210, align 1
  br i1 %199, label %214, label %193

; <label>:214:                                    ; preds = %212
  br label %215

; <label>:215:                                    ; preds = %214, %184
  %216 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %216) #11
  unreachable

; <label>:217:                                    ; preds = %156
  br label %218

; <label>:218:                                    ; preds = %151, %217
  br label %220

; <label>:219:                                    ; preds = %207
  br label %220

; <label>:220:                                    ; preds = %219, %218, %129, %70, %59
  ret void
}

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @ofile_open(%struct.of_info* nocapture, i64, i64) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %1, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %71

; <label>:7:                                      ; preds = %3
  %8 = icmp ne i64 %1, 0
  %9 = select i1 %8, i64 %1, i64 %2
  %10 = add i64 %9, -1
  %11 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %1, i32 0
  br label %12

; <label>:12:                                     ; preds = %57, %7
  %13 = phi i32 [ %5, %7 ], [ %58, %57 ]
  %14 = phi i8 [ 0, %7 ], [ 1, %57 ]
  %15 = phi i64 [ %10, %7 ], [ %35, %57 ]
  %16 = icmp eq i32 %13, -1
  %17 = load i8*, i8** %11, align 8
  br i1 %16, label %18, label %20

; <label>:18:                                     ; preds = %12
  %19 = tail call fastcc i32 @create(i8* %17)
  br label %22

; <label>:20:                                     ; preds = %12
  %21 = tail call i32 (i8*, i32, ...) @open_safer(i8* %17, i32 3073) #11
  br label %22

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %59, label %25

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, -23
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %25
  br label %34

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %11, align 8
  %33 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %33) #11
  unreachable

; <label>:34:                                     ; preds = %30, %39
  %35 = phi i64 [ %42, %39 ], [ %15, %30 ]
  %36 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %35, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

; <label>:39:                                     ; preds = %34
  %40 = icmp ne i64 %35, 0
  %41 = select i1 %40, i64 %35, i64 %2
  %42 = add i64 %41, -1
  %43 = icmp eq i64 %42, %1
  br i1 %43, label %44, label %34

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %11, align 8
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %45) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %46) #11
  unreachable

; <label>:47:                                     ; preds = %34
  %48 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %35, i32 2
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %48, align 8
  %50 = tail call i32 @rpl_fclose(%struct._IO_FILE* %49) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %26, align 4
  %54 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %35, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %55) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %56) #11
  unreachable

; <label>:57:                                     ; preds = %47
  store %struct._IO_FILE* null, %struct._IO_FILE** %48, align 8
  store i32 -2, i32* %36, align 8
  %58 = load i32, i32* %4, align 8
  br label %12

; <label>:59:                                     ; preds = %22
  store i32 %23, i32* %4, align 8
  %60 = tail call %struct._IO_FILE* @fdopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0)) #11
  %61 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %1, i32 2
  store %struct._IO_FILE* %60, %struct._IO_FILE** %61, align 8
  %62 = icmp eq %struct._IO_FILE* %60, null
  br i1 %62, label %63, label %68

; <label>:63:                                     ; preds = %59
  %64 = tail call i32* @__errno_location() #1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %66) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %67) #11
  unreachable

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* @filter_pid, align 4
  %70 = getelementptr inbounds %struct.of_info, %struct.of_info* %0, i64 %1, i32 3
  store i32 %69, i32* %70, align 8
  store i32 0, i32* @filter_pid, align 4
  br label %71

; <label>:71:                                     ; preds = %68, %3
  %72 = phi i8 [ %14, %68 ], [ 0, %3 ]
  %73 = and i8 %72, 1
  %74 = icmp ne i8 %73, 0
  ret i1 %74
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @closeout(%struct._IO_FILE*, i32, i32, i8*) unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = alloca [19 x i8], align 16
  %7 = icmp eq %struct._IO_FILE* %0, null
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** @filter_command, align 8
  %15 = icmp ne i8* %14, null
  %16 = icmp eq i32 %13, 32
  %17 = and i1 %16, %15
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %11
  %19 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %19) #11
  unreachable

; <label>:20:                                     ; preds = %8, %4, %11
  %21 = icmp sgt i32 %1, -1
  br i1 %21, label %22, label %48

; <label>:22:                                     ; preds = %20
  br i1 %7, label %28, label %23

; <label>:23:                                     ; preds = %28, %22
  %24 = load i64, i64* @n_open_pipes, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %48, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** @open_pipes, align 8
  br label %37

; <label>:28:                                     ; preds = %22
  %29 = tail call i32 @close(i32 %1) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %23

; <label>:31:                                     ; preds = %28
  %32 = tail call i32* @__errno_location() #1
  %33 = load i32, i32* %32, align 4
  %34 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %34) #11
  unreachable

; <label>:35:                                     ; preds = %37
  %36 = icmp ult i64 %42, %24
  br i1 %36, label %37, label %47

; <label>:37:                                     ; preds = %26, %35
  %38 = phi i64 [ 0, %26 ], [ %42, %35 ]
  %39 = getelementptr inbounds i32, i32* %27, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, %1
  %42 = add nuw i64 %38, 1
  br i1 %41, label %43, label %35

; <label>:43:                                     ; preds = %37
  %44 = add i64 %24, -1
  store i64 %44, i64* @n_open_pipes, align 8
  %45 = getelementptr inbounds i32, i32* %27, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %39, align 4
  br label %48

; <label>:47:                                     ; preds = %35
  br label %48

; <label>:48:                                     ; preds = %47, %23, %43, %20
  %49 = icmp sgt i32 %2, 0
  br i1 %49, label %50, label %94

; <label>:50:                                     ; preds = %48
  %51 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %51) #11
  store i32 0, i32* %5, align 4
  %52 = call i32 @waitpid(i32 %2, i32* nonnull %5, i32 0) #11
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

; <label>:54:                                     ; preds = %50
  %55 = tail call i32* @__errno_location() #1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %60, label %58

; <label>:58:                                     ; preds = %54
  %59 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %56, i8* %59) #11
  unreachable

; <label>:60:                                     ; preds = %54, %50
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 127
  %63 = shl nuw nsw i32 %62, 24
  %64 = add nuw i32 %63, 16777216
  %65 = ashr i32 %64, 25
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

; <label>:67:                                     ; preds = %60
  %68 = icmp eq i32 %62, 13
  br i1 %68, label %93, label %69

; <label>:69:                                     ; preds = %67
  %70 = getelementptr inbounds [19 x i8], [19 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 19, i8* nonnull %70) #11
  %71 = call i32 @sig2str(i32 %62, i8* nonnull %70) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

; <label>:73:                                     ; preds = %69
  %74 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %70, i32 1, i64 19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i32 %62) #11
  br label %75

; <label>:75:                                     ; preds = %69, %73
  %76 = or i32 %62, 128
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.105, i64 0, i64 0), i32 5) #11
  %78 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  %79 = load i8*, i8** @filter_command, align 8
  call void (i32, i32, i8*, ...) @error(i32 %76, i32 0, i8* %77, i8* %78, i8* nonnull %70, i8* %79) #11
  call void @llvm.lifetime.end(i64 19, i8* nonnull %70) #11
  br label %93

; <label>:80:                                     ; preds = %60
  %81 = icmp eq i32 %62, 0
  br i1 %81, label %82, label %90

; <label>:82:                                     ; preds = %80
  %83 = lshr i32 %61, 8
  %84 = and i32 %83, 255
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

; <label>:86:                                     ; preds = %82
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.106, i64 0, i64 0), i32 5) #11
  %88 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  %89 = load i8*, i8** @filter_command, align 8
  call void (i32, i32, i8*, ...) @error(i32 %84, i32 0, i8* %87, i8* %88, i32 %84, i8* %89) #11
  br label %93

; <label>:90:                                     ; preds = %80
  %91 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i64 0, i64 0), i32 5) #11
  %92 = load i32, i32* %5, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %91, i32 %92) #11
  unreachable

; <label>:93:                                     ; preds = %86, %82, %75, %67
  call void @llvm.lifetime.end(i64 4, i8* nonnull %51) #11
  br label %94

; <label>:94:                                     ; preds = %93, %48
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i32 @close(i32) local_unnamed_addr #3

declare i32 @waitpid(i32, i32*, i32) local_unnamed_addr #3

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @create(i8*) unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca [2 x i32], align 4
  %4 = load i8*, i8** @filter_command, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %47

; <label>:6:                                      ; preds = %1
  %7 = load i1, i1* @verbose, align 1
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i64 0, i64 0), i32 5) #11
  %11 = tail call i8* @quotearg_style(i32 4, i8* %0) #11
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %9, i32 1, i8* %10, i8* %11) #11
  br label %13

; <label>:13:                                     ; preds = %8, %6
  %14 = tail call i32 (i8*, i32, ...) @open_safer(i8* %0, i32 65, i32 438) #11
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %176, label %16

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %17) #11
  %18 = call i32 @__fxstat(i32 1, i32 %14, %struct.stat* nonnull %2) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

; <label>:20:                                     ; preds = %16
  %21 = tail call i32* @__errno_location() #1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  %24 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* %23, i8* %24) #11
  unreachable

; <label>:25:                                     ; preds = %16
  %26 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @in_stat_buf, i64 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %38

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @in_stat_buf, i64 0, i32 0), align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %30
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.83, i64 0, i64 0), i32 5) #11
  %37 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36, i8* %37) #11
  unreachable

; <label>:38:                                     ; preds = %30, %25
  %39 = call i32 @ftruncate(i32 %14, i64 0) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

; <label>:41:                                     ; preds = %38
  %42 = tail call i32* @__errno_location() #1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i64 0, i64 0), i32 5) #11
  %45 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %43, i8* %44, i8* %45) #11
  unreachable

; <label>:46:                                     ; preds = %38
  call void @llvm.lifetime.end(i64 144, i8* nonnull %17) #11
  br label %176

; <label>:47:                                     ; preds = %1
  %48 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %48) #11
  %49 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0)) #11
  %50 = icmp eq i8* %49, null
  %51 = select i1 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i64 0, i64 0), i8* %49
  %52 = tail call i32 @setenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i8* %0, i32 1) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

; <label>:54:                                     ; preds = %47
  %55 = tail call i32* @__errno_location() #1
  %56 = load i32, i32* %55, align 4
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.88, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %56, i8* %57) #11
  unreachable

; <label>:58:                                     ; preds = %47
  %59 = load i1, i1* @verbose, align 1
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %58
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 5) #11
  %63 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11
  %64 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %61, i32 1, i8* %62, i8* %63) #11
  br label %65

; <label>:65:                                     ; preds = %60, %58
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %67 = call i32 @pipe(i32* nonnull %66) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

; <label>:69:                                     ; preds = %65
  %70 = tail call i32* @__errno_location() #1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %71, i8* %72) #11
  unreachable

; <label>:73:                                     ; preds = %65
  %74 = call i32 @fork() #11
  switch i32 %74, label %135 [
    i32 0, label %75
    i32 -1, label %131
  ]

; <label>:75:                                     ; preds = %73
  %76 = load i64, i64* @n_open_pipes, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %95, label %78

; <label>:78:                                     ; preds = %75
  br label %82

; <label>:79:                                     ; preds = %82
  %80 = load i64, i64* @n_open_pipes, align 8
  %81 = icmp ult i64 %89, %80
  br i1 %81, label %82, label %94

; <label>:82:                                     ; preds = %78, %79
  %83 = phi i64 [ %89, %79 ], [ 0, %78 ]
  %84 = load i32*, i32** @open_pipes, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @close(i32 %86) #11
  %88 = icmp eq i32 %87, 0
  %89 = add nuw i64 %83, 1
  br i1 %88, label %79, label %90

; <label>:90:                                     ; preds = %82
  %91 = tail call i32* @__errno_location() #1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.91, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %92, i8* %93) #11
  unreachable

; <label>:94:                                     ; preds = %79
  br label %95

; <label>:95:                                     ; preds = %94, %75
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @close(i32 %97) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

; <label>:100:                                    ; preds = %95
  %101 = tail call i32* @__errno_location() #1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.92, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %102, i8* %103) #11
  unreachable

; <label>:104:                                    ; preds = %95
  %105 = load i32, i32* %66, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %122, label %107

; <label>:107:                                    ; preds = %104
  %108 = call i32 @dup2(i32 %105, i32 0) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

; <label>:110:                                    ; preds = %107
  %111 = tail call i32* @__errno_location() #1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %112, i8* %113) #11
  unreachable

; <label>:114:                                    ; preds = %107
  %115 = load i32, i32* %66, align 4
  %116 = call i32 @close(i32 %115) #11
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

; <label>:118:                                    ; preds = %114
  %119 = tail call i32* @__errno_location() #1
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %120, i8* %121) #11
  unreachable

; <label>:122:                                    ; preds = %114, %104
  %123 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull @oldblocked, %struct.__sigset_t* null) #11
  %124 = call i8* @last_component(i8* %51) #13
  %125 = load i8*, i8** @filter_command, align 8
  %126 = call i32 (i8*, i8*, ...) @execl(i8* %51, i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* %125, i8* null) #11
  %127 = tail call i32* @__errno_location() #1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i64 0, i64 0), i32 5) #11
  %130 = load i8*, i8** @filter_command, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %128, i8* %129, i8* %51, i8* %130) #11
  unreachable

; <label>:131:                                    ; preds = %73
  %132 = tail call i32* @__errno_location() #1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %133, i8* %134) #11
  unreachable

; <label>:135:                                    ; preds = %73
  %136 = load i32, i32* %66, align 4
  %137 = call i32 @close(i32 %136) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

; <label>:139:                                    ; preds = %135
  %140 = tail call i32* @__errno_location() #1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.98, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* %142) #11
  unreachable

; <label>:143:                                    ; preds = %135
  store i32 %74, i32* @filter_pid, align 4
  %144 = load i64, i64* @n_open_pipes, align 8
  %145 = load i64, i64* @open_pipes_alloc, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %149, label %147

; <label>:147:                                    ; preds = %143
  %148 = load i32*, i32** @open_pipes, align 8
  br label %168

; <label>:149:                                    ; preds = %143
  %150 = load i8*, i8** bitcast (i32** @open_pipes to i8**), align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %155

; <label>:152:                                    ; preds = %149
  %153 = icmp eq i64 %144, 0
  %154 = select i1 %153, i64 32, i64 %144
  br label %162

; <label>:155:                                    ; preds = %149
  %156 = icmp ult i64 %144, 1537228672809129301
  br i1 %156, label %158, label %157

; <label>:157:                                    ; preds = %155
  call void @xalloc_die() #14
  unreachable

; <label>:158:                                    ; preds = %155
  %159 = lshr i64 %144, 1
  %160 = add i64 %144, 1
  %161 = add i64 %160, %159
  br label %162

; <label>:162:                                    ; preds = %152, %158
  %163 = phi i64 [ %161, %158 ], [ %154, %152 ]
  store i64 %163, i64* @open_pipes_alloc, align 8
  %164 = shl i64 %163, 2
  %165 = call i8* @xrealloc(i8* %150, i64 %164) #11
  store i8* %165, i8** bitcast (i32** @open_pipes to i8**), align 8
  %166 = bitcast i8* %165 to i32*
  %167 = load i64, i64* @n_open_pipes, align 8
  br label %168

; <label>:168:                                    ; preds = %147, %162
  %169 = phi i64 [ %144, %147 ], [ %167, %162 ]
  %170 = phi i32* [ %148, %147 ], [ %166, %162 ]
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = add i64 %169, 1
  store i64 %173, i64* @n_open_pipes, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %169
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %171, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %48) #11
  br label %176

; <label>:176:                                    ; preds = %46, %13, %168
  %177 = phi i32 [ %175, %168 ], [ %14, %13 ], [ %14, %46 ]
  ret i32 %177
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setenv(i8*, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pipe(i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execl(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.46, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.47, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
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

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #10 {
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
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #10 {
  %2 = tail call i64 @strlen(i8* %0) #13
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
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #11
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
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #11
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #11
  %28 = call i32 @fd_safer(i32 %27) #11
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #6 {
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #11
  %6 = icmp eq i32 %5, %0
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #11
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = tail call i32 @close(i32 %5) #11
  store i32 %12, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %20, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %16, %13 ], [ %2, %5 ]
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %9) #11
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ]

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #1
  store i32 28, i32* %12, align 4
  br label %20

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %7
  %15 = getelementptr inbounds i8, i8* %8, i64 %10
  %16 = sub i64 %9, %10
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i64 [ %7, %6 ], [ %14, %13 ]
  br label %20

; <label>:20:                                     ; preds = %18, %11, %3
  %21 = phi i64 [ 0, %3 ], [ %7, %11 ], [ %19, %18 ]
  ret i64 %21
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
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.108, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.109, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.110, i64 0, i64 0), i64 3) #13
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.121, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.122, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.122, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.122, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.122, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #11
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
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
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.124, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.125, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.126, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.127, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.123, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.122, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11
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
  tail call void @free(i8* %8) #11
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
  tail call void @free(i8* %16) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #11
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
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11
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
  tail call void @free(i8* %40) #11
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11
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
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
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
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
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
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
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
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_read(i32, i8* nocapture, i64) local_unnamed_addr #6 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @read(i32 %0, i8* %1, i64 %5) #11
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22
  %15 = icmp ugt i64 %5, 2147475456
  %16 = and i1 %15, %14
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7
}

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #11
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22
  %15 = icmp ugt i64 %5, 2147475456
  %16 = and i1 %15, %14
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #11
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #11
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
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.143, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.144, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.145, i64 0, i64 0), i32 5) #11
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.146, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.147, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.148, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.149, i64 0, i64 0), i32 5) #11
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.150, i64 0, i64 0), i32 5) #11
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.151, i64 0, i64 0), i32 5) #11
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.152, i64 0, i64 0), i32 5) #11
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.153, i64 0, i64 0), i32 5) #11
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.154, i64 0, i64 0), i32 5) #11
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.155, i64 0, i64 0), i32 5) #11
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.158, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.159, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.160, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.161, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.162, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.163, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
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
  %8 = tail call noalias i8* @malloc(i64 %7) #11
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11
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
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11
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
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
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
  %3 = tail call noalias i8* @malloc(i64 %1) #11
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
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.178, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xnumtoumax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #11
  %10 = call i32 @xstrtoumax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11
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
  %33 = call i8* @quote(i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.180, i64 0, i64 0), i8* %5, i8* %33) #11
  %34 = load i64, i64* %8, align 8
  br label %35

; <label>:35:                                     ; preds = %13, %26
  %36 = phi i64 [ %14, %13 ], [ %34, %26 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #11
  ret i64 %36
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @xdectoumax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #6 {
  %7 = tail call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.185, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.186, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
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
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #11
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
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #11
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
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #11
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
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #11
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11
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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @str2sig(i8*, i32* nocapture) local_unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i8, i8* %0, align 1
  %6 = sext i8 %5 to i32
  %7 = add nsw i32 %6, -48
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %2
  br label %21

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #11
  %12 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #11
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = trunc i64 %12 to i32
  %16 = icmp ne i8 %14, 0
  %17 = icmp sgt i64 %12, 64
  %18 = or i1 %17, %16
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #11
  br i1 %18, label %74, label %75

; <label>:19:                                     ; preds = %21
  %20 = icmp ult i64 %26, 35
  br i1 %20, label %21, label %30

; <label>:21:                                     ; preds = %9, %19
  %22 = phi i64 [ %26, %19 ], [ 0, %9 ]
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0
  %24 = tail call i32 @strcmp(i8* %23, i8* %0) #11
  %25 = icmp eq i32 %24, 0
  %26 = add nuw nsw i64 %22, 1
  br i1 %25, label %27, label %19

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 0
  %29 = load i32, i32* %28, align 4
  br label %75

; <label>:30:                                     ; preds = %19
  %31 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %31) #11
  %32 = tail call i32 @__libc_current_sigrtmin() #11
  %33 = tail call i32 @__libc_current_sigrtmax() #11
  %34 = icmp sgt i32 %32, 0
  br i1 %34, label %35, label %50

; <label>:35:                                     ; preds = %30
  %36 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0), i64 5) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5
  %40 = call i64 @strtol(i8* %39, i8** nonnull %4, i32 10) #11
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 0
  %44 = icmp sgt i64 %40, -1
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %67

; <label>:46:                                     ; preds = %38
  %47 = sub nsw i32 %33, %32
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %40, %48
  br i1 %49, label %67, label %68

; <label>:50:                                     ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0
  br i1 %51, label %52, label %67

; <label>:52:                                     ; preds = %50
  %53 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.198, i64 0, i64 0), i64 5) #13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5
  %57 = call i64 @strtol(i8* %56, i8** nonnull %4, i32 10) #11
  %58 = load i8*, i8** %4, align 8
  %59 = load i8, i8* %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67

; <label>:61:                                     ; preds = %55
  %62 = sub nsw i32 %32, %33
  %63 = sext i32 %62 to i64
  %64 = icmp sle i64 %63, %57
  %65 = icmp slt i64 %57, 1
  %66 = and i1 %64, %65
  br i1 %66, label %68, label %67

; <label>:67:                                     ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11
  br label %74

; <label>:68:                                     ; preds = %61, %46
  %69 = phi i32 [ %33, %61 ], [ %32, %46 ]
  %70 = phi i64 [ %57, %61 ], [ %40, %46 ]
  %71 = zext i32 %69 to i64
  %72 = add i64 %71, %70
  %73 = trunc i64 %72 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %31) #11
  br label %75

; <label>:74:                                     ; preds = %67, %10
  br label %75

; <label>:75:                                     ; preds = %10, %27, %68, %74
  %76 = phi i32 [ -1, %74 ], [ %15, %10 ], [ %73, %68 ], [ %29, %27 ]
  store i32 %76, i32* %1, align 4
  %77 = ashr i32 %76, 31
  ret i32 %77
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @sig2str(i32, i8*) local_unnamed_addr #6 {
  br label %9

; <label>:3:                                      ; preds = %9
  %4 = add nsw i32 %10, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %5, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %15, label %43

; <label>:9:                                      ; preds = %62, %2
  %10 = phi i32 [ 0, %2 ], [ %61, %62 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %11, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %3

; <label>:15:                                     ; preds = %55, %49, %43, %3, %9
  %16 = phi i64 [ %11, %9 ], [ %5, %3 ], [ %45, %43 ], [ %51, %49 ], [ %57, %55 ]
  %17 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %16, i32 1, i64 0
  %18 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1, i1 false) #11
  %19 = tail call i8* @__strcpy_chk(i8* nonnull %1, i8* nonnull %17, i64 %18) #11
  br label %41

; <label>:20:                                     ; preds = %62
  %21 = tail call i32 @__libc_current_sigrtmin() #11
  %22 = tail call i32 @__libc_current_sigrtmax() #11
  %23 = icmp sgt i32 %21, %0
  %24 = icmp slt i32 %22, %0
  %25 = or i1 %23, %24
  br i1 %25, label %41, label %26

; <label>:26:                                     ; preds = %20
  %27 = sub nsw i32 %22, %21
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 %28, %21
  %30 = icmp slt i32 %29, %0
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.197, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %33

; <label>:32:                                     ; preds = %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.198, i64 0, i64 0), i64 6, i32 1, i1 false)
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = phi i32 [ %21, %31 ], [ %22, %32 ]
  %35 = sub nsw i32 %0, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %1, i64 5
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %38, i1 false)
  %40 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %38, i32 1, i64 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.201, i64 0, i64 0), i32 %35) #11
  br label %41

; <label>:41:                                     ; preds = %20, %33, %37, %15
  %42 = phi i32 [ 0, %15 ], [ -1, %20 ], [ 0, %33 ], [ 0, %37 ]
  ret i32 %42

; <label>:43:                                     ; preds = %3
  %44 = add nsw i32 %10, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %45, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, %0
  br i1 %48, label %15, label %49

; <label>:49:                                     ; preds = %43
  %50 = add nsw i32 %10, 3
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, %0
  br i1 %54, label %15, label %55

; <label>:55:                                     ; preds = %49
  %56 = add nsw i32 %10, 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %57, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, %0
  %61 = add nsw i32 %10, 5
  br i1 %60, label %15, label %62

; <label>:62:                                     ; preds = %55
  %63 = icmp ult i32 %61, 35
  br i1 %63, label %9, label %20
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11
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
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.206, i64 0, i64 0)) #11
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
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.210, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.211, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.212, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.212, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.213, i64 0, i64 0)) #11
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.214, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
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
  %90 = call noalias i8* @malloc(i64 %89) #11
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #11
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #11
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.209, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.215, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11
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
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11
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
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #11
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
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
