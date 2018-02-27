; ModuleID = 'coreutils-8.27/src/tail.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.File_spec = type { i8*, i64, %struct.timespec, i64, i64, i32, i8, i8, i8, i32, i32, i32, i32, i32, i64, i64 }
%struct.fd_set = type { [16 x i64] }
%struct.linebuffer = type { [8192 x i8], i64, i64, %struct.linebuffer* }
%struct.charbuffer = type { [8192 x i8], i64, %struct.charbuffer* }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [132 x i8] c"Print the last %d lines of each FILE to standard output.\0AWith more than one FILE, precede each with a header giving the file name.\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [145 x i8] c"  -c, --bytes=[+]NUM       output the last NUM bytes; or use -c +NUM to\0A                             output starting with byte NUM of each file\0A\00", align 1
@.str.4 = private unnamed_addr constant [234 x i8] c"  -f, --follow[={name|descriptor}]\0A                           output appended data as the file grows;\0A                             an absent option argument means 'descriptor'\0A  -F                       same as --follow=name --retry\0A\00", align 1
@.str.5 = private unnamed_addr constant [554 x i8] c"  -n, --lines=[+]NUM       output the last NUM lines, instead of the last %d;\0A                             or use -n +NUM to output starting with line NUM\0A      --max-unchanged-stats=N\0A                           with --follow=name, reopen a FILE which has not\0A                             changed size after N (default %d) iterations\0A                             to see if it has been unlinked or renamed\0A                             (this is the usual case of rotated log files);\0A                             with inotify, this option is rarely useful\0A\00", align 1
@.str.6 = private unnamed_addr constant [216 x i8] c"      --pid=PID            with -f, terminate after process ID, PID dies\0A  -q, --quiet, --silent    never output headers giving file names\0A      --retry              keep trying to open a file if it is inaccessible\0A\00", align 1
@.str.7 = private unnamed_addr constant [331 x i8] c"  -s, --sleep-interval=N   with -f, sleep for approximately N seconds\0A                             (default 1.0) between iterations;\0A                             with inotify and --pid=P, check process P at\0A                             least once every N seconds\0A  -v, --verbose            always output headers giving file names\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [154 x i8] c"\0ANUM may have a multiplier suffix:\0Ab 512, kB 1000, K 1024, MB 1000*1000, M 1024*1024,\0AGB 1000*1000*1000, G 1024*1024*1024, and so on for T, P, E, Z, Y.\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [437 x i8] c"With --follow (-f), tail defaults to following the file descriptor, which\0Ameans that even if a tail'ed file is renamed, tail will continue to track\0Aits end.  This default behavior is not desirable when you really want to\0Atrack the actual name of the file, not the file descriptor (e.g., log\0Arotation).  Use --follow=name in that case.  That causes tail to track the\0Anamed file in a way that accommodates renaming, removal and creation.\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@count_lines = internal unnamed_addr global i8 0, align 1
@print_headers = internal unnamed_addr global i1 false, align 1
@from_start = internal unnamed_addr global i8 0, align 1
@forever = internal unnamed_addr global i8 0, align 1
@line_end = internal unnamed_addr global i1 false, align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"c:n:fFqs:vz0123456789\00", align 1
@long_options = internal constant [16 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i32 2, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 133 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 113 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@follow_mode = internal unnamed_addr global i32 2, align 4
@reopen_inaccessible_files = internal unnamed_addr global i1 false, align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.46 = private unnamed_addr constant [24 x i8] c"invalid number of lines\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"invalid number of bytes\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"bkKmMGTPEZY0\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"--follow\00", align 1
@follow_mode_string = internal constant [3 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i8* null], align 16
@follow_mode_map = internal constant [2 x i32] [i32 2, i32 1], align 4
@.str.49 = private unnamed_addr constant [56 x i8] c"invalid maximum number of unchanged stats between opens\00", align 1
@max_n_unchanged_stats_between_opens = internal unnamed_addr global i64 5, align 8
@disable_inotify = internal unnamed_addr global i1 false, align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"invalid PID\00", align 1
@pid = internal unnamed_addr global i32 0, align 4
@presume_input_pipe = internal unnamed_addr global i1 false, align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"invalid number of seconds: %s\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"Ian Lance Taylor\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"option used in invalid context -- %c\00", align 1
@.str.57 = private unnamed_addr constant [64 x i8] c"warning: --retry ignored; --retry is useful only when following\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"warning: --retry only effective for the initial open\00", align 1
@.str.59 = private unnamed_addr constant [62 x i8] c"warning: PID ignored; --pid=PID is useful only when following\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"warning: --pid=PID is not supported on this system\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@main.dummy_stdin = internal unnamed_addr constant i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), align 8
@.str.18 = private unnamed_addr constant [25 x i8] c"cannot follow %s by name\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"warning: following standard input indefinitely is ineffective\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@write_header.first_file = internal unnamed_addr global i1 false, align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"%s==> %s <==\0A\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"beg\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"src/tail.c\00", align 1
@__PRETTY_FUNCTION__.pipe_lines = private unnamed_addr constant [60 x i8] c"_Bool pipe_lines(const char *, int, uintmax_t, uintmax_t *)\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"%s: cannot follow end of this type of file%s\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"; giving up on this name\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"closing %s (fd=%d)\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.97 = private unnamed_addr constant [36 x i8] c"cannot watch parent directory of %s\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"inotify resources exhausted\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"cannot watch %s\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"%s was replaced\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"no files remaining\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"error monitoring inotify event\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"error reading inotify event\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"inotify cannot be used, reverting to polling\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"%s: cannot change nonblocking mode\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"%s: file truncated\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"cannot read realtime clock\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"valid_file_spec (f)\00", align 1
@__PRETTY_FUNCTION__.recheck = private unnamed_addr constant [40 x i8] c"void recheck(struct File_spec *, _Bool)\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"%s has been replaced with an untailable symbolic link\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"%s has become inaccessible\00", align 1
@.str.108 = private unnamed_addr constant [47 x i8] c"%s has been replaced with an untailable file%s\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c"%s has been replaced with an untailable remote file\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"f->fd == -1\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"%s has become accessible\00", align 1
@.str.112 = private unnamed_addr constant [37 x i8] c"%s has appeared;  following new file\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"%s has been replaced;  following new file\00", align 1
@.str.94 = private unnamed_addr constant [54 x i8] c"cannot determine location of %s. reverting to polling\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"%s: cannot seek to offset %s\00", align 1
@.str.89 = private unnamed_addr constant [38 x i8] c"%s: cannot seek to relative offset %s\00", align 1
@.str.90 = private unnamed_addr constant [42 x i8] c"%s: cannot seek to end-relative offset %s\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"descriptor\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"max-unchanged-stats\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"-disable-inotify\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"-presume-input-pipe\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"retry\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"sleep-interval\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.27 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.28 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.29 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.30 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.31 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8
@.str.40 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.97 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.117 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.118 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.119 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.120 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.135 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.140 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.141 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.142 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.145, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.146, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.147, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.148, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.149, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.150, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.152, i32 0, i32 0), i8* null], align 16
@.str.143 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.145 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.146 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.147 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.148 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.149 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.150 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.151 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.152 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.153 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.154 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.155 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.156 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.157 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.158 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.159 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.176 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.177 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.178 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.179 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.180 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.181 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.182 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.183 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.184 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.185 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.186 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.187 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.188 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.189 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.192 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.193 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.194 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.195 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.196 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.197 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.208 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.219 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.220 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.235 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.238 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.239 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.240 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.241 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.242 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.243 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.244 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %64

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %12, i32 10) #11
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = tail call i32 @fputs_unlocked(i8* %14, %struct._IO_FILE* %15) #11
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 5) #11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = tail call i32 @fputs_unlocked(i8* %17, %struct._IO_FILE* %18) #11
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = tail call i32 @fputs_unlocked(i8* %20, %struct._IO_FILE* %21) #11
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #11
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([554 x i8], [554 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %26, i32 10, i32 5) #11
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29) #11
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([331 x i8], [331 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32) #11
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 5) #11
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35) #11
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 5) #11
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38) #11
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 5) #11
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41) #11
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.11, i64 0, i64 0), i32 5) #11
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44) #11
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([437 x i8], [437 x i8]* @.str.12, i64 0, i64 0), i32 5) #11
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47) #11
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #11
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0)) #11
  %51 = tail call i8* @setlocale(i32 5, i8* null) #11
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %8
  %54 = tail call i32 @strncmp(i8* nonnull %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i64 3) #14
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

; <label>:56:                                     ; preds = %53
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.36, i64 0, i64 0), i32 5) #11
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #11
  br label %59

; <label>:59:                                     ; preds = %8, %53, %56
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #11
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0)) #11
  br label %64

; <label>:64:                                     ; preds = %59, %3
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
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.File_spec*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.fd_set, align 8
  %8 = alloca %struct.File_spec, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca [8192 x i8], align 16
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.stat, align 16
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %16) #11
  store i64 10, i64* %15, align 8
  %17 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %17) #11
  %18 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #11
  %19 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0)) #11
  %20 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)) #11
  %21 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11
  store i1 false, i1* @have_read_stdin, align 1
  store i8 1, i8* @count_lines, align 1
  store i1 false, i1* @print_headers, align 1
  store i8 0, i8* @from_start, align 1
  store i8 0, i8* @forever, align 1
  store i1 true, i1* @line_end, align 1
  switch i32 %0, label %31 [
    i32 2, label %50
    i32 3, label %22
  ]

; <label>:22:                                     ; preds = %2
  %23 = getelementptr inbounds i8*, i8** %1, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 45
  br i1 %26, label %27, label %50

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds i8, i8* %24, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %50, label %42

; <label>:31:                                     ; preds = %2
  %32 = add i32 %0, -3
  %33 = icmp ult i32 %32, 2
  br i1 %33, label %34, label %114

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds i8*, i8** %1, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp eq i8 %37, 45
  br i1 %38, label %39, label %114

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i8, i8* %36, i64 1
  %41 = load i8, i8* %40, align 1
  br label %42

; <label>:42:                                     ; preds = %39, %27
  %43 = phi i8 [ %41, %39 ], [ %29, %27 ]
  %44 = phi i8* [ %36, %39 ], [ %24, %27 ]
  %45 = icmp eq i8 %43, 45
  br i1 %45, label %46, label %114

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds i8, i8* %44, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %114

; <label>:50:                                     ; preds = %46, %27, %22, %2
  %51 = tail call i32 @posix2_version() #11
  %52 = getelementptr inbounds i8*, i8** %1, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %114 [
    i32 43, label %57
    i32 45, label %60
  ]

; <label>:57:                                     ; preds = %50
  %58 = add i32 %51, -200112
  %59 = icmp ugt i32 %58, 696
  br i1 %59, label %69, label %114

; <label>:60:                                     ; preds = %50
  %61 = icmp slt i32 %51, 200112
  br i1 %61, label %69, label %62

; <label>:62:                                     ; preds = %60
  %63 = load i8, i8* %54, align 1
  %64 = icmp eq i8 %63, 99
  %65 = zext i1 %64 to i64
  %66 = getelementptr inbounds i8, i8* %54, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %114, label %69

; <label>:69:                                     ; preds = %62, %60, %57
  %70 = phi i8 [ 1, %57 ], [ 0, %62 ], [ 0, %60 ]
  br label %71

; <label>:71:                                     ; preds = %71, %69
  %72 = phi i64 [ 1, %69 ], [ %78, %71 ]
  %73 = getelementptr inbounds i8, i8* %53, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = add nsw i32 %75, -48
  %77 = icmp ult i32 %76, 10
  %78 = add nuw nsw i64 %72, 1
  br i1 %77, label %71, label %79

; <label>:79:                                     ; preds = %71
  switch i32 %75, label %88 [
    i32 98, label %80
    i32 99, label %81
    i32 108, label %83
  ]

; <label>:80:                                     ; preds = %79
  br label %81

; <label>:81:                                     ; preds = %80, %79
  %82 = phi i64 [ 10, %79 ], [ 5120, %80 ]
  br label %83

; <label>:83:                                     ; preds = %81, %79
  %84 = phi i8 [ 1, %79 ], [ 0, %81 ]
  %85 = phi i64 [ 10, %79 ], [ %82, %81 ]
  %86 = getelementptr inbounds i8, i8* %73, i64 1
  %87 = load i8, i8* %86, align 1
  br label %88

; <label>:88:                                     ; preds = %83, %79
  %89 = phi i8 [ %74, %79 ], [ %87, %83 ]
  %90 = phi i8 [ 1, %79 ], [ %84, %83 ]
  %91 = phi i64 [ 10, %79 ], [ %85, %83 ]
  %92 = phi i8* [ %73, %79 ], [ %86, %83 ]
  %93 = icmp eq i8 %89, 102
  %94 = getelementptr inbounds i8, i8* %92, i64 1
  %95 = zext i1 %93 to i8
  %96 = select i1 %93, i8* %94, i8* %92
  %97 = load i8, i8* %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %114

; <label>:99:                                     ; preds = %88
  %100 = icmp eq i64 %72, 1
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %99
  store i64 %91, i64* %15, align 8
  br label %112

; <label>:102:                                    ; preds = %99
  %103 = call i32 @xstrtoumax(i8* nonnull %54, i8** null, i32 10, i64* nonnull %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0)) #11
  %104 = and i32 %103, -3
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

; <label>:106:                                    ; preds = %102
  %107 = tail call i32* @__errno_location() #1
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), i32 5) #11
  %110 = load i8*, i8** %52, align 8
  %111 = call i8* @quote(i8* %110) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i8* %109, i8* %111) #11
  unreachable

; <label>:112:                                    ; preds = %102, %101
  store i8 %70, i8* @from_start, align 1
  %113 = and i8 %90, 1
  store i8 %113, i8* @count_lines, align 1
  store i8 %95, i8* @forever, align 1
  br label %114

; <label>:114:                                    ; preds = %31, %34, %42, %46, %50, %57, %62, %88, %112
  %115 = phi i1 [ false, %46 ], [ false, %31 ], [ true, %112 ], [ false, %50 ], [ false, %57 ], [ false, %62 ], [ false, %88 ], [ false, %42 ], [ false, %34 ]
  %116 = zext i1 %115 to i32
  %117 = sub nsw i32 %0, %116
  %118 = zext i1 %115 to i64
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118
  %120 = bitcast double* %14 to i8*
  br label %121

; <label>:121:                                    ; preds = %126, %114
  %122 = phi i32 [ 0, %114 ], [ %127, %126 ]
  %123 = phi double [ 1.000000e+00, %114 ], [ %128, %126 ]
  %124 = call i32 @getopt_long(i32 %117, i8** %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), %struct.option* getelementptr inbounds ([16 x %struct.option], [16 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11
  switch i32 %124, label %183 [
    i32 -1, label %184
    i32 70, label %125
    i32 99, label %129
    i32 110, label %129
    i32 102, label %142
    i32 132, label %142
    i32 128, label %152
    i32 129, label %153
    i32 133, label %157
    i32 130, label %158
    i32 131, label %163
    i32 113, label %126
    i32 115, label %164
    i32 118, label %175
    i32 122, label %176
    i32 -130, label %177
    i32 -131, label %178
    i32 48, label %181
    i32 49, label %181
    i32 50, label %181
    i32 51, label %181
    i32 52, label %181
    i32 53, label %181
    i32 54, label %181
    i32 55, label %181
    i32 56, label %181
    i32 57, label %181
  ]

; <label>:125:                                    ; preds = %121
  store i8 1, i8* @forever, align 1
  store i32 1, i32* @follow_mode, align 4
  store i1 true, i1* @reopen_inaccessible_files, align 1
  br label %126

; <label>:126:                                    ; preds = %125, %137, %150, %152, %153, %157, %158, %163, %174, %175, %176, %121
  %127 = phi i32 [ %122, %176 ], [ 1, %175 ], [ %122, %174 ], [ %122, %163 ], [ %122, %158 ], [ %122, %157 ], [ %122, %153 ], [ %122, %152 ], [ %122, %150 ], [ %122, %137 ], [ %122, %125 ], [ 2, %121 ]
  %128 = phi double [ %123, %176 ], [ %123, %175 ], [ %167, %174 ], [ %123, %163 ], [ %123, %158 ], [ %123, %157 ], [ %123, %153 ], [ %123, %152 ], [ %123, %150 ], [ %123, %137 ], [ %123, %125 ], [ %123, %121 ]
  br label %121

; <label>:129:                                    ; preds = %121, %121
  %130 = icmp eq i32 %124, 110
  %131 = zext i1 %130 to i8
  store i8 %131, i8* @count_lines, align 1
  %132 = load i8*, i8** @optarg, align 8
  %133 = load i8, i8* %132, align 1
  switch i8 %133, label %137 [
    i8 43, label %134
    i8 45, label %135
  ]

; <label>:134:                                    ; preds = %129
  store i8 1, i8* @from_start, align 1
  br label %137

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds i8, i8* %132, i64 1
  store i8* %136, i8** @optarg, align 8
  br label %137

; <label>:137:                                    ; preds = %135, %134, %129
  %138 = phi i8* [ %132, %129 ], [ %136, %135 ], [ %132, %134 ]
  %139 = select i1 %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i64 0, i64 0)
  %140 = call i8* @dcgettext(i8* null, i8* %139, i32 5) #11
  %141 = call i64 @xdectoumax(i8* %138, i64 0, i64 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0), i8* %140, i32 0) #11
  store i64 %141, i64* %15, align 8
  br label %126

; <label>:142:                                    ; preds = %121, %121
  store i8 1, i8* @forever, align 1
  %143 = load i8*, i8** @optarg, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %150, label %145

; <label>:145:                                    ; preds = %142
  %146 = load void ()*, void ()** @argmatch_die, align 8
  %147 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i64 0, i64 0), i8* nonnull %143, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @follow_mode_string, i64 0, i64 0), i8* bitcast ([2 x i32]* @follow_mode_map to i8*), i64 4, void ()* %146) #11
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* @follow_mode_map, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  br label %150

; <label>:150:                                    ; preds = %145, %142
  %151 = phi i32 [ %149, %145 ], [ 2, %142 ]
  store i32 %151, i32* @follow_mode, align 4
  br label %126

; <label>:152:                                    ; preds = %121
  store i1 true, i1* @reopen_inaccessible_files, align 1
  br label %126

; <label>:153:                                    ; preds = %121
  %154 = load i8*, i8** @optarg, align 8
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), i32 5) #11
  %156 = call i64 @xdectoumax(i8* %154, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %155, i32 0) #11
  store i64 %156, i64* @max_n_unchanged_stats_between_opens, align 8
  br label %126

; <label>:157:                                    ; preds = %121
  store i1 true, i1* @disable_inotify, align 1
  br label %126

; <label>:158:                                    ; preds = %121
  %159 = load i8*, i8** @optarg, align 8
  %160 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #11
  %161 = call i64 @xdectoumax(i8* %159, i64 0, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* %160, i32 0) #11
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* @pid, align 4
  br label %126

; <label>:163:                                    ; preds = %121
  store i1 true, i1* @presume_input_pipe, align 1
  br label %126

; <label>:164:                                    ; preds = %121
  call void @llvm.lifetime.start(i64 8, i8* nonnull %120) #11
  %165 = load i8*, i8** @optarg, align 8
  %166 = call zeroext i1 @xstrtod(i8* %165, i8** null, double* nonnull %14, double (i8*, i8**)* nonnull @c_strtod) #11
  %167 = load double, double* %14, align 8
  %168 = fcmp oge double %167, 0.000000e+00
  %169 = and i1 %166, %168
  br i1 %169, label %174, label %170

; <label>:170:                                    ; preds = %164
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i64 0, i64 0), i32 5) #11
  %172 = load i8*, i8** @optarg, align 8
  %173 = call i8* @quote(i8* %172) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %171, i8* %173) #11
  unreachable

; <label>:174:                                    ; preds = %164
  call void @llvm.lifetime.end(i64 8, i8* nonnull %120) #11
  br label %126

; <label>:175:                                    ; preds = %121
  br label %126

; <label>:176:                                    ; preds = %121
  store i1 false, i1* @line_end, align 1
  br label %126

; <label>:177:                                    ; preds = %121
  call void @usage(i32 0) #15
  unreachable

; <label>:178:                                    ; preds = %121
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %180 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* %180, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i64 0, i64 0), i8* null) #11
  call void @exit(i32 0) #15
  unreachable

; <label>:181:                                    ; preds = %121, %121, %121, %121, %121, %121, %121, %121, %121, %121
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %182, i32 %124) #11
  unreachable

; <label>:183:                                    ; preds = %121
  call void @usage(i32 1) #15
  unreachable

; <label>:184:                                    ; preds = %121
  %185 = load i1, i1* @reopen_inaccessible_files, align 1
  br i1 %185, label %186, label %196

; <label>:186:                                    ; preds = %184
  %187 = load i8, i8* @forever, align 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %191

; <label>:189:                                    ; preds = %186
  store i1 false, i1* @reopen_inaccessible_files, align 1
  %190 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.57, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %190) #11
  br label %196

; <label>:191:                                    ; preds = %186
  %192 = load i32, i32* @follow_mode, align 4
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %196

; <label>:194:                                    ; preds = %191
  %195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %195) #11
  br label %196

; <label>:196:                                    ; preds = %194, %191, %189, %184
  %197 = load i32, i32* @pid, align 4
  %198 = icmp ne i32 %197, 0
  %199 = load i8, i8* @forever, align 1
  %200 = icmp eq i8 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %204

; <label>:202:                                    ; preds = %196
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.59, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %203) #11
  br label %215

; <label>:204:                                    ; preds = %196
  %205 = icmp eq i32 %197, 0
  br i1 %205, label %215, label %206

; <label>:206:                                    ; preds = %204
  %207 = call i32 @kill(i32 %197, i32 0) #11
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209

; <label>:209:                                    ; preds = %206
  %210 = tail call i32* @__errno_location() #1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 38
  br i1 %212, label %213, label %215

; <label>:213:                                    ; preds = %209
  %214 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %214) #11
  store i32 0, i32* @pid, align 4
  br label %215

; <label>:215:                                    ; preds = %202, %204, %206, %209, %213
  %216 = load i8, i8* @from_start, align 1
  %217 = icmp ne i8 %216, 0
  %218 = load i64, i64* %15, align 8
  %219 = icmp ne i64 %218, 0
  %220 = and i1 %217, %219
  br i1 %220, label %221, label %223

; <label>:221:                                    ; preds = %215
  %222 = add i64 %218, -1
  store i64 %222, i64* %15, align 8
  br label %223

; <label>:223:                                    ; preds = %221, %215
  %224 = load i32, i32* @optind, align 4
  %225 = icmp sgt i32 %117, %224
  br i1 %225, label %226, label %232

; <label>:226:                                    ; preds = %223
  %227 = sub nsw i32 %117, %224
  %228 = sext i32 %227 to i64
  %229 = sext i32 %224 to i64
  %230 = getelementptr inbounds i8*, i8** %119, i64 %229
  %231 = icmp eq i32 %227, 0
  br i1 %231, label %304, label %232

; <label>:232:                                    ; preds = %223, %226
  %233 = phi i64 [ %228, %226 ], [ 1, %223 ]
  %234 = phi i8** [ %230, %226 ], [ @main.dummy_stdin, %223 ]
  %235 = and i64 %233, 1
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %253, label %237

