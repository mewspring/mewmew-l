; ModuleID = 'coreutils-8.27/src/shred.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.10 }
%union.anon.10 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Options = type { i8, i64, i64, i32, i8, i8, i8 }
%struct.mtop = type { i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.timezone = type { i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [134 x i8] c"Overwrite the specified FILE(s) repeatedly, in order to make it harder\0Afor even very expensive hardware probing to recover the data.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"\0AIf FILE is -, shred standard output.\0A\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.4 = private unnamed_addr constant [262 x i8] c"  -f, --force    change permissions to allow writing if necessary\0A  -n, --iterations=N  overwrite N times instead of the default (%d)\0A      --random-source=FILE  get random bytes from FILE\0A  -s, --size=N   shred this many bytes (suffixes like K, M, G accepted)\0A\00", align 1
@.str.5 = private unnamed_addr constant [365 x i8] c"  -u             truncate and remove file after overwriting\0A      --remove[=HOW]  like -u but give control on HOW to delete;  See below\0A  -v, --verbose  show progress\0A  -x, --exact    do not round file sizes up to the next full block;\0A                   this is the default for non-regular files\0A  -z, --zero     add a final overwrite with zeros to hide shredding\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [475 x i8] c"\0ADelete FILE(s) if --remove (-u) is specified.  The default is not to remove\0Athe files because it is common to operate on device files like /dev/hda,\0Aand those files usually should not be removed.\0AThe optional HOW parameter indicates how to remove a directory entry:\0A'unlink' => use a standard unlink call.\0A'wipe' => also first obfuscate bytes in the name.\0A'wipesync' => also sync each obfuscated byte to disk.\0AThe default mode is 'wipesync', but note it can be expensive.\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [364 x i8] c"CAUTION: Note that shred relies on a very important assumption:\0Athat the file system overwrites data in place.  This is the traditional\0Away to do things, but many modern file system designs do not satisfy this\0Aassumption.  The following are examples of file systems on which shred is\0Anot effective, or is not guaranteed to be effective in all file system modes:\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [316 x i8] c"* log-structured or journaled file systems, such as those supplied with\0AAIX and Solaris (and JFS, ReiserFS, XFS, Ext3, etc.)\0A\0A* file systems that write redundant data and carry on even if some writes\0Afail, such as RAID-based file systems\0A\0A* file systems that make snapshots, such as Network Appliance's NFS server\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [109 x i8] c"* file systems that cache in temporary locations, such as NFS\0Aversion 3 clients\0A\0A* compressed file systems\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [472 x i8] c"In the case of ext3 file systems, the above disclaimer applies\0A(and shred is thus of limited effectiveness) only in data=journal mode,\0Awhich journals file data in addition to just metadata.  In both the\0Adata=ordered (default) and data=writeback modes, shred works as usual.\0AExt3 journaling modes can be changed by adding the data=something option\0Ato the mount options for a particular file system in the /etc/fstab file,\0Aas documented in the mount man page (man mount).\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [167 x i8] c"In addition, file system backups and remote mirrors may contain copies\0Aof the file that cannot be removed, and that will allow a shredded file\0Ato be recovered later.\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"shred\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"fn:s:uvxz\00", align 1
@long_opts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 120 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 2, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.19 = private unnamed_addr constant [25 x i8] c"invalid number of passes\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"--remove\00", align 1
@remove_args = internal constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* null], align 16
@remove_methods = internal constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"invalid file size\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"cbBkKMGTPEZY0\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Colin Plumb\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@randint_source = internal unnamed_addr global %struct.randint_source* null, align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"%s: fcntl failed\00", align 1
@.str.59 = private unnamed_addr constant [45 x i8] c"%s: cannot shred append-only file descriptor\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"%s: failed to open for writing\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"%s: failed to close\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"%s: removing\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"%s: renamed to %s\00", align 1
@nameset = internal constant [65 x i8] c"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_.\00", align 16
@.str.81 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"src/shred.c\00", align 1
@__PRETTY_FUNCTION__.incname = private unnamed_addr constant [30 x i8] c"_Bool incname(char *, size_t)\00", align 1
@.str.79 = private unnamed_addr constant [21 x i8] c"%s: failed to remove\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"%s: removed\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"%s: fdatasync failed\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"%s: fsync failed\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"%s: fstat failed\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"%s: invalid file type\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"%s: file has negative size\00", align 1
@patterns = internal unnamed_addr constant [55 x i32] [i32 -2, i32 2, i32 0, i32 4095, i32 2, i32 1365, i32 2730, i32 -1, i32 6, i32 585, i32 1170, i32 1755, i32 2340, i32 2925, i32 3510, i32 12, i32 273, i32 546, i32 819, i32 1092, i32 1638, i32 1911, i32 2184, i32 2457, i32 3003, i32 3276, i32 3549, i32 3822, i32 -1, i32 8, i32 4096, i32 4681, i32 5266, i32 5851, i32 6436, i32 7021, i32 7606, i32 8191, i32 14, i32 4369, i32 4642, i32 4915, i32 5188, i32 5461, i32 5734, i32 6007, i32 6280, i32 6553, i32 6826, i32 7099, i32 7372, i32 7645, i32 7918, i32 -1, i32 0], align 16
@.str.64 = private unnamed_addr constant [18 x i8] c"%s: cannot rewind\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"%02x%02x%02x\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"%s: pass %lu/%lu (%s)...\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"%s: error writing at offset %s\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"%s: lseek failed\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"%s: file too large\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"%s: pass %lu/%lu (%s)...%s\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"%s: pass %lu/%lu (%s)...%s/%s %d%%\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"%s: error truncating\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"wipe\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"wipesync\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"iterations\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.32 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.33 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.34 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.35 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.84 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.85 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.100 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.101 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.102 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.103 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1
@.str.4.104 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.105 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.106 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.109, i32 0, i32 0), i8* null], align 16
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4
@.str.6.107 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.108 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.109 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.116 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.117 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.118 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.121, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.122, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.124, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.126, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.128, i32 0, i32 0), i8* null], align 16
@.str.119 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.121 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.122 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.123 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.124 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.125 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.126 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.127 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.128 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.129 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.130 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.131 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.132 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.133 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.134 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.135 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.156 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.157 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.158 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.159 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.171 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.172 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.173 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.174 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.175 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.176 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.177 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.178 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.179 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.180 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.181 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.182 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.183 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.186 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.187 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.188 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.189 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.190 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.191 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.204 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.213 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.214 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.1.233 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.236 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.237 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.238 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.239 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.240 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.241 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.242 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %65

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.2, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0), i32 5) #12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %21, i32 3) #12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([365 x i8], [365 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = tail call i32 @fputs_unlocked(i8* %23, %struct._IO_FILE* %24) #12
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = tail call i32 @fputs_unlocked(i8* %26, %struct._IO_FILE* %27) #12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = tail call i32 @fputs_unlocked(i8* %29, %struct._IO_FILE* %30) #12
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([475 x i8], [475 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = tail call i32 @fputs_unlocked(i8* %32, %struct._IO_FILE* %33) #12
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([364 x i8], [364 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = tail call i32 @fputs_unlocked(i8* %35, %struct._IO_FILE* %36) #12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([316 x i8], [316 x i8]* @.str.10, i64 0, i64 0), i32 5) #12
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = tail call i32 @fputs_unlocked(i8* %38, %struct._IO_FILE* %39) #12
  %41 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = tail call i32 @fputs_unlocked(i8* %41, %struct._IO_FILE* %42) #12
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([472 x i8], [472 x i8]* @.str.12, i64 0, i64 0), i32 5) #12
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = tail call i32 @fputs_unlocked(i8* %44, %struct._IO_FILE* %45) #12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.13, i64 0, i64 0), i32 5) #12
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = tail call i32 @fputs_unlocked(i8* %47, %struct._IO_FILE* %48) #12
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 5) #12
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0)) #12
  %52 = tail call i8* @setlocale(i32 5, i8* null) #12
  %53 = icmp eq i8* %52, null
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %8
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.41, i64 0, i64 0), i32 5) #12
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #12
  br label %60

; <label>:60:                                     ; preds = %8, %54, %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i64 0, i64 0), i32 5) #12
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #12
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i32 5) #12
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #12
  br label %65

; <label>:65:                                     ; preds = %60, %3
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
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.Options, align 8
  %5 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 0
  call void @llvm.lifetime.start(i64 32, i8* nonnull %5) #12
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 32, i32 8, i1 false)
  %6 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %6) #12
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #12
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #12
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #12
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12
  %11 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 2
  %13 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> <i64 3, i64 -1>, <2 x i64>* %13, align 8
  %14 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 3
  %15 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 4
  %16 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 5
  %17 = getelementptr inbounds %struct.Options, %struct.Options* %4, i64 0, i32 6
  br label %18

