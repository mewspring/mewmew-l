; ModuleID = 'coreutils-8.27/src/chmod.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%struct.timespec = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i64, i64, i32 (%struct._ftsent**, %struct._ftsent**)*, i32, %struct.hash_table*, %union.anon, %struct.I_ring }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, %struct.__dirstream*, i64, i8*, i8*, i8*, i32, i32, i64, %struct.FTS*, i64, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.__dirstream = type opaque
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%union.anon = type { %struct.hash_table* }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.__mbstate_t = type { i32, %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.cycle_check_state = type { %struct.timespec, i64, i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.LCO_ent = type { i64, i8 }
%struct.Active_dir = type { i64, i64, %struct._ftsent* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [135 x i8] c"Usage: %s [OPTION]... MODE[,MODE]... FILE...\0A  or:  %s [OPTION]... OCTAL-MODE FILE...\0A  or:  %s [OPTION]... --reference=RFILE FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"Change the mode of each FILE to MODE.\0AWith --reference, change the mode of each FILE to that of RFILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [201 x i8] c"  -c, --changes          like verbose but report only when a change is made\0A  -f, --silent, --quiet  suppress most error messages\0A  -v, --verbose          output a diagnostic for every file processed\0A\00", align 1
@.str.4 = private unnamed_addr constant [128 x i8] c"      --no-preserve-root  do not treat '/' specially (the default)\0A      --preserve-root    fail to operate recursively on '/'\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"      --reference=RFILE  use RFILE's mode instead of MODE values\0A\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"  -R, --recursive        change files and directories recursively\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"\0AEach MODE is of the form '[ugoa]*([-+=]([rwxXst]*|[ugo]))+|[-+=][0-7]+'.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@diagnose_surprises = internal unnamed_addr global i1 false, align 1
@force_silent = internal unnamed_addr global i1 false, align 1
@recurse = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"Rcfvr::w::x::X::s::t::u::g::o::a::,::+::=::0::1::2::3::4::5::6::7::\00", align 1
@long_options = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optind = external local_unnamed_addr global i32, align 4
@optarg = external local_unnamed_addr global i8*, align 8
@verbosity = internal unnamed_addr global i32 2, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"cannot combine mode and --reference options\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@change = internal unnamed_addr global %struct.mode_change* null, align 8
@.str.21 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"invalid mode: %s\00", align 1
@umask_value = internal unnamed_addr global i32 0, align 4
@main.dev_ino_buf = internal global %struct.timespec zeroinitializer, align 8
@root_dev_ino = internal unnamed_addr global %struct.timespec* null, align 8
@.str.23 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"cannot operate on dangling symlink %s\00", align 1
@.str.55 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.56 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"changing permissions of %s\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"getting new attributes of %s\00", align 1
@.str.62 = private unnamed_addr constant [56 x i8] c"neither symbolic link %s nor referent has been changed\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"mode of %s retained as %04lo (%s)\0A\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"mode of %s changed from %04lo (%s) to %04lo (%s)\0A\00", align 1
@.str.64 = private unnamed_addr constant [59 x i8] c"failed to change mode of %s from %04lo (%s) to %04lo (%s)\0A\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"%s: new permissions are %s, not %s\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@switch.table = private unnamed_addr constant [12 x i8] c"pc?d?b?-?l?s"
@program_name = local_unnamed_addr global i8* null, align 8
@.str.66 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.67 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.68 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.70, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.72, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.73, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.78, i32 0, i32 0), i8* null], align 16
@.str.69 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.70 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.71 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.72 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.73 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.74 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.75 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.76 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.77 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.78 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.79 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.80 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.81 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.82 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.83 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.84 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.85 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.98 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.102 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.115 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.116 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.117 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.118 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.119 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.120 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.133 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"errno != EINVAL\00", align 1
@.str.1.138 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.150 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@switch.table.151 = private unnamed_addr constant [12 x i32] [i32 4096, i32 8192, i32 0, i32 16384, i32 0, i32 24576, i32 0, i32 32768, i32 0, i32 40960, i32 0, i32 49152]
@.str.164 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.165 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@.str.1.170 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.171 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.172 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.173 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.174 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.195 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.196 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.197 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.198 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.199 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.200 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.201 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #10
  br label %51

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([135 x i8], [135 x i8]* @.str.1, i64 0, i64 0), i32 5) #10
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #10
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 5) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.3, i64 0, i64 0), i32 5) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.4, i64 0, i64 0), i32 5) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #10
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 5) #10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #10
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 5) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #10
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 5) #10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #10
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 5) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #10
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 5) #10
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #10
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 5) #10
  %37 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0)) #10
  %38 = tail call i8* @setlocale(i32 5, i8* null) #10
  %39 = icmp eq i8* %38, null
  br i1 %39, label %46, label %40

; <label>:40:                                     ; preds = %8
  %41 = tail call i32 @strncmp(i8* nonnull %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i64 3) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %40
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.35, i64 0, i64 0), i32 5) #10
  %45 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10
  br label %46

; <label>:46:                                     ; preds = %8, %40, %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i32 5) #10
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #10
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 5) #10
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0)) #10
  br label %51

; <label>:51:                                     ; preds = %46, %3
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
  %3 = alloca [12 x i8], align 1
  %4 = alloca [12 x i8], align 1
  %5 = alloca %struct.stat, align 8
  %6 = alloca [12 x i8], align 1
  %7 = alloca [12 x i8], align 1
  %8 = alloca i64, align 8
  %9 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %9) #10
  store i64 0, i64* %8, align 8
  %10 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %10) #10
  %11 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #10
  %12 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #10
  %13 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #10
  %14 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10
  store i1 false, i1* @diagnose_surprises, align 1
  store i1 false, i1* @force_silent, align 1
  store i1 false, i1* @recurse, align 1
  br label %15

; <label>:15:                                     ; preds = %49, %2
  %16 = phi i8* [ null, %2 ], [ %50, %49 ]
  %17 = phi i8 [ 0, %2 ], [ %51, %49 ]
  %18 = phi i64 [ 0, %2 ], [ %52, %49 ]
  %19 = phi i8* [ null, %2 ], [ %53, %49 ]
  %20 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10
  switch i32 %20, label %58 [
    i32 -1, label %59
    i32 114, label %21
    i32 119, label %21
    i32 120, label %21
    i32 88, label %21
    i32 115, label %21
    i32 116, label %21
    i32 117, label %21
    i32 103, label %21
    i32 111, label %21
    i32 97, label %21
    i32 44, label %21
    i32 43, label %21
    i32 61, label %21
    i32 48, label %21
    i32 49, label %21
    i32 50, label %21
    i32 51, label %21
    i32 52, label %21
    i32 53, label %21
    i32 54, label %21
    i32 55, label %21
    i32 128, label %49
    i32 129, label %42
    i32 130, label %43
    i32 82, label %45
    i32 99, label %46
    i32 102, label %47
    i32 118, label %48
    i32 -130, label %54
    i32 -131, label %55
  ]

; <label>:21:                                     ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  %22 = load i32, i32* @optind, align 4
  %23 = add nsw i32 %22, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26) #14
  %28 = icmp ne i64 %18, 0
  %29 = zext i1 %28 to i64
  %30 = add i64 %29, %18
  %31 = add i64 %27, %30
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, %31
  br i1 %33, label %37, label %34

; <label>:34:                                     ; preds = %21
  %35 = add i64 %31, 1
  store i64 %35, i64* %8, align 8
  %36 = call i8* @x2realloc(i8* %19, i64* nonnull %8) #10
  br label %37

; <label>:37:                                     ; preds = %21, %34
  %38 = phi i8* [ %36, %34 ], [ %19, %21 ]
  %39 = getelementptr inbounds i8, i8* %38, i64 %18
  store i8 44, i8* %39, align 1
  %40 = getelementptr inbounds i8, i8* %38, i64 %30
  %41 = add i64 %27, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %26, i64 %41, i32 1, i1 false)
  store i1 true, i1* @diagnose_surprises, align 1
  br label %49

; <label>:42:                                     ; preds = %15
  br label %49

; <label>:43:                                     ; preds = %15
  %44 = load i8*, i8** @optarg, align 8
  br label %49

; <label>:45:                                     ; preds = %15
  store i1 true, i1* @recurse, align 1
  br label %49

; <label>:46:                                     ; preds = %15
  store i32 1, i32* @verbosity, align 4
  br label %49

; <label>:47:                                     ; preds = %15
  store i1 true, i1* @force_silent, align 1
  br label %49

; <label>:48:                                     ; preds = %15
  store i32 0, i32* @verbosity, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %47, %46, %45, %43, %42, %37, %15
  %50 = phi i8* [ %16, %48 ], [ %16, %47 ], [ %16, %46 ], [ %16, %45 ], [ %44, %43 ], [ %16, %42 ], [ %16, %37 ], [ %16, %15 ]
  %51 = phi i8 [ %17, %48 ], [ %17, %47 ], [ %17, %46 ], [ %17, %45 ], [ %17, %43 ], [ 1, %42 ], [ %17, %37 ], [ 0, %15 ]
  %52 = phi i64 [ %18, %48 ], [ %18, %47 ], [ %18, %46 ], [ %18, %45 ], [ %18, %43 ], [ %18, %42 ], [ %31, %37 ], [ %18, %15 ]
  %53 = phi i8* [ %19, %48 ], [ %19, %47 ], [ %19, %46 ], [ %19, %45 ], [ %19, %43 ], [ %19, %42 ], [ %38, %37 ], [ %19, %15 ]
  br label %15

; <label>:54:                                     ; preds = %15
  call void @usage(i32 0) #16
  unreachable

; <label>:55:                                     ; preds = %15
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* null) #10
  call void @exit(i32 0) #15
  unreachable

; <label>:58:                                     ; preds = %15
  call void @usage(i32 1) #16
  unreachable