; <label>:237:                                    ; preds = %232
  br label %238

; <label>:238:                                    ; preds = %237
  %239 = load i8*, i8** %234, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = sub nsw i32 45, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %249

; <label>:244:                                    ; preds = %238
  %245 = getelementptr inbounds i8, i8* %239, i64 1
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = sub nsw i32 0, %247
  br label %249

; <label>:249:                                    ; preds = %244, %238
  %250 = phi i32 [ %248, %244 ], [ %242, %238 ]
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i8
  br label %253

; <label>:253:                                    ; preds = %232, %249
  %254 = phi i8 [ undef, %232 ], [ %252, %249 ]
  %255 = phi i8 [ 0, %232 ], [ %252, %249 ]
  %256 = phi i64 [ 0, %232 ], [ 1, %249 ]
  %257 = icmp eq i64 %233, 1
  br i1 %257, label %284, label %258

; <label>:258:                                    ; preds = %253
  br label %259

; <label>:259:                                    ; preds = %1993, %258
  %260 = phi i8 [ %255, %258 ], [ %1997, %1993 ]
  %261 = phi i64 [ %256, %258 ], [ %1998, %1993 ]
  %262 = getelementptr inbounds i8*, i8** %234, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = sub nsw i32 45, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

; <label>:268:                                    ; preds = %259
  %269 = getelementptr inbounds i8, i8* %263, i64 1
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = sub nsw i32 0, %271
  br label %273

; <label>:273:                                    ; preds = %268, %259
  %274 = phi i32 [ %272, %268 ], [ %266, %259 ]
  %275 = icmp eq i32 %274, 0
  %276 = add nuw i64 %261, 1
  %277 = getelementptr inbounds i8*, i8** %234, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = sub nsw i32 45, %280
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %1988, label %1993

; <label>:283:                                    ; preds = %1993
  br label %284

; <label>:284:                                    ; preds = %253, %283
  %285 = phi i8 [ %254, %253 ], [ %1997, %283 ]
  %286 = and i8 %285, 1
  %287 = icmp ne i8 %286, 0
  %288 = load i32, i32* @follow_mode, align 4
  %289 = icmp eq i32 %288, 1
  %290 = and i1 %287, %289
  br i1 %290, label %291, label %294

; <label>:291:                                    ; preds = %284
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 5) #11
  %293 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %292, i8* %293) #11
  unreachable

; <label>:294:                                    ; preds = %284
  %295 = load i8, i8* @forever, align 1
  %296 = icmp eq i8 %295, 0
  %297 = xor i1 %287, true
  %298 = or i1 %296, %297
  br i1 %298, label %304, label %299

; <label>:299:                                    ; preds = %294
  %300 = call i32 @isatty(i32 0) #11
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %304, label %302

; <label>:302:                                    ; preds = %299
  %303 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %303) #11
  br label %304

; <label>:304:                                    ; preds = %226, %294, %299, %302
  %305 = phi i1 [ false, %294 ], [ false, %299 ], [ false, %302 ], [ true, %226 ]
  %306 = phi i64 [ %233, %294 ], [ %233, %299 ], [ %233, %302 ], [ 0, %226 ]
  %307 = phi i8** [ %234, %294 ], [ %234, %299 ], [ %234, %302 ], [ %230, %226 ]
  %308 = load i64, i64* %15, align 8
  %309 = icmp eq i64 %308, 0
  %310 = load i8, i8* @forever, align 1
  %311 = load i8, i8* @from_start, align 1
  %312 = or i8 %311, %310
  %313 = icmp eq i8 %312, 0
  %314 = and i1 %309, %313
  br i1 %314, label %1986, label %315

; <label>:315:                                    ; preds = %304
  %316 = icmp ugt i64 %306, 96076792050570581
  br i1 %316, label %317, label %318

; <label>:317:                                    ; preds = %315
  call void @xalloc_die() #15
  unreachable

; <label>:318:                                    ; preds = %315
  %319 = mul nsw i64 %306, 96
  %320 = call noalias i8* @xmalloc(i64 %319) #11
  %321 = bitcast i8* %320 to %struct.File_spec*
  br i1 %305, label %372, label %322

; <label>:322:                                    ; preds = %318
  %323 = add nsw i64 %306, -1
  %324 = and i64 %306, 3
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %339, label %326

; <label>:326:                                    ; preds = %322
  br label %327

; <label>:327:                                    ; preds = %327, %326
  %328 = phi i64 [ %335, %327 ], [ 0, %326 ]
  %329 = phi i64 [ %336, %327 ], [ %324, %326 ]
  %330 = getelementptr inbounds i8*, i8** %307, i64 %328
  %331 = bitcast i8** %330 to i64*
  %332 = load i64, i64* %331, align 8
  %333 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %328
  %334 = bitcast %struct.File_spec* %333 to i64*
  store i64 %332, i64* %334, align 8
  %335 = add nuw i64 %328, 1
  %336 = add i64 %329, -1
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %327

; <label>:338:                                    ; preds = %327
  br label %339

; <label>:339:                                    ; preds = %322, %338
  %340 = phi i64 [ 0, %322 ], [ %335, %338 ]
  %341 = icmp ult i64 %323, 3
  br i1 %341, label %371, label %342

; <label>:342:                                    ; preds = %339
  br label %343

; <label>:343:                                    ; preds = %343, %342
  %344 = phi i64 [ %340, %342 ], [ %368, %343 ]
  %345 = getelementptr inbounds i8*, i8** %307, i64 %344
  %346 = bitcast i8** %345 to i64*
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %344
  %349 = bitcast %struct.File_spec* %348 to i64*
  store i64 %347, i64* %349, align 8
  %350 = add nuw i64 %344, 1
  %351 = getelementptr inbounds i8*, i8** %307, i64 %350
  %352 = bitcast i8** %351 to i64*
  %353 = load i64, i64* %352, align 8
  %354 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %350
  %355 = bitcast %struct.File_spec* %354 to i64*
  store i64 %353, i64* %355, align 8
  %356 = add i64 %344, 2
  %357 = getelementptr inbounds i8*, i8** %307, i64 %356
  %358 = bitcast i8** %357 to i64*
  %359 = load i64, i64* %358, align 8
  %360 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %356
  %361 = bitcast %struct.File_spec* %360 to i64*
  store i64 %359, i64* %361, align 8
  %362 = add i64 %344, 3
  %363 = getelementptr inbounds i8*, i8** %307, i64 %362
  %364 = bitcast i8** %363 to i64*
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %362
  %367 = bitcast %struct.File_spec* %366 to i64*
  store i64 %365, i64* %367, align 8
  %368 = add i64 %344, 4
  %369 = icmp eq i64 %368, %306
  br i1 %369, label %370, label %343

; <label>:370:                                    ; preds = %343
  br label %371

; <label>:371:                                    ; preds = %339, %370
  br label %372

; <label>:372:                                    ; preds = %371, %318
  %373 = icmp eq i32 %122, 1
  br i1 %373, label %378, label %374

; <label>:374:                                    ; preds = %372
  %375 = icmp eq i32 %122, 0
  %376 = icmp ugt i64 %306, 1
  %377 = and i1 %375, %376
  br i1 %377, label %378, label %379

; <label>:378:                                    ; preds = %374, %372
  store i1 true, i1* @print_headers, align 1
  br label %379

; <label>:379:                                    ; preds = %378, %374
  br i1 %305, label %1159, label %380

; <label>:380:                                    ; preds = %379
  %381 = bitcast %struct.stat* %10 to i8*
  %382 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 9
  %383 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 3
  %384 = getelementptr inbounds %struct.stat, %struct.stat* %10, i64 0, i32 8
  %385 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %386 = bitcast %struct.stat* %13 to i8*
  %387 = getelementptr inbounds %struct.stat, %struct.stat* %13, i64 0, i32 3
  %388 = getelementptr inbounds %struct.stat, %struct.stat* %13, i64 0, i32 12, i32 0
  %389 = bitcast %struct.stat* %12 to i8*
  %390 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 3
  %391 = ptrtoint [8192 x i8]* %11 to i64
  %392 = bitcast i64* %388 to <2 x i64>*
  %393 = bitcast %struct.stat* %13 to <2 x i64>*
  br label %394

; <label>:394:                                    ; preds = %380, %1150
  %395 = phi i1 [ true, %380 ], [ %1154, %1150 ]
  %396 = phi i64 [ 0, %380 ], [ %1155, %1150 ]
  %397 = load i64, i64* %15, align 8
  %398 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = load i8, i8* %399, align 1
  %401 = icmp eq i8 %400, 45
  br i1 %401, label %402, label %407

; <label>:402:                                    ; preds = %394
  %403 = getelementptr inbounds i8, i8* %399, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %406, label %407

; <label>:406:                                    ; preds = %402
  store i1 true, i1* @have_read_stdin, align 1
  br label %409

; <label>:407:                                    ; preds = %402, %394
  %408 = call i32 (i8*, i32, ...) @open_safer(i8* %399, i32 0) #11
  br label %409

; <label>:409:                                    ; preds = %407, %406
  %410 = phi i1 [ true, %406 ], [ false, %407 ]
  %411 = phi i32 [ 0, %406 ], [ %408, %407 ]
  %412 = load i1, i1* @reopen_inaccessible_files, align 1
  %413 = icmp eq i32 %411, -1
  %414 = and i1 %412, %413
  %415 = xor i1 %414, true
  %416 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 8
  %417 = zext i1 %415 to i8
  store i8 %417, i8* %416, align 2
  br i1 %413, label %418, label %449

; <label>:418:                                    ; preds = %409
  %419 = load i8, i8* @forever, align 1
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %421, label %423

; <label>:421:                                    ; preds = %418
  %422 = tail call i32* @__errno_location() #1
  br label %433

; <label>:423:                                    ; preds = %418
  %424 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 9
  store i32 -1, i32* %424, align 8
  %425 = tail call i32* @__errno_location() #1
  %426 = load i32, i32* %425, align 4
  %427 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 10
  store i32 %426, i32* %427, align 4
  %428 = xor i1 %412, true
  %429 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 6
  %430 = zext i1 %428 to i8
  store i8 %430, i8* %429, align 4
  %431 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 3
  %432 = bitcast i64* %431 to i8*
  call void @llvm.memset.p0i8.i64(i8* %432, i8 0, i64 16, i32 8, i1 false) #11
  br label %433

; <label>:433:                                    ; preds = %423, %421
  %434 = phi i32* [ %422, %421 ], [ %425, %423 ]
  %435 = load i32, i32* %434, align 4
  %436 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i64 0, i64 0), i32 5) #11
  %437 = load i8*, i8** %398, align 8
  %438 = load i8, i8* %437, align 1
  %439 = icmp eq i8 %438, 45
  br i1 %439, label %440, label %446

; <label>:440:                                    ; preds = %433
  %441 = getelementptr inbounds i8, i8* %437, i64 1
  %442 = load i8, i8* %441, align 1
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %444, label %446

; <label>:444:                                    ; preds = %440
  %445 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %446

; <label>:446:                                    ; preds = %444, %440, %433
  %447 = phi i8* [ %445, %444 ], [ %437, %433 ], [ %437, %440 ]
  %448 = call i8* @quotearg_style(i32 4, i8* %447) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %435, i8* %436, i8* %448) #11
  br label %1150

; <label>:449:                                    ; preds = %409
  %450 = load i1, i1* @print_headers, align 1
  br i1 %450, label %451, label %466

; <label>:451:                                    ; preds = %449
  %452 = load i8*, i8** %398, align 8
  %453 = load i8, i8* %452, align 1
  %454 = icmp eq i8 %453, 45
  br i1 %454, label %455, label %461

; <label>:455:                                    ; preds = %451
  %456 = getelementptr inbounds i8, i8* %452, i64 1
  %457 = load i8, i8* %456, align 1
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %459, label %461

; <label>:459:                                    ; preds = %455
  %460 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %461

; <label>:461:                                    ; preds = %459, %455, %451
  %462 = phi i8* [ %460, %459 ], [ %452, %451 ], [ %452, %455 ]
  %463 = load i1, i1* @write_header.first_file, align 1
  %464 = select i1 %463, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %465 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i8* %464, i8* %462) #11
  store i1 true, i1* @write_header.first_file, align 1
  br label %466

; <label>:466:                                    ; preds = %461, %449
  %467 = load i8*, i8** %398, align 8
  %468 = load i8, i8* %467, align 1
  %469 = icmp eq i8 %468, 45
  br i1 %469, label %470, label %476

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %467, i64 1
  %472 = load i8, i8* %471, align 1
  %473 = icmp eq i8 %472, 0
  br i1 %473, label %474, label %476

; <label>:474:                                    ; preds = %470
  %475 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %476

; <label>:476:                                    ; preds = %474, %470, %466
  %477 = phi i8* [ %475, %474 ], [ %467, %466 ], [ %467, %470 ]
  %478 = load i8, i8* @count_lines, align 1
  %479 = icmp eq i8 %478, 0
  br i1 %479, label %825, label %480

; <label>:480:                                    ; preds = %476
  call void @llvm.lifetime.start(i64 144, i8* nonnull %389) #11
  %481 = call i32 @__fxstat(i32 1, i32 %411, %struct.stat* nonnull %12) #11
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %488, label %483

; <label>:483:                                    ; preds = %480
  %484 = tail call i32* @__errno_location() #1
  %485 = load i32, i32* %484, align 4
  %486 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i32 5) #11
  %487 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %485, i8* %486, i8* %487) #11
  br label %822

; <label>:488:                                    ; preds = %480
  %489 = load i8, i8* @from_start, align 1
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %534, label %491

; <label>:491:                                    ; preds = %488
  %492 = icmp eq i64 %397, 0
  br i1 %492, label %527, label %493

; <label>:493:                                    ; preds = %491
  br label %494

; <label>:494:                                    ; preds = %493, %525
  %495 = phi i64 [ %505, %525 ], [ 0, %493 ]
  %496 = phi i64 [ %510, %525 ], [ %397, %493 ]
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %385) #11
  %497 = call i64 @safe_read(i32 %411, i8* nonnull %385, i64 8192) #11
  switch i64 %497, label %503 [
    i64 0, label %531
    i64 -1, label %498
  ]

; <label>:498:                                    ; preds = %494
  %499 = tail call i32* @__errno_location() #1
  %500 = load i32, i32* %499, align 4
  %501 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %502 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %500, i8* %501, i8* %502) #11
  br label %532

; <label>:503:                                    ; preds = %494
  %504 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %497
  %505 = add i64 %497, %495
  %506 = load i1, i1* @line_end, align 1
  %507 = select i1 %506, i32 10, i32 0
  %508 = ptrtoint i8* %504 to i64
  br label %509

; <label>:509:                                    ; preds = %516, %503
  %510 = phi i64 [ %496, %503 ], [ %518, %516 ]
  %511 = phi i8* [ %385, %503 ], [ %517, %516 ]
  %512 = ptrtoint i8* %511 to i64
  %513 = sub i64 %508, %512
  %514 = call i8* @memchr(i8* %511, i32 %507, i64 %513) #14
  %515 = icmp eq i8* %514, null
  br i1 %515, label %525, label %516

; <label>:516:                                    ; preds = %509
  %517 = getelementptr inbounds i8, i8* %514, i64 1
  %518 = add i64 %510, -1
  %519 = icmp eq i64 %518, 0
  br i1 %519, label %520, label %509

; <label>:520:                                    ; preds = %516
  %521 = icmp ult i8* %517, %504
  br i1 %521, label %522, label %526

; <label>:522:                                    ; preds = %520
  %523 = ptrtoint i8* %517 to i64
  %524 = sub i64 %508, %523
  call fastcc void @xwrite_stdout(i8* %517, i64 %524) #11
  br label %526

; <label>:525:                                    ; preds = %509
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %494

; <label>:526:                                    ; preds = %522, %520
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %527

; <label>:527:                                    ; preds = %526, %491
  %528 = phi i64 [ 0, %491 ], [ %505, %526 ]
  %529 = call fastcc i64 @dump_remainder(i1 zeroext false, i8* %477, i32 %411, i64 -1) #11
  %530 = add i64 %529, %528
  br label %822

; <label>:531:                                    ; preds = %494
  br label %532

; <label>:532:                                    ; preds = %531, %498
  %533 = phi i1 [ false, %498 ], [ true, %531 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %822

; <label>:534:                                    ; preds = %488
  %535 = load i1, i1* @presume_input_pipe, align 1
  br i1 %535, label %653, label %536

; <label>:536:                                    ; preds = %534
  %537 = load i32, i32* %390, align 8
  %538 = and i32 %537, 61440
  %539 = icmp eq i32 %538, 32768
  br i1 %539, label %540, label %653

; <label>:540:                                    ; preds = %536
  %541 = call i64 @lseek(i32 %411, i64 0, i32 1) #11
  %542 = icmp eq i64 %541, -1
  br i1 %542, label %653, label %543

; <label>:543:                                    ; preds = %540
  %544 = call i64 @lseek(i32 %411, i64 0, i32 2) #11
  %545 = icmp sgt i64 %544, %541
  br i1 %545, label %546, label %651

; <label>:546:                                    ; preds = %543
  %547 = icmp eq i64 %544, 0
  br i1 %547, label %822, label %548

; <label>:548:                                    ; preds = %546
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %385) #11
  %549 = icmp eq i64 %397, 0
  br i1 %549, label %647, label %550

; <label>:550:                                    ; preds = %548
  %551 = sub nsw i64 %544, %541
  %552 = srem i64 %551, 8192
  %553 = icmp eq i64 %552, 0
  %554 = select i1 %553, i64 8192, i64 %552
  %555 = sub i64 %544, %554
  %556 = call fastcc i64 @xlseek(i32 %411, i64 %555, i32 0, i8* %477) #11
  %557 = call i64 @safe_read(i32 %411, i8* nonnull %385, i64 %554) #11
  %558 = icmp eq i64 %557, -1
  br i1 %558, label %559, label %564

; <label>:559:                                    ; preds = %550
  %560 = tail call i32* @__errno_location() #1
  %561 = load i32, i32* %560, align 4
  %562 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %563 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %561, i8* %562, i8* %563) #11
  br label %649

; <label>:564:                                    ; preds = %550
  %565 = add i64 %557, %555
  %566 = icmp eq i64 %557, 0
  br i1 %566, label %577, label %567

; <label>:567:                                    ; preds = %564
  %568 = add i64 %557, -1
  %569 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = load i1, i1* @line_end, align 1
  %573 = select i1 %572, i32 10, i32 0
  %574 = icmp ne i32 %571, %573
  %575 = sext i1 %574 to i64
  %576 = add i64 %575, %397
  br label %577

; <label>:577:                                    ; preds = %567, %564
  %578 = phi i64 [ %397, %564 ], [ %576, %567 ]
  %579 = phi i64 [ 0, %564 ], [ %557, %567 ]
  br label %580

; <label>:580:                                    ; preds = %577, %639
  %581 = phi i64 [ %640, %639 ], [ %565, %577 ]
  %582 = phi i64 [ %643, %639 ], [ %578, %577 ]
  %583 = phi i64 [ %642, %639 ], [ %579, %577 ]
  %584 = phi i64 [ %641, %639 ], [ %555, %577 ]
  %585 = add i64 %583, -1
  %586 = sub i64 %544, %583
  %587 = sub i64 %586, %584
  br label %588

; <label>:588:                                    ; preds = %611, %580
  %589 = phi i64 [ %581, %580 ], [ %612, %611 ]
  %590 = phi i64 [ %582, %580 ], [ %613, %611 ]
  %591 = phi i64 [ %583, %580 ], [ %615, %611 ]
  %592 = icmp eq i64 %591, 0
  br i1 %592, label %617, label %593

; <label>:593:                                    ; preds = %588
  %594 = load i1, i1* @line_end, align 1
  %595 = select i1 %594, i32 10, i32 0
  %596 = call i8* @memrchr(i8* nonnull %385, i32 %595, i64 %591) #14
  %597 = icmp eq i8* %596, null
  br i1 %597, label %611, label %598

; <label>:598:                                    ; preds = %593
  %599 = ptrtoint i8* %596 to i64
  %600 = sub i64 %599, %391
  %601 = add i64 %590, -1
  %602 = icmp eq i64 %590, 0
  br i1 %602, label %603, label %611

; <label>:603:                                    ; preds = %598
  %604 = icmp eq i64 %585, %600
  br i1 %604, label %608, label %605

; <label>:605:                                    ; preds = %603
  %606 = getelementptr inbounds i8, i8* %596, i64 1
  %607 = sub i64 %585, %600
  call fastcc void @xwrite_stdout(i8* %606, i64 %607) #11
  br label %608

; <label>:608:                                    ; preds = %605, %603
  %609 = call fastcc i64 @dump_remainder(i1 zeroext false, i8* %477, i32 %411, i64 %587) #11
  %610 = add i64 %609, %589
  br label %611

; <label>:611:                                    ; preds = %608, %598, %593
  %612 = phi i64 [ %589, %593 ], [ %610, %608 ], [ %589, %598 ]
  %613 = phi i64 [ %590, %593 ], [ %601, %608 ], [ %601, %598 ]
  %614 = phi i32 [ 5, %593 ], [ 1, %608 ], [ 0, %598 ]
  %615 = phi i64 [ %591, %593 ], [ %600, %608 ], [ %600, %598 ]
  %616 = trunc i32 %614 to i3
  switch i3 %616, label %637 [
    i3 0, label %588
    i3 -3, label %617
  ]

; <label>:617:                                    ; preds = %611, %588
  %618 = phi i64 [ %589, %588 ], [ %612, %611 ]
  %619 = phi i64 [ %590, %588 ], [ %613, %611 ]
  %620 = icmp eq i64 %584, %541
  br i1 %620, label %621, label %625

; <label>:621:                                    ; preds = %617
  %622 = call fastcc i64 @xlseek(i32 %411, i64 %541, i32 0, i8* %477) #11
  %623 = call fastcc i64 @dump_remainder(i1 zeroext false, i8* %477, i32 %411, i64 %544) #11
  %624 = add i64 %623, %541
  br label %647

; <label>:625:                                    ; preds = %617
  %626 = add nsw i64 %584, -8192
  %627 = call fastcc i64 @xlseek(i32 %411, i64 %626, i32 0, i8* %477) #11
  %628 = call i64 @safe_read(i32 %411, i8* nonnull %385, i64 8192) #11
  %629 = icmp eq i64 %628, -1
  br i1 %629, label %630, label %635

; <label>:630:                                    ; preds = %625
  %631 = tail call i32* @__errno_location() #1
  %632 = load i32, i32* %631, align 4
  %633 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %634 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %632, i8* %633, i8* %634) #11
  br label %649

; <label>:635:                                    ; preds = %625
  %636 = add i64 %628, %626
  br label %639

; <label>:637:                                    ; preds = %611
  %638 = icmp eq i32 %614, 0
  br i1 %638, label %639, label %645

; <label>:639:                                    ; preds = %637, %635
  %640 = phi i64 [ %636, %635 ], [ %612, %637 ]
  %641 = phi i64 [ %626, %635 ], [ %584, %637 ]
  %642 = phi i64 [ %628, %635 ], [ %583, %637 ]
  %643 = phi i64 [ %619, %635 ], [ %613, %637 ]
  %644 = icmp eq i64 %642, 0
  br i1 %644, label %645, label %580

; <label>:645:                                    ; preds = %637, %639
  %646 = phi i64 [ %640, %639 ], [ %612, %637 ]
  br label %647