; <label>:18:                                     ; preds = %35, %2
  %19 = phi i8 [ 0, %2 ], [ %36, %35 ]
  %20 = phi i64 [ 3, %2 ], [ %37, %35 ]
  %21 = phi i32 [ 0, %2 ], [ %38, %35 ]
  %22 = phi i64 [ -1, %2 ], [ %39, %35 ]
  %23 = phi i8 [ 0, %2 ], [ %40, %35 ]
  %24 = phi i8 [ 0, %2 ], [ %41, %35 ]
  %25 = phi i8 [ 0, %2 ], [ %42, %35 ]
  %26 = phi i8* [ null, %2 ], [ %43, %35 ]
  %27 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #12
  switch i32 %27, label %68 [
    i32 -1, label %69
    i32 102, label %35
    i32 110, label %28
    i32 128, label %32
    i32 117, label %49
    i32 115, label %57
    i32 118, label %61
    i32 120, label %62
    i32 122, label %63
    i32 -130, label %64
    i32 -131, label %65
  ]

; <label>:28:                                     ; preds = %18
  %29 = load i8*, i8** @optarg, align 8
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %31 = tail call i64 @xdectoumax(i8* %29, i64 0, i64 4611686018427387903, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), i8* %30, i32 0) #12
  br label %35

; <label>:32:                                     ; preds = %18
  %33 = icmp eq i8* %26, null
  %34 = load i8*, i8** @optarg, align 8
  br i1 %33, label %35, label %44

; <label>:35:                                     ; preds = %32, %44, %52, %49, %18, %63, %62, %61, %57, %28
  %36 = phi i8 [ %19, %63 ], [ %19, %62 ], [ %19, %61 ], [ %19, %57 ], [ %19, %28 ], [ 1, %18 ], [ %19, %49 ], [ %19, %52 ], [ %19, %44 ], [ %19, %32 ]
  %37 = phi i64 [ %20, %63 ], [ %20, %62 ], [ %20, %61 ], [ %20, %57 ], [ %31, %28 ], [ %20, %18 ], [ %20, %49 ], [ %20, %52 ], [ %20, %44 ], [ %20, %32 ]
  %38 = phi i32 [ %21, %63 ], [ %21, %62 ], [ %21, %61 ], [ %21, %57 ], [ %21, %28 ], [ %21, %18 ], [ 3, %49 ], [ %56, %52 ], [ %21, %44 ], [ %21, %32 ]
  %39 = phi i64 [ %22, %63 ], [ %22, %62 ], [ %22, %61 ], [ %60, %57 ], [ %22, %28 ], [ %22, %18 ], [ %22, %49 ], [ %22, %52 ], [ %22, %44 ], [ %22, %32 ]
  %40 = phi i8 [ %23, %63 ], [ %23, %62 ], [ 1, %61 ], [ %23, %57 ], [ %23, %28 ], [ %23, %18 ], [ %23, %49 ], [ %23, %52 ], [ %23, %44 ], [ %23, %32 ]
  %41 = phi i8 [ %24, %63 ], [ 1, %62 ], [ %24, %61 ], [ %24, %57 ], [ %24, %28 ], [ %24, %18 ], [ %24, %49 ], [ %24, %52 ], [ %24, %44 ], [ %24, %32 ]
  %42 = phi i8 [ 1, %63 ], [ %25, %62 ], [ %25, %61 ], [ %25, %57 ], [ %25, %28 ], [ %25, %18 ], [ %25, %49 ], [ %25, %52 ], [ %25, %44 ], [ %25, %32 ]
  %43 = phi i8* [ %26, %63 ], [ %26, %62 ], [ %26, %61 ], [ %26, %57 ], [ %26, %28 ], [ %26, %18 ], [ %26, %49 ], [ %26, %52 ], [ %34, %44 ], [ %34, %32 ]
  br label %18

; <label>:44:                                     ; preds = %32
  %45 = tail call i32 @strcmp(i8* nonnull %26, i8* %34) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %35, label %47

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %48) #12
  unreachable

; <label>:49:                                     ; preds = %18
  %50 = load i8*, i8** @optarg, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %35, label %52

; <label>:52:                                     ; preds = %49
  %53 = load void ()*, void ()** @argmatch_die, align 8
  %54 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* nonnull %50, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @remove_args, i64 0, i64 0), i8* bitcast ([3 x i32]* @remove_methods to i8*), i64 4, void ()* %53) #12
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* @remove_methods, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  br label %35

; <label>:57:                                     ; preds = %18
  %58 = load i8*, i8** @optarg, align 8
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 5) #12
  %60 = tail call i64 @xnumtoumax(i8* %58, i32 0, i64 0, i64 9223372036854775807, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %59, i32 0) #12
  br label %35

; <label>:61:                                     ; preds = %18
  br label %35

; <label>:62:                                     ; preds = %18
  br label %35

; <label>:63:                                     ; preds = %18
  br label %35

; <label>:64:                                     ; preds = %18
  tail call void @usage(i32 0) #15
  unreachable

; <label>:65:                                     ; preds = %18
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0), i8* null) #12
  tail call void @exit(i32 0) #14
  unreachable

; <label>:68:                                     ; preds = %18
  tail call void @usage(i32 1) #15
  unreachable

; <label>:69:                                     ; preds = %18
  store i8 %25, i8* %17, align 2
  store i8 %24, i8* %16, align 1
  store i8 %23, i8* %15, align 4
  store i64 %22, i64* %12, align 8
  store i32 %21, i32* %14, align 8
  store i64 %20, i64* %11, align 8
  store i8 %19, i8* %5, align 8
  %70 = load i32, i32* @optind, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %1, i64 %71
  %73 = sub nsw i32 %0, %70
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %69
  %76 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %76) #12
  tail call void @usage(i32 1) #15
  unreachable

; <label>:77:                                     ; preds = %69
  %78 = tail call %struct.randint_source* @randint_all_new(i8* %26, i64 -1) #12
  store %struct.randint_source* %78, %struct.randint_source** @randint_source, align 8
  %79 = icmp eq %struct.randint_source* %78, null
  br i1 %79, label %80, label %84

; <label>:80:                                     ; preds = %77
  %81 = tail call i32* @__errno_location() #1
  %82 = load i32, i32* %81, align 4
  %83 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %26) #12
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i8* %83) #12
  unreachable

; <label>:84:                                     ; preds = %77
  %85 = tail call i32 @atexit(void ()* nonnull @clear_random_data) #12
  %86 = icmp sgt i32 %73, 0
  br i1 %86, label %87, label %274

; <label>:87:                                     ; preds = %84
  %88 = bitcast %struct.stat* %3 to i8*
  %89 = sext i32 %73 to i64
  %90 = icmp eq i8 %19, 0
  %91 = icmp eq i32 %21, 3
  %92 = icmp ne i32 %21, 1
  br label %93

; <label>:93:                                     ; preds = %87, %263
  %94 = phi i8 [ %23, %87 ], [ %264, %263 ]
  %95 = phi i32 [ %21, %87 ], [ %265, %263 ]
  %96 = phi i64 [ 0, %87 ], [ %269, %263 ]
  %97 = phi i8 [ 1, %87 ], [ %268, %263 ]
  %98 = getelementptr inbounds i8*, i8** %72, i64 %96
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %99) #12
  %101 = call noalias i8* @xstrdup(i8* %100) #12
  %102 = load i8*, i8** %98, align 8
  %103 = load i8, i8* %102, align 1
  %104 = icmp eq i8 %103, 45
  br i1 %104, label %105, label %124

; <label>:105:                                    ; preds = %93
  %106 = getelementptr inbounds i8, i8* %102, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %124

; <label>:109:                                    ; preds = %105
  %110 = load %struct.randint_source*, %struct.randint_source** @randint_source, align 8
  %111 = call i32 (i32, i32, ...) @rpl_fcntl(i32 1, i32 3) #12
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

; <label>:113:                                    ; preds = %109
  %114 = tail call i32* @__errno_location() #1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %115, i8* %116, i8* %101) #12
  br label %263

; <label>:117:                                    ; preds = %109
  %118 = and i32 %111, 1024
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

; <label>:120:                                    ; preds = %117
  %121 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.59, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %121, i8* %101) #12
  br label %263

; <label>:122:                                    ; preds = %117
  %123 = call fastcc zeroext i1 @do_wipefd(i32 1, i8* %101, %struct.randint_source* %110, %struct.Options* nonnull %4) #12
  br label %263

; <label>:124:                                    ; preds = %93, %105
  %125 = load %struct.randint_source*, %struct.randint_source** @randint_source, align 8
  %126 = call i32 (i8*, i32, ...) @open_safer(i8* %102, i32 257) #12
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %142

; <label>:128:                                    ; preds = %124
  %129 = tail call i32* @__errno_location() #1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 13
  %132 = or i1 %131, %90
  br i1 %132, label %139, label %133

; <label>:133:                                    ; preds = %128
  %134 = call i32 @chmod(i8* %102, i32 128) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

; <label>:136:                                    ; preds = %133
  %137 = call i32 (i8*, i32, ...) @open_safer(i8* %102, i32 257) #12
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %128, %136, %133
  %140 = load i32, i32* %129, align 4
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.75, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %140, i8* %141, i8* %101) #12
  br label %263