; <label>:59:                                     ; preds = %15
  %60 = icmp ne i8* %16, null
  %61 = icmp ne i8* %19, null
  br i1 %60, label %62, label %65

; <label>:62:                                     ; preds = %59
  br i1 %61, label %63, label %72

; <label>:63:                                     ; preds = %62
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %64) #10
  call void @usage(i32 1) #16
  unreachable

; <label>:65:                                     ; preds = %59
  br i1 %61, label %72, label %66

; <label>:66:                                     ; preds = %65
  %67 = load i32, i32* @optind, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @optind, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8*, i8** %1, i64 %69
  %71 = load i8*, i8** %70, align 8
  br label %72

; <label>:72:                                     ; preds = %65, %66, %62
  %73 = phi i8* [ null, %62 ], [ %19, %65 ], [ %71, %66 ]
  %74 = load i32, i32* @optind, align 4
  %75 = icmp slt i32 %74, %0
  br i1 %75, label %94, label %76

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i8* %73, null
  br i1 %77, label %84, label %78

; <label>:78:                                     ; preds = %76
  %79 = add nsw i32 %74, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %1, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %73, %82
  br i1 %83, label %86, label %84

; <label>:84:                                     ; preds = %78, %76
  %85 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %85) #10
  br label %93

; <label>:86:                                     ; preds = %78
  %87 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 5) #10
  %88 = add nsw i32 %0, -1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %1, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @quote(i8* %91) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %87, i8* %92) #10
  br label %93

; <label>:93:                                     ; preds = %86, %84
  call void @usage(i32 1) #16
  unreachable

; <label>:94:                                     ; preds = %72
  br i1 %60, label %95, label %103

; <label>:95:                                     ; preds = %94
  %96 = call %struct.mode_change* @mode_create_from_ref(i8* nonnull %16) #10
  store %struct.mode_change* %96, %struct.mode_change** @change, align 8
  %97 = icmp eq %struct.mode_change* %96, null
  br i1 %97, label %98, label %111

; <label>:98:                                     ; preds = %95
  %99 = tail call i32* @__errno_location() #1
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %102 = call i8* @quotearg_style(i32 4, i8* nonnull %16) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %100, i8* %101, i8* %102) #10
  unreachable

; <label>:103:                                    ; preds = %94
  %104 = call %struct.mode_change* @mode_compile(i8* %73) #10
  store %struct.mode_change* %104, %struct.mode_change** @change, align 8
  %105 = icmp eq %struct.mode_change* %104, null
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %103
  %107 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 5) #10
  %108 = call i8* @quote(i8* %73) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %107, i8* %108) #10
  call void @usage(i32 1) #16
  unreachable

; <label>:109:                                    ; preds = %103
  %110 = call i32 @umask(i32 0) #10
  store i32 %110, i32* @umask_value, align 4
  br label %111

; <label>:111:                                    ; preds = %95, %109
  %112 = load i1, i1* @recurse, align 1
  %113 = xor i1 %112, true
  %114 = icmp eq i8 %17, 0
  %115 = or i1 %114, %113
  br i1 %115, label %124, label %116

; <label>:116:                                    ; preds = %111
  %117 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull @main.dev_ino_buf) #10
  store %struct.timespec* %117, %struct.timespec** @root_dev_ino, align 8
  %118 = icmp eq %struct.timespec* %117, null
  br i1 %118, label %119, label %125

; <label>:119:                                    ; preds = %116
  %120 = tail call i32* @__errno_location() #1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i32 5) #10
  %123 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %121, i8* %122, i8* %123) #10
  unreachable

; <label>:124:                                    ; preds = %111
  store %struct.timespec* null, %struct.timespec** @root_dev_ino, align 8
  br label %125

; <label>:125:                                    ; preds = %116, %124
  %126 = load i32, i32* @optind, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %1, i64 %127
  %129 = call %struct.FTS* @xfts_open(i8** %128, i32 1041, i32 (%struct._ftsent**, %struct._ftsent**)* null) #10
  %130 = call %struct._ftsent* @fts_read(%struct.FTS* %129) #10
  %131 = icmp eq %struct._ftsent* %130, null
  br i1 %131, label %149, label %132

; <label>:132:                                    ; preds = %125
  %133 = getelementptr inbounds %struct.FTS, %struct.FTS* %129, i64 0, i32 6
  %134 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %135 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 0
  %136 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 10
  %137 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 10
  %138 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 1
  %139 = getelementptr inbounds [12 x i8], [12 x i8]* %7, i64 0, i64 1
  %140 = bitcast %struct.stat* %5 to i8*
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 3
  %142 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %143 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %144 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 10
  %145 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 10
  %146 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 1
  %147 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 1
  br label %158

; <label>:148:                                    ; preds = %347
  br label %149

; <label>:149:                                    ; preds = %148, %125
  %150 = phi i8 [ 1, %125 ], [ %350, %148 ]
  %151 = tail call i32* @__errno_location() #1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %353, label %154

; <label>:154:                                    ; preds = %149
  %155 = load i1, i1* @force_silent, align 1
  br i1 %155, label %353, label %156

; <label>:156:                                    ; preds = %154
  %157 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %152, i8* %157) #10
  br label %353

; <label>:158:                                    ; preds = %347, %132
  %159 = phi %struct._ftsent* [ %130, %132 ], [ %351, %347 ]
  %160 = phi i8 [ 1, %132 ], [ %350, %347 ]
  %161 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 7
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 6
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 15
  %166 = load i16, i16* %165, align 8
  switch i16 %166, label %207 [
    i16 6, label %347
    i16 10, label %167
    i16 7, label %184
    i16 4, label %190
    i16 13, label %197
    i16 2, label %202
  ]

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 12
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %177

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %177

; <label>:175:                                    ; preds = %171
  store i64 1, i64* %172, align 8
  %176 = call i32 @fts_set(%struct.FTS* %129, %struct._ftsent* nonnull %159, i32 1) #10
  br label %347

; <label>:177:                                    ; preds = %171, %167
  %178 = load i1, i1* @force_silent, align 1
  br i1 %178, label %260, label %179

; <label>:179:                                    ; preds = %177
  %180 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i32 5) #10
  %183 = call i8* @quotearg_style(i32 4, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %181, i8* %182, i8* %183) #10
  br label %260

; <label>:184:                                    ; preds = %158
  %185 = load i1, i1* @force_silent, align 1
  br i1 %185, label %260, label %186

; <label>:186:                                    ; preds = %184
  %187 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8* %189) #10
  br label %260

; <label>:190:                                    ; preds = %158
  %191 = load i1, i1* @force_silent, align 1
  br i1 %191, label %260, label %192

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i64 0, i64 0), i32 5) #10
  %196 = call i8* @quotearg_style(i32 4, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %194, i8* %195, i8* %196) #10
  br label %260

; <label>:197:                                    ; preds = %158
  %198 = load i1, i1* @force_silent, align 1
  br i1 %198, label %260, label %199

; <label>:199:                                    ; preds = %197
  %200 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i64 0, i64 0), i32 5) #10
  %201 = call i8* @quotearg_style(i32 4, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %200, i8* %201) #10
  br label %260

; <label>:202:                                    ; preds = %158
  %203 = call zeroext i1 @cycle_warning_required(%struct.FTS* %129, %struct._ftsent* nonnull %159) #14
  br i1 %203, label %204, label %207

; <label>:204:                                    ; preds = %202
  %205 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.55, i64 0, i64 0), i32 5) #10
  %206 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %205, i8* %206) #10
  br label %347

; <label>:207:                                    ; preds = %202, %158
  %208 = load %struct.timespec*, %struct.timespec** @root_dev_ino, align 8
  %209 = icmp eq %struct.timespec* %208, null
  br i1 %209, label %240, label %210

; <label>:210:                                    ; preds = %207
  %211 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 18, i64 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.timespec, %struct.timespec* %208, i64 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %212, %214
  br i1 %215, label %216, label %240

; <label>:216:                                    ; preds = %210
  %217 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 18, i64 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.timespec, %struct.timespec* %208, i64 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %218, %220
  br i1 %221, label %222, label %240

; <label>:222:                                    ; preds = %216
  %223 = load i8, i8* %162, align 1
  %224 = icmp eq i8 %223, 47
  br i1 %224, label %225, label %232

; <label>:225:                                    ; preds = %222
  %226 = getelementptr inbounds i8, i8* %162, i64 1
  %227 = load i8, i8* %226, align 1
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %232

; <label>:229:                                    ; preds = %225
  %230 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i64 0, i64 0), i32 5) #10
  %231 = call i8* @quotearg_style(i32 4, i8* nonnull %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %230, i8* %231) #10
  br label %236

; <label>:232:                                    ; preds = %225, %222
  %233 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i64 0, i64 0), i32 5) #10
  %234 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %162) #10
  %235 = call i8* @quotearg_n_style(i32 1, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0)) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %233, i8* %234, i8* %235) #10
  br label %236

; <label>:236:                                    ; preds = %232, %229
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.58, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %237) #10
  %238 = call i32 @fts_set(%struct.FTS* %129, %struct._ftsent* nonnull %159, i32 4) #10
  %239 = call %struct._ftsent* @fts_read(%struct.FTS* %129) #10
  br label %347

; <label>:240:                                    ; preds = %216, %210, %207
  %241 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %159, i64 0, i32 18, i64 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = and i32 %242, 61440
  %244 = icmp eq i32 %243, 16384
  %245 = load i32, i32* @umask_value, align 4
  %246 = load %struct.mode_change*, %struct.mode_change** @change, align 8
  %247 = call i32 @mode_adjust(i32 %242, i1 zeroext %244, i32 %245, %struct.mode_change* %246, i32* null) #10
  %248 = icmp eq i32 %243, 40960
  br i1 %248, label %260, label %249