; <label>:647:                                    ; preds = %645, %621, %548
  %648 = phi i64 [ %544, %548 ], [ %624, %621 ], [ %646, %645 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %822

; <label>:649:                                    ; preds = %630, %559
  %650 = phi i64 [ %544, %559 ], [ %618, %630 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %822

; <label>:651:                                    ; preds = %543
  %652 = call fastcc i64 @xlseek(i32 %411, i64 %541, i32 0, i8* %477) #11
  br label %653

; <label>:653:                                    ; preds = %651, %540, %536, %534
  %654 = call noalias i8* @xmalloc(i64 8216) #11
  %655 = bitcast i8* %654 to %struct.linebuffer*
  %656 = getelementptr inbounds i8, i8* %654, i64 8192
  call void @llvm.memset.p0i8.i64(i8* %656, i8 0, i64 24, i32 8, i1 false) #11
  %657 = call noalias i8* @xmalloc(i64 8216) #11
  %658 = bitcast i8* %657 to %struct.linebuffer*
  br label %659

; <label>:659:                                    ; preds = %718, %653
  %660 = phi i64 [ 0, %653 ], [ %684, %718 ]
  %661 = phi i64 [ 0, %653 ], [ %716, %718 ]
  %662 = phi %struct.linebuffer* [ %658, %653 ], [ %664, %718 ]
  %663 = phi %struct.linebuffer* [ %655, %653 ], [ %669, %718 ]
  %664 = phi %struct.linebuffer* [ %655, %653 ], [ %720, %718 ]
  %665 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %664, i64 0, i32 2
  br label %666

; <label>:666:                                    ; preds = %721, %659
  %667 = phi i64 [ %660, %659 ], [ %684, %721 ]
  %668 = phi i64 [ %661, %659 ], [ %704, %721 ]
  %669 = phi %struct.linebuffer* [ %662, %659 ], [ %723, %721 ]
  %670 = phi %struct.linebuffer* [ %663, %659 ], [ %669, %721 ]
  %671 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %669, i64 0, i32 0, i64 0
  %672 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %669, i64 0, i32 1
  %673 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %669, i64 0, i32 2
  %674 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %670, i64 0, i32 1
  %675 = bitcast i64* %673 to i8*
  %676 = bitcast i64* %672 to <2 x i64>*
  %677 = bitcast i64* %674 to <2 x i64>*
  %678 = bitcast i64* %674 to <2 x i64>*
  br label %679

; <label>:679:                                    ; preds = %708, %666
  %680 = phi i64 [ %667, %666 ], [ %684, %708 ]
  %681 = phi i64 [ %668, %666 ], [ %704, %708 ]
  %682 = call i64 @safe_read(i32 %411, i8* %671, i64 8192) #11
  switch i64 %682, label %683 [
    i64 -1, label %724
    i64 0, label %724
  ]

; <label>:683:                                    ; preds = %679
  store i64 %682, i64* %672, align 8
  %684 = add i64 %682, %680
  %685 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %669, i64 0, i32 0, i64 %682
  call void @llvm.memset.p0i8.i64(i8* %675, i8 0, i64 16, i32 8, i1 false) #11
  %686 = load i1, i1* @line_end, align 1
  %687 = select i1 %686, i32 10, i32 0
  %688 = ptrtoint i8* %685 to i64
  %689 = call i8* @memchr(i8* %671, i32 %687, i64 %682) #14
  %690 = icmp eq i8* %689, null
  br i1 %690, label %702, label %691

; <label>:691:                                    ; preds = %683
  br label %692

; <label>:692:                                    ; preds = %691, %692
  %693 = phi i64 [ %696, %692 ], [ 0, %691 ]
  %694 = phi i8* [ %699, %692 ], [ %689, %691 ]
  %695 = getelementptr inbounds i8, i8* %694, i64 1
  %696 = add i64 %693, 1
  store i64 %696, i64* %673, align 8
  %697 = ptrtoint i8* %695 to i64
  %698 = sub i64 %688, %697
  %699 = call i8* @memchr(i8* %695, i32 %687, i64 %698) #14
  %700 = icmp eq i8* %699, null
  br i1 %700, label %701, label %692

; <label>:701:                                    ; preds = %692
  br label %702

; <label>:702:                                    ; preds = %701, %683
  %703 = phi i64 [ 0, %683 ], [ %696, %701 ]
  %704 = add i64 %703, %681
  %705 = load i64, i64* %674, align 8
  %706 = add i64 %705, %682
  %707 = icmp ult i64 %706, 8192
  br i1 %707, label %708, label %713

; <label>:708:                                    ; preds = %702
  %709 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %670, i64 0, i32 0, i64 %705
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %709, i8* nonnull %671, i64 %682, i32 1, i1 false) #11
  %710 = load <2 x i64>, <2 x i64>* %676, align 8
  %711 = load <2 x i64>, <2 x i64>* %677, align 8
  %712 = add <2 x i64> %711, %710
  store <2 x i64> %712, <2 x i64>* %678, align 8
  br label %679

; <label>:713:                                    ; preds = %702
  %714 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %670, i64 0, i32 3
  store %struct.linebuffer* %669, %struct.linebuffer** %714, align 8
  %715 = load i64, i64* %665, align 8
  %716 = sub i64 %704, %715
  %717 = icmp ugt i64 %716, %397
  br i1 %717, label %718, label %721

; <label>:718:                                    ; preds = %713
  %719 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %664, i64 0, i32 3
  %720 = load %struct.linebuffer*, %struct.linebuffer** %719, align 8
  br label %659

; <label>:721:                                    ; preds = %713
  %722 = call noalias i8* @xmalloc(i64 8216) #11
  %723 = bitcast i8* %722 to %struct.linebuffer*
  br label %666

; <label>:724:                                    ; preds = %679, %679
  %725 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %670, i64 0, i32 2
  %726 = icmp eq i64 %682, -1
  call void @free(i8* %671) #11
  br i1 %726, label %727, label %732

; <label>:727:                                    ; preds = %724
  %728 = tail call i32* @__errno_location() #1
  %729 = load i32, i32* %728, align 4
  %730 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %731 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %729, i8* %730, i8* %731) #11
  br label %801

; <label>:732:                                    ; preds = %724
  %733 = load i64, i64* %674, align 8
  %734 = icmp eq i64 %733, 0
  %735 = icmp eq i64 %397, 0
  %736 = or i1 %735, %734
  br i1 %736, label %801, label %737

; <label>:737:                                    ; preds = %732
  %738 = add i64 %733, -1
  %739 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %670, i64 0, i32 0, i64 %738
  %740 = load i8, i8* %739, align 1
  %741 = sext i8 %740 to i32
  %742 = load i1, i1* @line_end, align 1
  %743 = select i1 %742, i32 10, i32 0
  %744 = icmp eq i32 %741, %743
  br i1 %744, label %749, label %745

; <label>:745:                                    ; preds = %737
  %746 = load i64, i64* %725, align 8
  %747 = add i64 %746, 1
  store i64 %747, i64* %725, align 8
  %748 = add i64 %681, 1
  br label %749

; <label>:749:                                    ; preds = %745, %737
  %750 = phi i64 [ %681, %737 ], [ %748, %745 ]
  %751 = load i64, i64* %665, align 8
  %752 = sub i64 %750, %751
  %753 = icmp ugt i64 %752, %397
  br i1 %753, label %754, label %765

; <label>:754:                                    ; preds = %749
  br label %755

; <label>:755:                                    ; preds = %754, %755
  %756 = phi i64 [ %762, %755 ], [ %752, %754 ]
  %757 = phi %struct.linebuffer* [ %759, %755 ], [ %664, %754 ]
  %758 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %757, i64 0, i32 3
  %759 = load %struct.linebuffer*, %struct.linebuffer** %758, align 8
  %760 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %759, i64 0, i32 2
  %761 = load i64, i64* %760, align 8
  %762 = sub i64 %756, %761
  %763 = icmp ugt i64 %762, %397
  br i1 %763, label %755, label %764

; <label>:764:                                    ; preds = %755
  br label %765

; <label>:765:                                    ; preds = %764, %749
  %766 = phi i64 [ %750, %749 ], [ %756, %764 ]
  %767 = phi %struct.linebuffer* [ %664, %749 ], [ %759, %764 ]
  %768 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %767, i64 0, i32 0, i64 0
  %769 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %767, i64 0, i32 1
  %770 = load i64, i64* %769, align 8
  %771 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %767, i64 0, i32 0, i64 %770
  %772 = icmp ugt i64 %766, %397
  br i1 %772, label %773, label %791

; <label>:773:                                    ; preds = %765
  %774 = sub i64 %766, %397
  %775 = icmp eq i64 %774, 0
  br i1 %775, label %791, label %776

; <label>:776:                                    ; preds = %773
  %777 = ptrtoint i8* %771 to i64
  br label %778

; <label>:778:                                    ; preds = %786, %776
  %779 = phi i64 [ %774, %776 ], [ %788, %786 ]
  %780 = phi i8* [ %768, %776 ], [ %787, %786 ]
  %781 = ptrtoint i8* %780 to i64
  %782 = sub i64 %777, %781
  %783 = call i8* @memchr(i8* %780, i32 %743, i64 %782) #14
  %784 = icmp eq i8* %783, null
  br i1 %784, label %785, label %786

; <label>:785:                                    ; preds = %778
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.pipe_lines, i64 0, i64 0)) #15
  unreachable

; <label>:786:                                    ; preds = %778
  %787 = getelementptr inbounds i8, i8* %783, i64 1
  %788 = add i64 %779, -1
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %790, label %778

; <label>:790:                                    ; preds = %786
  br label %791

; <label>:791:                                    ; preds = %790, %773, %765
  %792 = phi i8* [ %768, %765 ], [ %768, %773 ], [ %787, %790 ]
  %793 = ptrtoint i8* %771 to i64
  %794 = ptrtoint i8* %792 to i64
  %795 = sub i64 %793, %794
  call fastcc void @xwrite_stdout(i8* %792, i64 %795) #11
  %796 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %767, i64 0, i32 3
  %797 = load %struct.linebuffer*, %struct.linebuffer** %796, align 8
  %798 = icmp eq %struct.linebuffer* %797, null
  br i1 %798, label %801, label %799

; <label>:799:                                    ; preds = %791
  br label %805

; <label>:800:                                    ; preds = %805
  br label %801

; <label>:801:                                    ; preds = %800, %791, %732, %727
  %802 = phi i8 [ 1, %732 ], [ 0, %727 ], [ 1, %791 ], [ 1, %800 ]
  %803 = icmp eq %struct.linebuffer* %664, null
  br i1 %803, label %820, label %804

; <label>:804:                                    ; preds = %801
  br label %813

; <label>:805:                                    ; preds = %799, %805
  %806 = phi %struct.linebuffer* [ %811, %805 ], [ %797, %799 ]
  %807 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %806, i64 0, i32 0, i64 0
  %808 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %806, i64 0, i32 1
  %809 = load i64, i64* %808, align 8
  call fastcc void @xwrite_stdout(i8* %807, i64 %809) #11
  %810 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %806, i64 0, i32 3
  %811 = load %struct.linebuffer*, %struct.linebuffer** %810, align 8
  %812 = icmp eq %struct.linebuffer* %811, null
  br i1 %812, label %800, label %805

; <label>:813:                                    ; preds = %804, %813
  %814 = phi %struct.linebuffer* [ %816, %813 ], [ %664, %804 ]
  %815 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %814, i64 0, i32 3
  %816 = load %struct.linebuffer*, %struct.linebuffer** %815, align 8
  %817 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %814, i64 0, i32 0, i64 0
  call void @free(i8* %817) #11
  %818 = icmp eq %struct.linebuffer* %816, null
  br i1 %818, label %819, label %813

; <label>:819:                                    ; preds = %813
  br label %820

; <label>:820:                                    ; preds = %819, %801
  %821 = icmp ne i8 %802, 0
  br label %822

; <label>:822:                                    ; preds = %820, %649, %647, %546, %532, %527, %483
  %823 = phi i64 [ %680, %820 ], [ 0, %546 ], [ %648, %647 ], [ %650, %649 ], [ %530, %527 ], [ %495, %532 ], [ 0, %483 ]
  %824 = phi i1 [ %821, %820 ], [ true, %546 ], [ true, %647 ], [ false, %649 ], [ true, %527 ], [ %533, %532 ], [ false, %483 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %389) #11
  br label %1014

; <label>:825:                                    ; preds = %476
  call void @llvm.lifetime.start(i64 144, i8* nonnull %381) #11
  %826 = call i32 @__fxstat(i32 1, i32 %411, %struct.stat* nonnull %10) #11
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %833, label %828

; <label>:828:                                    ; preds = %825
  %829 = tail call i32* @__errno_location() #1
  %830 = load i32, i32* %829, align 4
  %831 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i32 5) #11
  %832 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %830, i8* %831, i8* %832) #11
  br label %1011

; <label>:833:                                    ; preds = %825
  %834 = load i8, i8* @from_start, align 1
  %835 = icmp eq i8 %834, 0
  %836 = load i1, i1* @presume_input_pipe, align 1
  br i1 %835, label %875, label %837

; <label>:837:                                    ; preds = %833
  br i1 %836, label %846, label %838

; <label>:838:                                    ; preds = %837
  %839 = load i32, i32* %383, align 8
  %840 = and i32 %839, 61440
  %841 = icmp eq i32 %840, 32768
  %842 = icmp sgt i64 %397, -1
  %843 = and i1 %842, %841
  br i1 %843, label %844, label %846

; <label>:844:                                    ; preds = %838
  %845 = call fastcc i64 @xlseek(i32 %411, i64 %397, i32 1, i8* %477) #11
  br label %1006

; <label>:846:                                    ; preds = %838, %837
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %385) #11
  %847 = icmp eq i64 %397, 0
  br i1 %847, label %870, label %848

; <label>:848:                                    ; preds = %846
  br label %849

; <label>:849:                                    ; preds = %848, %866
  %850 = phi i64 [ %859, %866 ], [ 0, %848 ]
  %851 = phi i64 [ %867, %866 ], [ %397, %848 ]
  %852 = call i64 @safe_read(i32 %411, i8* nonnull %385, i64 8192) #11
  switch i64 %852, label %858 [
    i64 0, label %872
    i64 -1, label %853
  ]

; <label>:853:                                    ; preds = %849
  %854 = tail call i32* @__errno_location() #1
  %855 = load i32, i32* %854, align 4
  %856 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %857 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %855, i8* %856, i8* %857) #11
  br label %873

; <label>:858:                                    ; preds = %849
  %859 = add i64 %852, %850
  %860 = icmp ult i64 %851, %852
  br i1 %860, label %861, label %866

; <label>:861:                                    ; preds = %858
  %862 = sub i64 %852, %851
  %863 = icmp eq i64 %862, 0
  br i1 %863, label %870, label %864

; <label>:864:                                    ; preds = %861
  %865 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %851
  call fastcc void @xwrite_stdout(i8* %865, i64 %862) #11
  br label %870

; <label>:866:                                    ; preds = %858
  %867 = sub i64 %851, %852
  %868 = icmp eq i64 %867, 0
  br i1 %868, label %869, label %849

; <label>:869:                                    ; preds = %866
  br label %870

; <label>:870:                                    ; preds = %869, %864, %861, %846
  %871 = phi i64 [ 0, %846 ], [ %859, %861 ], [ %859, %864 ], [ %859, %869 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %1006

; <label>:872:                                    ; preds = %849
  br label %873

; <label>:873:                                    ; preds = %872, %853
  %874 = phi i1 [ false, %853 ], [ true, %872 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %385) #11
  br label %1011

; <label>:875:                                    ; preds = %833
  br i1 %836, label %884, label %876

; <label>:876:                                    ; preds = %875
  %877 = load i32, i32* %383, align 8
  %878 = trunc i32 %877 to i16
  %879 = and i16 %878, -4096
  switch i16 %879, label %884 [
    i16 -32768, label %880
    i16 -24576, label %880
  ]

; <label>:880:                                    ; preds = %876, %876
  %881 = icmp sgt i64 %397, -1
  %882 = load i64, i64* %384, align 8
  %883 = select i1 %881, i64 %882, i64 -1
  br label %884

; <label>:884:                                    ; preds = %880, %876, %875
  %885 = phi i64 [ -1, %875 ], [ -1, %876 ], [ %883, %880 ]
  %886 = load i64, i64* %382, align 8
  %887 = icmp sgt i64 %886, 0
  %888 = icmp ult i64 %886, 2305843009213693953
  %889 = and i1 %887, %888
  %890 = select i1 %889, i64 %886, i64 512
  %891 = icmp sgt i64 %885, %890
  br i1 %891, label %994, label %892

; <label>:892:                                    ; preds = %884
  %893 = call noalias i8* @xmalloc(i64 8208) #11
  %894 = bitcast i8* %893 to %struct.charbuffer*
  %895 = getelementptr inbounds i8, i8* %893, i64 8192
  call void @llvm.memset.p0i8.i64(i8* %895, i8 0, i64 16, i32 8, i1 false) #11
  %896 = call noalias i8* @xmalloc(i64 8208) #11
  %897 = bitcast i8* %896 to %struct.charbuffer*
  br label %898

; <label>:898:                                    ; preds = %934, %892
  %899 = phi i64 [ 0, %892 ], [ %919, %934 ]
  %900 = phi %struct.charbuffer* [ %894, %892 ], [ %908, %934 ]
  %901 = phi %struct.charbuffer* [ %897, %892 ], [ %903, %934 ]
  %902 = phi i64 [ 0, %892 ], [ %932, %934 ]
  %903 = phi %struct.charbuffer* [ %894, %892 ], [ %936, %934 ]
  %904 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %903, i64 0, i32 1
  br label %905

; <label>:905:                                    ; preds = %937, %898
  %906 = phi i64 [ %899, %898 ], [ %919, %937 ]
  %907 = phi %struct.charbuffer* [ %900, %898 ], [ %908, %937 ]
  %908 = phi %struct.charbuffer* [ %901, %898 ], [ %939, %937 ]
  %909 = phi i64 [ %902, %898 ], [ %920, %937 ]
  %910 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %908, i64 0, i32 0, i64 0
  %911 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %908, i64 0, i32 1
  %912 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %908, i64 0, i32 2
  %913 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %907, i64 0, i32 1
  br label %914

; <label>:914:                                    ; preds = %924, %905
  %915 = phi i64 [ %906, %905 ], [ %919, %924 ]
  %916 = phi i64 [ %909, %905 ], [ %920, %924 ]
  %917 = call i64 @safe_read(i32 %411, i8* %910, i64 8192) #11
  switch i64 %917, label %918 [
    i64 -1, label %940
    i64 0, label %940
  ]

; <label>:918:                                    ; preds = %914
  %919 = add i64 %917, %915
  store i64 %917, i64* %911, align 8
  store %struct.charbuffer* null, %struct.charbuffer** %912, align 8
  %920 = add i64 %917, %916
  %921 = load i64, i64* %913, align 8
  %922 = add i64 %921, %917
  %923 = icmp ult i64 %922, 8192
  br i1 %923, label %924, label %929

; <label>:924:                                    ; preds = %918
  %925 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %907, i64 0, i32 0, i64 %921
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %925, i8* nonnull %910, i64 %917, i32 1, i1 false) #11
  %926 = load i64, i64* %911, align 8
  %927 = load i64, i64* %913, align 8
  %928 = add i64 %927, %926
  store i64 %928, i64* %913, align 8
  br label %914

; <label>:929:                                    ; preds = %918
  %930 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %907, i64 0, i32 2
  store %struct.charbuffer* %908, %struct.charbuffer** %930, align 8
  %931 = load i64, i64* %904, align 8
  %932 = sub i64 %920, %931
  %933 = icmp ugt i64 %932, %397
  br i1 %933, label %934, label %937

; <label>:934:                                    ; preds = %929
  %935 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %903, i64 0, i32 2
  %936 = load %struct.charbuffer*, %struct.charbuffer** %935, align 8
  br label %898

; <label>:937:                                    ; preds = %929
  %938 = call noalias i8* @xmalloc(i64 8208) #11
  %939 = bitcast i8* %938 to %struct.charbuffer*
  br label %905

; <label>:940:                                    ; preds = %914, %914
  %941 = icmp eq i64 %917, -1
  call void @free(i8* %910) #11
  br i1 %941, label %947, label %942

; <label>:942:                                    ; preds = %940
  %943 = load i64, i64* %904, align 8
  %944 = sub i64 %916, %943
  %945 = icmp ugt i64 %944, %397
  br i1 %945, label %946, label %962

; <label>:946:                                    ; preds = %942
  br label %952

; <label>:947:                                    ; preds = %940
  %948 = tail call i32* @__errno_location() #1
  %949 = load i32, i32* %948, align 4
  %950 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %951 = call i8* @quotearg_style(i32 4, i8* %477) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %949, i8* %950, i8* %951) #11
  br label %976

; <label>:952:                                    ; preds = %946, %952
  %953 = phi i64 [ %959, %952 ], [ %944, %946 ]
  %954 = phi %struct.charbuffer* [ %956, %952 ], [ %903, %946 ]
  %955 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %954, i64 0, i32 2
  %956 = load %struct.charbuffer*, %struct.charbuffer** %955, align 8
  %957 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %956, i64 0, i32 1
  %958 = load i64, i64* %957, align 8
  %959 = sub i64 %953, %958
  %960 = icmp ugt i64 %959, %397
  br i1 %960, label %952, label %961

; <label>:961:                                    ; preds = %952
  br label %962

; <label>:962:                                    ; preds = %961, %942
  %963 = phi %struct.charbuffer* [ %903, %942 ], [ %956, %961 ]
  %964 = phi i64 [ %916, %942 ], [ %953, %961 ]
  %965 = phi i64 [ %943, %942 ], [ %958, %961 ]
  %966 = icmp ugt i64 %964, %397
  %967 = sub i64 %964, %397
  %968 = select i1 %966, i64 %967, i64 0
  %969 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %963, i64 0, i32 0, i64 %968
  %970 = sub i64 %965, %968
  call fastcc void @xwrite_stdout(i8* %969, i64 %970) #11
  %971 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %963, i64 0, i32 2
  %972 = load %struct.charbuffer*, %struct.charbuffer** %971, align 8
  %973 = icmp eq %struct.charbuffer* %972, null
  br i1 %973, label %976, label %974

; <label>:974:                                    ; preds = %962
  br label %980

; <label>:975:                                    ; preds = %980
  br label %976

; <label>:976:                                    ; preds = %975, %962, %947
  %977 = phi i8 [ 0, %947 ], [ 1, %962 ], [ 1, %975 ]
  %978 = icmp eq %struct.charbuffer* %903, null
  br i1 %978, label %1004, label %979

; <label>:979:                                    ; preds = %976
  br label %988

; <label>:980:                                    ; preds = %974, %980
  %981 = phi %struct.charbuffer* [ %986, %980 ], [ %972, %974 ]
  %982 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %981, i64 0, i32 0, i64 0
  %983 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %981, i64 0, i32 1
  %984 = load i64, i64* %983, align 8
  call fastcc void @xwrite_stdout(i8* %982, i64 %984) #11
  %985 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %981, i64 0, i32 2
  %986 = load %struct.charbuffer*, %struct.charbuffer** %985, align 8
  %987 = icmp eq %struct.charbuffer* %986, null
  br i1 %987, label %975, label %980