; <label>:142:                                    ; preds = %136, %124
  %143 = phi i32 [ %137, %136 ], [ %126, %124 ]
  %144 = call fastcc zeroext i1 @do_wipefd(i32 %143, i8* %101, %struct.randint_source* %125, %struct.Options* nonnull %4) #12
  %145 = call i32 @close(i32 %143) #12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

; <label>:147:                                    ; preds = %142
  %148 = tail call i32* @__errno_location() #1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %149, i8* %150, i8* %101) #12
  br label %263

; <label>:151:                                    ; preds = %142
  br i1 %144, label %152, label %263

; <label>:152:                                    ; preds = %151
  %153 = icmp eq i32 %95, 0
  br i1 %153, label %263, label %154

; <label>:154:                                    ; preds = %152
  %155 = call noalias i8* @xstrdup(i8* %102) #12
  %156 = call i8* @last_component(i8* %155) #9
  %157 = call i64 @base_len(i8* %156) #9
  %158 = call i8* @dir_name(i8* %155) #12
  %159 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %158) #12
  %160 = call noalias i8* @xstrdup(i8* %159) #12
  br i1 %91, label %161, label %163

; <label>:161:                                    ; preds = %154
  %162 = call i32 (i8*, i32, ...) @open_safer(i8* %158, i32 67840) #12
  br label %163

; <label>:163:                                    ; preds = %161, %154
  %164 = phi i32 [ %162, %161 ], [ -1, %154 ]
  %165 = icmp eq i8 %94, 0
  br i1 %165, label %168, label %166

; <label>:166:                                    ; preds = %163
  %167 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %167, i8* %101) #12
  br label %168

; <label>:168:                                    ; preds = %166, %163
  %169 = icmp ne i64 %157, 0
  %170 = and i1 %169, %92
  br i1 %170, label %171, label %234

; <label>:171:                                    ; preds = %168
  %172 = icmp sgt i32 %164, -1
  %173 = ptrtoint i8* %156 to i64
  %174 = ptrtoint i8* %155 to i64
  %175 = sub i64 %173, %174
  %176 = getelementptr inbounds i8, i8* %102, i64 %175
  br label %177

; <label>:177:                                    ; preds = %228, %171
  %178 = phi i64 [ %157, %171 ], [ %231, %228 ]
  %179 = phi i8 [ 1, %171 ], [ %229, %228 ]
  %180 = phi i8 [ 1, %171 ], [ %230, %228 ]
  call void @llvm.memset.p0i8.i64(i8* %156, i8 48, i64 %178, i32 1, i1 false) #12
  %181 = getelementptr inbounds i8, i8* %156, i64 %178
  store i8 0, i8* %181, align 1
  call void @llvm.lifetime.start(i64 144, i8* nonnull %88) #12
  %182 = call i32 @__lxstat(i32 1, i8* nonnull %155, %struct.stat* nonnull %3) #12
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %189, label %184

; <label>:184:                                    ; preds = %177
  br label %210

; <label>:185:                                    ; preds = %222
  call void @llvm.lifetime.start(i64 144, i8* nonnull %88) #12
  %186 = call i32 @__lxstat(i32 1, i8* nonnull %155, %struct.stat* nonnull %3) #12
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %210

; <label>:188:                                    ; preds = %185
  br label %189

; <label>:189:                                    ; preds = %188, %177
  %190 = call i32 @rename(i8* %102, i8* %155) #12
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %207

; <label>:192:                                    ; preds = %189
  br i1 %172, label %193, label %197

; <label>:193:                                    ; preds = %192
  %194 = call fastcc i32 @dosync(i32 %164, i8* %160) #12
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %195, i8 %179, i8 0
  br label %197

; <label>:197:                                    ; preds = %193, %192
  %198 = phi i8 [ %179, %192 ], [ %196, %193 ]
  br i1 %165, label %204, label %199

; <label>:199:                                    ; preds = %197
  %200 = and i8 %180, 1
  %201 = icmp ne i8 %200, 0
  %202 = select i1 %201, i8* %101, i8* %102
  %203 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %203, i8* %202, i8* %155) #12
  br label %204

; <label>:204:                                    ; preds = %199, %197
  %205 = phi i8 [ 0, %199 ], [ %180, %197 ]
  %206 = add i64 %178, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %176, i8* nonnull %156, i64 %206, i32 1, i1 false) #12
  br label %207

; <label>:207:                                    ; preds = %204, %189
  %208 = phi i8 [ %180, %189 ], [ %205, %204 ]
  %209 = phi i8 [ %179, %189 ], [ %198, %204 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %88) #12
  br label %228

; <label>:210:                                    ; preds = %184, %185
  call void @llvm.lifetime.end(i64 144, i8* nonnull %88) #12
  br label %211

; <label>:211:                                    ; preds = %222, %210
  %212 = phi i64 [ %178, %210 ], [ %213, %222 ]
  %213 = add i64 %212, -1
  %214 = icmp eq i64 %212, 0
  br i1 %214, label %227, label %215

; <label>:215:                                    ; preds = %211
  %216 = getelementptr inbounds i8, i8* %156, i64 %213
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = call i8* @memchr(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @nameset, i64 0, i64 0), i32 %218, i64 65) #12
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

; <label>:221:                                    ; preds = %215
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i32 1035, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.incname, i64 0, i64 0)) #14
  unreachable

; <label>:222:                                    ; preds = %215
  %223 = getelementptr inbounds i8, i8* %219, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = icmp eq i8 %224, 0
  %226 = select i1 %225, i8 48, i8 %224
  store i8 %226, i8* %216, align 1
  br i1 %225, label %211, label %185

; <label>:227:                                    ; preds = %211
  br label %228

; <label>:228:                                    ; preds = %227, %207
  %229 = phi i8 [ %209, %207 ], [ %179, %227 ]
  %230 = phi i8 [ %208, %207 ], [ %180, %227 ]
  %231 = add i64 %178, -1
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %177

; <label>:233:                                    ; preds = %228
  br label %234

; <label>:234:                                    ; preds = %233, %168
  %235 = phi i8 [ 1, %168 ], [ %229, %233 ]
  %236 = call i32 @unlink(i8* %102) #12
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238

; <label>:238:                                    ; preds = %234
  %239 = tail call i32* @__errno_location() #1
  %240 = load i32, i32* %239, align 4
  %241 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.79, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %240, i8* %241, i8* %101) #12
  br label %245

; <label>:242:                                    ; preds = %234
  br i1 %165, label %245, label %243

; <label>:243:                                    ; preds = %242
  %244 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %244, i8* %101) #12
  br label %245

; <label>:245:                                    ; preds = %243, %242, %238
  %246 = phi i8 [ %94, %238 ], [ %94, %243 ], [ 0, %242 ]
  %247 = phi i8 [ 0, %238 ], [ %235, %243 ], [ %235, %242 ]
  %248 = icmp sgt i32 %164, -1
  br i1 %248, label %249, label %259

; <label>:249:                                    ; preds = %245
  %250 = call fastcc i32 @dosync(i32 %164, i8* %160) #12
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i8 %247, i8 0
  %253 = call i32 @close(i32 %164) #12
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %259, label %255

; <label>:255:                                    ; preds = %249
  %256 = tail call i32* @__errno_location() #1
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %257, i8* %258, i8* %160) #12
  br label %259

; <label>:259:                                    ; preds = %255, %249, %245
  %260 = phi i8 [ 0, %255 ], [ %252, %249 ], [ %247, %245 ]
  call void @free(i8* %155) #12
  call void @free(i8* %158) #12
  call void @free(i8* %160) #12
  %261 = and i8 %260, 1
  %262 = icmp ne i8 %261, 0
  br label %263

; <label>:263:                                    ; preds = %259, %152, %151, %147, %139, %122, %120, %113
  %264 = phi i8 [ %94, %113 ], [ %94, %120 ], [ %94, %122 ], [ %94, %139 ], [ %246, %259 ], [ %94, %152 ], [ %94, %151 ], [ %94, %147 ]
  %265 = phi i32 [ %95, %113 ], [ %95, %120 ], [ %95, %122 ], [ %95, %139 ], [ %21, %259 ], [ 0, %152 ], [ %95, %151 ], [ %95, %147 ]
  %266 = phi i1 [ false, %113 ], [ false, %120 ], [ %123, %122 ], [ false, %139 ], [ %262, %259 ], [ true, %152 ], [ false, %151 ], [ false, %147 ]
  %267 = zext i1 %266 to i8
  %268 = and i8 %267, %97
  call void @free(i8* %101) #12
  %269 = add nuw nsw i64 %96, 1
  %270 = icmp slt i64 %269, %89
  br i1 %270, label %93, label %271

; <label>:271:                                    ; preds = %263
  %272 = xor i8 %268, 1
  %273 = zext i8 %272 to i32
  br label %274