; <label>:249:                                    ; preds = %240
  %250 = load i32, i32* %133, align 4
  %251 = call i32 @fchmodat(i32 %250, i8* %164, i32 %247, i32 0) #10
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %260, label %253

; <label>:253:                                    ; preds = %249
  %254 = load i1, i1* @force_silent, align 1
  br i1 %254, label %260, label %255

; <label>:255:                                    ; preds = %253
  %256 = tail call i32* @__errno_location() #1
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i32 5) #10
  %259 = call i8* @quotearg_style(i32 4, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %257, i8* %258, i8* %259) #10
  br label %260

; <label>:260:                                    ; preds = %255, %253, %249, %240, %199, %197, %192, %190, %186, %184, %179, %177
  %261 = phi i1 [ false, %240 ], [ true, %249 ], [ false, %255 ], [ false, %253 ], [ false, %197 ], [ false, %199 ], [ false, %190 ], [ false, %192 ], [ false, %184 ], [ false, %186 ], [ false, %177 ], [ false, %179 ]
  %262 = phi i8 [ 1, %240 ], [ 1, %249 ], [ 0, %255 ], [ 0, %253 ], [ 0, %197 ], [ 0, %199 ], [ 0, %190 ], [ 0, %192 ], [ 0, %184 ], [ 0, %186 ], [ 0, %177 ], [ 0, %179 ]
  %263 = phi i32 [ %247, %240 ], [ %247, %249 ], [ %247, %255 ], [ %247, %253 ], [ undef, %197 ], [ undef, %199 ], [ undef, %190 ], [ undef, %192 ], [ undef, %184 ], [ undef, %186 ], [ undef, %177 ], [ undef, %179 ]
  %264 = phi i32 [ %242, %240 ], [ %242, %249 ], [ %242, %255 ], [ %242, %253 ], [ undef, %197 ], [ undef, %199 ], [ undef, %190 ], [ undef, %192 ], [ undef, %184 ], [ undef, %186 ], [ undef, %177 ], [ undef, %179 ]
  %265 = load i32, i32* @verbosity, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %325, label %267

; <label>:267:                                    ; preds = %260
  br i1 %261, label %268, label %290

; <label>:268:                                    ; preds = %267
  %269 = and i32 %263, 3584
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %285, label %271

; <label>:271:                                    ; preds = %268
  %272 = load i32, i32* %133, align 4
  call void @llvm.lifetime.start(i64 144, i8* nonnull %140) #10
  %273 = call i32 @__fxstatat(i32 1, i32 %272, i8* nonnull %164, %struct.stat* nonnull %5, i32 0) #10
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %283, label %275

; <label>:275:                                    ; preds = %271
  %276 = load i1, i1* @force_silent, align 1
  br i1 %276, label %282, label %277

; <label>:277:                                    ; preds = %275
  %278 = tail call i32* @__errno_location() #1
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.61, i64 0, i64 0), i32 5) #10
  %281 = call i8* @quotearg_style(i32 4, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %279, i8* %280, i8* %281) #10
  br label %282

; <label>:282:                                    ; preds = %277, %275
  call void @llvm.lifetime.end(i64 144, i8* nonnull %140) #10
  br label %290

; <label>:283:                                    ; preds = %271
  %284 = load i32, i32* %141, align 8
  call void @llvm.lifetime.end(i64 144, i8* nonnull %140) #10
  br label %285

; <label>:285:                                    ; preds = %283, %268
  %286 = phi i32 [ %284, %283 ], [ %263, %268 ]
  %287 = xor i32 %286, %264
  %288 = and i32 %287, 4095
  %289 = icmp ne i32 %288, 0
  br label %290

; <label>:290:                                    ; preds = %285, %282, %267
  %291 = phi i1 [ false, %267 ], [ %289, %285 ], [ false, %282 ]
  %292 = load i32, i32* @verbosity, align 4
  %293 = icmp eq i32 %292, 0
  %294 = or i1 %291, %293
  br i1 %294, label %295, label %325

; <label>:295:                                    ; preds = %290
  %296 = icmp eq i8 %262, 0
  %297 = select i1 %291, i32 1, i32 3
  %298 = select i1 %261, i32 %297, i32 0
  %299 = select i1 %296, i32 2, i32 %298
  call void @llvm.lifetime.start(i64 12, i8* nonnull %142) #10
  call void @llvm.lifetime.start(i64 12, i8* nonnull %143) #10
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %305

; <label>:301:                                    ; preds = %295
  %302 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.62, i64 0, i64 0), i32 5) #10
  %303 = call i8* @quotearg_style(i32 4, i8* %162) #10
  %304 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %302, i8* %303) #10
  br label %324

; <label>:305:                                    ; preds = %295
  call void @strmode(i32 %263, i8* nonnull %142) #10
  store i8 0, i8* %144, align 1
  call void @strmode(i32 %264, i8* nonnull %143) #10
  store i8 0, i8* %145, align 1
  %306 = trunc i32 %299 to i2
  switch i2 %306, label %314 [
    i2 1, label %307
    i2 -2, label %315
    i2 -1, label %308
  ]

; <label>:307:                                    ; preds = %305
  br label %315

; <label>:308:                                    ; preds = %305
  %309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), i32 5) #10
  %310 = call i8* @quotearg_style(i32 4, i8* %162) #10
  %311 = and i32 %263, 4095
  %312 = zext i32 %311 to i64
  %313 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %309, i8* %310, i64 %312, i8* nonnull %147) #10
  br label %324

; <label>:314:                                    ; preds = %305
  call void @abort() #15
  unreachable

; <label>:315:                                    ; preds = %307, %305
  %316 = phi i8* [ getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i64 0, i64 0), %307 ], [ getelementptr inbounds ([59 x i8], [59 x i8]* @.str.64, i64 0, i64 0), %305 ]
  %317 = call i8* @dcgettext(i8* null, i8* nonnull %316, i32 5) #10
  %318 = call i8* @quotearg_style(i32 4, i8* %162) #10
  %319 = and i32 %264, 4095
  %320 = zext i32 %319 to i64
  %321 = and i32 %263, 4095
  %322 = zext i32 %321 to i64
  %323 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %317, i8* %318, i64 %320, i8* nonnull %146, i64 %322, i8* nonnull %147) #10
  br label %324

; <label>:324:                                    ; preds = %315, %308, %301
  call void @llvm.lifetime.end(i64 12, i8* nonnull %143) #10
  call void @llvm.lifetime.end(i64 12, i8* nonnull %142) #10
  br label %325

; <label>:325:                                    ; preds = %324, %290, %260
  br i1 %261, label %326, label %339

; <label>:326:                                    ; preds = %325
  %327 = load i1, i1* @diagnose_surprises, align 1
  br i1 %327, label %328, label %339

; <label>:328:                                    ; preds = %326
  %329 = and i32 %264, 61440
  %330 = icmp eq i32 %329, 16384
  %331 = load %struct.mode_change*, %struct.mode_change** @change, align 8
  %332 = call i32 @mode_adjust(i32 %264, i1 zeroext %330, i32 0, %struct.mode_change* %331, i32* null) #10
  %333 = xor i32 %332, -1
  %334 = and i32 %263, %333
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %339, label %336

; <label>:336:                                    ; preds = %328
  call void @llvm.lifetime.start(i64 12, i8* nonnull %134) #10
  call void @llvm.lifetime.start(i64 12, i8* nonnull %135) #10
  call void @strmode(i32 %263, i8* nonnull %134) #10
  call void @strmode(i32 %332, i8* nonnull %135) #10
  store i8 0, i8* %136, align 1
  store i8 0, i8* %137, align 1
  %337 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.60, i64 0, i64 0), i32 5) #10
  %338 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %162) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %337, i8* %338, i8* %138, i8* %139) #10
  call void @llvm.lifetime.end(i64 12, i8* nonnull %135) #10
  call void @llvm.lifetime.end(i64 12, i8* nonnull %134) #10
  br label %339

; <label>:339:                                    ; preds = %336, %328, %326, %325
  %340 = phi i8 [ %262, %326 ], [ %262, %325 ], [ 0, %336 ], [ %262, %328 ]
  %341 = load i1, i1* @recurse, align 1
  br i1 %341, label %344, label %342

; <label>:342:                                    ; preds = %339
  %343 = call i32 @fts_set(%struct.FTS* %129, %struct._ftsent* nonnull %159, i32 4) #10
  br label %344

; <label>:344:                                    ; preds = %342, %339
  %345 = and i8 %340, 1
  %346 = icmp ne i8 %345, 0
  br label %347

; <label>:347:                                    ; preds = %344, %236, %204, %175, %158
  %348 = phi i1 [ false, %236 ], [ %346, %344 ], [ false, %204 ], [ true, %175 ], [ true, %158 ]
  %349 = zext i1 %348 to i8
  %350 = and i8 %349, %160
  %351 = call %struct._ftsent* @fts_read(%struct.FTS* %129) #10
  %352 = icmp eq %struct._ftsent* %351, null
  br i1 %352, label %148, label %158

; <label>:353:                                    ; preds = %156, %154, %149
  %354 = phi i8 [ 0, %154 ], [ 0, %156 ], [ %150, %149 ]
  %355 = call i32 @fts_close(%struct.FTS* %129) #10
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %360, label %357

; <label>:357:                                    ; preds = %353
  %358 = load i32, i32* %151, align 4
  %359 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i32 5) #10
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %358, i8* %359) #10
  br label %360