; <label>:988:                                    ; preds = %979, %988
  %989 = phi %struct.charbuffer* [ %991, %988 ], [ %903, %979 ]
  %990 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %989, i64 0, i32 2
  %991 = load %struct.charbuffer*, %struct.charbuffer** %990, align 8
  %992 = getelementptr inbounds %struct.charbuffer, %struct.charbuffer* %989, i64 0, i32 0, i64 0
  call void @free(i8* %992) #11
  %993 = icmp eq %struct.charbuffer* %991, null
  br i1 %993, label %1003, label %988

; <label>:994:                                    ; preds = %884
  %995 = call fastcc i64 @xlseek(i32 %411, i64 0, i32 1, i8* %477) #11
  %996 = icmp sgt i64 %885, %995
  %997 = sub nsw i64 %885, %995
  %998 = icmp ugt i64 %997, %397
  %999 = and i1 %996, %998
  br i1 %999, label %1000, label %1006

; <label>:1000:                                   ; preds = %994
  %1001 = sub i64 %885, %397
  %1002 = call fastcc i64 @xlseek(i32 %411, i64 %1001, i32 0, i8* %477) #11
  br label %1006

; <label>:1003:                                   ; preds = %988
  br label %1004

; <label>:1004:                                   ; preds = %1003, %976
  %1005 = icmp ne i8 %977, 0
  br label %1011

; <label>:1006:                                   ; preds = %1000, %994, %870, %844
  %1007 = phi i64 [ %871, %870 ], [ %397, %844 ], [ %995, %994 ], [ %1001, %1000 ]
  %1008 = phi i64 [ -1, %870 ], [ -1, %844 ], [ %397, %994 ], [ %397, %1000 ]
  %1009 = call fastcc i64 @dump_remainder(i1 zeroext false, i8* %477, i32 %411, i64 %1008) #11
  %1010 = add i64 %1009, %1007
  br label %1011

; <label>:1011:                                   ; preds = %1006, %1004, %873, %828
  %1012 = phi i64 [ %1010, %1006 ], [ %915, %1004 ], [ %850, %873 ], [ 0, %828 ]
  %1013 = phi i1 [ true, %1006 ], [ %1005, %1004 ], [ %874, %873 ], [ false, %828 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %381) #11
  br label %1014

; <label>:1014:                                   ; preds = %1011, %822
  %1015 = phi i64 [ %1012, %1011 ], [ %823, %822 ]
  %1016 = phi i1 [ %1013, %1011 ], [ %824, %822 ]
  %1017 = zext i1 %1016 to i8
  %1018 = load i8, i8* @forever, align 1
  %1019 = icmp eq i8 %1018, 0
  br i1 %1019, label %1130, label %1020

; <label>:1020:                                   ; preds = %1014
  call void @llvm.lifetime.start(i64 144, i8* nonnull %386) #11
  %1021 = xor i1 %1016, true
  %1022 = sext i1 %1021 to i32
  %1023 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 10
  store i32 %1022, i32* %1023, align 4
  %1024 = call i32 @__fxstat(i32 1, i32 %411, %struct.stat* nonnull %13) #11
  %1025 = icmp slt i32 %1024, 0
  br i1 %1025, label %1026, label %1043

; <label>:1026:                                   ; preds = %1020
  %1027 = tail call i32* @__errno_location() #1
  %1028 = load i32, i32* %1027, align 4
  store i32 %1028, i32* %1023, align 4
  %1029 = load i32, i32* %1027, align 4
  %1030 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %1031 = load i8*, i8** %398, align 8
  %1032 = load i8, i8* %1031, align 1
  %1033 = icmp eq i8 %1032, 45
  br i1 %1033, label %1034, label %1040

; <label>:1034:                                   ; preds = %1026
  %1035 = getelementptr inbounds i8, i8* %1031, i64 1
  %1036 = load i8, i8* %1035, align 1
  %1037 = icmp eq i8 %1036, 0
  br i1 %1037, label %1038, label %1040

; <label>:1038:                                   ; preds = %1034
  %1039 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1040

; <label>:1040:                                   ; preds = %1038, %1034, %1026
  %1041 = phi i8* [ %1039, %1038 ], [ %1031, %1026 ], [ %1031, %1034 ]
  %1042 = call i8* @quotearg_style(i32 4, i8* %1041) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1029, i8* %1030, i8* %1042) #11
  br label %1072

; <label>:1043:                                   ; preds = %1020
  %1044 = load i32, i32* %387, align 8
  %1045 = trunc i32 %1044 to i16
  %1046 = and i16 %1045, -4096
  switch i16 %1046, label %1047 [
    i16 -32768, label %1071
    i16 4096, label %1071
    i16 -16384, label %1071
    i16 8192, label %1071
  ]

; <label>:1047:                                   ; preds = %1043
  store i32 -1, i32* %1023, align 4
  store i8 0, i8* %416, align 2
  %1048 = load i1, i1* @reopen_inaccessible_files, align 1
  %1049 = xor i1 %1048, true
  %1050 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 6
  %1051 = zext i1 %1049 to i8
  store i8 %1051, i8* %1050, align 4
  %1052 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i64 0, i64 0), i32 5) #11
  %1053 = load i8*, i8** %398, align 8
  %1054 = load i8, i8* %1053, align 1
  %1055 = icmp eq i8 %1054, 45
  br i1 %1055, label %1056, label %1062

; <label>:1056:                                   ; preds = %1047
  %1057 = getelementptr inbounds i8, i8* %1053, i64 1
  %1058 = load i8, i8* %1057, align 1
  %1059 = icmp eq i8 %1058, 0
  br i1 %1059, label %1060, label %1062

; <label>:1060:                                   ; preds = %1056
  %1061 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1062

; <label>:1062:                                   ; preds = %1060, %1056, %1047
  %1063 = phi i8* [ %1061, %1060 ], [ %1053, %1047 ], [ %1053, %1056 ]
  %1064 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1063) #11
  %1065 = load i8, i8* %1050, align 4
  %1066 = icmp eq i8 %1065, 0
  br i1 %1066, label %1069, label %1067

; <label>:1067:                                   ; preds = %1062
  %1068 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i64 0, i64 0), i32 5) #11
  br label %1069

; <label>:1069:                                   ; preds = %1067, %1062
  %1070 = phi i8* [ %1068, %1067 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %1062 ]
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1052, i8* %1064, i8* %1070) #11
  br label %1072

; <label>:1071:                                   ; preds = %1043, %1043, %1043, %1043
  br i1 %1016, label %1100, label %1072

; <label>:1072:                                   ; preds = %1071, %1069, %1040
  %1073 = load i1, i1* @reopen_inaccessible_files, align 1
  %1074 = xor i1 %1073, true
  %1075 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 6
  %1076 = zext i1 %1074 to i8
  store i8 %1076, i8* %1075, align 4
  %1077 = load i8*, i8** %398, align 8
  %1078 = load i8, i8* %1077, align 1
  %1079 = icmp eq i8 %1078, 45
  br i1 %1079, label %1080, label %1086

; <label>:1080:                                   ; preds = %1072
  %1081 = getelementptr inbounds i8, i8* %1077, i64 1
  %1082 = load i8, i8* %1081, align 1
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %1084, label %1086

; <label>:1084:                                   ; preds = %1080
  %1085 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1086

; <label>:1086:                                   ; preds = %1084, %1080, %1072
  %1087 = phi i8* [ %1085, %1084 ], [ %1077, %1072 ], [ %1077, %1080 ]
  %1088 = add i32 %411, 1
  %1089 = icmp ugt i32 %1088, 1
  br i1 %1089, label %1090, label %1098

; <label>:1090:                                   ; preds = %1086
  %1091 = call i32 @close(i32 %411) #11
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1098, label %1093

; <label>:1093:                                   ; preds = %1090
  %1094 = tail call i32* @__errno_location() #1
  %1095 = load i32, i32* %1094, align 4
  %1096 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %1097 = call i8* @quotearg_style(i32 4, i8* %1087) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1095, i8* %1096, i8* %1097, i32 %411) #11
  br label %1098

; <label>:1098:                                   ; preds = %1093, %1090, %1086
  %1099 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 9
  store i32 -1, i32* %1099, align 8
  br label %1128

; <label>:1100:                                   ; preds = %1071
  %1101 = select i1 %410, i32 -1, i32 1
  %1102 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 9
  store i32 %411, i32* %1102, align 8
  %1103 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 1
  store i64 %1015, i64* %1103, align 8
  %1104 = load <2 x i64>, <2 x i64>* %392, align 8
  %1105 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 2, i32 0
  %1106 = bitcast i64* %1105 to <2 x i64>*
  store <2 x i64> %1104, <2 x i64>* %1106, align 8
  %1107 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 3
  %1108 = load <2 x i64>, <2 x i64>* %393, align 16
  %1109 = bitcast i64* %1107 to <2 x i64>*
  store <2 x i64> %1108, <2 x i64>* %1109, align 8
  %1110 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 5
  store i32 %1044, i32* %1110, align 8
  %1111 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 11
  store i32 %1101, i32* %1111, align 8
  %1112 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 15
  store i64 0, i64* %1112, align 8
  %1113 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 6
  store i8 0, i8* %1113, align 4
  %1114 = load i8*, i8** %398, align 8
  %1115 = load i8, i8* %1114, align 1
  %1116 = icmp eq i8 %1115, 45
  br i1 %1116, label %1117, label %1123

; <label>:1117:                                   ; preds = %1100
  %1118 = getelementptr inbounds i8, i8* %1114, i64 1
  %1119 = load i8, i8* %1118, align 1
  %1120 = icmp eq i8 %1119, 0
  br i1 %1120, label %1121, label %1123

; <label>:1121:                                   ; preds = %1117
  %1122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1123

; <label>:1123:                                   ; preds = %1121, %1117, %1100
  %1124 = phi i8* [ %1122, %1121 ], [ %1114, %1100 ], [ %1114, %1117 ]
  %1125 = call fastcc zeroext i1 @fremote(i32 %411, i8* %1124) #11
  %1126 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %396, i32 7
  %1127 = zext i1 %1125 to i8
  store i8 %1127, i8* %1126, align 1
  br label %1128

; <label>:1128:                                   ; preds = %1123, %1098
  %1129 = phi i8 [ %1017, %1123 ], [ 0, %1098 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %386) #11
  br label %1150

; <label>:1130:                                   ; preds = %1014
  br i1 %410, label %1150, label %1131

; <label>:1131:                                   ; preds = %1130
  %1132 = call i32 @close(i32 %411) #11
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1150, label %1134

; <label>:1134:                                   ; preds = %1131
  %1135 = tail call i32* @__errno_location() #1
  %1136 = load i32, i32* %1135, align 4
  %1137 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %1138 = load i8*, i8** %398, align 8
  %1139 = load i8, i8* %1138, align 1
  %1140 = icmp eq i8 %1139, 45
  br i1 %1140, label %1141, label %1147

; <label>:1141:                                   ; preds = %1134
  %1142 = getelementptr inbounds i8, i8* %1138, i64 1
  %1143 = load i8, i8* %1142, align 1
  %1144 = icmp eq i8 %1143, 0
  br i1 %1144, label %1145, label %1147

; <label>:1145:                                   ; preds = %1141
  %1146 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1147

; <label>:1147:                                   ; preds = %1145, %1141, %1134
  %1148 = phi i8* [ %1146, %1145 ], [ %1138, %1134 ], [ %1138, %1141 ]
  %1149 = call i8* @quotearg_style(i32 4, i8* %1148) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1136, i8* %1137, i8* %1149) #11
  br label %1150

; <label>:1150:                                   ; preds = %446, %1128, %1130, %1131, %1147
  %1151 = phi i8 [ 0, %446 ], [ %1129, %1128 ], [ %1017, %1130 ], [ 0, %1147 ], [ %1017, %1131 ]
  %1152 = and i8 %1151, 1
  %1153 = icmp ne i8 %1152, 0
  %1154 = and i1 %395, %1153
  %1155 = add nuw i64 %396, 1
  %1156 = icmp ult i64 %1155, %306
  br i1 %1156, label %394, label %1157

; <label>:1157:                                   ; preds = %1150
  %1158 = xor i1 %1154, true
  br label %1159

; <label>:1159:                                   ; preds = %1157, %379
  %1160 = phi i1 [ false, %379 ], [ %1158, %1157 ]
  %1161 = load i8, i8* @forever, align 1
  %1162 = icmp eq i8 %1161, 0
  %1163 = or i1 %1162, %305
  br i1 %1163, label %1976, label %1164

; <label>:1164:                                   ; preds = %1159
  br label %1165

; <label>:1165:                                   ; preds = %1164, %1192
  %1166 = phi i64 [ %1193, %1192 ], [ 0, %1164 ]
  %1167 = phi i64 [ %1194, %1192 ], [ 0, %1164 ]
  %1168 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1167, i32 0
  %1169 = load i8*, i8** %1168, align 8
  %1170 = load i8, i8* %1169, align 1
  %1171 = icmp eq i8 %1170, 45
  br i1 %1171, label %1172, label %1190

; <label>:1172:                                   ; preds = %1165
  %1173 = getelementptr inbounds i8, i8* %1169, i64 1
  %1174 = load i8, i8* %1173, align 1
  %1175 = icmp eq i8 %1174, 0
  br i1 %1175, label %1176, label %1190

; <label>:1176:                                   ; preds = %1172
  %1177 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1167, i32 6
  %1178 = load i8, i8* %1177, align 4
  %1179 = icmp eq i8 %1178, 0
  br i1 %1179, label %1180, label %1190

; <label>:1180:                                   ; preds = %1176
  %1181 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1167, i32 9
  %1182 = load i32, i32* %1181, align 8
  %1183 = icmp sgt i32 %1182, -1
  br i1 %1183, label %1184, label %1190

; <label>:1184:                                   ; preds = %1180
  %1185 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1167, i32 5
  %1186 = load i32, i32* %1185, align 8
  %1187 = and i32 %1186, 61440
  %1188 = icmp eq i32 %1187, 4096
  br i1 %1188, label %1189, label %1190

; <label>:1189:                                   ; preds = %1184
  store i32 -1, i32* %1181, align 8
  store i8 1, i8* %1177, align 4
  br label %1192

; <label>:1190:                                   ; preds = %1184, %1180, %1176, %1172, %1165
  %1191 = add i64 %1166, 1
  br label %1192

; <label>:1192:                                   ; preds = %1190, %1189
  %1193 = phi i64 [ %1166, %1189 ], [ %1191, %1190 ]
  %1194 = add nuw i64 %1167, 1
  %1195 = icmp eq i64 %1194, %306
  br i1 %1195, label %1196, label %1165

; <label>:1196:                                   ; preds = %1192
  %1197 = icmp eq i64 %1193, 0
  br i1 %1197, label %1976, label %1198

; <label>:1198:                                   ; preds = %1196
  %1199 = load i1, i1* @disable_inotify, align 1
  br i1 %1199, label %1721, label %1200

; <label>:1200:                                   ; preds = %1198
  br label %1201

; <label>:1201:                                   ; preds = %1200, %1215
  %1202 = phi i64 [ %1216, %1215 ], [ 0, %1200 ]
  %1203 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1202, i32 6
  %1204 = load i8, i8* %1203, align 4
  %1205 = icmp eq i8 %1204, 0
  br i1 %1205, label %1206, label %1215

; <label>:1206:                                   ; preds = %1201
  %1207 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1202, i32 0
  %1208 = load i8*, i8** %1207, align 8
  %1209 = load i8, i8* %1208, align 1
  %1210 = icmp eq i8 %1209, 45
  br i1 %1210, label %1211, label %1215

; <label>:1211:                                   ; preds = %1206
  %1212 = getelementptr inbounds i8, i8* %1208, i64 1
  %1213 = load i8, i8* %1212, align 1
  %1214 = icmp eq i8 %1213, 0
  br i1 %1214, label %1267, label %1215

; <label>:1215:                                   ; preds = %1211, %1206, %1201
  %1216 = add nuw i64 %1202, 1
  %1217 = icmp ult i64 %1216, %306
  br i1 %1217, label %1201, label %1218

; <label>:1218:                                   ; preds = %1215
  br label %1219

; <label>:1219:                                   ; preds = %1218, %1228
  %1220 = phi i64 [ %1229, %1228 ], [ 0, %1218 ]
  %1221 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1220, i32 9
  %1222 = load i32, i32* %1221, align 8
  %1223 = icmp sgt i32 %1222, -1
  br i1 %1223, label %1224, label %1228

; <label>:1224:                                   ; preds = %1219
  %1225 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1220, i32 7
  %1226 = load i8, i8* %1225, align 1
  %1227 = icmp eq i8 %1226, 0
  br i1 %1227, label %1228, label %1266

; <label>:1228:                                   ; preds = %1224, %1219
  %1229 = add nuw i64 %1220, 1
  %1230 = icmp ult i64 %1229, %306
  br i1 %1230, label %1219, label %1231

; <label>:1231:                                   ; preds = %1228
  br label %1232

; <label>:1232:                                   ; preds = %1231, %1241
  %1233 = phi i64 [ %1242, %1241 ], [ 0, %1231 ]
  %1234 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1233, i32 9
  %1235 = load i32, i32* %1234, align 8
  %1236 = icmp sgt i32 %1235, -1
  br i1 %1236, label %1237, label %1241

; <label>:1237:                                   ; preds = %1232
  %1238 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1233, i32 7
  %1239 = load i8, i8* %1238, align 1
  %1240 = icmp eq i8 %1239, 0
  br i1 %1240, label %1244, label %1241

; <label>:1241:                                   ; preds = %1237, %1232
  %1242 = add nuw i64 %1233, 1
  %1243 = icmp ult i64 %1242, %306
  br i1 %1243, label %1232, label %1265

; <label>:1244:                                   ; preds = %1237
  %1245 = bitcast %struct.stat* %9 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1245) #11
  %1246 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 3
  br label %1247

; <label>:1247:                                   ; preds = %1244, %1258
  %1248 = phi i64 [ %1259, %1258 ], [ 0, %1244 ]
  %1249 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1248, i32 0
  %1250 = load i8*, i8** %1249, align 8
  %1251 = call i32 @__lxstat(i32 1, i8* nonnull %1250, %struct.stat* nonnull %9) #11
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1258

; <label>:1253:                                   ; preds = %1247
  %1254 = load i32, i32* %1246, align 8
  %1255 = and i32 %1254, 61440
  %1256 = icmp eq i32 %1255, 40960
  br i1 %1256, label %1257, label %1258

; <label>:1257:                                   ; preds = %1253
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1245) #11
  br label %1268

; <label>:1258:                                   ; preds = %1253, %1247
  %1259 = add nuw i64 %1248, 1
  %1260 = icmp ult i64 %1259, %306
  br i1 %1260, label %1247, label %1261

; <label>:1261:                                   ; preds = %1258
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1245) #11
  %1262 = load i32, i32* @follow_mode, align 4
  %1263 = icmp eq i32 %1262, 2
  %1264 = and i1 %1263, %1160
  br i1 %1264, label %1268, label %1269

; <label>:1265:                                   ; preds = %1241
  br label %1268

; <label>:1266:                                   ; preds = %1224
  br label %1268

; <label>:1267:                                   ; preds = %1211
  br label %1268

; <label>:1268:                                   ; preds = %1267, %1266, %1265, %1257, %1261
  store i1 true, i1* @disable_inotify, align 1
  br label %1721

; <label>:1269:                                   ; preds = %1261
  %1270 = load i1, i1* @disable_inotify, align 1
  br i1 %1270, label %1721, label %1271

; <label>:1271:                                   ; preds = %1269
  %1272 = call i32 @inotify_init() #11
  %1273 = icmp sgt i32 %1272, -1
  br i1 %1273, label %1274, label %1699

; <label>:1274:                                   ; preds = %1271
  %1275 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1276 = call i32 @fflush_unlocked(%struct._IO_FILE* %1275) #11
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1282, label %1278

; <label>:1278:                                   ; preds = %1274
  %1279 = tail call i32* @__errno_location() #1
  %1280 = load i32, i32* %1279, align 4
  %1281 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1280, i8* %1281) #11
  unreachable

; <label>:1282:                                   ; preds = %1274
  %1283 = bitcast %struct.File_spec** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1283) #11
  %1284 = call %struct.hash_table* @hash_initialize(i64 %306, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @wd_hasher, i1 (i8*, i8*)* nonnull @wd_comparator, void (i8*)* null) #11
  %1285 = icmp eq %struct.hash_table* %1284, null
  br i1 %1285, label %1286, label %1287

; <label>:1286:                                   ; preds = %1282
  call void @xalloc_die() #15
  unreachable

; <label>:1287:                                   ; preds = %1282
  %1288 = load i32, i32* @follow_mode, align 4
  %1289 = icmp eq i32 %1288, 1
  %1290 = select i1 %1289, i32 3078, i32 2
  br label %1291

; <label>:1291:                                   ; preds = %1287, %1367
  %1292 = phi i8 [ %1370, %1367 ], [ 0, %1287 ]
  %1293 = phi i8 [ %1369, %1367 ], [ 0, %1287 ]
  %1294 = phi i64 [ %1368, %1367 ], [ 0, %1287 ]
  %1295 = phi i64 [ %1371, %1367 ], [ 0, %1287 ]
  %1296 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295
  %1297 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 6
  %1298 = load i8, i8* %1297, align 4
  %1299 = icmp eq i8 %1298, 0
  br i1 %1299, label %1300, label %1367

; <label>:1300:                                   ; preds = %1291
  %1301 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1296, i64 0, i32 0
  %1302 = load i8*, i8** %1301, align 8
  %1303 = call i64 @strlen(i8* %1302) #14
  %1304 = icmp ult i64 %1294, %1303
  %1305 = select i1 %1304, i64 %1303, i64 %1294
  %1306 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 12
  store i32 -1, i32* %1306, align 4
  %1307 = load i32, i32* @follow_mode, align 4
  %1308 = icmp eq i32 %1307, 1
  br i1 %1308, label %1309, label %1341

; <label>:1309:                                   ; preds = %1300
  %1310 = call i64 @dir_len(i8* %1302) #14
  %1311 = getelementptr inbounds i8, i8* %1302, i64 %1310
  %1312 = load i8, i8* %1311, align 1
  %1313 = call i8* @last_component(i8* %1302) #14
  %1314 = ptrtoint i8* %1313 to i64
  %1315 = ptrtoint i8* %1302 to i64
  %1316 = sub i64 %1314, %1315
  %1317 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 14
  store i64 %1316, i64* %1317, align 8
  store i8 0, i8* %1311, align 1
  %1318 = icmp eq i64 %1310, 0
  br i1 %1318, label %1321, label %1319

; <label>:1319:                                   ; preds = %1309
  %1320 = load i8*, i8** %1301, align 8
  br label %1321

; <label>:1321:                                   ; preds = %1319, %1309
  %1322 = phi i8* [ %1320, %1319 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), %1309 ]
  %1323 = call i32 @inotify_add_watch(i32 %1272, i8* %1322, i32 900) #11
  %1324 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 13
  store i32 %1323, i32* %1324, align 8
  %1325 = load i8*, i8** %1301, align 8
  %1326 = getelementptr inbounds i8, i8* %1325, i64 %1310
  store i8 %1312, i8* %1326, align 1
  %1327 = load i32, i32* %1324, align 8
  %1328 = icmp slt i32 %1327, 0
  br i1 %1328, label %1331, label %1329