; <label>:274:                                    ; preds = %271, %84
  %275 = phi i32 [ 0, %84 ], [ %273, %271 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #12
  ret i32 %275
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @clear_random_data() #6 {
  %1 = load %struct.randint_source*, %struct.randint_source** @randint_source, align 8
  %2 = tail call i32 @randint_all_free(%struct.randint_source* %1) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @do_wipefd(i32, i8*, %struct.randint_source*, %struct.Options* nocapture readonly) unnamed_addr #6 {
  %5 = alloca %struct.mtop, align 4
  %6 = alloca [7 x i8], align 1
  %7 = alloca [652 x i8], align 16
  %8 = alloca [21 x i8], align 16
  %9 = alloca [652 x i8], align 16
  %10 = alloca [652 x i8], align 16
  %11 = alloca %struct.stat, align 8
  %12 = bitcast %struct.stat* %11 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %12) #12
  %13 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 4
  %14 = load i8, i8* %13, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 6
  %20 = load i8, i8* %19, align 2
  %21 = zext i8 %20 to i64
  %22 = add i64 %21, %18
  br label %23

; <label>:23:                                     ; preds = %4, %16
  %24 = phi i64 [ %22, %16 ], [ 0, %4 ]
  %25 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %11) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = tail call i32* @__errno_location() #1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %29, i8* %30, i8* %1) #12
  br label %594

; <label>:31:                                     ; preds = %23
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 61440
  %35 = icmp eq i32 %34, 8192
  br i1 %35, label %36, label %41

; <label>:36:                                     ; preds = %31
  %37 = call i32 @isatty(i32 %0) #12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %32, align 8
  br label %41

; <label>:41:                                     ; preds = %39, %31
  %42 = phi i32 [ %40, %39 ], [ %33, %31 ]
  %43 = trunc i32 %42 to i16
  %44 = and i16 %43, -4096
  switch i16 %44, label %53 [
    i16 4096, label %45
    i16 -16384, label %45
    i16 -32768, label %47
  ]

; <label>:45:                                     ; preds = %41, %41, %36
  %46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %1) #12
  br label %594

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %47
  %52 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %52, i8* %1) #12
  br label %594

; <label>:53:                                     ; preds = %41, %47
  %54 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %55, 2305843009213693951
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  call void @xalloc_die() #14
  unreachable

; <label>:58:                                     ; preds = %53
  %59 = shl i64 %55, 2
  %60 = call noalias i8* @xmalloc(i64 %59) #12
  %61 = bitcast i8* %60 to i32*
  %62 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, -1
  %65 = load i32, i32* %32, align 8
  %66 = and i32 %65, 61440
  %67 = icmp eq i32 %66, 32768
  br i1 %64, label %68, label %98

; <label>:68:                                     ; preds = %58
  br i1 %67, label %69, label %94

; <label>:69:                                     ; preds = %68
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 5
  %73 = load i8, i8* %72, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %112

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 9
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  %79 = icmp ult i64 %77, 2305843009213693953
  %80 = and i1 %78, %79
  %81 = select i1 %80, i64 %77, i64 512
  %82 = srem i64 %71, %81
  %83 = icmp eq i64 %71, 0
  %84 = icmp slt i64 %71, %81
  %85 = select i1 %84, i64 %71, i64 0
  %86 = select i1 %83, i64 0, i64 %85
  %87 = icmp eq i64 %82, 0
  br i1 %87, label %112, label %88

; <label>:88:                                     ; preds = %75
  %89 = sub nsw i64 %81, %82
  %90 = sub nsw i64 9223372036854775807, %71
  %91 = icmp slt i64 %89, %90
  %92 = select i1 %91, i64 %89, i64 %90
  %93 = add nsw i64 %92, %71
  br label %112

; <label>:94:                                     ; preds = %68
  %95 = call i64 @lseek(i32 %0, i64 0, i32 2) #12
  %96 = icmp slt i64 %95, 1
  %97 = select i1 %96, i64 -1, i64 %95
  br label %112

; <label>:98:                                     ; preds = %58
  br i1 %67, label %99, label %112

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  %105 = icmp ult i64 %103, 2305843009213693953
  %106 = and i1 %104, %105
  %107 = select i1 %106, i64 %103, i64 512
  %108 = icmp slt i64 %107, %63
  %109 = select i1 %108, i64 %107, i64 %63
  %110 = icmp slt i64 %101, %109
  %111 = select i1 %110, i64 %101, i64 0
  br label %112

; <label>:112:                                    ; preds = %99, %88, %75, %69, %98, %94
  %113 = phi i64 [ 0, %69 ], [ 0, %94 ], [ 0, %98 ], [ %86, %75 ], [ %86, %88 ], [ %111, %99 ]
  %114 = phi i64 [ %71, %69 ], [ %97, %94 ], [ %63, %98 ], [ %71, %75 ], [ %93, %88 ], [ %63, %99 ]
  %115 = load i64, i64* %54, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %215, label %117

; <label>:117:                                    ; preds = %112
  br label %118

; <label>:118:                                    ; preds = %117, %146
  %119 = phi i32* [ %150, %146 ], [ getelementptr inbounds ([55 x i32], [55 x i32]* @patterns, i64 0, i64 0), %117 ]
  %120 = phi i32* [ %151, %146 ], [ %61, %117 ]
  %121 = phi i64 [ %152, %146 ], [ %115, %117 ]
  %122 = phi i64 [ %126, %146 ], [ 0, %117 ]
  br label %123

; <label>:123:                                    ; preds = %140, %118
  %124 = phi i32* [ %119, %118 ], [ %132, %140 ]
  %125 = phi i64 [ %121, %118 ], [ %142, %140 ]
  %126 = phi i64 [ %122, %118 ], [ %141, %140 ]
  br label %127

; <label>:127:                                    ; preds = %127, %123
  %128 = phi i32* [ getelementptr inbounds ([55 x i32], [55 x i32]* @patterns, i64 0, i64 0), %127 ], [ %124, %123 ]
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %127, label %131

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds i32, i32* %128, i64 1
  %133 = icmp slt i32 %129, 0
  br i1 %133, label %134, label %143

; <label>:134:                                    ; preds = %131
  %135 = sub nsw i32 0, %129
  %136 = sext i32 %135 to i64
  %137 = icmp ugt i64 %125, %136
  br i1 %137, label %140, label %138

; <label>:138:                                    ; preds = %134
  %139 = add i64 %126, %125
  br label %181

; <label>:140:                                    ; preds = %134
  %141 = add i64 %136, %126
  %142 = sub i64 %125, %136
  br label %123

; <label>:143:                                    ; preds = %131
  %144 = sext i32 %129 to i64
  %145 = icmp ult i64 %125, %144
  br i1 %145, label %153, label %146

; <label>:146:                                    ; preds = %143
  %147 = bitcast i32* %120 to i8*
  %148 = bitcast i32* %132 to i8*
  %149 = shl nsw i64 %144, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 %149, i32 4, i1 false) #12
  %150 = getelementptr inbounds i32, i32* %132, i64 %144
  %151 = getelementptr inbounds i32, i32* %120, i64 %144
  %152 = sub i64 %125, %144
  br label %118

; <label>:153:                                    ; preds = %143
  %154 = icmp ult i64 %125, 2
  %155 = mul i64 %125, 3
  %156 = icmp ult i64 %155, %144
  %157 = or i1 %154, %156
  br i1 %157, label %159, label %158

; <label>:158:                                    ; preds = %153
  br label %161

; <label>:159:                                    ; preds = %153
  %160 = add i64 %126, %125
  br label %181

; <label>:161:                                    ; preds = %158, %175
  %162 = phi i64 [ %167, %175 ], [ %144, %158 ]
  %163 = phi i32* [ %178, %175 ], [ %132, %158 ]
  %164 = phi i32* [ %176, %175 ], [ %120, %158 ]
  %165 = phi i64 [ %177, %175 ], [ %125, %158 ]
  %166 = icmp eq i64 %165, %162
  %167 = add i64 %162, -1
  br i1 %166, label %171, label %168

; <label>:168:                                    ; preds = %161
  %169 = call i64 @randint_genmax(%struct.randint_source* %2, i64 %167) #12
  %170 = icmp ult i64 %169, %165
  br i1 %170, label %171, label %175

; <label>:171:                                    ; preds = %168, %161
  %172 = load i32, i32* %163, align 4
  %173 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %172, i32* %164, align 4
  %174 = add i64 %165, -1
  br label %175

; <label>:175:                                    ; preds = %171, %168
  %176 = phi i32* [ %173, %171 ], [ %164, %168 ]
  %177 = phi i64 [ %174, %171 ], [ %165, %168 ]
  %178 = getelementptr inbounds i32, i32* %163, i64 1
  %179 = icmp eq i64 %177, 0
  br i1 %179, label %180, label %161

; <label>:180:                                    ; preds = %175
  br label %181