; <label>:360:                                    ; preds = %353, %357
  %361 = phi i8 [ 0, %357 ], [ %354, %353 ]
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  %364 = zext i8 %363 to i32
  call void @llvm.lifetime.end(i64 8, i8* nonnull %9) #10
  ret i32 %364
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
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmodat(i32, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #10
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #10
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #10
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #10
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #10
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
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define void @strmode(i32, i8* nocapture) local_unnamed_addr #6 {
  %3 = and i32 %0, 61440
  %4 = add nsw i32 %3, -4096
  %5 = icmp ult i32 %4, 49152
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %2
  %7 = lshr exact i32 %4, 12
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* @switch.table, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  br label %11

; <label>:11:                                     ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 63, %2 ]
  store i8 %12, i8* %1, align 1
  %13 = and i32 %0, 256
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %14, i8 114, i8 45
  %16 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i32 %0 to i8
  %18 = ashr i8 %17, 7
  %19 = and i8 %18, 74
  %20 = add nuw i8 %19, 45
  %21 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %20, i8* %21, align 1
  %22 = and i32 %0, 2048
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %0, 64
  %25 = icmp ne i32 %24, 0
  %26 = lshr exact i32 %24, 1
  %27 = or i32 %26, 83
  %28 = select i1 %25, i32 120, i32 45
  %29 = select i1 %23, i32 %27, i32 %28
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %30, i8* %31, align 1
  %32 = and i32 %0, 32
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %33, i8 114, i8 45
  %35 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %34, i8* %35, align 1
  %36 = and i32 %0, 16
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %37, i8 119, i8 45
  %39 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %38, i8* %39, align 1
  %40 = and i32 %0, 1024
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %0, 8
  %43 = icmp ne i32 %42, 0
  %44 = shl nuw nsw i32 %42, 2
  %45 = or i32 %44, 83
  %46 = select i1 %43, i32 120, i32 45
  %47 = select i1 %41, i32 %45, i32 %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %48, i8* %49, align 1
  %50 = and i32 %0, 4
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %51, i8 114, i8 45
  %53 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %52, i8* %53, align 1
  %54 = and i32 %0, 2
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %55, i8 119, i8 45
  %57 = getelementptr inbounds i8, i8* %1, i64 8
  store i8 %56, i8* %57, align 1
  %58 = and i32 %0, 512
  %59 = icmp ne i32 %58, 0
  %60 = and i32 %0, 1
  %61 = icmp ne i32 %60, 0
  %62 = shl nuw nsw i32 %60, 5
  %63 = or i32 %62, 84
  %64 = select i1 %61, i32 120, i32 45
  %65 = select i1 %59, i32 %63, i32 %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, i8* %1, i64 9
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %1, i64 10
  store i8 32, i8* %68, align 1
  %69 = getelementptr inbounds i8, i8* %1, i64 11
  store i8 0, i8* %69, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @filemodestring(%struct.stat* nocapture readonly, i8* nocapture) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  tail call void @strmode(i32 %4, i8* %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_compile(i8*) local_unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1
  %3 = and i8 %2, -8
  %4 = icmp eq i8 %3, 48
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  br label %41

; <label>:6:                                      ; preds = %1
  br label %7

; <label>:7:                                      ; preds = %6, %17
  %8 = phi i8 [ %18, %17 ], [ %2, %6 ]
  %9 = phi i32 [ %15, %17 ], [ 0, %6 ]
  %10 = phi i8* [ %12, %17 ], [ %0, %6 ]
  %11 = shl i32 %9, 3
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = sext i8 %8 to i32
  %14 = add i32 %11, -48
  %15 = add i32 %14, %13
  %16 = icmp ugt i32 %15, 4095
  br i1 %16, label %158, label %17

; <label>:17:                                     ; preds = %7
  %18 = load i8, i8* %12, align 1
  %19 = and i8 %18, -8
  %20 = icmp eq i8 %19, 48
  br i1 %20, label %7, label %21

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i8 %18, 0
  br i1 %22, label %23, label %159

; <label>:23:                                     ; preds = %21
  %24 = ptrtoint i8* %12 to i64
  %25 = ptrtoint i8* %0 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 5
  %28 = and i32 %15, 3072
  %29 = or i32 %28, 1023
  %30 = select i1 %27, i32 %29, i32 4095
  %31 = tail call noalias i8* @xmalloc(i64 32) #10
  %32 = bitcast i8* %31 to %struct.mode_change*
  store i8 61, i8* %31, align 4
  %33 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 1, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %31, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 4095, i32* %35, align 4
  %36 = getelementptr inbounds i8, i8* %31, i64 8
  %37 = bitcast i8* %36 to i32*
  store i32 %15, i32* %37, align 4
  %38 = getelementptr inbounds i8, i8* %31, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %30, i32* %39, align 4
  %40 = getelementptr inbounds i8, i8* %31, i64 17
  store i8 0, i8* %40, align 1
  br label %159

; <label>:41:                                     ; preds = %5, %46
  %42 = phi i8 [ %50, %46 ], [ %2, %5 ]
  %43 = phi i8* [ %49, %46 ], [ %0, %5 ]
  %44 = phi i64 [ %48, %46 ], [ 1, %5 ]
  switch i8 %42, label %45 [
    i8 0, label %51
    i8 61, label %46
    i8 43, label %46
    i8 45, label %46
  ]

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %41, %41, %41, %45
  %47 = phi i64 [ 0, %45 ], [ 1, %41 ], [ 1, %41 ], [ 1, %41 ]
  %48 = add i64 %47, %44
  %49 = getelementptr inbounds i8, i8* %43, i64 1
  %50 = load i8, i8* %49, align 1
  br label %41

; <label>:51:                                     ; preds = %41
  %52 = icmp ugt i64 %44, 576460752303423487
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %51
  tail call void @xalloc_die() #15
  unreachable

; <label>:54:                                     ; preds = %51
  %55 = shl i64 %44, 4
  %56 = tail call noalias i8* @xmalloc(i64 %55) #10
  %57 = bitcast i8* %56 to %struct.mode_change*
  br label %58

; <label>:58:                                     ; preds = %150, %54
  %59 = phi i8* [ %0, %54 ], [ %151, %150 ]
  %60 = phi i64 [ 0, %54 ], [ %135, %150 ]
  br label %61

; <label>:61:                                     ; preds = %70, %58
  %62 = phi i8* [ %59, %58 ], [ %73, %70 ]
  %63 = phi i32 [ 0, %58 ], [ %72, %70 ]
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  switch i32 %65, label %156 [
    i32 117, label %67
    i32 103, label %70
    i32 111, label %68
    i32 97, label %69
    i32 61, label %66
    i32 43, label %66
    i32 45, label %66
  ]

; <label>:66:                                     ; preds = %61, %61, %61
  br label %74

; <label>:67:                                     ; preds = %61
  br label %70

; <label>:68:                                     ; preds = %61
  br label %70

; <label>:69:                                     ; preds = %61
  br label %70

; <label>:70:                                     ; preds = %61, %67, %68, %69
  %71 = phi i32 [ 2496, %67 ], [ 519, %68 ], [ 4095, %69 ], [ 1080, %61 ]
  %72 = or i32 %71, %63
  %73 = getelementptr inbounds i8, i8* %62, i64 1
  br label %61

; <label>:74:                                     ; preds = %149, %66
  %75 = phi i8 [ %64, %66 ], [ %148, %149 ]
  %76 = phi i8* [ %62, %66 ], [ %130, %149 ]
  %77 = phi i32 [ %63, %66 ], [ %131, %149 ]
  %78 = phi i64 [ %60, %66 ], [ %135, %149 ]
  %79 = getelementptr inbounds i8, i8* %76, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %83 [
    i32 48, label %82
    i32 49, label %82
    i32 50, label %82
    i32 51, label %82
    i32 52, label %82
    i32 53, label %82
    i32 54, label %82
    i32 55, label %82
    i32 117, label %101
    i32 103, label %103
    i32 111, label %105
  ]

; <label>:82:                                     ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %84

; <label>:83:                                     ; preds = %74
  br label %107

; <label>:84:                                     ; preds = %82, %94
  %85 = phi i8 [ %95, %94 ], [ %80, %82 ]
  %86 = phi i8* [ %89, %94 ], [ %79, %82 ]
  %87 = phi i32 [ %92, %94 ], [ 0, %82 ]
  %88 = shl i32 %87, 3
  %89 = getelementptr inbounds i8, i8* %86, i64 1
  %90 = sext i8 %85 to i32
  %91 = add i32 %88, -48
  %92 = add i32 %91, %90
  %93 = icmp ugt i32 %92, 4095
  br i1 %93, label %154, label %94

; <label>:94:                                     ; preds = %84
  %95 = load i8, i8* %89, align 1
  %96 = and i8 %95, -8
  %97 = icmp eq i8 %96, 48
  br i1 %97, label %84, label %98

; <label>:98:                                     ; preds = %94
  %99 = icmp eq i32 %77, 0
  br i1 %99, label %100, label %155

; <label>:100:                                    ; preds = %98
  switch i8 %95, label %155 [
    i8 0, label %129
    i8 44, label %129
  ]

; <label>:101:                                    ; preds = %74
  %102 = getelementptr inbounds i8, i8* %76, i64 2
  br label %129

; <label>:103:                                    ; preds = %74
  %104 = getelementptr inbounds i8, i8* %76, i64 2
  br label %129

; <label>:105:                                    ; preds = %74
  %106 = getelementptr inbounds i8, i8* %76, i64 2
  br label %129

; <label>:107:                                    ; preds = %83, %123
  %108 = phi i8 [ %127, %123 ], [ %80, %83 ]
  %109 = phi i8* [ %126, %123 ], [ %79, %83 ]
  %110 = phi i32 [ %124, %123 ], [ 0, %83 ]
  %111 = phi i8 [ %125, %123 ], [ 1, %83 ]
  %112 = sext i8 %108 to i32
  switch i32 %112, label %128 [
    i32 114, label %113
    i32 119, label %115
    i32 120, label %117
    i32 88, label %123
    i32 115, label %119
    i32 116, label %121
  ]

; <label>:113:                                    ; preds = %107
  %114 = or i32 %110, 292
  br label %123

; <label>:115:                                    ; preds = %107
  %116 = or i32 %110, 146
  br label %123

; <label>:117:                                    ; preds = %107
  %118 = or i32 %110, 73
  br label %123

; <label>:119:                                    ; preds = %107
  %120 = or i32 %110, 3072
  br label %123

; <label>:121:                                    ; preds = %107
  %122 = or i32 %110, 512
  br label %123

; <label>:123:                                    ; preds = %107, %113, %115, %117, %119, %121
  %124 = phi i32 [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %114, %113 ], [ %110, %107 ]
  %125 = phi i8 [ %111, %121 ], [ %111, %119 ], [ %111, %117 ], [ %111, %115 ], [ %111, %113 ], [ 2, %107 ]
  %126 = getelementptr inbounds i8, i8* %109, i64 1
  %127 = load i8, i8* %126, align 1
  br label %107

; <label>:128:                                    ; preds = %107
  br label %129

; <label>:129:                                    ; preds = %128, %100, %100, %105, %103, %101
  %130 = phi i8* [ %106, %105 ], [ %104, %103 ], [ %102, %101 ], [ %89, %100 ], [ %89, %100 ], [ %109, %128 ]
  %131 = phi i32 [ %77, %105 ], [ %77, %103 ], [ %77, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ %77, %128 ]
  %132 = phi i32 [ 7, %105 ], [ 56, %103 ], [ 448, %101 ], [ %92, %100 ], [ %92, %100 ], [ %110, %128 ]
  %133 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %101 ], [ 4095, %100 ], [ 4095, %100 ], [ 0, %128 ]
  %134 = phi i8 [ 3, %105 ], [ 3, %103 ], [ 3, %101 ], [ 1, %100 ], [ 1, %100 ], [ %111, %128 ]
  %135 = add i64 %78, 1
  %136 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 0
  store i8 %75, i8* %136, align 4
  %137 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 1
  store i8 %134, i8* %137, align 1
  %138 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 2
  store i32 %131, i32* %138, align 4
  %139 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 3
  store i32 %132, i32* %139, align 4
  %140 = icmp eq i32 %133, 0
  br i1 %140, label %141, label %145