; <label>:1329:                                   ; preds = %1321
  %1330 = load i8*, i8** %1301, align 8
  br label %1341

; <label>:1331:                                   ; preds = %1321
  %1332 = tail call i32* @__errno_location() #1
  %1333 = load i32, i32* %1332, align 4
  %1334 = icmp eq i32 %1333, 28
  br i1 %1334, label %1339, label %1335

; <label>:1335:                                   ; preds = %1331
  %1336 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.97, i64 0, i64 0), i32 5) #11
  %1337 = load i8*, i8** %1301, align 8
  %1338 = call i8* @quotearg_style(i32 4, i8* %1337) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1333, i8* %1336, i8* %1338) #11
  br label %1381

; <label>:1339:                                   ; preds = %1331
  %1340 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1340) #11
  br label %1381

; <label>:1341:                                   ; preds = %1329, %1300
  %1342 = phi i8* [ %1330, %1329 ], [ %1302, %1300 ]
  %1343 = call i32 @inotify_add_watch(i32 %1272, i8* %1342, i32 %1290) #11
  store i32 %1343, i32* %1306, align 4
  %1344 = icmp slt i32 %1343, 0
  br i1 %1344, label %1345, label %1362

; <label>:1345:                                   ; preds = %1341
  %1346 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 9
  %1347 = load i32, i32* %1346, align 8
  %1348 = icmp eq i32 %1347, -1
  %1349 = select i1 %1348, i8 %1293, i8 1
  %1350 = tail call i32* @__errno_location() #1
  %1351 = load i32, i32* %1350, align 4
  switch i32 %1351, label %1354 [
    i32 28, label %1352
    i32 12, label %1352
  ]

; <label>:1352:                                   ; preds = %1345, %1345
  %1353 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1353) #11
  br label %1381

; <label>:1354:                                   ; preds = %1345
  %1355 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1295, i32 10
  %1356 = load i32, i32* %1355, align 4
  %1357 = icmp eq i32 %1351, %1356
  br i1 %1357, label %1367, label %1358

; <label>:1358:                                   ; preds = %1354
  %1359 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 5) #11
  %1360 = load i8*, i8** %1301, align 8
  %1361 = call i8* @quotearg_style(i32 4, i8* %1360) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1351, i8* %1359, i8* %1361) #11
  br label %1367

; <label>:1362:                                   ; preds = %1341
  %1363 = bitcast %struct.File_spec* %1296 to i8*
  %1364 = call i8* @hash_insert(%struct.hash_table* nonnull %1284, i8* %1363) #11
  %1365 = icmp eq i8* %1364, null
  br i1 %1365, label %1366, label %1367

; <label>:1366:                                   ; preds = %1362
  call void @xalloc_die() #15
  unreachable

; <label>:1367:                                   ; preds = %1362, %1358, %1354, %1291
  %1368 = phi i64 [ %1294, %1291 ], [ %1305, %1354 ], [ %1305, %1358 ], [ %1305, %1362 ]
  %1369 = phi i8 [ %1293, %1291 ], [ %1349, %1354 ], [ %1349, %1358 ], [ %1293, %1362 ]
  %1370 = phi i8 [ %1292, %1291 ], [ %1292, %1354 ], [ %1292, %1358 ], [ 1, %1362 ]
  %1371 = add nuw i64 %1295, 1
  %1372 = icmp ult i64 %1371, %306
  br i1 %1372, label %1291, label %1373

; <label>:1373:                                   ; preds = %1367
  %1374 = load i32, i32* @follow_mode, align 4
  %1375 = icmp ne i32 %1374, 2
  %1376 = and i8 %1369, 1
  %1377 = icmp eq i8 %1376, 0
  %1378 = or i1 %1377, %1375
  br i1 %1378, label %1383, label %1379

; <label>:1379:                                   ; preds = %1373
  %1380 = tail call i32* @__errno_location() #1
  br label %1381

; <label>:1381:                                   ; preds = %1379, %1352, %1339, %1335
  %1382 = phi i32* [ %1380, %1379 ], [ %1332, %1335 ], [ %1332, %1339 ], [ %1350, %1352 ]
  call void @hash_free(%struct.hash_table* nonnull %1284) #11
  store i32 0, i32* %1382, align 4
  br label %1698

; <label>:1383:                                   ; preds = %1373
  %1384 = icmp eq i32 %1374, 2
  %1385 = and i8 %1370, 1
  %1386 = icmp eq i8 %1385, 0
  %1387 = and i1 %1386, %1384
  br i1 %1387, label %1719, label %1388

; <label>:1388:                                   ; preds = %1383
  %1389 = add nsw i64 %306, -1
  %1390 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1389
  store %struct.File_spec* %1390, %struct.File_spec** %4, align 8
  %1391 = bitcast %struct.stat* %5 to i8*
  %1392 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %1393 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  br label %1394

; <label>:1394:                                   ; preds = %1441, %1388
  %1395 = phi i64 [ 0, %1388 ], [ %1442, %1441 ]
  %1396 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1395
  %1397 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1395, i32 6
  %1398 = load i8, i8* %1397, align 4
  %1399 = icmp eq i8 %1398, 0
  br i1 %1399, label %1400, label %1441

; <label>:1400:                                   ; preds = %1394
  %1401 = load i32, i32* @follow_mode, align 4
  %1402 = icmp eq i32 %1401, 1
  br i1 %1402, label %1403, label %1404

; <label>:1403:                                   ; preds = %1400
  call fastcc void @recheck(%struct.File_spec* %1396, i1 zeroext false) #11
  br label %1440

; <label>:1404:                                   ; preds = %1400
  %1405 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1395, i32 9
  %1406 = load i32, i32* %1405, align 8
  %1407 = icmp eq i32 %1406, -1
  br i1 %1407, label %1440, label %1408

; <label>:1408:                                   ; preds = %1404
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1391) #11
  %1409 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1396, i64 0, i32 0
  %1410 = load i8*, i8** %1409, align 8
  %1411 = call i32 @__xstat(i32 1, i8* nonnull %1410, %struct.stat* nonnull %5) #11
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1413, label %1439

; <label>:1413:                                   ; preds = %1408
  %1414 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1395, i32 3
  %1415 = load i64, i64* %1414, align 8
  %1416 = load i64, i64* %1392, align 8
  %1417 = icmp eq i64 %1415, %1416
  br i1 %1417, label %1418, label %1423

; <label>:1418:                                   ; preds = %1413
  %1419 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1395, i32 4
  %1420 = load i64, i64* %1419, align 8
  %1421 = load i64, i64* %1393, align 8
  %1422 = icmp eq i64 %1420, %1421
  br i1 %1422, label %1439, label %1423

; <label>:1423:                                   ; preds = %1418, %1413
  %1424 = tail call i32* @__errno_location() #1
  %1425 = load i32, i32* %1424, align 4
  %1426 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i64 0, i64 0), i32 5) #11
  %1427 = load i8*, i8** %1409, align 8
  %1428 = load i8, i8* %1427, align 1
  %1429 = icmp eq i8 %1428, 45
  br i1 %1429, label %1430, label %1436

; <label>:1430:                                   ; preds = %1423
  %1431 = getelementptr inbounds i8, i8* %1427, i64 1
  %1432 = load i8, i8* %1431, align 1
  %1433 = icmp eq i8 %1432, 0
  br i1 %1433, label %1434, label %1436

; <label>:1434:                                   ; preds = %1430
  %1435 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1436

; <label>:1436:                                   ; preds = %1434, %1430, %1423
  %1437 = phi i8* [ %1435, %1434 ], [ %1427, %1423 ], [ %1427, %1430 ]
  %1438 = call i8* @quotearg_style(i32 4, i8* %1437) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1425, i8* %1426, i8* %1438) #11
  call void @hash_free(%struct.hash_table* nonnull %1284) #11
  store i32 0, i32* %1424, align 4
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1391) #11
  br label %1698

; <label>:1439:                                   ; preds = %1418, %1408
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1391) #11
  br label %1440

; <label>:1440:                                   ; preds = %1439, %1404, %1403
  call fastcc void @check_fspec(%struct.File_spec* %1396, %struct.File_spec** nonnull %4) #11
  br label %1441

; <label>:1441:                                   ; preds = %1440, %1394
  %1442 = add nuw i64 %1395, 1
  %1443 = icmp ult i64 %1442, %306
  br i1 %1443, label %1394, label %1444

; <label>:1444:                                   ; preds = %1441
  %1445 = add i64 %1368, 17
  %1446 = call noalias i8* @xmalloc(i64 %1445) #11
  %1447 = bitcast %struct.timespec* %6 to i8*
  %1448 = fptosi double %123 to i64
  %1449 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 0
  %1450 = sitofp i64 %1448 to double
  %1451 = fsub double %123, %1450
  %1452 = fmul double %1451, 1.000000e+06
  %1453 = fptosi double %1452 to i64
  %1454 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i64 0, i32 1
  %1455 = bitcast %struct.fd_set* %7 to i8*
  %1456 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 0
  %1457 = srem i32 %1272, 64
  %1458 = zext i32 %1457 to i64
  %1459 = shl i64 1, %1458
  %1460 = sext i32 %1272 to i64
  %1461 = add nsw i32 %1272, 1
  %1462 = bitcast %struct.File_spec* %8 to i8*
  %1463 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %8, i64 0, i32 12
  br label %1464

; <label>:1464:                                   ; preds = %1623, %1444
  %1465 = phi i64 [ 0, %1444 ], [ %1550, %1623 ]
  %1466 = phi i64 [ 0, %1444 ], [ %1559, %1623 ]
  %1467 = phi i8* [ %1446, %1444 ], [ %1474, %1623 ]
  %1468 = phi i64 [ %1445, %1444 ], [ %1475, %1623 ]
  %1469 = phi i8 [ 0, %1444 ], [ %1529, %1623 ]
  %1470 = phi i32 [ 3, %1444 ], [ %1552, %1623 ]
  br label %1471

; <label>:1471:                                   ; preds = %1540, %1464
  %1472 = phi i64 [ 0, %1540 ], [ %1465, %1464 ]
  %1473 = phi i64 [ 0, %1540 ], [ %1466, %1464 ]
  %1474 = phi i8* [ %1542, %1540 ], [ %1467, %1464 ]
  %1475 = phi i64 [ %1541, %1540 ], [ %1468, %1464 ]
  %1476 = phi i8 [ %1529, %1540 ], [ %1469, %1464 ]
  %1477 = phi i32 [ %1538, %1540 ], [ %1470, %1464 ]
  br label %1478

; <label>:1478:                                   ; preds = %1581, %1471
  %1479 = phi i64 [ %1550, %1581 ], [ %1472, %1471 ]
  %1480 = phi i64 [ %1559, %1581 ], [ %1473, %1471 ]
  %1481 = phi i8 [ %1529, %1581 ], [ %1476, %1471 ]
  %1482 = phi i32 [ %1552, %1581 ], [ %1477, %1471 ]
  br label %1483

; <label>:1483:                                   ; preds = %1526, %1478
  %1484 = phi i8 [ %1514, %1526 ], [ %1481, %1478 ]
  %1485 = load i32, i32* @follow_mode, align 4
  %1486 = icmp eq i32 %1485, 1
  br i1 %1486, label %1487, label %1494

; <label>:1487:                                   ; preds = %1483
  %1488 = load i1, i1* @reopen_inaccessible_files, align 1
  br i1 %1488, label %1494, label %1489

; <label>:1489:                                   ; preds = %1487
  %1490 = call i64 @hash_get_n_entries(%struct.hash_table* nonnull %1284) #14
  %1491 = icmp eq i64 %1490, 0
  br i1 %1491, label %1492, label %1494

; <label>:1492:                                   ; preds = %1489
  %1493 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1493) #11
  br label %1719

; <label>:1494:                                   ; preds = %1489, %1487, %1483
  %1495 = load i32, i32* @pid, align 4
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %1527, label %1497

; <label>:1497:                                   ; preds = %1494
  %1498 = and i8 %1484, 1
  %1499 = icmp eq i8 %1498, 0
  br i1 %1499, label %1501, label %1500

; <label>:1500:                                   ; preds = %1497
  call void @exit(i32 0) #15
  unreachable

; <label>:1501:                                   ; preds = %1497
  %1502 = call i32 @kill(i32 %1495, i32 0) #11
  %1503 = icmp eq i32 %1502, 0
  br i1 %1503, label %1504, label %1505

; <label>:1504:                                   ; preds = %1501
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1447) #11
  br label %1511

; <label>:1505:                                   ; preds = %1501
  %1506 = tail call i32* @__errno_location() #1
  %1507 = load i32, i32* %1506, align 4
  %1508 = icmp ne i32 %1507, 1
  %1509 = zext i1 %1508 to i8
  call void @llvm.lifetime.start(i64 16, i8* nonnull %1447) #11
  br i1 %1508, label %1510, label %1511

; <label>:1510:                                   ; preds = %1505
  call void @llvm.memset.p0i8.i64(i8* nonnull %1447, i8 0, i64 16, i32 8, i1 false) #11
  br label %1513

; <label>:1511:                                   ; preds = %1505, %1504
  %1512 = phi i8 [ 0, %1504 ], [ %1509, %1505 ]
  store i64 %1448, i64* %1449, align 8
  store i64 %1453, i64* %1454, align 8
  br label %1513

; <label>:1513:                                   ; preds = %1511, %1510
  %1514 = phi i8 [ %1512, %1511 ], [ %1509, %1510 ]
  call void @llvm.lifetime.start(i64 128, i8* nonnull %1455) #11
  %1515 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* nonnull %1456) #11
  %1516 = call i64 @__fdelt_chk(i64 %1460) #11
  %1517 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %7, i64 0, i32 0, i64 %1516
  %1518 = load i64, i64* %1517, align 8
  %1519 = or i64 %1518, %1459
  store i64 %1519, i64* %1517, align 8
  %1520 = call i32 @select(i32 %1461, %struct.fd_set* nonnull %7, %struct.fd_set* null, %struct.fd_set* null, %struct.timespec* nonnull %6) #11
  switch i32 %1520, label %1525 [
    i32 0, label %1526
    i32 -1, label %1521
  ]

; <label>:1521:                                   ; preds = %1513
  %1522 = tail call i32* @__errno_location() #1
  %1523 = load i32, i32* %1522, align 4
  %1524 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1523, i8* %1524) #11
  unreachable

; <label>:1525:                                   ; preds = %1513
  call void @llvm.lifetime.end(i64 128, i8* nonnull %1455) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1447) #11
  br label %1528

; <label>:1526:                                   ; preds = %1513
  call void @llvm.lifetime.end(i64 128, i8* nonnull %1455) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %1447) #11
  br label %1483

; <label>:1527:                                   ; preds = %1494
  br label %1528

; <label>:1528:                                   ; preds = %1527, %1525
  %1529 = phi i8 [ %1514, %1525 ], [ %1484, %1527 ]
  %1530 = icmp ugt i64 %1479, %1480
  br i1 %1530, label %1549, label %1531

; <label>:1531:                                   ; preds = %1528
  %1532 = call i64 @safe_read(i32 %1272, i8* %1474, i64 %1475) #11
  switch i64 %1532, label %1543 [
    i64 0, label %1537
    i64 -1, label %1533
  ]

; <label>:1533:                                   ; preds = %1531
  %1534 = tail call i32* @__errno_location() #1
  %1535 = load i32, i32* %1534, align 4
  %1536 = icmp eq i32 %1535, 22
  br i1 %1536, label %1537, label %1545

; <label>:1537:                                   ; preds = %1533, %1531
  %1538 = add i32 %1482, -1
  %1539 = icmp eq i32 %1482, 0
  br i1 %1539, label %1543, label %1540

; <label>:1540:                                   ; preds = %1537
  %1541 = shl i64 %1475, 1
  %1542 = call i8* @xrealloc(i8* %1474, i64 %1541) #11
  br label %1471

; <label>:1543:                                   ; preds = %1537, %1531
  %1544 = phi i32 [ %1538, %1537 ], [ %1482, %1531 ]
  switch i64 %1532, label %1549 [
    i64 -1, label %1545
    i64 0, label %1545
  ]

; <label>:1545:                                   ; preds = %1543, %1543, %1533
  %1546 = tail call i32* @__errno_location() #1
  %1547 = load i32, i32* %1546, align 4
  %1548 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1547, i8* %1548) #11
  unreachable

; <label>:1549:                                   ; preds = %1543, %1528
  %1550 = phi i64 [ %1532, %1543 ], [ %1479, %1528 ]
  %1551 = phi i64 [ 0, %1543 ], [ %1480, %1528 ]
  %1552 = phi i32 [ %1544, %1543 ], [ %1482, %1528 ]
  %1553 = getelementptr inbounds i8, i8* %1474, i64 %1551
  %1554 = getelementptr inbounds i8, i8* %1553, i64 12
  %1555 = bitcast i8* %1554 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = zext i32 %1556 to i64
  %1558 = add i64 %1551, 16
  %1559 = add i64 %1558, %1557
  %1560 = icmp eq i32 %1556, 0
  br i1 %1560, label %1671, label %1561

; <label>:1561:                                   ; preds = %1549
  %1562 = getelementptr inbounds i8, i8* %1553, i64 16
  %1563 = bitcast i8* %1553 to i32*
  %1564 = load i32, i32* %1563, align 4
  br label %1565

; <label>:1565:                                   ; preds = %1578, %1561
  %1566 = phi i64 [ 0, %1561 ], [ %1579, %1578 ]
  %1567 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1566, i32 13
  %1568 = load i32, i32* %1567, align 8
  %1569 = icmp eq i32 %1568, %1564
  br i1 %1569, label %1570, label %1578

; <label>:1570:                                   ; preds = %1565
  %1571 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1566, i32 0
  %1572 = load i8*, i8** %1571, align 8
  %1573 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1566, i32 14
  %1574 = load i64, i64* %1573, align 8
  %1575 = getelementptr inbounds i8, i8* %1572, i64 %1574
  %1576 = call i32 @strcmp(i8* %1562, i8* %1575) #11
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1581, label %1578

; <label>:1578:                                   ; preds = %1570, %1565
  %1579 = add nuw i64 %1566, 1
  %1580 = icmp ult i64 %1579, %306
  br i1 %1580, label %1565, label %1581

; <label>:1581:                                   ; preds = %1578, %1570
  %1582 = phi i64 [ %1566, %1570 ], [ %1579, %1578 ]
  %1583 = icmp eq i64 %1582, %306
  br i1 %1583, label %1478, label %1584

; <label>:1584:                                   ; preds = %1581
  %1585 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1582
  %1586 = getelementptr inbounds i8, i8* %1553, i64 4
  %1587 = bitcast i8* %1586 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = and i32 %1588, 512
  %1590 = icmp ne i32 %1589, 0
  %1591 = xor i1 %1590, true
  br i1 %1590, label %1596, label %1592

; <label>:1592:                                   ; preds = %1584
  %1593 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1585, i64 0, i32 0
  %1594 = load i8*, i8** %1593, align 8
  %1595 = call i32 @inotify_add_watch(i32 %1272, i8* %1594, i32 %1290) #11
  br label %1596

; <label>:1596:                                   ; preds = %1592, %1584
  %1597 = phi i32 [ -1, %1584 ], [ %1595, %1592 ]
  %1598 = icmp slt i32 %1597, 0
  %1599 = and i1 %1598, %1591
  br i1 %1599, label %1600, label %1608

; <label>:1600:                                   ; preds = %1596
  %1601 = tail call i32* @__errno_location() #1
  %1602 = load i32, i32* %1601, align 4
  switch i32 %1602, label %1603 [
    i32 28, label %1696
    i32 12, label %1696
  ]

; <label>:1603:                                   ; preds = %1600
  %1604 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i32 5) #11
  %1605 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1585, i64 0, i32 0
  %1606 = load i8*, i8** %1605, align 8
  %1607 = call i8* @quotearg_style(i32 4, i8* %1606) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1602, i8* %1604, i8* %1607) #11
  br label %1608

; <label>:1608:                                   ; preds = %1603, %1596
  br i1 %1590, label %1667, label %1609

; <label>:1609:                                   ; preds = %1608
  %1610 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1582, i32 12
  %1611 = load i32, i32* %1610, align 4
  %1612 = icmp slt i32 %1611, 0
  %1613 = icmp ne i32 %1597, %1611
  %1614 = or i1 %1612, %1613
  br i1 %1614, label %1615, label %1667

; <label>:1615:                                   ; preds = %1609
  %1616 = icmp sgt i32 %1611, -1
  br i1 %1616, label %1617, label %1621

; <label>:1617:                                   ; preds = %1615
  %1618 = call i32 @inotify_rm_watch(i32 %1272, i32 %1611) #11
  %1619 = bitcast %struct.File_spec* %1585 to i8*
  %1620 = call i8* @hash_delete(%struct.hash_table* nonnull %1284, i8* %1619) #11
  br label %1621

; <label>:1621:                                   ; preds = %1617, %1615
  store i32 %1597, i32* %1610, align 4
  %1622 = icmp eq i32 %1597, -1
  br i1 %1622, label %1623, label %1624

; <label>:1623:                                   ; preds = %1621, %1676, %1694, %1695
  br label %1464

; <label>:1624:                                   ; preds = %1621
  %1625 = bitcast %struct.File_spec* %1585 to i8*
  %1626 = call i8* @hash_delete(%struct.hash_table* nonnull %1284, i8* %1625) #11
  %1627 = bitcast i8* %1626 to %struct.File_spec*
  %1628 = icmp eq i8* %1626, null
  %1629 = icmp eq %struct.File_spec* %1627, %1585
  %1630 = or i1 %1628, %1629
  br i1 %1630, label %1663, label %1631

; <label>:1631:                                   ; preds = %1624
  %1632 = load i32, i32* @follow_mode, align 4
  %1633 = icmp eq i32 %1632, 1
  br i1 %1633, label %1634, label %1635

; <label>:1634:                                   ; preds = %1631
  call fastcc void @recheck(%struct.File_spec* %1627, i1 zeroext false) #11
  br label %1635

; <label>:1635:                                   ; preds = %1634, %1631
  %1636 = getelementptr inbounds i8, i8* %1626, i64 68
  %1637 = bitcast i8* %1636 to i32*
  store i32 -1, i32* %1637, align 4
  %1638 = getelementptr inbounds i8, i8* %1626, i64 56
  %1639 = bitcast i8* %1638 to i32*
  %1640 = load i32, i32* %1639, align 8
  %1641 = bitcast i8* %1626 to i8**
  %1642 = load i8*, i8** %1641, align 8
  %1643 = load i8, i8* %1642, align 1
  %1644 = icmp eq i8 %1643, 45
  br i1 %1644, label %1645, label %1651

; <label>:1645:                                   ; preds = %1635
  %1646 = getelementptr inbounds i8, i8* %1642, i64 1
  %1647 = load i8, i8* %1646, align 1
  %1648 = icmp eq i8 %1647, 0
  br i1 %1648, label %1649, label %1651

; <label>:1649:                                   ; preds = %1645
  %1650 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1651

; <label>:1651:                                   ; preds = %1649, %1645, %1635
  %1652 = phi i8* [ %1650, %1649 ], [ %1642, %1635 ], [ %1642, %1645 ]
  %1653 = add i32 %1640, 1
  %1654 = icmp ugt i32 %1653, 1
  br i1 %1654, label %1655, label %1663