; <label>:181:                                    ; preds = %180, %159, %138
  %182 = phi i64 [ %139, %138 ], [ %160, %159 ], [ %126, %180 ]
  %183 = add i64 %182, -1
  %184 = sub i64 %115, %182
  %185 = add i64 %115, -1
  br label %186

; <label>:186:                                    ; preds = %206, %181
  %187 = phi i64 [ %184, %181 ], [ %208, %206 ]
  %188 = phi i64 [ %183, %181 ], [ %211, %206 ]
  %189 = phi i64 [ 0, %181 ], [ %212, %206 ]
  %190 = icmp ugt i64 %188, %183
  br i1 %190, label %197, label %191

; <label>:191:                                    ; preds = %186
  %192 = add i64 %185, %188
  %193 = getelementptr inbounds i32, i32* %61, i64 %189
  %194 = load i32, i32* %193, align 4
  %195 = add i64 %187, 1
  %196 = getelementptr inbounds i32, i32* %61, i64 %187
  store i32 %194, i32* %196, align 4
  br label %206

; <label>:197:                                    ; preds = %186
  %198 = xor i64 %189, -1
  %199 = add i64 %187, %198
  %200 = call i64 @randint_genmax(%struct.randint_source* %2, i64 %199) #12
  %201 = add i64 %200, %189
  %202 = getelementptr inbounds i32, i32* %61, i64 %189
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds i32, i32* %61, i64 %201
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %202, align 4
  br label %206

; <label>:206:                                    ; preds = %197, %191
  %207 = phi i64 [ %192, %191 ], [ %188, %197 ]
  %208 = phi i64 [ %195, %191 ], [ %187, %197 ]
  %209 = phi i32* [ %193, %191 ], [ %204, %197 ]
  %210 = phi i32 [ -1, %191 ], [ %203, %197 ]
  store i32 %210, i32* %209, align 4
  %211 = sub i64 %207, %183
  %212 = add nuw i64 %189, 1
  %213 = icmp eq i64 %212, %115
  br i1 %213, label %214, label %186

; <label>:214:                                    ; preds = %206
  br label %215

; <label>:215:                                    ; preds = %214, %112
  %216 = call %struct.randread_source* @randint_get_source(%struct.randint_source* %2) #9
  %217 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 6
  %218 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %219 = getelementptr inbounds [652 x i8], [652 x i8]* %7, i64 0, i64 0
  %220 = bitcast %struct.mtop* %5 to i8*
  %221 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i64 0, i32 0
  %222 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i64 0, i32 1
  %223 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  %224 = getelementptr inbounds [652 x i8], [652 x i8]* %9, i64 0, i64 0
  %225 = getelementptr inbounds [652 x i8], [652 x i8]* %10, i64 0, i64 0
  br label %227

; <label>:226:                                    ; preds = %239
  br label %227

; <label>:227:                                    ; preds = %226, %215
  %228 = phi i8 [ 1, %215 ], [ %241, %226 ]
  %229 = phi i64 [ %113, %215 ], [ 0, %226 ]
  %230 = phi i64 [ %114, %215 ], [ %236, %226 ]
  %231 = icmp eq i64 %229, 0
  br i1 %231, label %232, label %234

; <label>:232:                                    ; preds = %227
  %233 = icmp eq i64 %230, 0
  br i1 %233, label %574, label %234

; <label>:234:                                    ; preds = %232, %227
  %235 = phi i64 [ %229, %227 ], [ %230, %232 ]
  %236 = phi i64 [ %230, %227 ], [ 0, %232 ]
  %237 = phi i64 [ 0, %227 ], [ %24, %232 ]
  %238 = icmp ne i64 %237, 0
  br label %239

; <label>:239:                                    ; preds = %565, %234
  %240 = phi i64 [ %235, %234 ], [ %566, %565 ]
  %241 = phi i8 [ %228, %234 ], [ %573, %565 ]
  %242 = phi i64 [ 0, %234 ], [ %255, %565 ]
  %243 = load i64, i64* %54, align 8
  %244 = load i8, i8* %217, align 2
  %245 = zext i8 %244 to i64
  %246 = add i64 %245, %243
  %247 = icmp ult i64 %242, %246
  br i1 %247, label %248, label %226

; <label>:248:                                    ; preds = %239
  %249 = icmp ult i64 %242, %243
  br i1 %249, label %250, label %253

; <label>:250:                                    ; preds = %248
  %251 = getelementptr inbounds i32, i32* %61, i64 %242
  %252 = load i32, i32* %251, align 4
  br label %253

; <label>:253:                                    ; preds = %248, %250
  %254 = phi i32 [ %252, %250 ], [ 0, %248 ]
  %255 = add i64 %242, 1
  %256 = tail call i32 @getpagesize() #1
  %257 = sext i32 %256 to i64
  %258 = icmp slt i32 %254, 1
  br i1 %258, label %272, label %259

; <label>:259:                                    ; preds = %253
  %260 = and i32 %254, 4095
  %261 = shl nuw nsw i32 %260, 12
  %262 = or i32 %261, %260
  %263 = lshr i32 %254, 4
  %264 = lshr i32 %262, 8
  %265 = and i32 %263, 255
  %266 = and i32 %264, 255
  %267 = and i32 %254, 255
  %268 = icmp ne i32 %265, %267
  %269 = icmp ne i32 %265, %266
  %270 = or i1 %268, %269
  %271 = select i1 %270, i64 61440, i64 65536
  br label %272

; <label>:272:                                    ; preds = %259, %253
  %273 = phi i64 [ 65536, %253 ], [ %271, %259 ]
  %274 = add nsw i64 %257, -1
  %275 = or i64 %273, 2
  %276 = urem i64 %275, 3
  %277 = sub nsw i64 %275, %276
  %278 = add nsw i64 %274, %277
  %279 = call noalias i8* @xmalloc(i64 %278) #12
  %280 = getelementptr inbounds i8, i8* %279, i64 %257
  %281 = getelementptr inbounds i8, i8* %280, i64 -1
  %282 = ptrtoint i8* %281 to i64
  %283 = urem i64 %282, %257
  %284 = sub i64 0, %283
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  call void @llvm.lifetime.start(i64 7, i8* nonnull %218) #12
  call void @llvm.lifetime.start(i64 652, i8* nonnull %219) #12
  %286 = icmp sgt i64 %240, 0
  %287 = icmp ult i64 %240, %273
  %288 = and i1 %286, %287
  %289 = zext i1 %288 to i8
  br i1 %288, label %298, label %290

; <label>:290:                                    ; preds = %272
  %291 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 3) #12
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %298

; <label>:293:                                    ; preds = %290
  %294 = or i32 %291, 16384
  %295 = icmp eq i32 %294, %291
  br i1 %295, label %298, label %296

; <label>:296:                                    ; preds = %293
  %297 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 4, i32 %294) #12
  br label %298

; <label>:298:                                    ; preds = %296, %293, %290, %272
  %299 = load i32, i32* %32, align 8
  %300 = and i32 %299, 61440
  %301 = icmp eq i32 %300, 8192
  br i1 %301, label %302, label %305

; <label>:302:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %220) #12
  store i16 6, i16* %221, align 4
  store i32 1, i32* %222, align 4
  %303 = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 1074294017, %struct.mtop* nonnull %5) #12
  %304 = icmp eq i32 %303, 0
  call void @llvm.lifetime.end(i64 8, i8* nonnull %220) #12
  br i1 %304, label %318, label %305

; <label>:305:                                    ; preds = %302, %298
  %306 = call i64 @lseek(i32 %0, i64 0, i32 0) #12
  %307 = icmp sgt i64 %306, 0
  br i1 %307, label %308, label %310

; <label>:308:                                    ; preds = %305
  %309 = tail call i32* @__errno_location() #1
  store i32 22, i32* %309, align 4
  br label %315

; <label>:310:                                    ; preds = %305
  %311 = icmp eq i64 %306, 0
  br i1 %311, label %318, label %312

; <label>:312:                                    ; preds = %310
  %313 = tail call i32* @__errno_location() #1
  %314 = load i32, i32* %313, align 4
  br label %315

; <label>:315:                                    ; preds = %312, %308
  %316 = phi i32 [ %314, %312 ], [ 22, %308 ]
  %317 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %316, i8* %317, i8* %1) #12
  br label %565

; <label>:318:                                    ; preds = %310, %302
  %319 = icmp sgt i32 %254, -1
  br i1 %319, label %320, label %376

; <label>:320:                                    ; preds = %318
  %321 = icmp sgt i64 %240, -1
  %322 = icmp ult i64 %240, %277
  %323 = and i1 %321, %322
  %324 = select i1 %323, i64 %240, i64 %277
  %325 = and i32 %254, 4095
  %326 = shl nuw nsw i32 %325, 12
  %327 = or i32 %326, %325
  %328 = lshr i32 %254, 4
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %285, align 1
  %330 = lshr i32 %327, 8
  %331 = trunc i32 %330 to i8
  %332 = getelementptr inbounds i8, i8* %285, i64 1
  store i8 %331, i8* %332, align 1
  %333 = trunc i32 %254 to i8
  %334 = getelementptr inbounds i8, i8* %285, i64 2
  store i8 %333, i8* %334, align 1
  %335 = lshr i64 %324, 1
  %336 = icmp ugt i64 %324, 7
  br i1 %336, label %337, label %344