; <label>:141:                                    ; preds = %129
  %142 = icmp eq i32 %131, 0
  %143 = select i1 %142, i32 -1, i32 %131
  %144 = and i32 %143, %132
  br label %145

; <label>:145:                                    ; preds = %129, %141
  %146 = phi i32 [ %133, %129 ], [ %144, %141 ]
  %147 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %78, i32 4
  store i32 %146, i32* %147, align 4
  %148 = load i8, i8* %130, align 1
  switch i8 %148, label %155 [
    i8 61, label %149
    i8 43, label %149
    i8 45, label %149
    i8 44, label %150
    i8 0, label %152
  ]

; <label>:149:                                    ; preds = %145, %145, %145
  br label %74

; <label>:150:                                    ; preds = %145
  %151 = getelementptr inbounds i8, i8* %130, i64 1
  br label %58

; <label>:152:                                    ; preds = %145
  %153 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %57, i64 %135, i32 1
  store i8 0, i8* %153, align 1
  br label %159

; <label>:154:                                    ; preds = %84
  br label %157

; <label>:155:                                    ; preds = %145, %100, %98
  br label %157

; <label>:156:                                    ; preds = %61
  br label %157

; <label>:157:                                    ; preds = %156, %155, %154
  tail call void @free(i8* %56) #10
  br label %159

; <label>:158:                                    ; preds = %7
  br label %159

; <label>:159:                                    ; preds = %158, %23, %21, %157, %152
  %160 = phi %struct.mode_change* [ null, %157 ], [ %57, %152 ], [ %32, %23 ], [ null, %21 ], [ null, %158 ]
  ret %struct.mode_change* %160
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.mode_change* @mode_create_from_ref(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #10
  %4 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call noalias i8* @xmalloc(i64 32) #10
  %10 = bitcast i8* %9 to %struct.mode_change*
  store i8 61, i8* %9, align 4
  %11 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %9, i64 4
  %13 = bitcast i8* %12 to i32*
  store i32 4095, i32* %13, align 4
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i32*
  store i32 %8, i32* %15, align 4
  %16 = getelementptr inbounds i8, i8* %9, i64 12
  %17 = bitcast i8* %16 to i32*
  store i32 4095, i32* %17, align 4
  %18 = getelementptr inbounds i8, i8* %9, i64 17
  store i8 0, i8* %18, align 1
  br label %19

; <label>:19:                                     ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #10
  ret %struct.mode_change* %20
}

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @mode_adjust(i32, i1 zeroext, i32, %struct.mode_change* nocapture readonly, i32*) local_unnamed_addr #6 {
  %6 = and i32 %0, 4095
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1
  %8 = load i8, i8* %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %83, label %10

; <label>:10:                                     ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = xor i32 %2, -1
  %13 = xor i32 %11, -1
  %14 = zext i1 %1 to i32
  br label %15

; <label>:15:                                     ; preds = %10, %75
  %16 = phi i8 [ %8, %10 ], [ %80, %75 ]
  %17 = phi %struct.mode_change* [ %3, %10 ], [ %78, %75 ]
  %18 = phi i32 [ %6, %10 ], [ %77, %75 ]
  %19 = phi i32 [ 0, %10 ], [ %76, %75 ]
  %20 = sext i8 %16 to i32
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %11, %25
  %27 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 3
  %28 = load i32, i32* %27, align 4
  switch i32 %20, label %49 [
    i32 2, label %43
    i32 3, label %29
  ]

; <label>:29:                                     ; preds = %15
  %30 = and i32 %28, %18
  %31 = and i32 %30, 292
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %32, i32 292, i32 0
  %34 = and i32 %30, 146
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %35, i32 146, i32 0
  %37 = and i32 %30, 73
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, i32 73, i32 0
  %40 = or i32 %36, %30
  %41 = or i32 %40, %33
  %42 = or i32 %41, %39
  br label %49

; <label>:43:                                     ; preds = %15
  %44 = and i32 %18, 73
  %45 = or i32 %44, %14
  %46 = icmp eq i32 %45, 0
  %47 = or i32 %28, 73
  %48 = select i1 %46, i32 %28, i32 %47
  br label %49

; <label>:49:                                     ; preds = %43, %15, %29
  %50 = phi i32 [ %28, %15 ], [ %42, %29 ], [ %48, %43 ]
  %51 = icmp ne i32 %22, 0
  %52 = select i1 %51, i32 %22, i32 %12
  %53 = or i32 %24, %13
  %54 = and i32 %52, %53
  %55 = and i32 %54, %50
  %56 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 0, i32 0
  %57 = load i8, i8* %56, align 4
  %58 = sext i8 %57 to i32
  switch i32 %58, label %75 [
    i32 61, label %59
    i32 43, label %68
    i32 45, label %71
  ]

; <label>:59:                                     ; preds = %49
  %60 = xor i32 %22, -1
  %61 = select i1 %51, i32 %60, i32 0
  %62 = or i32 %61, %26
  %63 = and i32 %62, 4095
  %64 = xor i32 %63, 4095
  %65 = or i32 %64, %19
  %66 = and i32 %62, %18
  %67 = or i32 %55, %66
  br label %75

; <label>:68:                                     ; preds = %49
  %69 = or i32 %55, %19
  %70 = or i32 %55, %18
  br label %75

; <label>:71:                                     ; preds = %49
  %72 = or i32 %55, %19
  %73 = xor i32 %55, -1
  %74 = and i32 %18, %73
  br label %75

; <label>:75:                                     ; preds = %49, %71, %68, %59
  %76 = phi i32 [ %19, %49 ], [ %72, %71 ], [ %69, %68 ], [ %65, %59 ]
  %77 = phi i32 [ %18, %49 ], [ %74, %71 ], [ %70, %68 ], [ %67, %59 ]
  %78 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1
  %79 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %17, i64 1, i32 1
  %80 = load i8, i8* %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %15

; <label>:82:                                     ; preds = %75
  br label %83

; <label>:83:                                     ; preds = %82, %5
  %84 = phi i32 [ 0, %5 ], [ %76, %82 ]
  %85 = phi i32 [ %6, %5 ], [ %77, %82 ]
  %86 = icmp eq i32* %4, null
  br i1 %86, label %88, label %87

; <label>:87:                                     ; preds = %83
  store i32 %84, i32* %4, align 4
  br label %88

; <label>:88:                                     ; preds = %83, %87
  ret i32 %85
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.66, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.67, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.68, i64 0, i64 0), i64 3) #14
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.79, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #10
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
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.82, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.83, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.84, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.85, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.81, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.80, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
  tail call void @abort() #15
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
define %struct.timespec* @get_root_dev_ino(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #10
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0), %struct.stat* nonnull %2) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %11, i64* %12, align 8
  br label %13