; <label>:1655:                                   ; preds = %1651
  %1656 = call i32 @close(i32 %1640) #11
  %1657 = icmp eq i32 %1656, 0
  br i1 %1657, label %1663, label %1658

; <label>:1658:                                   ; preds = %1655
  %1659 = tail call i32* @__errno_location() #1
  %1660 = load i32, i32* %1659, align 4
  %1661 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %1662 = call i8* @quotearg_style(i32 4, i8* %1652) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1660, i8* %1661, i8* %1662, i32 %1640) #11
  br label %1663

; <label>:1663:                                   ; preds = %1658, %1655, %1651, %1624
  %1664 = call i8* @hash_insert(%struct.hash_table* nonnull %1284, i8* %1625) #11
  %1665 = icmp eq i8* %1664, null
  br i1 %1665, label %1666, label %1667

; <label>:1666:                                   ; preds = %1663
  call void @xalloc_die() #15
  unreachable

; <label>:1667:                                   ; preds = %1663, %1609, %1608
  %1668 = load i32, i32* @follow_mode, align 4
  %1669 = icmp eq i32 %1668, 1
  br i1 %1669, label %1670, label %1676

; <label>:1670:                                   ; preds = %1667
  call fastcc void @recheck(%struct.File_spec* %1585, i1 zeroext false) #11
  br label %1676

; <label>:1671:                                   ; preds = %1549
  call void @llvm.lifetime.start(i64 96, i8* nonnull %1462) #11
  %1672 = bitcast i8* %1553 to i32*
  %1673 = load i32, i32* %1672, align 4
  store i32 %1673, i32* %1463, align 4
  %1674 = call i8* @hash_lookup(%struct.hash_table* nonnull %1284, i8* nonnull %1462) #11
  %1675 = bitcast i8* %1674 to %struct.File_spec*
  call void @llvm.lifetime.end(i64 96, i8* nonnull %1462) #11
  br label %1676

; <label>:1676:                                   ; preds = %1671, %1670, %1667
  %1677 = phi %struct.File_spec* [ %1675, %1671 ], [ %1585, %1670 ], [ %1585, %1667 ]
  %1678 = icmp eq %struct.File_spec* %1677, null
  br i1 %1678, label %1623, label %1679

; <label>:1679:                                   ; preds = %1676
  %1680 = getelementptr inbounds i8, i8* %1553, i64 4
  %1681 = bitcast i8* %1680 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = and i32 %1682, 3588
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1695, label %1685

; <label>:1685:                                   ; preds = %1679
  %1686 = and i32 %1682, 1024
  %1687 = icmp eq i32 %1686, 0
  br i1 %1687, label %1694, label %1688

; <label>:1688:                                   ; preds = %1685
  %1689 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1677, i64 0, i32 12
  %1690 = load i32, i32* %1689, align 4
  %1691 = call i32 @inotify_rm_watch(i32 %1272, i32 %1690) #11
  %1692 = bitcast %struct.File_spec* %1677 to i8*
  %1693 = call i8* @hash_delete(%struct.hash_table* nonnull %1284, i8* %1692) #11
  br label %1694

; <label>:1694:                                   ; preds = %1688, %1685
  call fastcc void @recheck(%struct.File_spec* nonnull %1677, i1 zeroext false) #11
  br label %1623

; <label>:1695:                                   ; preds = %1679
  call fastcc void @check_fspec(%struct.File_spec* nonnull %1677, %struct.File_spec** nonnull %4) #11
  br label %1623

; <label>:1696:                                   ; preds = %1600, %1600
  %1697 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1697) #11
  call void @hash_free(%struct.hash_table* nonnull %1284) #11
  store i32 0, i32* %1601, align 4
  br label %1698

; <label>:1698:                                   ; preds = %1381, %1696, %1436
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1283) #11
  br label %1699

; <label>:1699:                                   ; preds = %1271, %1698
  %1700 = tail call i32* @__errno_location() #1
  %1701 = load i32, i32* %1700, align 4
  %1702 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1701, i8* %1702) #11
  br label %1703

; <label>:1703:                                   ; preds = %1716, %1699
  %1704 = phi i64 [ %1717, %1716 ], [ 0, %1699 ]
  %1705 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1704, i32 12
  %1706 = load i32, i32* %1705, align 4
  %1707 = icmp eq i32 %1706, -1
  br i1 %1707, label %1710, label %1708

; <label>:1708:                                   ; preds = %1703
  %1709 = call i32 @inotify_rm_watch(i32 %1272, i32 %1706) #11
  br label %1710

; <label>:1710:                                   ; preds = %1703, %1708
  %1711 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1704, i32 13
  %1712 = load i32, i32* %1711, align 8
  %1713 = icmp eq i32 %1712, -1
  br i1 %1713, label %1716, label %1714

; <label>:1714:                                   ; preds = %1710
  %1715 = call i32 @inotify_rm_watch(i32 %1272, i32 %1712) #11
  br label %1716

; <label>:1716:                                   ; preds = %1710, %1714
  %1717 = add nuw i64 %1704, 1
  %1718 = icmp eq i64 %1717, %306
  br i1 %1718, label %1720, label %1703

; <label>:1719:                                   ; preds = %1492, %1383
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1283) #11
  br label %1986

; <label>:1720:                                   ; preds = %1716
  br label %1721

; <label>:1721:                                   ; preds = %1720, %1198, %1268, %1269
  store i1 true, i1* @disable_inotify, align 1
  %1722 = load i32, i32* @pid, align 4
  %1723 = icmp eq i32 %1722, 0
  %1724 = load i32, i32* @follow_mode, align 4
  %1725 = icmp eq i32 %1724, 2
  %1726 = and i1 %1723, %1725
  %1727 = icmp eq i64 %306, 1
  %1728 = and i1 %1727, %1726
  br i1 %1728, label %1729, label %1740

; <label>:1729:                                   ; preds = %1721
  %1730 = getelementptr inbounds i8, i8* %320, i64 56
  %1731 = bitcast i8* %1730 to i32*
  %1732 = load i32, i32* %1731, align 8
  %1733 = icmp eq i32 %1732, -1
  br i1 %1733, label %1740, label %1734

; <label>:1734:                                   ; preds = %1729
  %1735 = getelementptr inbounds i8, i8* %320, i64 48
  %1736 = bitcast i8* %1735 to i32*
  %1737 = load i32, i32* %1736, align 8
  %1738 = and i32 %1737, 61440
  %1739 = icmp ne i32 %1738, 32768
  br label %1740

; <label>:1740:                                   ; preds = %1734, %1729, %1721
  %1741 = phi i1 [ false, %1729 ], [ false, %1721 ], [ %1739, %1734 ]
  %1742 = add nsw i64 %306, -1
  %1743 = bitcast %struct.stat* %3 to i8*
  %1744 = zext i1 %1741 to i32
  %1745 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %1746 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %1747 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0
  %1748 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1
  %1749 = select i1 %1741, i32 0, i32 2048
  %1750 = bitcast i64* %1747 to <2 x i64>*
  br label %1751

; <label>:1751:                                   ; preds = %1965, %1740
  %1752 = phi i8 [ 0, %1740 ], [ %1966, %1965 ]
  %1753 = phi i64 [ %1742, %1740 ], [ %1911, %1965 ]
  br label %1754

; <label>:1754:                                   ; preds = %1751, %1950
  %1755 = phi i64 [ %1911, %1950 ], [ %1753, %1751 ]
  br label %1756

; <label>:1756:                                   ; preds = %1754, %1909
  %1757 = phi i64 [ %1911, %1909 ], [ %1755, %1754 ]
  %1758 = phi i64 [ %1912, %1909 ], [ 0, %1754 ]
  %1759 = phi i8 [ %1910, %1909 ], [ 0, %1754 ]
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1743) #11
  %1760 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758
  %1761 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 6
  %1762 = load i8, i8* %1761, align 4
  %1763 = icmp eq i8 %1762, 0
  br i1 %1763, label %1764, label %1909

; <label>:1764:                                   ; preds = %1756
  %1765 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 9
  %1766 = load i32, i32* %1765, align 8
  %1767 = icmp slt i32 %1766, 0
  br i1 %1767, label %1768, label %1769

; <label>:1768:                                   ; preds = %1764
  call fastcc void @recheck(%struct.File_spec* nonnull %1760, i1 zeroext %1741) #11
  br label %1909

; <label>:1769:                                   ; preds = %1764
  %1770 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %1760, i64 0, i32 0
  %1771 = load i8*, i8** %1770, align 8
  %1772 = load i8, i8* %1771, align 1
  %1773 = icmp eq i8 %1772, 45
  br i1 %1773, label %1774, label %1780

; <label>:1774:                                   ; preds = %1769
  %1775 = getelementptr inbounds i8, i8* %1771, i64 1
  %1776 = load i8, i8* %1775, align 1
  %1777 = icmp eq i8 %1776, 0
  br i1 %1777, label %1778, label %1780

; <label>:1778:                                   ; preds = %1774
  %1779 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %1780

; <label>:1780:                                   ; preds = %1778, %1774, %1769
  %1781 = phi i8* [ %1779, %1778 ], [ %1771, %1769 ], [ %1771, %1774 ]
  %1782 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 5
  %1783 = load i32, i32* %1782, align 8
  %1784 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 11
  %1785 = load i32, i32* %1784, align 8
  %1786 = icmp eq i32 %1785, %1744
  br i1 %1786, label %1810, label %1787

; <label>:1787:                                   ; preds = %1780
  %1788 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %1766, i32 3) #11
  %1789 = or i32 %1788, %1749
  %1790 = icmp slt i32 %1788, 0
  br i1 %1790, label %1796, label %1791

; <label>:1791:                                   ; preds = %1787
  %1792 = icmp eq i32 %1789, %1788
  br i1 %1792, label %1807, label %1793

; <label>:1793:                                   ; preds = %1791
  %1794 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %1766, i32 4, i32 %1789) #11
  %1795 = icmp eq i32 %1794, -1
  br i1 %1795, label %1796, label %1807

; <label>:1796:                                   ; preds = %1793, %1787
  %1797 = load i32, i32* %1782, align 8
  %1798 = and i32 %1797, 61440
  %1799 = icmp eq i32 %1798, 32768
  %1800 = tail call i32* @__errno_location() #1
  %1801 = load i32, i32* %1800, align 4
  %1802 = icmp eq i32 %1801, 1
  %1803 = and i1 %1799, %1802
  br i1 %1803, label %1808, label %1804

; <label>:1804:                                   ; preds = %1796
  %1805 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.115, i64 0, i64 0), i32 5) #11
  %1806 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1781) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1801, i8* %1805, i8* %1806) #11
  unreachable

; <label>:1807:                                   ; preds = %1793, %1791
  store i32 %1744, i32* %1784, align 8
  br label %1810

; <label>:1808:                                   ; preds = %1796
  %1809 = load i32, i32* %1784, align 8
  br label %1810

; <label>:1810:                                   ; preds = %1808, %1807, %1780
  %1811 = phi i32 [ %1809, %1808 ], [ %1744, %1807 ], [ %1744, %1780 ]
  %1812 = icmp eq i32 %1811, 0
  br i1 %1812, label %1813, label %1883

; <label>:1813:                                   ; preds = %1810
  %1814 = call i32 @__fxstat(i32 1, i32 %1766, %struct.stat* nonnull %3) #11
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1823, label %1816

; <label>:1816:                                   ; preds = %1813
  store i32 -1, i32* %1765, align 8
  %1817 = tail call i32* @__errno_location() #1
  %1818 = load i32, i32* %1817, align 4
  %1819 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 10
  store i32 %1818, i32* %1819, align 4
  %1820 = load i32, i32* %1817, align 4
  %1821 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1781) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1820, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %1821) #11
  %1822 = call i32 @close(i32 %1766) #11
  br label %1909

; <label>:1823:                                   ; preds = %1813
  %1824 = load i32, i32* %1782, align 8
  %1825 = load i32, i32* %1745, align 8
  %1826 = icmp eq i32 %1824, %1825
  br i1 %1826, label %1827, label %1859

; <label>:1827:                                   ; preds = %1823
  %1828 = and i32 %1824, 61440
  %1829 = icmp eq i32 %1828, 32768
  br i1 %1829, label %1830, label %1835

; <label>:1830:                                   ; preds = %1827
  %1831 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 1
  %1832 = load i64, i64* %1831, align 8
  %1833 = load i64, i64* %1746, align 8
  %1834 = icmp eq i64 %1832, %1833
  br i1 %1834, label %1835, label %1859

; <label>:1835:                                   ; preds = %1830, %1827
  %1836 = load i64, i64* %1747, align 8
  %1837 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 2, i32 0
  %1838 = load i64, i64* %1837, align 8
  %1839 = icmp eq i64 %1838, %1836
  br i1 %1839, label %1840, label %1859

; <label>:1840:                                   ; preds = %1835
  %1841 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 2, i32 1
  %1842 = load i64, i64* %1841, align 8
  %1843 = load i64, i64* %1748, align 8
  %1844 = sub nsw i64 %1842, %1843
  %1845 = trunc i64 %1844 to i32
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1847, label %1859

; <label>:1847:                                   ; preds = %1840
  %1848 = load i64, i64* @max_n_unchanged_stats_between_opens, align 8
  %1849 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 15
  %1850 = load i64, i64* %1849, align 8
  %1851 = add i64 %1850, 1
  store i64 %1851, i64* %1849, align 8
  %1852 = icmp ule i64 %1848, %1850
  %1853 = load i32, i32* @follow_mode, align 4
  %1854 = icmp eq i32 %1853, 1
  %1855 = and i1 %1852, %1854
  br i1 %1855, label %1856, label %1909

; <label>:1856:                                   ; preds = %1847
  %1857 = load i32, i32* %1784, align 8
  %1858 = icmp ne i32 %1857, 0
  call fastcc void @recheck(%struct.File_spec* nonnull %1760, i1 zeroext %1858) #11
  store i64 0, i64* %1849, align 8
  br label %1909

; <label>:1859:                                   ; preds = %1840, %1835, %1830, %1823
  %1860 = load <2 x i64>, <2 x i64>* %1750, align 8
  %1861 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 2, i32 0
  %1862 = bitcast i64* %1861 to <2 x i64>*
  store <2 x i64> %1860, <2 x i64>* %1862, align 8
  store i32 %1825, i32* %1782, align 8
  %1863 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 15
  store i64 0, i64* %1863, align 8
  %1864 = and i32 %1783, 61440
  %1865 = icmp eq i32 %1864, 32768
  br i1 %1865, label %1866, label %1875

; <label>:1866:                                   ; preds = %1859
  %1867 = load i64, i64* %1746, align 8
  %1868 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 1
  %1869 = load i64, i64* %1868, align 8
  %1870 = icmp slt i64 %1867, %1869
  br i1 %1870, label %1871, label %1875

; <label>:1871:                                   ; preds = %1866
  %1872 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i64 0, i64 0), i32 5) #11
  %1873 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1781) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1872, i8* %1873) #11
  %1874 = call fastcc i64 @xlseek(i32 %1766, i64 0, i32 0, i8* %1781) #11
  store i64 0, i64* %1868, align 8
  br label %1875

; <label>:1875:                                   ; preds = %1871, %1866, %1859
  %1876 = icmp eq i64 %1758, %1757
  br i1 %1876, label %1883, label %1877

; <label>:1877:                                   ; preds = %1875
  %1878 = load i1, i1* @print_headers, align 1
  br i1 %1878, label %1879, label %1883

; <label>:1879:                                   ; preds = %1877
  %1880 = load i1, i1* @write_header.first_file, align 1
  %1881 = select i1 %1880, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %1882 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i8* %1881, i8* %1781) #11
  store i1 true, i1* @write_header.first_file, align 1
  br label %1883

; <label>:1883:                                   ; preds = %1879, %1877, %1875, %1810
  %1884 = phi i64 [ %1757, %1810 ], [ %1757, %1875 ], [ %1758, %1879 ], [ %1758, %1877 ]
  %1885 = load i32, i32* %1784, align 8
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1887, label %1899

; <label>:1887:                                   ; preds = %1883
  %1888 = and i32 %1783, 61440
  %1889 = icmp eq i32 %1888, 32768
  br i1 %1889, label %1890, label %1899

; <label>:1890:                                   ; preds = %1887
  %1891 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 7
  %1892 = load i8, i8* %1891, align 1
  %1893 = icmp eq i8 %1892, 0
  br i1 %1893, label %1899, label %1894

; <label>:1894:                                   ; preds = %1890
  %1895 = load i64, i64* %1746, align 8
  %1896 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 1
  %1897 = load i64, i64* %1896, align 8
  %1898 = sub nsw i64 %1895, %1897
  br label %1899

; <label>:1899:                                   ; preds = %1894, %1890, %1887, %1883
  %1900 = phi i64 [ %1898, %1894 ], [ -2, %1883 ], [ -1, %1890 ], [ -1, %1887 ]
  %1901 = call fastcc i64 @dump_remainder(i1 zeroext false, i8* %1781, i32 %1766, i64 %1900) #11
  %1902 = icmp ne i64 %1901, 0
  %1903 = zext i1 %1902 to i8
  %1904 = and i8 %1759, 1
  %1905 = or i8 %1903, %1904
  %1906 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1758, i32 1
  %1907 = load i64, i64* %1906, align 8
  %1908 = add i64 %1907, %1901
  store i64 %1908, i64* %1906, align 8
  br label %1909

; <label>:1909:                                   ; preds = %1899, %1856, %1847, %1816, %1768, %1756
  %1910 = phi i8 [ %1759, %1768 ], [ %1905, %1899 ], [ %1759, %1816 ], [ %1759, %1756 ], [ %1759, %1856 ], [ %1759, %1847 ]
  %1911 = phi i64 [ %1757, %1768 ], [ %1884, %1899 ], [ %1757, %1816 ], [ %1757, %1756 ], [ %1757, %1856 ], [ %1757, %1847 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1743) #11
  %1912 = add nuw i64 %1758, 1
  %1913 = icmp ult i64 %1912, %306
  br i1 %1913, label %1756, label %1914

; <label>:1914:                                   ; preds = %1909
  %1915 = load i1, i1* @reopen_inaccessible_files, align 1
  %1916 = load i32, i32* @follow_mode, align 4
  %1917 = icmp eq i32 %1916, 1
  %1918 = and i1 %1915, %1917
  br i1 %1918, label %1937, label %1919

; <label>:1919:                                   ; preds = %1914
  %1920 = xor i1 %1915, true
  br label %1921

; <label>:1921:                                   ; preds = %1931, %1919
  %1922 = phi i64 [ %1932, %1931 ], [ 0, %1919 ]
  %1923 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1922, i32 9
  %1924 = load i32, i32* %1923, align 8
  %1925 = icmp sgt i32 %1924, -1
  br i1 %1925, label %1936, label %1926

; <label>:1926:                                   ; preds = %1921
  %1927 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %321, i64 %1922, i32 6
  %1928 = load i8, i8* %1927, align 4
  %1929 = icmp ne i8 %1928, 0
  %1930 = or i1 %1929, %1920
  br i1 %1930, label %1931, label %1936

; <label>:1931:                                   ; preds = %1926
  %1932 = add nuw i64 %1922, 1
  %1933 = icmp ult i64 %1932, %306
  br i1 %1933, label %1921, label %1934

; <label>:1934:                                   ; preds = %1931
  %1935 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1935) #11
  br label %1976

; <label>:1936:                                   ; preds = %1921, %1926
  br label %1937

; <label>:1937:                                   ; preds = %1936, %1914
  %1938 = and i8 %1910, 1
  %1939 = icmp ne i8 %1938, 0
  %1940 = xor i1 %1939, true
  %1941 = or i1 %1741, %1940
  br i1 %1941, label %1942, label %1950

; <label>:1942:                                   ; preds = %1937
  %1943 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1944 = call i32 @fflush_unlocked(%struct._IO_FILE* %1943) #11
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %1950, label %1946

; <label>:1946:                                   ; preds = %1942
  %1947 = tail call i32* @__errno_location() #1
  %1948 = load i32, i32* %1947, align 4
  %1949 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1948, i8* %1949) #11
  unreachable

; <label>:1950:                                   ; preds = %1942, %1937
  br i1 %1939, label %1754, label %1951

; <label>:1951:                                   ; preds = %1950
  %1952 = and i8 %1752, 1
  %1953 = icmp eq i8 %1952, 0
  br i1 %1953, label %1954, label %1975

; <label>:1954:                                   ; preds = %1951
  %1955 = load i32, i32* @pid, align 4
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1967, label %1957

; <label>:1957:                                   ; preds = %1954
  %1958 = call i32 @kill(i32 %1955, i32 0) #11
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %1967, label %1960

; <label>:1960:                                   ; preds = %1957
  %1961 = tail call i32* @__errno_location() #1
  %1962 = load i32, i32* %1961, align 4
  %1963 = icmp ne i32 %1962, 1
  %1964 = zext i1 %1963 to i8
  br i1 %1963, label %1965, label %1967

; <label>:1965:                                   ; preds = %1960, %1967
  %1966 = phi i8 [ %1964, %1960 ], [ %1968, %1967 ]
  br label %1751

; <label>:1967:                                   ; preds = %1960, %1957, %1954
  %1968 = phi i8 [ %1964, %1960 ], [ 0, %1957 ], [ 0, %1954 ]
  %1969 = call i32 @xnanosleep(double %123) #11
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1965, label %1971

; <label>:1971:                                   ; preds = %1967
  %1972 = tail call i32* @__errno_location() #1
  %1973 = load i32, i32* %1972, align 4
  %1974 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1973, i8* %1974) #11
  unreachable

; <label>:1975:                                   ; preds = %1951
  br label %1976

; <label>:1976:                                   ; preds = %1975, %1159, %1934, %1196
  %1977 = load i1, i1* @have_read_stdin, align 1
  br i1 %1977, label %1978, label %1984

; <label>:1978:                                   ; preds = %1976
  %1979 = call i32 @close(i32 0) #11
  %1980 = icmp slt i32 %1979, 0
  br i1 %1980, label %1981, label %1984

; <label>:1981:                                   ; preds = %1978
  %1982 = tail call i32* @__errno_location() #1
  %1983 = load i32, i32* %1982, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1983, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0)) #11
  unreachable

; <label>:1984:                                   ; preds = %1978, %1976
  %1985 = zext i1 %1160 to i32
  br label %1986

; <label>:1986:                                   ; preds = %1719, %304, %1984
  %1987 = phi i32 [ %1985, %1984 ], [ 1, %1719 ], [ 0, %304 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %16) #11
  ret i32 %1987

; <label>:1988:                                   ; preds = %273
  %1989 = getelementptr inbounds i8, i8* %278, i64 1
  %1990 = load i8, i8* %1989, align 1
  %1991 = zext i8 %1990 to i32
  %1992 = sub nsw i32 0, %1991
  br label %1993