; <label>:337:                                    ; preds = %320
  br label %338

; <label>:338:                                    ; preds = %337, %338
  %339 = phi i64 [ %341, %338 ], [ 3, %337 ]
  %340 = getelementptr inbounds i8, i8* %285, i64 %339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %340, i8* %285, i64 %339, i32 1, i1 false) #12
  %341 = shl i64 %339, 1
  %342 = icmp ult i64 %341, %335
  br i1 %342, label %338, label %343

; <label>:343:                                    ; preds = %338
  br label %344

; <label>:344:                                    ; preds = %343, %320
  %345 = phi i64 [ 3, %320 ], [ %341, %343 ]
  %346 = icmp ugt i64 %324, %345
  br i1 %346, label %347, label %350

; <label>:347:                                    ; preds = %344
  %348 = getelementptr inbounds i8, i8* %285, i64 %345
  %349 = sub i64 %324, %345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %348, i8* %285, i64 %349, i32 1, i1 false) #12
  br label %350

; <label>:350:                                    ; preds = %347, %344
  %351 = and i32 %254, 4096
  %352 = icmp ne i32 %351, 0
  %353 = icmp ne i64 %324, 0
  %354 = and i1 %352, %353
  br i1 %354, label %355, label %368

; <label>:355:                                    ; preds = %350
  %356 = xor i8 %329, -128
  store i8 %356, i8* %285, align 1
  %357 = icmp ugt i64 %324, 512
  br i1 %357, label %358, label %368

; <label>:358:                                    ; preds = %355
  br label %359

; <label>:359:                                    ; preds = %358, %359
  %360 = phi i64 [ %364, %359 ], [ 512, %358 ]
  %361 = getelementptr inbounds i8, i8* %285, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = xor i8 %362, -128
  store i8 %363, i8* %361, align 1
  %364 = add i64 %360, 512
  %365 = icmp ult i64 %364, %324
  br i1 %365, label %359, label %366

; <label>:366:                                    ; preds = %359
  %367 = load i8, i8* %285, align 1
  br label %368

; <label>:368:                                    ; preds = %366, %355, %350
  %369 = phi i8 [ %367, %366 ], [ %356, %355 ], [ %329, %350 ]
  %370 = zext i8 %369 to i32
  %371 = load i8, i8* %332, align 1
  %372 = zext i8 %371 to i32
  %373 = load i8, i8* %334, align 1
  %374 = zext i8 %373 to i32
  %375 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %218, i32 1, i64 7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.71, i64 0, i64 0), i32 %370, i32 %372, i32 %374) #12
  br label %377

; <label>:376:                                    ; preds = %318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i64 0, i64 0), i64 7, i32 1, i1 false) #12
  br label %377

; <label>:377:                                    ; preds = %376, %368
  br i1 %238, label %378, label %382

; <label>:378:                                    ; preds = %377
  %379 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %379, i8* %1, i64 %255, i64 %237, i8* nonnull %218) #12
  %380 = call i64 @time(i64* null) #12
  %381 = add nsw i64 %380, 5
  br label %382

; <label>:382:                                    ; preds = %378, %377
  %383 = phi i64 [ undef, %377 ], [ %381, %378 ]
  %384 = icmp slt i32 %254, 0
  br label %385

; <label>:385:                                    ; preds = %551, %382
  %386 = phi i64 [ %240, %382 ], [ %494, %551 ]
  %387 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %382 ], [ %552, %551 ]
  %388 = phi i8 [ %289, %382 ], [ %495, %551 ]
  %389 = phi i8 [ 0, %382 ], [ %553, %551 ]
  %390 = phi i64 [ 0, %382 ], [ %516, %551 ]
  %391 = phi i64 [ %383, %382 ], [ %554, %551 ]
  %392 = phi i64 [ 0, %382 ], [ %515, %551 ]
  %393 = phi i64 [ %240, %382 ], [ %498, %551 ]
  br label %394

; <label>:394:                                    ; preds = %510, %385
  %395 = phi i64 [ %386, %385 ], [ %494, %510 ]
  %396 = phi i8 [ %388, %385 ], [ %495, %510 ]
  %397 = phi i8 [ %389, %385 ], [ %496, %510 ]
  %398 = phi i64 [ %390, %385 ], [ %511, %510 ]
  %399 = phi i64 [ %392, %385 ], [ %504, %510 ]
  %400 = phi i64 [ %393, %385 ], [ %498, %510 ]
  br label %401

; <label>:401:                                    ; preds = %503, %394
  %402 = phi i64 [ %395, %394 ], [ %494, %503 ]
  %403 = phi i8 [ %396, %394 ], [ %495, %503 ]
  %404 = phi i8 [ %397, %394 ], [ %496, %503 ]
  %405 = phi i64 [ %399, %394 ], [ %504, %503 ]
  %406 = phi i64 [ %400, %394 ], [ %498, %503 ]
  %407 = icmp sgt i64 %406, -1
  br i1 %407, label %408, label %415

; <label>:408:                                    ; preds = %401
  %409 = sub nsw i64 %406, %405
  %410 = icmp ult i64 %409, %273
  br i1 %410, label %411, label %415

; <label>:411:                                    ; preds = %408
  %412 = icmp slt i64 %406, %405
  %413 = icmp eq i64 %409, 0
  %414 = or i1 %412, %413
  br i1 %414, label %556, label %415

; <label>:415:                                    ; preds = %411, %408, %401
  %416 = phi i64 [ %273, %408 ], [ %273, %401 ], [ %409, %411 ]
  br i1 %384, label %417, label %418

; <label>:417:                                    ; preds = %415
  call void @randread(%struct.randread_source* %216, i8* %285, i64 %416) #12
  br label %418

; <label>:418:                                    ; preds = %417, %415
  %419 = icmp eq i64 %416, 0
  br i1 %419, label %493, label %420

; <label>:420:                                    ; preds = %418
  %421 = xor i1 %407, true
  br label %422

; <label>:422:                                    ; preds = %486, %420
  %423 = phi i64 [ 0, %420 ], [ %490, %486 ]
  %424 = phi i8 [ %404, %420 ], [ %488, %486 ]
  %425 = phi i8 [ %403, %420 ], [ %487, %486 ]
  %426 = getelementptr inbounds i8, i8* %285, i64 %423
  %427 = sub i64 %416, %423
  %428 = call i64 @write(i32 %0, i8* %426, i64 %427) #12
  %429 = icmp sgt i64 %428, 0
  br i1 %429, label %486, label %430

; <label>:430:                                    ; preds = %422
  br i1 %407, label %431, label %434

; <label>:431:                                    ; preds = %430
  %432 = tail call i32* @__errno_location() #1
  %433 = load i32, i32* %432, align 4
  br label %446

; <label>:434:                                    ; preds = %430
  %435 = icmp eq i64 %428, 0
  br i1 %435, label %440, label %436

; <label>:436:                                    ; preds = %434
  %437 = tail call i32* @__errno_location() #1
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 28
  br i1 %439, label %440, label %446

; <label>:440:                                    ; preds = %436, %434
  %441 = sub nsw i64 9223372036854775807, %405
  %442 = icmp ugt i64 %423, %441
  %443 = add i64 %423, %405
  %444 = select i1 %442, i64 %402, i64 %443
  %445 = select i1 %442, i64 %406, i64 %443
  br label %493

; <label>:446:                                    ; preds = %436, %431
  %447 = phi i32 [ %433, %431 ], [ %438, %436 ]
  %448 = phi i32* [ %432, %431 ], [ %437, %436 ]
  call void @llvm.lifetime.start(i64 21, i8* nonnull %223) #12
  %449 = and i8 %425, 1
  %450 = icmp eq i8 %449, 0
  %451 = icmp eq i32 %447, 22
  %452 = and i1 %450, %451
  br i1 %452, label %453, label %461

; <label>:453:                                    ; preds = %446
  %454 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 3) #12
  %455 = icmp sgt i32 %454, 0
  br i1 %455, label %456, label %480

; <label>:456:                                    ; preds = %453
  %457 = and i32 %454, -16385
  %458 = icmp eq i32 %457, %454
  br i1 %458, label %480, label %459

; <label>:459:                                    ; preds = %456
  %460 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 4, i32 %457) #12
  br label %480

; <label>:461:                                    ; preds = %446
  %462 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.66, i64 0, i64 0), i32 5) #12
  %463 = add i64 %423, %405
  %464 = call i8* @umaxtostr(i64 %463, i8* nonnull %223) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %447, i8* %462, i8* %1, i8* %464) #12
  %465 = icmp ne i32 %447, 5
  %466 = or i1 %465, %421
  br i1 %466, label %484, label %467