; <label>:13:                                     ; preds = %1, %6
  %14 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #10
  ret %struct.timespec* %14
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* %2, i8* %3) #10
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.101, i64 0, i64 0), i32 5) #10
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.102, i64 0, i64 0), i32 5) #10
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
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.103, i64 0, i64 0), i32 5) #10
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.104, i64 0, i64 0), i32 5) #10
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.105, i64 0, i64 0), i32 5) #10
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.106, i64 0, i64 0), i32 5) #10
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.107, i64 0, i64 0), i32 5) #10
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.108, i64 0, i64 0), i32 5) #10
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.109, i64 0, i64 0), i32 5) #10
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.110, i64 0, i64 0), i32 5) #10
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.111, i64 0, i64 0), i32 5) #10
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.112, i64 0, i64 0), i32 5) #10
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.115, i64 0, i64 0), i32 5) #10
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.116, i64 0, i64 0)) #10
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.117, i64 0, i64 0), i32 5) #10
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.118, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.119, i64 0, i64 0)) #10
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.120, i64 0, i64 0), i32 5) #10
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
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #10
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #10
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
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 {
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
  tail call void @free(i8* nonnull %0) #10
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10
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
  tail call void @free(i8* nonnull %0) #10
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10
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
  tail call void @xalloc_die() #15
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
  tail call void @xalloc_die() #15
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10
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
  %3 = tail call noalias i8* @malloc(i64 %1) #10
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
  %4 = tail call noalias i8* @malloc(i64 %3) #10
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #10
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.133, i64 0, i64 0), i32 5) #10
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i64 0, i64 0), i8* %2) #10
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.FTS* @xfts_open(i8**, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) local_unnamed_addr #6 {
  %4 = or i32 %1, 512
  %5 = tail call %struct.FTS* @fts_open(i8** %0, i32 %4, i32 (%struct._ftsent**, %struct._ftsent**)* %2) #10
  %6 = icmp eq %struct.FTS* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.138, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #15
  unreachable

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %3
  ret %struct.FTS* %5
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @cycle_warning_required(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly) local_unnamed_addr #11 {
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
  %18 = tail call noalias i8* @malloc(i64 128) #10
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
  %40 = tail call i64 @strlen(i8* nonnull %37) #14
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
  %57 = tail call i8* @realloc(i8* null, i64 %52) #10
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %48
  %60 = load i8*, i8** %56, align 8
  tail call void @free(i8* %60) #10
  br label %291

; <label>:61:                                     ; preds = %48
  store i8* %57, i8** %56, align 8
  %62 = load i8*, i8** %0, align 8
  %63 = icmp eq i8* %62, null
  %64 = ptrtoint i8* %57 to i64
  br i1 %63, label %87, label %65

; <label>:65:                                     ; preds = %61
  %66 = tail call noalias i8* @malloc(i64 272) #10
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
  tail call void @llvm.memset.p0i8.i64(i8* %84, i8 0, i64 16, i32 8, i1 false) #10
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
  %106 = tail call i64 @strlen(i8* nonnull %101) #14
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
  %130 = tail call noalias i8* @malloc(i64 %129) #10
  %131 = icmp eq i8* %130, null
  br i1 %131, label %269, label %132

; <label>:132:                                    ; preds = %126
  %133 = bitcast i8* %130 to %struct._ftsent*
  %134 = getelementptr inbounds i8, i8* %130, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* nonnull %101, i64 %127, i32 1, i1 false) #10
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
  tail call void @llvm.memset.p0i8.i64(i8* %151, i8 0, i64 16, i32 8, i1 false) #10
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
  %193 = tail call noalias i8* @malloc(i64 272) #10
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
  tail call void @llvm.memset.p0i8.i64(i8* %215, i8 0, i64 16, i32 8, i1 false) #10
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
  %225 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #10
  %226 = getelementptr inbounds i8, i8* %18, i64 88
  %227 = bitcast i8* %226 to %struct.hash_table**
  store %struct.hash_table* %225, %struct.hash_table** %227, align 8
  %228 = icmp eq %struct.hash_table* %225, null
  br i1 %228, label %270, label %236

; <label>:229:                                    ; preds = %197
  %230 = tail call noalias i8* @malloc(i64 32) #10
  %231 = getelementptr inbounds i8, i8* %18, i64 88
  %232 = bitcast i8* %231 to i8**
  store i8* %230, i8** %232, align 8
  %233 = icmp eq i8* %230, null
  br i1 %233, label %270, label %234

; <label>:234:                                    ; preds = %229
  %235 = bitcast i8* %230 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %235) #10
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
  %251 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %246) #10
  br label %254

; <label>:252:                                    ; preds = %240
  %253 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %246) #10
  br label %254

; <label>:254:                                    ; preds = %252, %249
  %255 = phi i32 [ %251, %249 ], [ %253, %252 ]
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %257, label %261

; <label>:257:                                    ; preds = %254
  %258 = tail call i32 @set_cloexec_flag(i32 %255, i1 zeroext true) #10
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
  tail call void @i_ring_init(%struct.I_ring* %268, i32 -1) #10
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
  %282 = tail call i32 @closedir(%struct.__dirstream* nonnull %279) #10
  br label %283

; <label>:283:                                    ; preds = %281, %274
  %284 = bitcast %struct._ftsent* %275 to i8*
  tail call void @free(i8* %284) #10
  %285 = icmp eq %struct._ftsent* %277, null
  br i1 %285, label %286, label %274

; <label>:286:                                    ; preds = %283
  br label %287

; <label>:287:                                    ; preds = %286, %270
  tail call void @free(i8* %88) #10
  %288 = load i8*, i8** %56, align 8
  br label %289

; <label>:289:                                    ; preds = %65, %287
  %290 = phi i8* [ %57, %65 ], [ %288, %287 ]
  tail call void @free(i8* %290) #10
  br label %291

; <label>:291:                                    ; preds = %59, %289
  tail call void @free(i8* nonnull %18) #10
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
  %30 = tail call i32 @__xstat(i32 1, i8* nonnull %29, %struct.stat* nonnull %4) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %28, align 8
  %38 = tail call i32 @__lxstat(i32 1, i8* nonnull %37, %struct.stat* nonnull %4) #10
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
  %46 = tail call i32 @__fxstatat(i32 1, i32 %43, i8* nonnull %45, %struct.stat* nonnull %4, i32 256) #10
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
  %22 = tail call i8* @realloc(i8* %20, i64 %21) #10
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %14, %19
  %25 = load i8*, i8** %18, align 8
  tail call void @free(i8* %25) #10
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
  tail call void @qsort(i8* %45, i64 %2, i64 8, i32 (i8*, i8*)* %6) #10
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
define internal i64 @AD_hash(i8* nocapture readonly, i64) #11 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @AD_compare(i8* nocapture readonly, i8* nocapture readonly) #11 {
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
  tail call void @free(i8* %18) #10
  %19 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %17, i64 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %10, label %22

; <label>:22:                                     ; preds = %10
  br label %23

; <label>:23:                                     ; preds = %22, %5
  %24 = phi %struct._ftsent* [ %3, %5 ], [ %17, %22 ]
  %25 = bitcast %struct._ftsent* %24 to i8*
  tail call void @free(i8* %25) #10
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
  %39 = tail call i32 @closedir(%struct.__dirstream* nonnull %36) #10
  br label %40

; <label>:40:                                     ; preds = %38, %31
  %41 = bitcast %struct._ftsent* %32 to i8*
  tail call void @free(i8* %41) #10
  %42 = icmp eq %struct._ftsent* %34, null
  br i1 %42, label %43, label %31

; <label>:43:                                     ; preds = %40
  br label %44

; <label>:44:                                     ; preds = %43, %26
  %45 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %46 = bitcast %struct._ftsent*** %45 to i8**
  %47 = load i8*, i8** %46, align 8
  tail call void @free(i8* %47) #10
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %49 = load i8*, i8** %48, align 8
  tail call void @free(i8* %49) #10
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
  %59 = tail call i32 @close(i32 %56) #10
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
  %70 = tail call i32 @fchdir(i32 %69) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

; <label>:72:                                     ; preds = %67
  %73 = tail call i32* @__errno_location() #1
  %74 = load i32, i32* %73, align 4
  br label %75

; <label>:75:                                     ; preds = %67, %72
  %76 = phi i32 [ %74, %72 ], [ 0, %67 ]
  %77 = load i32, i32* %68, align 8
  %78 = tail call i32 @close(i32 %77) #10
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
  %88 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #14
  br i1 %88, label %98, label %89

; <label>:89:                                     ; preds = %85
  br label %90

; <label>:90:                                     ; preds = %89, %95
  %91 = tail call i32 @i_ring_pop(%struct.I_ring* %87) #10
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %90
  %94 = tail call i32 @close(i32 %91) #10
  br label %95

; <label>:95:                                     ; preds = %93, %90
  %96 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #14
  br i1 %96, label %97, label %90

; <label>:97:                                     ; preds = %95
  br label %98

; <label>:98:                                     ; preds = %97, %85
  %99 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 11
  %100 = load %struct.hash_table*, %struct.hash_table** %99, align 8
  %101 = icmp eq %struct.hash_table* %100, null
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %98
  tail call void @hash_free(%struct.hash_table* nonnull %100) #10
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
  tail call void @hash_free(%struct.hash_table* nonnull %110) #10
  br label %116

; <label>:113:                                    ; preds = %103
  %114 = bitcast %union.anon* %107 to i8**
  %115 = load i8*, i8** %114, align 8
  tail call void @free(i8* %115) #10
  br label %116

; <label>:116:                                    ; preds = %108, %112, %113
  %117 = bitcast %struct.FTS* %0 to i8*
  tail call void @free(i8* %117) #10
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

declare i32 @close(i32) local_unnamed_addr #3

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
  %45 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %39) #10
  br label %48

; <label>:46:                                     ; preds = %33
  %47 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %39) #10
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
  %57 = tail call i32 @set_cloexec_flag(i32 %49, i1 zeroext true) #10
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
  %86 = tail call i32 @close(i32 %85) #10
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
  %100 = tail call i32 @closedir(%struct.__dirstream* nonnull %97) #10
  br label %101

; <label>:101:                                    ; preds = %99, %92
  %102 = bitcast %struct._ftsent* %93 to i8*
  tail call void @free(i8* %102) #10
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
  %123 = tail call i32 @closedir(%struct.__dirstream* nonnull %120) #10
  br label %124

; <label>:124:                                    ; preds = %122, %115
  %125 = bitcast %struct._ftsent* %116 to i8*
  tail call void @free(i8* %125) #10
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
  tail call void @free(i8* %200) #10
  br label %305

; <label>:201:                                    ; preds = %174
  store %struct._ftsent* %177, %struct._ftsent** %4, align 8
  %202 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %202) #10
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
  tail call void @hash_free(%struct.hash_table* nonnull %218) #10
  br label %224