; <label>:1993:                                   ; preds = %1988, %273
  %1994 = phi i32 [ %1992, %1988 ], [ %281, %273 ]
  %1995 = icmp eq i32 %1994, 0
  %1996 = or i1 %1995, %275
  %1997 = select i1 %1996, i8 1, i8 %260
  %1998 = add i64 %261, 2
  %1999 = icmp eq i64 %1998, %233
  br i1 %1999, label %283, label %259
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xwrite_stdout(i8*, i64) unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = tail call i64 @fwrite_unlocked(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %5) #11
  %7 = icmp ult i64 %6, %1
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  tail call void @clearerr_unlocked(%struct._IO_FILE* %9) #11
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.86, i64 0, i64 0), i32 5) #11
  %13 = tail call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i64 0, i64 0)) #11
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %11, i8* %12, i8* %13) #11
  unreachable

; <label>:14:                                     ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @dump_remainder(i1 zeroext, i8*, i32, i64) unnamed_addr #6 {
  %5 = alloca [8192 x i8], align 16
  %6 = zext i1 %0 to i8
  %7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %8 = icmp eq i64 %3, -1
  %9 = icmp eq i64 %3, -2
  br label %10

; <label>:10:                                     ; preds = %38, %4
  %11 = phi i64 [ %3, %4 ], [ %39, %38 ]
  %12 = phi i64 [ 0, %4 ], [ %33, %38 ]
  %13 = phi i8 [ %6, %4 ], [ %32, %38 ]
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %7) #11
  %14 = icmp ult i64 %11, 8192
  %15 = select i1 %14, i64 %11, i64 8192
  %16 = call i64 @safe_read(i32 %2, i8* nonnull %7, i64 %15) #11
  switch i64 %16, label %24 [
    i64 -1, label %17
    i64 0, label %40
  ]

; <label>:17:                                     ; preds = %10
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %42, label %21

; <label>:21:                                     ; preds = %17
  %22 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.79, i64 0, i64 0), i32 5) #11
  %23 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %19, i8* %22, i8* %23) #11
  unreachable

; <label>:24:                                     ; preds = %10
  %25 = and i8 %13, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %24
  %28 = load i1, i1* @write_header.first_file, align 1
  %29 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %30 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0), i8* %29, i8* %1) #11
  store i1 true, i1* @write_header.first_file, align 1
  br label %31

; <label>:31:                                     ; preds = %24, %27
  %32 = phi i8 [ 0, %27 ], [ %13, %24 ]
  call fastcc void @xwrite_stdout(i8* nonnull %7, i64 %16)
  %33 = add i64 %16, %12
  br i1 %8, label %38, label %34

; <label>:34:                                     ; preds = %31
  %35 = sub i64 %11, %16
  %36 = icmp eq i64 %35, 0
  %37 = or i1 %9, %36
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %34, %31
  %39 = phi i64 [ %35, %34 ], [ %11, %31 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %7) #11
  br label %10

; <label>:40:                                     ; preds = %34, %10
  %41 = phi i64 [ %12, %10 ], [ %33, %34 ]
  br label %42

; <label>:42:                                     ; preds = %40, %17
  %43 = phi i64 [ %12, %17 ], [ %41, %40 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %7) #11
  ret i64 %43
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @xlseek(i32, i64, i32, i8*) unnamed_addr #6 {
  %5 = alloca [21 x i8], align 16
  %6 = tail call i64 @lseek(i32 %0, i64 %1, i32 %2) #11
  %7 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %7) #11
  %8 = icmp sgt i64 %6, -1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  call void @llvm.lifetime.end(i64 21, i8* nonnull %7) #11
  ret i64 %6

; <label>:10:                                     ; preds = %4
  %11 = call i8* @offtostr(i64 %1, i8* nonnull %7) #11
  switch i32 %2, label %27 [
    i32 0, label %12
    i32 1, label %17
    i32 2, label %22
  ]

; <label>:12:                                     ; preds = %10
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i64 0, i64 0), i32 5) #11
  %16 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %14, i8* %15, i8* %16, i8* %11) #11
  br label %28

; <label>:17:                                     ; preds = %10
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.89, i64 0, i64 0), i32 5) #11
  %21 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* %20, i8* %21, i8* %11) #11
  br label %28

; <label>:22:                                     ; preds = %10
  %23 = tail call i32* @__errno_location() #1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.90, i64 0, i64 0), i32 5) #11
  %26 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %3) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %24, i8* %25, i8* %26, i8* %11) #11
  br label %28

; <label>:27:                                     ; preds = %10
  call void @abort() #15
  unreachable

; <label>:28:                                     ; preds = %22, %17, %12
  call void @exit(i32 1) #15
  unreachable
}

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @fremote(i32, i8*) unnamed_addr #6 {
  %3 = alloca %struct.statfs, align 8
  %4 = bitcast %struct.statfs* %3 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %4) #11
  %5 = call i32 @fstatfs(i32 %0, %struct.statfs* nonnull %3) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 38
  br i1 %10, label %115, label %11

; <label>:11:                                     ; preds = %7
  %12 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.94, i64 0, i64 0), i32 5) #11
  %13 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %9, i8* %12, i8* %13) #11
  br label %115

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.statfs, %struct.statfs* %3, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  switch i64 %16, label %109 [
    i64 1633904243, label %110
    i64 44533, label %17
    i64 44543, label %18
    i64 1397113167, label %110
    i64 151263540, label %19
    i64 1635083891, label %110
    i64 391, label %20
    i64 325456742, label %21
    i64 1111905073, label %22
    i64 1650746742, label %23
    i64 464386766, label %24
    i64 3405662737, label %25
    i64 1112100429, label %26
    i64 2435016766, label %27
    i64 1936880249, label %28
    i64 12805120, label %110
    i64 2613483, label %29
    i64 1667723888, label %30
    i64 4283649346, label %110
    i64 1937076805, label %110
    i64 19920823, label %31
    i64 1650812272, label %32
    i64 684539205, label %33
    i64 1161678120, label %34
    i64 1684300152, label %35
    i64 1684170528, label %36
    i64 4979, label %37
    i64 7377, label %38
    i64 61791, label %39
    i64 3730735588, label %40
    i64 4278867, label %41
    i64 24053, label %42
    i64 4989, label %43
    i64 61267, label %44
    i64 61265, label %45
    i64 4076150800, label %46
    i64 16390, label %47
    i64 428016422, label %110
    i64 1702057286, label %110
    i64 1702057283, label %110
    i64 195894762, label %48
    i64 18225520, label %110
    i64 1196443219, label %110
    i64 16964, label %49
    i64 18475, label %50
    i64 18520, label %51
    i64 12648430, label %52
    i64 4187351113, label %53
    i64 2508478710, label %54
    i64 288389204, label %55
    i64 19993000, label %110
    i64 732765674, label %56
    i64 38496, label %57
    i64 16388, label %58
    i64 16384, label %59
    i64 1984, label %60
    i64 29366, label %61
    i64 827541066, label %62
    i64 1799439955, label %110
    i64 3380511080, label %63
    i64 198183888, label %110
    i64 1397109069, label %64
    i64 4991, label %65
    i64 5007, label %66
    i64 9320, label %67
    i64 9336, label %68
    i64 19802, label %69
    i64 427819522, label %70
    i64 19780, label %71
    i64 22092, label %110
    i64 26985, label %110
    i64 1852207972, label %110
    i64 13364, label %72
    i64 1853056627, label %73
    i64 1397118030, label %74
    i64 40865, label %75
    i64 1952539503, label %110
    i64 2035054128, label %110
    i64 2866260714, label %110
    i64 1346981957, label %110
    i64 2088527475, label %110
    i64 40864, label %76
    i64 1634035564, label %77
    i64 47, label %78
    i64 1746473250, label %79
    i64 2240043254, label %80
    i64 124082209, label %81
    i64 1382369651, label %82
    i64 29301, label %83
    i64 1733912937, label %84
    i64 1935894131, label %85
    i64 4185718668, label %86
    i64 1128357203, label %87
    i64 20859, label %110
    i64 4266872130, label %110
    i64 3203391149, label %110
    i64 1397703499, label %88
    i64 1936814952, label %89
    i64 1650812274, label %90
    i64 19920822, label %91
    i64 19920821, label %92
    i64 16914836, label %93
    i64 1953653091, label %94
    i64 604313861, label %95
    i64 352400198, label %96
    i64 72020, label %97
    i64 1410924800, label %98
    i64 40866, label %99
    i64 16914839, label %100
    i64 3133910204, label %110
    i64 2768370933, label %110
    i64 1448756819, label %101
    i64 1397114950, label %102
    i64 2881100148, label %103
    i64 19920820, label %104
    i64 1481003842, label %105
    i64 19911021, label %106
    i64 801189825, label %107
    i64 1479104553, label %108
  ]

; <label>:17:                                     ; preds = %14
  br label %110

; <label>:18:                                     ; preds = %14
  br label %110

; <label>:19:                                     ; preds = %14
  br label %110

; <label>:20:                                     ; preds = %14
  br label %110

; <label>:21:                                     ; preds = %14
  br label %110

; <label>:22:                                     ; preds = %14
  br label %110

; <label>:23:                                     ; preds = %14
  br label %110

; <label>:24:                                     ; preds = %14
  br label %110

; <label>:25:                                     ; preds = %14
  br label %110

; <label>:26:                                     ; preds = %14
  br label %110

; <label>:27:                                     ; preds = %14
  br label %110

; <label>:28:                                     ; preds = %14
  br label %110

; <label>:29:                                     ; preds = %14
  br label %110

; <label>:30:                                     ; preds = %14
  br label %110

; <label>:31:                                     ; preds = %14
  br label %110

; <label>:32:                                     ; preds = %14
  br label %110

; <label>:33:                                     ; preds = %14
  br label %110

; <label>:34:                                     ; preds = %14
  br label %110

; <label>:35:                                     ; preds = %14
  br label %110

; <label>:36:                                     ; preds = %14
  br label %110

; <label>:37:                                     ; preds = %14
  br label %110

; <label>:38:                                     ; preds = %14
  br label %110

; <label>:39:                                     ; preds = %14
  br label %110

; <label>:40:                                     ; preds = %14
  br label %110

; <label>:41:                                     ; preds = %14
  br label %110

; <label>:42:                                     ; preds = %14
  br label %110

; <label>:43:                                     ; preds = %14
  br label %110

; <label>:44:                                     ; preds = %14
  br label %110

; <label>:45:                                     ; preds = %14
  br label %110

; <label>:46:                                     ; preds = %14
  br label %110

; <label>:47:                                     ; preds = %14
  br label %110

; <label>:48:                                     ; preds = %14
  br label %110

; <label>:49:                                     ; preds = %14
  br label %110

; <label>:50:                                     ; preds = %14
  br label %110

; <label>:51:                                     ; preds = %14
  br label %110

; <label>:52:                                     ; preds = %14
  br label %110

; <label>:53:                                     ; preds = %14
  br label %110

; <label>:54:                                     ; preds = %14
  br label %110

; <label>:55:                                     ; preds = %14
  br label %110

; <label>:56:                                     ; preds = %14
  br label %110

; <label>:57:                                     ; preds = %14
  br label %110

; <label>:58:                                     ; preds = %14
  br label %110

; <label>:59:                                     ; preds = %14
  br label %110

; <label>:60:                                     ; preds = %14
  br label %110

; <label>:61:                                     ; preds = %14
  br label %110

; <label>:62:                                     ; preds = %14
  br label %110

; <label>:63:                                     ; preds = %14
  br label %110

; <label>:64:                                     ; preds = %14
  br label %110

; <label>:65:                                     ; preds = %14
  br label %110

; <label>:66:                                     ; preds = %14
  br label %110

; <label>:67:                                     ; preds = %14
  br label %110

; <label>:68:                                     ; preds = %14
  br label %110

; <label>:69:                                     ; preds = %14
  br label %110

; <label>:70:                                     ; preds = %14
  br label %110

; <label>:71:                                     ; preds = %14
  br label %110

; <label>:72:                                     ; preds = %14
  br label %110

; <label>:73:                                     ; preds = %14
  br label %110

; <label>:74:                                     ; preds = %14
  br label %110

; <label>:75:                                     ; preds = %14
  br label %110

; <label>:76:                                     ; preds = %14
  br label %110

; <label>:77:                                     ; preds = %14
  br label %110

; <label>:78:                                     ; preds = %14
  br label %110

; <label>:79:                                     ; preds = %14
  br label %110

; <label>:80:                                     ; preds = %14
  br label %110

; <label>:81:                                     ; preds = %14
  br label %110

; <label>:82:                                     ; preds = %14
  br label %110

; <label>:83:                                     ; preds = %14
  br label %110

; <label>:84:                                     ; preds = %14
  br label %110

; <label>:85:                                     ; preds = %14
  br label %110

; <label>:86:                                     ; preds = %14
  br label %110

; <label>:87:                                     ; preds = %14
  br label %110

; <label>:88:                                     ; preds = %14
  br label %110

; <label>:89:                                     ; preds = %14
  br label %110

; <label>:90:                                     ; preds = %14
  br label %110

; <label>:91:                                     ; preds = %14
  br label %110

; <label>:92:                                     ; preds = %14
  br label %110

; <label>:93:                                     ; preds = %14
  br label %110

; <label>:94:                                     ; preds = %14
  br label %110

; <label>:95:                                     ; preds = %14
  br label %110

; <label>:96:                                     ; preds = %14
  br label %110

; <label>:97:                                     ; preds = %14
  br label %110

; <label>:98:                                     ; preds = %14
  br label %110

; <label>:99:                                     ; preds = %14
  br label %110

; <label>:100:                                    ; preds = %14
  br label %110

; <label>:101:                                    ; preds = %14
  br label %110

; <label>:102:                                    ; preds = %14
  br label %110

; <label>:103:                                    ; preds = %14
  br label %110

; <label>:104:                                    ; preds = %14
  br label %110

; <label>:105:                                    ; preds = %14
  br label %110

; <label>:106:                                    ; preds = %14
  br label %110

; <label>:107:                                    ; preds = %14
  br label %110

; <label>:108:                                    ; preds = %14
  br label %110

; <label>:109:                                    ; preds = %14
  br label %110

; <label>:110:                                    ; preds = %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %111 = phi i3 [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 1, %14 ], [ 2, %17 ], [ 2, %18 ], [ 2, %19 ], [ 2, %20 ], [ 2, %21 ], [ 2, %22 ], [ 2, %23 ], [ 2, %24 ], [ 2, %25 ], [ 2, %26 ], [ 2, %27 ], [ 2, %28 ], [ 2, %29 ], [ 2, %30 ], [ 2, %31 ], [ 2, %32 ], [ 2, %33 ], [ 2, %34 ], [ 2, %35 ], [ 2, %36 ], [ 2, %37 ], [ 2, %38 ], [ 2, %39 ], [ 2, %40 ], [ 2, %41 ], [ 2, %42 ], [ 2, %43 ], [ 2, %44 ], [ 2, %45 ], [ 2, %46 ], [ 2, %47 ], [ 2, %48 ], [ 2, %49 ], [ 2, %50 ], [ 2, %51 ], [ 2, %52 ], [ 2, %53 ], [ 2, %54 ], [ 2, %55 ], [ 2, %56 ], [ 2, %57 ], [ 2, %58 ], [ 2, %59 ], [ 2, %60 ], [ 2, %61 ], [ 2, %62 ], [ 2, %63 ], [ 2, %64 ], [ 2, %65 ], [ 2, %66 ], [ 2, %67 ], [ 2, %68 ], [ 2, %69 ], [ 2, %70 ], [ 2, %71 ], [ 2, %72 ], [ 2, %73 ], [ 2, %74 ], [ 2, %75 ], [ 2, %76 ], [ 2, %77 ], [ 2, %78 ], [ 2, %79 ], [ 2, %80 ], [ 2, %81 ], [ 2, %82 ], [ 2, %83 ], [ 2, %84 ], [ 2, %85 ], [ 2, %86 ], [ 2, %87 ], [ 2, %88 ], [ 2, %89 ], [ 2, %90 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ], [ 2, %94 ], [ 2, %95 ], [ 2, %96 ], [ 2, %97 ], [ 2, %98 ], [ 2, %99 ], [ 2, %100 ], [ 2, %101 ], [ 2, %102 ], [ 2, %103 ], [ 2, %104 ], [ 2, %105 ], [ 2, %106 ], [ 2, %107 ], [ 2, %108 ], [ 0, %109 ]
  %112 = lshr i3 3, %111
  %113 = and i3 %112, 1
  %114 = icmp ne i3 %113, 0
  br label %115

; <label>:115:                                    ; preds = %110, %7, %11
  %116 = phi i1 [ true, %11 ], [ true, %7 ], [ %114, %110 ]
  call void @llvm.lifetime.end(i64 120, i8* nonnull %4) #11
  ret i1 %116
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @inotify_init() local_unnamed_addr #2

declare i32 @fflush_unlocked(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @wd_hasher(i8* nocapture readonly, i64) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 68
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @wd_comparator(i8* nocapture readonly, i8* nocapture readonly) #9 {
  %3 = getelementptr inbounds i8, i8* %0, i64 68
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds i8, i8* %1, i64 68
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %5, %8
  ret i1 %9
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @inotify_add_watch(i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @recheck(%struct.File_spec*, i1 zeroext) unnamed_addr #6 {
  %3 = alloca %struct.stat, align 16
  %4 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %4) #11
  %5 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 8
  %11 = load i8, i8* %10, align 2
  %12 = icmp ne i8 %11, 0
  %13 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 10
  %14 = load i32, i32* %13, align 4
  br label %24

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %6, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 8
  %20 = load i8, i8* %19, align 2
  %21 = icmp ne i8 %20, 0
  %22 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 10
  %23 = load i32, i32* %22, align 4
  br i1 %18, label %32, label %24

; <label>:24:                                     ; preds = %9, %15
  %25 = phi i32 [ %14, %9 ], [ %23, %15 ]
  %26 = phi i32* [ %13, %9 ], [ %22, %15 ]
  %27 = phi i1 [ %12, %9 ], [ %21, %15 ]
  %28 = phi i8* [ %10, %9 ], [ %19, %15 ]
  %29 = select i1 %1, i32 0, i32 2048
  %30 = tail call i32 (i8*, i32, ...) @open_safer(i8* %6, i32 %29) #11
  %31 = load i32, i32* %26, align 4
  br label %32

; <label>:32:                                     ; preds = %15, %24
  %33 = phi i32 [ %25, %24 ], [ %23, %15 ]
  %34 = phi i32* [ %26, %24 ], [ %22, %15 ]
  %35 = phi i1 [ %27, %24 ], [ %21, %15 ]
  %36 = phi i8* [ %28, %24 ], [ %19, %15 ]
  %37 = phi i1 [ false, %24 ], [ true, %15 ]
  %38 = phi i32 [ %31, %24 ], [ %23, %15 ]
  %39 = phi i32 [ %30, %24 ], [ 0, %15 ]
  %40 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, -1
  %43 = icmp eq i32 %38, 0
  %44 = xor i1 %42, %43
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0), i32 943, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.recheck, i64 0, i64 0)) #15
  unreachable

; <label>:46:                                     ; preds = %32
  %47 = load i1, i1* @reopen_inaccessible_files, align 1
  %48 = icmp eq i32 %39, -1
  %49 = and i1 %48, %47
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %36, align 2
  %52 = load i1, i1* @disable_inotify, align 1
  br i1 %52, label %77, label %53

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @__lxstat(i32 1, i8* nonnull %54, %struct.stat* nonnull %3) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 61440
  %61 = icmp eq i32 %60, 40960
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %57
  store i32 -1, i32* %34, align 4
  %63 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 6
  store i8 1, i8* %63, align 4
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.105, i64 0, i64 0), i32 5) #11
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 45
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds i8, i8* %65, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %68
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %74

; <label>:74:                                     ; preds = %62, %68, %72
  %75 = phi i8* [ %73, %72 ], [ %65, %62 ], [ %65, %68 ]
  %76 = call i8* @quotearg_style(i32 4, i8* %75) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64, i8* %76) #11
  br label %186

; <label>:77:                                     ; preds = %53, %57, %46
  br i1 %48, label %81, label %78

; <label>:78:                                     ; preds = %77
  %79 = call i32 @__fxstat(i32 1, i32 %39, %struct.stat* nonnull %3) #11
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %117

; <label>:81:                                     ; preds = %78, %77
  %82 = tail call i32* @__errno_location() #1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %34, align 4
  %84 = load i8, i8* %36, align 2
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %101

; <label>:86:                                     ; preds = %81
  br i1 %35, label %87, label %186

; <label>:87:                                     ; preds = %86
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i64 0, i64 0), i32 5) #11
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp eq i8 %90, 45
  br i1 %91, label %92, label %98

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds i8, i8* %89, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %92
  %97 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %98

; <label>:98:                                     ; preds = %87, %92, %96
  %99 = phi i8* [ %97, %96 ], [ %89, %87 ], [ %89, %92 ]
  %100 = call i8* @quotearg_style(i32 4, i8* %99) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %83, i8* %88, i8* %100) #11
  br label %186

; <label>:101:                                    ; preds = %81
  %102 = load i32, i32* %82, align 4
  %103 = icmp eq i32 %33, %102
  br i1 %103, label %186, label %104

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp eq i8 %106, 45
  br i1 %107, label %108, label %114

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i8, i8* %105, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %114

; <label>:112:                                    ; preds = %108
  %113 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %114

; <label>:114:                                    ; preds = %104, %108, %112
  %115 = phi i8* [ %113, %112 ], [ %105, %104 ], [ %105, %108 ]
  %116 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %115) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %116) #11
  br label %186

; <label>:117:                                    ; preds = %78
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = trunc i32 %119 to i16
  %121 = and i16 %120, -4096
  switch i16 %121, label %122 [
    i16 -32768, label %153
    i16 4096, label %153
    i16 -16384, label %153
    i16 8192, label %153
  ]

; <label>:122:                                    ; preds = %117
  store i32 -1, i32* %34, align 4
  store i8 0, i8* %36, align 2
  %123 = load i1, i1* @reopen_inaccessible_files, align 1
  %124 = load i32, i32* @follow_mode, align 4
  %125 = icmp eq i32 %124, 1
  %126 = and i1 %123, %125
  %127 = xor i1 %126, true
  %128 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 6
  %129 = zext i1 %127 to i8
  store i8 %129, i8* %128, align 4
  %130 = xor i1 %35, true
  %131 = icmp eq i32 %33, -1
  %132 = and i1 %131, %130
  br i1 %132, label %186, label %133

; <label>:133:                                    ; preds = %122
  %134 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.108, i64 0, i64 0), i32 5) #11
  %135 = load i8*, i8** %5, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp eq i8 %136, 45
  br i1 %137, label %138, label %144

; <label>:138:                                    ; preds = %133
  %139 = getelementptr inbounds i8, i8* %135, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %144

; <label>:142:                                    ; preds = %138
  %143 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %144

; <label>:144:                                    ; preds = %133, %138, %142
  %145 = phi i8* [ %143, %142 ], [ %135, %133 ], [ %135, %138 ]
  %146 = call i8* @quotearg_style(i32 4, i8* %145) #11
  %147 = load i8, i8* %128, align 4
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %151, label %149

; <label>:149:                                    ; preds = %144
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.81, i64 0, i64 0), i32 5) #11
  br label %151

; <label>:151:                                    ; preds = %144, %149
  %152 = phi i8* [ %150, %149 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), %144 ]
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %134, i8* %146, i8* %152) #11
  br label %186

; <label>:153:                                    ; preds = %117, %117, %117, %117
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = icmp eq i8 %155, 45
  br i1 %156, label %157, label %163

; <label>:157:                                    ; preds = %153
  %158 = getelementptr inbounds i8, i8* %154, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %163