; <label>:467:                                    ; preds = %461
  %468 = or i64 %423, 511
  %469 = icmp ult i64 %468, %416
  br i1 %469, label %470, label %484

; <label>:470:                                    ; preds = %467
  %471 = add i64 %468, 1
  %472 = add i64 %471, %405
  %473 = call i64 @lseek(i32 %0, i64 %472, i32 0) #12
  %474 = icmp eq i64 %473, -1
  br i1 %474, label %475, label %478

; <label>:475:                                    ; preds = %470
  %476 = load i32, i32* %448, align 4
  %477 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %476, i8* %477, i8* %1) #12
  br label %485

; <label>:478:                                    ; preds = %470
  %479 = sub i64 %471, %423
  br label %480

; <label>:480:                                    ; preds = %478, %459, %456, %453
  %481 = phi i8 [ 1, %459 ], [ 1, %456 ], [ 1, %453 ], [ %425, %478 ]
  %482 = phi i8 [ %424, %459 ], [ %424, %456 ], [ %424, %453 ], [ 1, %478 ]
  %483 = phi i64 [ 0, %459 ], [ 0, %456 ], [ 0, %453 ], [ %479, %478 ]
  call void @llvm.lifetime.end(i64 21, i8* nonnull %223) #12
  br label %486

; <label>:484:                                    ; preds = %461, %467
  br label %485

; <label>:485:                                    ; preds = %484, %475
  call void @llvm.lifetime.end(i64 21, i8* nonnull %223) #12
  br label %565

; <label>:486:                                    ; preds = %480, %422
  %487 = phi i8 [ %425, %422 ], [ %481, %480 ]
  %488 = phi i8 [ %424, %422 ], [ %482, %480 ]
  %489 = phi i64 [ %428, %422 ], [ %483, %480 ]
  %490 = add i64 %489, %423
  %491 = icmp ugt i64 %416, %490
  br i1 %491, label %422, label %492

; <label>:492:                                    ; preds = %486
  br label %493

; <label>:493:                                    ; preds = %492, %440, %418
  %494 = phi i64 [ %402, %418 ], [ %444, %440 ], [ %402, %492 ]
  %495 = phi i8 [ %403, %418 ], [ %425, %440 ], [ %487, %492 ]
  %496 = phi i8 [ %404, %418 ], [ %424, %440 ], [ %488, %492 ]
  %497 = phi i64 [ 0, %418 ], [ %423, %440 ], [ %490, %492 ]
  %498 = phi i64 [ %406, %418 ], [ %445, %440 ], [ %406, %492 ]
  %499 = sub nsw i64 9223372036854775807, %405
  %500 = icmp ult i64 %499, %497
  br i1 %500, label %501, label %503

; <label>:501:                                    ; preds = %493
  %502 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.68, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %502, i8* %1) #12
  br label %565

; <label>:503:                                    ; preds = %493
  %504 = add i64 %497, %405
  br i1 %238, label %505, label %401

; <label>:505:                                    ; preds = %503
  %506 = icmp eq i64 %504, %498
  br i1 %506, label %507, label %510

; <label>:507:                                    ; preds = %505
  %508 = load i8, i8* %387, align 1
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %513

; <label>:510:                                    ; preds = %507, %505
  %511 = call i64 @time(i64* null) #12
  %512 = icmp sgt i64 %391, %511
  br i1 %512, label %394, label %513

; <label>:513:                                    ; preds = %510, %507
  %514 = phi i1 [ true, %507 ], [ %506, %510 ]
  %515 = phi i64 [ %498, %507 ], [ %504, %510 ]
  %516 = phi i64 [ %398, %507 ], [ %511, %510 ]
  call void @llvm.lifetime.start(i64 652, i8* nonnull %224) #12
  call void @llvm.lifetime.start(i64 652, i8* nonnull %225) #12
  %517 = call i8* @human_readable(i64 %515, i8* nonnull %224, i32 434, i64 1, i64 1) #12
  br i1 %514, label %521, label %518

; <label>:518:                                    ; preds = %513
  %519 = call i32 @strcmp(i8* %387, i8* %517) #12
  %520 = icmp eq i32 %519, 0
  br i1 %520, label %551, label %521

; <label>:521:                                    ; preds = %518, %513
  %522 = icmp sgt i64 %498, -1
  br i1 %522, label %525, label %523

; <label>:523:                                    ; preds = %521
  %524 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %524, i8* %1, i64 %255, i64 %237, i8* nonnull %218, i8* %517) #12
  br label %541

; <label>:525:                                    ; preds = %521
  %526 = icmp eq i64 %498, 0
  br i1 %526, label %535, label %527

; <label>:527:                                    ; preds = %525
  %528 = icmp ult i64 %515, 184467440737095517
  br i1 %528, label %529, label %532

; <label>:529:                                    ; preds = %527
  %530 = mul i64 %515, 100
  %531 = udiv i64 %530, %498
  br label %535

; <label>:532:                                    ; preds = %527
  %533 = udiv i64 %498, 100
  %534 = udiv i64 %515, %533
  br label %535

; <label>:535:                                    ; preds = %532, %529, %525
  %536 = phi i64 [ 100, %525 ], [ %531, %529 ], [ %534, %532 ]
  %537 = trunc i64 %536 to i32
  %538 = call i8* @human_readable(i64 %498, i8* nonnull %225, i32 432, i64 1, i64 1) #12
  %539 = select i1 %514, i8* %538, i8* %517
  %540 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %540, i8* %1, i64 %255, i64 %237, i8* nonnull %218, i8* %539, i8* %538, i32 %537) #12
  br label %541

; <label>:541:                                    ; preds = %535, %523
  %542 = phi i8* [ %539, %535 ], [ %517, %523 ]
  %543 = call i8* @__strcpy_chk(i8* nonnull %219, i8* nonnull %542, i64 652) #12
  %544 = add nsw i64 %516, 5
  %545 = call fastcc i32 @dosync(i32 %0, i8* %1) #12
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %551, label %547

; <label>:547:                                    ; preds = %541
  %548 = tail call i32* @__errno_location() #1
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 5
  br i1 %550, label %551, label %555

; <label>:551:                                    ; preds = %547, %541, %518
  %552 = phi i8* [ %219, %541 ], [ %387, %518 ], [ %219, %547 ]
  %553 = phi i8 [ %496, %541 ], [ %496, %518 ], [ 1, %547 ]
  %554 = phi i64 [ %544, %541 ], [ %391, %518 ], [ %544, %547 ]
  call void @llvm.lifetime.end(i64 652, i8* nonnull %225) #12
  call void @llvm.lifetime.end(i64 652, i8* nonnull %224) #12
  br label %385

; <label>:555:                                    ; preds = %547
  call void @llvm.lifetime.end(i64 652, i8* nonnull %225) #12
  call void @llvm.lifetime.end(i64 652, i8* nonnull %224) #12
  br label %565

; <label>:556:                                    ; preds = %411
  %557 = call fastcc i32 @dosync(i32 %0, i8* %1) #12
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

; <label>:559:                                    ; preds = %556
  %560 = tail call i32* @__errno_location() #1
  %561 = load i32, i32* %560, align 4
  %562 = icmp eq i32 %561, 5
  %563 = xor i1 %562, true
  %564 = select i1 %562, i8 1, i8 %404
  br label %565

; <label>:565:                                    ; preds = %315, %485, %501, %555, %556, %559
  %566 = phi i64 [ %402, %556 ], [ %402, %559 ], [ %494, %501 ], [ %494, %555 ], [ %402, %485 ], [ %240, %315 ]
  %567 = phi i1 [ false, %556 ], [ %563, %559 ], [ true, %501 ], [ true, %555 ], [ true, %485 ], [ true, %315 ]
  %568 = phi i8 [ %404, %556 ], [ %564, %559 ], [ %496, %501 ], [ %496, %555 ], [ %424, %485 ], [ 0, %315 ]
  call void @free(i8* %279) #12
  %569 = and i8 %568, 1
  call void @llvm.lifetime.end(i64 652, i8* nonnull %219) #12
  call void @llvm.lifetime.end(i64 7, i8* nonnull %218) #12
  %570 = icmp eq i8 %569, 0
  %571 = xor i1 %567, true
  %572 = and i1 %570, %571
  %573 = select i1 %572, i8 %241, i8 0
  br i1 %567, label %589, label %239

; <label>:574:                                    ; preds = %232
  %575 = getelementptr inbounds %struct.Options, %struct.Options* %3, i64 0, i32 3
  %576 = load i32, i32* %575, align 8
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %590, label %578

; <label>:578:                                    ; preds = %574
  %579 = call i32 @ftruncate(i32 %0, i64 0) #12
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %590, label %581

; <label>:581:                                    ; preds = %578
  %582 = load i32, i32* %32, align 8
  %583 = and i32 %582, 61440
  %584 = icmp eq i32 %583, 32768
  br i1 %584, label %585, label %590

; <label>:585:                                    ; preds = %581
  %586 = tail call i32* @__errno_location() #1
  %587 = load i32, i32* %586, align 4
  %588 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %587, i8* %588, i8* %1) #12
  br label %590

; <label>:589:                                    ; preds = %565
  br label %590

; <label>:590:                                    ; preds = %589, %578, %574, %581, %585
  %591 = phi i8 [ 0, %585 ], [ %228, %581 ], [ %228, %578 ], [ %228, %574 ], [ 0, %589 ]
  call void @free(i8* %60) #12
  %592 = and i8 %591, 1
  %593 = icmp ne i8 %592, 0
  br label %594

; <label>:594:                                    ; preds = %590, %51, %45, %27
  %595 = phi i1 [ false, %27 ], [ false, %45 ], [ false, %51 ], [ %593, %590 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %12) #12
  ret i1 %595
}

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rename(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @dosync(i32, i8*) unnamed_addr #6 {
  %3 = tail call i32 @fdatasync(i32 %0) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = add i32 %7, -9
  %9 = icmp ult i32 %8, 14
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %5
  %11 = trunc i32 %8 to i14
  %12 = lshr i14 -4095, %11
  %13 = and i14 %12, 1
  %14 = icmp eq i14 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %10, %5
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %16, i8* %1) #12
  store i32 %7, i32* %6, align 4
  br label %32

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @fsync(i32 %0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, -9
  %23 = icmp ult i32 %22, 14
  br i1 %23, label %24, label %29

; <label>:24:                                     ; preds = %20
  %25 = trunc i32 %22 to i14
  %26 = lshr i14 -4095, %25
  %27 = and i14 %26, 1
  %28 = icmp eq i14 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %24, %20
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %21, i8* %30, i8* %1) #12
  store i32 %21, i32* %6, align 4
  br label %32

; <label>:31:                                     ; preds = %24
  tail call void @sync() #12
  br label %32

; <label>:32:                                     ; preds = %17, %2, %31, %29, %15
  %33 = phi i32 [ 0, %31 ], [ -1, %29 ], [ -1, %15 ], [ 0, %2 ], [ 0, %17 ]
  ret i32 %33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare i32 @fdatasync(i32) local_unnamed_addr #3

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @sync() local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

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
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.32, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.33, i64 0, i64 0), i32 5) #12
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
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.34, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.35, i64 0, i64 0), i8* %26) #12
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

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 {
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #9
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.32, i64 0, i64 0)
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.85, i64 0, i64 0), i8* %12) #12
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
define i8* @dir_name(i8*) local_unnamed_addr #6 {
  %2 = tail call i8* @mdir_name(i8* %0) #12
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:5:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #10 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* %0) #9
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
  %5 = tail call i8* @last_component(i8* %0) #9
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

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
  %2 = tail call i64 @strlen(i8* %0) #9
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

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

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
  %14 = tail call i64 @strlen(i8* %13) #9
  %15 = add i64 %14, -1
  %16 = icmp ult i64 %15, 16
  %17 = select i1 %16, i64 %14, i64 1
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0)
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i64 @strlen(i8* %22) #9
  %24 = icmp ult i64 %23, 17
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.101, i64 0, i64 0)
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
  %82 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.102, i64 0, i64 0), x86_fp80 %81) #12
  %83 = tail call i64 @strlen(i8* %1) #9
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
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.103, i64 0, i64 0), x86_fp80 %105) #12
  %107 = tail call i64 @strlen(i8* %1) #9
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
  %138 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.102, i64 0, i64 0), x86_fp80 %137) #12
  %139 = tail call i64 @strlen(i8* %1) #9
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
  %279 = tail call i64 @strlen(i8* %25) #9
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %16

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.104, i64 0, i64 0)) #12
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.105, i64 0, i64 0)) #12
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.106, i64 0, i64 0)) #12
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
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #9
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
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.107, i64 0, i64 0)) #12
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
  %77 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.106, i64 0, i64 0)) #12
  %78 = icmp ne i8* %77, null
  %79 = select i1 %78, i64 512, i64 1024
  store i64 %79, i64* %2, align 8
  br label %80

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ 4, %76 ], [ %73, %72 ]
  ret i32 %81
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

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
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.116, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.117, i64 0, i64 0), i64 7) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.118, i64 0, i64 0), i64 3) #9
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.129, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.130, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.131, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.131, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.131, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.130, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.130, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.130, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.131, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.132, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.133, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.134, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.135, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.131, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.130, i64 0, i64 0)
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
define noalias %struct.randint_source* @randint_new(%struct.randread_source*) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @xmalloc(i64 24) #12
  %3 = bitcast i8* %2 to %struct.randint_source*
  %4 = bitcast i8* %2 to %struct.randread_source**
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  ret %struct.randint_source* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_all_new(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #12
  %4 = icmp eq %struct.randread_source* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call noalias i8* @xmalloc(i64 24) #12
  %7 = bitcast i8* %6 to %struct.randint_source*
  %8 = bitcast i8* %6 to %struct.randread_source**
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8
  %9 = getelementptr inbounds i8, i8* %6, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false) #12
  br label %10

; <label>:10:                                     ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ]
  ret %struct.randint_source* %11
}

; Function Attrs: nounwind readonly sspstrong uwtable
define %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8
  ret %struct.randread_source* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @randint_genmax(%struct.randint_source* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %1, 1
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12

; <label>:12:                                     ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %51, %45 ]
  %14 = phi i64 [ %7, %2 ], [ %49, %45 ]
  %15 = icmp ult i64 %13, %1
  br i1 %15, label %16, label %39

; <label>:16:                                     ; preds = %12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #12
  br label %17

; <label>:17:                                     ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ]
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ]
  %20 = shl i64 %18, 8
  %21 = or i64 %20, 255
  %22 = add i64 %19, 1
  %23 = icmp ult i64 %21, %1
  br i1 %23, label %17, label %24

; <label>:24:                                     ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #12
  br label %25

; <label>:25:                                     ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ]
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ]
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ]
  %29 = shl i64 %28, 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = or i64 %32, %29
  %34 = shl i64 %27, 8
  %35 = or i64 %34, 255
  %36 = add i64 %26, 1
  %37 = icmp ult i64 %35, %1
  br i1 %37, label %25, label %38

; <label>:38:                                     ; preds = %25
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #12
  br label %39

; <label>:39:                                     ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ]
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ]
  %42 = icmp eq i64 %40, %1
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = bitcast i64* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false)
  br label %55

; <label>:45:                                     ; preds = %39
  %46 = sub i64 %40, %1
  %47 = urem i64 %46, %10
  %48 = sub i64 %40, %47
  %49 = urem i64 %41, %10
  %50 = icmp ugt i64 %41, %48
  %51 = add i64 %47, -1
  br i1 %50, label %12, label %52

; <label>:52:                                     ; preds = %45
  %53 = udiv i64 %41, %10
  store i64 %53, i64* %6, align 8
  %54 = udiv i64 %46, %10
  store i64 %54, i64* %8, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %43
  %56 = phi i64 [ %41, %43 ], [ %49, %52 ]
  ret i64 %56
}

; Function Attrs: nounwind sspstrong uwtable
define void @randint_free(%struct.randint_source* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.randint_source* %0 to i8*
  tail call void @free(i8* %2) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @randint_all_free(%struct.randint_source* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #12
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = bitcast %struct.randint_source* %0 to i8*
  tail call void @free(i8* %7) #12
  store i32 %6, i32* %5, align 4
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.timespec, align 8
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
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0)) #12
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
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.157, i64 0, i64 0), i32 0) #12
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
  %53 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %53) #12
  %54 = sub nsw i64 2048, %52
  %55 = icmp ult i64 %54, 16
  %56 = select i1 %55, i64 %54, i64 16
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, %struct.timezone* null) #12
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
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.158, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.159, i64 0, i64 0)
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #12
  %10 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #12
  br label %11

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

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
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1
  %39 = bitcast %union.anon.0* %38 to i8*
  %40 = sub i64 0, %35
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  br i1 %36, label %42, label %49

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0* %37 to i8*
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

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

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
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.171, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.172, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.173, i64 0, i64 0), i32 5) #12
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.174, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.175, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.176, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.177, i64 0, i64 0), i32 5) #12
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.178, i64 0, i64 0), i32 5) #12
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.179, i64 0, i64 0), i32 5) #12
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.180, i64 0, i64 0), i32 5) #12
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.181, i64 0, i64 0), i32 5) #12
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.182, i64 0, i64 0), i32 5) #12
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.183, i64 0, i64 0), i32 5) #12
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

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.186, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.187, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.188, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.189, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.190, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.191, i64 0, i64 0), i32 5) #12
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.204, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #14
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
  call void (i32, i32, i8*, ...) @error(i32 %29, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.208, i64 0, i64 0), i8* %5, i8* %33) #12
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
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #12
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.213, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.214, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
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
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.233, i64 0, i64 0)) #12
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
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.237, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.238, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.239, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.239, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.240, i64 0, i64 0)) #12
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.241, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.242, i64 0, i64 0), i8* %158
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
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