; <label>:221:                                    ; preds = %212
  %222 = bitcast %union.anon* %215 to i8**
  %223 = load i8*, i8** %222, align 8
  tail call void @free(i8* %223) #10
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %229, i8* %230, i64 %231, i32 1, i1 false) #10
  %232 = tail call i8* @strrchr(i8* %230, i32 47) #14
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
  %242 = tail call i64 @strlen(i8* %241) #14
  %243 = add i64 %242, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %230, i8* %241, i64 %243, i32 1, i1 false) #10
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
  %255 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #10
  %256 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %255, %struct.hash_table** %256, align 8
  br label %326

; <label>:257:                                    ; preds = %244
  %258 = tail call noalias i8* @malloc(i64 32) #10
  %259 = bitcast %union.anon* %215 to i8**
  store i8* %258, i8** %259, align 8
  %260 = icmp eq i8* %258, null
  br i1 %260, label %326, label %261

; <label>:261:                                    ; preds = %257
  %262 = bitcast i8* %258 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %262) #10
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
  %286 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %280) #10
  br label %289

; <label>:287:                                    ; preds = %274
  %288 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %280) #10
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
  %298 = tail call i32 @set_cloexec_flag(i32 %290, i1 zeroext true) #10
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
  call void @llvm.lifetime.start(i64 16, i8* nonnull %353) #10
  %354 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 512
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %399, label %358

; <label>:358:                                    ; preds = %348
  %359 = icmp eq %struct.hash_table* %352, null
  br i1 %359, label %360, label %363

; <label>:360:                                    ; preds = %358
  %361 = tail call %struct.hash_table* @hash_initialize(i64 13, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @LCO_hash, i1 (i8*, i8*)* nonnull @LCO_compare, void (i8*)* nonnull @free) #10
  store %struct.hash_table* %361, %struct.hash_table** %351, align 8
  %362 = icmp eq %struct.hash_table* %361, null
  br i1 %362, label %399, label %363

; <label>:363:                                    ; preds = %360, %358
  %364 = phi %struct.hash_table* [ %361, %360 ], [ %352, %358 ]
  %365 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 18, i64 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.LCO_ent, %struct.LCO_ent* %3, i64 0, i32 0
  store i64 %366, i64* %367, align 8
  %368 = call i8* @hash_lookup(%struct.hash_table* nonnull %364, i8* nonnull %353) #10
  %369 = icmp eq i8* %368, null
  br i1 %369, label %374, label %370

; <label>:370:                                    ; preds = %363
  %371 = getelementptr inbounds i8, i8* %368, i64 8
  %372 = load i8, i8* %371, align 8
  %373 = icmp eq i8 %372, 0
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #10
  br i1 %373, label %401, label %417

; <label>:374:                                    ; preds = %363
  %375 = call noalias i8* @malloc(i64 16) #10
  %376 = icmp eq i8* %375, null
  br i1 %376, label %399, label %377

; <label>:377:                                    ; preds = %374
  %378 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 6
  %379 = load i32, i32* %378, align 4
  %380 = bitcast %struct.statfs* %2 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %380) #10
  %381 = call i32 @fstatfs(i32 %379, %struct.statfs* nonnull %2) #10
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
  call void @llvm.lifetime.end(i64 120, i8* nonnull %380) #10
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds i8, i8* %375, i64 8
  store i8 %389, i8* %390, align 8
  %391 = load i64, i64* %365, align 8
  %392 = bitcast i8* %375 to i64*
  store i64 %391, i64* %392, align 8
  %393 = call i8* @hash_insert(%struct.hash_table* nonnull %364, i8* nonnull %375) #10
  %394 = icmp eq i8* %393, null
  br i1 %394, label %395, label %396

; <label>:395:                                    ; preds = %387
  call void @free(i8* nonnull %375) #10
  br label %399

; <label>:396:                                    ; preds = %387
  %397 = icmp eq i8* %393, %375
  br i1 %397, label %400, label %398

; <label>:398:                                    ; preds = %396
  call void @abort() #15
  unreachable

; <label>:399:                                    ; preds = %395, %348, %360, %374
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #10
  br label %401

; <label>:400:                                    ; preds = %396
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #10
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
  tail call void @abort() #15
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
  tail call void @free(i8* %436) #10
  %437 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 12
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %443

; <label>:440:                                    ; preds = %434
  %441 = bitcast %struct._ftsent* %435 to i8*
  tail call void @free(i8* %441) #10
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
  tail call void @abort() #15
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
  tail call void @abort() #15
  unreachable

; <label>:489:                                    ; preds = %482
  %490 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %491 = tail call i32 @i_ring_push(%struct.I_ring* %490, i32 %484) #10
  %492 = icmp sgt i32 %491, -1
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %489
  %494 = tail call i32 @close(i32 %491) #10
  br label %495

; <label>:495:                                    ; preds = %489, %493
  store i32 %481, i32* %483, align 4
  br label %505

; <label>:496:                                    ; preds = %477
  %497 = tail call i32 @fchdir(i32 %481) #10
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
  %508 = tail call i32 @close(i32 %507) #10
  br label %523

; <label>:509:                                    ; preds = %465
  %510 = and i32 %468, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %523

; <label>:512:                                    ; preds = %509
  %513 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 1
  %514 = load %struct._ftsent*, %struct._ftsent** %513, align 8
  %515 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %514, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.150, i64 0, i64 0))
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %10) #10
  %11 = bitcast %struct.stat* %4 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %13 = bitcast %struct.Active_dir* %3 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %15 = load %struct.hash_table*, %struct.hash_table** %14, align 8
  %16 = call i8* @hash_delete(%struct.hash_table* %15, i8* nonnull %10) #10
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %9
  call void @abort() #15
  unreachable

; <label>:19:                                     ; preds = %9
  call void @free(i8* nonnull %16) #10
  call void @llvm.lifetime.end(i64 24, i8* nonnull %10) #10
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
  tail call void @abort() #15
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
  %39 = tail call i32 @close(i32 %2) #10
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
  %49 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %48) #14
  br i1 %49, label %55, label %50

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @i_ring_pop(%struct.I_ring* %48) #10
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
  %73 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %72, i8* %57, i32 %67) #10
  br label %76

; <label>:74:                                     ; preds = %60
  %75 = tail call i32 (i8*, i32, ...) @open_safer(i8* %57, i32 %67) #10
  br label %76

; <label>:76:                                     ; preds = %74, %70
  %77 = phi i32 [ %73, %70 ], [ %75, %74 ]
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %155

; <label>:79:                                     ; preds = %76
  %80 = tail call i32 @set_cloexec_flag(i32 %77, i1 zeroext true) #10
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
  call void @llvm.lifetime.start(i64 144, i8* nonnull %100) #10
  %101 = call i32 @__fxstat(i32 1, i32 %82, %struct.stat* nonnull %5) #10
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
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #10
  br label %149

; <label>:118:                                    ; preds = %109
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #10
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
  call void @abort() #15
  unreachable

; <label>:131:                                    ; preds = %124
  %132 = icmp eq i8 %56, 0
  br i1 %132, label %133, label %139

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %135 = call i32 @i_ring_push(%struct.I_ring* %134, i32 %126) #10
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %146

; <label>:137:                                    ; preds = %133
  %138 = call i32 @close(i32 %135) #10
  br label %146

; <label>:139:                                    ; preds = %131
  %140 = and i32 %121, 4
  %141 = icmp eq i32 %140, 0
  %142 = icmp sgt i32 %126, -1
  %143 = and i1 %141, %142
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %139
  %145 = call i32 @close(i32 %126) #10
  br label %146

; <label>:146:                                    ; preds = %133, %137, %139, %144
  store i32 %82, i32* %125, align 4
  br label %155

; <label>:147:                                    ; preds = %120
  %148 = call i32 @fchdir(i32 %82) #10
  br label %149

; <label>:149:                                    ; preds = %117, %147
  %150 = phi i32 [ %148, %147 ], [ -1, %117 ]
  br i1 %59, label %151, label %155

; <label>:151:                                    ; preds = %149
  %152 = tail call i32* @__errno_location() #1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @close(i32 %82) #10
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
  %10 = tail call i32 @dirfd(%struct.__dirstream* nonnull %7) #10
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
  %48 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %30, i8* %32, i32 %47) #10
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %58, label %50

; <label>:50:                                     ; preds = %43
  %51 = tail call i32 @set_cloexec_flag(i32 %48, i1 zeroext true) #10
  %52 = tail call %struct.__dirstream* @fdopendir(i32 %48) #10
  %53 = icmp eq %struct.__dirstream* %52, null
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %50
  %55 = tail call i32* @__errno_location() #1
  %56 = load i32, i32* %55, align 4
  %57 = tail call i32 @close(i32 %48) #10
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
  %112 = tail call i32 @dup_safer(i32 %81) #10
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %122

; <label>:114:                                    ; preds = %111
  %115 = tail call i32 @set_cloexec_flag(i32 %112, i1 zeroext true) #10
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
  %141 = tail call i32 @close(i32 %123) #10
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
  %188 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %186) #10
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
  %218 = tail call i64 @strlen(i8* %203) #14
  %219 = add i64 %218, 272
  %220 = and i64 %219, -8
  %221 = tail call noalias i8* @malloc(i64 %220) #10
  %222 = icmp eq i8* %221, null
  br i1 %222, label %256, label %223

; <label>:223:                                    ; preds = %217
  %224 = bitcast i8* %221 to %struct._ftsent*
  %225 = getelementptr inbounds i8, i8* %221, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %203, i64 %218, i32 1, i1 false) #10
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
  tail call void @llvm.memset.p0i8.i64(i8* %242, i8 0, i64 16, i32 8, i1 false) #10
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
  tail call void @free(i8* %244) #10
  store i8* null, i8** %158, align 8
  store i32 36, i32* %187, align 4
  br label %257

; <label>:251:                                    ; preds = %245
  store i64 %248, i64* %166, align 8
  %252 = tail call i8* @realloc(i8* %244, i64 %248) #10
  %253 = icmp eq i8* %252, null
  br i1 %253, label %254, label %281

; <label>:254:                                    ; preds = %251
  %255 = load i8*, i8** %158, align 8
  tail call void @free(i8* %255) #10
  store i8* null, i8** %158, align 8
  br label %257

; <label>:256:                                    ; preds = %217
  br label %257

; <label>:257:                                    ; preds = %256, %254, %250
  %258 = phi i8* [ %221, %250 ], [ %221, %254 ], [ null, %256 ]
  %259 = load i32, i32* %187, align 4
  tail call void @free(i8* %258) #10
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
  %270 = tail call i32 @closedir(%struct.__dirstream* nonnull %267) #10
  br label %271

; <label>:271:                                    ; preds = %269, %262
  %272 = bitcast %struct._ftsent* %263 to i8*
  tail call void @free(i8* %272) #10
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
  tail call void @free(i8* nonnull %221) #10
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
  %311 = tail call i32 @closedir(%struct.__dirstream* nonnull %308) #10
  br label %312

; <label>:312:                                    ; preds = %310, %303
  %313 = bitcast %struct._ftsent* %304 to i8*
  tail call void @free(i8* %313) #10
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
  %371 = getelementptr inbounds [12 x i32], [12 x i32]* @switch.table.151, i64 0, i64 %370
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
  %492 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %491, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.150, i64 0, i64 0))
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
  %508 = tail call i32 @closedir(%struct.__dirstream* nonnull %505) #10
  br label %509

; <label>:509:                                    ; preds = %507, %500
  %510 = bitcast %struct._ftsent* %501 to i8*
  tail call void @free(i8* %510) #10
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
  %531 = tail call i32 @closedir(%struct.__dirstream* nonnull %528) #10
  br label %532

; <label>:532:                                    ; preds = %530, %523
  %533 = bitcast %struct._ftsent* %524 to i8*
  tail call void @free(i8* %533) #10
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
  call void @llvm.lifetime.start(i64 120, i8* nonnull %547) #10
  %548 = call i32 @fstatfs(i32 %546, %struct.statfs* nonnull %3) #10
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
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #10
  br label %556

; <label>:554:                                    ; preds = %550, %544
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #10
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
  %13 = tail call i32 @i_ring_push(%struct.I_ring* %12, i32 %11) #10
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @close(i32 %13) #10
  br label %17

; <label>:17:                                     ; preds = %9, %15
  store i32 -100, i32* %10, align 4
  br label %23

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = tail call i32 @fchdir(i32 %20) #10
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23:                                     ; preds = %17, %18, %1
  %24 = phi i1 [ false, %1 ], [ false, %17 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %27 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #14
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %34
  %30 = tail call i32 @i_ring_pop(%struct.I_ring* %26) #10
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @close(i32 %30) #10
  br label %34

; <label>:34:                                     ; preds = %32, %29
  %35 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #14
  br i1 %35, label %36, label %29

; <label>:36:                                     ; preds = %34
  br label %37

; <label>:37:                                     ; preds = %36, %23
  ret i32 %25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @LCO_hash(i8* nocapture readonly, i64) #11 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @LCO_compare(i8* nocapture readonly, i8* nocapture readonly) #11 {
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
  %8 = tail call noalias i8* @malloc(i64 24) #10
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
  %19 = tail call i8* @hash_insert(%struct.hash_table* %18, i8* nonnull %8) #10
  %20 = icmp eq i8* %19, %8
  br i1 %20, label %38, label %21

; <label>:21:                                     ; preds = %10
  tail call void @free(i8* nonnull %8) #10
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
  %34 = tail call zeroext i1 @cycle_check(%struct.cycle_check_state* %32, %struct.stat* %33) #10
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
define internal i32 @fts_compare_ino(%struct._ftsent** nocapture readonly, %struct._ftsent** nocapture readonly) #11 {
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
  %32 = tail call i32 @closedir(%struct.__dirstream* nonnull %29) #10
  br label %33

; <label>:33:                                     ; preds = %31, %24
  %34 = bitcast %struct._ftsent* %25 to i8*
  tail call void @free(i8* %34) #10
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
  %70 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %64) #10
  br label %73

; <label>:71:                                     ; preds = %58
  %72 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.145, i64 0, i64 0), i32 %64) #10
  br label %73

; <label>:73:                                     ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %77, label %76

; <label>:76:                                     ; preds = %73
  store %struct._ftsent* null, %struct._ftsent** %20, align 8
  br label %107

; <label>:77:                                     ; preds = %73
  %78 = tail call i32 @set_cloexec_flag(i32 %74, i1 zeroext true) #10
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
  tail call void @abort() #15
  unreachable

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %92 = tail call i32 @i_ring_push(%struct.I_ring* %91, i32 %85) #10
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %90
  %95 = tail call i32 @close(i32 %92) #10
  br label %96

; <label>:96:                                     ; preds = %90, %94
  store i32 %74, i32* %84, align 4
  br label %105

; <label>:97:                                     ; preds = %77
  %98 = tail call i32 @fchdir(i32 %74) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = tail call i32 @close(i32 %74) #10
  store i32 %101, i32* %8, align 4
  br label %107

; <label>:103:                                    ; preds = %97
  %104 = tail call i32 @close(i32 %74) #10
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
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 {
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #10
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1
  %7 = and i32 %3, -2
  %8 = select i1 %1, i32 %6, i32 %7
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #10
  %12 = icmp eq i32 %11, -1
  %13 = sext i1 %12 to i32
  ret i32 %13

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #10
  ret i32 %2
}

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
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.165, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #15
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #10
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
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #10
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #10
  %28 = call i32 @fd_safer(i32 %27) #10
  ret i32 %28
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0)) #10
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

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
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
define zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
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
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.171, i64 0, i64 0), i64 %4) #10
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.172, i64 0, i64 0), i64 %6) #10
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.173, i64 0, i64 0), i64 %8, double %79) #10
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.174, i64 0, i64 0), i64 %73) #10
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #10
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
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #10
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
define i8* @hash_get_first(%struct.hash_table* nocapture readonly) local_unnamed_addr #11 {
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
  %7 = tail call i64 %4(i8* %1, i64 %6) #10
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
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #10
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
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #10
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
define i64 @hash_string(i8* nocapture readonly, i64) local_unnamed_addr #11 {
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
  %10 = tail call noalias i8* @malloc(i64 80) #10
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
  %91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #10
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
  tail call void @free(i8* nonnull %10) #10
  br label %110

; <label>:110:                                    ; preds = %5, %109, %94
  %111 = phi %struct.hash_table* [ null, %109 ], [ %11, %94 ], [ null, %5 ]
  ret %struct.hash_table* %111
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @raw_hasher(i8*, i64) #13 {
  %3 = ptrtoint i8* %0 to i64
  %4 = lshr i64 %3, 3
  %5 = shl i64 %3, 61
  %6 = or i64 %5, %4
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #13 {
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
  tail call void %26(i8* %30) #10
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
  tail call void %42(i8* %45) #10
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
  tail call void %25(i8* %20) #10
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
  tail call void %34(i8* %33) #10
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
  tail call void @free(i8* %62) #10
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
  tail call void @free(i8* %80) #10
  %83 = icmp eq %struct.hash_entry* %82, null
  br i1 %83, label %84, label %78

; <label>:84:                                     ; preds = %78
  br label %85

; <label>:85:                                     ; preds = %84, %73
  %86 = bitcast %struct.hash_table* %0 to i8**
  %87 = load i8*, i8** %86, align 8
  tail call void @free(i8* %87) #10
  %88 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* %88) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.hash_table, align 16
  %4 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #10
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
  %56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #10
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
  tail call void @free(i8* %84) #10
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
  %118 = tail call i64 %117(i8* %116, i64 %113) #10
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
  tail call void @free(i8* %150) #10
  br label %152

; <label>:151:                                    ; preds = %45
  br label %152

; <label>:152:                                    ; preds = %151, %17, %48, %10, %55, %51, %149, %82
  %153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
  call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #10
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
  %34 = tail call i64 %33(i8* %32, i64 %29) #10
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
  %63 = tail call i64 %61(i8* %59, i64 %62) #10
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
  %80 = tail call noalias i8* @malloc(i64 16) #10
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
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #10
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
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #10
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
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #10
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
  %118 = tail call i64 %116(i8* nonnull %1, i64 %117) #10
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
  %133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #10
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
  %149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #10
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
  %179 = tail call noalias i8* @malloc(i64 16) #10
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #10
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #10
  ret i8* %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #10
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
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #10
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #10
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
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #10
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
  tail call void @free(i8* %148) #10
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
define zeroext i1 @i_ring_empty(%struct.I_ring* nocapture readonly) local_unnamed_addr #11 {
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
  tail call void @abort() #15
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
  %3 = tail call i8* @nl_langinfo(i32 14) #10
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.196, i64 0, i64 0)) #10
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.197, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.198, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.198, i64 0, i64 0), i64 14, i32 1, i1 false) #10
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #10
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.199, i64 0, i64 0)) #10
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.200, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #10
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #10
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.195, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.201, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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
define i32 @openat_safer(i32, i8*, i32, ...) local_unnamed_addr #6 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = and i32 %2, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %3
  %8 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %8) #10
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
  call void @llvm.lifetime.end(i64 24, i8* nonnull %8) #10
  br label %26

; <label>:26:                                     ; preds = %3, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %3 ]
  %28 = call i32 (i32, i8*, i32, ...) @openat(i32 %0, i8* %1, i32 %2, i32 %27) #10
  %29 = call i32 @fd_safer(i32 %28) #10
  ret i32 %29
}

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #10
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #10
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #10
  store i32 %6, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

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
attributes #13 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