; <label>:161:                                    ; preds = %157
  %162 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %163

; <label>:163:                                    ; preds = %153, %157, %161
  %164 = phi i8* [ %162, %161 ], [ %154, %153 ], [ %154, %157 ]
  %165 = call fastcc zeroext i1 @fremote(i32 %39, i8* %164)
  %166 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 7
  %167 = zext i1 %165 to i8
  store i8 %167, i8* %166, align 1
  br i1 %165, label %168, label %185

; <label>:168:                                    ; preds = %163
  %169 = load i1, i1* @disable_inotify, align 1
  br i1 %169, label %185, label %170

; <label>:170:                                    ; preds = %168
  store i32 -1, i32* %34, align 4
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.109, i64 0, i64 0), i32 5) #11
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = icmp eq i8 %173, 45
  br i1 %174, label %175, label %181

; <label>:175:                                    ; preds = %170
  %176 = getelementptr inbounds i8, i8* %172, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %181

; <label>:179:                                    ; preds = %175
  %180 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %181

; <label>:181:                                    ; preds = %170, %175, %179
  %182 = phi i8* [ %180, %179 ], [ %172, %170 ], [ %172, %175 ]
  %183 = call i8* @quotearg_style(i32 4, i8* %182) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %171, i8* %183) #11
  %184 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 6
  store i8 1, i8* %184, align 4
  store i8 1, i8* %166, align 1
  br label %186

; <label>:185:                                    ; preds = %168, %163
  store i32 0, i32* %34, align 4
  switch i32 %33, label %232 [
    i32 2, label %250
    i32 0, label %250
  ]

; <label>:186:                                    ; preds = %122, %86, %101, %74, %151, %181, %98, %114
  %187 = load i8*, i8** %5, align 8
  %188 = load i8, i8* %187, align 1
  %189 = icmp eq i8 %188, 45
  br i1 %189, label %190, label %196

; <label>:190:                                    ; preds = %186
  %191 = getelementptr inbounds i8, i8* %187, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %196

; <label>:194:                                    ; preds = %190
  %195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %196

; <label>:196:                                    ; preds = %186, %190, %194
  %197 = phi i8* [ %195, %194 ], [ %187, %186 ], [ %187, %190 ]
  %198 = add i32 %39, 1
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %200, label %208

; <label>:200:                                    ; preds = %196
  %201 = call i32 @close(i32 %39) #11
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %208, label %203

; <label>:203:                                    ; preds = %200
  %204 = tail call i32* @__errno_location() #1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %207 = call i8* @quotearg_style(i32 4, i8* %197) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %205, i8* %206, i8* %207, i32 %39) #11
  br label %208

; <label>:208:                                    ; preds = %196, %200, %203
  %209 = load i32, i32* %40, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = load i8, i8* %210, align 1
  %212 = icmp eq i8 %211, 45
  br i1 %212, label %213, label %219

; <label>:213:                                    ; preds = %208
  %214 = getelementptr inbounds i8, i8* %210, i64 1
  %215 = load i8, i8* %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %219

; <label>:217:                                    ; preds = %213
  %218 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %219

; <label>:219:                                    ; preds = %208, %213, %217
  %220 = phi i8* [ %218, %217 ], [ %210, %208 ], [ %210, %213 ]
  %221 = add i32 %209, 1
  %222 = icmp ugt i32 %221, 1
  br i1 %222, label %223, label %231

; <label>:223:                                    ; preds = %219
  %224 = call i32 @close(i32 %209) #11
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %231, label %226

; <label>:226:                                    ; preds = %223
  %227 = tail call i32* @__errno_location() #1
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %230 = call i8* @quotearg_style(i32 4, i8* %220) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %228, i8* %229, i8* %230, i32 %209) #11
  br label %231

; <label>:231:                                    ; preds = %219, %223, %226
  store i32 -1, i32* %40, align 8
  br label %367

; <label>:232:                                    ; preds = %185
  %233 = load i32, i32* %40, align 8
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %236, label %235

; <label>:235:                                    ; preds = %232
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i64 0, i64 0), i32 1020, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.recheck, i64 0, i64 0)) #15
  unreachable

; <label>:236:                                    ; preds = %232
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.111, i64 0, i64 0), i32 5) #11
  %238 = load i8*, i8** %5, align 8
  %239 = load i8, i8* %238, align 1
  %240 = icmp eq i8 %239, 45
  br i1 %240, label %241, label %247

; <label>:241:                                    ; preds = %236
  %242 = getelementptr inbounds i8, i8* %238, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %245, label %247

; <label>:245:                                    ; preds = %241
  %246 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %247

; <label>:247:                                    ; preds = %236, %241, %245
  %248 = phi i8* [ %246, %245 ], [ %238, %236 ], [ %238, %241 ]
  %249 = call i8* @quotearg_style(i32 4, i8* %248) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %237, i8* %249) #11
  br label %337

; <label>:250:                                    ; preds = %185, %185
  %251 = load i32, i32* %40, align 8
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %267

; <label>:253:                                    ; preds = %250
  %254 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.112, i64 0, i64 0), i32 5) #11
  %255 = load i8*, i8** %5, align 8
  %256 = load i8, i8* %255, align 1
  %257 = icmp eq i8 %256, 45
  br i1 %257, label %258, label %264

; <label>:258:                                    ; preds = %253
  %259 = getelementptr inbounds i8, i8* %255, i64 1
  %260 = load i8, i8* %259, align 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %262, label %264

; <label>:262:                                    ; preds = %258
  %263 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %264

; <label>:264:                                    ; preds = %253, %258, %262
  %265 = phi i8* [ %263, %262 ], [ %255, %253 ], [ %255, %258 ]
  %266 = call i8* @quotearg_style(i32 4, i8* %265) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %254, i8* %266) #11
  br label %337

; <label>:267:                                    ; preds = %250
  %268 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %269, %271
  br i1 %272, label %273, label %279

; <label>:273:                                    ; preds = %267
  %274 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %277 = load i64, i64* %276, align 16
  %278 = icmp eq i64 %275, %277
  br i1 %278, label %315, label %279

; <label>:279:                                    ; preds = %273, %267
  %280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.113, i64 0, i64 0), i32 5) #11
  %281 = load i8*, i8** %5, align 8
  %282 = load i8, i8* %281, align 1
  %283 = icmp eq i8 %282, 45
  br i1 %283, label %284, label %290

; <label>:284:                                    ; preds = %279
  %285 = getelementptr inbounds i8, i8* %281, i64 1
  %286 = load i8, i8* %285, align 1
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %288, label %290

; <label>:288:                                    ; preds = %284
  %289 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %290

; <label>:290:                                    ; preds = %279, %284, %288
  %291 = phi i8* [ %289, %288 ], [ %281, %279 ], [ %281, %284 ]
  %292 = call i8* @quotearg_style(i32 4, i8* %291) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %280, i8* %292) #11
  %293 = load i32, i32* %40, align 8
  %294 = load i8*, i8** %5, align 8
  %295 = load i8, i8* %294, align 1
  %296 = icmp eq i8 %295, 45
  br i1 %296, label %297, label %303

; <label>:297:                                    ; preds = %290
  %298 = getelementptr inbounds i8, i8* %294, i64 1
  %299 = load i8, i8* %298, align 1
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %303

; <label>:301:                                    ; preds = %297
  %302 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %303

; <label>:303:                                    ; preds = %290, %297, %301
  %304 = phi i8* [ %302, %301 ], [ %294, %290 ], [ %294, %297 ]
  %305 = add i32 %293, 1
  %306 = icmp ugt i32 %305, 1
  br i1 %306, label %307, label %337

; <label>:307:                                    ; preds = %303
  %308 = call i32 @close(i32 %293) #11
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %337, label %310

; <label>:310:                                    ; preds = %307
  %311 = tail call i32* @__errno_location() #1
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %314 = call i8* @quotearg_style(i32 4, i8* %304) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %312, i8* %313, i8* %314, i32 %293) #11
  br label %337

; <label>:315:                                    ; preds = %273
  %316 = load i8*, i8** %5, align 8
  %317 = load i8, i8* %316, align 1
  %318 = icmp eq i8 %317, 45
  br i1 %318, label %319, label %325

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds i8, i8* %316, i64 1
  %321 = load i8, i8* %320, align 1
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %325

; <label>:323:                                    ; preds = %319
  %324 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %325

; <label>:325:                                    ; preds = %315, %319, %323
  %326 = phi i8* [ %324, %323 ], [ %316, %315 ], [ %316, %319 ]
  %327 = add i32 %39, 1
  %328 = icmp ugt i32 %327, 1
  br i1 %328, label %329, label %367

; <label>:329:                                    ; preds = %325
  %330 = call i32 @close(i32 %39) #11
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %367, label %332

; <label>:332:                                    ; preds = %329
  %333 = tail call i32* @__errno_location() #1
  %334 = load i32, i32* %333, align 4
  %335 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %336 = call i8* @quotearg_style(i32 4, i8* %326) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %334, i8* %335, i8* %336, i32 %39) #11
  br label %367

; <label>:337:                                    ; preds = %310, %307, %303, %264, %247
  %338 = zext i1 %1 to i32
  %339 = select i1 %37, i32 -1, i32 %338
  store i32 %39, i32* %40, align 8
  %340 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 1
  store i64 0, i64* %340, align 8
  %341 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0
  %342 = bitcast i64* %341 to <2 x i64>*
  %343 = load <2 x i64>, <2 x i64>* %342, align 8
  %344 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 2, i32 0
  %345 = bitcast i64* %344 to <2 x i64>*
  store <2 x i64> %343, <2 x i64>* %345, align 8
  %346 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 3
  %347 = bitcast %struct.stat* %3 to <2 x i64>*
  %348 = load <2 x i64>, <2 x i64>* %347, align 16
  %349 = bitcast i64* %346 to <2 x i64>*
  store <2 x i64> %348, <2 x i64>* %349, align 8
  %350 = load i32, i32* %118, align 8
  %351 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 5
  store i32 %350, i32* %351, align 8
  %352 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 11
  store i32 %339, i32* %352, align 8
  %353 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 15
  store i64 0, i64* %353, align 8
  %354 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 6
  store i8 0, i8* %354, align 4
  %355 = load i8*, i8** %5, align 8
  %356 = load i8, i8* %355, align 1
  %357 = icmp eq i8 %356, 45
  br i1 %357, label %358, label %364

; <label>:358:                                    ; preds = %337
  %359 = getelementptr inbounds i8, i8* %355, i64 1
  %360 = load i8, i8* %359, align 1
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %362, label %364

; <label>:362:                                    ; preds = %358
  %363 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  br label %364

; <label>:364:                                    ; preds = %337, %358, %362
  %365 = phi i8* [ %363, %362 ], [ %355, %337 ], [ %355, %358 ]
  %366 = call fastcc i64 @xlseek(i32 %39, i64 0, i32 0, i8* %365)
  br label %367

; <label>:367:                                    ; preds = %332, %329, %325, %231, %364
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @check_fspec(%struct.File_spec*, %struct.File_spec** nocapture) unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %4) #11
  %5 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 9
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %97, label %8

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 45
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds i8, i8* %10, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i64 0, i64 0), i32 5) #11
  %19 = load i32, i32* %5, align 8
  br label %20

; <label>:20:                                     ; preds = %8, %13, %17
  %21 = phi i32 [ %19, %17 ], [ %6, %8 ], [ %6, %13 ]
  %22 = phi i8* [ %18, %17 ], [ %10, %8 ], [ %10, %13 ]
  %23 = call i32 @__fxstat(i32 1, i32 %21, %struct.stat* nonnull %3) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %40, label %25

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 10
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 8
  %30 = add i32 %29, 1
  %31 = icmp ugt i32 %30, 1
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %25
  %33 = call i32 @close(i32 %29) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %26, align 4
  %37 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i64 0, i64 0), i32 5) #11
  %38 = call i8* @quotearg_style(i32 4, i8* %22) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %36, i8* %37, i8* %38, i32 %29) #11
  br label %39

; <label>:39:                                     ; preds = %25, %32, %35
  store i32 -1, i32* %5, align 8
  br label %97

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 61440
  %44 = icmp eq i32 %43, 32768
  br i1 %44, label %45, label %76

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %56

; <label>:51:                                     ; preds = %45
  %52 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.114, i64 0, i64 0), i32 5) #11
  %53 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %22) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %53) #11
  %54 = load i32, i32* %5, align 8
  %55 = call fastcc i64 @xlseek(i32 %54, i64 0, i32 0, i8* %22)
  store i64 0, i64* %48, align 8
  br label %76

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %76

; <label>:62:                                     ; preds = %56
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 2, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, %64
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %62
  %69 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 2, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 12, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %97, label %76

; <label>:76:                                     ; preds = %40, %62, %56, %68, %51
  %77 = load i1, i1* @print_headers, align 1
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %76
  %79 = load %struct.File_spec*, %struct.File_spec** %1, align 8
  %80 = icmp ne %struct.File_spec* %79, %0
  br label %81

; <label>:81:                                     ; preds = %78, %76
  %82 = phi i1 [ false, %76 ], [ %80, %78 ]
  %83 = load i32, i32* %5, align 8
  %84 = call fastcc i64 @dump_remainder(i1 zeroext %82, i8* %22, i32 %83, i64 -1)
  %85 = getelementptr inbounds %struct.File_spec, %struct.File_spec* %0, i64 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = icmp eq i64 %84, 0
  br i1 %88, label %97, label %89

; <label>:89:                                     ; preds = %81
  store %struct.File_spec* %0, %struct.File_spec** %1, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = call i32 @fflush_unlocked(%struct._IO_FILE* %90) #11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

; <label>:93:                                     ; preds = %89
  %94 = tail call i32* @__errno_location() #1
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %95, i8* %96) #11
  unreachable

; <label>:97:                                     ; preds = %81, %89, %68, %2, %39
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11
  ret void
}

declare i64 @__fdelt_chk(i64) local_unnamed_addr #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timespec*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @inotify_rm_watch(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fstatfs(i32, %struct.statfs*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #11
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

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.28, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.29, i64 0, i64 0), i32 5) #11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11
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
  %22 = tail call i8* @quote(i8* nonnull %11) #11
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.30, i64 0, i64 0), i8* %22) #11
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #11
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.31, i64 0, i64 0), i8* %26) #11
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
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11
  br label %46

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %45, i8** %37, align 8
  store i8 10, i8* %38, align 1
  br label %46

; <label>:46:                                     ; preds = %42, %44
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 {
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #14
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.28, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #11
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
define double @c_strtod(i8*, i8**) #6 {
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %4 = icmp eq %struct.__locale_struct* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), %struct.__locale_struct* null) #11
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8
  br label %7

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8
  %9 = icmp eq %struct.__locale_struct* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8
  br label %15

; <label>:13:                                     ; preds = %7
  %14 = tail call double @strtod_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11
  br label %15

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi double [ %14, %13 ], [ 0.000000e+00, %10 ], [ 0.000000e+00, %12 ]
  ret double %16
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare double @strtod_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.96, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.97, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
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
  %22 = tail call noalias i8* @malloc(i64 %21) #11
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

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
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.117, i64 0, i64 0), i64 %4) #11
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.118, i64 0, i64 0), i64 %6) #11
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.119, i64 0, i64 0), i64 %8, double %79) #11
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.120, i64 0, i64 0), i64 %73) #11
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
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
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #11
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
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
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #11
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
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #11
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
  %10 = tail call noalias i8* @malloc(i64 80) #11
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
  %91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #11
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
  tail call void @free(i8* nonnull %10) #11
  br label %110

; <label>:110:                                    ; preds = %5, %109, %94
  %111 = phi %struct.hash_table* [ null, %109 ], [ %11, %94 ], [ null, %5 ]
  ret %struct.hash_table* %111
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @raw_hasher(i8*, i64) #12 {
  %3 = ptrtoint i8* %0 to i64
  %4 = lshr i64 %3, 3
  %5 = shl i64 %3, 61
  %6 = or i64 %5, %4
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #12 {
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
  tail call void %26(i8* %30) #11
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
  tail call void %42(i8* %45) #11
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
  tail call void %25(i8* %20) #11
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
  tail call void %34(i8* %33) #11
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
  tail call void @free(i8* %62) #11
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
  tail call void @free(i8* %80) #11
  %83 = icmp eq %struct.hash_entry* %82, null
  br i1 %83, label %84, label %78

; <label>:84:                                     ; preds = %78
  br label %85

; <label>:85:                                     ; preds = %84, %73
  %86 = bitcast %struct.hash_table* %0 to i8**
  %87 = load i8*, i8** %86, align 8
  tail call void @free(i8* %87) #11
  %88 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* %88) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.hash_table, align 16
  %4 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #11
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
  %56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #11
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
  tail call void @free(i8* %84) #11
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
  %118 = tail call i64 %117(i8* %116, i64 %113) #11
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
  tail call void @free(i8* %150) #11
  br label %152

; <label>:151:                                    ; preds = %45
  br label %152

; <label>:152:                                    ; preds = %151, %17, %48, %10, %55, %51, %149, %82
  %153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
  call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #11
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
  %34 = tail call i64 %33(i8* %32, i64 %29) #11
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
  %63 = tail call i64 %61(i8* %59, i64 %62) #11
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
  %80 = tail call noalias i8* @malloc(i64 16) #11
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
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #11
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
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #11
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
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #11
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
  %118 = tail call i64 %116(i8* nonnull %1, i64 %117) #11
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
  %133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #11
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
  %149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #11
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
  %179 = tail call noalias i8* @malloc(i64 16) #11
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #11
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #11
  ret i8* %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
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
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #11
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #11
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
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #11
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
  tail call void @free(i8* %148) #11
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
define i8* @offtostr(i64, i8*) local_unnamed_addr #6 {
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

; Function Attrs: nounwind sspstrong uwtable
define i32 @posix2_version() local_unnamed_addr #6 {
  %1 = alloca i8*, align 8
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.135, i64 0, i64 0)) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %14, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #11
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #11
  %10 = load i8*, i8** %1, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i64 %9, i64 200809
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11
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

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.140, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.141, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.142, i64 0, i64 0), i64 3) #14
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.153, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.154, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.155, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.155, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.155, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.154, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.154, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.154, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.155, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.156, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.157, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.158, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.159, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.155, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.154, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.177, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.178, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.179, i64 0, i64 0), i32 5) #11
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
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.180, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.181, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.182, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.183, i64 0, i64 0), i32 5) #11
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.184, i64 0, i64 0), i32 5) #11
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.185, i64 0, i64 0), i32 5) #11
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.186, i64 0, i64 0), i32 5) #11
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.187, i64 0, i64 0), i32 5) #11
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.188, i64 0, i64 0), i32 5) #11
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.189, i64 0, i64 0), i32 5) #11
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.192, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.193, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.194, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.195, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.196, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.197, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
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
  %8 = tail call noalias i8* @malloc(i64 %7) #11
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
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
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
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #13 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
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
  tail call void @xalloc_die() #15
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
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
  %3 = tail call noalias i8* @malloc(i64 %1) #11
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
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.208, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.209, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #15
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
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.210, i64 0, i64 0), i8* %5, i8* %33) #11
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
define i32 @xnanosleep(double) local_unnamed_addr #6 {
  %2 = alloca %struct.timespec, align 8
  %3 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %3) #11
  %4 = tail call { i64, i64 } @dtotimespec(double %0) #1
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %6 = extractvalue { i64, i64 } %4, 0
  store i64 %6, i64* %5, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %8 = extractvalue { i64, i64 } %4, 1
  store i64 %8, i64* %7, align 8
  %9 = tail call i32* @__errno_location() #1
  store i32 0, i32* %9, align 4
  %10 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #11
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
  %16 = call i32 @rpl_nanosleep(%struct.timespec* nonnull %2, %struct.timespec* null) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %13

; <label>:18:                                     ; preds = %15, %13
  %19 = phi i32 [ 0, %15 ], [ -1, %13 ]
  br label %20

; <label>:20:                                     ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #11
  ret i32 %21
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @xstrtod(i8*, i8**, double* nocapture, double (i8*, i8**)* nocapture) local_unnamed_addr #6 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #11
  %7 = tail call i32* @__errno_location() #1
  store i32 0, i32* %7, align 4
  %8 = call double %3(i8* %0, i8** nonnull %5) #11
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, %0
  %11 = ptrtoint i8* %9 to i64
  br i1 %10, label %22, label %12

; <label>:12:                                     ; preds = %4
  %13 = icmp eq i8** %1, null
  br i1 %13, label %14, label %17

; <label>:14:                                     ; preds = %12
  %15 = load i8, i8* %9, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

; <label>:17:                                     ; preds = %14, %12
  %18 = fcmp une double %8, 0.000000e+00
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %17
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 34
  br label %22

; <label>:22:                                     ; preds = %19, %4, %17
  %23 = phi i1 [ true, %17 ], [ false, %4 ], [ %21, %19 ]
  %24 = icmp eq i8** %1, null
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i8** %1 to i64*
  store i64 %11, i64* %26, align 8
  br label %27

; <label>:27:                                     ; preds = %14, %22, %25
  %28 = phi i1 [ %23, %22 ], [ %23, %25 ], [ false, %14 ]
  store double %8, double* %2, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #11
  ret i1 %28
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.219, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.220, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
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

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

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
define i32 @rpl_nanosleep(%struct.timespec* nocapture nonnull readonly, %struct.timespec*) local_unnamed_addr #6 {
  %3 = alloca %struct.timespec, align 8
  %4 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ugt i64 %5, 999999999
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = tail call i32* @__errno_location() #1
  store i32 22, i32* %8, align 4
  br label %33

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %12) #11
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  br label %15

; <label>:15:                                     ; preds = %19, %9
  %16 = phi i64 [ %5, %9 ], [ 0, %19 ]
  %17 = phi i64 [ %11, %9 ], [ %21, %19 ]
  store i64 %16, i64* %13, align 8
  %18 = icmp sgt i64 %17, 2073600
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %15
  store i64 2073600, i64* %14, align 8
  %20 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #11
  %21 = add nsw i64 %17, -2073600
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %15, label %23

; <label>:23:                                     ; preds = %19
  %24 = icmp eq %struct.timespec* %1, null
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, %21
  store i64 %28, i64* %26, align 8
  br label %31

; <label>:29:                                     ; preds = %15
  store i64 %17, i64* %14, align 8
  %30 = call i32 @nanosleep(%struct.timespec* nonnull %3, %struct.timespec* %1) #11
  br label %31

; <label>:31:                                     ; preds = %25, %23, %29
  %32 = phi i32 [ %30, %29 ], [ %20, %23 ], [ %20, %25 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %12) #11
  br label %33

; <label>:33:                                     ; preds = %31, %7
  %34 = phi i32 [ -1, %7 ], [ %32, %31 ]
  ret i32 %34
}

declare i32 @nanosleep(%struct.timespec*, %struct.timespec*) local_unnamed_addr #3

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

; Function Attrs: nounwind readnone sspstrong uwtable
define { i64, i64 } @dtotimespec(double) local_unnamed_addr #12 {
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.235, i64 0, i64 0)) #11
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
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.238, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.239, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.240, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.241, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.241, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.242, i64 0, i64 0)) #11
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.243, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.238, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.238, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.238, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.238, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.244, i64 0, i64 0), i8* %158
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

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11
  ret i32 %2
}

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
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }
