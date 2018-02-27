; ModuleID = 'coreutils-8.27/src/stat.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.tm_zone = type { %struct.tm_zone*, i8, [0 x i8] }
%struct.mount_entry = type { i8*, i8*, i8*, i8*, i64, i8, %struct.mount_entry* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.saved_cwd = type { i32, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.mntent = type { i8*, i8*, i8*, i8*, i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Display file or file system status.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"  -L, --dereference     follow links\0A  -f, --file-system     display file system status instead of file status\0A\00", align 1
@.str.4 = private unnamed_addr constant [418 x i8] c"  -c  --format=FORMAT   use the specified FORMAT instead of the default;\0A                          output a newline after each use of FORMAT\0A      --printf=FORMAT   like --format, but interpret backslash escapes,\0A                          and do not output a mandatory trailing newline;\0A                          if you want a newline, include \5Cn in FORMAT\0A  -t, --terse           print the information in terse form\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [307 x i8] c"\0AThe valid format sequences for files (without --file-system):\0A\0A  %a   access rights in octal (note '#' and '0' printf flags)\0A  %A   access rights in human readable form\0A  %b   number of blocks allocated (see %B)\0A  %B   the size in bytes of each block reported by %b\0A  %C   SELinux security context string\0A\00", align 1
@.str.8 = private unnamed_addr constant [153 x i8] c"  %d   device number in decimal\0A  %D   device number in hex\0A  %f   raw mode in hex\0A  %F   file type\0A  %g   group ID of owner\0A  %G   group name of owner\0A\00", align 1
@.str.9 = private unnamed_addr constant [357 x i8] c"  %h   number of hard links\0A  %i   inode number\0A  %m   mount point\0A  %n   file name\0A  %N   quoted file name with dereference if symbolic link\0A  %o   optimal I/O transfer size hint\0A  %s   total size, in bytes\0A  %t   major device type in hex, for character/block device special files\0A  %T   minor device type in hex, for character/block device special files\0A\00", align 1
@.str.10 = private unnamed_addr constant [478 x i8] c"  %u   user ID of owner\0A  %U   user name of owner\0A  %w   time of file birth, human-readable; - if unknown\0A  %W   time of file birth, seconds since Epoch; 0 if unknown\0A  %x   time of last access, human-readable\0A  %X   time of last access, seconds since Epoch\0A  %y   time of last data modification, human-readable\0A  %Y   time of last data modification, seconds since Epoch\0A  %z   time of last status change, human-readable\0A  %Z   time of last status change, seconds since Epoch\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [240 x i8] c"Valid format sequences for file systems:\0A\0A  %a   free blocks available to non-superuser\0A  %b   total data blocks in file system\0A  %c   total file nodes in file system\0A  %d   free file nodes in file system\0A  %f   free blocks in file system\0A\00", align 1
@.str.12 = private unnamed_addr constant [250 x i8] c"  %i   file system ID in hex\0A  %l   maximum length of filenames\0A  %n   file name\0A  %s   block size (for faster transfers)\0A  %S   fundamental block size (for block counts)\0A  %t   file system type in hex\0A  %T   file system type in human readable form\0A\00", align 1
@.str.13 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c".\00", align 1
@decimal_point = internal unnamed_addr global i8* null, align 8
@decimal_point_len = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"c:fLt\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@interpret_backslash_escapes = internal unnamed_addr global i1 false, align 1
@trailing_delim = internal unnamed_addr global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), align 8
@follow_links = internal unnamed_addr global i1 false, align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Michael Meskes\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%N\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"QUOTING_STYLE\00", align 1
@.str.49 = private unnamed_addr constant [65 x i8] c"ignoring invalid value of environment variable QUOTING_STYLE: %s\00", align 1
@.str.60 = private unnamed_addr constant [68 x i8] c"using %s to denote standard input does not work in file system mode\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"cannot read file system information for %s\00", align 1
@.str.189 = private unnamed_addr constant [27 x i8] c"cannot stat standard input\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@printf_flags = internal constant [8 x i8] c"'-+ #0I\00", align 1
@.str.191 = private unnamed_addr constant [29 x i8] c"cannot read symbolic link %s\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"lx\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@human_access.modebuf = internal global [12 x i8] zeroinitializer, align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.196 = private unnamed_addr constant [26 x i8] c"failed to canonicalize %s\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@human_time.str = internal global [61 x i8] zeroinitializer, align 16
@.str.205 = private unnamed_addr constant [37 x i8] c"failed to get security context of %s\00", align 1
@human_time.tz = internal unnamed_addr global %struct.tm_zone* null, align 8
@.str.199 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.200 = private unnamed_addr constant [24 x i8] c"%Y-%m-%d %H:%M:%S.%N %z\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"%s.%09d\00", align 1
@.str.202 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c".0f\00", align 1
@.str.203 = private unnamed_addr constant [13 x i8] c"%s%.*d%-*.*d\00", align 1
@find_bind_mount.tried_mount_list = internal unnamed_addr global i1 false, align 1
@find_bind_mount.mount_list = internal unnamed_addr global %struct.mount_entry* null, align 8
@.str.198 = private unnamed_addr constant [42 x i8] c"cannot read table of mounted file systems\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@digits = internal constant [11 x i8] c"0123456789\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"%s: invalid directive\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"warning: backslash at end of format\00", align 1
@.str.64 = private unnamed_addr constant [35 x i8] c"warning: unrecognized escape '\5C%c'\00", align 1
@human_fstype.buf = internal global [29 x i8] zeroinitializer, align 16
@.str.186 = private unnamed_addr constant [16 x i8] c"UNKNOWN (0x%lx)\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"zsmallocfs\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"zfs\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"xia\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"xfs\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"xenix\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"xenfs\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"wslfs\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"vzfs\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"vxfs\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"vmhgfs\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"v9fs\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"usbdevfs\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"udf\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"ubifs\00", align 1
@.str.170 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"tmpfs\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"sysv4\00", align 1
@.str.167 = private unnamed_addr constant [6 x i8] c"sysv2\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"squashfs\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"sockfs\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"snfs\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"smb2\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"smb\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"smackfs\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"selinux\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"securityfs\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"rpc_pipefs\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"romfs\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"reiserfs\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"rdt\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"ramfs\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"qnx6\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"qnx4\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"pstorefs\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"prl_fs\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"pipefs\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"panfs\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"overlayfs\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"ocfs2\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"openprom\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"ntfs\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"nsfs\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"nilfs\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"nfsd\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"novell\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"msdos\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"minix3\00", align 1
@.str.133 = private unnamed_addr constant [20 x i8] c"minix v2 (30 char.)\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"minix v2\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"minix (30 char.)\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"minix\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"m1fs\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"lustre\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"logfs\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"k-afs\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"jfs\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"jffs2\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"jffs\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"isofs\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"inotifyfs\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"ibrix\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"inodefs\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"hugetlbfs\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"hpfs\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"hostfs\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"hfsx\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"hfs+\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"hfs\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"gpfs\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"gfs/gfs2\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"futexfs\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"fusectl\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"fuseblk\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"fhgfs\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"fat\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"f2fs\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"ext2\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"ext2/ext3\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"exofs\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"efs\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"efivarfs\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"ecryptfs\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"daxfs\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"cramfs-wend\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"cramfs\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"configfs\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"coh\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"coda\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"cgroup2fs\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"cgroupfs\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"ceph\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"btrfs_test\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"btrfs\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"binfmt_misc\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"bpf_fs\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"bfs\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"bdevfs\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"befs\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"balloon-kvm-fs\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"aufs\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"anon-inode FS\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"affs\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"adfs\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"acfs\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"%n %i %l %t %s %S %b %f %a %c %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [172 x i8] c"  File: \22%n\22\0A    ID: %-8i Namelen: %-7l Type: %T\0ABlock size: %-10s Fundamental block size: %S\0ABlocks: Total: %-10b Free: %-10f Available: %a\0AInodes: Total: %-10c Free: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"%n %s %b %f %u %g %D %i %h %t %T %X %Y %Z %W %o\0A\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"  File: %N\0A  Size: %-10s\09Blocks: %-10b IO Block: %-6o %F\0A\00", align 1
@.str.55 = private unnamed_addr constant [62 x i8] c"Device: %Dh/%dd\09Inode: %-10i  Links: %-5h Device type: %t,%T\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"Device: %Dh/%dd\09Inode: %-10i  Links: %h\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"Access: (%04a/%10.10A)  Uid: (%5u/%8U)   Gid: (%5g/%8G)\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"Access: %x\0AModify: %y\0AChange: %z\0A Birth: %w\0A\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"terse\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"cannot get current directory\00", align 1
@.str.1.27 = private unnamed_addr constant [30 x i8] c"cannot change to directory %s\00", align 1
@.str.2.28 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4.29 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3.30 = private unnamed_addr constant [39 x i8] c"cannot stat current directory (now %s)\00", align 1
@.str.5.31 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.6.32 = private unnamed_addr constant [46 x i8] c"failed to return to initial working directory\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i64 0, i64 0), align 8
@.str.66 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.187 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.188 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.189 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.190 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.191 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.207 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.208 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.219 = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@.str.1.220 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@.str.11.221 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1
@.str.10.222 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.9.223 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.8.224 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@.str.7.225 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@.str.3.226 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@.str.2.227 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@switch.table = private unnamed_addr constant [12 x i8] c"pc?d?b?-?l?s"
@program_name = local_unnamed_addr global i8* null, align 8
@.str.236 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.237 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.238 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.242, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.243, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.244, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.246, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.247, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.248, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.249, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.250, i32 0, i32 0), i8* null], align 16
@.str.241 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.242 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.243 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.244 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.245 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.246 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.247 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.248 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.249 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.250 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.257 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.258 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.259 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.260 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.261 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.262 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.263 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.276 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.283 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.284 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@.str.1.285 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.2.286 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.3.287 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.288 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.289 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.290 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.291 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.292 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.293 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.294 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.295 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.296 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.297 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.298 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.299 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.300 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.301 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.304 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.305 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.306 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.307 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.308 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.309 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.322 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.323 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.332 = private unnamed_addr constant [8 x i8] c"0 < len\00", align 1
@.str.1.333 = private unnamed_addr constant [17 x i8] c"lib/chdir-long.c\00", align 1
@__PRETTY_FUNCTION__.chdir_long = private unnamed_addr constant [23 x i8] c"int chdir_long(char *)\00", align 1
@.str.2.334 = private unnamed_addr constant [12 x i8] c"4096 <= len\00", align 1
@.str.3.335 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4.336 = private unnamed_addr constant [12 x i8] c"*dir != '/'\00", align 1
@.str.5.337 = private unnamed_addr constant [15 x i8] c"dir <= dir_end\00", align 1
@.str.6.338 = private unnamed_addr constant [19 x i8] c"slash - dir < 4096\00", align 1
@.str.7.339 = private unnamed_addr constant [13 x i8] c"! close_fail\00", align 1
@__PRETTY_FUNCTION__.cdb_free = private unnamed_addr constant [37 x i8] c"void cdb_free(const struct cd_buf *)\00", align 1
@.str.344 = private unnamed_addr constant [21 x i8] c"/proc/self/mountinfo\00", align 1
@.str.1.345 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.346 = private unnamed_addr constant [32 x i8] c"%*u %*u %u:%u %n%*s%n %n%*s%n%c\00", align 1
@.str.3.347 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.4.348 = private unnamed_addr constant [22 x i8] c" - %n%*s%n %n%*s%n %c\00", align 1
@.str.5.349 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.6.350 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.7.351 = private unnamed_addr constant [6 x i8] c"subfs\00", align 1
@.str.8.352 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@.str.9.353 = private unnamed_addr constant [7 x i8] c"devpts\00", align 1
@.str.10.354 = private unnamed_addr constant [8 x i8] c"fusectl\00", align 1
@.str.11.355 = private unnamed_addr constant [7 x i8] c"mqueue\00", align 1
@.str.12.356 = private unnamed_addr constant [11 x i8] c"rpc_pipefs\00", align 1
@.str.13.357 = private unnamed_addr constant [6 x i8] c"sysfs\00", align 1
@.str.14.358 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.15.359 = private unnamed_addr constant [7 x i8] c"kernfs\00", align 1
@.str.16.360 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.17.361 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.18.362 = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.19.363 = private unnamed_addr constant [5 x i8] c"cifs\00", align 1
@.str.20.364 = private unnamed_addr constant [7 x i8] c"-hosts\00", align 1
@.str.21.365 = private unnamed_addr constant [10 x i8] c"/etc/mtab\00", align 1
@.str.22.366 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.371 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1.372 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.383 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.386 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.387 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.388 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.389 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.390 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.391 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.392 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@__mon_yday = internal unnamed_addr constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16
@localtime_offset = internal global i64 0, align 8

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9
  br label %65

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #9
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #9
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 5) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0), i32 5) #9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([418 x i8], [418 x i8]* @.str.4, i64 0, i64 0), i32 5) #9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.7, i64 0, i64 0), i32 5) #9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.8, i64 0, i64 0), i32 5) #9
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #9
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([357 x i8], [357 x i8]* @.str.9, i64 0, i64 0), i32 5) #9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #9
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([478 x i8], [478 x i8]* @.str.10, i64 0, i64 0), i32 5) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #9
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.11, i64 0, i64 0), i32 5) #9
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #9
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([250 x i8], [250 x i8]* @.str.12, i64 0, i64 0), i32 5) #9
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #9
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.13, i64 0, i64 0), i32 5) #9
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i32 5) #9
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0)) #9
  %52 = tail call i8* @setlocale(i32 5, i8* null) #9
  %53 = icmp eq i8* %52, null
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %8
  %55 = tail call i32 @strncmp(i8* nonnull %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i64 0, i64 0), i32 5) #9
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  br label %60

; <label>:60:                                     ; preds = %8, %54, %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i32 5) #9
  %62 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #9
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 5) #9
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)) #9
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
  %4 = alloca %struct.statfs, align 8
  %5 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %5) #9
  %6 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #9
  %7 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)) #9
  %8 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #9
  %9 = tail call %struct.lconv* @localeconv() #9
  %10 = getelementptr inbounds %struct.lconv, %struct.lconv* %9, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %11
  store i8* %14, i8** @decimal_point, align 8
  %15 = tail call i64 @strlen(i8* %14) #13
  store i64 %15, i64* @decimal_point_len, align 8
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #9
  br label %18

; <label>:17:                                     ; preds = %28
  br label %18

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %17 ]
  %20 = phi i8 [ 0, %2 ], [ %24, %17 ]
  %21 = phi i8* [ null, %2 ], [ %27, %17 ]
  br label %23

; <label>:22:                                     ; preds = %28
  br label %23

; <label>:23:                                     ; preds = %22, %18
  %24 = phi i8 [ %20, %18 ], [ 1, %22 ]
  %25 = phi i8* [ %21, %18 ], [ %27, %22 ]
  br label %26

; <label>:26:                                     ; preds = %32, %23
  %27 = phi i8* [ %25, %23 ], [ %35, %32 ]
  br label %28

; <label>:28:                                     ; preds = %26, %36
  %29 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #9
  switch i32 %29, label %41 [
    i32 -1, label %42
    i32 128, label %31
    i32 99, label %30
    i32 76, label %36
    i32 102, label %17
    i32 116, label %22
    i32 -130, label %37
    i32 -131, label %38
  ]

; <label>:30:                                     ; preds = %28
  br label %32

; <label>:31:                                     ; preds = %28
  br label %32

; <label>:32:                                     ; preds = %31, %30
  %33 = phi i1 [ false, %30 ], [ true, %31 ]
  %34 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0), %31 ]
  %35 = load i8*, i8** @optarg, align 8
  store i1 %33, i1* @interpret_backslash_escapes, align 1
  store i8* %34, i8** @trailing_delim, align 8
  br label %26

; <label>:36:                                     ; preds = %28
  store i1 true, i1* @follow_links, align 1
  br label %28

; <label>:37:                                     ; preds = %28
  tail call void @usage(i32 0) #15
  unreachable

; <label>:38:                                     ; preds = %28
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load i8*, i8** @Version, align 8
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* null) #9
  tail call void @exit(i32 0) #14
  unreachable

; <label>:41:                                     ; preds = %28
  tail call void @usage(i32 1) #15
  unreachable

; <label>:42:                                     ; preds = %28
  %43 = load i32, i32* @optind, align 4
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %42
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46) #9
  tail call void @usage(i32 1) #15
  unreachable

; <label>:47:                                     ; preds = %42
  %48 = icmp eq i8* %27, null
  br i1 %48, label %68, label %49

; <label>:49:                                     ; preds = %47
  %50 = tail call i8* @strstr(i8* nonnull %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #13
  %51 = icmp eq i8* %50, null
  br i1 %51, label %73, label %52

; <label>:52:                                     ; preds = %49
  %53 = tail call i8* @getenv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0)) #9
  %54 = icmp eq i8* %53, null
  br i1 %54, label %67, label %55

; <label>:55:                                     ; preds = %52
  %56 = tail call i64 @argmatch(i8* nonnull %53, i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @quoting_style_args, i64 0, i64 0), i8* bitcast ([10 x i32]* @quoting_style_vals to i8*), i64 4) #13
  %57 = trunc i64 %56 to i32
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %55
  %60 = shl i64 %56, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds [0 x i32], [0 x i32]* bitcast ([10 x i32]* @quoting_style_vals to [0 x i32]*), i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  tail call void @set_quoting_style(%struct.quoting_options* null, i32 %63) #9
  br label %73

; <label>:64:                                     ; preds = %55
  tail call void @set_quoting_style(%struct.quoting_options* null, i32 4) #9
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.49, i64 0, i64 0), i32 5) #9
  %66 = tail call i8* @quote(i8* nonnull %53) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %66) #9
  br label %73

; <label>:67:                                     ; preds = %52
  tail call void @set_quoting_style(%struct.quoting_options* null, i32 4) #9
  br label %73

; <label>:68:                                     ; preds = %47
  %69 = icmp ne i8 %19, 0
  %70 = icmp ne i8 %24, 0
  %71 = tail call fastcc i8* @default_format(i1 zeroext %69, i1 zeroext %70, i1 zeroext false)
  %72 = tail call fastcc i8* @default_format(i1 zeroext %69, i1 zeroext %70, i1 zeroext true)
  br label %73

; <label>:73:                                     ; preds = %67, %64, %59, %49, %68
  %74 = phi i8* [ %71, %68 ], [ %27, %49 ], [ %27, %59 ], [ %27, %64 ], [ %27, %67 ]
  %75 = phi i8* [ %72, %68 ], [ %27, %49 ], [ %27, %59 ], [ %27, %64 ], [ %27, %67 ]
  %76 = load i32, i32* @optind, align 4
  %77 = icmp slt i32 %76, %0
  br i1 %77, label %78, label %164

; <label>:78:                                     ; preds = %73
  %79 = icmp eq i8 %19, 0
  %80 = bitcast %struct.stat* %3 to i8*
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %82 = bitcast %struct.statfs* %4 to i8*
  %83 = sext i32 %76 to i64
  br label %84

; <label>:84:                                     ; preds = %156, %78
  %85 = phi i64 [ %83, %78 ], [ %159, %156 ]
  %86 = phi i1 [ true, %78 ], [ %158, %156 ]
  %87 = getelementptr inbounds i8*, i8** %1, i64 %85
  %88 = load i8*, i8** %87, align 8
  br i1 %79, label %112, label %89

; <label>:89:                                     ; preds = %84
  call void @llvm.lifetime.start(i64 120, i8* nonnull %82) #9
  %90 = load i8, i8* %88, align 1
  %91 = icmp eq i8 %90, 45
  br i1 %91, label %92, label %99

; <label>:92:                                     ; preds = %89
  %93 = getelementptr inbounds i8, i8* %88, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %92
  %97 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.60, i64 0, i64 0), i32 5) #9
  %98 = call i8* @quotearg_style(i32 4, i8* nonnull %88) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %97, i8* %98) #9
  br label %110

; <label>:99:                                     ; preds = %92, %89
  %100 = call i32 @statfs(i8* nonnull %88, %struct.statfs* nonnull %4) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

; <label>:102:                                    ; preds = %99
  %103 = tail call i32* @__errno_location() #1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.61, i64 0, i64 0), i32 5) #9
  %106 = call i8* @quotearg_style(i32 4, i8* nonnull %88) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %104, i8* %105, i8* %106) #9
  br label %110

; <label>:107:                                    ; preds = %99
  %108 = call fastcc zeroext i1 @print_it(i8* %74, i32 -1, i8* nonnull %88, i1 (i8*, i64, i32, i32, i8*, i8*)* nonnull @print_statfs, i8* nonnull %82) #9
  %109 = xor i1 %108, true
  br label %110

; <label>:110:                                    ; preds = %96, %102, %107
  %111 = phi i1 [ false, %96 ], [ false, %102 ], [ %109, %107 ]
  call void @llvm.lifetime.end(i64 120, i8* nonnull %82) #9
  br label %156

; <label>:112:                                    ; preds = %84
  %113 = load i8, i8* %88, align 1
  %114 = icmp eq i8 %113, 45
  br i1 %114, label %116, label %115

; <label>:115:                                    ; preds = %112
  call void @llvm.lifetime.start(i64 144, i8* nonnull %80) #9
  br label %129

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds i8, i8* %88, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  %120 = xor i1 %119, true
  %121 = sext i1 %120 to i32
  call void @llvm.lifetime.start(i64 144, i8* nonnull %80) #9
  br i1 %119, label %122, label %129

; <label>:122:                                    ; preds = %116
  %123 = call i32 @__fxstat(i32 1, i32 %121, %struct.stat* nonnull %3) #9
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %144, label %125

; <label>:125:                                    ; preds = %122
  %126 = tail call i32* @__errno_location() #1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.189, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %127, i8* %128) #9
  br label %154

; <label>:129:                                    ; preds = %116, %115
  %130 = phi i32 [ -1, %115 ], [ %121, %116 ]
  %131 = load i1, i1* @follow_links, align 1
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %129
  %133 = call i32 @__xstat(i32 1, i8* nonnull %88, %struct.stat* nonnull %3) #9
  br label %136

; <label>:134:                                    ; preds = %129
  %135 = call i32 @__lxstat(i32 1, i8* nonnull %88, %struct.stat* nonnull %3) #9
  br label %136

; <label>:136:                                    ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

; <label>:139:                                    ; preds = %136
  %140 = tail call i32* @__errno_location() #1
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.190, i64 0, i64 0), i32 5) #9
  %143 = call i8* @quotearg_style(i32 4, i8* nonnull %88) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %141, i8* %142, i8* %143) #9
  br label %154

; <label>:144:                                    ; preds = %136, %122
  %145 = phi i32 [ %121, %122 ], [ %130, %136 ]
  %146 = load i32, i32* %81, align 8
  %147 = trunc i32 %146 to i16
  %148 = and i16 %147, -4096
  switch i16 %148, label %150 [
    i16 24576, label %149
    i16 8192, label %149
  ]

; <label>:149:                                    ; preds = %144, %144
  br label %150

; <label>:150:                                    ; preds = %149, %144
  %151 = phi i8* [ %75, %149 ], [ %74, %144 ]
  %152 = call fastcc zeroext i1 @print_it(i8* %151, i32 %145, i8* nonnull %88, i1 (i8*, i64, i32, i32, i8*, i8*)* nonnull @print_stat, i8* nonnull %80) #9
  %153 = xor i1 %152, true
  br label %154

; <label>:154:                                    ; preds = %125, %139, %150
  %155 = phi i1 [ false, %125 ], [ %153, %150 ], [ false, %139 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %80) #9
  br label %156

; <label>:156:                                    ; preds = %154, %110
  %157 = phi i1 [ %155, %154 ], [ %111, %110 ]
  %158 = and i1 %86, %157
  %159 = add nsw i64 %85, 1
  %160 = trunc i64 %159 to i32
  %161 = icmp eq i32 %160, %0
  br i1 %161, label %162, label %84

; <label>:162:                                    ; preds = %156
  %163 = xor i1 %158, true
  br label %164

; <label>:164:                                    ; preds = %162, %73
  %165 = phi i1 [ false, %73 ], [ %163, %162 ]
  %166 = zext i1 %165 to i32
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @default_format(i1 zeroext, i1 zeroext, i1 zeroext) unnamed_addr #6 {
  br i1 %0, label %4, label %10

; <label>:4:                                      ; preds = %3
  br i1 %1, label %5, label %7

; <label>:5:                                      ; preds = %4
  %6 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #9
  br label %23

; <label>:7:                                      ; preds = %4
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([172 x i8], [172 x i8]* @.str.51, i64 0, i64 0), i32 5) #9
  %9 = tail call noalias i8* @xstrdup(i8* %8) #9
  br label %23

; <label>:10:                                     ; preds = %3
  br i1 %1, label %11, label %13

; <label>:11:                                     ; preds = %10
  %12 = tail call noalias i8* @xstrdup(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0)) #9
  br label %23

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i64 0, i64 0), i32 5) #9
  %15 = tail call noalias i8* @xstrdup(i8* %14) #9
  %16 = select i1 %2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.56, i64 0, i64 0)
  %17 = tail call i8* @dcgettext(i8* null, i8* %16, i32 5) #9
  %18 = tail call i8* (i8*, ...) @xasprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %15, i8* %17) #9
  tail call void @free(i8* %15) #9
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.57, i64 0, i64 0), i32 5) #9
  %20 = tail call i8* (i8*, ...) @xasprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %18, i8* %19) #9
  tail call void @free(i8* %18) #9
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.58, i64 0, i64 0), i32 5) #9
  %22 = tail call i8* (i8*, ...) @xasprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i8* %20, i8* %21) #9
  tail call void @free(i8* %20) #9
  br label %23

; <label>:23:                                     ; preds = %11, %13, %5, %7
  %24 = phi i8* [ %6, %5 ], [ %9, %7 ], [ %12, %11 ], [ %22, %13 ]
  ret i8* %24
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @statfs(i8*, %struct.statfs*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @print_statfs(i8*, i64, i32, i32, i8*, i8* nocapture readonly) #6 {
  switch i32 %2, label %1962 [
    i32 110, label %7
    i32 105, label %156
    i32 108, label %315
    i32 116, label %467
    i32 84, label %618
    i32 98, label %891
    i32 102, label %1043
    i32 97, label %1195
    i32 115, label %1347
    i32 83, label %1499
    i32 99, label %1658
    i32 100, label %1810
  ]

; <label>:7:                                      ; preds = %6
  %8 = getelementptr inbounds i8, i8* %0, i64 1
  %9 = getelementptr inbounds i8, i8* %0, i64 %1
  %10 = icmp sgt i64 %1, 1
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  br label %12

; <label>:12:                                     ; preds = %11, %135
  %13 = phi i8* [ %136, %135 ], [ %8, %11 ]
  %14 = phi i8* [ %137, %135 ], [ %8, %11 ]
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %16, i64 8) #9
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %126

; <label>:19:                                     ; preds = %12, %135
  %20 = phi i8* [ %137, %135 ], [ %14, %12 ]
  %21 = phi i8* [ %136, %135 ], [ %13, %12 ]
  br label %22

; <label>:22:                                     ; preds = %19, %7
  %23 = phi i8* [ %8, %7 ], [ %20, %19 ]
  %24 = phi i8* [ %8, %7 ], [ %21, %19 ]
  %25 = ptrtoint i8* %23 to i64
  %26 = icmp ult i8* %23, %9
  br i1 %26, label %27, label %151

; <label>:27:                                     ; preds = %22
  %28 = sub i64 %1, %25
  %29 = getelementptr i8, i8* %0, i64 %28
  %30 = ptrtoint i8* %29 to i64
  %31 = icmp ult i8* %29, inttoptr (i64 32 to i8*)
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %124, %38, %35, %27
  %33 = phi i8* [ %24, %38 ], [ %24, %35 ], [ %24, %27 ], [ %46, %124 ]
  %34 = phi i8* [ %23, %38 ], [ %23, %35 ], [ %23, %27 ], [ %47, %124 ]
  br label %139

; <label>:35:                                     ; preds = %27
  %36 = and i64 %30, -32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %32, label %38

; <label>:38:                                     ; preds = %35
  %39 = sub i64 %1, %25
  %40 = getelementptr i8, i8* %0, i64 %39
  %41 = ptrtoint i8* %40 to i64
  %42 = getelementptr i8, i8* %24, i64 %41
  %43 = icmp ult i8* %24, %9
  %44 = icmp ult i8* %23, %42
  %45 = and i1 %43, %44
  %46 = getelementptr i8, i8* %24, i64 %36
  %47 = getelementptr i8, i8* %23, i64 %36
  br i1 %45, label %32, label %48

; <label>:48:                                     ; preds = %38
  %49 = add i64 %36, -32
  %50 = lshr exact i64 %49, 5
  %51 = add nuw nsw i64 %50, 1
  %52 = and i64 %51, 3
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %72, label %54

; <label>:54:                                     ; preds = %48
  br label %55

; <label>:55:                                     ; preds = %55, %54
  %56 = phi i64 [ %68, %55 ], [ 0, %54 ]
  %57 = phi i64 [ %69, %55 ], [ %52, %54 ]
  %58 = getelementptr i8, i8* %24, i64 %56
  %59 = getelementptr i8, i8* %23, i64 %56
  %60 = bitcast i8* %59 to <16 x i8>*
  %61 = load <16 x i8>, <16 x i8>* %60, align 1
  %62 = getelementptr i8, i8* %59, i64 16
  %63 = bitcast i8* %62 to <16 x i8>*
  %64 = load <16 x i8>, <16 x i8>* %63, align 1
  %65 = bitcast i8* %58 to <16 x i8>*
  store <16 x i8> %61, <16 x i8>* %65, align 1
  %66 = getelementptr i8, i8* %58, i64 16
  %67 = bitcast i8* %66 to <16 x i8>*
  store <16 x i8> %64, <16 x i8>* %67, align 1
  %68 = add i64 %56, 32
  %69 = add i64 %57, -1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %55

; <label>:71:                                     ; preds = %55
  br label %72

; <label>:72:                                     ; preds = %48, %71
  %73 = phi i64 [ 0, %48 ], [ %68, %71 ]
  %74 = icmp ult i64 %49, 96
  br i1 %74, label %124, label %75

; <label>:75:                                     ; preds = %72
  br label %76

; <label>:76:                                     ; preds = %76, %75
  %77 = phi i64 [ %73, %75 ], [ %121, %76 ]
  %78 = getelementptr i8, i8* %24, i64 %77
  %79 = getelementptr i8, i8* %23, i64 %77
  %80 = bitcast i8* %79 to <16 x i8>*
  %81 = load <16 x i8>, <16 x i8>* %80, align 1
  %82 = getelementptr i8, i8* %79, i64 16
  %83 = bitcast i8* %82 to <16 x i8>*
  %84 = load <16 x i8>, <16 x i8>* %83, align 1
  %85 = bitcast i8* %78 to <16 x i8>*
  store <16 x i8> %81, <16 x i8>* %85, align 1
  %86 = getelementptr i8, i8* %78, i64 16
  %87 = bitcast i8* %86 to <16 x i8>*
  store <16 x i8> %84, <16 x i8>* %87, align 1
  %88 = add i64 %77, 32
  %89 = getelementptr i8, i8* %24, i64 %88
  %90 = getelementptr i8, i8* %23, i64 %88
  %91 = bitcast i8* %90 to <16 x i8>*
  %92 = load <16 x i8>, <16 x i8>* %91, align 1
  %93 = getelementptr i8, i8* %90, i64 16
  %94 = bitcast i8* %93 to <16 x i8>*
  %95 = load <16 x i8>, <16 x i8>* %94, align 1
  %96 = bitcast i8* %89 to <16 x i8>*
  store <16 x i8> %92, <16 x i8>* %96, align 1
  %97 = getelementptr i8, i8* %89, i64 16
  %98 = bitcast i8* %97 to <16 x i8>*
  store <16 x i8> %95, <16 x i8>* %98, align 1
  %99 = add i64 %77, 64
  %100 = getelementptr i8, i8* %24, i64 %99
  %101 = getelementptr i8, i8* %23, i64 %99
  %102 = bitcast i8* %101 to <16 x i8>*
  %103 = load <16 x i8>, <16 x i8>* %102, align 1
  %104 = getelementptr i8, i8* %101, i64 16
  %105 = bitcast i8* %104 to <16 x i8>*
  %106 = load <16 x i8>, <16 x i8>* %105, align 1
  %107 = bitcast i8* %100 to <16 x i8>*
  store <16 x i8> %103, <16 x i8>* %107, align 1
  %108 = getelementptr i8, i8* %100, i64 16
  %109 = bitcast i8* %108 to <16 x i8>*
  store <16 x i8> %106, <16 x i8>* %109, align 1
  %110 = add i64 %77, 96
  %111 = getelementptr i8, i8* %24, i64 %110
  %112 = getelementptr i8, i8* %23, i64 %110
  %113 = bitcast i8* %112 to <16 x i8>*
  %114 = load <16 x i8>, <16 x i8>* %113, align 1
  %115 = getelementptr i8, i8* %112, i64 16
  %116 = bitcast i8* %115 to <16 x i8>*
  %117 = load <16 x i8>, <16 x i8>* %116, align 1
  %118 = bitcast i8* %111 to <16 x i8>*
  store <16 x i8> %114, <16 x i8>* %118, align 1
  %119 = getelementptr i8, i8* %111, i64 16
  %120 = bitcast i8* %119 to <16 x i8>*
  store <16 x i8> %117, <16 x i8>* %120, align 1
  %121 = add i64 %77, 128
  %122 = icmp eq i64 %121, %36
  br i1 %122, label %123, label %76

; <label>:123:                                    ; preds = %76
  br label %124

; <label>:124:                                    ; preds = %72, %123
  %125 = icmp eq i64 %30, %36
  br i1 %125, label %147, label %32

; <label>:126:                                    ; preds = %12
  %127 = zext i32 %16 to i64
  %128 = icmp ult i8 %15, 64
  %129 = shl i64 1, %127
  %130 = and i64 %129, 35184372088833
  %131 = icmp ne i64 %130, 0
  %132 = and i1 %128, %131
  br i1 %132, label %133, label %135

; <label>:133:                                    ; preds = %126
  %134 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %15, i8* %13, align 1
  br label %135

; <label>:135:                                    ; preds = %133, %126
  %136 = phi i8* [ %134, %133 ], [ %13, %126 ]
  %137 = getelementptr inbounds i8, i8* %14, i64 1
  %138 = icmp ult i8* %137, %9
  br i1 %138, label %12, label %19

; <label>:139:                                    ; preds = %32, %139
  %140 = phi i8* [ %144, %139 ], [ %33, %32 ]
  %141 = phi i8* [ %142, %139 ], [ %34, %32 ]
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = load i8, i8* %141, align 1
  %144 = getelementptr inbounds i8, i8* %140, i64 1
  store i8 %143, i8* %140, align 1
  %145 = icmp eq i8* %142, %9
  br i1 %145, label %146, label %139

; <label>:146:                                    ; preds = %139
  br label %147

; <label>:147:                                    ; preds = %146, %124
  %148 = getelementptr i8, i8* %0, i64 %28
  %149 = ptrtoint i8* %148 to i64
  %150 = getelementptr i8, i8* %24, i64 %149
  br label %151

; <label>:151:                                    ; preds = %22, %147
  %152 = phi i8* [ %24, %22 ], [ %150, %147 ]
  %153 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %152, i1 false) #9
  %154 = tail call i8* @__memcpy_chk(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %153) #9
  %155 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %4) #9
  br label %1973

; <label>:156:                                    ; preds = %6
  %157 = getelementptr inbounds i8, i8* %5, i64 56
  %158 = bitcast i8* %157 to i32*
  %159 = getelementptr inbounds i8, i8* %5, i64 60
  %160 = bitcast i8* %159 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  %163 = load i32, i32* %158, align 4
  %164 = zext i32 %163 to i64
  %165 = shl nuw i64 %164, 32
  %166 = or i64 %165, %162
  %167 = getelementptr inbounds i8, i8* %0, i64 1
  %168 = getelementptr inbounds i8, i8* %0, i64 %1
  %169 = icmp sgt i64 %1, 1
  br i1 %169, label %170, label %181

; <label>:170:                                    ; preds = %156
  br label %171

; <label>:171:                                    ; preds = %170, %294
  %172 = phi i8* [ %295, %294 ], [ %167, %170 ]
  %173 = phi i8* [ %296, %294 ], [ %167, %170 ]
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %175, i64 8) #9
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %285

; <label>:178:                                    ; preds = %171, %294
  %179 = phi i8* [ %296, %294 ], [ %173, %171 ]
  %180 = phi i8* [ %295, %294 ], [ %172, %171 ]
  br label %181

; <label>:181:                                    ; preds = %178, %156
  %182 = phi i8* [ %167, %156 ], [ %179, %178 ]
  %183 = phi i8* [ %167, %156 ], [ %180, %178 ]
  %184 = ptrtoint i8* %182 to i64
  %185 = icmp ult i8* %182, %168
  br i1 %185, label %186, label %310

; <label>:186:                                    ; preds = %181
  %187 = sub i64 %1, %184
  %188 = getelementptr i8, i8* %0, i64 %187
  %189 = ptrtoint i8* %188 to i64
  %190 = icmp ult i8* %188, inttoptr (i64 32 to i8*)
  br i1 %190, label %191, label %194

; <label>:191:                                    ; preds = %283, %197, %194, %186
  %192 = phi i8* [ %183, %197 ], [ %183, %194 ], [ %183, %186 ], [ %205, %283 ]
  %193 = phi i8* [ %182, %197 ], [ %182, %194 ], [ %182, %186 ], [ %206, %283 ]
  br label %298

; <label>:194:                                    ; preds = %186
  %195 = and i64 %189, -32
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %191, label %197

; <label>:197:                                    ; preds = %194
  %198 = sub i64 %1, %184
  %199 = getelementptr i8, i8* %0, i64 %198
  %200 = ptrtoint i8* %199 to i64
  %201 = getelementptr i8, i8* %183, i64 %200
  %202 = icmp ult i8* %183, %168
  %203 = icmp ult i8* %182, %201
  %204 = and i1 %202, %203
  %205 = getelementptr i8, i8* %183, i64 %195
  %206 = getelementptr i8, i8* %182, i64 %195
  br i1 %204, label %191, label %207

; <label>:207:                                    ; preds = %197
  %208 = add i64 %195, -32
  %209 = lshr exact i64 %208, 5
  %210 = add nuw nsw i64 %209, 1
  %211 = and i64 %210, 3
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %231, label %213

; <label>:213:                                    ; preds = %207
  br label %214

; <label>:214:                                    ; preds = %214, %213
  %215 = phi i64 [ %227, %214 ], [ 0, %213 ]
  %216 = phi i64 [ %228, %214 ], [ %211, %213 ]
  %217 = getelementptr i8, i8* %183, i64 %215
  %218 = getelementptr i8, i8* %182, i64 %215
  %219 = bitcast i8* %218 to <16 x i8>*
  %220 = load <16 x i8>, <16 x i8>* %219, align 1
  %221 = getelementptr i8, i8* %218, i64 16
  %222 = bitcast i8* %221 to <16 x i8>*
  %223 = load <16 x i8>, <16 x i8>* %222, align 1
  %224 = bitcast i8* %217 to <16 x i8>*
  store <16 x i8> %220, <16 x i8>* %224, align 1
  %225 = getelementptr i8, i8* %217, i64 16
  %226 = bitcast i8* %225 to <16 x i8>*
  store <16 x i8> %223, <16 x i8>* %226, align 1
  %227 = add i64 %215, 32
  %228 = add i64 %216, -1
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %214

; <label>:230:                                    ; preds = %214
  br label %231

; <label>:231:                                    ; preds = %207, %230
  %232 = phi i64 [ 0, %207 ], [ %227, %230 ]
  %233 = icmp ult i64 %208, 96
  br i1 %233, label %283, label %234

; <label>:234:                                    ; preds = %231
  br label %235

; <label>:235:                                    ; preds = %235, %234
  %236 = phi i64 [ %232, %234 ], [ %280, %235 ]
  %237 = getelementptr i8, i8* %183, i64 %236
  %238 = getelementptr i8, i8* %182, i64 %236
  %239 = bitcast i8* %238 to <16 x i8>*
  %240 = load <16 x i8>, <16 x i8>* %239, align 1
  %241 = getelementptr i8, i8* %238, i64 16
  %242 = bitcast i8* %241 to <16 x i8>*
  %243 = load <16 x i8>, <16 x i8>* %242, align 1
  %244 = bitcast i8* %237 to <16 x i8>*
  store <16 x i8> %240, <16 x i8>* %244, align 1
  %245 = getelementptr i8, i8* %237, i64 16
  %246 = bitcast i8* %245 to <16 x i8>*
  store <16 x i8> %243, <16 x i8>* %246, align 1
  %247 = add i64 %236, 32
  %248 = getelementptr i8, i8* %183, i64 %247
  %249 = getelementptr i8, i8* %182, i64 %247
  %250 = bitcast i8* %249 to <16 x i8>*
  %251 = load <16 x i8>, <16 x i8>* %250, align 1
  %252 = getelementptr i8, i8* %249, i64 16
  %253 = bitcast i8* %252 to <16 x i8>*
  %254 = load <16 x i8>, <16 x i8>* %253, align 1
  %255 = bitcast i8* %248 to <16 x i8>*
  store <16 x i8> %251, <16 x i8>* %255, align 1
  %256 = getelementptr i8, i8* %248, i64 16
  %257 = bitcast i8* %256 to <16 x i8>*
  store <16 x i8> %254, <16 x i8>* %257, align 1
  %258 = add i64 %236, 64
  %259 = getelementptr i8, i8* %183, i64 %258
  %260 = getelementptr i8, i8* %182, i64 %258
  %261 = bitcast i8* %260 to <16 x i8>*
  %262 = load <16 x i8>, <16 x i8>* %261, align 1
  %263 = getelementptr i8, i8* %260, i64 16
  %264 = bitcast i8* %263 to <16 x i8>*
  %265 = load <16 x i8>, <16 x i8>* %264, align 1
  %266 = bitcast i8* %259 to <16 x i8>*
  store <16 x i8> %262, <16 x i8>* %266, align 1
  %267 = getelementptr i8, i8* %259, i64 16
  %268 = bitcast i8* %267 to <16 x i8>*
  store <16 x i8> %265, <16 x i8>* %268, align 1
  %269 = add i64 %236, 96
  %270 = getelementptr i8, i8* %183, i64 %269
  %271 = getelementptr i8, i8* %182, i64 %269
  %272 = bitcast i8* %271 to <16 x i8>*
  %273 = load <16 x i8>, <16 x i8>* %272, align 1
  %274 = getelementptr i8, i8* %271, i64 16
  %275 = bitcast i8* %274 to <16 x i8>*
  %276 = load <16 x i8>, <16 x i8>* %275, align 1
  %277 = bitcast i8* %270 to <16 x i8>*
  store <16 x i8> %273, <16 x i8>* %277, align 1
  %278 = getelementptr i8, i8* %270, i64 16
  %279 = bitcast i8* %278 to <16 x i8>*
  store <16 x i8> %276, <16 x i8>* %279, align 1
  %280 = add i64 %236, 128
  %281 = icmp eq i64 %280, %195
  br i1 %281, label %282, label %235

; <label>:282:                                    ; preds = %235
  br label %283

; <label>:283:                                    ; preds = %231, %282
  %284 = icmp eq i64 %189, %195
  br i1 %284, label %306, label %191

; <label>:285:                                    ; preds = %171
  %286 = zext i32 %175 to i64
  %287 = icmp ult i8 %174, 64
  %288 = shl i64 1, %286
  %289 = and i64 %288, 316693708537857
  %290 = icmp ne i64 %289, 0
  %291 = and i1 %287, %290
  br i1 %291, label %292, label %294

; <label>:292:                                    ; preds = %285
  %293 = getelementptr inbounds i8, i8* %172, i64 1
  store i8 %174, i8* %172, align 1
  br label %294

; <label>:294:                                    ; preds = %292, %285
  %295 = phi i8* [ %293, %292 ], [ %172, %285 ]
  %296 = getelementptr inbounds i8, i8* %173, i64 1
  %297 = icmp ult i8* %296, %168
  br i1 %297, label %171, label %178

; <label>:298:                                    ; preds = %191, %298
  %299 = phi i8* [ %303, %298 ], [ %192, %191 ]
  %300 = phi i8* [ %301, %298 ], [ %193, %191 ]
  %301 = getelementptr inbounds i8, i8* %300, i64 1
  %302 = load i8, i8* %300, align 1
  %303 = getelementptr inbounds i8, i8* %299, i64 1
  store i8 %302, i8* %299, align 1
  %304 = icmp eq i8* %301, %168
  br i1 %304, label %305, label %298

; <label>:305:                                    ; preds = %298
  br label %306

; <label>:306:                                    ; preds = %305, %283
  %307 = getelementptr i8, i8* %0, i64 %187
  %308 = ptrtoint i8* %307 to i64
  %309 = getelementptr i8, i8* %183, i64 %308
  br label %310

; <label>:310:                                    ; preds = %181, %306
  %311 = phi i8* [ %183, %181 ], [ %309, %306 ]
  %312 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %311, i1 false) #9
  %313 = tail call i8* @__memcpy_chk(i8* %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %312) #9
  %314 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %166) #9
  br label %1973

; <label>:315:                                    ; preds = %6
  %316 = getelementptr inbounds i8, i8* %5, i64 64
  %317 = bitcast i8* %316 to i64*
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds i8, i8* %0, i64 1
  %320 = getelementptr inbounds i8, i8* %0, i64 %1
  %321 = icmp sgt i64 %1, 1
  br i1 %321, label %322, label %333

; <label>:322:                                    ; preds = %315
  br label %323

; <label>:323:                                    ; preds = %322, %446
  %324 = phi i8* [ %447, %446 ], [ %319, %322 ]
  %325 = phi i8* [ %448, %446 ], [ %319, %322 ]
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %327, i64 8) #9
  %329 = icmp eq i8* %328, null
  br i1 %329, label %330, label %437

; <label>:330:                                    ; preds = %323, %446
  %331 = phi i8* [ %448, %446 ], [ %325, %323 ]
  %332 = phi i8* [ %447, %446 ], [ %324, %323 ]
  br label %333

; <label>:333:                                    ; preds = %330, %315
  %334 = phi i8* [ %319, %315 ], [ %331, %330 ]
  %335 = phi i8* [ %319, %315 ], [ %332, %330 ]
  %336 = ptrtoint i8* %334 to i64
  %337 = icmp ult i8* %334, %320
  br i1 %337, label %338, label %462

; <label>:338:                                    ; preds = %333
  %339 = sub i64 %1, %336
  %340 = getelementptr i8, i8* %0, i64 %339
  %341 = ptrtoint i8* %340 to i64
  %342 = icmp ult i8* %340, inttoptr (i64 32 to i8*)
  br i1 %342, label %343, label %346

; <label>:343:                                    ; preds = %435, %349, %346, %338
  %344 = phi i8* [ %335, %349 ], [ %335, %346 ], [ %335, %338 ], [ %357, %435 ]
  %345 = phi i8* [ %334, %349 ], [ %334, %346 ], [ %334, %338 ], [ %358, %435 ]
  br label %450

; <label>:346:                                    ; preds = %338
  %347 = and i64 %341, -32
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %343, label %349

; <label>:349:                                    ; preds = %346
  %350 = sub i64 %1, %336
  %351 = getelementptr i8, i8* %0, i64 %350
  %352 = ptrtoint i8* %351 to i64
  %353 = getelementptr i8, i8* %335, i64 %352
  %354 = icmp ult i8* %335, %320
  %355 = icmp ult i8* %334, %353
  %356 = and i1 %354, %355
  %357 = getelementptr i8, i8* %335, i64 %347
  %358 = getelementptr i8, i8* %334, i64 %347
  br i1 %356, label %343, label %359

; <label>:359:                                    ; preds = %349
  %360 = add i64 %347, -32
  %361 = lshr exact i64 %360, 5
  %362 = add nuw nsw i64 %361, 1
  %363 = and i64 %362, 3
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %383, label %365

; <label>:365:                                    ; preds = %359
  br label %366

; <label>:366:                                    ; preds = %366, %365
  %367 = phi i64 [ %379, %366 ], [ 0, %365 ]
  %368 = phi i64 [ %380, %366 ], [ %363, %365 ]
  %369 = getelementptr i8, i8* %335, i64 %367
  %370 = getelementptr i8, i8* %334, i64 %367
  %371 = bitcast i8* %370 to <16 x i8>*
  %372 = load <16 x i8>, <16 x i8>* %371, align 1
  %373 = getelementptr i8, i8* %370, i64 16
  %374 = bitcast i8* %373 to <16 x i8>*
  %375 = load <16 x i8>, <16 x i8>* %374, align 1
  %376 = bitcast i8* %369 to <16 x i8>*
  store <16 x i8> %372, <16 x i8>* %376, align 1
  %377 = getelementptr i8, i8* %369, i64 16
  %378 = bitcast i8* %377 to <16 x i8>*
  store <16 x i8> %375, <16 x i8>* %378, align 1
  %379 = add i64 %367, 32
  %380 = add i64 %368, -1
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %366

; <label>:382:                                    ; preds = %366
  br label %383

; <label>:383:                                    ; preds = %359, %382
  %384 = phi i64 [ 0, %359 ], [ %379, %382 ]
  %385 = icmp ult i64 %360, 96
  br i1 %385, label %435, label %386

; <label>:386:                                    ; preds = %383
  br label %387

; <label>:387:                                    ; preds = %387, %386
  %388 = phi i64 [ %384, %386 ], [ %432, %387 ]
  %389 = getelementptr i8, i8* %335, i64 %388
  %390 = getelementptr i8, i8* %334, i64 %388
  %391 = bitcast i8* %390 to <16 x i8>*
  %392 = load <16 x i8>, <16 x i8>* %391, align 1
  %393 = getelementptr i8, i8* %390, i64 16
  %394 = bitcast i8* %393 to <16 x i8>*
  %395 = load <16 x i8>, <16 x i8>* %394, align 1
  %396 = bitcast i8* %389 to <16 x i8>*
  store <16 x i8> %392, <16 x i8>* %396, align 1
  %397 = getelementptr i8, i8* %389, i64 16
  %398 = bitcast i8* %397 to <16 x i8>*
  store <16 x i8> %395, <16 x i8>* %398, align 1
  %399 = add i64 %388, 32
  %400 = getelementptr i8, i8* %335, i64 %399
  %401 = getelementptr i8, i8* %334, i64 %399
  %402 = bitcast i8* %401 to <16 x i8>*
  %403 = load <16 x i8>, <16 x i8>* %402, align 1
  %404 = getelementptr i8, i8* %401, i64 16
  %405 = bitcast i8* %404 to <16 x i8>*
  %406 = load <16 x i8>, <16 x i8>* %405, align 1
  %407 = bitcast i8* %400 to <16 x i8>*
  store <16 x i8> %403, <16 x i8>* %407, align 1
  %408 = getelementptr i8, i8* %400, i64 16
  %409 = bitcast i8* %408 to <16 x i8>*
  store <16 x i8> %406, <16 x i8>* %409, align 1
  %410 = add i64 %388, 64
  %411 = getelementptr i8, i8* %335, i64 %410
  %412 = getelementptr i8, i8* %334, i64 %410
  %413 = bitcast i8* %412 to <16 x i8>*
  %414 = load <16 x i8>, <16 x i8>* %413, align 1
  %415 = getelementptr i8, i8* %412, i64 16
  %416 = bitcast i8* %415 to <16 x i8>*
  %417 = load <16 x i8>, <16 x i8>* %416, align 1
  %418 = bitcast i8* %411 to <16 x i8>*
  store <16 x i8> %414, <16 x i8>* %418, align 1
  %419 = getelementptr i8, i8* %411, i64 16
  %420 = bitcast i8* %419 to <16 x i8>*
  store <16 x i8> %417, <16 x i8>* %420, align 1
  %421 = add i64 %388, 96
  %422 = getelementptr i8, i8* %335, i64 %421
  %423 = getelementptr i8, i8* %334, i64 %421
  %424 = bitcast i8* %423 to <16 x i8>*
  %425 = load <16 x i8>, <16 x i8>* %424, align 1
  %426 = getelementptr i8, i8* %423, i64 16
  %427 = bitcast i8* %426 to <16 x i8>*
  %428 = load <16 x i8>, <16 x i8>* %427, align 1
  %429 = bitcast i8* %422 to <16 x i8>*
  store <16 x i8> %425, <16 x i8>* %429, align 1
  %430 = getelementptr i8, i8* %422, i64 16
  %431 = bitcast i8* %430 to <16 x i8>*
  store <16 x i8> %428, <16 x i8>* %431, align 1
  %432 = add i64 %388, 128
  %433 = icmp eq i64 %432, %347
  br i1 %433, label %434, label %387

; <label>:434:                                    ; preds = %387
  br label %435

; <label>:435:                                    ; preds = %383, %434
  %436 = icmp eq i64 %341, %347
  br i1 %436, label %458, label %343

; <label>:437:                                    ; preds = %323
  %438 = zext i32 %327 to i64
  %439 = icmp ult i8 %326, 64
  %440 = shl i64 1, %438
  %441 = and i64 %440, 317209104613377
  %442 = icmp ne i64 %441, 0
  %443 = and i1 %439, %442
  br i1 %443, label %444, label %446

; <label>:444:                                    ; preds = %437
  %445 = getelementptr inbounds i8, i8* %324, i64 1
  store i8 %326, i8* %324, align 1
  br label %446

; <label>:446:                                    ; preds = %444, %437
  %447 = phi i8* [ %445, %444 ], [ %324, %437 ]
  %448 = getelementptr inbounds i8, i8* %325, i64 1
  %449 = icmp ult i8* %448, %320
  br i1 %449, label %323, label %330

; <label>:450:                                    ; preds = %343, %450
  %451 = phi i8* [ %455, %450 ], [ %344, %343 ]
  %452 = phi i8* [ %453, %450 ], [ %345, %343 ]
  %453 = getelementptr inbounds i8, i8* %452, i64 1
  %454 = load i8, i8* %452, align 1
  %455 = getelementptr inbounds i8, i8* %451, i64 1
  store i8 %454, i8* %451, align 1
  %456 = icmp eq i8* %453, %320
  br i1 %456, label %457, label %450

; <label>:457:                                    ; preds = %450
  br label %458

; <label>:458:                                    ; preds = %457, %435
  %459 = getelementptr i8, i8* %0, i64 %339
  %460 = ptrtoint i8* %459 to i64
  %461 = getelementptr i8, i8* %335, i64 %460
  br label %462

; <label>:462:                                    ; preds = %333, %458
  %463 = phi i8* [ %335, %333 ], [ %461, %458 ]
  %464 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %463, i1 false) #9
  %465 = tail call i8* @__memcpy_chk(i8* %463, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %464) #9
  %466 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %318) #9
  br label %1973

; <label>:467:                                    ; preds = %6
  %468 = bitcast i8* %5 to i64*
  %469 = load i64, i64* %468, align 8
  %470 = getelementptr inbounds i8, i8* %0, i64 1
  %471 = getelementptr inbounds i8, i8* %0, i64 %1
  %472 = icmp sgt i64 %1, 1
  br i1 %472, label %473, label %484

; <label>:473:                                    ; preds = %467
  br label %474

; <label>:474:                                    ; preds = %473, %597
  %475 = phi i8* [ %598, %597 ], [ %470, %473 ]
  %476 = phi i8* [ %599, %597 ], [ %470, %473 ]
  %477 = load i8, i8* %476, align 1
  %478 = sext i8 %477 to i32
  %479 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %478, i64 8) #9
  %480 = icmp eq i8* %479, null
  br i1 %480, label %481, label %588

; <label>:481:                                    ; preds = %474, %597
  %482 = phi i8* [ %599, %597 ], [ %476, %474 ]
  %483 = phi i8* [ %598, %597 ], [ %475, %474 ]
  br label %484

; <label>:484:                                    ; preds = %481, %467
  %485 = phi i8* [ %470, %467 ], [ %482, %481 ]
  %486 = phi i8* [ %470, %467 ], [ %483, %481 ]
  %487 = ptrtoint i8* %485 to i64
  %488 = icmp ult i8* %485, %471
  br i1 %488, label %489, label %613

; <label>:489:                                    ; preds = %484
  %490 = sub i64 %1, %487
  %491 = getelementptr i8, i8* %0, i64 %490
  %492 = ptrtoint i8* %491 to i64
  %493 = icmp ult i8* %491, inttoptr (i64 32 to i8*)
  br i1 %493, label %494, label %497

; <label>:494:                                    ; preds = %586, %500, %497, %489
  %495 = phi i8* [ %486, %500 ], [ %486, %497 ], [ %486, %489 ], [ %508, %586 ]
  %496 = phi i8* [ %485, %500 ], [ %485, %497 ], [ %485, %489 ], [ %509, %586 ]
  br label %601

; <label>:497:                                    ; preds = %489
  %498 = and i64 %492, -32
  %499 = icmp eq i64 %498, 0
  br i1 %499, label %494, label %500

; <label>:500:                                    ; preds = %497
  %501 = sub i64 %1, %487
  %502 = getelementptr i8, i8* %0, i64 %501
  %503 = ptrtoint i8* %502 to i64
  %504 = getelementptr i8, i8* %486, i64 %503
  %505 = icmp ult i8* %486, %471
  %506 = icmp ult i8* %485, %504
  %507 = and i1 %505, %506
  %508 = getelementptr i8, i8* %486, i64 %498
  %509 = getelementptr i8, i8* %485, i64 %498
  br i1 %507, label %494, label %510

; <label>:510:                                    ; preds = %500
  %511 = add i64 %498, -32
  %512 = lshr exact i64 %511, 5
  %513 = add nuw nsw i64 %512, 1
  %514 = and i64 %513, 3
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %534, label %516

; <label>:516:                                    ; preds = %510
  br label %517

; <label>:517:                                    ; preds = %517, %516
  %518 = phi i64 [ %530, %517 ], [ 0, %516 ]
  %519 = phi i64 [ %531, %517 ], [ %514, %516 ]
  %520 = getelementptr i8, i8* %486, i64 %518
  %521 = getelementptr i8, i8* %485, i64 %518
  %522 = bitcast i8* %521 to <16 x i8>*
  %523 = load <16 x i8>, <16 x i8>* %522, align 1
  %524 = getelementptr i8, i8* %521, i64 16
  %525 = bitcast i8* %524 to <16 x i8>*
  %526 = load <16 x i8>, <16 x i8>* %525, align 1
  %527 = bitcast i8* %520 to <16 x i8>*
  store <16 x i8> %523, <16 x i8>* %527, align 1
  %528 = getelementptr i8, i8* %520, i64 16
  %529 = bitcast i8* %528 to <16 x i8>*
  store <16 x i8> %526, <16 x i8>* %529, align 1
  %530 = add i64 %518, 32
  %531 = add i64 %519, -1
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %533, label %517

; <label>:533:                                    ; preds = %517
  br label %534

; <label>:534:                                    ; preds = %510, %533
  %535 = phi i64 [ 0, %510 ], [ %530, %533 ]
  %536 = icmp ult i64 %511, 96
  br i1 %536, label %586, label %537

; <label>:537:                                    ; preds = %534
  br label %538

; <label>:538:                                    ; preds = %538, %537
  %539 = phi i64 [ %535, %537 ], [ %583, %538 ]
  %540 = getelementptr i8, i8* %486, i64 %539
  %541 = getelementptr i8, i8* %485, i64 %539
  %542 = bitcast i8* %541 to <16 x i8>*
  %543 = load <16 x i8>, <16 x i8>* %542, align 1
  %544 = getelementptr i8, i8* %541, i64 16
  %545 = bitcast i8* %544 to <16 x i8>*
  %546 = load <16 x i8>, <16 x i8>* %545, align 1
  %547 = bitcast i8* %540 to <16 x i8>*
  store <16 x i8> %543, <16 x i8>* %547, align 1
  %548 = getelementptr i8, i8* %540, i64 16
  %549 = bitcast i8* %548 to <16 x i8>*
  store <16 x i8> %546, <16 x i8>* %549, align 1
  %550 = add i64 %539, 32
  %551 = getelementptr i8, i8* %486, i64 %550
  %552 = getelementptr i8, i8* %485, i64 %550
  %553 = bitcast i8* %552 to <16 x i8>*
  %554 = load <16 x i8>, <16 x i8>* %553, align 1
  %555 = getelementptr i8, i8* %552, i64 16
  %556 = bitcast i8* %555 to <16 x i8>*
  %557 = load <16 x i8>, <16 x i8>* %556, align 1
  %558 = bitcast i8* %551 to <16 x i8>*
  store <16 x i8> %554, <16 x i8>* %558, align 1
  %559 = getelementptr i8, i8* %551, i64 16
  %560 = bitcast i8* %559 to <16 x i8>*
  store <16 x i8> %557, <16 x i8>* %560, align 1
  %561 = add i64 %539, 64
  %562 = getelementptr i8, i8* %486, i64 %561
  %563 = getelementptr i8, i8* %485, i64 %561
  %564 = bitcast i8* %563 to <16 x i8>*
  %565 = load <16 x i8>, <16 x i8>* %564, align 1
  %566 = getelementptr i8, i8* %563, i64 16
  %567 = bitcast i8* %566 to <16 x i8>*
  %568 = load <16 x i8>, <16 x i8>* %567, align 1
  %569 = bitcast i8* %562 to <16 x i8>*
  store <16 x i8> %565, <16 x i8>* %569, align 1
  %570 = getelementptr i8, i8* %562, i64 16
  %571 = bitcast i8* %570 to <16 x i8>*
  store <16 x i8> %568, <16 x i8>* %571, align 1
  %572 = add i64 %539, 96
  %573 = getelementptr i8, i8* %486, i64 %572
  %574 = getelementptr i8, i8* %485, i64 %572
  %575 = bitcast i8* %574 to <16 x i8>*
  %576 = load <16 x i8>, <16 x i8>* %575, align 1
  %577 = getelementptr i8, i8* %574, i64 16
  %578 = bitcast i8* %577 to <16 x i8>*
  %579 = load <16 x i8>, <16 x i8>* %578, align 1
  %580 = bitcast i8* %573 to <16 x i8>*
  store <16 x i8> %576, <16 x i8>* %580, align 1
  %581 = getelementptr i8, i8* %573, i64 16
  %582 = bitcast i8* %581 to <16 x i8>*
  store <16 x i8> %579, <16 x i8>* %582, align 1
  %583 = add i64 %539, 128
  %584 = icmp eq i64 %583, %498
  br i1 %584, label %585, label %538

; <label>:585:                                    ; preds = %538
  br label %586

; <label>:586:                                    ; preds = %534, %585
  %587 = icmp eq i64 %492, %498
  br i1 %587, label %609, label %494

; <label>:588:                                    ; preds = %474
  %589 = zext i32 %478 to i64
  %590 = icmp ult i8 %477, 64
  %591 = shl i64 1, %589
  %592 = and i64 %591, 316693708537857
  %593 = icmp ne i64 %592, 0
  %594 = and i1 %590, %593
  br i1 %594, label %595, label %597

; <label>:595:                                    ; preds = %588
  %596 = getelementptr inbounds i8, i8* %475, i64 1
  store i8 %477, i8* %475, align 1
  br label %597

; <label>:597:                                    ; preds = %595, %588
  %598 = phi i8* [ %596, %595 ], [ %475, %588 ]
  %599 = getelementptr inbounds i8, i8* %476, i64 1
  %600 = icmp ult i8* %599, %471
  br i1 %600, label %474, label %481

; <label>:601:                                    ; preds = %494, %601
  %602 = phi i8* [ %606, %601 ], [ %495, %494 ]
  %603 = phi i8* [ %604, %601 ], [ %496, %494 ]
  %604 = getelementptr inbounds i8, i8* %603, i64 1
  %605 = load i8, i8* %603, align 1
  %606 = getelementptr inbounds i8, i8* %602, i64 1
  store i8 %605, i8* %602, align 1
  %607 = icmp eq i8* %604, %471
  br i1 %607, label %608, label %601

; <label>:608:                                    ; preds = %601
  br label %609

; <label>:609:                                    ; preds = %608, %586
  %610 = getelementptr i8, i8* %0, i64 %490
  %611 = ptrtoint i8* %610 to i64
  %612 = getelementptr i8, i8* %486, i64 %611
  br label %613

; <label>:613:                                    ; preds = %484, %609
  %614 = phi i8* [ %486, %484 ], [ %612, %609 ]
  %615 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %614, i1 false) #9
  %616 = tail call i8* @__memcpy_chk(i8* %614, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %615) #9
  %617 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %469) #9
  br label %1973

; <label>:618:                                    ; preds = %6
  %619 = bitcast i8* %5 to i64*
  %620 = load i64, i64* %619, align 8
  switch i64 %620, label %739 [
    i64 1633904243, label %741
    i64 44533, label %621
    i64 44543, label %622
    i64 1397113167, label %623
    i64 151263540, label %624
    i64 1635083891, label %625
    i64 391, label %626
    i64 325456742, label %627
    i64 1111905073, label %628
    i64 1650746742, label %629
    i64 464386766, label %630
    i64 3405662737, label %631
    i64 1112100429, label %632
    i64 2435016766, label %633
    i64 1936880249, label %634
    i64 12805120, label %635
    i64 2613483, label %636
    i64 1667723888, label %637
    i64 4283649346, label %638
    i64 1937076805, label %639
    i64 19920823, label %640
    i64 1650812272, label %641
    i64 684539205, label %642
    i64 1161678120, label %643
    i64 1684300152, label %644
    i64 1684170528, label %645
    i64 4979, label %646
    i64 7377, label %647
    i64 61791, label %648
    i64 3730735588, label %649
    i64 4278867, label %650
    i64 24053, label %651
    i64 4989, label %652
    i64 61267, label %653
    i64 61265, label %654
    i64 4076150800, label %655
    i64 16390, label %656
    i64 428016422, label %657
    i64 1702057286, label %658
    i64 1702057283, label %659
    i64 195894762, label %660
    i64 18225520, label %661
    i64 1196443219, label %662
    i64 16964, label %663
    i64 18475, label %664
    i64 18520, label %665
    i64 12648430, label %666
    i64 4187351113, label %667
    i64 2508478710, label %668
    i64 288389204, label %669
    i64 19993000, label %670
    i64 732765674, label %671
    i64 38496, label %672
    i64 16388, label %673
    i64 16384, label %674
    i64 1984, label %675
    i64 29366, label %676
    i64 827541066, label %677
    i64 1799439955, label %678
    i64 3380511080, label %679
    i64 198183888, label %680
    i64 1397109069, label %681
    i64 4991, label %682
    i64 5007, label %683
    i64 9320, label %684
    i64 9336, label %685
    i64 19802, label %686
    i64 427819522, label %687
    i64 19780, label %688
    i64 22092, label %689
    i64 26985, label %690
    i64 1852207972, label %691
    i64 13364, label %692
    i64 1853056627, label %693
    i64 1397118030, label %694
    i64 40865, label %695
    i64 1952539503, label %696
    i64 2035054128, label %697
    i64 2866260714, label %698
    i64 1346981957, label %699
    i64 2088527475, label %700
    i64 40864, label %701
    i64 1634035564, label %702
    i64 47, label %703
    i64 1746473250, label %704
    i64 2240043254, label %705
    i64 124082209, label %706
    i64 1382369651, label %707
    i64 29301, label %708
    i64 1733912937, label %709
    i64 1935894131, label %710
    i64 4185718668, label %711
    i64 1128357203, label %712
    i64 20859, label %713
    i64 4266872130, label %714
    i64 3203391149, label %715
    i64 1397703499, label %716
    i64 1936814952, label %717
    i64 1650812274, label %718
    i64 19920822, label %719
    i64 19920821, label %720
    i64 16914836, label %721
    i64 1953653091, label %722
    i64 604313861, label %723
    i64 352400198, label %724
    i64 72020, label %725
    i64 1410924800, label %726
    i64 40866, label %727
    i64 16914839, label %728
    i64 3133910204, label %729
    i64 2768370933, label %730
    i64 1448756819, label %731
    i64 1397114950, label %732
    i64 2881100148, label %733
    i64 19920820, label %734
    i64 1481003842, label %735
    i64 19911021, label %736
    i64 801189825, label %737
    i64 1479104553, label %738
  ]

; <label>:621:                                    ; preds = %618
  br label %741

; <label>:622:                                    ; preds = %618
  br label %741

; <label>:623:                                    ; preds = %618
  br label %741

; <label>:624:                                    ; preds = %618
  br label %741

; <label>:625:                                    ; preds = %618
  br label %741

; <label>:626:                                    ; preds = %618
  br label %741

; <label>:627:                                    ; preds = %618
  br label %741

; <label>:628:                                    ; preds = %618
  br label %741

; <label>:629:                                    ; preds = %618
  br label %741

; <label>:630:                                    ; preds = %618
  br label %741

; <label>:631:                                    ; preds = %618
  br label %741

; <label>:632:                                    ; preds = %618
  br label %741

; <label>:633:                                    ; preds = %618
  br label %741

; <label>:634:                                    ; preds = %618
  br label %741

; <label>:635:                                    ; preds = %618
  br label %741

; <label>:636:                                    ; preds = %618
  br label %741

; <label>:637:                                    ; preds = %618
  br label %741

; <label>:638:                                    ; preds = %618
  br label %741

; <label>:639:                                    ; preds = %618
  br label %741

; <label>:640:                                    ; preds = %618
  br label %741

; <label>:641:                                    ; preds = %618
  br label %741

; <label>:642:                                    ; preds = %618
  br label %741

; <label>:643:                                    ; preds = %618
  br label %741

; <label>:644:                                    ; preds = %618
  br label %741

; <label>:645:                                    ; preds = %618
  br label %741

; <label>:646:                                    ; preds = %618
  br label %741

; <label>:647:                                    ; preds = %618
  br label %741

; <label>:648:                                    ; preds = %618
  br label %741

; <label>:649:                                    ; preds = %618
  br label %741

; <label>:650:                                    ; preds = %618
  br label %741

; <label>:651:                                    ; preds = %618
  br label %741

; <label>:652:                                    ; preds = %618
  br label %741

; <label>:653:                                    ; preds = %618
  br label %741

; <label>:654:                                    ; preds = %618
  br label %741

; <label>:655:                                    ; preds = %618
  br label %741

; <label>:656:                                    ; preds = %618
  br label %741

; <label>:657:                                    ; preds = %618
  br label %741

; <label>:658:                                    ; preds = %618
  br label %741

; <label>:659:                                    ; preds = %618
  br label %741

; <label>:660:                                    ; preds = %618
  br label %741

; <label>:661:                                    ; preds = %618
  br label %741

; <label>:662:                                    ; preds = %618
  br label %741

; <label>:663:                                    ; preds = %618
  br label %741

; <label>:664:                                    ; preds = %618
  br label %741

; <label>:665:                                    ; preds = %618
  br label %741

; <label>:666:                                    ; preds = %618
  br label %741

; <label>:667:                                    ; preds = %618
  br label %741

; <label>:668:                                    ; preds = %618
  br label %741

; <label>:669:                                    ; preds = %618
  br label %741

; <label>:670:                                    ; preds = %618
  br label %741

; <label>:671:                                    ; preds = %618
  br label %741

; <label>:672:                                    ; preds = %618
  br label %741

; <label>:673:                                    ; preds = %618
  br label %741

; <label>:674:                                    ; preds = %618
  br label %741

; <label>:675:                                    ; preds = %618
  br label %741

; <label>:676:                                    ; preds = %618
  br label %741

; <label>:677:                                    ; preds = %618
  br label %741

; <label>:678:                                    ; preds = %618
  br label %741

; <label>:679:                                    ; preds = %618
  br label %741

; <label>:680:                                    ; preds = %618
  br label %741

; <label>:681:                                    ; preds = %618
  br label %741

; <label>:682:                                    ; preds = %618
  br label %741

; <label>:683:                                    ; preds = %618
  br label %741

; <label>:684:                                    ; preds = %618
  br label %741

; <label>:685:                                    ; preds = %618
  br label %741

; <label>:686:                                    ; preds = %618
  br label %741

; <label>:687:                                    ; preds = %618
  br label %741

; <label>:688:                                    ; preds = %618
  br label %741

; <label>:689:                                    ; preds = %618
  br label %741

; <label>:690:                                    ; preds = %618
  br label %741

; <label>:691:                                    ; preds = %618
  br label %741

; <label>:692:                                    ; preds = %618
  br label %741

; <label>:693:                                    ; preds = %618
  br label %741

; <label>:694:                                    ; preds = %618
  br label %741

; <label>:695:                                    ; preds = %618
  br label %741

; <label>:696:                                    ; preds = %618
  br label %741

; <label>:697:                                    ; preds = %618
  br label %741

; <label>:698:                                    ; preds = %618
  br label %741

; <label>:699:                                    ; preds = %618
  br label %741

; <label>:700:                                    ; preds = %618
  br label %741

; <label>:701:                                    ; preds = %618
  br label %741

; <label>:702:                                    ; preds = %618
  br label %741

; <label>:703:                                    ; preds = %618
  br label %741

; <label>:704:                                    ; preds = %618
  br label %741

; <label>:705:                                    ; preds = %618
  br label %741

; <label>:706:                                    ; preds = %618
  br label %741

; <label>:707:                                    ; preds = %618
  br label %741

; <label>:708:                                    ; preds = %618
  br label %741

; <label>:709:                                    ; preds = %618
  br label %741

; <label>:710:                                    ; preds = %618
  br label %741

; <label>:711:                                    ; preds = %618
  br label %741

; <label>:712:                                    ; preds = %618
  br label %741

; <label>:713:                                    ; preds = %618
  br label %741

; <label>:714:                                    ; preds = %618
  br label %741

; <label>:715:                                    ; preds = %618
  br label %741

; <label>:716:                                    ; preds = %618
  br label %741

; <label>:717:                                    ; preds = %618
  br label %741

; <label>:718:                                    ; preds = %618
  br label %741

; <label>:719:                                    ; preds = %618
  br label %741

; <label>:720:                                    ; preds = %618
  br label %741

; <label>:721:                                    ; preds = %618
  br label %741

; <label>:722:                                    ; preds = %618
  br label %741

; <label>:723:                                    ; preds = %618
  br label %741

; <label>:724:                                    ; preds = %618
  br label %741

; <label>:725:                                    ; preds = %618
  br label %741

; <label>:726:                                    ; preds = %618
  br label %741

; <label>:727:                                    ; preds = %618
  br label %741

; <label>:728:                                    ; preds = %618
  br label %741

; <label>:729:                                    ; preds = %618
  br label %741

; <label>:730:                                    ; preds = %618
  br label %741

; <label>:731:                                    ; preds = %618
  br label %741

; <label>:732:                                    ; preds = %618
  br label %741

; <label>:733:                                    ; preds = %618
  br label %741

; <label>:734:                                    ; preds = %618
  br label %741

; <label>:735:                                    ; preds = %618
  br label %741

; <label>:736:                                    ; preds = %618
  br label %741

; <label>:737:                                    ; preds = %618
  br label %741

; <label>:738:                                    ; preds = %618
  br label %741

; <label>:739:                                    ; preds = %618
  %740 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @human_fstype.buf, i64 0, i64 0), i32 1, i64 29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.186, i64 0, i64 0), i64 %620) #9
  br label %741

; <label>:741:                                    ; preds = %618, %621, %622, %623, %624, %625, %626, %627, %628, %629, %630, %631, %632, %633, %634, %635, %636, %637, %638, %639, %640, %641, %642, %643, %644, %645, %646, %647, %648, %649, %650, %651, %652, %653, %654, %655, %656, %657, %658, %659, %660, %661, %662, %663, %664, %665, %666, %667, %668, %669, %670, %671, %672, %673, %674, %675, %676, %677, %678, %679, %680, %681, %682, %683, %684, %685, %686, %687, %688, %689, %690, %691, %692, %693, %694, %695, %696, %697, %698, %699, %700, %701, %702, %703, %704, %705, %706, %707, %708, %709, %710, %711, %712, %713, %714, %715, %716, %717, %718, %719, %720, %721, %722, %723, %724, %725, %726, %727, %728, %729, %730, %731, %732, %733, %734, %735, %736, %737, %738, %739
  %742 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @human_fstype.buf, i64 0, i64 0), %739 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.185, i64 0, i64 0), %738 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.184, i64 0, i64 0), %737 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.183, i64 0, i64 0), %736 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.182, i64 0, i64 0), %735 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.181, i64 0, i64 0), %734 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.180, i64 0, i64 0), %733 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i64 0, i64 0), %732 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.178, i64 0, i64 0), %731 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.177, i64 0, i64 0), %730 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.176, i64 0, i64 0), %729 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.175, i64 0, i64 0), %728 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.174, i64 0, i64 0), %727 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), %726 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.173, i64 0, i64 0), %725 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.172, i64 0, i64 0), %724 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.171, i64 0, i64 0), %723 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.170, i64 0, i64 0), %722 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.169, i64 0, i64 0), %721 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i64 0, i64 0), %720 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.167, i64 0, i64 0), %719 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.166, i64 0, i64 0), %718 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.165, i64 0, i64 0), %717 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0), %716 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.163, i64 0, i64 0), %715 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i64 0, i64 0), %714 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i64 0, i64 0), %713 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.160, i64 0, i64 0), %712 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.159, i64 0, i64 0), %711 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.158, i64 0, i64 0), %710 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.157, i64 0, i64 0), %709 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i64 0, i64 0), %708 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.155, i64 0, i64 0), %707 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.154, i64 0, i64 0), %706 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i64 0, i64 0), %705 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), %704 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.151, i64 0, i64 0), %703 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i64 0, i64 0), %702 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), %701 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i64 0, i64 0), %700 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.147, i64 0, i64 0), %699 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i64 0, i64 0), %698 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.145, i64 0, i64 0), %697 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.144, i64 0, i64 0), %696 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.143, i64 0, i64 0), %695 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.142, i64 0, i64 0), %694 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.141, i64 0, i64 0), %693 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i64 0, i64 0), %692 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i64 0, i64 0), %691 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.138, i64 0, i64 0), %690 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i64 0, i64 0), %689 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i64 0, i64 0), %688 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i64 0, i64 0), %687 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i64 0, i64 0), %686 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.133, i64 0, i64 0), %685 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i64 0, i64 0), %684 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.131, i64 0, i64 0), %683 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), %682 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i64 0, i64 0), %681 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i64 0, i64 0), %680 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i64 0, i64 0), %679 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i64 0, i64 0), %678 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.125, i64 0, i64 0), %677 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.124, i64 0, i64 0), %676 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0), %675 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), %674 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), %673 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), %672 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i64 0, i64 0), %671 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i64 0, i64 0), %670 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i64 0, i64 0), %669 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.118, i64 0, i64 0), %668 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), %667 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i64 0, i64 0), %666 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0), %665 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), %664 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i64 0, i64 0), %663 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0), %662 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i64 0, i64 0), %661 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i64 0, i64 0), %660 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i64 0, i64 0), %659 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.108, i64 0, i64 0), %658 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i64 0, i64 0), %657 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.106, i64 0, i64 0), %656 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0), %655 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), %654 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), %653 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0), %652 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i64 0, i64 0), %651 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0), %650 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i64 0, i64 0), %649 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0), %648 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i64 0, i64 0), %647 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i64 0, i64 0), %646 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0), %645 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i64 0, i64 0), %644 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), %643 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0), %642 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.91, i64 0, i64 0), %641 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i64 0, i64 0), %640 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), %639 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), %638 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i64 0, i64 0), %637 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i64 0, i64 0), %636 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), %635 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i64 0, i64 0), %634 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), %633 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), %632 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.81, i64 0, i64 0), %631 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), %630 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), %629 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i64 0, i64 0), %628 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i64 0, i64 0), %627 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), %626 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), %625 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0), %624 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), %623 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %622 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), %621 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), %618 ]
  %743 = getelementptr inbounds i8, i8* %0, i64 1
  %744 = getelementptr inbounds i8, i8* %0, i64 %1
  %745 = icmp sgt i64 %1, 1
  br i1 %745, label %746, label %757

; <label>:746:                                    ; preds = %741
  br label %747

; <label>:747:                                    ; preds = %746, %870
  %748 = phi i8* [ %871, %870 ], [ %743, %746 ]
  %749 = phi i8* [ %872, %870 ], [ %743, %746 ]
  %750 = load i8, i8* %749, align 1
  %751 = sext i8 %750 to i32
  %752 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %751, i64 8) #9
  %753 = icmp eq i8* %752, null
  br i1 %753, label %754, label %861

; <label>:754:                                    ; preds = %747, %870
  %755 = phi i8* [ %872, %870 ], [ %749, %747 ]
  %756 = phi i8* [ %871, %870 ], [ %748, %747 ]
  br label %757

; <label>:757:                                    ; preds = %754, %741
  %758 = phi i8* [ %743, %741 ], [ %755, %754 ]
  %759 = phi i8* [ %743, %741 ], [ %756, %754 ]
  %760 = ptrtoint i8* %758 to i64
  %761 = icmp ult i8* %758, %744
  br i1 %761, label %762, label %886

; <label>:762:                                    ; preds = %757
  %763 = sub i64 %1, %760
  %764 = getelementptr i8, i8* %0, i64 %763
  %765 = ptrtoint i8* %764 to i64
  %766 = icmp ult i8* %764, inttoptr (i64 32 to i8*)
  br i1 %766, label %767, label %770

; <label>:767:                                    ; preds = %859, %773, %770, %762
  %768 = phi i8* [ %759, %773 ], [ %759, %770 ], [ %759, %762 ], [ %781, %859 ]
  %769 = phi i8* [ %758, %773 ], [ %758, %770 ], [ %758, %762 ], [ %782, %859 ]
  br label %874

; <label>:770:                                    ; preds = %762
  %771 = and i64 %765, -32
  %772 = icmp eq i64 %771, 0
  br i1 %772, label %767, label %773

; <label>:773:                                    ; preds = %770
  %774 = sub i64 %1, %760
  %775 = getelementptr i8, i8* %0, i64 %774
  %776 = ptrtoint i8* %775 to i64
  %777 = getelementptr i8, i8* %759, i64 %776
  %778 = icmp ult i8* %759, %744
  %779 = icmp ult i8* %758, %777
  %780 = and i1 %778, %779
  %781 = getelementptr i8, i8* %759, i64 %771
  %782 = getelementptr i8, i8* %758, i64 %771
  br i1 %780, label %767, label %783

; <label>:783:                                    ; preds = %773
  %784 = add i64 %771, -32
  %785 = lshr exact i64 %784, 5
  %786 = add nuw nsw i64 %785, 1
  %787 = and i64 %786, 3
  %788 = icmp eq i64 %787, 0
  br i1 %788, label %807, label %789

; <label>:789:                                    ; preds = %783
  br label %790

; <label>:790:                                    ; preds = %790, %789
  %791 = phi i64 [ %803, %790 ], [ 0, %789 ]
  %792 = phi i64 [ %804, %790 ], [ %787, %789 ]
  %793 = getelementptr i8, i8* %759, i64 %791
  %794 = getelementptr i8, i8* %758, i64 %791
  %795 = bitcast i8* %794 to <16 x i8>*
  %796 = load <16 x i8>, <16 x i8>* %795, align 1
  %797 = getelementptr i8, i8* %794, i64 16
  %798 = bitcast i8* %797 to <16 x i8>*
  %799 = load <16 x i8>, <16 x i8>* %798, align 1
  %800 = bitcast i8* %793 to <16 x i8>*
  store <16 x i8> %796, <16 x i8>* %800, align 1
  %801 = getelementptr i8, i8* %793, i64 16
  %802 = bitcast i8* %801 to <16 x i8>*
  store <16 x i8> %799, <16 x i8>* %802, align 1
  %803 = add i64 %791, 32
  %804 = add i64 %792, -1
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %790

; <label>:806:                                    ; preds = %790
  br label %807

; <label>:807:                                    ; preds = %783, %806
  %808 = phi i64 [ 0, %783 ], [ %803, %806 ]
  %809 = icmp ult i64 %784, 96
  br i1 %809, label %859, label %810

; <label>:810:                                    ; preds = %807
  br label %811

; <label>:811:                                    ; preds = %811, %810
  %812 = phi i64 [ %808, %810 ], [ %856, %811 ]
  %813 = getelementptr i8, i8* %759, i64 %812
  %814 = getelementptr i8, i8* %758, i64 %812
  %815 = bitcast i8* %814 to <16 x i8>*
  %816 = load <16 x i8>, <16 x i8>* %815, align 1
  %817 = getelementptr i8, i8* %814, i64 16
  %818 = bitcast i8* %817 to <16 x i8>*
  %819 = load <16 x i8>, <16 x i8>* %818, align 1
  %820 = bitcast i8* %813 to <16 x i8>*
  store <16 x i8> %816, <16 x i8>* %820, align 1
  %821 = getelementptr i8, i8* %813, i64 16
  %822 = bitcast i8* %821 to <16 x i8>*
  store <16 x i8> %819, <16 x i8>* %822, align 1
  %823 = add i64 %812, 32
  %824 = getelementptr i8, i8* %759, i64 %823
  %825 = getelementptr i8, i8* %758, i64 %823
  %826 = bitcast i8* %825 to <16 x i8>*
  %827 = load <16 x i8>, <16 x i8>* %826, align 1
  %828 = getelementptr i8, i8* %825, i64 16
  %829 = bitcast i8* %828 to <16 x i8>*
  %830 = load <16 x i8>, <16 x i8>* %829, align 1
  %831 = bitcast i8* %824 to <16 x i8>*
  store <16 x i8> %827, <16 x i8>* %831, align 1
  %832 = getelementptr i8, i8* %824, i64 16
  %833 = bitcast i8* %832 to <16 x i8>*
  store <16 x i8> %830, <16 x i8>* %833, align 1
  %834 = add i64 %812, 64
  %835 = getelementptr i8, i8* %759, i64 %834
  %836 = getelementptr i8, i8* %758, i64 %834
  %837 = bitcast i8* %836 to <16 x i8>*
  %838 = load <16 x i8>, <16 x i8>* %837, align 1
  %839 = getelementptr i8, i8* %836, i64 16
  %840 = bitcast i8* %839 to <16 x i8>*
  %841 = load <16 x i8>, <16 x i8>* %840, align 1
  %842 = bitcast i8* %835 to <16 x i8>*
  store <16 x i8> %838, <16 x i8>* %842, align 1
  %843 = getelementptr i8, i8* %835, i64 16
  %844 = bitcast i8* %843 to <16 x i8>*
  store <16 x i8> %841, <16 x i8>* %844, align 1
  %845 = add i64 %812, 96
  %846 = getelementptr i8, i8* %759, i64 %845
  %847 = getelementptr i8, i8* %758, i64 %845
  %848 = bitcast i8* %847 to <16 x i8>*
  %849 = load <16 x i8>, <16 x i8>* %848, align 1
  %850 = getelementptr i8, i8* %847, i64 16
  %851 = bitcast i8* %850 to <16 x i8>*
  %852 = load <16 x i8>, <16 x i8>* %851, align 1
  %853 = bitcast i8* %846 to <16 x i8>*
  store <16 x i8> %849, <16 x i8>* %853, align 1
  %854 = getelementptr i8, i8* %846, i64 16
  %855 = bitcast i8* %854 to <16 x i8>*
  store <16 x i8> %852, <16 x i8>* %855, align 1
  %856 = add i64 %812, 128
  %857 = icmp eq i64 %856, %771
  br i1 %857, label %858, label %811

; <label>:858:                                    ; preds = %811
  br label %859

; <label>:859:                                    ; preds = %807, %858
  %860 = icmp eq i64 %765, %771
  br i1 %860, label %882, label %767

; <label>:861:                                    ; preds = %747
  %862 = zext i32 %751 to i64
  %863 = icmp ult i8 %750, 64
  %864 = shl i64 1, %862
  %865 = and i64 %864, 35184372088833
  %866 = icmp ne i64 %865, 0
  %867 = and i1 %863, %866
  br i1 %867, label %868, label %870

; <label>:868:                                    ; preds = %861
  %869 = getelementptr inbounds i8, i8* %748, i64 1
  store i8 %750, i8* %748, align 1
  br label %870

; <label>:870:                                    ; preds = %868, %861
  %871 = phi i8* [ %869, %868 ], [ %748, %861 ]
  %872 = getelementptr inbounds i8, i8* %749, i64 1
  %873 = icmp ult i8* %872, %744
  br i1 %873, label %747, label %754

; <label>:874:                                    ; preds = %767, %874
  %875 = phi i8* [ %879, %874 ], [ %768, %767 ]
  %876 = phi i8* [ %877, %874 ], [ %769, %767 ]
  %877 = getelementptr inbounds i8, i8* %876, i64 1
  %878 = load i8, i8* %876, align 1
  %879 = getelementptr inbounds i8, i8* %875, i64 1
  store i8 %878, i8* %875, align 1
  %880 = icmp eq i8* %877, %744
  br i1 %880, label %881, label %874

; <label>:881:                                    ; preds = %874
  br label %882

; <label>:882:                                    ; preds = %881, %859
  %883 = getelementptr i8, i8* %0, i64 %763
  %884 = ptrtoint i8* %883 to i64
  %885 = getelementptr i8, i8* %759, i64 %884
  br label %886

; <label>:886:                                    ; preds = %757, %882
  %887 = phi i8* [ %759, %757 ], [ %885, %882 ]
  %888 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %887, i1 false) #9
  %889 = tail call i8* @__memcpy_chk(i8* %887, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %888) #9
  %890 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %742) #9
  br label %1973

; <label>:891:                                    ; preds = %6
  %892 = getelementptr inbounds i8, i8* %5, i64 16
  %893 = bitcast i8* %892 to i64*
  %894 = load i64, i64* %893, align 8
  %895 = getelementptr inbounds i8, i8* %0, i64 1
  %896 = getelementptr inbounds i8, i8* %0, i64 %1
  %897 = icmp sgt i64 %1, 1
  br i1 %897, label %898, label %909

; <label>:898:                                    ; preds = %891
  br label %899

; <label>:899:                                    ; preds = %898, %1022
  %900 = phi i8* [ %1023, %1022 ], [ %895, %898 ]
  %901 = phi i8* [ %1024, %1022 ], [ %895, %898 ]
  %902 = load i8, i8* %901, align 1
  %903 = sext i8 %902 to i32
  %904 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %903, i64 8) #9
  %905 = icmp eq i8* %904, null
  br i1 %905, label %906, label %1013

; <label>:906:                                    ; preds = %899, %1022
  %907 = phi i8* [ %1024, %1022 ], [ %901, %899 ]
  %908 = phi i8* [ %1023, %1022 ], [ %900, %899 ]
  br label %909

; <label>:909:                                    ; preds = %906, %891
  %910 = phi i8* [ %895, %891 ], [ %907, %906 ]
  %911 = phi i8* [ %895, %891 ], [ %908, %906 ]
  %912 = ptrtoint i8* %910 to i64
  %913 = icmp ult i8* %910, %896
  br i1 %913, label %914, label %1038

; <label>:914:                                    ; preds = %909
  %915 = sub i64 %1, %912
  %916 = getelementptr i8, i8* %0, i64 %915
  %917 = ptrtoint i8* %916 to i64
  %918 = icmp ult i8* %916, inttoptr (i64 32 to i8*)
  br i1 %918, label %919, label %922

; <label>:919:                                    ; preds = %1011, %925, %922, %914
  %920 = phi i8* [ %911, %925 ], [ %911, %922 ], [ %911, %914 ], [ %933, %1011 ]
  %921 = phi i8* [ %910, %925 ], [ %910, %922 ], [ %910, %914 ], [ %934, %1011 ]
  br label %1026

; <label>:922:                                    ; preds = %914
  %923 = and i64 %917, -32
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %919, label %925

; <label>:925:                                    ; preds = %922
  %926 = sub i64 %1, %912
  %927 = getelementptr i8, i8* %0, i64 %926
  %928 = ptrtoint i8* %927 to i64
  %929 = getelementptr i8, i8* %911, i64 %928
  %930 = icmp ult i8* %911, %896
  %931 = icmp ult i8* %910, %929
  %932 = and i1 %930, %931
  %933 = getelementptr i8, i8* %911, i64 %923
  %934 = getelementptr i8, i8* %910, i64 %923
  br i1 %932, label %919, label %935

; <label>:935:                                    ; preds = %925
  %936 = add i64 %923, -32
  %937 = lshr exact i64 %936, 5
  %938 = add nuw nsw i64 %937, 1
  %939 = and i64 %938, 3
  %940 = icmp eq i64 %939, 0
  br i1 %940, label %959, label %941

; <label>:941:                                    ; preds = %935
  br label %942

; <label>:942:                                    ; preds = %942, %941
  %943 = phi i64 [ %955, %942 ], [ 0, %941 ]
  %944 = phi i64 [ %956, %942 ], [ %939, %941 ]
  %945 = getelementptr i8, i8* %911, i64 %943
  %946 = getelementptr i8, i8* %910, i64 %943
  %947 = bitcast i8* %946 to <16 x i8>*
  %948 = load <16 x i8>, <16 x i8>* %947, align 1
  %949 = getelementptr i8, i8* %946, i64 16
  %950 = bitcast i8* %949 to <16 x i8>*
  %951 = load <16 x i8>, <16 x i8>* %950, align 1
  %952 = bitcast i8* %945 to <16 x i8>*
  store <16 x i8> %948, <16 x i8>* %952, align 1
  %953 = getelementptr i8, i8* %945, i64 16
  %954 = bitcast i8* %953 to <16 x i8>*
  store <16 x i8> %951, <16 x i8>* %954, align 1
  %955 = add i64 %943, 32
  %956 = add i64 %944, -1
  %957 = icmp eq i64 %956, 0
  br i1 %957, label %958, label %942

; <label>:958:                                    ; preds = %942
  br label %959

; <label>:959:                                    ; preds = %935, %958
  %960 = phi i64 [ 0, %935 ], [ %955, %958 ]
  %961 = icmp ult i64 %936, 96
  br i1 %961, label %1011, label %962

; <label>:962:                                    ; preds = %959
  br label %963

; <label>:963:                                    ; preds = %963, %962
  %964 = phi i64 [ %960, %962 ], [ %1008, %963 ]
  %965 = getelementptr i8, i8* %911, i64 %964
  %966 = getelementptr i8, i8* %910, i64 %964
  %967 = bitcast i8* %966 to <16 x i8>*
  %968 = load <16 x i8>, <16 x i8>* %967, align 1
  %969 = getelementptr i8, i8* %966, i64 16
  %970 = bitcast i8* %969 to <16 x i8>*
  %971 = load <16 x i8>, <16 x i8>* %970, align 1
  %972 = bitcast i8* %965 to <16 x i8>*
  store <16 x i8> %968, <16 x i8>* %972, align 1
  %973 = getelementptr i8, i8* %965, i64 16
  %974 = bitcast i8* %973 to <16 x i8>*
  store <16 x i8> %971, <16 x i8>* %974, align 1
  %975 = add i64 %964, 32
  %976 = getelementptr i8, i8* %911, i64 %975
  %977 = getelementptr i8, i8* %910, i64 %975
  %978 = bitcast i8* %977 to <16 x i8>*
  %979 = load <16 x i8>, <16 x i8>* %978, align 1
  %980 = getelementptr i8, i8* %977, i64 16
  %981 = bitcast i8* %980 to <16 x i8>*
  %982 = load <16 x i8>, <16 x i8>* %981, align 1
  %983 = bitcast i8* %976 to <16 x i8>*
  store <16 x i8> %979, <16 x i8>* %983, align 1
  %984 = getelementptr i8, i8* %976, i64 16
  %985 = bitcast i8* %984 to <16 x i8>*
  store <16 x i8> %982, <16 x i8>* %985, align 1
  %986 = add i64 %964, 64
  %987 = getelementptr i8, i8* %911, i64 %986
  %988 = getelementptr i8, i8* %910, i64 %986
  %989 = bitcast i8* %988 to <16 x i8>*
  %990 = load <16 x i8>, <16 x i8>* %989, align 1
  %991 = getelementptr i8, i8* %988, i64 16
  %992 = bitcast i8* %991 to <16 x i8>*
  %993 = load <16 x i8>, <16 x i8>* %992, align 1
  %994 = bitcast i8* %987 to <16 x i8>*
  store <16 x i8> %990, <16 x i8>* %994, align 1
  %995 = getelementptr i8, i8* %987, i64 16
  %996 = bitcast i8* %995 to <16 x i8>*
  store <16 x i8> %993, <16 x i8>* %996, align 1
  %997 = add i64 %964, 96
  %998 = getelementptr i8, i8* %911, i64 %997
  %999 = getelementptr i8, i8* %910, i64 %997
  %1000 = bitcast i8* %999 to <16 x i8>*
  %1001 = load <16 x i8>, <16 x i8>* %1000, align 1
  %1002 = getelementptr i8, i8* %999, i64 16
  %1003 = bitcast i8* %1002 to <16 x i8>*
  %1004 = load <16 x i8>, <16 x i8>* %1003, align 1
  %1005 = bitcast i8* %998 to <16 x i8>*
  store <16 x i8> %1001, <16 x i8>* %1005, align 1
  %1006 = getelementptr i8, i8* %998, i64 16
  %1007 = bitcast i8* %1006 to <16 x i8>*
  store <16 x i8> %1004, <16 x i8>* %1007, align 1
  %1008 = add i64 %964, 128
  %1009 = icmp eq i64 %1008, %923
  br i1 %1009, label %1010, label %963

; <label>:1010:                                   ; preds = %963
  br label %1011

; <label>:1011:                                   ; preds = %959, %1010
  %1012 = icmp eq i64 %917, %923
  br i1 %1012, label %1034, label %919

; <label>:1013:                                   ; preds = %899
  %1014 = zext i32 %903 to i64
  %1015 = icmp ult i8 %902, 64
  %1016 = shl i64 1, %1014
  %1017 = and i64 %1016, 326009492602881
  %1018 = icmp ne i64 %1017, 0
  %1019 = and i1 %1015, %1018
  br i1 %1019, label %1020, label %1022

; <label>:1020:                                   ; preds = %1013
  %1021 = getelementptr inbounds i8, i8* %900, i64 1
  store i8 %902, i8* %900, align 1
  br label %1022

; <label>:1022:                                   ; preds = %1020, %1013
  %1023 = phi i8* [ %1021, %1020 ], [ %900, %1013 ]
  %1024 = getelementptr inbounds i8, i8* %901, i64 1
  %1025 = icmp ult i8* %1024, %896
  br i1 %1025, label %899, label %906

; <label>:1026:                                   ; preds = %919, %1026
  %1027 = phi i8* [ %1031, %1026 ], [ %920, %919 ]
  %1028 = phi i8* [ %1029, %1026 ], [ %921, %919 ]
  %1029 = getelementptr inbounds i8, i8* %1028, i64 1
  %1030 = load i8, i8* %1028, align 1
  %1031 = getelementptr inbounds i8, i8* %1027, i64 1
  store i8 %1030, i8* %1027, align 1
  %1032 = icmp eq i8* %1029, %896
  br i1 %1032, label %1033, label %1026

; <label>:1033:                                   ; preds = %1026
  br label %1034

; <label>:1034:                                   ; preds = %1033, %1011
  %1035 = getelementptr i8, i8* %0, i64 %915
  %1036 = ptrtoint i8* %1035 to i64
  %1037 = getelementptr i8, i8* %911, i64 %1036
  br label %1038

; <label>:1038:                                   ; preds = %909, %1034
  %1039 = phi i8* [ %911, %909 ], [ %1037, %1034 ]
  %1040 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1039, i1 false) #9
  %1041 = tail call i8* @__memcpy_chk(i8* %1039, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %1040) #9
  %1042 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %894) #9
  br label %1973

; <label>:1043:                                   ; preds = %6
  %1044 = getelementptr inbounds i8, i8* %5, i64 24
  %1045 = bitcast i8* %1044 to i64*
  %1046 = load i64, i64* %1045, align 8
  %1047 = getelementptr inbounds i8, i8* %0, i64 1
  %1048 = getelementptr inbounds i8, i8* %0, i64 %1
  %1049 = icmp sgt i64 %1, 1
  br i1 %1049, label %1050, label %1061

; <label>:1050:                                   ; preds = %1043
  br label %1051

; <label>:1051:                                   ; preds = %1050, %1174
  %1052 = phi i8* [ %1175, %1174 ], [ %1047, %1050 ]
  %1053 = phi i8* [ %1176, %1174 ], [ %1047, %1050 ]
  %1054 = load i8, i8* %1053, align 1
  %1055 = sext i8 %1054 to i32
  %1056 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1055, i64 8) #9
  %1057 = icmp eq i8* %1056, null
  br i1 %1057, label %1058, label %1165

; <label>:1058:                                   ; preds = %1051, %1174
  %1059 = phi i8* [ %1176, %1174 ], [ %1053, %1051 ]
  %1060 = phi i8* [ %1175, %1174 ], [ %1052, %1051 ]
  br label %1061

; <label>:1061:                                   ; preds = %1058, %1043
  %1062 = phi i8* [ %1047, %1043 ], [ %1059, %1058 ]
  %1063 = phi i8* [ %1047, %1043 ], [ %1060, %1058 ]
  %1064 = ptrtoint i8* %1062 to i64
  %1065 = icmp ult i8* %1062, %1048
  br i1 %1065, label %1066, label %1190

; <label>:1066:                                   ; preds = %1061
  %1067 = sub i64 %1, %1064
  %1068 = getelementptr i8, i8* %0, i64 %1067
  %1069 = ptrtoint i8* %1068 to i64
  %1070 = icmp ult i8* %1068, inttoptr (i64 32 to i8*)
  br i1 %1070, label %1071, label %1074

; <label>:1071:                                   ; preds = %1163, %1077, %1074, %1066
  %1072 = phi i8* [ %1063, %1077 ], [ %1063, %1074 ], [ %1063, %1066 ], [ %1085, %1163 ]
  %1073 = phi i8* [ %1062, %1077 ], [ %1062, %1074 ], [ %1062, %1066 ], [ %1086, %1163 ]
  br label %1178

; <label>:1074:                                   ; preds = %1066
  %1075 = and i64 %1069, -32
  %1076 = icmp eq i64 %1075, 0
  br i1 %1076, label %1071, label %1077

; <label>:1077:                                   ; preds = %1074
  %1078 = sub i64 %1, %1064
  %1079 = getelementptr i8, i8* %0, i64 %1078
  %1080 = ptrtoint i8* %1079 to i64
  %1081 = getelementptr i8, i8* %1063, i64 %1080
  %1082 = icmp ult i8* %1063, %1048
  %1083 = icmp ult i8* %1062, %1081
  %1084 = and i1 %1082, %1083
  %1085 = getelementptr i8, i8* %1063, i64 %1075
  %1086 = getelementptr i8, i8* %1062, i64 %1075
  br i1 %1084, label %1071, label %1087

; <label>:1087:                                   ; preds = %1077
  %1088 = add i64 %1075, -32
  %1089 = lshr exact i64 %1088, 5
  %1090 = add nuw nsw i64 %1089, 1
  %1091 = and i64 %1090, 3
  %1092 = icmp eq i64 %1091, 0
  br i1 %1092, label %1111, label %1093

; <label>:1093:                                   ; preds = %1087
  br label %1094

; <label>:1094:                                   ; preds = %1094, %1093
  %1095 = phi i64 [ %1107, %1094 ], [ 0, %1093 ]
  %1096 = phi i64 [ %1108, %1094 ], [ %1091, %1093 ]
  %1097 = getelementptr i8, i8* %1063, i64 %1095
  %1098 = getelementptr i8, i8* %1062, i64 %1095
  %1099 = bitcast i8* %1098 to <16 x i8>*
  %1100 = load <16 x i8>, <16 x i8>* %1099, align 1
  %1101 = getelementptr i8, i8* %1098, i64 16
  %1102 = bitcast i8* %1101 to <16 x i8>*
  %1103 = load <16 x i8>, <16 x i8>* %1102, align 1
  %1104 = bitcast i8* %1097 to <16 x i8>*
  store <16 x i8> %1100, <16 x i8>* %1104, align 1
  %1105 = getelementptr i8, i8* %1097, i64 16
  %1106 = bitcast i8* %1105 to <16 x i8>*
  store <16 x i8> %1103, <16 x i8>* %1106, align 1
  %1107 = add i64 %1095, 32
  %1108 = add i64 %1096, -1
  %1109 = icmp eq i64 %1108, 0
  br i1 %1109, label %1110, label %1094

; <label>:1110:                                   ; preds = %1094
  br label %1111

; <label>:1111:                                   ; preds = %1087, %1110
  %1112 = phi i64 [ 0, %1087 ], [ %1107, %1110 ]
  %1113 = icmp ult i64 %1088, 96
  br i1 %1113, label %1163, label %1114

; <label>:1114:                                   ; preds = %1111
  br label %1115

; <label>:1115:                                   ; preds = %1115, %1114
  %1116 = phi i64 [ %1112, %1114 ], [ %1160, %1115 ]
  %1117 = getelementptr i8, i8* %1063, i64 %1116
  %1118 = getelementptr i8, i8* %1062, i64 %1116
  %1119 = bitcast i8* %1118 to <16 x i8>*
  %1120 = load <16 x i8>, <16 x i8>* %1119, align 1
  %1121 = getelementptr i8, i8* %1118, i64 16
  %1122 = bitcast i8* %1121 to <16 x i8>*
  %1123 = load <16 x i8>, <16 x i8>* %1122, align 1
  %1124 = bitcast i8* %1117 to <16 x i8>*
  store <16 x i8> %1120, <16 x i8>* %1124, align 1
  %1125 = getelementptr i8, i8* %1117, i64 16
  %1126 = bitcast i8* %1125 to <16 x i8>*
  store <16 x i8> %1123, <16 x i8>* %1126, align 1
  %1127 = add i64 %1116, 32
  %1128 = getelementptr i8, i8* %1063, i64 %1127
  %1129 = getelementptr i8, i8* %1062, i64 %1127
  %1130 = bitcast i8* %1129 to <16 x i8>*
  %1131 = load <16 x i8>, <16 x i8>* %1130, align 1
  %1132 = getelementptr i8, i8* %1129, i64 16
  %1133 = bitcast i8* %1132 to <16 x i8>*
  %1134 = load <16 x i8>, <16 x i8>* %1133, align 1
  %1135 = bitcast i8* %1128 to <16 x i8>*
  store <16 x i8> %1131, <16 x i8>* %1135, align 1
  %1136 = getelementptr i8, i8* %1128, i64 16
  %1137 = bitcast i8* %1136 to <16 x i8>*
  store <16 x i8> %1134, <16 x i8>* %1137, align 1
  %1138 = add i64 %1116, 64
  %1139 = getelementptr i8, i8* %1063, i64 %1138
  %1140 = getelementptr i8, i8* %1062, i64 %1138
  %1141 = bitcast i8* %1140 to <16 x i8>*
  %1142 = load <16 x i8>, <16 x i8>* %1141, align 1
  %1143 = getelementptr i8, i8* %1140, i64 16
  %1144 = bitcast i8* %1143 to <16 x i8>*
  %1145 = load <16 x i8>, <16 x i8>* %1144, align 1
  %1146 = bitcast i8* %1139 to <16 x i8>*
  store <16 x i8> %1142, <16 x i8>* %1146, align 1
  %1147 = getelementptr i8, i8* %1139, i64 16
  %1148 = bitcast i8* %1147 to <16 x i8>*
  store <16 x i8> %1145, <16 x i8>* %1148, align 1
  %1149 = add i64 %1116, 96
  %1150 = getelementptr i8, i8* %1063, i64 %1149
  %1151 = getelementptr i8, i8* %1062, i64 %1149
  %1152 = bitcast i8* %1151 to <16 x i8>*
  %1153 = load <16 x i8>, <16 x i8>* %1152, align 1
  %1154 = getelementptr i8, i8* %1151, i64 16
  %1155 = bitcast i8* %1154 to <16 x i8>*
  %1156 = load <16 x i8>, <16 x i8>* %1155, align 1
  %1157 = bitcast i8* %1150 to <16 x i8>*
  store <16 x i8> %1153, <16 x i8>* %1157, align 1
  %1158 = getelementptr i8, i8* %1150, i64 16
  %1159 = bitcast i8* %1158 to <16 x i8>*
  store <16 x i8> %1156, <16 x i8>* %1159, align 1
  %1160 = add i64 %1116, 128
  %1161 = icmp eq i64 %1160, %1075
  br i1 %1161, label %1162, label %1115

; <label>:1162:                                   ; preds = %1115
  br label %1163

; <label>:1163:                                   ; preds = %1111, %1162
  %1164 = icmp eq i64 %1069, %1075
  br i1 %1164, label %1186, label %1071

; <label>:1165:                                   ; preds = %1051
  %1166 = zext i32 %1055 to i64
  %1167 = icmp ult i8 %1054, 64
  %1168 = shl i64 1, %1166
  %1169 = and i64 %1168, 326009492602881
  %1170 = icmp ne i64 %1169, 0
  %1171 = and i1 %1167, %1170
  br i1 %1171, label %1172, label %1174

; <label>:1172:                                   ; preds = %1165
  %1173 = getelementptr inbounds i8, i8* %1052, i64 1
  store i8 %1054, i8* %1052, align 1
  br label %1174

; <label>:1174:                                   ; preds = %1172, %1165
  %1175 = phi i8* [ %1173, %1172 ], [ %1052, %1165 ]
  %1176 = getelementptr inbounds i8, i8* %1053, i64 1
  %1177 = icmp ult i8* %1176, %1048
  br i1 %1177, label %1051, label %1058

; <label>:1178:                                   ; preds = %1071, %1178
  %1179 = phi i8* [ %1183, %1178 ], [ %1072, %1071 ]
  %1180 = phi i8* [ %1181, %1178 ], [ %1073, %1071 ]
  %1181 = getelementptr inbounds i8, i8* %1180, i64 1
  %1182 = load i8, i8* %1180, align 1
  %1183 = getelementptr inbounds i8, i8* %1179, i64 1
  store i8 %1182, i8* %1179, align 1
  %1184 = icmp eq i8* %1181, %1048
  br i1 %1184, label %1185, label %1178

; <label>:1185:                                   ; preds = %1178
  br label %1186

; <label>:1186:                                   ; preds = %1185, %1163
  %1187 = getelementptr i8, i8* %0, i64 %1067
  %1188 = ptrtoint i8* %1187 to i64
  %1189 = getelementptr i8, i8* %1063, i64 %1188
  br label %1190

; <label>:1190:                                   ; preds = %1061, %1186
  %1191 = phi i8* [ %1063, %1061 ], [ %1189, %1186 ]
  %1192 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1191, i1 false) #9
  %1193 = tail call i8* @__memcpy_chk(i8* %1191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %1192) #9
  %1194 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1046) #9
  br label %1973

; <label>:1195:                                   ; preds = %6
  %1196 = getelementptr inbounds i8, i8* %5, i64 32
  %1197 = bitcast i8* %1196 to i64*
  %1198 = load i64, i64* %1197, align 8
  %1199 = getelementptr inbounds i8, i8* %0, i64 1
  %1200 = getelementptr inbounds i8, i8* %0, i64 %1
  %1201 = icmp sgt i64 %1, 1
  br i1 %1201, label %1202, label %1213

; <label>:1202:                                   ; preds = %1195
  br label %1203

; <label>:1203:                                   ; preds = %1202, %1326
  %1204 = phi i8* [ %1327, %1326 ], [ %1199, %1202 ]
  %1205 = phi i8* [ %1328, %1326 ], [ %1199, %1202 ]
  %1206 = load i8, i8* %1205, align 1
  %1207 = sext i8 %1206 to i32
  %1208 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1207, i64 8) #9
  %1209 = icmp eq i8* %1208, null
  br i1 %1209, label %1210, label %1317

; <label>:1210:                                   ; preds = %1203, %1326
  %1211 = phi i8* [ %1328, %1326 ], [ %1205, %1203 ]
  %1212 = phi i8* [ %1327, %1326 ], [ %1204, %1203 ]
  br label %1213

; <label>:1213:                                   ; preds = %1210, %1195
  %1214 = phi i8* [ %1199, %1195 ], [ %1211, %1210 ]
  %1215 = phi i8* [ %1199, %1195 ], [ %1212, %1210 ]
  %1216 = ptrtoint i8* %1214 to i64
  %1217 = icmp ult i8* %1214, %1200
  br i1 %1217, label %1218, label %1342

; <label>:1218:                                   ; preds = %1213
  %1219 = sub i64 %1, %1216
  %1220 = getelementptr i8, i8* %0, i64 %1219
  %1221 = ptrtoint i8* %1220 to i64
  %1222 = icmp ult i8* %1220, inttoptr (i64 32 to i8*)
  br i1 %1222, label %1223, label %1226

; <label>:1223:                                   ; preds = %1315, %1229, %1226, %1218
  %1224 = phi i8* [ %1215, %1229 ], [ %1215, %1226 ], [ %1215, %1218 ], [ %1237, %1315 ]
  %1225 = phi i8* [ %1214, %1229 ], [ %1214, %1226 ], [ %1214, %1218 ], [ %1238, %1315 ]
  br label %1330

; <label>:1226:                                   ; preds = %1218
  %1227 = and i64 %1221, -32
  %1228 = icmp eq i64 %1227, 0
  br i1 %1228, label %1223, label %1229

; <label>:1229:                                   ; preds = %1226
  %1230 = sub i64 %1, %1216
  %1231 = getelementptr i8, i8* %0, i64 %1230
  %1232 = ptrtoint i8* %1231 to i64
  %1233 = getelementptr i8, i8* %1215, i64 %1232
  %1234 = icmp ult i8* %1215, %1200
  %1235 = icmp ult i8* %1214, %1233
  %1236 = and i1 %1234, %1235
  %1237 = getelementptr i8, i8* %1215, i64 %1227
  %1238 = getelementptr i8, i8* %1214, i64 %1227
  br i1 %1236, label %1223, label %1239

; <label>:1239:                                   ; preds = %1229
  %1240 = add i64 %1227, -32
  %1241 = lshr exact i64 %1240, 5
  %1242 = add nuw nsw i64 %1241, 1
  %1243 = and i64 %1242, 3
  %1244 = icmp eq i64 %1243, 0
  br i1 %1244, label %1263, label %1245

; <label>:1245:                                   ; preds = %1239
  br label %1246

; <label>:1246:                                   ; preds = %1246, %1245
  %1247 = phi i64 [ %1259, %1246 ], [ 0, %1245 ]
  %1248 = phi i64 [ %1260, %1246 ], [ %1243, %1245 ]
  %1249 = getelementptr i8, i8* %1215, i64 %1247
  %1250 = getelementptr i8, i8* %1214, i64 %1247
  %1251 = bitcast i8* %1250 to <16 x i8>*
  %1252 = load <16 x i8>, <16 x i8>* %1251, align 1
  %1253 = getelementptr i8, i8* %1250, i64 16
  %1254 = bitcast i8* %1253 to <16 x i8>*
  %1255 = load <16 x i8>, <16 x i8>* %1254, align 1
  %1256 = bitcast i8* %1249 to <16 x i8>*
  store <16 x i8> %1252, <16 x i8>* %1256, align 1
  %1257 = getelementptr i8, i8* %1249, i64 16
  %1258 = bitcast i8* %1257 to <16 x i8>*
  store <16 x i8> %1255, <16 x i8>* %1258, align 1
  %1259 = add i64 %1247, 32
  %1260 = add i64 %1248, -1
  %1261 = icmp eq i64 %1260, 0
  br i1 %1261, label %1262, label %1246

; <label>:1262:                                   ; preds = %1246
  br label %1263

; <label>:1263:                                   ; preds = %1239, %1262
  %1264 = phi i64 [ 0, %1239 ], [ %1259, %1262 ]
  %1265 = icmp ult i64 %1240, 96
  br i1 %1265, label %1315, label %1266

; <label>:1266:                                   ; preds = %1263
  br label %1267

; <label>:1267:                                   ; preds = %1267, %1266
  %1268 = phi i64 [ %1264, %1266 ], [ %1312, %1267 ]
  %1269 = getelementptr i8, i8* %1215, i64 %1268
  %1270 = getelementptr i8, i8* %1214, i64 %1268
  %1271 = bitcast i8* %1270 to <16 x i8>*
  %1272 = load <16 x i8>, <16 x i8>* %1271, align 1
  %1273 = getelementptr i8, i8* %1270, i64 16
  %1274 = bitcast i8* %1273 to <16 x i8>*
  %1275 = load <16 x i8>, <16 x i8>* %1274, align 1
  %1276 = bitcast i8* %1269 to <16 x i8>*
  store <16 x i8> %1272, <16 x i8>* %1276, align 1
  %1277 = getelementptr i8, i8* %1269, i64 16
  %1278 = bitcast i8* %1277 to <16 x i8>*
  store <16 x i8> %1275, <16 x i8>* %1278, align 1
  %1279 = add i64 %1268, 32
  %1280 = getelementptr i8, i8* %1215, i64 %1279
  %1281 = getelementptr i8, i8* %1214, i64 %1279
  %1282 = bitcast i8* %1281 to <16 x i8>*
  %1283 = load <16 x i8>, <16 x i8>* %1282, align 1
  %1284 = getelementptr i8, i8* %1281, i64 16
  %1285 = bitcast i8* %1284 to <16 x i8>*
  %1286 = load <16 x i8>, <16 x i8>* %1285, align 1
  %1287 = bitcast i8* %1280 to <16 x i8>*
  store <16 x i8> %1283, <16 x i8>* %1287, align 1
  %1288 = getelementptr i8, i8* %1280, i64 16
  %1289 = bitcast i8* %1288 to <16 x i8>*
  store <16 x i8> %1286, <16 x i8>* %1289, align 1
  %1290 = add i64 %1268, 64
  %1291 = getelementptr i8, i8* %1215, i64 %1290
  %1292 = getelementptr i8, i8* %1214, i64 %1290
  %1293 = bitcast i8* %1292 to <16 x i8>*
  %1294 = load <16 x i8>, <16 x i8>* %1293, align 1
  %1295 = getelementptr i8, i8* %1292, i64 16
  %1296 = bitcast i8* %1295 to <16 x i8>*
  %1297 = load <16 x i8>, <16 x i8>* %1296, align 1
  %1298 = bitcast i8* %1291 to <16 x i8>*
  store <16 x i8> %1294, <16 x i8>* %1298, align 1
  %1299 = getelementptr i8, i8* %1291, i64 16
  %1300 = bitcast i8* %1299 to <16 x i8>*
  store <16 x i8> %1297, <16 x i8>* %1300, align 1
  %1301 = add i64 %1268, 96
  %1302 = getelementptr i8, i8* %1215, i64 %1301
  %1303 = getelementptr i8, i8* %1214, i64 %1301
  %1304 = bitcast i8* %1303 to <16 x i8>*
  %1305 = load <16 x i8>, <16 x i8>* %1304, align 1
  %1306 = getelementptr i8, i8* %1303, i64 16
  %1307 = bitcast i8* %1306 to <16 x i8>*
  %1308 = load <16 x i8>, <16 x i8>* %1307, align 1
  %1309 = bitcast i8* %1302 to <16 x i8>*
  store <16 x i8> %1305, <16 x i8>* %1309, align 1
  %1310 = getelementptr i8, i8* %1302, i64 16
  %1311 = bitcast i8* %1310 to <16 x i8>*
  store <16 x i8> %1308, <16 x i8>* %1311, align 1
  %1312 = add i64 %1268, 128
  %1313 = icmp eq i64 %1312, %1227
  br i1 %1313, label %1314, label %1267

; <label>:1314:                                   ; preds = %1267
  br label %1315

; <label>:1315:                                   ; preds = %1263, %1314
  %1316 = icmp eq i64 %1221, %1227
  br i1 %1316, label %1338, label %1223

; <label>:1317:                                   ; preds = %1203
  %1318 = zext i32 %1207 to i64
  %1319 = icmp ult i8 %1206, 64
  %1320 = shl i64 1, %1318
  %1321 = and i64 %1320, 326009492602881
  %1322 = icmp ne i64 %1321, 0
  %1323 = and i1 %1319, %1322
  br i1 %1323, label %1324, label %1326

; <label>:1324:                                   ; preds = %1317
  %1325 = getelementptr inbounds i8, i8* %1204, i64 1
  store i8 %1206, i8* %1204, align 1
  br label %1326

; <label>:1326:                                   ; preds = %1324, %1317
  %1327 = phi i8* [ %1325, %1324 ], [ %1204, %1317 ]
  %1328 = getelementptr inbounds i8, i8* %1205, i64 1
  %1329 = icmp ult i8* %1328, %1200
  br i1 %1329, label %1203, label %1210

; <label>:1330:                                   ; preds = %1223, %1330
  %1331 = phi i8* [ %1335, %1330 ], [ %1224, %1223 ]
  %1332 = phi i8* [ %1333, %1330 ], [ %1225, %1223 ]
  %1333 = getelementptr inbounds i8, i8* %1332, i64 1
  %1334 = load i8, i8* %1332, align 1
  %1335 = getelementptr inbounds i8, i8* %1331, i64 1
  store i8 %1334, i8* %1331, align 1
  %1336 = icmp eq i8* %1333, %1200
  br i1 %1336, label %1337, label %1330

; <label>:1337:                                   ; preds = %1330
  br label %1338

; <label>:1338:                                   ; preds = %1337, %1315
  %1339 = getelementptr i8, i8* %0, i64 %1219
  %1340 = ptrtoint i8* %1339 to i64
  %1341 = getelementptr i8, i8* %1215, i64 %1340
  br label %1342

; <label>:1342:                                   ; preds = %1213, %1338
  %1343 = phi i8* [ %1215, %1213 ], [ %1341, %1338 ]
  %1344 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1343, i1 false) #9
  %1345 = tail call i8* @__memcpy_chk(i8* %1343, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %1344) #9
  %1346 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1198) #9
  br label %1973

; <label>:1347:                                   ; preds = %6
  %1348 = getelementptr inbounds i8, i8* %5, i64 8
  %1349 = bitcast i8* %1348 to i64*
  %1350 = load i64, i64* %1349, align 8
  %1351 = getelementptr inbounds i8, i8* %0, i64 1
  %1352 = getelementptr inbounds i8, i8* %0, i64 %1
  %1353 = icmp sgt i64 %1, 1
  br i1 %1353, label %1354, label %1365

; <label>:1354:                                   ; preds = %1347
  br label %1355

; <label>:1355:                                   ; preds = %1354, %1478
  %1356 = phi i8* [ %1479, %1478 ], [ %1351, %1354 ]
  %1357 = phi i8* [ %1480, %1478 ], [ %1351, %1354 ]
  %1358 = load i8, i8* %1357, align 1
  %1359 = sext i8 %1358 to i32
  %1360 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1359, i64 8) #9
  %1361 = icmp eq i8* %1360, null
  br i1 %1361, label %1362, label %1469

; <label>:1362:                                   ; preds = %1355, %1478
  %1363 = phi i8* [ %1480, %1478 ], [ %1357, %1355 ]
  %1364 = phi i8* [ %1479, %1478 ], [ %1356, %1355 ]
  br label %1365

; <label>:1365:                                   ; preds = %1362, %1347
  %1366 = phi i8* [ %1351, %1347 ], [ %1363, %1362 ]
  %1367 = phi i8* [ %1351, %1347 ], [ %1364, %1362 ]
  %1368 = ptrtoint i8* %1366 to i64
  %1369 = icmp ult i8* %1366, %1352
  br i1 %1369, label %1370, label %1494

; <label>:1370:                                   ; preds = %1365
  %1371 = sub i64 %1, %1368
  %1372 = getelementptr i8, i8* %0, i64 %1371
  %1373 = ptrtoint i8* %1372 to i64
  %1374 = icmp ult i8* %1372, inttoptr (i64 32 to i8*)
  br i1 %1374, label %1375, label %1378

; <label>:1375:                                   ; preds = %1467, %1381, %1378, %1370
  %1376 = phi i8* [ %1367, %1381 ], [ %1367, %1378 ], [ %1367, %1370 ], [ %1389, %1467 ]
  %1377 = phi i8* [ %1366, %1381 ], [ %1366, %1378 ], [ %1366, %1370 ], [ %1390, %1467 ]
  br label %1482

; <label>:1378:                                   ; preds = %1370
  %1379 = and i64 %1373, -32
  %1380 = icmp eq i64 %1379, 0
  br i1 %1380, label %1375, label %1381

; <label>:1381:                                   ; preds = %1378
  %1382 = sub i64 %1, %1368
  %1383 = getelementptr i8, i8* %0, i64 %1382
  %1384 = ptrtoint i8* %1383 to i64
  %1385 = getelementptr i8, i8* %1367, i64 %1384
  %1386 = icmp ult i8* %1367, %1352
  %1387 = icmp ult i8* %1366, %1385
  %1388 = and i1 %1386, %1387
  %1389 = getelementptr i8, i8* %1367, i64 %1379
  %1390 = getelementptr i8, i8* %1366, i64 %1379
  br i1 %1388, label %1375, label %1391

; <label>:1391:                                   ; preds = %1381
  %1392 = add i64 %1379, -32
  %1393 = lshr exact i64 %1392, 5
  %1394 = add nuw nsw i64 %1393, 1
  %1395 = and i64 %1394, 3
  %1396 = icmp eq i64 %1395, 0
  br i1 %1396, label %1415, label %1397

; <label>:1397:                                   ; preds = %1391
  br label %1398

; <label>:1398:                                   ; preds = %1398, %1397
  %1399 = phi i64 [ %1411, %1398 ], [ 0, %1397 ]
  %1400 = phi i64 [ %1412, %1398 ], [ %1395, %1397 ]
  %1401 = getelementptr i8, i8* %1367, i64 %1399
  %1402 = getelementptr i8, i8* %1366, i64 %1399
  %1403 = bitcast i8* %1402 to <16 x i8>*
  %1404 = load <16 x i8>, <16 x i8>* %1403, align 1
  %1405 = getelementptr i8, i8* %1402, i64 16
  %1406 = bitcast i8* %1405 to <16 x i8>*
  %1407 = load <16 x i8>, <16 x i8>* %1406, align 1
  %1408 = bitcast i8* %1401 to <16 x i8>*
  store <16 x i8> %1404, <16 x i8>* %1408, align 1
  %1409 = getelementptr i8, i8* %1401, i64 16
  %1410 = bitcast i8* %1409 to <16 x i8>*
  store <16 x i8> %1407, <16 x i8>* %1410, align 1
  %1411 = add i64 %1399, 32
  %1412 = add i64 %1400, -1
  %1413 = icmp eq i64 %1412, 0
  br i1 %1413, label %1414, label %1398

; <label>:1414:                                   ; preds = %1398
  br label %1415

; <label>:1415:                                   ; preds = %1391, %1414
  %1416 = phi i64 [ 0, %1391 ], [ %1411, %1414 ]
  %1417 = icmp ult i64 %1392, 96
  br i1 %1417, label %1467, label %1418

; <label>:1418:                                   ; preds = %1415
  br label %1419

; <label>:1419:                                   ; preds = %1419, %1418
  %1420 = phi i64 [ %1416, %1418 ], [ %1464, %1419 ]
  %1421 = getelementptr i8, i8* %1367, i64 %1420
  %1422 = getelementptr i8, i8* %1366, i64 %1420
  %1423 = bitcast i8* %1422 to <16 x i8>*
  %1424 = load <16 x i8>, <16 x i8>* %1423, align 1
  %1425 = getelementptr i8, i8* %1422, i64 16
  %1426 = bitcast i8* %1425 to <16 x i8>*
  %1427 = load <16 x i8>, <16 x i8>* %1426, align 1
  %1428 = bitcast i8* %1421 to <16 x i8>*
  store <16 x i8> %1424, <16 x i8>* %1428, align 1
  %1429 = getelementptr i8, i8* %1421, i64 16
  %1430 = bitcast i8* %1429 to <16 x i8>*
  store <16 x i8> %1427, <16 x i8>* %1430, align 1
  %1431 = add i64 %1420, 32
  %1432 = getelementptr i8, i8* %1367, i64 %1431
  %1433 = getelementptr i8, i8* %1366, i64 %1431
  %1434 = bitcast i8* %1433 to <16 x i8>*
  %1435 = load <16 x i8>, <16 x i8>* %1434, align 1
  %1436 = getelementptr i8, i8* %1433, i64 16
  %1437 = bitcast i8* %1436 to <16 x i8>*
  %1438 = load <16 x i8>, <16 x i8>* %1437, align 1
  %1439 = bitcast i8* %1432 to <16 x i8>*
  store <16 x i8> %1435, <16 x i8>* %1439, align 1
  %1440 = getelementptr i8, i8* %1432, i64 16
  %1441 = bitcast i8* %1440 to <16 x i8>*
  store <16 x i8> %1438, <16 x i8>* %1441, align 1
  %1442 = add i64 %1420, 64
  %1443 = getelementptr i8, i8* %1367, i64 %1442
  %1444 = getelementptr i8, i8* %1366, i64 %1442
  %1445 = bitcast i8* %1444 to <16 x i8>*
  %1446 = load <16 x i8>, <16 x i8>* %1445, align 1
  %1447 = getelementptr i8, i8* %1444, i64 16
  %1448 = bitcast i8* %1447 to <16 x i8>*
  %1449 = load <16 x i8>, <16 x i8>* %1448, align 1
  %1450 = bitcast i8* %1443 to <16 x i8>*
  store <16 x i8> %1446, <16 x i8>* %1450, align 1
  %1451 = getelementptr i8, i8* %1443, i64 16
  %1452 = bitcast i8* %1451 to <16 x i8>*
  store <16 x i8> %1449, <16 x i8>* %1452, align 1
  %1453 = add i64 %1420, 96
  %1454 = getelementptr i8, i8* %1367, i64 %1453
  %1455 = getelementptr i8, i8* %1366, i64 %1453
  %1456 = bitcast i8* %1455 to <16 x i8>*
  %1457 = load <16 x i8>, <16 x i8>* %1456, align 1
  %1458 = getelementptr i8, i8* %1455, i64 16
  %1459 = bitcast i8* %1458 to <16 x i8>*
  %1460 = load <16 x i8>, <16 x i8>* %1459, align 1
  %1461 = bitcast i8* %1454 to <16 x i8>*
  store <16 x i8> %1457, <16 x i8>* %1461, align 1
  %1462 = getelementptr i8, i8* %1454, i64 16
  %1463 = bitcast i8* %1462 to <16 x i8>*
  store <16 x i8> %1460, <16 x i8>* %1463, align 1
  %1464 = add i64 %1420, 128
  %1465 = icmp eq i64 %1464, %1379
  br i1 %1465, label %1466, label %1419

; <label>:1466:                                   ; preds = %1419
  br label %1467

; <label>:1467:                                   ; preds = %1415, %1466
  %1468 = icmp eq i64 %1373, %1379
  br i1 %1468, label %1490, label %1375

; <label>:1469:                                   ; preds = %1355
  %1470 = zext i32 %1359 to i64
  %1471 = icmp ult i8 %1358, 64
  %1472 = shl i64 1, %1470
  %1473 = and i64 %1472, 317209104613377
  %1474 = icmp ne i64 %1473, 0
  %1475 = and i1 %1471, %1474
  br i1 %1475, label %1476, label %1478

; <label>:1476:                                   ; preds = %1469
  %1477 = getelementptr inbounds i8, i8* %1356, i64 1
  store i8 %1358, i8* %1356, align 1
  br label %1478

; <label>:1478:                                   ; preds = %1476, %1469
  %1479 = phi i8* [ %1477, %1476 ], [ %1356, %1469 ]
  %1480 = getelementptr inbounds i8, i8* %1357, i64 1
  %1481 = icmp ult i8* %1480, %1352
  br i1 %1481, label %1355, label %1362

; <label>:1482:                                   ; preds = %1375, %1482
  %1483 = phi i8* [ %1487, %1482 ], [ %1376, %1375 ]
  %1484 = phi i8* [ %1485, %1482 ], [ %1377, %1375 ]
  %1485 = getelementptr inbounds i8, i8* %1484, i64 1
  %1486 = load i8, i8* %1484, align 1
  %1487 = getelementptr inbounds i8, i8* %1483, i64 1
  store i8 %1486, i8* %1483, align 1
  %1488 = icmp eq i8* %1485, %1352
  br i1 %1488, label %1489, label %1482

; <label>:1489:                                   ; preds = %1482
  br label %1490

; <label>:1490:                                   ; preds = %1489, %1467
  %1491 = getelementptr i8, i8* %0, i64 %1371
  %1492 = ptrtoint i8* %1491 to i64
  %1493 = getelementptr i8, i8* %1367, i64 %1492
  br label %1494

; <label>:1494:                                   ; preds = %1365, %1490
  %1495 = phi i8* [ %1367, %1365 ], [ %1493, %1490 ]
  %1496 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1495, i1 false) #9
  %1497 = tail call i8* @__memcpy_chk(i8* %1495, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %1496) #9
  %1498 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1350) #9
  br label %1973

; <label>:1499:                                   ; preds = %6
  %1500 = getelementptr inbounds i8, i8* %5, i64 72
  %1501 = bitcast i8* %1500 to i64*
  %1502 = load i64, i64* %1501, align 8
  %1503 = icmp eq i64 %1502, 0
  br i1 %1503, label %1504, label %1508

; <label>:1504:                                   ; preds = %1499
  %1505 = getelementptr inbounds i8, i8* %5, i64 8
  %1506 = bitcast i8* %1505 to i64*
  %1507 = load i64, i64* %1506, align 8
  br label %1508

; <label>:1508:                                   ; preds = %1499, %1504
  %1509 = phi i64 [ %1502, %1499 ], [ %1507, %1504 ]
  %1510 = getelementptr inbounds i8, i8* %0, i64 1
  %1511 = getelementptr inbounds i8, i8* %0, i64 %1
  %1512 = icmp sgt i64 %1, 1
  br i1 %1512, label %1513, label %1524

; <label>:1513:                                   ; preds = %1508
  br label %1514

; <label>:1514:                                   ; preds = %1513, %1637
  %1515 = phi i8* [ %1638, %1637 ], [ %1510, %1513 ]
  %1516 = phi i8* [ %1639, %1637 ], [ %1510, %1513 ]
  %1517 = load i8, i8* %1516, align 1
  %1518 = sext i8 %1517 to i32
  %1519 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1518, i64 8) #9
  %1520 = icmp eq i8* %1519, null
  br i1 %1520, label %1521, label %1628

; <label>:1521:                                   ; preds = %1514, %1637
  %1522 = phi i8* [ %1639, %1637 ], [ %1516, %1514 ]
  %1523 = phi i8* [ %1638, %1637 ], [ %1515, %1514 ]
  br label %1524

; <label>:1524:                                   ; preds = %1521, %1508
  %1525 = phi i8* [ %1510, %1508 ], [ %1522, %1521 ]
  %1526 = phi i8* [ %1510, %1508 ], [ %1523, %1521 ]
  %1527 = ptrtoint i8* %1525 to i64
  %1528 = icmp ult i8* %1525, %1511
  br i1 %1528, label %1529, label %1653

; <label>:1529:                                   ; preds = %1524
  %1530 = sub i64 %1, %1527
  %1531 = getelementptr i8, i8* %0, i64 %1530
  %1532 = ptrtoint i8* %1531 to i64
  %1533 = icmp ult i8* %1531, inttoptr (i64 32 to i8*)
  br i1 %1533, label %1534, label %1537

; <label>:1534:                                   ; preds = %1626, %1540, %1537, %1529
  %1535 = phi i8* [ %1526, %1540 ], [ %1526, %1537 ], [ %1526, %1529 ], [ %1548, %1626 ]
  %1536 = phi i8* [ %1525, %1540 ], [ %1525, %1537 ], [ %1525, %1529 ], [ %1549, %1626 ]
  br label %1641

; <label>:1537:                                   ; preds = %1529
  %1538 = and i64 %1532, -32
  %1539 = icmp eq i64 %1538, 0
  br i1 %1539, label %1534, label %1540

; <label>:1540:                                   ; preds = %1537
  %1541 = sub i64 %1, %1527
  %1542 = getelementptr i8, i8* %0, i64 %1541
  %1543 = ptrtoint i8* %1542 to i64
  %1544 = getelementptr i8, i8* %1526, i64 %1543
  %1545 = icmp ult i8* %1526, %1511
  %1546 = icmp ult i8* %1525, %1544
  %1547 = and i1 %1545, %1546
  %1548 = getelementptr i8, i8* %1526, i64 %1538
  %1549 = getelementptr i8, i8* %1525, i64 %1538
  br i1 %1547, label %1534, label %1550

; <label>:1550:                                   ; preds = %1540
  %1551 = add i64 %1538, -32
  %1552 = lshr exact i64 %1551, 5
  %1553 = add nuw nsw i64 %1552, 1
  %1554 = and i64 %1553, 3
  %1555 = icmp eq i64 %1554, 0
  br i1 %1555, label %1574, label %1556

; <label>:1556:                                   ; preds = %1550
  br label %1557

; <label>:1557:                                   ; preds = %1557, %1556
  %1558 = phi i64 [ %1570, %1557 ], [ 0, %1556 ]
  %1559 = phi i64 [ %1571, %1557 ], [ %1554, %1556 ]
  %1560 = getelementptr i8, i8* %1526, i64 %1558
  %1561 = getelementptr i8, i8* %1525, i64 %1558
  %1562 = bitcast i8* %1561 to <16 x i8>*
  %1563 = load <16 x i8>, <16 x i8>* %1562, align 1
  %1564 = getelementptr i8, i8* %1561, i64 16
  %1565 = bitcast i8* %1564 to <16 x i8>*
  %1566 = load <16 x i8>, <16 x i8>* %1565, align 1
  %1567 = bitcast i8* %1560 to <16 x i8>*
  store <16 x i8> %1563, <16 x i8>* %1567, align 1
  %1568 = getelementptr i8, i8* %1560, i64 16
  %1569 = bitcast i8* %1568 to <16 x i8>*
  store <16 x i8> %1566, <16 x i8>* %1569, align 1
  %1570 = add i64 %1558, 32
  %1571 = add i64 %1559, -1
  %1572 = icmp eq i64 %1571, 0
  br i1 %1572, label %1573, label %1557

; <label>:1573:                                   ; preds = %1557
  br label %1574

; <label>:1574:                                   ; preds = %1550, %1573
  %1575 = phi i64 [ 0, %1550 ], [ %1570, %1573 ]
  %1576 = icmp ult i64 %1551, 96
  br i1 %1576, label %1626, label %1577

; <label>:1577:                                   ; preds = %1574
  br label %1578

; <label>:1578:                                   ; preds = %1578, %1577
  %1579 = phi i64 [ %1575, %1577 ], [ %1623, %1578 ]
  %1580 = getelementptr i8, i8* %1526, i64 %1579
  %1581 = getelementptr i8, i8* %1525, i64 %1579
  %1582 = bitcast i8* %1581 to <16 x i8>*
  %1583 = load <16 x i8>, <16 x i8>* %1582, align 1
  %1584 = getelementptr i8, i8* %1581, i64 16
  %1585 = bitcast i8* %1584 to <16 x i8>*
  %1586 = load <16 x i8>, <16 x i8>* %1585, align 1
  %1587 = bitcast i8* %1580 to <16 x i8>*
  store <16 x i8> %1583, <16 x i8>* %1587, align 1
  %1588 = getelementptr i8, i8* %1580, i64 16
  %1589 = bitcast i8* %1588 to <16 x i8>*
  store <16 x i8> %1586, <16 x i8>* %1589, align 1
  %1590 = add i64 %1579, 32
  %1591 = getelementptr i8, i8* %1526, i64 %1590
  %1592 = getelementptr i8, i8* %1525, i64 %1590
  %1593 = bitcast i8* %1592 to <16 x i8>*
  %1594 = load <16 x i8>, <16 x i8>* %1593, align 1
  %1595 = getelementptr i8, i8* %1592, i64 16
  %1596 = bitcast i8* %1595 to <16 x i8>*
  %1597 = load <16 x i8>, <16 x i8>* %1596, align 1
  %1598 = bitcast i8* %1591 to <16 x i8>*
  store <16 x i8> %1594, <16 x i8>* %1598, align 1
  %1599 = getelementptr i8, i8* %1591, i64 16
  %1600 = bitcast i8* %1599 to <16 x i8>*
  store <16 x i8> %1597, <16 x i8>* %1600, align 1
  %1601 = add i64 %1579, 64
  %1602 = getelementptr i8, i8* %1526, i64 %1601
  %1603 = getelementptr i8, i8* %1525, i64 %1601
  %1604 = bitcast i8* %1603 to <16 x i8>*
  %1605 = load <16 x i8>, <16 x i8>* %1604, align 1
  %1606 = getelementptr i8, i8* %1603, i64 16
  %1607 = bitcast i8* %1606 to <16 x i8>*
  %1608 = load <16 x i8>, <16 x i8>* %1607, align 1
  %1609 = bitcast i8* %1602 to <16 x i8>*
  store <16 x i8> %1605, <16 x i8>* %1609, align 1
  %1610 = getelementptr i8, i8* %1602, i64 16
  %1611 = bitcast i8* %1610 to <16 x i8>*
  store <16 x i8> %1608, <16 x i8>* %1611, align 1
  %1612 = add i64 %1579, 96
  %1613 = getelementptr i8, i8* %1526, i64 %1612
  %1614 = getelementptr i8, i8* %1525, i64 %1612
  %1615 = bitcast i8* %1614 to <16 x i8>*
  %1616 = load <16 x i8>, <16 x i8>* %1615, align 1
  %1617 = getelementptr i8, i8* %1614, i64 16
  %1618 = bitcast i8* %1617 to <16 x i8>*
  %1619 = load <16 x i8>, <16 x i8>* %1618, align 1
  %1620 = bitcast i8* %1613 to <16 x i8>*
  store <16 x i8> %1616, <16 x i8>* %1620, align 1
  %1621 = getelementptr i8, i8* %1613, i64 16
  %1622 = bitcast i8* %1621 to <16 x i8>*
  store <16 x i8> %1619, <16 x i8>* %1622, align 1
  %1623 = add i64 %1579, 128
  %1624 = icmp eq i64 %1623, %1538
  br i1 %1624, label %1625, label %1578

; <label>:1625:                                   ; preds = %1578
  br label %1626

; <label>:1626:                                   ; preds = %1574, %1625
  %1627 = icmp eq i64 %1532, %1538
  br i1 %1627, label %1649, label %1534

; <label>:1628:                                   ; preds = %1514
  %1629 = zext i32 %1518 to i64
  %1630 = icmp ult i8 %1517, 64
  %1631 = shl i64 1, %1629
  %1632 = and i64 %1631, 317209104613377
  %1633 = icmp ne i64 %1632, 0
  %1634 = and i1 %1630, %1633
  br i1 %1634, label %1635, label %1637

; <label>:1635:                                   ; preds = %1628
  %1636 = getelementptr inbounds i8, i8* %1515, i64 1
  store i8 %1517, i8* %1515, align 1
  br label %1637

; <label>:1637:                                   ; preds = %1635, %1628
  %1638 = phi i8* [ %1636, %1635 ], [ %1515, %1628 ]
  %1639 = getelementptr inbounds i8, i8* %1516, i64 1
  %1640 = icmp ult i8* %1639, %1511
  br i1 %1640, label %1514, label %1521

; <label>:1641:                                   ; preds = %1534, %1641
  %1642 = phi i8* [ %1646, %1641 ], [ %1535, %1534 ]
  %1643 = phi i8* [ %1644, %1641 ], [ %1536, %1534 ]
  %1644 = getelementptr inbounds i8, i8* %1643, i64 1
  %1645 = load i8, i8* %1643, align 1
  %1646 = getelementptr inbounds i8, i8* %1642, i64 1
  store i8 %1645, i8* %1642, align 1
  %1647 = icmp eq i8* %1644, %1511
  br i1 %1647, label %1648, label %1641

; <label>:1648:                                   ; preds = %1641
  br label %1649

; <label>:1649:                                   ; preds = %1648, %1626
  %1650 = getelementptr i8, i8* %0, i64 %1530
  %1651 = ptrtoint i8* %1650 to i64
  %1652 = getelementptr i8, i8* %1526, i64 %1651
  br label %1653

; <label>:1653:                                   ; preds = %1524, %1649
  %1654 = phi i8* [ %1526, %1524 ], [ %1652, %1649 ]
  %1655 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1654, i1 false) #9
  %1656 = tail call i8* @__memcpy_chk(i8* %1654, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %1655) #9
  %1657 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1509) #9
  br label %1973

; <label>:1658:                                   ; preds = %6
  %1659 = getelementptr inbounds i8, i8* %5, i64 40
  %1660 = bitcast i8* %1659 to i64*
  %1661 = load i64, i64* %1660, align 8
  %1662 = getelementptr inbounds i8, i8* %0, i64 1
  %1663 = getelementptr inbounds i8, i8* %0, i64 %1
  %1664 = icmp sgt i64 %1, 1
  br i1 %1664, label %1665, label %1676

; <label>:1665:                                   ; preds = %1658
  br label %1666

; <label>:1666:                                   ; preds = %1665, %1789
  %1667 = phi i8* [ %1790, %1789 ], [ %1662, %1665 ]
  %1668 = phi i8* [ %1791, %1789 ], [ %1662, %1665 ]
  %1669 = load i8, i8* %1668, align 1
  %1670 = sext i8 %1669 to i32
  %1671 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1670, i64 8) #9
  %1672 = icmp eq i8* %1671, null
  br i1 %1672, label %1673, label %1780

; <label>:1673:                                   ; preds = %1666, %1789
  %1674 = phi i8* [ %1791, %1789 ], [ %1668, %1666 ]
  %1675 = phi i8* [ %1790, %1789 ], [ %1667, %1666 ]
  br label %1676

; <label>:1676:                                   ; preds = %1673, %1658
  %1677 = phi i8* [ %1662, %1658 ], [ %1674, %1673 ]
  %1678 = phi i8* [ %1662, %1658 ], [ %1675, %1673 ]
  %1679 = ptrtoint i8* %1677 to i64
  %1680 = icmp ult i8* %1677, %1663
  br i1 %1680, label %1681, label %1805

; <label>:1681:                                   ; preds = %1676
  %1682 = sub i64 %1, %1679
  %1683 = getelementptr i8, i8* %0, i64 %1682
  %1684 = ptrtoint i8* %1683 to i64
  %1685 = icmp ult i8* %1683, inttoptr (i64 32 to i8*)
  br i1 %1685, label %1686, label %1689

; <label>:1686:                                   ; preds = %1778, %1692, %1689, %1681
  %1687 = phi i8* [ %1678, %1692 ], [ %1678, %1689 ], [ %1678, %1681 ], [ %1700, %1778 ]
  %1688 = phi i8* [ %1677, %1692 ], [ %1677, %1689 ], [ %1677, %1681 ], [ %1701, %1778 ]
  br label %1793

; <label>:1689:                                   ; preds = %1681
  %1690 = and i64 %1684, -32
  %1691 = icmp eq i64 %1690, 0
  br i1 %1691, label %1686, label %1692

; <label>:1692:                                   ; preds = %1689
  %1693 = sub i64 %1, %1679
  %1694 = getelementptr i8, i8* %0, i64 %1693
  %1695 = ptrtoint i8* %1694 to i64
  %1696 = getelementptr i8, i8* %1678, i64 %1695
  %1697 = icmp ult i8* %1678, %1663
  %1698 = icmp ult i8* %1677, %1696
  %1699 = and i1 %1697, %1698
  %1700 = getelementptr i8, i8* %1678, i64 %1690
  %1701 = getelementptr i8, i8* %1677, i64 %1690
  br i1 %1699, label %1686, label %1702

; <label>:1702:                                   ; preds = %1692
  %1703 = add i64 %1690, -32
  %1704 = lshr exact i64 %1703, 5
  %1705 = add nuw nsw i64 %1704, 1
  %1706 = and i64 %1705, 3
  %1707 = icmp eq i64 %1706, 0
  br i1 %1707, label %1726, label %1708

; <label>:1708:                                   ; preds = %1702
  br label %1709

; <label>:1709:                                   ; preds = %1709, %1708
  %1710 = phi i64 [ %1722, %1709 ], [ 0, %1708 ]
  %1711 = phi i64 [ %1723, %1709 ], [ %1706, %1708 ]
  %1712 = getelementptr i8, i8* %1678, i64 %1710
  %1713 = getelementptr i8, i8* %1677, i64 %1710
  %1714 = bitcast i8* %1713 to <16 x i8>*
  %1715 = load <16 x i8>, <16 x i8>* %1714, align 1
  %1716 = getelementptr i8, i8* %1713, i64 16
  %1717 = bitcast i8* %1716 to <16 x i8>*
  %1718 = load <16 x i8>, <16 x i8>* %1717, align 1
  %1719 = bitcast i8* %1712 to <16 x i8>*
  store <16 x i8> %1715, <16 x i8>* %1719, align 1
  %1720 = getelementptr i8, i8* %1712, i64 16
  %1721 = bitcast i8* %1720 to <16 x i8>*
  store <16 x i8> %1718, <16 x i8>* %1721, align 1
  %1722 = add i64 %1710, 32
  %1723 = add i64 %1711, -1
  %1724 = icmp eq i64 %1723, 0
  br i1 %1724, label %1725, label %1709

; <label>:1725:                                   ; preds = %1709
  br label %1726

; <label>:1726:                                   ; preds = %1702, %1725
  %1727 = phi i64 [ 0, %1702 ], [ %1722, %1725 ]
  %1728 = icmp ult i64 %1703, 96
  br i1 %1728, label %1778, label %1729

; <label>:1729:                                   ; preds = %1726
  br label %1730

; <label>:1730:                                   ; preds = %1730, %1729
  %1731 = phi i64 [ %1727, %1729 ], [ %1775, %1730 ]
  %1732 = getelementptr i8, i8* %1678, i64 %1731
  %1733 = getelementptr i8, i8* %1677, i64 %1731
  %1734 = bitcast i8* %1733 to <16 x i8>*
  %1735 = load <16 x i8>, <16 x i8>* %1734, align 1
  %1736 = getelementptr i8, i8* %1733, i64 16
  %1737 = bitcast i8* %1736 to <16 x i8>*
  %1738 = load <16 x i8>, <16 x i8>* %1737, align 1
  %1739 = bitcast i8* %1732 to <16 x i8>*
  store <16 x i8> %1735, <16 x i8>* %1739, align 1
  %1740 = getelementptr i8, i8* %1732, i64 16
  %1741 = bitcast i8* %1740 to <16 x i8>*
  store <16 x i8> %1738, <16 x i8>* %1741, align 1
  %1742 = add i64 %1731, 32
  %1743 = getelementptr i8, i8* %1678, i64 %1742
  %1744 = getelementptr i8, i8* %1677, i64 %1742
  %1745 = bitcast i8* %1744 to <16 x i8>*
  %1746 = load <16 x i8>, <16 x i8>* %1745, align 1
  %1747 = getelementptr i8, i8* %1744, i64 16
  %1748 = bitcast i8* %1747 to <16 x i8>*
  %1749 = load <16 x i8>, <16 x i8>* %1748, align 1
  %1750 = bitcast i8* %1743 to <16 x i8>*
  store <16 x i8> %1746, <16 x i8>* %1750, align 1
  %1751 = getelementptr i8, i8* %1743, i64 16
  %1752 = bitcast i8* %1751 to <16 x i8>*
  store <16 x i8> %1749, <16 x i8>* %1752, align 1
  %1753 = add i64 %1731, 64
  %1754 = getelementptr i8, i8* %1678, i64 %1753
  %1755 = getelementptr i8, i8* %1677, i64 %1753
  %1756 = bitcast i8* %1755 to <16 x i8>*
  %1757 = load <16 x i8>, <16 x i8>* %1756, align 1
  %1758 = getelementptr i8, i8* %1755, i64 16
  %1759 = bitcast i8* %1758 to <16 x i8>*
  %1760 = load <16 x i8>, <16 x i8>* %1759, align 1
  %1761 = bitcast i8* %1754 to <16 x i8>*
  store <16 x i8> %1757, <16 x i8>* %1761, align 1
  %1762 = getelementptr i8, i8* %1754, i64 16
  %1763 = bitcast i8* %1762 to <16 x i8>*
  store <16 x i8> %1760, <16 x i8>* %1763, align 1
  %1764 = add i64 %1731, 96
  %1765 = getelementptr i8, i8* %1678, i64 %1764
  %1766 = getelementptr i8, i8* %1677, i64 %1764
  %1767 = bitcast i8* %1766 to <16 x i8>*
  %1768 = load <16 x i8>, <16 x i8>* %1767, align 1
  %1769 = getelementptr i8, i8* %1766, i64 16
  %1770 = bitcast i8* %1769 to <16 x i8>*
  %1771 = load <16 x i8>, <16 x i8>* %1770, align 1
  %1772 = bitcast i8* %1765 to <16 x i8>*
  store <16 x i8> %1768, <16 x i8>* %1772, align 1
  %1773 = getelementptr i8, i8* %1765, i64 16
  %1774 = bitcast i8* %1773 to <16 x i8>*
  store <16 x i8> %1771, <16 x i8>* %1774, align 1
  %1775 = add i64 %1731, 128
  %1776 = icmp eq i64 %1775, %1690
  br i1 %1776, label %1777, label %1730

; <label>:1777:                                   ; preds = %1730
  br label %1778

; <label>:1778:                                   ; preds = %1726, %1777
  %1779 = icmp eq i64 %1684, %1690
  br i1 %1779, label %1801, label %1686

; <label>:1780:                                   ; preds = %1666
  %1781 = zext i32 %1670 to i64
  %1782 = icmp ult i8 %1669, 64
  %1783 = shl i64 1, %1781
  %1784 = and i64 %1783, 317209104613377
  %1785 = icmp ne i64 %1784, 0
  %1786 = and i1 %1782, %1785
  br i1 %1786, label %1787, label %1789

; <label>:1787:                                   ; preds = %1780
  %1788 = getelementptr inbounds i8, i8* %1667, i64 1
  store i8 %1669, i8* %1667, align 1
  br label %1789

; <label>:1789:                                   ; preds = %1787, %1780
  %1790 = phi i8* [ %1788, %1787 ], [ %1667, %1780 ]
  %1791 = getelementptr inbounds i8, i8* %1668, i64 1
  %1792 = icmp ult i8* %1791, %1663
  br i1 %1792, label %1666, label %1673

; <label>:1793:                                   ; preds = %1686, %1793
  %1794 = phi i8* [ %1798, %1793 ], [ %1687, %1686 ]
  %1795 = phi i8* [ %1796, %1793 ], [ %1688, %1686 ]
  %1796 = getelementptr inbounds i8, i8* %1795, i64 1
  %1797 = load i8, i8* %1795, align 1
  %1798 = getelementptr inbounds i8, i8* %1794, i64 1
  store i8 %1797, i8* %1794, align 1
  %1799 = icmp eq i8* %1796, %1663
  br i1 %1799, label %1800, label %1793

; <label>:1800:                                   ; preds = %1793
  br label %1801

; <label>:1801:                                   ; preds = %1800, %1778
  %1802 = getelementptr i8, i8* %0, i64 %1682
  %1803 = ptrtoint i8* %1802 to i64
  %1804 = getelementptr i8, i8* %1678, i64 %1803
  br label %1805

; <label>:1805:                                   ; preds = %1676, %1801
  %1806 = phi i8* [ %1678, %1676 ], [ %1804, %1801 ]
  %1807 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1806, i1 false) #9
  %1808 = tail call i8* @__memcpy_chk(i8* %1806, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %1807) #9
  %1809 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1661) #9
  br label %1973

; <label>:1810:                                   ; preds = %6
  %1811 = getelementptr inbounds i8, i8* %5, i64 48
  %1812 = bitcast i8* %1811 to i64*
  %1813 = load i64, i64* %1812, align 8
  %1814 = getelementptr inbounds i8, i8* %0, i64 1
  %1815 = getelementptr inbounds i8, i8* %0, i64 %1
  %1816 = icmp sgt i64 %1, 1
  br i1 %1816, label %1817, label %1828

; <label>:1817:                                   ; preds = %1810
  br label %1818

; <label>:1818:                                   ; preds = %1817, %1941
  %1819 = phi i8* [ %1942, %1941 ], [ %1814, %1817 ]
  %1820 = phi i8* [ %1943, %1941 ], [ %1814, %1817 ]
  %1821 = load i8, i8* %1820, align 1
  %1822 = sext i8 %1821 to i32
  %1823 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1822, i64 8) #9
  %1824 = icmp eq i8* %1823, null
  br i1 %1824, label %1825, label %1932

; <label>:1825:                                   ; preds = %1818, %1941
  %1826 = phi i8* [ %1943, %1941 ], [ %1820, %1818 ]
  %1827 = phi i8* [ %1942, %1941 ], [ %1819, %1818 ]
  br label %1828

; <label>:1828:                                   ; preds = %1825, %1810
  %1829 = phi i8* [ %1814, %1810 ], [ %1826, %1825 ]
  %1830 = phi i8* [ %1814, %1810 ], [ %1827, %1825 ]
  %1831 = ptrtoint i8* %1829 to i64
  %1832 = icmp ult i8* %1829, %1815
  br i1 %1832, label %1833, label %1957

; <label>:1833:                                   ; preds = %1828
  %1834 = sub i64 %1, %1831
  %1835 = getelementptr i8, i8* %0, i64 %1834
  %1836 = ptrtoint i8* %1835 to i64
  %1837 = icmp ult i8* %1835, inttoptr (i64 32 to i8*)
  br i1 %1837, label %1838, label %1841

; <label>:1838:                                   ; preds = %1930, %1844, %1841, %1833
  %1839 = phi i8* [ %1830, %1844 ], [ %1830, %1841 ], [ %1830, %1833 ], [ %1852, %1930 ]
  %1840 = phi i8* [ %1829, %1844 ], [ %1829, %1841 ], [ %1829, %1833 ], [ %1853, %1930 ]
  br label %1945

; <label>:1841:                                   ; preds = %1833
  %1842 = and i64 %1836, -32
  %1843 = icmp eq i64 %1842, 0
  br i1 %1843, label %1838, label %1844

; <label>:1844:                                   ; preds = %1841
  %1845 = sub i64 %1, %1831
  %1846 = getelementptr i8, i8* %0, i64 %1845
  %1847 = ptrtoint i8* %1846 to i64
  %1848 = getelementptr i8, i8* %1830, i64 %1847
  %1849 = icmp ult i8* %1830, %1815
  %1850 = icmp ult i8* %1829, %1848
  %1851 = and i1 %1849, %1850
  %1852 = getelementptr i8, i8* %1830, i64 %1842
  %1853 = getelementptr i8, i8* %1829, i64 %1842
  br i1 %1851, label %1838, label %1854

; <label>:1854:                                   ; preds = %1844
  %1855 = add i64 %1842, -32
  %1856 = lshr exact i64 %1855, 5
  %1857 = add nuw nsw i64 %1856, 1
  %1858 = and i64 %1857, 3
  %1859 = icmp eq i64 %1858, 0
  br i1 %1859, label %1878, label %1860

; <label>:1860:                                   ; preds = %1854
  br label %1861

; <label>:1861:                                   ; preds = %1861, %1860
  %1862 = phi i64 [ %1874, %1861 ], [ 0, %1860 ]
  %1863 = phi i64 [ %1875, %1861 ], [ %1858, %1860 ]
  %1864 = getelementptr i8, i8* %1830, i64 %1862
  %1865 = getelementptr i8, i8* %1829, i64 %1862
  %1866 = bitcast i8* %1865 to <16 x i8>*
  %1867 = load <16 x i8>, <16 x i8>* %1866, align 1
  %1868 = getelementptr i8, i8* %1865, i64 16
  %1869 = bitcast i8* %1868 to <16 x i8>*
  %1870 = load <16 x i8>, <16 x i8>* %1869, align 1
  %1871 = bitcast i8* %1864 to <16 x i8>*
  store <16 x i8> %1867, <16 x i8>* %1871, align 1
  %1872 = getelementptr i8, i8* %1864, i64 16
  %1873 = bitcast i8* %1872 to <16 x i8>*
  store <16 x i8> %1870, <16 x i8>* %1873, align 1
  %1874 = add i64 %1862, 32
  %1875 = add i64 %1863, -1
  %1876 = icmp eq i64 %1875, 0
  br i1 %1876, label %1877, label %1861

; <label>:1877:                                   ; preds = %1861
  br label %1878

; <label>:1878:                                   ; preds = %1854, %1877
  %1879 = phi i64 [ 0, %1854 ], [ %1874, %1877 ]
  %1880 = icmp ult i64 %1855, 96
  br i1 %1880, label %1930, label %1881

; <label>:1881:                                   ; preds = %1878
  br label %1882

; <label>:1882:                                   ; preds = %1882, %1881
  %1883 = phi i64 [ %1879, %1881 ], [ %1927, %1882 ]
  %1884 = getelementptr i8, i8* %1830, i64 %1883
  %1885 = getelementptr i8, i8* %1829, i64 %1883
  %1886 = bitcast i8* %1885 to <16 x i8>*
  %1887 = load <16 x i8>, <16 x i8>* %1886, align 1
  %1888 = getelementptr i8, i8* %1885, i64 16
  %1889 = bitcast i8* %1888 to <16 x i8>*
  %1890 = load <16 x i8>, <16 x i8>* %1889, align 1
  %1891 = bitcast i8* %1884 to <16 x i8>*
  store <16 x i8> %1887, <16 x i8>* %1891, align 1
  %1892 = getelementptr i8, i8* %1884, i64 16
  %1893 = bitcast i8* %1892 to <16 x i8>*
  store <16 x i8> %1890, <16 x i8>* %1893, align 1
  %1894 = add i64 %1883, 32
  %1895 = getelementptr i8, i8* %1830, i64 %1894
  %1896 = getelementptr i8, i8* %1829, i64 %1894
  %1897 = bitcast i8* %1896 to <16 x i8>*
  %1898 = load <16 x i8>, <16 x i8>* %1897, align 1
  %1899 = getelementptr i8, i8* %1896, i64 16
  %1900 = bitcast i8* %1899 to <16 x i8>*
  %1901 = load <16 x i8>, <16 x i8>* %1900, align 1
  %1902 = bitcast i8* %1895 to <16 x i8>*
  store <16 x i8> %1898, <16 x i8>* %1902, align 1
  %1903 = getelementptr i8, i8* %1895, i64 16
  %1904 = bitcast i8* %1903 to <16 x i8>*
  store <16 x i8> %1901, <16 x i8>* %1904, align 1
  %1905 = add i64 %1883, 64
  %1906 = getelementptr i8, i8* %1830, i64 %1905
  %1907 = getelementptr i8, i8* %1829, i64 %1905
  %1908 = bitcast i8* %1907 to <16 x i8>*
  %1909 = load <16 x i8>, <16 x i8>* %1908, align 1
  %1910 = getelementptr i8, i8* %1907, i64 16
  %1911 = bitcast i8* %1910 to <16 x i8>*
  %1912 = load <16 x i8>, <16 x i8>* %1911, align 1
  %1913 = bitcast i8* %1906 to <16 x i8>*
  store <16 x i8> %1909, <16 x i8>* %1913, align 1
  %1914 = getelementptr i8, i8* %1906, i64 16
  %1915 = bitcast i8* %1914 to <16 x i8>*
  store <16 x i8> %1912, <16 x i8>* %1915, align 1
  %1916 = add i64 %1883, 96
  %1917 = getelementptr i8, i8* %1830, i64 %1916
  %1918 = getelementptr i8, i8* %1829, i64 %1916
  %1919 = bitcast i8* %1918 to <16 x i8>*
  %1920 = load <16 x i8>, <16 x i8>* %1919, align 1
  %1921 = getelementptr i8, i8* %1918, i64 16
  %1922 = bitcast i8* %1921 to <16 x i8>*
  %1923 = load <16 x i8>, <16 x i8>* %1922, align 1
  %1924 = bitcast i8* %1917 to <16 x i8>*
  store <16 x i8> %1920, <16 x i8>* %1924, align 1
  %1925 = getelementptr i8, i8* %1917, i64 16
  %1926 = bitcast i8* %1925 to <16 x i8>*
  store <16 x i8> %1923, <16 x i8>* %1926, align 1
  %1927 = add i64 %1883, 128
  %1928 = icmp eq i64 %1927, %1842
  br i1 %1928, label %1929, label %1882

; <label>:1929:                                   ; preds = %1882
  br label %1930

; <label>:1930:                                   ; preds = %1878, %1929
  %1931 = icmp eq i64 %1836, %1842
  br i1 %1931, label %1953, label %1838

; <label>:1932:                                   ; preds = %1818
  %1933 = zext i32 %1822 to i64
  %1934 = icmp ult i8 %1821, 64
  %1935 = shl i64 1, %1933
  %1936 = and i64 %1935, 326009492602881
  %1937 = icmp ne i64 %1936, 0
  %1938 = and i1 %1934, %1937
  br i1 %1938, label %1939, label %1941

; <label>:1939:                                   ; preds = %1932
  %1940 = getelementptr inbounds i8, i8* %1819, i64 1
  store i8 %1821, i8* %1819, align 1
  br label %1941

; <label>:1941:                                   ; preds = %1939, %1932
  %1942 = phi i8* [ %1940, %1939 ], [ %1819, %1932 ]
  %1943 = getelementptr inbounds i8, i8* %1820, i64 1
  %1944 = icmp ult i8* %1943, %1815
  br i1 %1944, label %1818, label %1825

; <label>:1945:                                   ; preds = %1838, %1945
  %1946 = phi i8* [ %1950, %1945 ], [ %1839, %1838 ]
  %1947 = phi i8* [ %1948, %1945 ], [ %1840, %1838 ]
  %1948 = getelementptr inbounds i8, i8* %1947, i64 1
  %1949 = load i8, i8* %1947, align 1
  %1950 = getelementptr inbounds i8, i8* %1946, i64 1
  store i8 %1949, i8* %1946, align 1
  %1951 = icmp eq i8* %1948, %1815
  br i1 %1951, label %1952, label %1945

; <label>:1952:                                   ; preds = %1945
  br label %1953

; <label>:1953:                                   ; preds = %1952, %1930
  %1954 = getelementptr i8, i8* %0, i64 %1834
  %1955 = ptrtoint i8* %1954 to i64
  %1956 = getelementptr i8, i8* %1830, i64 %1955
  br label %1957

; <label>:1957:                                   ; preds = %1828, %1953
  %1958 = phi i8* [ %1830, %1828 ], [ %1956, %1953 ]
  %1959 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1958, i1 false) #9
  %1960 = tail call i8* @__memcpy_chk(i8* %1958, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %1959) #9
  %1961 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1813) #9
  br label %1973

; <label>:1962:                                   ; preds = %6
  %1963 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1964 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1963, i64 0, i32 5
  %1965 = load i8*, i8** %1964, align 8
  %1966 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1963, i64 0, i32 6
  %1967 = load i8*, i8** %1966, align 8
  %1968 = icmp ult i8* %1965, %1967
  br i1 %1968, label %1971, label %1969

; <label>:1969:                                   ; preds = %1962
  %1970 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %1963, i32 63) #9
  br label %1973

; <label>:1971:                                   ; preds = %1962
  %1972 = getelementptr inbounds i8, i8* %1965, i64 1
  store i8* %1972, i8** %1964, align 8
  store i8 63, i8* %1965, align 1
  br label %1973

; <label>:1973:                                   ; preds = %1971, %1969, %1957, %1805, %1653, %1494, %1342, %1190, %1038, %886, %613, %462, %310, %151
  ret i1 false
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @print_it(i8*, i32, i8*, i1 (i8*, i64, i32, i32, i8*, i8*)* nocapture, i8*) unnamed_addr #6 {
  %6 = tail call i64 @strlen(i8* %0) #13
  %7 = add i64 %6, 3
  %8 = tail call noalias i8* @xmalloc(i64 %7) #9
  %9 = load i8, i8* %0, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %232, label %11

; <label>:11:                                     ; preds = %5
  br label %12

; <label>:12:                                     ; preds = %11, %225
  %13 = phi i8 [ %229, %225 ], [ %9, %11 ]
  %14 = phi i8 [ %227, %225 ], [ 0, %11 ]
  %15 = phi i8* [ %228, %225 ], [ %0, %11 ]
  %16 = sext i8 %13 to i32
  switch i32 %16, label %213 [
    i32 37, label %17
    i32 92, label %68
  ]

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  %19 = tail call i64 @strspn(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0)) #9
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = tail call i64 @strspn(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @digits, i64 0, i64 0)) #9
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %17
  %27 = getelementptr inbounds i8, i8* %23, i64 1
  %28 = tail call i64 @strspn(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @digits, i64 0, i64 0)) #9
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %23, i64 %29
  %31 = load i8, i8* %30, align 1
  br label %32

; <label>:32:                                     ; preds = %26, %17
  %33 = phi i8 [ %31, %26 ], [ %24, %17 ]
  %34 = phi i8* [ %30, %26 ], [ %23, %17 ]
  %35 = ptrtoint i8* %34 to i64
  %36 = ptrtoint i8* %18 to i64
  %37 = sub i64 %35, %36
  %38 = sext i8 %33 to i32
  %39 = add i64 %37, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* nonnull %15, i64 %39, i32 1, i1 false)
  switch i32 %38, label %63 [
    i32 0, label %40
    i32 37, label %42
  ]

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds i8, i8* %34, i64 -1
  br label %42

; <label>:42:                                     ; preds = %32, %40
  %43 = phi i8* [ %34, %32 ], [ %41, %40 ]
  %44 = icmp eq i64 %37, 0
  br i1 %44, label %52, label %45

; <label>:45:                                     ; preds = %42
  %46 = load i8, i8* %34, align 1
  %47 = getelementptr inbounds i8, i8* %8, i64 %39
  store i8 %46, i8* %47, align 1
  %48 = add i64 %37, 2
  %49 = getelementptr inbounds i8, i8* %8, i64 %48
  store i8 0, i8* %49, align 1
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i64 0, i64 0), i32 5) #9
  %51 = tail call i8* @quote(i8* %8) #9
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %50, i8* %51) #9
  unreachable

; <label>:52:                                     ; preds = %42
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %55, %57
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %52
  %60 = tail call i32 @__overflow(%struct._IO_FILE* %53, i32 37) #9
  br label %225

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %62, i8** %54, align 8
  store i8 37, i8* %55, align 1
  br label %225

; <label>:63:                                     ; preds = %32
  %64 = tail call zeroext i1 %3(i8* %8, i64 %39, i32 %38, i32 %1, i8* %2, i8* %4) #9
  %65 = zext i1 %64 to i8
  %66 = and i8 %14, 1
  %67 = or i8 %65, %66
  br label %225

; <label>:68:                                     ; preds = %12
  %69 = load i1, i1* @interpret_backslash_escapes, align 1
  br i1 %69, label %81, label %70

; <label>:70:                                     ; preds = %68
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 5
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %71, i64 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ult i8* %73, %75
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %70
  %78 = tail call i32 @__overflow(%struct._IO_FILE* %71, i32 92) #9
  br label %225

; <label>:79:                                     ; preds = %70
  %80 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %80, i8** %72, align 8
  store i8 92, i8* %73, align 1
  br label %225

; <label>:81:                                     ; preds = %68
  %82 = getelementptr inbounds i8, i8* %15, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = and i8 %83, -8
  %85 = icmp eq i8 %84, 48
  br i1 %85, label %86, label %119

; <label>:86:                                     ; preds = %81
  %87 = sext i8 %83 to i32
  %88 = add nsw i32 %87, -48
  %89 = getelementptr inbounds i8, i8* %15, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = and i8 %90, -8
  %92 = icmp eq i8 %91, 48
  br i1 %92, label %93, label %102

; <label>:93:                                     ; preds = %86
  %94 = shl nsw i32 %88, 3
  %95 = sext i8 %90 to i32
  %96 = add nsw i32 %94, -48
  %97 = add nsw i32 %96, %95
  %98 = getelementptr inbounds i8, i8* %15, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = and i8 %99, -8
  %101 = icmp eq i8 %100, 48
  br i1 %101, label %239, label %102

; <label>:102:                                    ; preds = %239, %93, %86
  %103 = phi i8* [ %89, %86 ], [ %98, %93 ], [ %244, %239 ]
  %104 = phi i32 [ %88, %86 ], [ %97, %93 ], [ %243, %239 ]
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %106 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 5
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %105, i64 0, i32 6
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ult i8* %107, %109
  br i1 %110, label %114, label %111

; <label>:111:                                    ; preds = %102
  %112 = and i32 %104, 255
  %113 = tail call i32 @__overflow(%struct._IO_FILE* %105, i32 %112) #9
  br label %117

; <label>:114:                                    ; preds = %102
  %115 = trunc i32 %104 to i8
  %116 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %116, i8** %106, align 8
  store i8 %115, i8* %107, align 1
  br label %117

; <label>:117:                                    ; preds = %111, %114
  %118 = getelementptr inbounds i8, i8* %103, i64 -1
  br label %225

; <label>:119:                                    ; preds = %81
  switch i8 %83, label %188 [
    i8 120, label %120
    i8 0, label %176
  ]

; <label>:120:                                    ; preds = %119
  %121 = tail call i16** @__ctype_b_loc() #1
  %122 = load i16*, i16** %121, align 8
  %123 = getelementptr inbounds i8, i8* %15, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i16, i16* %122, i64 %125
  %127 = load i16, i16* %126, align 2
  %128 = and i16 %127, 4096
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %188, label %130

; <label>:130:                                    ; preds = %120
  %131 = sext i8 %124 to i32
  %132 = add i8 %124, -97
  %133 = icmp ult i8 %132, 6
  br i1 %133, label %138, label %134

; <label>:134:                                    ; preds = %130
  %135 = add i8 %124, -65
  %136 = icmp ult i8 %135, 6
  %137 = select i1 %136, i32 -55, i32 -48
  br label %138

; <label>:138:                                    ; preds = %130, %134
  %139 = phi i32 [ %137, %134 ], [ -87, %130 ]
  %140 = add nsw i32 %139, %131
  %141 = getelementptr inbounds i8, i8* %15, i64 3
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds i16, i16* %122, i64 %143
  %145 = load i16, i16* %144, align 2
  %146 = and i16 %145, 4096
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %161, label %148

; <label>:148:                                    ; preds = %138
  %149 = shl nsw i32 %140, 4
  %150 = sext i8 %142 to i32
  %151 = add i8 %142, -97
  %152 = icmp ult i8 %151, 6
  br i1 %152, label %157, label %153

; <label>:153:                                    ; preds = %148
  %154 = add i8 %142, -65
  %155 = icmp ult i8 %154, 6
  %156 = select i1 %155, i32 -55, i32 -48
  br label %157

; <label>:157:                                    ; preds = %148, %153
  %158 = phi i32 [ %156, %153 ], [ -87, %148 ]
  %159 = add nsw i32 %150, %149
  %160 = add nsw i32 %159, %158
  br label %161

; <label>:161:                                    ; preds = %138, %157
  %162 = phi i8* [ %141, %157 ], [ %123, %138 ]
  %163 = phi i32 [ %160, %157 ], [ %140, %138 ]
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %165 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %164, i64 0, i32 5
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %164, i64 0, i32 6
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ult i8* %166, %168
  br i1 %169, label %173, label %170

; <label>:170:                                    ; preds = %161
  %171 = and i32 %163, 255
  %172 = tail call i32 @__overflow(%struct._IO_FILE* %164, i32 %171) #9
  br label %225

; <label>:173:                                    ; preds = %161
  %174 = trunc i32 %163 to i8
  %175 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %175, i8** %165, align 8
  store i8 %174, i8* %166, align 1
  br label %225

; <label>:176:                                    ; preds = %119
  %177 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %177) #9
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %179 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %178, i64 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ult i8* %180, %182
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %176
  %185 = tail call i32 @__overflow(%struct._IO_FILE* %178, i32 92) #9
  br label %225

; <label>:186:                                    ; preds = %176
  %187 = getelementptr inbounds i8, i8* %180, i64 1
  store i8* %187, i8** %179, align 8
  store i8 92, i8* %180, align 1
  br label %225

; <label>:188:                                    ; preds = %119, %120
  %189 = sext i8 %83 to i32
  switch i32 %189, label %198 [
    i32 97, label %190
    i32 98, label %191
    i32 101, label %192
    i32 102, label %193
    i32 110, label %194
    i32 114, label %195
    i32 116, label %196
    i32 118, label %197
    i32 34, label %200
    i32 92, label %200
  ]

; <label>:190:                                    ; preds = %188
  br label %200

; <label>:191:                                    ; preds = %188
  br label %200

; <label>:192:                                    ; preds = %188
  br label %200

; <label>:193:                                    ; preds = %188
  br label %200

; <label>:194:                                    ; preds = %188
  br label %200

; <label>:195:                                    ; preds = %188
  br label %200

; <label>:196:                                    ; preds = %188
  br label %200

; <label>:197:                                    ; preds = %188
  br label %200

; <label>:198:                                    ; preds = %188
  %199 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.64, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %199, i32 %189) #9
  br label %200

; <label>:200:                                    ; preds = %198, %197, %196, %195, %194, %193, %192, %191, %190, %188, %188
  %201 = phi i8 [ %83, %198 ], [ %83, %188 ], [ %83, %188 ], [ 11, %197 ], [ 9, %196 ], [ 13, %195 ], [ 10, %194 ], [ 12, %193 ], [ 27, %192 ], [ 8, %191 ], [ 7, %190 ]
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 6
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ult i8* %204, %206
  br i1 %207, label %211, label %208

; <label>:208:                                    ; preds = %200
  %209 = zext i8 %201 to i32
  %210 = tail call i32 @__overflow(%struct._IO_FILE* %202, i32 %209) #9
  br label %225

; <label>:211:                                    ; preds = %200
  %212 = getelementptr inbounds i8, i8* %204, i64 1
  store i8* %212, i8** %203, align 8
  store i8 %201, i8* %204, align 1
  br label %225

; <label>:213:                                    ; preds = %12
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %215 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %214, i64 0, i32 5
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %214, i64 0, i32 6
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ult i8* %216, %218
  br i1 %219, label %223, label %220

; <label>:220:                                    ; preds = %213
  %221 = and i32 %16, 255
  %222 = tail call i32 @__overflow(%struct._IO_FILE* %214, i32 %221) #9
  br label %225

; <label>:223:                                    ; preds = %213
  %224 = getelementptr inbounds i8, i8* %216, i64 1
  store i8* %224, i8** %215, align 8
  store i8 %13, i8* %216, align 1
  br label %225

; <label>:225:                                    ; preds = %223, %220, %211, %208, %186, %184, %173, %170, %79, %77, %61, %59, %63, %117
  %226 = phi i8* [ %118, %117 ], [ %34, %63 ], [ %43, %59 ], [ %43, %61 ], [ %15, %77 ], [ %15, %79 ], [ %162, %170 ], [ %162, %173 ], [ %15, %184 ], [ %15, %186 ], [ %82, %208 ], [ %82, %211 ], [ %15, %220 ], [ %15, %223 ]
  %227 = phi i8 [ %14, %117 ], [ %67, %63 ], [ %14, %59 ], [ %14, %61 ], [ %14, %77 ], [ %14, %79 ], [ %14, %170 ], [ %14, %173 ], [ %14, %184 ], [ %14, %186 ], [ %14, %208 ], [ %14, %211 ], [ %14, %220 ], [ %14, %223 ]
  %228 = getelementptr inbounds i8, i8* %226, i64 1
  %229 = load i8, i8* %228, align 1
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %12

; <label>:231:                                    ; preds = %225
  br label %232

; <label>:232:                                    ; preds = %231, %5
  %233 = phi i8 [ 0, %5 ], [ %227, %231 ]
  tail call void @free(i8* %8) #9
  %234 = load i8*, i8** @trailing_delim, align 8
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %236 = tail call i32 @fputs_unlocked(i8* %234, %struct._IO_FILE* %235) #9
  %237 = and i8 %233, 1
  %238 = icmp ne i8 %237, 0
  ret i1 %238

; <label>:239:                                    ; preds = %93
  %240 = shl nsw i32 %97, 3
  %241 = sext i8 %99 to i32
  %242 = add nsw i32 %240, -48
  %243 = add i32 %242, %241
  %244 = getelementptr inbounds i8, i8* %15, i64 4
  br label %102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @print_stat(i8*, i64, i32, i32, i8*, i8*) #6 {
  %7 = bitcast i8* %5 to %struct.stat*
  switch i32 %2, label %4056 [
    i32 110, label %8
    i32 78, label %157
    i32 100, label %473
    i32 68, label %624
    i32 105, label %775
    i32 97, label %927
    i32 65, label %1081
    i32 102, label %1230
    i32 70, label %1383
    i32 104, label %1533
    i32 117, label %1685
    i32 85, label %1838
    i32 103, label %1997
    i32 71, label %2150
    i32 116, label %2309
    i32 109, label %2466
    i32 84, label %2648
    i32 115, label %2804
    i32 66, label %2956
    i32 98, label %3105
    i32 111, label %3257
    i32 119, label %3413
    i32 87, label %3562
    i32 120, label %3563
    i32 88, label %3718
    i32 121, label %3725
    i32 89, label %3880
    i32 122, label %3887
    i32 90, label %4042
    i32 67, label %4049
  ]

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds i8, i8* %0, i64 1
  %10 = getelementptr inbounds i8, i8* %0, i64 %1
  %11 = icmp sgt i64 %1, 1
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %8
  br label %13

; <label>:13:                                     ; preds = %12, %136
  %14 = phi i8* [ %137, %136 ], [ %9, %12 ]
  %15 = phi i8* [ %138, %136 ], [ %9, %12 ]
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %17, i64 8) #9
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %127

; <label>:20:                                     ; preds = %13, %136
  %21 = phi i8* [ %138, %136 ], [ %15, %13 ]
  %22 = phi i8* [ %137, %136 ], [ %14, %13 ]
  br label %23

; <label>:23:                                     ; preds = %20, %8
  %24 = phi i8* [ %9, %8 ], [ %21, %20 ]
  %25 = phi i8* [ %9, %8 ], [ %22, %20 ]
  %26 = ptrtoint i8* %24 to i64
  %27 = icmp ult i8* %24, %10
  br i1 %27, label %28, label %152

; <label>:28:                                     ; preds = %23
  %29 = sub i64 %1, %26
  %30 = getelementptr i8, i8* %0, i64 %29
  %31 = ptrtoint i8* %30 to i64
  %32 = icmp ult i8* %30, inttoptr (i64 32 to i8*)
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %125, %39, %36, %28
  %34 = phi i8* [ %25, %39 ], [ %25, %36 ], [ %25, %28 ], [ %47, %125 ]
  %35 = phi i8* [ %24, %39 ], [ %24, %36 ], [ %24, %28 ], [ %48, %125 ]
  br label %140

; <label>:36:                                     ; preds = %28
  %37 = and i64 %31, -32
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %33, label %39

; <label>:39:                                     ; preds = %36
  %40 = sub i64 %1, %26
  %41 = getelementptr i8, i8* %0, i64 %40
  %42 = ptrtoint i8* %41 to i64
  %43 = getelementptr i8, i8* %25, i64 %42
  %44 = icmp ult i8* %25, %10
  %45 = icmp ult i8* %24, %43
  %46 = and i1 %44, %45
  %47 = getelementptr i8, i8* %25, i64 %37
  %48 = getelementptr i8, i8* %24, i64 %37
  br i1 %46, label %33, label %49

; <label>:49:                                     ; preds = %39
  %50 = add i64 %37, -32
  %51 = lshr exact i64 %50, 5
  %52 = add nuw nsw i64 %51, 1
  %53 = and i64 %52, 3
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %73, label %55

; <label>:55:                                     ; preds = %49
  br label %56

; <label>:56:                                     ; preds = %56, %55
  %57 = phi i64 [ %69, %56 ], [ 0, %55 ]
  %58 = phi i64 [ %70, %56 ], [ %53, %55 ]
  %59 = getelementptr i8, i8* %25, i64 %57
  %60 = getelementptr i8, i8* %24, i64 %57
  %61 = bitcast i8* %60 to <16 x i8>*
  %62 = load <16 x i8>, <16 x i8>* %61, align 1
  %63 = getelementptr i8, i8* %60, i64 16
  %64 = bitcast i8* %63 to <16 x i8>*
  %65 = load <16 x i8>, <16 x i8>* %64, align 1
  %66 = bitcast i8* %59 to <16 x i8>*
  store <16 x i8> %62, <16 x i8>* %66, align 1
  %67 = getelementptr i8, i8* %59, i64 16
  %68 = bitcast i8* %67 to <16 x i8>*
  store <16 x i8> %65, <16 x i8>* %68, align 1
  %69 = add i64 %57, 32
  %70 = add i64 %58, -1
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %56

; <label>:72:                                     ; preds = %56
  br label %73

; <label>:73:                                     ; preds = %49, %72
  %74 = phi i64 [ 0, %49 ], [ %69, %72 ]
  %75 = icmp ult i64 %50, 96
  br i1 %75, label %125, label %76

; <label>:76:                                     ; preds = %73
  br label %77

; <label>:77:                                     ; preds = %77, %76
  %78 = phi i64 [ %74, %76 ], [ %122, %77 ]
  %79 = getelementptr i8, i8* %25, i64 %78
  %80 = getelementptr i8, i8* %24, i64 %78
  %81 = bitcast i8* %80 to <16 x i8>*
  %82 = load <16 x i8>, <16 x i8>* %81, align 1
  %83 = getelementptr i8, i8* %80, i64 16
  %84 = bitcast i8* %83 to <16 x i8>*
  %85 = load <16 x i8>, <16 x i8>* %84, align 1
  %86 = bitcast i8* %79 to <16 x i8>*
  store <16 x i8> %82, <16 x i8>* %86, align 1
  %87 = getelementptr i8, i8* %79, i64 16
  %88 = bitcast i8* %87 to <16 x i8>*
  store <16 x i8> %85, <16 x i8>* %88, align 1
  %89 = add i64 %78, 32
  %90 = getelementptr i8, i8* %25, i64 %89
  %91 = getelementptr i8, i8* %24, i64 %89
  %92 = bitcast i8* %91 to <16 x i8>*
  %93 = load <16 x i8>, <16 x i8>* %92, align 1
  %94 = getelementptr i8, i8* %91, i64 16
  %95 = bitcast i8* %94 to <16 x i8>*
  %96 = load <16 x i8>, <16 x i8>* %95, align 1
  %97 = bitcast i8* %90 to <16 x i8>*
  store <16 x i8> %93, <16 x i8>* %97, align 1
  %98 = getelementptr i8, i8* %90, i64 16
  %99 = bitcast i8* %98 to <16 x i8>*
  store <16 x i8> %96, <16 x i8>* %99, align 1
  %100 = add i64 %78, 64
  %101 = getelementptr i8, i8* %25, i64 %100
  %102 = getelementptr i8, i8* %24, i64 %100
  %103 = bitcast i8* %102 to <16 x i8>*
  %104 = load <16 x i8>, <16 x i8>* %103, align 1
  %105 = getelementptr i8, i8* %102, i64 16
  %106 = bitcast i8* %105 to <16 x i8>*
  %107 = load <16 x i8>, <16 x i8>* %106, align 1
  %108 = bitcast i8* %101 to <16 x i8>*
  store <16 x i8> %104, <16 x i8>* %108, align 1
  %109 = getelementptr i8, i8* %101, i64 16
  %110 = bitcast i8* %109 to <16 x i8>*
  store <16 x i8> %107, <16 x i8>* %110, align 1
  %111 = add i64 %78, 96
  %112 = getelementptr i8, i8* %25, i64 %111
  %113 = getelementptr i8, i8* %24, i64 %111
  %114 = bitcast i8* %113 to <16 x i8>*
  %115 = load <16 x i8>, <16 x i8>* %114, align 1
  %116 = getelementptr i8, i8* %113, i64 16
  %117 = bitcast i8* %116 to <16 x i8>*
  %118 = load <16 x i8>, <16 x i8>* %117, align 1
  %119 = bitcast i8* %112 to <16 x i8>*
  store <16 x i8> %115, <16 x i8>* %119, align 1
  %120 = getelementptr i8, i8* %112, i64 16
  %121 = bitcast i8* %120 to <16 x i8>*
  store <16 x i8> %118, <16 x i8>* %121, align 1
  %122 = add i64 %78, 128
  %123 = icmp eq i64 %122, %37
  br i1 %123, label %124, label %77

; <label>:124:                                    ; preds = %77
  br label %125

; <label>:125:                                    ; preds = %73, %124
  %126 = icmp eq i64 %31, %37
  br i1 %126, label %148, label %33

; <label>:127:                                    ; preds = %13
  %128 = zext i32 %17 to i64
  %129 = icmp ult i8 %16, 64
  %130 = shl i64 1, %128
  %131 = and i64 %130, 35184372088833
  %132 = icmp ne i64 %131, 0
  %133 = and i1 %129, %132
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %16, i8* %14, align 1
  br label %136

; <label>:136:                                    ; preds = %134, %127
  %137 = phi i8* [ %135, %134 ], [ %14, %127 ]
  %138 = getelementptr inbounds i8, i8* %15, i64 1
  %139 = icmp ult i8* %138, %10
  br i1 %139, label %13, label %20

; <label>:140:                                    ; preds = %33, %140
  %141 = phi i8* [ %145, %140 ], [ %34, %33 ]
  %142 = phi i8* [ %143, %140 ], [ %35, %33 ]
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %142, align 1
  %145 = getelementptr inbounds i8, i8* %141, i64 1
  store i8 %144, i8* %141, align 1
  %146 = icmp eq i8* %143, %10
  br i1 %146, label %147, label %140

; <label>:147:                                    ; preds = %140
  br label %148

; <label>:148:                                    ; preds = %147, %125
  %149 = getelementptr i8, i8* %0, i64 %29
  %150 = ptrtoint i8* %149 to i64
  %151 = getelementptr i8, i8* %25, i64 %150
  br label %152

; <label>:152:                                    ; preds = %23, %148
  %153 = phi i8* [ %25, %23 ], [ %151, %148 ]
  %154 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %153, i1 false) #9
  %155 = tail call i8* @__memcpy_chk(i8* %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %154) #9
  %156 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %4) #9
  br label %4067

; <label>:157:                                    ; preds = %6
  %158 = tail call i32 @get_quoting_style(%struct.quoting_options* null) #9
  %159 = tail call i8* @quotearg_style(i32 %158, i8* %4) #9
  %160 = getelementptr inbounds i8, i8* %0, i64 1
  %161 = getelementptr inbounds i8, i8* %0, i64 %1
  %162 = icmp sgt i64 %1, 1
  br i1 %162, label %163, label %174

; <label>:163:                                    ; preds = %157
  br label %164

; <label>:164:                                    ; preds = %163, %287
  %165 = phi i8* [ %288, %287 ], [ %160, %163 ]
  %166 = phi i8* [ %289, %287 ], [ %160, %163 ]
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %168, i64 8) #9
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %278

; <label>:171:                                    ; preds = %164, %287
  %172 = phi i8* [ %289, %287 ], [ %166, %164 ]
  %173 = phi i8* [ %288, %287 ], [ %165, %164 ]
  br label %174

; <label>:174:                                    ; preds = %171, %157
  %175 = phi i8* [ %160, %157 ], [ %172, %171 ]
  %176 = phi i8* [ %160, %157 ], [ %173, %171 ]
  %177 = ptrtoint i8* %175 to i64
  %178 = icmp ult i8* %175, %161
  br i1 %178, label %179, label %303

; <label>:179:                                    ; preds = %174
  %180 = sub i64 %1, %177
  %181 = getelementptr i8, i8* %0, i64 %180
  %182 = ptrtoint i8* %181 to i64
  %183 = icmp ult i8* %181, inttoptr (i64 32 to i8*)
  br i1 %183, label %184, label %187

; <label>:184:                                    ; preds = %276, %190, %187, %179
  %185 = phi i8* [ %176, %190 ], [ %176, %187 ], [ %176, %179 ], [ %198, %276 ]
  %186 = phi i8* [ %175, %190 ], [ %175, %187 ], [ %175, %179 ], [ %199, %276 ]
  br label %291

; <label>:187:                                    ; preds = %179
  %188 = and i64 %182, -32
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %184, label %190

; <label>:190:                                    ; preds = %187
  %191 = sub i64 %1, %177
  %192 = getelementptr i8, i8* %0, i64 %191
  %193 = ptrtoint i8* %192 to i64
  %194 = getelementptr i8, i8* %176, i64 %193
  %195 = icmp ult i8* %176, %161
  %196 = icmp ult i8* %175, %194
  %197 = and i1 %195, %196
  %198 = getelementptr i8, i8* %176, i64 %188
  %199 = getelementptr i8, i8* %175, i64 %188
  br i1 %197, label %184, label %200

; <label>:200:                                    ; preds = %190
  %201 = add i64 %188, -32
  %202 = lshr exact i64 %201, 5
  %203 = add nuw nsw i64 %202, 1
  %204 = and i64 %203, 3
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %224, label %206

; <label>:206:                                    ; preds = %200
  br label %207

; <label>:207:                                    ; preds = %207, %206
  %208 = phi i64 [ %220, %207 ], [ 0, %206 ]
  %209 = phi i64 [ %221, %207 ], [ %204, %206 ]
  %210 = getelementptr i8, i8* %176, i64 %208
  %211 = getelementptr i8, i8* %175, i64 %208
  %212 = bitcast i8* %211 to <16 x i8>*
  %213 = load <16 x i8>, <16 x i8>* %212, align 1
  %214 = getelementptr i8, i8* %211, i64 16
  %215 = bitcast i8* %214 to <16 x i8>*
  %216 = load <16 x i8>, <16 x i8>* %215, align 1
  %217 = bitcast i8* %210 to <16 x i8>*
  store <16 x i8> %213, <16 x i8>* %217, align 1
  %218 = getelementptr i8, i8* %210, i64 16
  %219 = bitcast i8* %218 to <16 x i8>*
  store <16 x i8> %216, <16 x i8>* %219, align 1
  %220 = add i64 %208, 32
  %221 = add i64 %209, -1
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %207

; <label>:223:                                    ; preds = %207
  br label %224

; <label>:224:                                    ; preds = %200, %223
  %225 = phi i64 [ 0, %200 ], [ %220, %223 ]
  %226 = icmp ult i64 %201, 96
  br i1 %226, label %276, label %227

; <label>:227:                                    ; preds = %224
  br label %228

; <label>:228:                                    ; preds = %228, %227
  %229 = phi i64 [ %225, %227 ], [ %273, %228 ]
  %230 = getelementptr i8, i8* %176, i64 %229
  %231 = getelementptr i8, i8* %175, i64 %229
  %232 = bitcast i8* %231 to <16 x i8>*
  %233 = load <16 x i8>, <16 x i8>* %232, align 1
  %234 = getelementptr i8, i8* %231, i64 16
  %235 = bitcast i8* %234 to <16 x i8>*
  %236 = load <16 x i8>, <16 x i8>* %235, align 1
  %237 = bitcast i8* %230 to <16 x i8>*
  store <16 x i8> %233, <16 x i8>* %237, align 1
  %238 = getelementptr i8, i8* %230, i64 16
  %239 = bitcast i8* %238 to <16 x i8>*
  store <16 x i8> %236, <16 x i8>* %239, align 1
  %240 = add i64 %229, 32
  %241 = getelementptr i8, i8* %176, i64 %240
  %242 = getelementptr i8, i8* %175, i64 %240
  %243 = bitcast i8* %242 to <16 x i8>*
  %244 = load <16 x i8>, <16 x i8>* %243, align 1
  %245 = getelementptr i8, i8* %242, i64 16
  %246 = bitcast i8* %245 to <16 x i8>*
  %247 = load <16 x i8>, <16 x i8>* %246, align 1
  %248 = bitcast i8* %241 to <16 x i8>*
  store <16 x i8> %244, <16 x i8>* %248, align 1
  %249 = getelementptr i8, i8* %241, i64 16
  %250 = bitcast i8* %249 to <16 x i8>*
  store <16 x i8> %247, <16 x i8>* %250, align 1
  %251 = add i64 %229, 64
  %252 = getelementptr i8, i8* %176, i64 %251
  %253 = getelementptr i8, i8* %175, i64 %251
  %254 = bitcast i8* %253 to <16 x i8>*
  %255 = load <16 x i8>, <16 x i8>* %254, align 1
  %256 = getelementptr i8, i8* %253, i64 16
  %257 = bitcast i8* %256 to <16 x i8>*
  %258 = load <16 x i8>, <16 x i8>* %257, align 1
  %259 = bitcast i8* %252 to <16 x i8>*
  store <16 x i8> %255, <16 x i8>* %259, align 1
  %260 = getelementptr i8, i8* %252, i64 16
  %261 = bitcast i8* %260 to <16 x i8>*
  store <16 x i8> %258, <16 x i8>* %261, align 1
  %262 = add i64 %229, 96
  %263 = getelementptr i8, i8* %176, i64 %262
  %264 = getelementptr i8, i8* %175, i64 %262
  %265 = bitcast i8* %264 to <16 x i8>*
  %266 = load <16 x i8>, <16 x i8>* %265, align 1
  %267 = getelementptr i8, i8* %264, i64 16
  %268 = bitcast i8* %267 to <16 x i8>*
  %269 = load <16 x i8>, <16 x i8>* %268, align 1
  %270 = bitcast i8* %263 to <16 x i8>*
  store <16 x i8> %266, <16 x i8>* %270, align 1
  %271 = getelementptr i8, i8* %263, i64 16
  %272 = bitcast i8* %271 to <16 x i8>*
  store <16 x i8> %269, <16 x i8>* %272, align 1
  %273 = add i64 %229, 128
  %274 = icmp eq i64 %273, %188
  br i1 %274, label %275, label %228

; <label>:275:                                    ; preds = %228
  br label %276

; <label>:276:                                    ; preds = %224, %275
  %277 = icmp eq i64 %182, %188
  br i1 %277, label %299, label %184

; <label>:278:                                    ; preds = %164
  %279 = zext i32 %168 to i64
  %280 = icmp ult i8 %167, 64
  %281 = shl i64 1, %279
  %282 = and i64 %281, 35184372088833
  %283 = icmp ne i64 %282, 0
  %284 = and i1 %280, %283
  br i1 %284, label %285, label %287

; <label>:285:                                    ; preds = %278
  %286 = getelementptr inbounds i8, i8* %165, i64 1
  store i8 %167, i8* %165, align 1
  br label %287

; <label>:287:                                    ; preds = %285, %278
  %288 = phi i8* [ %286, %285 ], [ %165, %278 ]
  %289 = getelementptr inbounds i8, i8* %166, i64 1
  %290 = icmp ult i8* %289, %161
  br i1 %290, label %164, label %171

; <label>:291:                                    ; preds = %184, %291
  %292 = phi i8* [ %296, %291 ], [ %185, %184 ]
  %293 = phi i8* [ %294, %291 ], [ %186, %184 ]
  %294 = getelementptr inbounds i8, i8* %293, i64 1
  %295 = load i8, i8* %293, align 1
  %296 = getelementptr inbounds i8, i8* %292, i64 1
  store i8 %295, i8* %292, align 1
  %297 = icmp eq i8* %294, %161
  br i1 %297, label %298, label %291

; <label>:298:                                    ; preds = %291
  br label %299

; <label>:299:                                    ; preds = %298, %276
  %300 = getelementptr i8, i8* %0, i64 %180
  %301 = ptrtoint i8* %300 to i64
  %302 = getelementptr i8, i8* %176, i64 %301
  br label %303

; <label>:303:                                    ; preds = %174, %299
  %304 = phi i8* [ %176, %174 ], [ %302, %299 ]
  %305 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %304, i1 false) #9
  %306 = tail call i8* @__memcpy_chk(i8* %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %305) #9
  %307 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %159) #9
  %308 = getelementptr inbounds i8, i8* %5, i64 24
  %309 = bitcast i8* %308 to i32*
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %310, 61440
  %312 = icmp eq i32 %311, 40960
  br i1 %312, label %313, label %4067

; <label>:313:                                    ; preds = %303
  %314 = getelementptr inbounds i8, i8* %5, i64 48
  %315 = bitcast i8* %314 to i64*
  %316 = load i64, i64* %315, align 8
  %317 = tail call i8* @areadlink_with_size(i8* %4, i64 %316) #9
  %318 = icmp eq i8* %317, null
  br i1 %318, label %319, label %324

; <label>:319:                                    ; preds = %313
  %320 = tail call i32* @__errno_location() #1
  %321 = load i32, i32* %320, align 4
  %322 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.191, i64 0, i64 0), i32 5) #9
  %323 = tail call i8* @quotearg_style(i32 4, i8* %4) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %321, i8* %322, i8* %323) #9
  br label %4067

; <label>:324:                                    ; preds = %313
  %325 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0)) #9
  %326 = tail call i32 @get_quoting_style(%struct.quoting_options* null) #9
  %327 = tail call i8* @quotearg_style(i32 %326, i8* nonnull %317) #9
  br i1 %162, label %328, label %339

; <label>:328:                                    ; preds = %324
  br label %329

; <label>:329:                                    ; preds = %328, %452
  %330 = phi i8* [ %453, %452 ], [ %160, %328 ]
  %331 = phi i8* [ %454, %452 ], [ %160, %328 ]
  %332 = load i8, i8* %331, align 1
  %333 = sext i8 %332 to i32
  %334 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %333, i64 8) #9
  %335 = icmp eq i8* %334, null
  br i1 %335, label %336, label %443

; <label>:336:                                    ; preds = %329, %452
  %337 = phi i8* [ %454, %452 ], [ %331, %329 ]
  %338 = phi i8* [ %453, %452 ], [ %330, %329 ]
  br label %339

; <label>:339:                                    ; preds = %336, %324
  %340 = phi i8* [ %160, %324 ], [ %337, %336 ]
  %341 = phi i8* [ %160, %324 ], [ %338, %336 ]
  %342 = ptrtoint i8* %340 to i64
  %343 = icmp ult i8* %340, %161
  br i1 %343, label %344, label %468

; <label>:344:                                    ; preds = %339
  %345 = sub i64 %1, %342
  %346 = getelementptr i8, i8* %0, i64 %345
  %347 = ptrtoint i8* %346 to i64
  %348 = icmp ult i8* %346, inttoptr (i64 32 to i8*)
  br i1 %348, label %349, label %352

; <label>:349:                                    ; preds = %441, %355, %352, %344
  %350 = phi i8* [ %341, %355 ], [ %341, %352 ], [ %341, %344 ], [ %363, %441 ]
  %351 = phi i8* [ %340, %355 ], [ %340, %352 ], [ %340, %344 ], [ %364, %441 ]
  br label %456

; <label>:352:                                    ; preds = %344
  %353 = and i64 %347, -32
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %349, label %355

; <label>:355:                                    ; preds = %352
  %356 = sub i64 %1, %342
  %357 = getelementptr i8, i8* %0, i64 %356
  %358 = ptrtoint i8* %357 to i64
  %359 = getelementptr i8, i8* %341, i64 %358
  %360 = icmp ult i8* %341, %161
  %361 = icmp ult i8* %340, %359
  %362 = and i1 %360, %361
  %363 = getelementptr i8, i8* %341, i64 %353
  %364 = getelementptr i8, i8* %340, i64 %353
  br i1 %362, label %349, label %365

; <label>:365:                                    ; preds = %355
  %366 = add i64 %353, -32
  %367 = lshr exact i64 %366, 5
  %368 = add nuw nsw i64 %367, 1
  %369 = and i64 %368, 3
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %389, label %371

; <label>:371:                                    ; preds = %365
  br label %372

; <label>:372:                                    ; preds = %372, %371
  %373 = phi i64 [ %385, %372 ], [ 0, %371 ]
  %374 = phi i64 [ %386, %372 ], [ %369, %371 ]
  %375 = getelementptr i8, i8* %341, i64 %373
  %376 = getelementptr i8, i8* %340, i64 %373
  %377 = bitcast i8* %376 to <16 x i8>*
  %378 = load <16 x i8>, <16 x i8>* %377, align 1
  %379 = getelementptr i8, i8* %376, i64 16
  %380 = bitcast i8* %379 to <16 x i8>*
  %381 = load <16 x i8>, <16 x i8>* %380, align 1
  %382 = bitcast i8* %375 to <16 x i8>*
  store <16 x i8> %378, <16 x i8>* %382, align 1
  %383 = getelementptr i8, i8* %375, i64 16
  %384 = bitcast i8* %383 to <16 x i8>*
  store <16 x i8> %381, <16 x i8>* %384, align 1
  %385 = add i64 %373, 32
  %386 = add i64 %374, -1
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %372

; <label>:388:                                    ; preds = %372
  br label %389

; <label>:389:                                    ; preds = %365, %388
  %390 = phi i64 [ 0, %365 ], [ %385, %388 ]
  %391 = icmp ult i64 %366, 96
  br i1 %391, label %441, label %392

; <label>:392:                                    ; preds = %389
  br label %393

; <label>:393:                                    ; preds = %393, %392
  %394 = phi i64 [ %390, %392 ], [ %438, %393 ]
  %395 = getelementptr i8, i8* %341, i64 %394
  %396 = getelementptr i8, i8* %340, i64 %394
  %397 = bitcast i8* %396 to <16 x i8>*
  %398 = load <16 x i8>, <16 x i8>* %397, align 1
  %399 = getelementptr i8, i8* %396, i64 16
  %400 = bitcast i8* %399 to <16 x i8>*
  %401 = load <16 x i8>, <16 x i8>* %400, align 1
  %402 = bitcast i8* %395 to <16 x i8>*
  store <16 x i8> %398, <16 x i8>* %402, align 1
  %403 = getelementptr i8, i8* %395, i64 16
  %404 = bitcast i8* %403 to <16 x i8>*
  store <16 x i8> %401, <16 x i8>* %404, align 1
  %405 = add i64 %394, 32
  %406 = getelementptr i8, i8* %341, i64 %405
  %407 = getelementptr i8, i8* %340, i64 %405
  %408 = bitcast i8* %407 to <16 x i8>*
  %409 = load <16 x i8>, <16 x i8>* %408, align 1
  %410 = getelementptr i8, i8* %407, i64 16
  %411 = bitcast i8* %410 to <16 x i8>*
  %412 = load <16 x i8>, <16 x i8>* %411, align 1
  %413 = bitcast i8* %406 to <16 x i8>*
  store <16 x i8> %409, <16 x i8>* %413, align 1
  %414 = getelementptr i8, i8* %406, i64 16
  %415 = bitcast i8* %414 to <16 x i8>*
  store <16 x i8> %412, <16 x i8>* %415, align 1
  %416 = add i64 %394, 64
  %417 = getelementptr i8, i8* %341, i64 %416
  %418 = getelementptr i8, i8* %340, i64 %416
  %419 = bitcast i8* %418 to <16 x i8>*
  %420 = load <16 x i8>, <16 x i8>* %419, align 1
  %421 = getelementptr i8, i8* %418, i64 16
  %422 = bitcast i8* %421 to <16 x i8>*
  %423 = load <16 x i8>, <16 x i8>* %422, align 1
  %424 = bitcast i8* %417 to <16 x i8>*
  store <16 x i8> %420, <16 x i8>* %424, align 1
  %425 = getelementptr i8, i8* %417, i64 16
  %426 = bitcast i8* %425 to <16 x i8>*
  store <16 x i8> %423, <16 x i8>* %426, align 1
  %427 = add i64 %394, 96
  %428 = getelementptr i8, i8* %341, i64 %427
  %429 = getelementptr i8, i8* %340, i64 %427
  %430 = bitcast i8* %429 to <16 x i8>*
  %431 = load <16 x i8>, <16 x i8>* %430, align 1
  %432 = getelementptr i8, i8* %429, i64 16
  %433 = bitcast i8* %432 to <16 x i8>*
  %434 = load <16 x i8>, <16 x i8>* %433, align 1
  %435 = bitcast i8* %428 to <16 x i8>*
  store <16 x i8> %431, <16 x i8>* %435, align 1
  %436 = getelementptr i8, i8* %428, i64 16
  %437 = bitcast i8* %436 to <16 x i8>*
  store <16 x i8> %434, <16 x i8>* %437, align 1
  %438 = add i64 %394, 128
  %439 = icmp eq i64 %438, %353
  br i1 %439, label %440, label %393

; <label>:440:                                    ; preds = %393
  br label %441

; <label>:441:                                    ; preds = %389, %440
  %442 = icmp eq i64 %347, %353
  br i1 %442, label %464, label %349

; <label>:443:                                    ; preds = %329
  %444 = zext i32 %333 to i64
  %445 = icmp ult i8 %332, 64
  %446 = shl i64 1, %444
  %447 = and i64 %446, 35184372088833
  %448 = icmp ne i64 %447, 0
  %449 = and i1 %445, %448
  br i1 %449, label %450, label %452

; <label>:450:                                    ; preds = %443
  %451 = getelementptr inbounds i8, i8* %330, i64 1
  store i8 %332, i8* %330, align 1
  br label %452

; <label>:452:                                    ; preds = %450, %443
  %453 = phi i8* [ %451, %450 ], [ %330, %443 ]
  %454 = getelementptr inbounds i8, i8* %331, i64 1
  %455 = icmp ult i8* %454, %161
  br i1 %455, label %329, label %336

; <label>:456:                                    ; preds = %349, %456
  %457 = phi i8* [ %461, %456 ], [ %350, %349 ]
  %458 = phi i8* [ %459, %456 ], [ %351, %349 ]
  %459 = getelementptr inbounds i8, i8* %458, i64 1
  %460 = load i8, i8* %458, align 1
  %461 = getelementptr inbounds i8, i8* %457, i64 1
  store i8 %460, i8* %457, align 1
  %462 = icmp eq i8* %459, %161
  br i1 %462, label %463, label %456

; <label>:463:                                    ; preds = %456
  br label %464

; <label>:464:                                    ; preds = %463, %441
  %465 = getelementptr i8, i8* %0, i64 %345
  %466 = ptrtoint i8* %465 to i64
  %467 = getelementptr i8, i8* %341, i64 %466
  br label %468

; <label>:468:                                    ; preds = %339, %464
  %469 = phi i8* [ %341, %339 ], [ %467, %464 ]
  %470 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %469, i1 false) #9
  %471 = tail call i8* @__memcpy_chk(i8* %469, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %470) #9
  %472 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %327) #9
  tail call void @free(i8* %317) #9
  br label %4067

; <label>:473:                                    ; preds = %6
  %474 = bitcast i8* %5 to i64*
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds i8, i8* %0, i64 1
  %477 = getelementptr inbounds i8, i8* %0, i64 %1
  %478 = icmp sgt i64 %1, 1
  br i1 %478, label %479, label %490

; <label>:479:                                    ; preds = %473
  br label %480

; <label>:480:                                    ; preds = %479, %603
  %481 = phi i8* [ %604, %603 ], [ %476, %479 ]
  %482 = phi i8* [ %605, %603 ], [ %476, %479 ]
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %484, i64 8) #9
  %486 = icmp eq i8* %485, null
  br i1 %486, label %487, label %594

; <label>:487:                                    ; preds = %480, %603
  %488 = phi i8* [ %605, %603 ], [ %482, %480 ]
  %489 = phi i8* [ %604, %603 ], [ %481, %480 ]
  br label %490

; <label>:490:                                    ; preds = %487, %473
  %491 = phi i8* [ %476, %473 ], [ %488, %487 ]
  %492 = phi i8* [ %476, %473 ], [ %489, %487 ]
  %493 = ptrtoint i8* %491 to i64
  %494 = icmp ult i8* %491, %477
  br i1 %494, label %495, label %619

; <label>:495:                                    ; preds = %490
  %496 = sub i64 %1, %493
  %497 = getelementptr i8, i8* %0, i64 %496
  %498 = ptrtoint i8* %497 to i64
  %499 = icmp ult i8* %497, inttoptr (i64 32 to i8*)
  br i1 %499, label %500, label %503

; <label>:500:                                    ; preds = %592, %506, %503, %495
  %501 = phi i8* [ %492, %506 ], [ %492, %503 ], [ %492, %495 ], [ %514, %592 ]
  %502 = phi i8* [ %491, %506 ], [ %491, %503 ], [ %491, %495 ], [ %515, %592 ]
  br label %607

; <label>:503:                                    ; preds = %495
  %504 = and i64 %498, -32
  %505 = icmp eq i64 %504, 0
  br i1 %505, label %500, label %506

; <label>:506:                                    ; preds = %503
  %507 = sub i64 %1, %493
  %508 = getelementptr i8, i8* %0, i64 %507
  %509 = ptrtoint i8* %508 to i64
  %510 = getelementptr i8, i8* %492, i64 %509
  %511 = icmp ult i8* %492, %477
  %512 = icmp ult i8* %491, %510
  %513 = and i1 %511, %512
  %514 = getelementptr i8, i8* %492, i64 %504
  %515 = getelementptr i8, i8* %491, i64 %504
  br i1 %513, label %500, label %516

; <label>:516:                                    ; preds = %506
  %517 = add i64 %504, -32
  %518 = lshr exact i64 %517, 5
  %519 = add nuw nsw i64 %518, 1
  %520 = and i64 %519, 3
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %540, label %522

; <label>:522:                                    ; preds = %516
  br label %523

; <label>:523:                                    ; preds = %523, %522
  %524 = phi i64 [ %536, %523 ], [ 0, %522 ]
  %525 = phi i64 [ %537, %523 ], [ %520, %522 ]
  %526 = getelementptr i8, i8* %492, i64 %524
  %527 = getelementptr i8, i8* %491, i64 %524
  %528 = bitcast i8* %527 to <16 x i8>*
  %529 = load <16 x i8>, <16 x i8>* %528, align 1
  %530 = getelementptr i8, i8* %527, i64 16
  %531 = bitcast i8* %530 to <16 x i8>*
  %532 = load <16 x i8>, <16 x i8>* %531, align 1
  %533 = bitcast i8* %526 to <16 x i8>*
  store <16 x i8> %529, <16 x i8>* %533, align 1
  %534 = getelementptr i8, i8* %526, i64 16
  %535 = bitcast i8* %534 to <16 x i8>*
  store <16 x i8> %532, <16 x i8>* %535, align 1
  %536 = add i64 %524, 32
  %537 = add i64 %525, -1
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %539, label %523

; <label>:539:                                    ; preds = %523
  br label %540

; <label>:540:                                    ; preds = %516, %539
  %541 = phi i64 [ 0, %516 ], [ %536, %539 ]
  %542 = icmp ult i64 %517, 96
  br i1 %542, label %592, label %543

; <label>:543:                                    ; preds = %540
  br label %544

; <label>:544:                                    ; preds = %544, %543
  %545 = phi i64 [ %541, %543 ], [ %589, %544 ]
  %546 = getelementptr i8, i8* %492, i64 %545
  %547 = getelementptr i8, i8* %491, i64 %545
  %548 = bitcast i8* %547 to <16 x i8>*
  %549 = load <16 x i8>, <16 x i8>* %548, align 1
  %550 = getelementptr i8, i8* %547, i64 16
  %551 = bitcast i8* %550 to <16 x i8>*
  %552 = load <16 x i8>, <16 x i8>* %551, align 1
  %553 = bitcast i8* %546 to <16 x i8>*
  store <16 x i8> %549, <16 x i8>* %553, align 1
  %554 = getelementptr i8, i8* %546, i64 16
  %555 = bitcast i8* %554 to <16 x i8>*
  store <16 x i8> %552, <16 x i8>* %555, align 1
  %556 = add i64 %545, 32
  %557 = getelementptr i8, i8* %492, i64 %556
  %558 = getelementptr i8, i8* %491, i64 %556
  %559 = bitcast i8* %558 to <16 x i8>*
  %560 = load <16 x i8>, <16 x i8>* %559, align 1
  %561 = getelementptr i8, i8* %558, i64 16
  %562 = bitcast i8* %561 to <16 x i8>*
  %563 = load <16 x i8>, <16 x i8>* %562, align 1
  %564 = bitcast i8* %557 to <16 x i8>*
  store <16 x i8> %560, <16 x i8>* %564, align 1
  %565 = getelementptr i8, i8* %557, i64 16
  %566 = bitcast i8* %565 to <16 x i8>*
  store <16 x i8> %563, <16 x i8>* %566, align 1
  %567 = add i64 %545, 64
  %568 = getelementptr i8, i8* %492, i64 %567
  %569 = getelementptr i8, i8* %491, i64 %567
  %570 = bitcast i8* %569 to <16 x i8>*
  %571 = load <16 x i8>, <16 x i8>* %570, align 1
  %572 = getelementptr i8, i8* %569, i64 16
  %573 = bitcast i8* %572 to <16 x i8>*
  %574 = load <16 x i8>, <16 x i8>* %573, align 1
  %575 = bitcast i8* %568 to <16 x i8>*
  store <16 x i8> %571, <16 x i8>* %575, align 1
  %576 = getelementptr i8, i8* %568, i64 16
  %577 = bitcast i8* %576 to <16 x i8>*
  store <16 x i8> %574, <16 x i8>* %577, align 1
  %578 = add i64 %545, 96
  %579 = getelementptr i8, i8* %492, i64 %578
  %580 = getelementptr i8, i8* %491, i64 %578
  %581 = bitcast i8* %580 to <16 x i8>*
  %582 = load <16 x i8>, <16 x i8>* %581, align 1
  %583 = getelementptr i8, i8* %580, i64 16
  %584 = bitcast i8* %583 to <16 x i8>*
  %585 = load <16 x i8>, <16 x i8>* %584, align 1
  %586 = bitcast i8* %579 to <16 x i8>*
  store <16 x i8> %582, <16 x i8>* %586, align 1
  %587 = getelementptr i8, i8* %579, i64 16
  %588 = bitcast i8* %587 to <16 x i8>*
  store <16 x i8> %585, <16 x i8>* %588, align 1
  %589 = add i64 %545, 128
  %590 = icmp eq i64 %589, %504
  br i1 %590, label %591, label %544

; <label>:591:                                    ; preds = %544
  br label %592

; <label>:592:                                    ; preds = %540, %591
  %593 = icmp eq i64 %498, %504
  br i1 %593, label %615, label %500

; <label>:594:                                    ; preds = %480
  %595 = zext i32 %484 to i64
  %596 = icmp ult i8 %483, 64
  %597 = shl i64 1, %595
  %598 = and i64 %597, 317209104613377
  %599 = icmp ne i64 %598, 0
  %600 = and i1 %596, %599
  br i1 %600, label %601, label %603

; <label>:601:                                    ; preds = %594
  %602 = getelementptr inbounds i8, i8* %481, i64 1
  store i8 %483, i8* %481, align 1
  br label %603

; <label>:603:                                    ; preds = %601, %594
  %604 = phi i8* [ %602, %601 ], [ %481, %594 ]
  %605 = getelementptr inbounds i8, i8* %482, i64 1
  %606 = icmp ult i8* %605, %477
  br i1 %606, label %480, label %487

; <label>:607:                                    ; preds = %500, %607
  %608 = phi i8* [ %612, %607 ], [ %501, %500 ]
  %609 = phi i8* [ %610, %607 ], [ %502, %500 ]
  %610 = getelementptr inbounds i8, i8* %609, i64 1
  %611 = load i8, i8* %609, align 1
  %612 = getelementptr inbounds i8, i8* %608, i64 1
  store i8 %611, i8* %608, align 1
  %613 = icmp eq i8* %610, %477
  br i1 %613, label %614, label %607

; <label>:614:                                    ; preds = %607
  br label %615

; <label>:615:                                    ; preds = %614, %592
  %616 = getelementptr i8, i8* %0, i64 %496
  %617 = ptrtoint i8* %616 to i64
  %618 = getelementptr i8, i8* %492, i64 %617
  br label %619

; <label>:619:                                    ; preds = %490, %615
  %620 = phi i8* [ %492, %490 ], [ %618, %615 ]
  %621 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %620, i1 false) #9
  %622 = tail call i8* @__memcpy_chk(i8* %620, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %621) #9
  %623 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %475) #9
  br label %4067

; <label>:624:                                    ; preds = %6
  %625 = bitcast i8* %5 to i64*
  %626 = load i64, i64* %625, align 8
  %627 = getelementptr inbounds i8, i8* %0, i64 1
  %628 = getelementptr inbounds i8, i8* %0, i64 %1
  %629 = icmp sgt i64 %1, 1
  br i1 %629, label %630, label %641

; <label>:630:                                    ; preds = %624
  br label %631

; <label>:631:                                    ; preds = %630, %754
  %632 = phi i8* [ %755, %754 ], [ %627, %630 ]
  %633 = phi i8* [ %756, %754 ], [ %627, %630 ]
  %634 = load i8, i8* %633, align 1
  %635 = sext i8 %634 to i32
  %636 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %635, i64 8) #9
  %637 = icmp eq i8* %636, null
  br i1 %637, label %638, label %745

; <label>:638:                                    ; preds = %631, %754
  %639 = phi i8* [ %756, %754 ], [ %633, %631 ]
  %640 = phi i8* [ %755, %754 ], [ %632, %631 ]
  br label %641

; <label>:641:                                    ; preds = %638, %624
  %642 = phi i8* [ %627, %624 ], [ %639, %638 ]
  %643 = phi i8* [ %627, %624 ], [ %640, %638 ]
  %644 = ptrtoint i8* %642 to i64
  %645 = icmp ult i8* %642, %628
  br i1 %645, label %646, label %770

; <label>:646:                                    ; preds = %641
  %647 = sub i64 %1, %644
  %648 = getelementptr i8, i8* %0, i64 %647
  %649 = ptrtoint i8* %648 to i64
  %650 = icmp ult i8* %648, inttoptr (i64 32 to i8*)
  br i1 %650, label %651, label %654

; <label>:651:                                    ; preds = %743, %657, %654, %646
  %652 = phi i8* [ %643, %657 ], [ %643, %654 ], [ %643, %646 ], [ %665, %743 ]
  %653 = phi i8* [ %642, %657 ], [ %642, %654 ], [ %642, %646 ], [ %666, %743 ]
  br label %758

; <label>:654:                                    ; preds = %646
  %655 = and i64 %649, -32
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %651, label %657

; <label>:657:                                    ; preds = %654
  %658 = sub i64 %1, %644
  %659 = getelementptr i8, i8* %0, i64 %658
  %660 = ptrtoint i8* %659 to i64
  %661 = getelementptr i8, i8* %643, i64 %660
  %662 = icmp ult i8* %643, %628
  %663 = icmp ult i8* %642, %661
  %664 = and i1 %662, %663
  %665 = getelementptr i8, i8* %643, i64 %655
  %666 = getelementptr i8, i8* %642, i64 %655
  br i1 %664, label %651, label %667

; <label>:667:                                    ; preds = %657
  %668 = add i64 %655, -32
  %669 = lshr exact i64 %668, 5
  %670 = add nuw nsw i64 %669, 1
  %671 = and i64 %670, 3
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %691, label %673

; <label>:673:                                    ; preds = %667
  br label %674

; <label>:674:                                    ; preds = %674, %673
  %675 = phi i64 [ %687, %674 ], [ 0, %673 ]
  %676 = phi i64 [ %688, %674 ], [ %671, %673 ]
  %677 = getelementptr i8, i8* %643, i64 %675
  %678 = getelementptr i8, i8* %642, i64 %675
  %679 = bitcast i8* %678 to <16 x i8>*
  %680 = load <16 x i8>, <16 x i8>* %679, align 1
  %681 = getelementptr i8, i8* %678, i64 16
  %682 = bitcast i8* %681 to <16 x i8>*
  %683 = load <16 x i8>, <16 x i8>* %682, align 1
  %684 = bitcast i8* %677 to <16 x i8>*
  store <16 x i8> %680, <16 x i8>* %684, align 1
  %685 = getelementptr i8, i8* %677, i64 16
  %686 = bitcast i8* %685 to <16 x i8>*
  store <16 x i8> %683, <16 x i8>* %686, align 1
  %687 = add i64 %675, 32
  %688 = add i64 %676, -1
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %690, label %674

; <label>:690:                                    ; preds = %674
  br label %691

; <label>:691:                                    ; preds = %667, %690
  %692 = phi i64 [ 0, %667 ], [ %687, %690 ]
  %693 = icmp ult i64 %668, 96
  br i1 %693, label %743, label %694

; <label>:694:                                    ; preds = %691
  br label %695

; <label>:695:                                    ; preds = %695, %694
  %696 = phi i64 [ %692, %694 ], [ %740, %695 ]
  %697 = getelementptr i8, i8* %643, i64 %696
  %698 = getelementptr i8, i8* %642, i64 %696
  %699 = bitcast i8* %698 to <16 x i8>*
  %700 = load <16 x i8>, <16 x i8>* %699, align 1
  %701 = getelementptr i8, i8* %698, i64 16
  %702 = bitcast i8* %701 to <16 x i8>*
  %703 = load <16 x i8>, <16 x i8>* %702, align 1
  %704 = bitcast i8* %697 to <16 x i8>*
  store <16 x i8> %700, <16 x i8>* %704, align 1
  %705 = getelementptr i8, i8* %697, i64 16
  %706 = bitcast i8* %705 to <16 x i8>*
  store <16 x i8> %703, <16 x i8>* %706, align 1
  %707 = add i64 %696, 32
  %708 = getelementptr i8, i8* %643, i64 %707
  %709 = getelementptr i8, i8* %642, i64 %707
  %710 = bitcast i8* %709 to <16 x i8>*
  %711 = load <16 x i8>, <16 x i8>* %710, align 1
  %712 = getelementptr i8, i8* %709, i64 16
  %713 = bitcast i8* %712 to <16 x i8>*
  %714 = load <16 x i8>, <16 x i8>* %713, align 1
  %715 = bitcast i8* %708 to <16 x i8>*
  store <16 x i8> %711, <16 x i8>* %715, align 1
  %716 = getelementptr i8, i8* %708, i64 16
  %717 = bitcast i8* %716 to <16 x i8>*
  store <16 x i8> %714, <16 x i8>* %717, align 1
  %718 = add i64 %696, 64
  %719 = getelementptr i8, i8* %643, i64 %718
  %720 = getelementptr i8, i8* %642, i64 %718
  %721 = bitcast i8* %720 to <16 x i8>*
  %722 = load <16 x i8>, <16 x i8>* %721, align 1
  %723 = getelementptr i8, i8* %720, i64 16
  %724 = bitcast i8* %723 to <16 x i8>*
  %725 = load <16 x i8>, <16 x i8>* %724, align 1
  %726 = bitcast i8* %719 to <16 x i8>*
  store <16 x i8> %722, <16 x i8>* %726, align 1
  %727 = getelementptr i8, i8* %719, i64 16
  %728 = bitcast i8* %727 to <16 x i8>*
  store <16 x i8> %725, <16 x i8>* %728, align 1
  %729 = add i64 %696, 96
  %730 = getelementptr i8, i8* %643, i64 %729
  %731 = getelementptr i8, i8* %642, i64 %729
  %732 = bitcast i8* %731 to <16 x i8>*
  %733 = load <16 x i8>, <16 x i8>* %732, align 1
  %734 = getelementptr i8, i8* %731, i64 16
  %735 = bitcast i8* %734 to <16 x i8>*
  %736 = load <16 x i8>, <16 x i8>* %735, align 1
  %737 = bitcast i8* %730 to <16 x i8>*
  store <16 x i8> %733, <16 x i8>* %737, align 1
  %738 = getelementptr i8, i8* %730, i64 16
  %739 = bitcast i8* %738 to <16 x i8>*
  store <16 x i8> %736, <16 x i8>* %739, align 1
  %740 = add i64 %696, 128
  %741 = icmp eq i64 %740, %655
  br i1 %741, label %742, label %695

; <label>:742:                                    ; preds = %695
  br label %743

; <label>:743:                                    ; preds = %691, %742
  %744 = icmp eq i64 %649, %655
  br i1 %744, label %766, label %651

; <label>:745:                                    ; preds = %631
  %746 = zext i32 %635 to i64
  %747 = icmp ult i8 %634, 64
  %748 = shl i64 1, %746
  %749 = and i64 %748, 316693708537857
  %750 = icmp ne i64 %749, 0
  %751 = and i1 %747, %750
  br i1 %751, label %752, label %754

; <label>:752:                                    ; preds = %745
  %753 = getelementptr inbounds i8, i8* %632, i64 1
  store i8 %634, i8* %632, align 1
  br label %754

; <label>:754:                                    ; preds = %752, %745
  %755 = phi i8* [ %753, %752 ], [ %632, %745 ]
  %756 = getelementptr inbounds i8, i8* %633, i64 1
  %757 = icmp ult i8* %756, %628
  br i1 %757, label %631, label %638

; <label>:758:                                    ; preds = %651, %758
  %759 = phi i8* [ %763, %758 ], [ %652, %651 ]
  %760 = phi i8* [ %761, %758 ], [ %653, %651 ]
  %761 = getelementptr inbounds i8, i8* %760, i64 1
  %762 = load i8, i8* %760, align 1
  %763 = getelementptr inbounds i8, i8* %759, i64 1
  store i8 %762, i8* %759, align 1
  %764 = icmp eq i8* %761, %628
  br i1 %764, label %765, label %758

; <label>:765:                                    ; preds = %758
  br label %766

; <label>:766:                                    ; preds = %765, %743
  %767 = getelementptr i8, i8* %0, i64 %647
  %768 = ptrtoint i8* %767 to i64
  %769 = getelementptr i8, i8* %643, i64 %768
  br label %770

; <label>:770:                                    ; preds = %641, %766
  %771 = phi i8* [ %643, %641 ], [ %769, %766 ]
  %772 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %771, i1 false) #9
  %773 = tail call i8* @__memcpy_chk(i8* %771, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %772) #9
  %774 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %626) #9
  br label %4067

; <label>:775:                                    ; preds = %6
  %776 = getelementptr inbounds i8, i8* %5, i64 8
  %777 = bitcast i8* %776 to i64*
  %778 = load i64, i64* %777, align 8
  %779 = getelementptr inbounds i8, i8* %0, i64 1
  %780 = getelementptr inbounds i8, i8* %0, i64 %1
  %781 = icmp sgt i64 %1, 1
  br i1 %781, label %782, label %793

; <label>:782:                                    ; preds = %775
  br label %783

; <label>:783:                                    ; preds = %782, %906
  %784 = phi i8* [ %907, %906 ], [ %779, %782 ]
  %785 = phi i8* [ %908, %906 ], [ %779, %782 ]
  %786 = load i8, i8* %785, align 1
  %787 = sext i8 %786 to i32
  %788 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %787, i64 8) #9
  %789 = icmp eq i8* %788, null
  br i1 %789, label %790, label %897

; <label>:790:                                    ; preds = %783, %906
  %791 = phi i8* [ %908, %906 ], [ %785, %783 ]
  %792 = phi i8* [ %907, %906 ], [ %784, %783 ]
  br label %793

; <label>:793:                                    ; preds = %790, %775
  %794 = phi i8* [ %779, %775 ], [ %791, %790 ]
  %795 = phi i8* [ %779, %775 ], [ %792, %790 ]
  %796 = ptrtoint i8* %794 to i64
  %797 = icmp ult i8* %794, %780
  br i1 %797, label %798, label %922

; <label>:798:                                    ; preds = %793
  %799 = sub i64 %1, %796
  %800 = getelementptr i8, i8* %0, i64 %799
  %801 = ptrtoint i8* %800 to i64
  %802 = icmp ult i8* %800, inttoptr (i64 32 to i8*)
  br i1 %802, label %803, label %806

; <label>:803:                                    ; preds = %895, %809, %806, %798
  %804 = phi i8* [ %795, %809 ], [ %795, %806 ], [ %795, %798 ], [ %817, %895 ]
  %805 = phi i8* [ %794, %809 ], [ %794, %806 ], [ %794, %798 ], [ %818, %895 ]
  br label %910

; <label>:806:                                    ; preds = %798
  %807 = and i64 %801, -32
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %803, label %809

; <label>:809:                                    ; preds = %806
  %810 = sub i64 %1, %796
  %811 = getelementptr i8, i8* %0, i64 %810
  %812 = ptrtoint i8* %811 to i64
  %813 = getelementptr i8, i8* %795, i64 %812
  %814 = icmp ult i8* %795, %780
  %815 = icmp ult i8* %794, %813
  %816 = and i1 %814, %815
  %817 = getelementptr i8, i8* %795, i64 %807
  %818 = getelementptr i8, i8* %794, i64 %807
  br i1 %816, label %803, label %819

; <label>:819:                                    ; preds = %809
  %820 = add i64 %807, -32
  %821 = lshr exact i64 %820, 5
  %822 = add nuw nsw i64 %821, 1
  %823 = and i64 %822, 3
  %824 = icmp eq i64 %823, 0
  br i1 %824, label %843, label %825

; <label>:825:                                    ; preds = %819
  br label %826

; <label>:826:                                    ; preds = %826, %825
  %827 = phi i64 [ %839, %826 ], [ 0, %825 ]
  %828 = phi i64 [ %840, %826 ], [ %823, %825 ]
  %829 = getelementptr i8, i8* %795, i64 %827
  %830 = getelementptr i8, i8* %794, i64 %827
  %831 = bitcast i8* %830 to <16 x i8>*
  %832 = load <16 x i8>, <16 x i8>* %831, align 1
  %833 = getelementptr i8, i8* %830, i64 16
  %834 = bitcast i8* %833 to <16 x i8>*
  %835 = load <16 x i8>, <16 x i8>* %834, align 1
  %836 = bitcast i8* %829 to <16 x i8>*
  store <16 x i8> %832, <16 x i8>* %836, align 1
  %837 = getelementptr i8, i8* %829, i64 16
  %838 = bitcast i8* %837 to <16 x i8>*
  store <16 x i8> %835, <16 x i8>* %838, align 1
  %839 = add i64 %827, 32
  %840 = add i64 %828, -1
  %841 = icmp eq i64 %840, 0
  br i1 %841, label %842, label %826

; <label>:842:                                    ; preds = %826
  br label %843

; <label>:843:                                    ; preds = %819, %842
  %844 = phi i64 [ 0, %819 ], [ %839, %842 ]
  %845 = icmp ult i64 %820, 96
  br i1 %845, label %895, label %846

; <label>:846:                                    ; preds = %843
  br label %847

; <label>:847:                                    ; preds = %847, %846
  %848 = phi i64 [ %844, %846 ], [ %892, %847 ]
  %849 = getelementptr i8, i8* %795, i64 %848
  %850 = getelementptr i8, i8* %794, i64 %848
  %851 = bitcast i8* %850 to <16 x i8>*
  %852 = load <16 x i8>, <16 x i8>* %851, align 1
  %853 = getelementptr i8, i8* %850, i64 16
  %854 = bitcast i8* %853 to <16 x i8>*
  %855 = load <16 x i8>, <16 x i8>* %854, align 1
  %856 = bitcast i8* %849 to <16 x i8>*
  store <16 x i8> %852, <16 x i8>* %856, align 1
  %857 = getelementptr i8, i8* %849, i64 16
  %858 = bitcast i8* %857 to <16 x i8>*
  store <16 x i8> %855, <16 x i8>* %858, align 1
  %859 = add i64 %848, 32
  %860 = getelementptr i8, i8* %795, i64 %859
  %861 = getelementptr i8, i8* %794, i64 %859
  %862 = bitcast i8* %861 to <16 x i8>*
  %863 = load <16 x i8>, <16 x i8>* %862, align 1
  %864 = getelementptr i8, i8* %861, i64 16
  %865 = bitcast i8* %864 to <16 x i8>*
  %866 = load <16 x i8>, <16 x i8>* %865, align 1
  %867 = bitcast i8* %860 to <16 x i8>*
  store <16 x i8> %863, <16 x i8>* %867, align 1
  %868 = getelementptr i8, i8* %860, i64 16
  %869 = bitcast i8* %868 to <16 x i8>*
  store <16 x i8> %866, <16 x i8>* %869, align 1
  %870 = add i64 %848, 64
  %871 = getelementptr i8, i8* %795, i64 %870
  %872 = getelementptr i8, i8* %794, i64 %870
  %873 = bitcast i8* %872 to <16 x i8>*
  %874 = load <16 x i8>, <16 x i8>* %873, align 1
  %875 = getelementptr i8, i8* %872, i64 16
  %876 = bitcast i8* %875 to <16 x i8>*
  %877 = load <16 x i8>, <16 x i8>* %876, align 1
  %878 = bitcast i8* %871 to <16 x i8>*
  store <16 x i8> %874, <16 x i8>* %878, align 1
  %879 = getelementptr i8, i8* %871, i64 16
  %880 = bitcast i8* %879 to <16 x i8>*
  store <16 x i8> %877, <16 x i8>* %880, align 1
  %881 = add i64 %848, 96
  %882 = getelementptr i8, i8* %795, i64 %881
  %883 = getelementptr i8, i8* %794, i64 %881
  %884 = bitcast i8* %883 to <16 x i8>*
  %885 = load <16 x i8>, <16 x i8>* %884, align 1
  %886 = getelementptr i8, i8* %883, i64 16
  %887 = bitcast i8* %886 to <16 x i8>*
  %888 = load <16 x i8>, <16 x i8>* %887, align 1
  %889 = bitcast i8* %882 to <16 x i8>*
  store <16 x i8> %885, <16 x i8>* %889, align 1
  %890 = getelementptr i8, i8* %882, i64 16
  %891 = bitcast i8* %890 to <16 x i8>*
  store <16 x i8> %888, <16 x i8>* %891, align 1
  %892 = add i64 %848, 128
  %893 = icmp eq i64 %892, %807
  br i1 %893, label %894, label %847

; <label>:894:                                    ; preds = %847
  br label %895

; <label>:895:                                    ; preds = %843, %894
  %896 = icmp eq i64 %801, %807
  br i1 %896, label %918, label %803

; <label>:897:                                    ; preds = %783
  %898 = zext i32 %787 to i64
  %899 = icmp ult i8 %786, 64
  %900 = shl i64 1, %898
  %901 = and i64 %900, 317209104613377
  %902 = icmp ne i64 %901, 0
  %903 = and i1 %899, %902
  br i1 %903, label %904, label %906

; <label>:904:                                    ; preds = %897
  %905 = getelementptr inbounds i8, i8* %784, i64 1
  store i8 %786, i8* %784, align 1
  br label %906

; <label>:906:                                    ; preds = %904, %897
  %907 = phi i8* [ %905, %904 ], [ %784, %897 ]
  %908 = getelementptr inbounds i8, i8* %785, i64 1
  %909 = icmp ult i8* %908, %780
  br i1 %909, label %783, label %790

; <label>:910:                                    ; preds = %803, %910
  %911 = phi i8* [ %915, %910 ], [ %804, %803 ]
  %912 = phi i8* [ %913, %910 ], [ %805, %803 ]
  %913 = getelementptr inbounds i8, i8* %912, i64 1
  %914 = load i8, i8* %912, align 1
  %915 = getelementptr inbounds i8, i8* %911, i64 1
  store i8 %914, i8* %911, align 1
  %916 = icmp eq i8* %913, %780
  br i1 %916, label %917, label %910

; <label>:917:                                    ; preds = %910
  br label %918

; <label>:918:                                    ; preds = %917, %895
  %919 = getelementptr i8, i8* %0, i64 %799
  %920 = ptrtoint i8* %919 to i64
  %921 = getelementptr i8, i8* %795, i64 %920
  br label %922

; <label>:922:                                    ; preds = %793, %918
  %923 = phi i8* [ %795, %793 ], [ %921, %918 ]
  %924 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %923, i1 false) #9
  %925 = tail call i8* @__memcpy_chk(i8* %923, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %924) #9
  %926 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %778) #9
  br label %4067

; <label>:927:                                    ; preds = %6
  %928 = getelementptr inbounds i8, i8* %5, i64 24
  %929 = bitcast i8* %928 to i32*
  %930 = load i32, i32* %929, align 8
  %931 = and i32 %930, 4095
  %932 = zext i32 %931 to i64
  %933 = getelementptr inbounds i8, i8* %0, i64 1
  %934 = getelementptr inbounds i8, i8* %0, i64 %1
  %935 = icmp sgt i64 %1, 1
  br i1 %935, label %936, label %947

; <label>:936:                                    ; preds = %927
  br label %937

; <label>:937:                                    ; preds = %936, %1060
  %938 = phi i8* [ %1061, %1060 ], [ %933, %936 ]
  %939 = phi i8* [ %1062, %1060 ], [ %933, %936 ]
  %940 = load i8, i8* %939, align 1
  %941 = sext i8 %940 to i32
  %942 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %941, i64 8) #9
  %943 = icmp eq i8* %942, null
  br i1 %943, label %944, label %1051

; <label>:944:                                    ; preds = %937, %1060
  %945 = phi i8* [ %1062, %1060 ], [ %939, %937 ]
  %946 = phi i8* [ %1061, %1060 ], [ %938, %937 ]
  br label %947

; <label>:947:                                    ; preds = %944, %927
  %948 = phi i8* [ %933, %927 ], [ %945, %944 ]
  %949 = phi i8* [ %933, %927 ], [ %946, %944 ]
  %950 = ptrtoint i8* %948 to i64
  %951 = icmp ult i8* %948, %934
  br i1 %951, label %952, label %1076

; <label>:952:                                    ; preds = %947
  %953 = sub i64 %1, %950
  %954 = getelementptr i8, i8* %0, i64 %953
  %955 = ptrtoint i8* %954 to i64
  %956 = icmp ult i8* %954, inttoptr (i64 32 to i8*)
  br i1 %956, label %957, label %960

; <label>:957:                                    ; preds = %1049, %963, %960, %952
  %958 = phi i8* [ %949, %963 ], [ %949, %960 ], [ %949, %952 ], [ %971, %1049 ]
  %959 = phi i8* [ %948, %963 ], [ %948, %960 ], [ %948, %952 ], [ %972, %1049 ]
  br label %1064

; <label>:960:                                    ; preds = %952
  %961 = and i64 %955, -32
  %962 = icmp eq i64 %961, 0
  br i1 %962, label %957, label %963

; <label>:963:                                    ; preds = %960
  %964 = sub i64 %1, %950
  %965 = getelementptr i8, i8* %0, i64 %964
  %966 = ptrtoint i8* %965 to i64
  %967 = getelementptr i8, i8* %949, i64 %966
  %968 = icmp ult i8* %949, %934
  %969 = icmp ult i8* %948, %967
  %970 = and i1 %968, %969
  %971 = getelementptr i8, i8* %949, i64 %961
  %972 = getelementptr i8, i8* %948, i64 %961
  br i1 %970, label %957, label %973

; <label>:973:                                    ; preds = %963
  %974 = add i64 %961, -32
  %975 = lshr exact i64 %974, 5
  %976 = add nuw nsw i64 %975, 1
  %977 = and i64 %976, 3
  %978 = icmp eq i64 %977, 0
  br i1 %978, label %997, label %979

; <label>:979:                                    ; preds = %973
  br label %980

; <label>:980:                                    ; preds = %980, %979
  %981 = phi i64 [ %993, %980 ], [ 0, %979 ]
  %982 = phi i64 [ %994, %980 ], [ %977, %979 ]
  %983 = getelementptr i8, i8* %949, i64 %981
  %984 = getelementptr i8, i8* %948, i64 %981
  %985 = bitcast i8* %984 to <16 x i8>*
  %986 = load <16 x i8>, <16 x i8>* %985, align 1
  %987 = getelementptr i8, i8* %984, i64 16
  %988 = bitcast i8* %987 to <16 x i8>*
  %989 = load <16 x i8>, <16 x i8>* %988, align 1
  %990 = bitcast i8* %983 to <16 x i8>*
  store <16 x i8> %986, <16 x i8>* %990, align 1
  %991 = getelementptr i8, i8* %983, i64 16
  %992 = bitcast i8* %991 to <16 x i8>*
  store <16 x i8> %989, <16 x i8>* %992, align 1
  %993 = add i64 %981, 32
  %994 = add i64 %982, -1
  %995 = icmp eq i64 %994, 0
  br i1 %995, label %996, label %980

; <label>:996:                                    ; preds = %980
  br label %997

; <label>:997:                                    ; preds = %973, %996
  %998 = phi i64 [ 0, %973 ], [ %993, %996 ]
  %999 = icmp ult i64 %974, 96
  br i1 %999, label %1049, label %1000

; <label>:1000:                                   ; preds = %997
  br label %1001

; <label>:1001:                                   ; preds = %1001, %1000
  %1002 = phi i64 [ %998, %1000 ], [ %1046, %1001 ]
  %1003 = getelementptr i8, i8* %949, i64 %1002
  %1004 = getelementptr i8, i8* %948, i64 %1002
  %1005 = bitcast i8* %1004 to <16 x i8>*
  %1006 = load <16 x i8>, <16 x i8>* %1005, align 1
  %1007 = getelementptr i8, i8* %1004, i64 16
  %1008 = bitcast i8* %1007 to <16 x i8>*
  %1009 = load <16 x i8>, <16 x i8>* %1008, align 1
  %1010 = bitcast i8* %1003 to <16 x i8>*
  store <16 x i8> %1006, <16 x i8>* %1010, align 1
  %1011 = getelementptr i8, i8* %1003, i64 16
  %1012 = bitcast i8* %1011 to <16 x i8>*
  store <16 x i8> %1009, <16 x i8>* %1012, align 1
  %1013 = add i64 %1002, 32
  %1014 = getelementptr i8, i8* %949, i64 %1013
  %1015 = getelementptr i8, i8* %948, i64 %1013
  %1016 = bitcast i8* %1015 to <16 x i8>*
  %1017 = load <16 x i8>, <16 x i8>* %1016, align 1
  %1018 = getelementptr i8, i8* %1015, i64 16
  %1019 = bitcast i8* %1018 to <16 x i8>*
  %1020 = load <16 x i8>, <16 x i8>* %1019, align 1
  %1021 = bitcast i8* %1014 to <16 x i8>*
  store <16 x i8> %1017, <16 x i8>* %1021, align 1
  %1022 = getelementptr i8, i8* %1014, i64 16
  %1023 = bitcast i8* %1022 to <16 x i8>*
  store <16 x i8> %1020, <16 x i8>* %1023, align 1
  %1024 = add i64 %1002, 64
  %1025 = getelementptr i8, i8* %949, i64 %1024
  %1026 = getelementptr i8, i8* %948, i64 %1024
  %1027 = bitcast i8* %1026 to <16 x i8>*
  %1028 = load <16 x i8>, <16 x i8>* %1027, align 1
  %1029 = getelementptr i8, i8* %1026, i64 16
  %1030 = bitcast i8* %1029 to <16 x i8>*
  %1031 = load <16 x i8>, <16 x i8>* %1030, align 1
  %1032 = bitcast i8* %1025 to <16 x i8>*
  store <16 x i8> %1028, <16 x i8>* %1032, align 1
  %1033 = getelementptr i8, i8* %1025, i64 16
  %1034 = bitcast i8* %1033 to <16 x i8>*
  store <16 x i8> %1031, <16 x i8>* %1034, align 1
  %1035 = add i64 %1002, 96
  %1036 = getelementptr i8, i8* %949, i64 %1035
  %1037 = getelementptr i8, i8* %948, i64 %1035
  %1038 = bitcast i8* %1037 to <16 x i8>*
  %1039 = load <16 x i8>, <16 x i8>* %1038, align 1
  %1040 = getelementptr i8, i8* %1037, i64 16
  %1041 = bitcast i8* %1040 to <16 x i8>*
  %1042 = load <16 x i8>, <16 x i8>* %1041, align 1
  %1043 = bitcast i8* %1036 to <16 x i8>*
  store <16 x i8> %1039, <16 x i8>* %1043, align 1
  %1044 = getelementptr i8, i8* %1036, i64 16
  %1045 = bitcast i8* %1044 to <16 x i8>*
  store <16 x i8> %1042, <16 x i8>* %1045, align 1
  %1046 = add i64 %1002, 128
  %1047 = icmp eq i64 %1046, %961
  br i1 %1047, label %1048, label %1001

; <label>:1048:                                   ; preds = %1001
  br label %1049

; <label>:1049:                                   ; preds = %997, %1048
  %1050 = icmp eq i64 %955, %961
  br i1 %1050, label %1072, label %957

; <label>:1051:                                   ; preds = %937
  %1052 = zext i32 %941 to i64
  %1053 = icmp ult i8 %940, 64
  %1054 = shl i64 1, %1052
  %1055 = and i64 %1054, 316693708537857
  %1056 = icmp ne i64 %1055, 0
  %1057 = and i1 %1053, %1056
  br i1 %1057, label %1058, label %1060

; <label>:1058:                                   ; preds = %1051
  %1059 = getelementptr inbounds i8, i8* %938, i64 1
  store i8 %940, i8* %938, align 1
  br label %1060

; <label>:1060:                                   ; preds = %1058, %1051
  %1061 = phi i8* [ %1059, %1058 ], [ %938, %1051 ]
  %1062 = getelementptr inbounds i8, i8* %939, i64 1
  %1063 = icmp ult i8* %1062, %934
  br i1 %1063, label %937, label %944

; <label>:1064:                                   ; preds = %957, %1064
  %1065 = phi i8* [ %1069, %1064 ], [ %958, %957 ]
  %1066 = phi i8* [ %1067, %1064 ], [ %959, %957 ]
  %1067 = getelementptr inbounds i8, i8* %1066, i64 1
  %1068 = load i8, i8* %1066, align 1
  %1069 = getelementptr inbounds i8, i8* %1065, i64 1
  store i8 %1068, i8* %1065, align 1
  %1070 = icmp eq i8* %1067, %934
  br i1 %1070, label %1071, label %1064

; <label>:1071:                                   ; preds = %1064
  br label %1072

; <label>:1072:                                   ; preds = %1071, %1049
  %1073 = getelementptr i8, i8* %0, i64 %953
  %1074 = ptrtoint i8* %1073 to i64
  %1075 = getelementptr i8, i8* %949, i64 %1074
  br label %1076

; <label>:1076:                                   ; preds = %947, %1072
  %1077 = phi i8* [ %949, %947 ], [ %1075, %1072 ]
  %1078 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1077, i1 false) #9
  %1079 = tail call i8* @__memcpy_chk(i8* %1077, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.194, i64 0, i64 0), i64 3, i64 %1078) #9
  %1080 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %932) #9
  br label %4067

; <label>:1081:                                   ; preds = %6
  tail call void @filemodestring(%struct.stat* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @human_access.modebuf, i64 0, i64 0)) #9
  store i8 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @human_access.modebuf, i64 0, i64 10), align 1
  %1082 = getelementptr inbounds i8, i8* %0, i64 1
  %1083 = getelementptr inbounds i8, i8* %0, i64 %1
  %1084 = icmp sgt i64 %1, 1
  br i1 %1084, label %1085, label %1096

; <label>:1085:                                   ; preds = %1081
  br label %1086

; <label>:1086:                                   ; preds = %1085, %1209
  %1087 = phi i8* [ %1210, %1209 ], [ %1082, %1085 ]
  %1088 = phi i8* [ %1211, %1209 ], [ %1082, %1085 ]
  %1089 = load i8, i8* %1088, align 1
  %1090 = sext i8 %1089 to i32
  %1091 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1090, i64 8) #9
  %1092 = icmp eq i8* %1091, null
  br i1 %1092, label %1093, label %1200

; <label>:1093:                                   ; preds = %1086, %1209
  %1094 = phi i8* [ %1211, %1209 ], [ %1088, %1086 ]
  %1095 = phi i8* [ %1210, %1209 ], [ %1087, %1086 ]
  br label %1096

; <label>:1096:                                   ; preds = %1093, %1081
  %1097 = phi i8* [ %1082, %1081 ], [ %1094, %1093 ]
  %1098 = phi i8* [ %1082, %1081 ], [ %1095, %1093 ]
  %1099 = ptrtoint i8* %1097 to i64
  %1100 = icmp ult i8* %1097, %1083
  br i1 %1100, label %1101, label %1225

; <label>:1101:                                   ; preds = %1096
  %1102 = sub i64 %1, %1099
  %1103 = getelementptr i8, i8* %0, i64 %1102
  %1104 = ptrtoint i8* %1103 to i64
  %1105 = icmp ult i8* %1103, inttoptr (i64 32 to i8*)
  br i1 %1105, label %1106, label %1109

; <label>:1106:                                   ; preds = %1198, %1112, %1109, %1101
  %1107 = phi i8* [ %1098, %1112 ], [ %1098, %1109 ], [ %1098, %1101 ], [ %1120, %1198 ]
  %1108 = phi i8* [ %1097, %1112 ], [ %1097, %1109 ], [ %1097, %1101 ], [ %1121, %1198 ]
  br label %1213

; <label>:1109:                                   ; preds = %1101
  %1110 = and i64 %1104, -32
  %1111 = icmp eq i64 %1110, 0
  br i1 %1111, label %1106, label %1112

; <label>:1112:                                   ; preds = %1109
  %1113 = sub i64 %1, %1099
  %1114 = getelementptr i8, i8* %0, i64 %1113
  %1115 = ptrtoint i8* %1114 to i64
  %1116 = getelementptr i8, i8* %1098, i64 %1115
  %1117 = icmp ult i8* %1098, %1083
  %1118 = icmp ult i8* %1097, %1116
  %1119 = and i1 %1117, %1118
  %1120 = getelementptr i8, i8* %1098, i64 %1110
  %1121 = getelementptr i8, i8* %1097, i64 %1110
  br i1 %1119, label %1106, label %1122

; <label>:1122:                                   ; preds = %1112
  %1123 = add i64 %1110, -32
  %1124 = lshr exact i64 %1123, 5
  %1125 = add nuw nsw i64 %1124, 1
  %1126 = and i64 %1125, 3
  %1127 = icmp eq i64 %1126, 0
  br i1 %1127, label %1146, label %1128

; <label>:1128:                                   ; preds = %1122
  br label %1129

; <label>:1129:                                   ; preds = %1129, %1128
  %1130 = phi i64 [ %1142, %1129 ], [ 0, %1128 ]
  %1131 = phi i64 [ %1143, %1129 ], [ %1126, %1128 ]
  %1132 = getelementptr i8, i8* %1098, i64 %1130
  %1133 = getelementptr i8, i8* %1097, i64 %1130
  %1134 = bitcast i8* %1133 to <16 x i8>*
  %1135 = load <16 x i8>, <16 x i8>* %1134, align 1
  %1136 = getelementptr i8, i8* %1133, i64 16
  %1137 = bitcast i8* %1136 to <16 x i8>*
  %1138 = load <16 x i8>, <16 x i8>* %1137, align 1
  %1139 = bitcast i8* %1132 to <16 x i8>*
  store <16 x i8> %1135, <16 x i8>* %1139, align 1
  %1140 = getelementptr i8, i8* %1132, i64 16
  %1141 = bitcast i8* %1140 to <16 x i8>*
  store <16 x i8> %1138, <16 x i8>* %1141, align 1
  %1142 = add i64 %1130, 32
  %1143 = add i64 %1131, -1
  %1144 = icmp eq i64 %1143, 0
  br i1 %1144, label %1145, label %1129

; <label>:1145:                                   ; preds = %1129
  br label %1146

; <label>:1146:                                   ; preds = %1122, %1145
  %1147 = phi i64 [ 0, %1122 ], [ %1142, %1145 ]
  %1148 = icmp ult i64 %1123, 96
  br i1 %1148, label %1198, label %1149

; <label>:1149:                                   ; preds = %1146
  br label %1150

; <label>:1150:                                   ; preds = %1150, %1149
  %1151 = phi i64 [ %1147, %1149 ], [ %1195, %1150 ]
  %1152 = getelementptr i8, i8* %1098, i64 %1151
  %1153 = getelementptr i8, i8* %1097, i64 %1151
  %1154 = bitcast i8* %1153 to <16 x i8>*
  %1155 = load <16 x i8>, <16 x i8>* %1154, align 1
  %1156 = getelementptr i8, i8* %1153, i64 16
  %1157 = bitcast i8* %1156 to <16 x i8>*
  %1158 = load <16 x i8>, <16 x i8>* %1157, align 1
  %1159 = bitcast i8* %1152 to <16 x i8>*
  store <16 x i8> %1155, <16 x i8>* %1159, align 1
  %1160 = getelementptr i8, i8* %1152, i64 16
  %1161 = bitcast i8* %1160 to <16 x i8>*
  store <16 x i8> %1158, <16 x i8>* %1161, align 1
  %1162 = add i64 %1151, 32
  %1163 = getelementptr i8, i8* %1098, i64 %1162
  %1164 = getelementptr i8, i8* %1097, i64 %1162
  %1165 = bitcast i8* %1164 to <16 x i8>*
  %1166 = load <16 x i8>, <16 x i8>* %1165, align 1
  %1167 = getelementptr i8, i8* %1164, i64 16
  %1168 = bitcast i8* %1167 to <16 x i8>*
  %1169 = load <16 x i8>, <16 x i8>* %1168, align 1
  %1170 = bitcast i8* %1163 to <16 x i8>*
  store <16 x i8> %1166, <16 x i8>* %1170, align 1
  %1171 = getelementptr i8, i8* %1163, i64 16
  %1172 = bitcast i8* %1171 to <16 x i8>*
  store <16 x i8> %1169, <16 x i8>* %1172, align 1
  %1173 = add i64 %1151, 64
  %1174 = getelementptr i8, i8* %1098, i64 %1173
  %1175 = getelementptr i8, i8* %1097, i64 %1173
  %1176 = bitcast i8* %1175 to <16 x i8>*
  %1177 = load <16 x i8>, <16 x i8>* %1176, align 1
  %1178 = getelementptr i8, i8* %1175, i64 16
  %1179 = bitcast i8* %1178 to <16 x i8>*
  %1180 = load <16 x i8>, <16 x i8>* %1179, align 1
  %1181 = bitcast i8* %1174 to <16 x i8>*
  store <16 x i8> %1177, <16 x i8>* %1181, align 1
  %1182 = getelementptr i8, i8* %1174, i64 16
  %1183 = bitcast i8* %1182 to <16 x i8>*
  store <16 x i8> %1180, <16 x i8>* %1183, align 1
  %1184 = add i64 %1151, 96
  %1185 = getelementptr i8, i8* %1098, i64 %1184
  %1186 = getelementptr i8, i8* %1097, i64 %1184
  %1187 = bitcast i8* %1186 to <16 x i8>*
  %1188 = load <16 x i8>, <16 x i8>* %1187, align 1
  %1189 = getelementptr i8, i8* %1186, i64 16
  %1190 = bitcast i8* %1189 to <16 x i8>*
  %1191 = load <16 x i8>, <16 x i8>* %1190, align 1
  %1192 = bitcast i8* %1185 to <16 x i8>*
  store <16 x i8> %1188, <16 x i8>* %1192, align 1
  %1193 = getelementptr i8, i8* %1185, i64 16
  %1194 = bitcast i8* %1193 to <16 x i8>*
  store <16 x i8> %1191, <16 x i8>* %1194, align 1
  %1195 = add i64 %1151, 128
  %1196 = icmp eq i64 %1195, %1110
  br i1 %1196, label %1197, label %1150

; <label>:1197:                                   ; preds = %1150
  br label %1198

; <label>:1198:                                   ; preds = %1146, %1197
  %1199 = icmp eq i64 %1104, %1110
  br i1 %1199, label %1221, label %1106

; <label>:1200:                                   ; preds = %1086
  %1201 = zext i32 %1090 to i64
  %1202 = icmp ult i8 %1089, 64
  %1203 = shl i64 1, %1201
  %1204 = and i64 %1203, 35184372088833
  %1205 = icmp ne i64 %1204, 0
  %1206 = and i1 %1202, %1205
  br i1 %1206, label %1207, label %1209

; <label>:1207:                                   ; preds = %1200
  %1208 = getelementptr inbounds i8, i8* %1087, i64 1
  store i8 %1089, i8* %1087, align 1
  br label %1209

; <label>:1209:                                   ; preds = %1207, %1200
  %1210 = phi i8* [ %1208, %1207 ], [ %1087, %1200 ]
  %1211 = getelementptr inbounds i8, i8* %1088, i64 1
  %1212 = icmp ult i8* %1211, %1083
  br i1 %1212, label %1086, label %1093

; <label>:1213:                                   ; preds = %1106, %1213
  %1214 = phi i8* [ %1218, %1213 ], [ %1107, %1106 ]
  %1215 = phi i8* [ %1216, %1213 ], [ %1108, %1106 ]
  %1216 = getelementptr inbounds i8, i8* %1215, i64 1
  %1217 = load i8, i8* %1215, align 1
  %1218 = getelementptr inbounds i8, i8* %1214, i64 1
  store i8 %1217, i8* %1214, align 1
  %1219 = icmp eq i8* %1216, %1083
  br i1 %1219, label %1220, label %1213

; <label>:1220:                                   ; preds = %1213
  br label %1221

; <label>:1221:                                   ; preds = %1220, %1198
  %1222 = getelementptr i8, i8* %0, i64 %1102
  %1223 = ptrtoint i8* %1222 to i64
  %1224 = getelementptr i8, i8* %1098, i64 %1223
  br label %1225

; <label>:1225:                                   ; preds = %1096, %1221
  %1226 = phi i8* [ %1098, %1096 ], [ %1224, %1221 ]
  %1227 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1226, i1 false) #9
  %1228 = tail call i8* @__memcpy_chk(i8* %1226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %1227) #9
  %1229 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @human_access.modebuf, i64 0, i64 0)) #9
  br label %4067

; <label>:1230:                                   ; preds = %6
  %1231 = getelementptr inbounds i8, i8* %5, i64 24
  %1232 = bitcast i8* %1231 to i32*
  %1233 = load i32, i32* %1232, align 8
  %1234 = zext i32 %1233 to i64
  %1235 = getelementptr inbounds i8, i8* %0, i64 1
  %1236 = getelementptr inbounds i8, i8* %0, i64 %1
  %1237 = icmp sgt i64 %1, 1
  br i1 %1237, label %1238, label %1249

; <label>:1238:                                   ; preds = %1230
  br label %1239

; <label>:1239:                                   ; preds = %1238, %1362
  %1240 = phi i8* [ %1363, %1362 ], [ %1235, %1238 ]
  %1241 = phi i8* [ %1364, %1362 ], [ %1235, %1238 ]
  %1242 = load i8, i8* %1241, align 1
  %1243 = sext i8 %1242 to i32
  %1244 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1243, i64 8) #9
  %1245 = icmp eq i8* %1244, null
  br i1 %1245, label %1246, label %1353

; <label>:1246:                                   ; preds = %1239, %1362
  %1247 = phi i8* [ %1364, %1362 ], [ %1241, %1239 ]
  %1248 = phi i8* [ %1363, %1362 ], [ %1240, %1239 ]
  br label %1249

; <label>:1249:                                   ; preds = %1246, %1230
  %1250 = phi i8* [ %1235, %1230 ], [ %1247, %1246 ]
  %1251 = phi i8* [ %1235, %1230 ], [ %1248, %1246 ]
  %1252 = ptrtoint i8* %1250 to i64
  %1253 = icmp ult i8* %1250, %1236
  br i1 %1253, label %1254, label %1378

; <label>:1254:                                   ; preds = %1249
  %1255 = sub i64 %1, %1252
  %1256 = getelementptr i8, i8* %0, i64 %1255
  %1257 = ptrtoint i8* %1256 to i64
  %1258 = icmp ult i8* %1256, inttoptr (i64 32 to i8*)
  br i1 %1258, label %1259, label %1262

; <label>:1259:                                   ; preds = %1351, %1265, %1262, %1254
  %1260 = phi i8* [ %1251, %1265 ], [ %1251, %1262 ], [ %1251, %1254 ], [ %1273, %1351 ]
  %1261 = phi i8* [ %1250, %1265 ], [ %1250, %1262 ], [ %1250, %1254 ], [ %1274, %1351 ]
  br label %1366

; <label>:1262:                                   ; preds = %1254
  %1263 = and i64 %1257, -32
  %1264 = icmp eq i64 %1263, 0
  br i1 %1264, label %1259, label %1265

; <label>:1265:                                   ; preds = %1262
  %1266 = sub i64 %1, %1252
  %1267 = getelementptr i8, i8* %0, i64 %1266
  %1268 = ptrtoint i8* %1267 to i64
  %1269 = getelementptr i8, i8* %1251, i64 %1268
  %1270 = icmp ult i8* %1251, %1236
  %1271 = icmp ult i8* %1250, %1269
  %1272 = and i1 %1270, %1271
  %1273 = getelementptr i8, i8* %1251, i64 %1263
  %1274 = getelementptr i8, i8* %1250, i64 %1263
  br i1 %1272, label %1259, label %1275

; <label>:1275:                                   ; preds = %1265
  %1276 = add i64 %1263, -32
  %1277 = lshr exact i64 %1276, 5
  %1278 = add nuw nsw i64 %1277, 1
  %1279 = and i64 %1278, 3
  %1280 = icmp eq i64 %1279, 0
  br i1 %1280, label %1299, label %1281

; <label>:1281:                                   ; preds = %1275
  br label %1282

; <label>:1282:                                   ; preds = %1282, %1281
  %1283 = phi i64 [ %1295, %1282 ], [ 0, %1281 ]
  %1284 = phi i64 [ %1296, %1282 ], [ %1279, %1281 ]
  %1285 = getelementptr i8, i8* %1251, i64 %1283
  %1286 = getelementptr i8, i8* %1250, i64 %1283
  %1287 = bitcast i8* %1286 to <16 x i8>*
  %1288 = load <16 x i8>, <16 x i8>* %1287, align 1
  %1289 = getelementptr i8, i8* %1286, i64 16
  %1290 = bitcast i8* %1289 to <16 x i8>*
  %1291 = load <16 x i8>, <16 x i8>* %1290, align 1
  %1292 = bitcast i8* %1285 to <16 x i8>*
  store <16 x i8> %1288, <16 x i8>* %1292, align 1
  %1293 = getelementptr i8, i8* %1285, i64 16
  %1294 = bitcast i8* %1293 to <16 x i8>*
  store <16 x i8> %1291, <16 x i8>* %1294, align 1
  %1295 = add i64 %1283, 32
  %1296 = add i64 %1284, -1
  %1297 = icmp eq i64 %1296, 0
  br i1 %1297, label %1298, label %1282

; <label>:1298:                                   ; preds = %1282
  br label %1299

; <label>:1299:                                   ; preds = %1275, %1298
  %1300 = phi i64 [ 0, %1275 ], [ %1295, %1298 ]
  %1301 = icmp ult i64 %1276, 96
  br i1 %1301, label %1351, label %1302

; <label>:1302:                                   ; preds = %1299
  br label %1303

; <label>:1303:                                   ; preds = %1303, %1302
  %1304 = phi i64 [ %1300, %1302 ], [ %1348, %1303 ]
  %1305 = getelementptr i8, i8* %1251, i64 %1304
  %1306 = getelementptr i8, i8* %1250, i64 %1304
  %1307 = bitcast i8* %1306 to <16 x i8>*
  %1308 = load <16 x i8>, <16 x i8>* %1307, align 1
  %1309 = getelementptr i8, i8* %1306, i64 16
  %1310 = bitcast i8* %1309 to <16 x i8>*
  %1311 = load <16 x i8>, <16 x i8>* %1310, align 1
  %1312 = bitcast i8* %1305 to <16 x i8>*
  store <16 x i8> %1308, <16 x i8>* %1312, align 1
  %1313 = getelementptr i8, i8* %1305, i64 16
  %1314 = bitcast i8* %1313 to <16 x i8>*
  store <16 x i8> %1311, <16 x i8>* %1314, align 1
  %1315 = add i64 %1304, 32
  %1316 = getelementptr i8, i8* %1251, i64 %1315
  %1317 = getelementptr i8, i8* %1250, i64 %1315
  %1318 = bitcast i8* %1317 to <16 x i8>*
  %1319 = load <16 x i8>, <16 x i8>* %1318, align 1
  %1320 = getelementptr i8, i8* %1317, i64 16
  %1321 = bitcast i8* %1320 to <16 x i8>*
  %1322 = load <16 x i8>, <16 x i8>* %1321, align 1
  %1323 = bitcast i8* %1316 to <16 x i8>*
  store <16 x i8> %1319, <16 x i8>* %1323, align 1
  %1324 = getelementptr i8, i8* %1316, i64 16
  %1325 = bitcast i8* %1324 to <16 x i8>*
  store <16 x i8> %1322, <16 x i8>* %1325, align 1
  %1326 = add i64 %1304, 64
  %1327 = getelementptr i8, i8* %1251, i64 %1326
  %1328 = getelementptr i8, i8* %1250, i64 %1326
  %1329 = bitcast i8* %1328 to <16 x i8>*
  %1330 = load <16 x i8>, <16 x i8>* %1329, align 1
  %1331 = getelementptr i8, i8* %1328, i64 16
  %1332 = bitcast i8* %1331 to <16 x i8>*
  %1333 = load <16 x i8>, <16 x i8>* %1332, align 1
  %1334 = bitcast i8* %1327 to <16 x i8>*
  store <16 x i8> %1330, <16 x i8>* %1334, align 1
  %1335 = getelementptr i8, i8* %1327, i64 16
  %1336 = bitcast i8* %1335 to <16 x i8>*
  store <16 x i8> %1333, <16 x i8>* %1336, align 1
  %1337 = add i64 %1304, 96
  %1338 = getelementptr i8, i8* %1251, i64 %1337
  %1339 = getelementptr i8, i8* %1250, i64 %1337
  %1340 = bitcast i8* %1339 to <16 x i8>*
  %1341 = load <16 x i8>, <16 x i8>* %1340, align 1
  %1342 = getelementptr i8, i8* %1339, i64 16
  %1343 = bitcast i8* %1342 to <16 x i8>*
  %1344 = load <16 x i8>, <16 x i8>* %1343, align 1
  %1345 = bitcast i8* %1338 to <16 x i8>*
  store <16 x i8> %1341, <16 x i8>* %1345, align 1
  %1346 = getelementptr i8, i8* %1338, i64 16
  %1347 = bitcast i8* %1346 to <16 x i8>*
  store <16 x i8> %1344, <16 x i8>* %1347, align 1
  %1348 = add i64 %1304, 128
  %1349 = icmp eq i64 %1348, %1263
  br i1 %1349, label %1350, label %1303

; <label>:1350:                                   ; preds = %1303
  br label %1351

; <label>:1351:                                   ; preds = %1299, %1350
  %1352 = icmp eq i64 %1257, %1263
  br i1 %1352, label %1374, label %1259

; <label>:1353:                                   ; preds = %1239
  %1354 = zext i32 %1243 to i64
  %1355 = icmp ult i8 %1242, 64
  %1356 = shl i64 1, %1354
  %1357 = and i64 %1356, 316693708537857
  %1358 = icmp ne i64 %1357, 0
  %1359 = and i1 %1355, %1358
  br i1 %1359, label %1360, label %1362

; <label>:1360:                                   ; preds = %1353
  %1361 = getelementptr inbounds i8, i8* %1240, i64 1
  store i8 %1242, i8* %1240, align 1
  br label %1362

; <label>:1362:                                   ; preds = %1360, %1353
  %1363 = phi i8* [ %1361, %1360 ], [ %1240, %1353 ]
  %1364 = getelementptr inbounds i8, i8* %1241, i64 1
  %1365 = icmp ult i8* %1364, %1236
  br i1 %1365, label %1239, label %1246

; <label>:1366:                                   ; preds = %1259, %1366
  %1367 = phi i8* [ %1371, %1366 ], [ %1260, %1259 ]
  %1368 = phi i8* [ %1369, %1366 ], [ %1261, %1259 ]
  %1369 = getelementptr inbounds i8, i8* %1368, i64 1
  %1370 = load i8, i8* %1368, align 1
  %1371 = getelementptr inbounds i8, i8* %1367, i64 1
  store i8 %1370, i8* %1367, align 1
  %1372 = icmp eq i8* %1369, %1236
  br i1 %1372, label %1373, label %1366

; <label>:1373:                                   ; preds = %1366
  br label %1374

; <label>:1374:                                   ; preds = %1373, %1351
  %1375 = getelementptr i8, i8* %0, i64 %1255
  %1376 = ptrtoint i8* %1375 to i64
  %1377 = getelementptr i8, i8* %1251, i64 %1376
  br label %1378

; <label>:1378:                                   ; preds = %1249, %1374
  %1379 = phi i8* [ %1251, %1249 ], [ %1377, %1374 ]
  %1380 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1379, i1 false) #9
  %1381 = tail call i8* @__memcpy_chk(i8* %1379, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %1380) #9
  %1382 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1234) #9
  br label %4067

; <label>:1383:                                   ; preds = %6
  %1384 = tail call i8* @file_type(%struct.stat* %7) #13
  %1385 = getelementptr inbounds i8, i8* %0, i64 1
  %1386 = getelementptr inbounds i8, i8* %0, i64 %1
  %1387 = icmp sgt i64 %1, 1
  br i1 %1387, label %1388, label %1399

; <label>:1388:                                   ; preds = %1383
  br label %1389

; <label>:1389:                                   ; preds = %1388, %1512
  %1390 = phi i8* [ %1513, %1512 ], [ %1385, %1388 ]
  %1391 = phi i8* [ %1514, %1512 ], [ %1385, %1388 ]
  %1392 = load i8, i8* %1391, align 1
  %1393 = sext i8 %1392 to i32
  %1394 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1393, i64 8) #9
  %1395 = icmp eq i8* %1394, null
  br i1 %1395, label %1396, label %1503

; <label>:1396:                                   ; preds = %1389, %1512
  %1397 = phi i8* [ %1514, %1512 ], [ %1391, %1389 ]
  %1398 = phi i8* [ %1513, %1512 ], [ %1390, %1389 ]
  br label %1399

; <label>:1399:                                   ; preds = %1396, %1383
  %1400 = phi i8* [ %1385, %1383 ], [ %1397, %1396 ]
  %1401 = phi i8* [ %1385, %1383 ], [ %1398, %1396 ]
  %1402 = ptrtoint i8* %1400 to i64
  %1403 = icmp ult i8* %1400, %1386
  br i1 %1403, label %1404, label %1528

; <label>:1404:                                   ; preds = %1399
  %1405 = sub i64 %1, %1402
  %1406 = getelementptr i8, i8* %0, i64 %1405
  %1407 = ptrtoint i8* %1406 to i64
  %1408 = icmp ult i8* %1406, inttoptr (i64 32 to i8*)
  br i1 %1408, label %1409, label %1412

; <label>:1409:                                   ; preds = %1501, %1415, %1412, %1404
  %1410 = phi i8* [ %1401, %1415 ], [ %1401, %1412 ], [ %1401, %1404 ], [ %1423, %1501 ]
  %1411 = phi i8* [ %1400, %1415 ], [ %1400, %1412 ], [ %1400, %1404 ], [ %1424, %1501 ]
  br label %1516

; <label>:1412:                                   ; preds = %1404
  %1413 = and i64 %1407, -32
  %1414 = icmp eq i64 %1413, 0
  br i1 %1414, label %1409, label %1415

; <label>:1415:                                   ; preds = %1412
  %1416 = sub i64 %1, %1402
  %1417 = getelementptr i8, i8* %0, i64 %1416
  %1418 = ptrtoint i8* %1417 to i64
  %1419 = getelementptr i8, i8* %1401, i64 %1418
  %1420 = icmp ult i8* %1401, %1386
  %1421 = icmp ult i8* %1400, %1419
  %1422 = and i1 %1420, %1421
  %1423 = getelementptr i8, i8* %1401, i64 %1413
  %1424 = getelementptr i8, i8* %1400, i64 %1413
  br i1 %1422, label %1409, label %1425

; <label>:1425:                                   ; preds = %1415
  %1426 = add i64 %1413, -32
  %1427 = lshr exact i64 %1426, 5
  %1428 = add nuw nsw i64 %1427, 1
  %1429 = and i64 %1428, 3
  %1430 = icmp eq i64 %1429, 0
  br i1 %1430, label %1449, label %1431

; <label>:1431:                                   ; preds = %1425
  br label %1432

; <label>:1432:                                   ; preds = %1432, %1431
  %1433 = phi i64 [ %1445, %1432 ], [ 0, %1431 ]
  %1434 = phi i64 [ %1446, %1432 ], [ %1429, %1431 ]
  %1435 = getelementptr i8, i8* %1401, i64 %1433
  %1436 = getelementptr i8, i8* %1400, i64 %1433
  %1437 = bitcast i8* %1436 to <16 x i8>*
  %1438 = load <16 x i8>, <16 x i8>* %1437, align 1
  %1439 = getelementptr i8, i8* %1436, i64 16
  %1440 = bitcast i8* %1439 to <16 x i8>*
  %1441 = load <16 x i8>, <16 x i8>* %1440, align 1
  %1442 = bitcast i8* %1435 to <16 x i8>*
  store <16 x i8> %1438, <16 x i8>* %1442, align 1
  %1443 = getelementptr i8, i8* %1435, i64 16
  %1444 = bitcast i8* %1443 to <16 x i8>*
  store <16 x i8> %1441, <16 x i8>* %1444, align 1
  %1445 = add i64 %1433, 32
  %1446 = add i64 %1434, -1
  %1447 = icmp eq i64 %1446, 0
  br i1 %1447, label %1448, label %1432

; <label>:1448:                                   ; preds = %1432
  br label %1449

; <label>:1449:                                   ; preds = %1425, %1448
  %1450 = phi i64 [ 0, %1425 ], [ %1445, %1448 ]
  %1451 = icmp ult i64 %1426, 96
  br i1 %1451, label %1501, label %1452

; <label>:1452:                                   ; preds = %1449
  br label %1453

; <label>:1453:                                   ; preds = %1453, %1452
  %1454 = phi i64 [ %1450, %1452 ], [ %1498, %1453 ]
  %1455 = getelementptr i8, i8* %1401, i64 %1454
  %1456 = getelementptr i8, i8* %1400, i64 %1454
  %1457 = bitcast i8* %1456 to <16 x i8>*
  %1458 = load <16 x i8>, <16 x i8>* %1457, align 1
  %1459 = getelementptr i8, i8* %1456, i64 16
  %1460 = bitcast i8* %1459 to <16 x i8>*
  %1461 = load <16 x i8>, <16 x i8>* %1460, align 1
  %1462 = bitcast i8* %1455 to <16 x i8>*
  store <16 x i8> %1458, <16 x i8>* %1462, align 1
  %1463 = getelementptr i8, i8* %1455, i64 16
  %1464 = bitcast i8* %1463 to <16 x i8>*
  store <16 x i8> %1461, <16 x i8>* %1464, align 1
  %1465 = add i64 %1454, 32
  %1466 = getelementptr i8, i8* %1401, i64 %1465
  %1467 = getelementptr i8, i8* %1400, i64 %1465
  %1468 = bitcast i8* %1467 to <16 x i8>*
  %1469 = load <16 x i8>, <16 x i8>* %1468, align 1
  %1470 = getelementptr i8, i8* %1467, i64 16
  %1471 = bitcast i8* %1470 to <16 x i8>*
  %1472 = load <16 x i8>, <16 x i8>* %1471, align 1
  %1473 = bitcast i8* %1466 to <16 x i8>*
  store <16 x i8> %1469, <16 x i8>* %1473, align 1
  %1474 = getelementptr i8, i8* %1466, i64 16
  %1475 = bitcast i8* %1474 to <16 x i8>*
  store <16 x i8> %1472, <16 x i8>* %1475, align 1
  %1476 = add i64 %1454, 64
  %1477 = getelementptr i8, i8* %1401, i64 %1476
  %1478 = getelementptr i8, i8* %1400, i64 %1476
  %1479 = bitcast i8* %1478 to <16 x i8>*
  %1480 = load <16 x i8>, <16 x i8>* %1479, align 1
  %1481 = getelementptr i8, i8* %1478, i64 16
  %1482 = bitcast i8* %1481 to <16 x i8>*
  %1483 = load <16 x i8>, <16 x i8>* %1482, align 1
  %1484 = bitcast i8* %1477 to <16 x i8>*
  store <16 x i8> %1480, <16 x i8>* %1484, align 1
  %1485 = getelementptr i8, i8* %1477, i64 16
  %1486 = bitcast i8* %1485 to <16 x i8>*
  store <16 x i8> %1483, <16 x i8>* %1486, align 1
  %1487 = add i64 %1454, 96
  %1488 = getelementptr i8, i8* %1401, i64 %1487
  %1489 = getelementptr i8, i8* %1400, i64 %1487
  %1490 = bitcast i8* %1489 to <16 x i8>*
  %1491 = load <16 x i8>, <16 x i8>* %1490, align 1
  %1492 = getelementptr i8, i8* %1489, i64 16
  %1493 = bitcast i8* %1492 to <16 x i8>*
  %1494 = load <16 x i8>, <16 x i8>* %1493, align 1
  %1495 = bitcast i8* %1488 to <16 x i8>*
  store <16 x i8> %1491, <16 x i8>* %1495, align 1
  %1496 = getelementptr i8, i8* %1488, i64 16
  %1497 = bitcast i8* %1496 to <16 x i8>*
  store <16 x i8> %1494, <16 x i8>* %1497, align 1
  %1498 = add i64 %1454, 128
  %1499 = icmp eq i64 %1498, %1413
  br i1 %1499, label %1500, label %1453

; <label>:1500:                                   ; preds = %1453
  br label %1501

; <label>:1501:                                   ; preds = %1449, %1500
  %1502 = icmp eq i64 %1407, %1413
  br i1 %1502, label %1524, label %1409

; <label>:1503:                                   ; preds = %1389
  %1504 = zext i32 %1393 to i64
  %1505 = icmp ult i8 %1392, 64
  %1506 = shl i64 1, %1504
  %1507 = and i64 %1506, 35184372088833
  %1508 = icmp ne i64 %1507, 0
  %1509 = and i1 %1505, %1508
  br i1 %1509, label %1510, label %1512

; <label>:1510:                                   ; preds = %1503
  %1511 = getelementptr inbounds i8, i8* %1390, i64 1
  store i8 %1392, i8* %1390, align 1
  br label %1512

; <label>:1512:                                   ; preds = %1510, %1503
  %1513 = phi i8* [ %1511, %1510 ], [ %1390, %1503 ]
  %1514 = getelementptr inbounds i8, i8* %1391, i64 1
  %1515 = icmp ult i8* %1514, %1386
  br i1 %1515, label %1389, label %1396

; <label>:1516:                                   ; preds = %1409, %1516
  %1517 = phi i8* [ %1521, %1516 ], [ %1410, %1409 ]
  %1518 = phi i8* [ %1519, %1516 ], [ %1411, %1409 ]
  %1519 = getelementptr inbounds i8, i8* %1518, i64 1
  %1520 = load i8, i8* %1518, align 1
  %1521 = getelementptr inbounds i8, i8* %1517, i64 1
  store i8 %1520, i8* %1517, align 1
  %1522 = icmp eq i8* %1519, %1386
  br i1 %1522, label %1523, label %1516

; <label>:1523:                                   ; preds = %1516
  br label %1524

; <label>:1524:                                   ; preds = %1523, %1501
  %1525 = getelementptr i8, i8* %0, i64 %1405
  %1526 = ptrtoint i8* %1525 to i64
  %1527 = getelementptr i8, i8* %1401, i64 %1526
  br label %1528

; <label>:1528:                                   ; preds = %1399, %1524
  %1529 = phi i8* [ %1401, %1399 ], [ %1527, %1524 ]
  %1530 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1529, i1 false) #9
  %1531 = tail call i8* @__memcpy_chk(i8* %1529, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %1530) #9
  %1532 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %1384) #9
  br label %4067

; <label>:1533:                                   ; preds = %6
  %1534 = getelementptr inbounds i8, i8* %5, i64 16
  %1535 = bitcast i8* %1534 to i64*
  %1536 = load i64, i64* %1535, align 8
  %1537 = getelementptr inbounds i8, i8* %0, i64 1
  %1538 = getelementptr inbounds i8, i8* %0, i64 %1
  %1539 = icmp sgt i64 %1, 1
  br i1 %1539, label %1540, label %1551

; <label>:1540:                                   ; preds = %1533
  br label %1541

; <label>:1541:                                   ; preds = %1540, %1664
  %1542 = phi i8* [ %1665, %1664 ], [ %1537, %1540 ]
  %1543 = phi i8* [ %1666, %1664 ], [ %1537, %1540 ]
  %1544 = load i8, i8* %1543, align 1
  %1545 = sext i8 %1544 to i32
  %1546 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1545, i64 8) #9
  %1547 = icmp eq i8* %1546, null
  br i1 %1547, label %1548, label %1655

; <label>:1548:                                   ; preds = %1541, %1664
  %1549 = phi i8* [ %1666, %1664 ], [ %1543, %1541 ]
  %1550 = phi i8* [ %1665, %1664 ], [ %1542, %1541 ]
  br label %1551

; <label>:1551:                                   ; preds = %1548, %1533
  %1552 = phi i8* [ %1537, %1533 ], [ %1549, %1548 ]
  %1553 = phi i8* [ %1537, %1533 ], [ %1550, %1548 ]
  %1554 = ptrtoint i8* %1552 to i64
  %1555 = icmp ult i8* %1552, %1538
  br i1 %1555, label %1556, label %1680

; <label>:1556:                                   ; preds = %1551
  %1557 = sub i64 %1, %1554
  %1558 = getelementptr i8, i8* %0, i64 %1557
  %1559 = ptrtoint i8* %1558 to i64
  %1560 = icmp ult i8* %1558, inttoptr (i64 32 to i8*)
  br i1 %1560, label %1561, label %1564

; <label>:1561:                                   ; preds = %1653, %1567, %1564, %1556
  %1562 = phi i8* [ %1553, %1567 ], [ %1553, %1564 ], [ %1553, %1556 ], [ %1575, %1653 ]
  %1563 = phi i8* [ %1552, %1567 ], [ %1552, %1564 ], [ %1552, %1556 ], [ %1576, %1653 ]
  br label %1668

; <label>:1564:                                   ; preds = %1556
  %1565 = and i64 %1559, -32
  %1566 = icmp eq i64 %1565, 0
  br i1 %1566, label %1561, label %1567

; <label>:1567:                                   ; preds = %1564
  %1568 = sub i64 %1, %1554
  %1569 = getelementptr i8, i8* %0, i64 %1568
  %1570 = ptrtoint i8* %1569 to i64
  %1571 = getelementptr i8, i8* %1553, i64 %1570
  %1572 = icmp ult i8* %1553, %1538
  %1573 = icmp ult i8* %1552, %1571
  %1574 = and i1 %1572, %1573
  %1575 = getelementptr i8, i8* %1553, i64 %1565
  %1576 = getelementptr i8, i8* %1552, i64 %1565
  br i1 %1574, label %1561, label %1577

; <label>:1577:                                   ; preds = %1567
  %1578 = add i64 %1565, -32
  %1579 = lshr exact i64 %1578, 5
  %1580 = add nuw nsw i64 %1579, 1
  %1581 = and i64 %1580, 3
  %1582 = icmp eq i64 %1581, 0
  br i1 %1582, label %1601, label %1583

; <label>:1583:                                   ; preds = %1577
  br label %1584

; <label>:1584:                                   ; preds = %1584, %1583
  %1585 = phi i64 [ %1597, %1584 ], [ 0, %1583 ]
  %1586 = phi i64 [ %1598, %1584 ], [ %1581, %1583 ]
  %1587 = getelementptr i8, i8* %1553, i64 %1585
  %1588 = getelementptr i8, i8* %1552, i64 %1585
  %1589 = bitcast i8* %1588 to <16 x i8>*
  %1590 = load <16 x i8>, <16 x i8>* %1589, align 1
  %1591 = getelementptr i8, i8* %1588, i64 16
  %1592 = bitcast i8* %1591 to <16 x i8>*
  %1593 = load <16 x i8>, <16 x i8>* %1592, align 1
  %1594 = bitcast i8* %1587 to <16 x i8>*
  store <16 x i8> %1590, <16 x i8>* %1594, align 1
  %1595 = getelementptr i8, i8* %1587, i64 16
  %1596 = bitcast i8* %1595 to <16 x i8>*
  store <16 x i8> %1593, <16 x i8>* %1596, align 1
  %1597 = add i64 %1585, 32
  %1598 = add i64 %1586, -1
  %1599 = icmp eq i64 %1598, 0
  br i1 %1599, label %1600, label %1584

; <label>:1600:                                   ; preds = %1584
  br label %1601

; <label>:1601:                                   ; preds = %1577, %1600
  %1602 = phi i64 [ 0, %1577 ], [ %1597, %1600 ]
  %1603 = icmp ult i64 %1578, 96
  br i1 %1603, label %1653, label %1604

; <label>:1604:                                   ; preds = %1601
  br label %1605

; <label>:1605:                                   ; preds = %1605, %1604
  %1606 = phi i64 [ %1602, %1604 ], [ %1650, %1605 ]
  %1607 = getelementptr i8, i8* %1553, i64 %1606
  %1608 = getelementptr i8, i8* %1552, i64 %1606
  %1609 = bitcast i8* %1608 to <16 x i8>*
  %1610 = load <16 x i8>, <16 x i8>* %1609, align 1
  %1611 = getelementptr i8, i8* %1608, i64 16
  %1612 = bitcast i8* %1611 to <16 x i8>*
  %1613 = load <16 x i8>, <16 x i8>* %1612, align 1
  %1614 = bitcast i8* %1607 to <16 x i8>*
  store <16 x i8> %1610, <16 x i8>* %1614, align 1
  %1615 = getelementptr i8, i8* %1607, i64 16
  %1616 = bitcast i8* %1615 to <16 x i8>*
  store <16 x i8> %1613, <16 x i8>* %1616, align 1
  %1617 = add i64 %1606, 32
  %1618 = getelementptr i8, i8* %1553, i64 %1617
  %1619 = getelementptr i8, i8* %1552, i64 %1617
  %1620 = bitcast i8* %1619 to <16 x i8>*
  %1621 = load <16 x i8>, <16 x i8>* %1620, align 1
  %1622 = getelementptr i8, i8* %1619, i64 16
  %1623 = bitcast i8* %1622 to <16 x i8>*
  %1624 = load <16 x i8>, <16 x i8>* %1623, align 1
  %1625 = bitcast i8* %1618 to <16 x i8>*
  store <16 x i8> %1621, <16 x i8>* %1625, align 1
  %1626 = getelementptr i8, i8* %1618, i64 16
  %1627 = bitcast i8* %1626 to <16 x i8>*
  store <16 x i8> %1624, <16 x i8>* %1627, align 1
  %1628 = add i64 %1606, 64
  %1629 = getelementptr i8, i8* %1553, i64 %1628
  %1630 = getelementptr i8, i8* %1552, i64 %1628
  %1631 = bitcast i8* %1630 to <16 x i8>*
  %1632 = load <16 x i8>, <16 x i8>* %1631, align 1
  %1633 = getelementptr i8, i8* %1630, i64 16
  %1634 = bitcast i8* %1633 to <16 x i8>*
  %1635 = load <16 x i8>, <16 x i8>* %1634, align 1
  %1636 = bitcast i8* %1629 to <16 x i8>*
  store <16 x i8> %1632, <16 x i8>* %1636, align 1
  %1637 = getelementptr i8, i8* %1629, i64 16
  %1638 = bitcast i8* %1637 to <16 x i8>*
  store <16 x i8> %1635, <16 x i8>* %1638, align 1
  %1639 = add i64 %1606, 96
  %1640 = getelementptr i8, i8* %1553, i64 %1639
  %1641 = getelementptr i8, i8* %1552, i64 %1639
  %1642 = bitcast i8* %1641 to <16 x i8>*
  %1643 = load <16 x i8>, <16 x i8>* %1642, align 1
  %1644 = getelementptr i8, i8* %1641, i64 16
  %1645 = bitcast i8* %1644 to <16 x i8>*
  %1646 = load <16 x i8>, <16 x i8>* %1645, align 1
  %1647 = bitcast i8* %1640 to <16 x i8>*
  store <16 x i8> %1643, <16 x i8>* %1647, align 1
  %1648 = getelementptr i8, i8* %1640, i64 16
  %1649 = bitcast i8* %1648 to <16 x i8>*
  store <16 x i8> %1646, <16 x i8>* %1649, align 1
  %1650 = add i64 %1606, 128
  %1651 = icmp eq i64 %1650, %1565
  br i1 %1651, label %1652, label %1605

; <label>:1652:                                   ; preds = %1605
  br label %1653

; <label>:1653:                                   ; preds = %1601, %1652
  %1654 = icmp eq i64 %1559, %1565
  br i1 %1654, label %1676, label %1561

; <label>:1655:                                   ; preds = %1541
  %1656 = zext i32 %1545 to i64
  %1657 = icmp ult i8 %1544, 64
  %1658 = shl i64 1, %1656
  %1659 = and i64 %1658, 317209104613377
  %1660 = icmp ne i64 %1659, 0
  %1661 = and i1 %1657, %1660
  br i1 %1661, label %1662, label %1664

; <label>:1662:                                   ; preds = %1655
  %1663 = getelementptr inbounds i8, i8* %1542, i64 1
  store i8 %1544, i8* %1542, align 1
  br label %1664

; <label>:1664:                                   ; preds = %1662, %1655
  %1665 = phi i8* [ %1663, %1662 ], [ %1542, %1655 ]
  %1666 = getelementptr inbounds i8, i8* %1543, i64 1
  %1667 = icmp ult i8* %1666, %1538
  br i1 %1667, label %1541, label %1548

; <label>:1668:                                   ; preds = %1561, %1668
  %1669 = phi i8* [ %1673, %1668 ], [ %1562, %1561 ]
  %1670 = phi i8* [ %1671, %1668 ], [ %1563, %1561 ]
  %1671 = getelementptr inbounds i8, i8* %1670, i64 1
  %1672 = load i8, i8* %1670, align 1
  %1673 = getelementptr inbounds i8, i8* %1669, i64 1
  store i8 %1672, i8* %1669, align 1
  %1674 = icmp eq i8* %1671, %1538
  br i1 %1674, label %1675, label %1668

; <label>:1675:                                   ; preds = %1668
  br label %1676

; <label>:1676:                                   ; preds = %1675, %1653
  %1677 = getelementptr i8, i8* %0, i64 %1557
  %1678 = ptrtoint i8* %1677 to i64
  %1679 = getelementptr i8, i8* %1553, i64 %1678
  br label %1680

; <label>:1680:                                   ; preds = %1551, %1676
  %1681 = phi i8* [ %1553, %1551 ], [ %1679, %1676 ]
  %1682 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1681, i1 false) #9
  %1683 = tail call i8* @__memcpy_chk(i8* %1681, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %1682) #9
  %1684 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1536) #9
  br label %4067

; <label>:1685:                                   ; preds = %6
  %1686 = getelementptr inbounds i8, i8* %5, i64 28
  %1687 = bitcast i8* %1686 to i32*
  %1688 = load i32, i32* %1687, align 4
  %1689 = zext i32 %1688 to i64
  %1690 = getelementptr inbounds i8, i8* %0, i64 1
  %1691 = getelementptr inbounds i8, i8* %0, i64 %1
  %1692 = icmp sgt i64 %1, 1
  br i1 %1692, label %1693, label %1704

; <label>:1693:                                   ; preds = %1685
  br label %1694

; <label>:1694:                                   ; preds = %1693, %1817
  %1695 = phi i8* [ %1818, %1817 ], [ %1690, %1693 ]
  %1696 = phi i8* [ %1819, %1817 ], [ %1690, %1693 ]
  %1697 = load i8, i8* %1696, align 1
  %1698 = sext i8 %1697 to i32
  %1699 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1698, i64 8) #9
  %1700 = icmp eq i8* %1699, null
  br i1 %1700, label %1701, label %1808

; <label>:1701:                                   ; preds = %1694, %1817
  %1702 = phi i8* [ %1819, %1817 ], [ %1696, %1694 ]
  %1703 = phi i8* [ %1818, %1817 ], [ %1695, %1694 ]
  br label %1704

; <label>:1704:                                   ; preds = %1701, %1685
  %1705 = phi i8* [ %1690, %1685 ], [ %1702, %1701 ]
  %1706 = phi i8* [ %1690, %1685 ], [ %1703, %1701 ]
  %1707 = ptrtoint i8* %1705 to i64
  %1708 = icmp ult i8* %1705, %1691
  br i1 %1708, label %1709, label %1833

; <label>:1709:                                   ; preds = %1704
  %1710 = sub i64 %1, %1707
  %1711 = getelementptr i8, i8* %0, i64 %1710
  %1712 = ptrtoint i8* %1711 to i64
  %1713 = icmp ult i8* %1711, inttoptr (i64 32 to i8*)
  br i1 %1713, label %1714, label %1717

; <label>:1714:                                   ; preds = %1806, %1720, %1717, %1709
  %1715 = phi i8* [ %1706, %1720 ], [ %1706, %1717 ], [ %1706, %1709 ], [ %1728, %1806 ]
  %1716 = phi i8* [ %1705, %1720 ], [ %1705, %1717 ], [ %1705, %1709 ], [ %1729, %1806 ]
  br label %1821

; <label>:1717:                                   ; preds = %1709
  %1718 = and i64 %1712, -32
  %1719 = icmp eq i64 %1718, 0
  br i1 %1719, label %1714, label %1720

; <label>:1720:                                   ; preds = %1717
  %1721 = sub i64 %1, %1707
  %1722 = getelementptr i8, i8* %0, i64 %1721
  %1723 = ptrtoint i8* %1722 to i64
  %1724 = getelementptr i8, i8* %1706, i64 %1723
  %1725 = icmp ult i8* %1706, %1691
  %1726 = icmp ult i8* %1705, %1724
  %1727 = and i1 %1725, %1726
  %1728 = getelementptr i8, i8* %1706, i64 %1718
  %1729 = getelementptr i8, i8* %1705, i64 %1718
  br i1 %1727, label %1714, label %1730

; <label>:1730:                                   ; preds = %1720
  %1731 = add i64 %1718, -32
  %1732 = lshr exact i64 %1731, 5
  %1733 = add nuw nsw i64 %1732, 1
  %1734 = and i64 %1733, 3
  %1735 = icmp eq i64 %1734, 0
  br i1 %1735, label %1754, label %1736

; <label>:1736:                                   ; preds = %1730
  br label %1737

; <label>:1737:                                   ; preds = %1737, %1736
  %1738 = phi i64 [ %1750, %1737 ], [ 0, %1736 ]
  %1739 = phi i64 [ %1751, %1737 ], [ %1734, %1736 ]
  %1740 = getelementptr i8, i8* %1706, i64 %1738
  %1741 = getelementptr i8, i8* %1705, i64 %1738
  %1742 = bitcast i8* %1741 to <16 x i8>*
  %1743 = load <16 x i8>, <16 x i8>* %1742, align 1
  %1744 = getelementptr i8, i8* %1741, i64 16
  %1745 = bitcast i8* %1744 to <16 x i8>*
  %1746 = load <16 x i8>, <16 x i8>* %1745, align 1
  %1747 = bitcast i8* %1740 to <16 x i8>*
  store <16 x i8> %1743, <16 x i8>* %1747, align 1
  %1748 = getelementptr i8, i8* %1740, i64 16
  %1749 = bitcast i8* %1748 to <16 x i8>*
  store <16 x i8> %1746, <16 x i8>* %1749, align 1
  %1750 = add i64 %1738, 32
  %1751 = add i64 %1739, -1
  %1752 = icmp eq i64 %1751, 0
  br i1 %1752, label %1753, label %1737

; <label>:1753:                                   ; preds = %1737
  br label %1754

; <label>:1754:                                   ; preds = %1730, %1753
  %1755 = phi i64 [ 0, %1730 ], [ %1750, %1753 ]
  %1756 = icmp ult i64 %1731, 96
  br i1 %1756, label %1806, label %1757

; <label>:1757:                                   ; preds = %1754
  br label %1758

; <label>:1758:                                   ; preds = %1758, %1757
  %1759 = phi i64 [ %1755, %1757 ], [ %1803, %1758 ]
  %1760 = getelementptr i8, i8* %1706, i64 %1759
  %1761 = getelementptr i8, i8* %1705, i64 %1759
  %1762 = bitcast i8* %1761 to <16 x i8>*
  %1763 = load <16 x i8>, <16 x i8>* %1762, align 1
  %1764 = getelementptr i8, i8* %1761, i64 16
  %1765 = bitcast i8* %1764 to <16 x i8>*
  %1766 = load <16 x i8>, <16 x i8>* %1765, align 1
  %1767 = bitcast i8* %1760 to <16 x i8>*
  store <16 x i8> %1763, <16 x i8>* %1767, align 1
  %1768 = getelementptr i8, i8* %1760, i64 16
  %1769 = bitcast i8* %1768 to <16 x i8>*
  store <16 x i8> %1766, <16 x i8>* %1769, align 1
  %1770 = add i64 %1759, 32
  %1771 = getelementptr i8, i8* %1706, i64 %1770
  %1772 = getelementptr i8, i8* %1705, i64 %1770
  %1773 = bitcast i8* %1772 to <16 x i8>*
  %1774 = load <16 x i8>, <16 x i8>* %1773, align 1
  %1775 = getelementptr i8, i8* %1772, i64 16
  %1776 = bitcast i8* %1775 to <16 x i8>*
  %1777 = load <16 x i8>, <16 x i8>* %1776, align 1
  %1778 = bitcast i8* %1771 to <16 x i8>*
  store <16 x i8> %1774, <16 x i8>* %1778, align 1
  %1779 = getelementptr i8, i8* %1771, i64 16
  %1780 = bitcast i8* %1779 to <16 x i8>*
  store <16 x i8> %1777, <16 x i8>* %1780, align 1
  %1781 = add i64 %1759, 64
  %1782 = getelementptr i8, i8* %1706, i64 %1781
  %1783 = getelementptr i8, i8* %1705, i64 %1781
  %1784 = bitcast i8* %1783 to <16 x i8>*
  %1785 = load <16 x i8>, <16 x i8>* %1784, align 1
  %1786 = getelementptr i8, i8* %1783, i64 16
  %1787 = bitcast i8* %1786 to <16 x i8>*
  %1788 = load <16 x i8>, <16 x i8>* %1787, align 1
  %1789 = bitcast i8* %1782 to <16 x i8>*
  store <16 x i8> %1785, <16 x i8>* %1789, align 1
  %1790 = getelementptr i8, i8* %1782, i64 16
  %1791 = bitcast i8* %1790 to <16 x i8>*
  store <16 x i8> %1788, <16 x i8>* %1791, align 1
  %1792 = add i64 %1759, 96
  %1793 = getelementptr i8, i8* %1706, i64 %1792
  %1794 = getelementptr i8, i8* %1705, i64 %1792
  %1795 = bitcast i8* %1794 to <16 x i8>*
  %1796 = load <16 x i8>, <16 x i8>* %1795, align 1
  %1797 = getelementptr i8, i8* %1794, i64 16
  %1798 = bitcast i8* %1797 to <16 x i8>*
  %1799 = load <16 x i8>, <16 x i8>* %1798, align 1
  %1800 = bitcast i8* %1793 to <16 x i8>*
  store <16 x i8> %1796, <16 x i8>* %1800, align 1
  %1801 = getelementptr i8, i8* %1793, i64 16
  %1802 = bitcast i8* %1801 to <16 x i8>*
  store <16 x i8> %1799, <16 x i8>* %1802, align 1
  %1803 = add i64 %1759, 128
  %1804 = icmp eq i64 %1803, %1718
  br i1 %1804, label %1805, label %1758

; <label>:1805:                                   ; preds = %1758
  br label %1806

; <label>:1806:                                   ; preds = %1754, %1805
  %1807 = icmp eq i64 %1712, %1718
  br i1 %1807, label %1829, label %1714

; <label>:1808:                                   ; preds = %1694
  %1809 = zext i32 %1698 to i64
  %1810 = icmp ult i8 %1697, 64
  %1811 = shl i64 1, %1809
  %1812 = and i64 %1811, 317209104613377
  %1813 = icmp ne i64 %1812, 0
  %1814 = and i1 %1810, %1813
  br i1 %1814, label %1815, label %1817

; <label>:1815:                                   ; preds = %1808
  %1816 = getelementptr inbounds i8, i8* %1695, i64 1
  store i8 %1697, i8* %1695, align 1
  br label %1817

; <label>:1817:                                   ; preds = %1815, %1808
  %1818 = phi i8* [ %1816, %1815 ], [ %1695, %1808 ]
  %1819 = getelementptr inbounds i8, i8* %1696, i64 1
  %1820 = icmp ult i8* %1819, %1691
  br i1 %1820, label %1694, label %1701

; <label>:1821:                                   ; preds = %1714, %1821
  %1822 = phi i8* [ %1826, %1821 ], [ %1715, %1714 ]
  %1823 = phi i8* [ %1824, %1821 ], [ %1716, %1714 ]
  %1824 = getelementptr inbounds i8, i8* %1823, i64 1
  %1825 = load i8, i8* %1823, align 1
  %1826 = getelementptr inbounds i8, i8* %1822, i64 1
  store i8 %1825, i8* %1822, align 1
  %1827 = icmp eq i8* %1824, %1691
  br i1 %1827, label %1828, label %1821

; <label>:1828:                                   ; preds = %1821
  br label %1829

; <label>:1829:                                   ; preds = %1828, %1806
  %1830 = getelementptr i8, i8* %0, i64 %1710
  %1831 = ptrtoint i8* %1830 to i64
  %1832 = getelementptr i8, i8* %1706, i64 %1831
  br label %1833

; <label>:1833:                                   ; preds = %1704, %1829
  %1834 = phi i8* [ %1706, %1704 ], [ %1832, %1829 ]
  %1835 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1834, i1 false) #9
  %1836 = tail call i8* @__memcpy_chk(i8* %1834, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %1835) #9
  %1837 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %1689) #9
  br label %4067

; <label>:1838:                                   ; preds = %6
  %1839 = getelementptr inbounds i8, i8* %5, i64 28
  %1840 = bitcast i8* %1839 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = tail call %struct.passwd* @getpwuid(i32 %1841) #9
  %1843 = icmp eq %struct.passwd* %1842, null
  br i1 %1843, label %1847, label %1844

; <label>:1844:                                   ; preds = %1838
  %1845 = getelementptr inbounds %struct.passwd, %struct.passwd* %1842, i64 0, i32 0
  %1846 = load i8*, i8** %1845, align 8
  br label %1847

; <label>:1847:                                   ; preds = %1838, %1844
  %1848 = phi i8* [ %1846, %1844 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i64 0, i64 0), %1838 ]
  %1849 = getelementptr inbounds i8, i8* %0, i64 1
  %1850 = getelementptr inbounds i8, i8* %0, i64 %1
  %1851 = icmp sgt i64 %1, 1
  br i1 %1851, label %1852, label %1863

; <label>:1852:                                   ; preds = %1847
  br label %1853

; <label>:1853:                                   ; preds = %1852, %1976
  %1854 = phi i8* [ %1977, %1976 ], [ %1849, %1852 ]
  %1855 = phi i8* [ %1978, %1976 ], [ %1849, %1852 ]
  %1856 = load i8, i8* %1855, align 1
  %1857 = sext i8 %1856 to i32
  %1858 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %1857, i64 8) #9
  %1859 = icmp eq i8* %1858, null
  br i1 %1859, label %1860, label %1967

; <label>:1860:                                   ; preds = %1853, %1976
  %1861 = phi i8* [ %1978, %1976 ], [ %1855, %1853 ]
  %1862 = phi i8* [ %1977, %1976 ], [ %1854, %1853 ]
  br label %1863

; <label>:1863:                                   ; preds = %1860, %1847
  %1864 = phi i8* [ %1849, %1847 ], [ %1861, %1860 ]
  %1865 = phi i8* [ %1849, %1847 ], [ %1862, %1860 ]
  %1866 = ptrtoint i8* %1864 to i64
  %1867 = icmp ult i8* %1864, %1850
  br i1 %1867, label %1868, label %1992

; <label>:1868:                                   ; preds = %1863
  %1869 = sub i64 %1, %1866
  %1870 = getelementptr i8, i8* %0, i64 %1869
  %1871 = ptrtoint i8* %1870 to i64
  %1872 = icmp ult i8* %1870, inttoptr (i64 32 to i8*)
  br i1 %1872, label %1873, label %1876

; <label>:1873:                                   ; preds = %1965, %1879, %1876, %1868
  %1874 = phi i8* [ %1865, %1879 ], [ %1865, %1876 ], [ %1865, %1868 ], [ %1887, %1965 ]
  %1875 = phi i8* [ %1864, %1879 ], [ %1864, %1876 ], [ %1864, %1868 ], [ %1888, %1965 ]
  br label %1980

; <label>:1876:                                   ; preds = %1868
  %1877 = and i64 %1871, -32
  %1878 = icmp eq i64 %1877, 0
  br i1 %1878, label %1873, label %1879

; <label>:1879:                                   ; preds = %1876
  %1880 = sub i64 %1, %1866
  %1881 = getelementptr i8, i8* %0, i64 %1880
  %1882 = ptrtoint i8* %1881 to i64
  %1883 = getelementptr i8, i8* %1865, i64 %1882
  %1884 = icmp ult i8* %1865, %1850
  %1885 = icmp ult i8* %1864, %1883
  %1886 = and i1 %1884, %1885
  %1887 = getelementptr i8, i8* %1865, i64 %1877
  %1888 = getelementptr i8, i8* %1864, i64 %1877
  br i1 %1886, label %1873, label %1889

; <label>:1889:                                   ; preds = %1879
  %1890 = add i64 %1877, -32
  %1891 = lshr exact i64 %1890, 5
  %1892 = add nuw nsw i64 %1891, 1
  %1893 = and i64 %1892, 3
  %1894 = icmp eq i64 %1893, 0
  br i1 %1894, label %1913, label %1895

; <label>:1895:                                   ; preds = %1889
  br label %1896

; <label>:1896:                                   ; preds = %1896, %1895
  %1897 = phi i64 [ %1909, %1896 ], [ 0, %1895 ]
  %1898 = phi i64 [ %1910, %1896 ], [ %1893, %1895 ]
  %1899 = getelementptr i8, i8* %1865, i64 %1897
  %1900 = getelementptr i8, i8* %1864, i64 %1897
  %1901 = bitcast i8* %1900 to <16 x i8>*
  %1902 = load <16 x i8>, <16 x i8>* %1901, align 1
  %1903 = getelementptr i8, i8* %1900, i64 16
  %1904 = bitcast i8* %1903 to <16 x i8>*
  %1905 = load <16 x i8>, <16 x i8>* %1904, align 1
  %1906 = bitcast i8* %1899 to <16 x i8>*
  store <16 x i8> %1902, <16 x i8>* %1906, align 1
  %1907 = getelementptr i8, i8* %1899, i64 16
  %1908 = bitcast i8* %1907 to <16 x i8>*
  store <16 x i8> %1905, <16 x i8>* %1908, align 1
  %1909 = add i64 %1897, 32
  %1910 = add i64 %1898, -1
  %1911 = icmp eq i64 %1910, 0
  br i1 %1911, label %1912, label %1896

; <label>:1912:                                   ; preds = %1896
  br label %1913

; <label>:1913:                                   ; preds = %1889, %1912
  %1914 = phi i64 [ 0, %1889 ], [ %1909, %1912 ]
  %1915 = icmp ult i64 %1890, 96
  br i1 %1915, label %1965, label %1916

; <label>:1916:                                   ; preds = %1913
  br label %1917

; <label>:1917:                                   ; preds = %1917, %1916
  %1918 = phi i64 [ %1914, %1916 ], [ %1962, %1917 ]
  %1919 = getelementptr i8, i8* %1865, i64 %1918
  %1920 = getelementptr i8, i8* %1864, i64 %1918
  %1921 = bitcast i8* %1920 to <16 x i8>*
  %1922 = load <16 x i8>, <16 x i8>* %1921, align 1
  %1923 = getelementptr i8, i8* %1920, i64 16
  %1924 = bitcast i8* %1923 to <16 x i8>*
  %1925 = load <16 x i8>, <16 x i8>* %1924, align 1
  %1926 = bitcast i8* %1919 to <16 x i8>*
  store <16 x i8> %1922, <16 x i8>* %1926, align 1
  %1927 = getelementptr i8, i8* %1919, i64 16
  %1928 = bitcast i8* %1927 to <16 x i8>*
  store <16 x i8> %1925, <16 x i8>* %1928, align 1
  %1929 = add i64 %1918, 32
  %1930 = getelementptr i8, i8* %1865, i64 %1929
  %1931 = getelementptr i8, i8* %1864, i64 %1929
  %1932 = bitcast i8* %1931 to <16 x i8>*
  %1933 = load <16 x i8>, <16 x i8>* %1932, align 1
  %1934 = getelementptr i8, i8* %1931, i64 16
  %1935 = bitcast i8* %1934 to <16 x i8>*
  %1936 = load <16 x i8>, <16 x i8>* %1935, align 1
  %1937 = bitcast i8* %1930 to <16 x i8>*
  store <16 x i8> %1933, <16 x i8>* %1937, align 1
  %1938 = getelementptr i8, i8* %1930, i64 16
  %1939 = bitcast i8* %1938 to <16 x i8>*
  store <16 x i8> %1936, <16 x i8>* %1939, align 1
  %1940 = add i64 %1918, 64
  %1941 = getelementptr i8, i8* %1865, i64 %1940
  %1942 = getelementptr i8, i8* %1864, i64 %1940
  %1943 = bitcast i8* %1942 to <16 x i8>*
  %1944 = load <16 x i8>, <16 x i8>* %1943, align 1
  %1945 = getelementptr i8, i8* %1942, i64 16
  %1946 = bitcast i8* %1945 to <16 x i8>*
  %1947 = load <16 x i8>, <16 x i8>* %1946, align 1
  %1948 = bitcast i8* %1941 to <16 x i8>*
  store <16 x i8> %1944, <16 x i8>* %1948, align 1
  %1949 = getelementptr i8, i8* %1941, i64 16
  %1950 = bitcast i8* %1949 to <16 x i8>*
  store <16 x i8> %1947, <16 x i8>* %1950, align 1
  %1951 = add i64 %1918, 96
  %1952 = getelementptr i8, i8* %1865, i64 %1951
  %1953 = getelementptr i8, i8* %1864, i64 %1951
  %1954 = bitcast i8* %1953 to <16 x i8>*
  %1955 = load <16 x i8>, <16 x i8>* %1954, align 1
  %1956 = getelementptr i8, i8* %1953, i64 16
  %1957 = bitcast i8* %1956 to <16 x i8>*
  %1958 = load <16 x i8>, <16 x i8>* %1957, align 1
  %1959 = bitcast i8* %1952 to <16 x i8>*
  store <16 x i8> %1955, <16 x i8>* %1959, align 1
  %1960 = getelementptr i8, i8* %1952, i64 16
  %1961 = bitcast i8* %1960 to <16 x i8>*
  store <16 x i8> %1958, <16 x i8>* %1961, align 1
  %1962 = add i64 %1918, 128
  %1963 = icmp eq i64 %1962, %1877
  br i1 %1963, label %1964, label %1917

; <label>:1964:                                   ; preds = %1917
  br label %1965

; <label>:1965:                                   ; preds = %1913, %1964
  %1966 = icmp eq i64 %1871, %1877
  br i1 %1966, label %1988, label %1873

; <label>:1967:                                   ; preds = %1853
  %1968 = zext i32 %1857 to i64
  %1969 = icmp ult i8 %1856, 64
  %1970 = shl i64 1, %1968
  %1971 = and i64 %1970, 35184372088833
  %1972 = icmp ne i64 %1971, 0
  %1973 = and i1 %1969, %1972
  br i1 %1973, label %1974, label %1976

; <label>:1974:                                   ; preds = %1967
  %1975 = getelementptr inbounds i8, i8* %1854, i64 1
  store i8 %1856, i8* %1854, align 1
  br label %1976

; <label>:1976:                                   ; preds = %1974, %1967
  %1977 = phi i8* [ %1975, %1974 ], [ %1854, %1967 ]
  %1978 = getelementptr inbounds i8, i8* %1855, i64 1
  %1979 = icmp ult i8* %1978, %1850
  br i1 %1979, label %1853, label %1860

; <label>:1980:                                   ; preds = %1873, %1980
  %1981 = phi i8* [ %1985, %1980 ], [ %1874, %1873 ]
  %1982 = phi i8* [ %1983, %1980 ], [ %1875, %1873 ]
  %1983 = getelementptr inbounds i8, i8* %1982, i64 1
  %1984 = load i8, i8* %1982, align 1
  %1985 = getelementptr inbounds i8, i8* %1981, i64 1
  store i8 %1984, i8* %1981, align 1
  %1986 = icmp eq i8* %1983, %1850
  br i1 %1986, label %1987, label %1980

; <label>:1987:                                   ; preds = %1980
  br label %1988

; <label>:1988:                                   ; preds = %1987, %1965
  %1989 = getelementptr i8, i8* %0, i64 %1869
  %1990 = ptrtoint i8* %1989 to i64
  %1991 = getelementptr i8, i8* %1865, i64 %1990
  br label %1992

; <label>:1992:                                   ; preds = %1863, %1988
  %1993 = phi i8* [ %1865, %1863 ], [ %1991, %1988 ]
  %1994 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %1993, i1 false) #9
  %1995 = tail call i8* @__memcpy_chk(i8* %1993, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %1994) #9
  %1996 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %1848) #9
  br label %4067

; <label>:1997:                                   ; preds = %6
  %1998 = getelementptr inbounds i8, i8* %5, i64 32
  %1999 = bitcast i8* %1998 to i32*
  %2000 = load i32, i32* %1999, align 8
  %2001 = zext i32 %2000 to i64
  %2002 = getelementptr inbounds i8, i8* %0, i64 1
  %2003 = getelementptr inbounds i8, i8* %0, i64 %1
  %2004 = icmp sgt i64 %1, 1
  br i1 %2004, label %2005, label %2016

; <label>:2005:                                   ; preds = %1997
  br label %2006

; <label>:2006:                                   ; preds = %2005, %2129
  %2007 = phi i8* [ %2130, %2129 ], [ %2002, %2005 ]
  %2008 = phi i8* [ %2131, %2129 ], [ %2002, %2005 ]
  %2009 = load i8, i8* %2008, align 1
  %2010 = sext i8 %2009 to i32
  %2011 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2010, i64 8) #9
  %2012 = icmp eq i8* %2011, null
  br i1 %2012, label %2013, label %2120

; <label>:2013:                                   ; preds = %2006, %2129
  %2014 = phi i8* [ %2131, %2129 ], [ %2008, %2006 ]
  %2015 = phi i8* [ %2130, %2129 ], [ %2007, %2006 ]
  br label %2016

; <label>:2016:                                   ; preds = %2013, %1997
  %2017 = phi i8* [ %2002, %1997 ], [ %2014, %2013 ]
  %2018 = phi i8* [ %2002, %1997 ], [ %2015, %2013 ]
  %2019 = ptrtoint i8* %2017 to i64
  %2020 = icmp ult i8* %2017, %2003
  br i1 %2020, label %2021, label %2145

; <label>:2021:                                   ; preds = %2016
  %2022 = sub i64 %1, %2019
  %2023 = getelementptr i8, i8* %0, i64 %2022
  %2024 = ptrtoint i8* %2023 to i64
  %2025 = icmp ult i8* %2023, inttoptr (i64 32 to i8*)
  br i1 %2025, label %2026, label %2029

; <label>:2026:                                   ; preds = %2118, %2032, %2029, %2021
  %2027 = phi i8* [ %2018, %2032 ], [ %2018, %2029 ], [ %2018, %2021 ], [ %2040, %2118 ]
  %2028 = phi i8* [ %2017, %2032 ], [ %2017, %2029 ], [ %2017, %2021 ], [ %2041, %2118 ]
  br label %2133

; <label>:2029:                                   ; preds = %2021
  %2030 = and i64 %2024, -32
  %2031 = icmp eq i64 %2030, 0
  br i1 %2031, label %2026, label %2032

; <label>:2032:                                   ; preds = %2029
  %2033 = sub i64 %1, %2019
  %2034 = getelementptr i8, i8* %0, i64 %2033
  %2035 = ptrtoint i8* %2034 to i64
  %2036 = getelementptr i8, i8* %2018, i64 %2035
  %2037 = icmp ult i8* %2018, %2003
  %2038 = icmp ult i8* %2017, %2036
  %2039 = and i1 %2037, %2038
  %2040 = getelementptr i8, i8* %2018, i64 %2030
  %2041 = getelementptr i8, i8* %2017, i64 %2030
  br i1 %2039, label %2026, label %2042

; <label>:2042:                                   ; preds = %2032
  %2043 = add i64 %2030, -32
  %2044 = lshr exact i64 %2043, 5
  %2045 = add nuw nsw i64 %2044, 1
  %2046 = and i64 %2045, 3
  %2047 = icmp eq i64 %2046, 0
  br i1 %2047, label %2066, label %2048

; <label>:2048:                                   ; preds = %2042
  br label %2049

; <label>:2049:                                   ; preds = %2049, %2048
  %2050 = phi i64 [ %2062, %2049 ], [ 0, %2048 ]
  %2051 = phi i64 [ %2063, %2049 ], [ %2046, %2048 ]
  %2052 = getelementptr i8, i8* %2018, i64 %2050
  %2053 = getelementptr i8, i8* %2017, i64 %2050
  %2054 = bitcast i8* %2053 to <16 x i8>*
  %2055 = load <16 x i8>, <16 x i8>* %2054, align 1
  %2056 = getelementptr i8, i8* %2053, i64 16
  %2057 = bitcast i8* %2056 to <16 x i8>*
  %2058 = load <16 x i8>, <16 x i8>* %2057, align 1
  %2059 = bitcast i8* %2052 to <16 x i8>*
  store <16 x i8> %2055, <16 x i8>* %2059, align 1
  %2060 = getelementptr i8, i8* %2052, i64 16
  %2061 = bitcast i8* %2060 to <16 x i8>*
  store <16 x i8> %2058, <16 x i8>* %2061, align 1
  %2062 = add i64 %2050, 32
  %2063 = add i64 %2051, -1
  %2064 = icmp eq i64 %2063, 0
  br i1 %2064, label %2065, label %2049

; <label>:2065:                                   ; preds = %2049
  br label %2066

; <label>:2066:                                   ; preds = %2042, %2065
  %2067 = phi i64 [ 0, %2042 ], [ %2062, %2065 ]
  %2068 = icmp ult i64 %2043, 96
  br i1 %2068, label %2118, label %2069

; <label>:2069:                                   ; preds = %2066
  br label %2070

; <label>:2070:                                   ; preds = %2070, %2069
  %2071 = phi i64 [ %2067, %2069 ], [ %2115, %2070 ]
  %2072 = getelementptr i8, i8* %2018, i64 %2071
  %2073 = getelementptr i8, i8* %2017, i64 %2071
  %2074 = bitcast i8* %2073 to <16 x i8>*
  %2075 = load <16 x i8>, <16 x i8>* %2074, align 1
  %2076 = getelementptr i8, i8* %2073, i64 16
  %2077 = bitcast i8* %2076 to <16 x i8>*
  %2078 = load <16 x i8>, <16 x i8>* %2077, align 1
  %2079 = bitcast i8* %2072 to <16 x i8>*
  store <16 x i8> %2075, <16 x i8>* %2079, align 1
  %2080 = getelementptr i8, i8* %2072, i64 16
  %2081 = bitcast i8* %2080 to <16 x i8>*
  store <16 x i8> %2078, <16 x i8>* %2081, align 1
  %2082 = add i64 %2071, 32
  %2083 = getelementptr i8, i8* %2018, i64 %2082
  %2084 = getelementptr i8, i8* %2017, i64 %2082
  %2085 = bitcast i8* %2084 to <16 x i8>*
  %2086 = load <16 x i8>, <16 x i8>* %2085, align 1
  %2087 = getelementptr i8, i8* %2084, i64 16
  %2088 = bitcast i8* %2087 to <16 x i8>*
  %2089 = load <16 x i8>, <16 x i8>* %2088, align 1
  %2090 = bitcast i8* %2083 to <16 x i8>*
  store <16 x i8> %2086, <16 x i8>* %2090, align 1
  %2091 = getelementptr i8, i8* %2083, i64 16
  %2092 = bitcast i8* %2091 to <16 x i8>*
  store <16 x i8> %2089, <16 x i8>* %2092, align 1
  %2093 = add i64 %2071, 64
  %2094 = getelementptr i8, i8* %2018, i64 %2093
  %2095 = getelementptr i8, i8* %2017, i64 %2093
  %2096 = bitcast i8* %2095 to <16 x i8>*
  %2097 = load <16 x i8>, <16 x i8>* %2096, align 1
  %2098 = getelementptr i8, i8* %2095, i64 16
  %2099 = bitcast i8* %2098 to <16 x i8>*
  %2100 = load <16 x i8>, <16 x i8>* %2099, align 1
  %2101 = bitcast i8* %2094 to <16 x i8>*
  store <16 x i8> %2097, <16 x i8>* %2101, align 1
  %2102 = getelementptr i8, i8* %2094, i64 16
  %2103 = bitcast i8* %2102 to <16 x i8>*
  store <16 x i8> %2100, <16 x i8>* %2103, align 1
  %2104 = add i64 %2071, 96
  %2105 = getelementptr i8, i8* %2018, i64 %2104
  %2106 = getelementptr i8, i8* %2017, i64 %2104
  %2107 = bitcast i8* %2106 to <16 x i8>*
  %2108 = load <16 x i8>, <16 x i8>* %2107, align 1
  %2109 = getelementptr i8, i8* %2106, i64 16
  %2110 = bitcast i8* %2109 to <16 x i8>*
  %2111 = load <16 x i8>, <16 x i8>* %2110, align 1
  %2112 = bitcast i8* %2105 to <16 x i8>*
  store <16 x i8> %2108, <16 x i8>* %2112, align 1
  %2113 = getelementptr i8, i8* %2105, i64 16
  %2114 = bitcast i8* %2113 to <16 x i8>*
  store <16 x i8> %2111, <16 x i8>* %2114, align 1
  %2115 = add i64 %2071, 128
  %2116 = icmp eq i64 %2115, %2030
  br i1 %2116, label %2117, label %2070

; <label>:2117:                                   ; preds = %2070
  br label %2118

; <label>:2118:                                   ; preds = %2066, %2117
  %2119 = icmp eq i64 %2024, %2030
  br i1 %2119, label %2141, label %2026

; <label>:2120:                                   ; preds = %2006
  %2121 = zext i32 %2010 to i64
  %2122 = icmp ult i8 %2009, 64
  %2123 = shl i64 1, %2121
  %2124 = and i64 %2123, 317209104613377
  %2125 = icmp ne i64 %2124, 0
  %2126 = and i1 %2122, %2125
  br i1 %2126, label %2127, label %2129

; <label>:2127:                                   ; preds = %2120
  %2128 = getelementptr inbounds i8, i8* %2007, i64 1
  store i8 %2009, i8* %2007, align 1
  br label %2129

; <label>:2129:                                   ; preds = %2127, %2120
  %2130 = phi i8* [ %2128, %2127 ], [ %2007, %2120 ]
  %2131 = getelementptr inbounds i8, i8* %2008, i64 1
  %2132 = icmp ult i8* %2131, %2003
  br i1 %2132, label %2006, label %2013

; <label>:2133:                                   ; preds = %2026, %2133
  %2134 = phi i8* [ %2138, %2133 ], [ %2027, %2026 ]
  %2135 = phi i8* [ %2136, %2133 ], [ %2028, %2026 ]
  %2136 = getelementptr inbounds i8, i8* %2135, i64 1
  %2137 = load i8, i8* %2135, align 1
  %2138 = getelementptr inbounds i8, i8* %2134, i64 1
  store i8 %2137, i8* %2134, align 1
  %2139 = icmp eq i8* %2136, %2003
  br i1 %2139, label %2140, label %2133

; <label>:2140:                                   ; preds = %2133
  br label %2141

; <label>:2141:                                   ; preds = %2140, %2118
  %2142 = getelementptr i8, i8* %0, i64 %2022
  %2143 = ptrtoint i8* %2142 to i64
  %2144 = getelementptr i8, i8* %2018, i64 %2143
  br label %2145

; <label>:2145:                                   ; preds = %2016, %2141
  %2146 = phi i8* [ %2018, %2016 ], [ %2144, %2141 ]
  %2147 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2146, i1 false) #9
  %2148 = tail call i8* @__memcpy_chk(i8* %2146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %2147) #9
  %2149 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %2001) #9
  br label %4067

; <label>:2150:                                   ; preds = %6
  %2151 = getelementptr inbounds i8, i8* %5, i64 32
  %2152 = bitcast i8* %2151 to i32*
  %2153 = load i32, i32* %2152, align 8
  %2154 = tail call %struct.group* @getgrgid(i32 %2153) #9
  %2155 = icmp eq %struct.group* %2154, null
  br i1 %2155, label %2159, label %2156

; <label>:2156:                                   ; preds = %2150
  %2157 = getelementptr inbounds %struct.group, %struct.group* %2154, i64 0, i32 0
  %2158 = load i8*, i8** %2157, align 8
  br label %2159

; <label>:2159:                                   ; preds = %2150, %2156
  %2160 = phi i8* [ %2158, %2156 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i64 0, i64 0), %2150 ]
  %2161 = getelementptr inbounds i8, i8* %0, i64 1
  %2162 = getelementptr inbounds i8, i8* %0, i64 %1
  %2163 = icmp sgt i64 %1, 1
  br i1 %2163, label %2164, label %2175

; <label>:2164:                                   ; preds = %2159
  br label %2165

; <label>:2165:                                   ; preds = %2164, %2288
  %2166 = phi i8* [ %2289, %2288 ], [ %2161, %2164 ]
  %2167 = phi i8* [ %2290, %2288 ], [ %2161, %2164 ]
  %2168 = load i8, i8* %2167, align 1
  %2169 = sext i8 %2168 to i32
  %2170 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2169, i64 8) #9
  %2171 = icmp eq i8* %2170, null
  br i1 %2171, label %2172, label %2279

; <label>:2172:                                   ; preds = %2165, %2288
  %2173 = phi i8* [ %2290, %2288 ], [ %2167, %2165 ]
  %2174 = phi i8* [ %2289, %2288 ], [ %2166, %2165 ]
  br label %2175

; <label>:2175:                                   ; preds = %2172, %2159
  %2176 = phi i8* [ %2161, %2159 ], [ %2173, %2172 ]
  %2177 = phi i8* [ %2161, %2159 ], [ %2174, %2172 ]
  %2178 = ptrtoint i8* %2176 to i64
  %2179 = icmp ult i8* %2176, %2162
  br i1 %2179, label %2180, label %2304

; <label>:2180:                                   ; preds = %2175
  %2181 = sub i64 %1, %2178
  %2182 = getelementptr i8, i8* %0, i64 %2181
  %2183 = ptrtoint i8* %2182 to i64
  %2184 = icmp ult i8* %2182, inttoptr (i64 32 to i8*)
  br i1 %2184, label %2185, label %2188

; <label>:2185:                                   ; preds = %2277, %2191, %2188, %2180
  %2186 = phi i8* [ %2177, %2191 ], [ %2177, %2188 ], [ %2177, %2180 ], [ %2199, %2277 ]
  %2187 = phi i8* [ %2176, %2191 ], [ %2176, %2188 ], [ %2176, %2180 ], [ %2200, %2277 ]
  br label %2292

; <label>:2188:                                   ; preds = %2180
  %2189 = and i64 %2183, -32
  %2190 = icmp eq i64 %2189, 0
  br i1 %2190, label %2185, label %2191

; <label>:2191:                                   ; preds = %2188
  %2192 = sub i64 %1, %2178
  %2193 = getelementptr i8, i8* %0, i64 %2192
  %2194 = ptrtoint i8* %2193 to i64
  %2195 = getelementptr i8, i8* %2177, i64 %2194
  %2196 = icmp ult i8* %2177, %2162
  %2197 = icmp ult i8* %2176, %2195
  %2198 = and i1 %2196, %2197
  %2199 = getelementptr i8, i8* %2177, i64 %2189
  %2200 = getelementptr i8, i8* %2176, i64 %2189
  br i1 %2198, label %2185, label %2201

; <label>:2201:                                   ; preds = %2191
  %2202 = add i64 %2189, -32
  %2203 = lshr exact i64 %2202, 5
  %2204 = add nuw nsw i64 %2203, 1
  %2205 = and i64 %2204, 3
  %2206 = icmp eq i64 %2205, 0
  br i1 %2206, label %2225, label %2207

; <label>:2207:                                   ; preds = %2201
  br label %2208

; <label>:2208:                                   ; preds = %2208, %2207
  %2209 = phi i64 [ %2221, %2208 ], [ 0, %2207 ]
  %2210 = phi i64 [ %2222, %2208 ], [ %2205, %2207 ]
  %2211 = getelementptr i8, i8* %2177, i64 %2209
  %2212 = getelementptr i8, i8* %2176, i64 %2209
  %2213 = bitcast i8* %2212 to <16 x i8>*
  %2214 = load <16 x i8>, <16 x i8>* %2213, align 1
  %2215 = getelementptr i8, i8* %2212, i64 16
  %2216 = bitcast i8* %2215 to <16 x i8>*
  %2217 = load <16 x i8>, <16 x i8>* %2216, align 1
  %2218 = bitcast i8* %2211 to <16 x i8>*
  store <16 x i8> %2214, <16 x i8>* %2218, align 1
  %2219 = getelementptr i8, i8* %2211, i64 16
  %2220 = bitcast i8* %2219 to <16 x i8>*
  store <16 x i8> %2217, <16 x i8>* %2220, align 1
  %2221 = add i64 %2209, 32
  %2222 = add i64 %2210, -1
  %2223 = icmp eq i64 %2222, 0
  br i1 %2223, label %2224, label %2208

; <label>:2224:                                   ; preds = %2208
  br label %2225

; <label>:2225:                                   ; preds = %2201, %2224
  %2226 = phi i64 [ 0, %2201 ], [ %2221, %2224 ]
  %2227 = icmp ult i64 %2202, 96
  br i1 %2227, label %2277, label %2228

; <label>:2228:                                   ; preds = %2225
  br label %2229

; <label>:2229:                                   ; preds = %2229, %2228
  %2230 = phi i64 [ %2226, %2228 ], [ %2274, %2229 ]
  %2231 = getelementptr i8, i8* %2177, i64 %2230
  %2232 = getelementptr i8, i8* %2176, i64 %2230
  %2233 = bitcast i8* %2232 to <16 x i8>*
  %2234 = load <16 x i8>, <16 x i8>* %2233, align 1
  %2235 = getelementptr i8, i8* %2232, i64 16
  %2236 = bitcast i8* %2235 to <16 x i8>*
  %2237 = load <16 x i8>, <16 x i8>* %2236, align 1
  %2238 = bitcast i8* %2231 to <16 x i8>*
  store <16 x i8> %2234, <16 x i8>* %2238, align 1
  %2239 = getelementptr i8, i8* %2231, i64 16
  %2240 = bitcast i8* %2239 to <16 x i8>*
  store <16 x i8> %2237, <16 x i8>* %2240, align 1
  %2241 = add i64 %2230, 32
  %2242 = getelementptr i8, i8* %2177, i64 %2241
  %2243 = getelementptr i8, i8* %2176, i64 %2241
  %2244 = bitcast i8* %2243 to <16 x i8>*
  %2245 = load <16 x i8>, <16 x i8>* %2244, align 1
  %2246 = getelementptr i8, i8* %2243, i64 16
  %2247 = bitcast i8* %2246 to <16 x i8>*
  %2248 = load <16 x i8>, <16 x i8>* %2247, align 1
  %2249 = bitcast i8* %2242 to <16 x i8>*
  store <16 x i8> %2245, <16 x i8>* %2249, align 1
  %2250 = getelementptr i8, i8* %2242, i64 16
  %2251 = bitcast i8* %2250 to <16 x i8>*
  store <16 x i8> %2248, <16 x i8>* %2251, align 1
  %2252 = add i64 %2230, 64
  %2253 = getelementptr i8, i8* %2177, i64 %2252
  %2254 = getelementptr i8, i8* %2176, i64 %2252
  %2255 = bitcast i8* %2254 to <16 x i8>*
  %2256 = load <16 x i8>, <16 x i8>* %2255, align 1
  %2257 = getelementptr i8, i8* %2254, i64 16
  %2258 = bitcast i8* %2257 to <16 x i8>*
  %2259 = load <16 x i8>, <16 x i8>* %2258, align 1
  %2260 = bitcast i8* %2253 to <16 x i8>*
  store <16 x i8> %2256, <16 x i8>* %2260, align 1
  %2261 = getelementptr i8, i8* %2253, i64 16
  %2262 = bitcast i8* %2261 to <16 x i8>*
  store <16 x i8> %2259, <16 x i8>* %2262, align 1
  %2263 = add i64 %2230, 96
  %2264 = getelementptr i8, i8* %2177, i64 %2263
  %2265 = getelementptr i8, i8* %2176, i64 %2263
  %2266 = bitcast i8* %2265 to <16 x i8>*
  %2267 = load <16 x i8>, <16 x i8>* %2266, align 1
  %2268 = getelementptr i8, i8* %2265, i64 16
  %2269 = bitcast i8* %2268 to <16 x i8>*
  %2270 = load <16 x i8>, <16 x i8>* %2269, align 1
  %2271 = bitcast i8* %2264 to <16 x i8>*
  store <16 x i8> %2267, <16 x i8>* %2271, align 1
  %2272 = getelementptr i8, i8* %2264, i64 16
  %2273 = bitcast i8* %2272 to <16 x i8>*
  store <16 x i8> %2270, <16 x i8>* %2273, align 1
  %2274 = add i64 %2230, 128
  %2275 = icmp eq i64 %2274, %2189
  br i1 %2275, label %2276, label %2229

; <label>:2276:                                   ; preds = %2229
  br label %2277

; <label>:2277:                                   ; preds = %2225, %2276
  %2278 = icmp eq i64 %2183, %2189
  br i1 %2278, label %2300, label %2185

; <label>:2279:                                   ; preds = %2165
  %2280 = zext i32 %2169 to i64
  %2281 = icmp ult i8 %2168, 64
  %2282 = shl i64 1, %2280
  %2283 = and i64 %2282, 35184372088833
  %2284 = icmp ne i64 %2283, 0
  %2285 = and i1 %2281, %2284
  br i1 %2285, label %2286, label %2288

; <label>:2286:                                   ; preds = %2279
  %2287 = getelementptr inbounds i8, i8* %2166, i64 1
  store i8 %2168, i8* %2166, align 1
  br label %2288

; <label>:2288:                                   ; preds = %2286, %2279
  %2289 = phi i8* [ %2287, %2286 ], [ %2166, %2279 ]
  %2290 = getelementptr inbounds i8, i8* %2167, i64 1
  %2291 = icmp ult i8* %2290, %2162
  br i1 %2291, label %2165, label %2172

; <label>:2292:                                   ; preds = %2185, %2292
  %2293 = phi i8* [ %2297, %2292 ], [ %2186, %2185 ]
  %2294 = phi i8* [ %2295, %2292 ], [ %2187, %2185 ]
  %2295 = getelementptr inbounds i8, i8* %2294, i64 1
  %2296 = load i8, i8* %2294, align 1
  %2297 = getelementptr inbounds i8, i8* %2293, i64 1
  store i8 %2296, i8* %2293, align 1
  %2298 = icmp eq i8* %2295, %2162
  br i1 %2298, label %2299, label %2292

; <label>:2299:                                   ; preds = %2292
  br label %2300

; <label>:2300:                                   ; preds = %2299, %2277
  %2301 = getelementptr i8, i8* %0, i64 %2181
  %2302 = ptrtoint i8* %2301 to i64
  %2303 = getelementptr i8, i8* %2177, i64 %2302
  br label %2304

; <label>:2304:                                   ; preds = %2175, %2300
  %2305 = phi i8* [ %2177, %2175 ], [ %2303, %2300 ]
  %2306 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2305, i1 false) #9
  %2307 = tail call i8* @__memcpy_chk(i8* %2305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %2306) #9
  %2308 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %2160) #9
  br label %4067

; <label>:2309:                                   ; preds = %6
  %2310 = getelementptr inbounds i8, i8* %5, i64 40
  %2311 = bitcast i8* %2310 to i64*
  %2312 = load i64, i64* %2311, align 8
  %2313 = lshr i64 %2312, 8
  %2314 = and i64 %2313, 4095
  %2315 = lshr i64 %2312, 32
  %2316 = and i64 %2315, 4294963200
  %2317 = or i64 %2314, %2316
  %2318 = getelementptr inbounds i8, i8* %0, i64 1
  %2319 = getelementptr inbounds i8, i8* %0, i64 %1
  %2320 = icmp sgt i64 %1, 1
  br i1 %2320, label %2321, label %2332

; <label>:2321:                                   ; preds = %2309
  br label %2322

; <label>:2322:                                   ; preds = %2321, %2445
  %2323 = phi i8* [ %2446, %2445 ], [ %2318, %2321 ]
  %2324 = phi i8* [ %2447, %2445 ], [ %2318, %2321 ]
  %2325 = load i8, i8* %2324, align 1
  %2326 = sext i8 %2325 to i32
  %2327 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2326, i64 8) #9
  %2328 = icmp eq i8* %2327, null
  br i1 %2328, label %2329, label %2436

; <label>:2329:                                   ; preds = %2322, %2445
  %2330 = phi i8* [ %2447, %2445 ], [ %2324, %2322 ]
  %2331 = phi i8* [ %2446, %2445 ], [ %2323, %2322 ]
  br label %2332

; <label>:2332:                                   ; preds = %2329, %2309
  %2333 = phi i8* [ %2318, %2309 ], [ %2330, %2329 ]
  %2334 = phi i8* [ %2318, %2309 ], [ %2331, %2329 ]
  %2335 = ptrtoint i8* %2333 to i64
  %2336 = icmp ult i8* %2333, %2319
  br i1 %2336, label %2337, label %2461

; <label>:2337:                                   ; preds = %2332
  %2338 = sub i64 %1, %2335
  %2339 = getelementptr i8, i8* %0, i64 %2338
  %2340 = ptrtoint i8* %2339 to i64
  %2341 = icmp ult i8* %2339, inttoptr (i64 32 to i8*)
  br i1 %2341, label %2342, label %2345

; <label>:2342:                                   ; preds = %2434, %2348, %2345, %2337
  %2343 = phi i8* [ %2334, %2348 ], [ %2334, %2345 ], [ %2334, %2337 ], [ %2356, %2434 ]
  %2344 = phi i8* [ %2333, %2348 ], [ %2333, %2345 ], [ %2333, %2337 ], [ %2357, %2434 ]
  br label %2449

; <label>:2345:                                   ; preds = %2337
  %2346 = and i64 %2340, -32
  %2347 = icmp eq i64 %2346, 0
  br i1 %2347, label %2342, label %2348

; <label>:2348:                                   ; preds = %2345
  %2349 = sub i64 %1, %2335
  %2350 = getelementptr i8, i8* %0, i64 %2349
  %2351 = ptrtoint i8* %2350 to i64
  %2352 = getelementptr i8, i8* %2334, i64 %2351
  %2353 = icmp ult i8* %2334, %2319
  %2354 = icmp ult i8* %2333, %2352
  %2355 = and i1 %2353, %2354
  %2356 = getelementptr i8, i8* %2334, i64 %2346
  %2357 = getelementptr i8, i8* %2333, i64 %2346
  br i1 %2355, label %2342, label %2358

; <label>:2358:                                   ; preds = %2348
  %2359 = add i64 %2346, -32
  %2360 = lshr exact i64 %2359, 5
  %2361 = add nuw nsw i64 %2360, 1
  %2362 = and i64 %2361, 3
  %2363 = icmp eq i64 %2362, 0
  br i1 %2363, label %2382, label %2364

; <label>:2364:                                   ; preds = %2358
  br label %2365

; <label>:2365:                                   ; preds = %2365, %2364
  %2366 = phi i64 [ %2378, %2365 ], [ 0, %2364 ]
  %2367 = phi i64 [ %2379, %2365 ], [ %2362, %2364 ]
  %2368 = getelementptr i8, i8* %2334, i64 %2366
  %2369 = getelementptr i8, i8* %2333, i64 %2366
  %2370 = bitcast i8* %2369 to <16 x i8>*
  %2371 = load <16 x i8>, <16 x i8>* %2370, align 1
  %2372 = getelementptr i8, i8* %2369, i64 16
  %2373 = bitcast i8* %2372 to <16 x i8>*
  %2374 = load <16 x i8>, <16 x i8>* %2373, align 1
  %2375 = bitcast i8* %2368 to <16 x i8>*
  store <16 x i8> %2371, <16 x i8>* %2375, align 1
  %2376 = getelementptr i8, i8* %2368, i64 16
  %2377 = bitcast i8* %2376 to <16 x i8>*
  store <16 x i8> %2374, <16 x i8>* %2377, align 1
  %2378 = add i64 %2366, 32
  %2379 = add i64 %2367, -1
  %2380 = icmp eq i64 %2379, 0
  br i1 %2380, label %2381, label %2365

; <label>:2381:                                   ; preds = %2365
  br label %2382

; <label>:2382:                                   ; preds = %2358, %2381
  %2383 = phi i64 [ 0, %2358 ], [ %2378, %2381 ]
  %2384 = icmp ult i64 %2359, 96
  br i1 %2384, label %2434, label %2385

; <label>:2385:                                   ; preds = %2382
  br label %2386

; <label>:2386:                                   ; preds = %2386, %2385
  %2387 = phi i64 [ %2383, %2385 ], [ %2431, %2386 ]
  %2388 = getelementptr i8, i8* %2334, i64 %2387
  %2389 = getelementptr i8, i8* %2333, i64 %2387
  %2390 = bitcast i8* %2389 to <16 x i8>*
  %2391 = load <16 x i8>, <16 x i8>* %2390, align 1
  %2392 = getelementptr i8, i8* %2389, i64 16
  %2393 = bitcast i8* %2392 to <16 x i8>*
  %2394 = load <16 x i8>, <16 x i8>* %2393, align 1
  %2395 = bitcast i8* %2388 to <16 x i8>*
  store <16 x i8> %2391, <16 x i8>* %2395, align 1
  %2396 = getelementptr i8, i8* %2388, i64 16
  %2397 = bitcast i8* %2396 to <16 x i8>*
  store <16 x i8> %2394, <16 x i8>* %2397, align 1
  %2398 = add i64 %2387, 32
  %2399 = getelementptr i8, i8* %2334, i64 %2398
  %2400 = getelementptr i8, i8* %2333, i64 %2398
  %2401 = bitcast i8* %2400 to <16 x i8>*
  %2402 = load <16 x i8>, <16 x i8>* %2401, align 1
  %2403 = getelementptr i8, i8* %2400, i64 16
  %2404 = bitcast i8* %2403 to <16 x i8>*
  %2405 = load <16 x i8>, <16 x i8>* %2404, align 1
  %2406 = bitcast i8* %2399 to <16 x i8>*
  store <16 x i8> %2402, <16 x i8>* %2406, align 1
  %2407 = getelementptr i8, i8* %2399, i64 16
  %2408 = bitcast i8* %2407 to <16 x i8>*
  store <16 x i8> %2405, <16 x i8>* %2408, align 1
  %2409 = add i64 %2387, 64
  %2410 = getelementptr i8, i8* %2334, i64 %2409
  %2411 = getelementptr i8, i8* %2333, i64 %2409
  %2412 = bitcast i8* %2411 to <16 x i8>*
  %2413 = load <16 x i8>, <16 x i8>* %2412, align 1
  %2414 = getelementptr i8, i8* %2411, i64 16
  %2415 = bitcast i8* %2414 to <16 x i8>*
  %2416 = load <16 x i8>, <16 x i8>* %2415, align 1
  %2417 = bitcast i8* %2410 to <16 x i8>*
  store <16 x i8> %2413, <16 x i8>* %2417, align 1
  %2418 = getelementptr i8, i8* %2410, i64 16
  %2419 = bitcast i8* %2418 to <16 x i8>*
  store <16 x i8> %2416, <16 x i8>* %2419, align 1
  %2420 = add i64 %2387, 96
  %2421 = getelementptr i8, i8* %2334, i64 %2420
  %2422 = getelementptr i8, i8* %2333, i64 %2420
  %2423 = bitcast i8* %2422 to <16 x i8>*
  %2424 = load <16 x i8>, <16 x i8>* %2423, align 1
  %2425 = getelementptr i8, i8* %2422, i64 16
  %2426 = bitcast i8* %2425 to <16 x i8>*
  %2427 = load <16 x i8>, <16 x i8>* %2426, align 1
  %2428 = bitcast i8* %2421 to <16 x i8>*
  store <16 x i8> %2424, <16 x i8>* %2428, align 1
  %2429 = getelementptr i8, i8* %2421, i64 16
  %2430 = bitcast i8* %2429 to <16 x i8>*
  store <16 x i8> %2427, <16 x i8>* %2430, align 1
  %2431 = add i64 %2387, 128
  %2432 = icmp eq i64 %2431, %2346
  br i1 %2432, label %2433, label %2386

; <label>:2433:                                   ; preds = %2386
  br label %2434

; <label>:2434:                                   ; preds = %2382, %2433
  %2435 = icmp eq i64 %2340, %2346
  br i1 %2435, label %2457, label %2342

; <label>:2436:                                   ; preds = %2322
  %2437 = zext i32 %2326 to i64
  %2438 = icmp ult i8 %2325, 64
  %2439 = shl i64 1, %2437
  %2440 = and i64 %2439, 316693708537857
  %2441 = icmp ne i64 %2440, 0
  %2442 = and i1 %2438, %2441
  br i1 %2442, label %2443, label %2445

; <label>:2443:                                   ; preds = %2436
  %2444 = getelementptr inbounds i8, i8* %2323, i64 1
  store i8 %2325, i8* %2323, align 1
  br label %2445

; <label>:2445:                                   ; preds = %2443, %2436
  %2446 = phi i8* [ %2444, %2443 ], [ %2323, %2436 ]
  %2447 = getelementptr inbounds i8, i8* %2324, i64 1
  %2448 = icmp ult i8* %2447, %2319
  br i1 %2448, label %2322, label %2329

; <label>:2449:                                   ; preds = %2342, %2449
  %2450 = phi i8* [ %2454, %2449 ], [ %2343, %2342 ]
  %2451 = phi i8* [ %2452, %2449 ], [ %2344, %2342 ]
  %2452 = getelementptr inbounds i8, i8* %2451, i64 1
  %2453 = load i8, i8* %2451, align 1
  %2454 = getelementptr inbounds i8, i8* %2450, i64 1
  store i8 %2453, i8* %2450, align 1
  %2455 = icmp eq i8* %2452, %2319
  br i1 %2455, label %2456, label %2449

; <label>:2456:                                   ; preds = %2449
  br label %2457

; <label>:2457:                                   ; preds = %2456, %2434
  %2458 = getelementptr i8, i8* %0, i64 %2338
  %2459 = ptrtoint i8* %2458 to i64
  %2460 = getelementptr i8, i8* %2334, i64 %2459
  br label %2461

; <label>:2461:                                   ; preds = %2332, %2457
  %2462 = phi i8* [ %2334, %2332 ], [ %2460, %2457 ]
  %2463 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2462, i1 false) #9
  %2464 = tail call i8* @__memcpy_chk(i8* %2462, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %2463) #9
  %2465 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %2317) #9
  br label %4067

; <label>:2466:                                   ; preds = %6
  %2467 = load i1, i1* @follow_links, align 1
  br i1 %2467, label %2474, label %2468

; <label>:2468:                                   ; preds = %2466
  %2469 = getelementptr inbounds i8, i8* %5, i64 24
  %2470 = bitcast i8* %2469 to i32*
  %2471 = load i32, i32* %2470, align 8
  %2472 = and i32 %2471, 61440
  %2473 = icmp eq i32 %2472, 40960
  br i1 %2473, label %2485, label %2474

; <label>:2474:                                   ; preds = %2468, %2466
  %2475 = tail call i8* @canonicalize_file_name(i8* %4) #9
  %2476 = icmp eq i8* %2475, null
  br i1 %2476, label %2477, label %2482

; <label>:2477:                                   ; preds = %2474
  %2478 = tail call i32* @__errno_location() #1
  %2479 = load i32, i32* %2478, align 4
  %2480 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.196, i64 0, i64 0), i32 5) #9
  %2481 = tail call i8* @quotearg_style(i32 4, i8* %4) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %2479, i8* %2480, i8* %2481) #9
  br label %2490

; <label>:2482:                                   ; preds = %2474
  %2483 = tail call fastcc i8* @find_bind_mount(i8* nonnull %2475) #9
  tail call void @free(i8* nonnull %2475) #9
  %2484 = icmp eq i8* %2483, null
  br i1 %2484, label %2485, label %2490

; <label>:2485:                                   ; preds = %2482, %2468
  %2486 = tail call i8* @find_mount_point(i8* %4, %struct.stat* %7) #9
  %2487 = icmp eq i8* %2486, null
  br i1 %2487, label %2490, label %2488

; <label>:2488:                                   ; preds = %2485
  %2489 = tail call fastcc i8* @find_bind_mount(i8* nonnull %2486) #9
  br label %2490

; <label>:2490:                                   ; preds = %2488, %2485, %2482, %2477
  %2491 = phi i8* [ %2489, %2488 ], [ null, %2485 ], [ %2483, %2482 ], [ null, %2477 ]
  %2492 = phi i8* [ %2486, %2488 ], [ null, %2485 ], [ null, %2482 ], [ null, %2477 ]
  %2493 = phi i8 [ 0, %2488 ], [ 1, %2485 ], [ 0, %2482 ], [ 1, %2477 ]
  %2494 = icmp eq i8* %2491, null
  %2495 = icmp ne i8* %2492, null
  %2496 = select i1 %2495, i8* %2492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)
  %2497 = select i1 %2494, i8* %2496, i8* %2491
  %2498 = getelementptr inbounds i8, i8* %0, i64 1
  %2499 = getelementptr inbounds i8, i8* %0, i64 %1
  %2500 = icmp sgt i64 %1, 1
  br i1 %2500, label %2501, label %2512

; <label>:2501:                                   ; preds = %2490
  br label %2502

; <label>:2502:                                   ; preds = %2501, %2625
  %2503 = phi i8* [ %2626, %2625 ], [ %2498, %2501 ]
  %2504 = phi i8* [ %2627, %2625 ], [ %2498, %2501 ]
  %2505 = load i8, i8* %2504, align 1
  %2506 = sext i8 %2505 to i32
  %2507 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2506, i64 8) #9
  %2508 = icmp eq i8* %2507, null
  br i1 %2508, label %2509, label %2616

; <label>:2509:                                   ; preds = %2502, %2625
  %2510 = phi i8* [ %2504, %2502 ], [ %2627, %2625 ]
  %2511 = phi i8* [ %2503, %2502 ], [ %2626, %2625 ]
  br label %2512

; <label>:2512:                                   ; preds = %2509, %2490
  %2513 = phi i8* [ %2498, %2490 ], [ %2510, %2509 ]
  %2514 = phi i8* [ %2498, %2490 ], [ %2511, %2509 ]
  %2515 = ptrtoint i8* %2513 to i64
  %2516 = icmp ult i8* %2513, %2499
  br i1 %2516, label %2517, label %2642

; <label>:2517:                                   ; preds = %2512
  %2518 = sub i64 %1, %2515
  %2519 = getelementptr i8, i8* %0, i64 %2518
  %2520 = ptrtoint i8* %2519 to i64
  %2521 = icmp ult i8* %2519, inttoptr (i64 32 to i8*)
  br i1 %2521, label %2522, label %2525

; <label>:2522:                                   ; preds = %2614, %2528, %2525, %2517
  %2523 = phi i8* [ %2514, %2528 ], [ %2514, %2525 ], [ %2514, %2517 ], [ %2536, %2614 ]
  %2524 = phi i8* [ %2513, %2528 ], [ %2513, %2525 ], [ %2513, %2517 ], [ %2537, %2614 ]
  br label %2629

; <label>:2525:                                   ; preds = %2517
  %2526 = and i64 %2520, -32
  %2527 = icmp eq i64 %2526, 0
  br i1 %2527, label %2522, label %2528

; <label>:2528:                                   ; preds = %2525
  %2529 = sub i64 %1, %2515
  %2530 = getelementptr i8, i8* %0, i64 %2529
  %2531 = ptrtoint i8* %2530 to i64
  %2532 = getelementptr i8, i8* %2514, i64 %2531
  %2533 = icmp ult i8* %2514, %2499
  %2534 = icmp ult i8* %2513, %2532
  %2535 = and i1 %2533, %2534
  %2536 = getelementptr i8, i8* %2514, i64 %2526
  %2537 = getelementptr i8, i8* %2513, i64 %2526
  br i1 %2535, label %2522, label %2538

; <label>:2538:                                   ; preds = %2528
  %2539 = add i64 %2526, -32
  %2540 = lshr exact i64 %2539, 5
  %2541 = add nuw nsw i64 %2540, 1
  %2542 = and i64 %2541, 3
  %2543 = icmp eq i64 %2542, 0
  br i1 %2543, label %2562, label %2544

; <label>:2544:                                   ; preds = %2538
  br label %2545

; <label>:2545:                                   ; preds = %2545, %2544
  %2546 = phi i64 [ %2558, %2545 ], [ 0, %2544 ]
  %2547 = phi i64 [ %2559, %2545 ], [ %2542, %2544 ]
  %2548 = getelementptr i8, i8* %2514, i64 %2546
  %2549 = getelementptr i8, i8* %2513, i64 %2546
  %2550 = bitcast i8* %2549 to <16 x i8>*
  %2551 = load <16 x i8>, <16 x i8>* %2550, align 1
  %2552 = getelementptr i8, i8* %2549, i64 16
  %2553 = bitcast i8* %2552 to <16 x i8>*
  %2554 = load <16 x i8>, <16 x i8>* %2553, align 1
  %2555 = bitcast i8* %2548 to <16 x i8>*
  store <16 x i8> %2551, <16 x i8>* %2555, align 1
  %2556 = getelementptr i8, i8* %2548, i64 16
  %2557 = bitcast i8* %2556 to <16 x i8>*
  store <16 x i8> %2554, <16 x i8>* %2557, align 1
  %2558 = add i64 %2546, 32
  %2559 = add i64 %2547, -1
  %2560 = icmp eq i64 %2559, 0
  br i1 %2560, label %2561, label %2545

; <label>:2561:                                   ; preds = %2545
  br label %2562

; <label>:2562:                                   ; preds = %2538, %2561
  %2563 = phi i64 [ 0, %2538 ], [ %2558, %2561 ]
  %2564 = icmp ult i64 %2539, 96
  br i1 %2564, label %2614, label %2565

; <label>:2565:                                   ; preds = %2562
  br label %2566

; <label>:2566:                                   ; preds = %2566, %2565
  %2567 = phi i64 [ %2563, %2565 ], [ %2611, %2566 ]
  %2568 = getelementptr i8, i8* %2514, i64 %2567
  %2569 = getelementptr i8, i8* %2513, i64 %2567
  %2570 = bitcast i8* %2569 to <16 x i8>*
  %2571 = load <16 x i8>, <16 x i8>* %2570, align 1
  %2572 = getelementptr i8, i8* %2569, i64 16
  %2573 = bitcast i8* %2572 to <16 x i8>*
  %2574 = load <16 x i8>, <16 x i8>* %2573, align 1
  %2575 = bitcast i8* %2568 to <16 x i8>*
  store <16 x i8> %2571, <16 x i8>* %2575, align 1
  %2576 = getelementptr i8, i8* %2568, i64 16
  %2577 = bitcast i8* %2576 to <16 x i8>*
  store <16 x i8> %2574, <16 x i8>* %2577, align 1
  %2578 = add i64 %2567, 32
  %2579 = getelementptr i8, i8* %2514, i64 %2578
  %2580 = getelementptr i8, i8* %2513, i64 %2578
  %2581 = bitcast i8* %2580 to <16 x i8>*
  %2582 = load <16 x i8>, <16 x i8>* %2581, align 1
  %2583 = getelementptr i8, i8* %2580, i64 16
  %2584 = bitcast i8* %2583 to <16 x i8>*
  %2585 = load <16 x i8>, <16 x i8>* %2584, align 1
  %2586 = bitcast i8* %2579 to <16 x i8>*
  store <16 x i8> %2582, <16 x i8>* %2586, align 1
  %2587 = getelementptr i8, i8* %2579, i64 16
  %2588 = bitcast i8* %2587 to <16 x i8>*
  store <16 x i8> %2585, <16 x i8>* %2588, align 1
  %2589 = add i64 %2567, 64
  %2590 = getelementptr i8, i8* %2514, i64 %2589
  %2591 = getelementptr i8, i8* %2513, i64 %2589
  %2592 = bitcast i8* %2591 to <16 x i8>*
  %2593 = load <16 x i8>, <16 x i8>* %2592, align 1
  %2594 = getelementptr i8, i8* %2591, i64 16
  %2595 = bitcast i8* %2594 to <16 x i8>*
  %2596 = load <16 x i8>, <16 x i8>* %2595, align 1
  %2597 = bitcast i8* %2590 to <16 x i8>*
  store <16 x i8> %2593, <16 x i8>* %2597, align 1
  %2598 = getelementptr i8, i8* %2590, i64 16
  %2599 = bitcast i8* %2598 to <16 x i8>*
  store <16 x i8> %2596, <16 x i8>* %2599, align 1
  %2600 = add i64 %2567, 96
  %2601 = getelementptr i8, i8* %2514, i64 %2600
  %2602 = getelementptr i8, i8* %2513, i64 %2600
  %2603 = bitcast i8* %2602 to <16 x i8>*
  %2604 = load <16 x i8>, <16 x i8>* %2603, align 1
  %2605 = getelementptr i8, i8* %2602, i64 16
  %2606 = bitcast i8* %2605 to <16 x i8>*
  %2607 = load <16 x i8>, <16 x i8>* %2606, align 1
  %2608 = bitcast i8* %2601 to <16 x i8>*
  store <16 x i8> %2604, <16 x i8>* %2608, align 1
  %2609 = getelementptr i8, i8* %2601, i64 16
  %2610 = bitcast i8* %2609 to <16 x i8>*
  store <16 x i8> %2607, <16 x i8>* %2610, align 1
  %2611 = add i64 %2567, 128
  %2612 = icmp eq i64 %2611, %2526
  br i1 %2612, label %2613, label %2566

; <label>:2613:                                   ; preds = %2566
  br label %2614

; <label>:2614:                                   ; preds = %2562, %2613
  %2615 = icmp eq i64 %2520, %2526
  br i1 %2615, label %2637, label %2522

; <label>:2616:                                   ; preds = %2502
  %2617 = zext i32 %2506 to i64
  %2618 = icmp ult i8 %2505, 64
  %2619 = shl i64 1, %2617
  %2620 = and i64 %2619, 35184372088833
  %2621 = icmp ne i64 %2620, 0
  %2622 = and i1 %2618, %2621
  br i1 %2622, label %2623, label %2625

; <label>:2623:                                   ; preds = %2616
  %2624 = getelementptr inbounds i8, i8* %2503, i64 1
  store i8 %2505, i8* %2503, align 1
  br label %2625

; <label>:2625:                                   ; preds = %2623, %2616
  %2626 = phi i8* [ %2624, %2623 ], [ %2503, %2616 ]
  %2627 = getelementptr inbounds i8, i8* %2504, i64 1
  %2628 = icmp ult i8* %2627, %2499
  br i1 %2628, label %2502, label %2509

; <label>:2629:                                   ; preds = %2522, %2629
  %2630 = phi i8* [ %2634, %2629 ], [ %2523, %2522 ]
  %2631 = phi i8* [ %2632, %2629 ], [ %2524, %2522 ]
  %2632 = getelementptr inbounds i8, i8* %2631, i64 1
  %2633 = load i8, i8* %2631, align 1
  %2634 = getelementptr inbounds i8, i8* %2630, i64 1
  store i8 %2633, i8* %2630, align 1
  %2635 = icmp eq i8* %2632, %2499
  br i1 %2635, label %2636, label %2629

; <label>:2636:                                   ; preds = %2629
  br label %2637

; <label>:2637:                                   ; preds = %2636, %2614
  %2638 = sub i64 %1, %2515
  %2639 = getelementptr i8, i8* %0, i64 %2638
  %2640 = ptrtoint i8* %2639 to i64
  %2641 = getelementptr i8, i8* %2514, i64 %2640
  br label %2642

; <label>:2642:                                   ; preds = %2512, %2637
  %2643 = phi i8* [ %2514, %2512 ], [ %2641, %2637 ]
  %2644 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2643, i1 false) #9
  %2645 = tail call i8* @__memcpy_chk(i8* %2643, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %2644) #9
  %2646 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* %2497) #9
  tail call void @free(i8* %2492) #9
  %2647 = icmp ne i8 %2493, 0
  br label %4067

; <label>:2648:                                   ; preds = %6
  %2649 = getelementptr inbounds i8, i8* %5, i64 40
  %2650 = bitcast i8* %2649 to i64*
  %2651 = load i64, i64* %2650, align 8
  %2652 = and i64 %2651, 255
  %2653 = lshr i64 %2651, 12
  %2654 = and i64 %2653, 4294967040
  %2655 = or i64 %2654, %2652
  %2656 = getelementptr inbounds i8, i8* %0, i64 1
  %2657 = getelementptr inbounds i8, i8* %0, i64 %1
  %2658 = icmp sgt i64 %1, 1
  br i1 %2658, label %2659, label %2670

; <label>:2659:                                   ; preds = %2648
  br label %2660

; <label>:2660:                                   ; preds = %2659, %2783
  %2661 = phi i8* [ %2784, %2783 ], [ %2656, %2659 ]
  %2662 = phi i8* [ %2785, %2783 ], [ %2656, %2659 ]
  %2663 = load i8, i8* %2662, align 1
  %2664 = sext i8 %2663 to i32
  %2665 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2664, i64 8) #9
  %2666 = icmp eq i8* %2665, null
  br i1 %2666, label %2667, label %2774

; <label>:2667:                                   ; preds = %2660, %2783
  %2668 = phi i8* [ %2785, %2783 ], [ %2662, %2660 ]
  %2669 = phi i8* [ %2784, %2783 ], [ %2661, %2660 ]
  br label %2670

; <label>:2670:                                   ; preds = %2667, %2648
  %2671 = phi i8* [ %2656, %2648 ], [ %2668, %2667 ]
  %2672 = phi i8* [ %2656, %2648 ], [ %2669, %2667 ]
  %2673 = ptrtoint i8* %2671 to i64
  %2674 = icmp ult i8* %2671, %2657
  br i1 %2674, label %2675, label %2799

; <label>:2675:                                   ; preds = %2670
  %2676 = sub i64 %1, %2673
  %2677 = getelementptr i8, i8* %0, i64 %2676
  %2678 = ptrtoint i8* %2677 to i64
  %2679 = icmp ult i8* %2677, inttoptr (i64 32 to i8*)
  br i1 %2679, label %2680, label %2683

; <label>:2680:                                   ; preds = %2772, %2686, %2683, %2675
  %2681 = phi i8* [ %2672, %2686 ], [ %2672, %2683 ], [ %2672, %2675 ], [ %2694, %2772 ]
  %2682 = phi i8* [ %2671, %2686 ], [ %2671, %2683 ], [ %2671, %2675 ], [ %2695, %2772 ]
  br label %2787

; <label>:2683:                                   ; preds = %2675
  %2684 = and i64 %2678, -32
  %2685 = icmp eq i64 %2684, 0
  br i1 %2685, label %2680, label %2686

; <label>:2686:                                   ; preds = %2683
  %2687 = sub i64 %1, %2673
  %2688 = getelementptr i8, i8* %0, i64 %2687
  %2689 = ptrtoint i8* %2688 to i64
  %2690 = getelementptr i8, i8* %2672, i64 %2689
  %2691 = icmp ult i8* %2672, %2657
  %2692 = icmp ult i8* %2671, %2690
  %2693 = and i1 %2691, %2692
  %2694 = getelementptr i8, i8* %2672, i64 %2684
  %2695 = getelementptr i8, i8* %2671, i64 %2684
  br i1 %2693, label %2680, label %2696

; <label>:2696:                                   ; preds = %2686
  %2697 = add i64 %2684, -32
  %2698 = lshr exact i64 %2697, 5
  %2699 = add nuw nsw i64 %2698, 1
  %2700 = and i64 %2699, 3
  %2701 = icmp eq i64 %2700, 0
  br i1 %2701, label %2720, label %2702

; <label>:2702:                                   ; preds = %2696
  br label %2703

; <label>:2703:                                   ; preds = %2703, %2702
  %2704 = phi i64 [ %2716, %2703 ], [ 0, %2702 ]
  %2705 = phi i64 [ %2717, %2703 ], [ %2700, %2702 ]
  %2706 = getelementptr i8, i8* %2672, i64 %2704
  %2707 = getelementptr i8, i8* %2671, i64 %2704
  %2708 = bitcast i8* %2707 to <16 x i8>*
  %2709 = load <16 x i8>, <16 x i8>* %2708, align 1
  %2710 = getelementptr i8, i8* %2707, i64 16
  %2711 = bitcast i8* %2710 to <16 x i8>*
  %2712 = load <16 x i8>, <16 x i8>* %2711, align 1
  %2713 = bitcast i8* %2706 to <16 x i8>*
  store <16 x i8> %2709, <16 x i8>* %2713, align 1
  %2714 = getelementptr i8, i8* %2706, i64 16
  %2715 = bitcast i8* %2714 to <16 x i8>*
  store <16 x i8> %2712, <16 x i8>* %2715, align 1
  %2716 = add i64 %2704, 32
  %2717 = add i64 %2705, -1
  %2718 = icmp eq i64 %2717, 0
  br i1 %2718, label %2719, label %2703

; <label>:2719:                                   ; preds = %2703
  br label %2720

; <label>:2720:                                   ; preds = %2696, %2719
  %2721 = phi i64 [ 0, %2696 ], [ %2716, %2719 ]
  %2722 = icmp ult i64 %2697, 96
  br i1 %2722, label %2772, label %2723

; <label>:2723:                                   ; preds = %2720
  br label %2724

; <label>:2724:                                   ; preds = %2724, %2723
  %2725 = phi i64 [ %2721, %2723 ], [ %2769, %2724 ]
  %2726 = getelementptr i8, i8* %2672, i64 %2725
  %2727 = getelementptr i8, i8* %2671, i64 %2725
  %2728 = bitcast i8* %2727 to <16 x i8>*
  %2729 = load <16 x i8>, <16 x i8>* %2728, align 1
  %2730 = getelementptr i8, i8* %2727, i64 16
  %2731 = bitcast i8* %2730 to <16 x i8>*
  %2732 = load <16 x i8>, <16 x i8>* %2731, align 1
  %2733 = bitcast i8* %2726 to <16 x i8>*
  store <16 x i8> %2729, <16 x i8>* %2733, align 1
  %2734 = getelementptr i8, i8* %2726, i64 16
  %2735 = bitcast i8* %2734 to <16 x i8>*
  store <16 x i8> %2732, <16 x i8>* %2735, align 1
  %2736 = add i64 %2725, 32
  %2737 = getelementptr i8, i8* %2672, i64 %2736
  %2738 = getelementptr i8, i8* %2671, i64 %2736
  %2739 = bitcast i8* %2738 to <16 x i8>*
  %2740 = load <16 x i8>, <16 x i8>* %2739, align 1
  %2741 = getelementptr i8, i8* %2738, i64 16
  %2742 = bitcast i8* %2741 to <16 x i8>*
  %2743 = load <16 x i8>, <16 x i8>* %2742, align 1
  %2744 = bitcast i8* %2737 to <16 x i8>*
  store <16 x i8> %2740, <16 x i8>* %2744, align 1
  %2745 = getelementptr i8, i8* %2737, i64 16
  %2746 = bitcast i8* %2745 to <16 x i8>*
  store <16 x i8> %2743, <16 x i8>* %2746, align 1
  %2747 = add i64 %2725, 64
  %2748 = getelementptr i8, i8* %2672, i64 %2747
  %2749 = getelementptr i8, i8* %2671, i64 %2747
  %2750 = bitcast i8* %2749 to <16 x i8>*
  %2751 = load <16 x i8>, <16 x i8>* %2750, align 1
  %2752 = getelementptr i8, i8* %2749, i64 16
  %2753 = bitcast i8* %2752 to <16 x i8>*
  %2754 = load <16 x i8>, <16 x i8>* %2753, align 1
  %2755 = bitcast i8* %2748 to <16 x i8>*
  store <16 x i8> %2751, <16 x i8>* %2755, align 1
  %2756 = getelementptr i8, i8* %2748, i64 16
  %2757 = bitcast i8* %2756 to <16 x i8>*
  store <16 x i8> %2754, <16 x i8>* %2757, align 1
  %2758 = add i64 %2725, 96
  %2759 = getelementptr i8, i8* %2672, i64 %2758
  %2760 = getelementptr i8, i8* %2671, i64 %2758
  %2761 = bitcast i8* %2760 to <16 x i8>*
  %2762 = load <16 x i8>, <16 x i8>* %2761, align 1
  %2763 = getelementptr i8, i8* %2760, i64 16
  %2764 = bitcast i8* %2763 to <16 x i8>*
  %2765 = load <16 x i8>, <16 x i8>* %2764, align 1
  %2766 = bitcast i8* %2759 to <16 x i8>*
  store <16 x i8> %2762, <16 x i8>* %2766, align 1
  %2767 = getelementptr i8, i8* %2759, i64 16
  %2768 = bitcast i8* %2767 to <16 x i8>*
  store <16 x i8> %2765, <16 x i8>* %2768, align 1
  %2769 = add i64 %2725, 128
  %2770 = icmp eq i64 %2769, %2684
  br i1 %2770, label %2771, label %2724

; <label>:2771:                                   ; preds = %2724
  br label %2772

; <label>:2772:                                   ; preds = %2720, %2771
  %2773 = icmp eq i64 %2678, %2684
  br i1 %2773, label %2795, label %2680

; <label>:2774:                                   ; preds = %2660
  %2775 = zext i32 %2664 to i64
  %2776 = icmp ult i8 %2663, 64
  %2777 = shl i64 1, %2775
  %2778 = and i64 %2777, 316693708537857
  %2779 = icmp ne i64 %2778, 0
  %2780 = and i1 %2776, %2779
  br i1 %2780, label %2781, label %2783

; <label>:2781:                                   ; preds = %2774
  %2782 = getelementptr inbounds i8, i8* %2661, i64 1
  store i8 %2663, i8* %2661, align 1
  br label %2783

; <label>:2783:                                   ; preds = %2781, %2774
  %2784 = phi i8* [ %2782, %2781 ], [ %2661, %2774 ]
  %2785 = getelementptr inbounds i8, i8* %2662, i64 1
  %2786 = icmp ult i8* %2785, %2657
  br i1 %2786, label %2660, label %2667

; <label>:2787:                                   ; preds = %2680, %2787
  %2788 = phi i8* [ %2792, %2787 ], [ %2681, %2680 ]
  %2789 = phi i8* [ %2790, %2787 ], [ %2682, %2680 ]
  %2790 = getelementptr inbounds i8, i8* %2789, i64 1
  %2791 = load i8, i8* %2789, align 1
  %2792 = getelementptr inbounds i8, i8* %2788, i64 1
  store i8 %2791, i8* %2788, align 1
  %2793 = icmp eq i8* %2790, %2657
  br i1 %2793, label %2794, label %2787

; <label>:2794:                                   ; preds = %2787
  br label %2795

; <label>:2795:                                   ; preds = %2794, %2772
  %2796 = getelementptr i8, i8* %0, i64 %2676
  %2797 = ptrtoint i8* %2796 to i64
  %2798 = getelementptr i8, i8* %2672, i64 %2797
  br label %2799

; <label>:2799:                                   ; preds = %2670, %2795
  %2800 = phi i8* [ %2672, %2670 ], [ %2798, %2795 ]
  %2801 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2800, i1 false) #9
  %2802 = tail call i8* @__memcpy_chk(i8* %2800, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i64 0, i64 0), i64 3, i64 %2801) #9
  %2803 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %2655) #9
  br label %4067

; <label>:2804:                                   ; preds = %6
  %2805 = getelementptr inbounds i8, i8* %5, i64 48
  %2806 = bitcast i8* %2805 to i64*
  %2807 = load i64, i64* %2806, align 8
  %2808 = getelementptr inbounds i8, i8* %0, i64 1
  %2809 = getelementptr inbounds i8, i8* %0, i64 %1
  %2810 = icmp sgt i64 %1, 1
  br i1 %2810, label %2811, label %2822

; <label>:2811:                                   ; preds = %2804
  br label %2812

; <label>:2812:                                   ; preds = %2811, %2935
  %2813 = phi i8* [ %2936, %2935 ], [ %2808, %2811 ]
  %2814 = phi i8* [ %2937, %2935 ], [ %2808, %2811 ]
  %2815 = load i8, i8* %2814, align 1
  %2816 = sext i8 %2815 to i32
  %2817 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2816, i64 8) #9
  %2818 = icmp eq i8* %2817, null
  br i1 %2818, label %2819, label %2926

; <label>:2819:                                   ; preds = %2812, %2935
  %2820 = phi i8* [ %2937, %2935 ], [ %2814, %2812 ]
  %2821 = phi i8* [ %2936, %2935 ], [ %2813, %2812 ]
  br label %2822

; <label>:2822:                                   ; preds = %2819, %2804
  %2823 = phi i8* [ %2808, %2804 ], [ %2820, %2819 ]
  %2824 = phi i8* [ %2808, %2804 ], [ %2821, %2819 ]
  %2825 = ptrtoint i8* %2823 to i64
  %2826 = icmp ult i8* %2823, %2809
  br i1 %2826, label %2827, label %2951

; <label>:2827:                                   ; preds = %2822
  %2828 = sub i64 %1, %2825
  %2829 = getelementptr i8, i8* %0, i64 %2828
  %2830 = ptrtoint i8* %2829 to i64
  %2831 = icmp ult i8* %2829, inttoptr (i64 32 to i8*)
  br i1 %2831, label %2832, label %2835

; <label>:2832:                                   ; preds = %2924, %2838, %2835, %2827
  %2833 = phi i8* [ %2824, %2838 ], [ %2824, %2835 ], [ %2824, %2827 ], [ %2846, %2924 ]
  %2834 = phi i8* [ %2823, %2838 ], [ %2823, %2835 ], [ %2823, %2827 ], [ %2847, %2924 ]
  br label %2939

; <label>:2835:                                   ; preds = %2827
  %2836 = and i64 %2830, -32
  %2837 = icmp eq i64 %2836, 0
  br i1 %2837, label %2832, label %2838

; <label>:2838:                                   ; preds = %2835
  %2839 = sub i64 %1, %2825
  %2840 = getelementptr i8, i8* %0, i64 %2839
  %2841 = ptrtoint i8* %2840 to i64
  %2842 = getelementptr i8, i8* %2824, i64 %2841
  %2843 = icmp ult i8* %2824, %2809
  %2844 = icmp ult i8* %2823, %2842
  %2845 = and i1 %2843, %2844
  %2846 = getelementptr i8, i8* %2824, i64 %2836
  %2847 = getelementptr i8, i8* %2823, i64 %2836
  br i1 %2845, label %2832, label %2848

; <label>:2848:                                   ; preds = %2838
  %2849 = add i64 %2836, -32
  %2850 = lshr exact i64 %2849, 5
  %2851 = add nuw nsw i64 %2850, 1
  %2852 = and i64 %2851, 3
  %2853 = icmp eq i64 %2852, 0
  br i1 %2853, label %2872, label %2854

; <label>:2854:                                   ; preds = %2848
  br label %2855

; <label>:2855:                                   ; preds = %2855, %2854
  %2856 = phi i64 [ %2868, %2855 ], [ 0, %2854 ]
  %2857 = phi i64 [ %2869, %2855 ], [ %2852, %2854 ]
  %2858 = getelementptr i8, i8* %2824, i64 %2856
  %2859 = getelementptr i8, i8* %2823, i64 %2856
  %2860 = bitcast i8* %2859 to <16 x i8>*
  %2861 = load <16 x i8>, <16 x i8>* %2860, align 1
  %2862 = getelementptr i8, i8* %2859, i64 16
  %2863 = bitcast i8* %2862 to <16 x i8>*
  %2864 = load <16 x i8>, <16 x i8>* %2863, align 1
  %2865 = bitcast i8* %2858 to <16 x i8>*
  store <16 x i8> %2861, <16 x i8>* %2865, align 1
  %2866 = getelementptr i8, i8* %2858, i64 16
  %2867 = bitcast i8* %2866 to <16 x i8>*
  store <16 x i8> %2864, <16 x i8>* %2867, align 1
  %2868 = add i64 %2856, 32
  %2869 = add i64 %2857, -1
  %2870 = icmp eq i64 %2869, 0
  br i1 %2870, label %2871, label %2855

; <label>:2871:                                   ; preds = %2855
  br label %2872

; <label>:2872:                                   ; preds = %2848, %2871
  %2873 = phi i64 [ 0, %2848 ], [ %2868, %2871 ]
  %2874 = icmp ult i64 %2849, 96
  br i1 %2874, label %2924, label %2875

; <label>:2875:                                   ; preds = %2872
  br label %2876

; <label>:2876:                                   ; preds = %2876, %2875
  %2877 = phi i64 [ %2873, %2875 ], [ %2921, %2876 ]
  %2878 = getelementptr i8, i8* %2824, i64 %2877
  %2879 = getelementptr i8, i8* %2823, i64 %2877
  %2880 = bitcast i8* %2879 to <16 x i8>*
  %2881 = load <16 x i8>, <16 x i8>* %2880, align 1
  %2882 = getelementptr i8, i8* %2879, i64 16
  %2883 = bitcast i8* %2882 to <16 x i8>*
  %2884 = load <16 x i8>, <16 x i8>* %2883, align 1
  %2885 = bitcast i8* %2878 to <16 x i8>*
  store <16 x i8> %2881, <16 x i8>* %2885, align 1
  %2886 = getelementptr i8, i8* %2878, i64 16
  %2887 = bitcast i8* %2886 to <16 x i8>*
  store <16 x i8> %2884, <16 x i8>* %2887, align 1
  %2888 = add i64 %2877, 32
  %2889 = getelementptr i8, i8* %2824, i64 %2888
  %2890 = getelementptr i8, i8* %2823, i64 %2888
  %2891 = bitcast i8* %2890 to <16 x i8>*
  %2892 = load <16 x i8>, <16 x i8>* %2891, align 1
  %2893 = getelementptr i8, i8* %2890, i64 16
  %2894 = bitcast i8* %2893 to <16 x i8>*
  %2895 = load <16 x i8>, <16 x i8>* %2894, align 1
  %2896 = bitcast i8* %2889 to <16 x i8>*
  store <16 x i8> %2892, <16 x i8>* %2896, align 1
  %2897 = getelementptr i8, i8* %2889, i64 16
  %2898 = bitcast i8* %2897 to <16 x i8>*
  store <16 x i8> %2895, <16 x i8>* %2898, align 1
  %2899 = add i64 %2877, 64
  %2900 = getelementptr i8, i8* %2824, i64 %2899
  %2901 = getelementptr i8, i8* %2823, i64 %2899
  %2902 = bitcast i8* %2901 to <16 x i8>*
  %2903 = load <16 x i8>, <16 x i8>* %2902, align 1
  %2904 = getelementptr i8, i8* %2901, i64 16
  %2905 = bitcast i8* %2904 to <16 x i8>*
  %2906 = load <16 x i8>, <16 x i8>* %2905, align 1
  %2907 = bitcast i8* %2900 to <16 x i8>*
  store <16 x i8> %2903, <16 x i8>* %2907, align 1
  %2908 = getelementptr i8, i8* %2900, i64 16
  %2909 = bitcast i8* %2908 to <16 x i8>*
  store <16 x i8> %2906, <16 x i8>* %2909, align 1
  %2910 = add i64 %2877, 96
  %2911 = getelementptr i8, i8* %2824, i64 %2910
  %2912 = getelementptr i8, i8* %2823, i64 %2910
  %2913 = bitcast i8* %2912 to <16 x i8>*
  %2914 = load <16 x i8>, <16 x i8>* %2913, align 1
  %2915 = getelementptr i8, i8* %2912, i64 16
  %2916 = bitcast i8* %2915 to <16 x i8>*
  %2917 = load <16 x i8>, <16 x i8>* %2916, align 1
  %2918 = bitcast i8* %2911 to <16 x i8>*
  store <16 x i8> %2914, <16 x i8>* %2918, align 1
  %2919 = getelementptr i8, i8* %2911, i64 16
  %2920 = bitcast i8* %2919 to <16 x i8>*
  store <16 x i8> %2917, <16 x i8>* %2920, align 1
  %2921 = add i64 %2877, 128
  %2922 = icmp eq i64 %2921, %2836
  br i1 %2922, label %2923, label %2876

; <label>:2923:                                   ; preds = %2876
  br label %2924

; <label>:2924:                                   ; preds = %2872, %2923
  %2925 = icmp eq i64 %2830, %2836
  br i1 %2925, label %2947, label %2832

; <label>:2926:                                   ; preds = %2812
  %2927 = zext i32 %2816 to i64
  %2928 = icmp ult i8 %2815, 64
  %2929 = shl i64 1, %2927
  %2930 = and i64 %2929, 326009492602881
  %2931 = icmp ne i64 %2930, 0
  %2932 = and i1 %2928, %2931
  br i1 %2932, label %2933, label %2935

; <label>:2933:                                   ; preds = %2926
  %2934 = getelementptr inbounds i8, i8* %2813, i64 1
  store i8 %2815, i8* %2813, align 1
  br label %2935

; <label>:2935:                                   ; preds = %2933, %2926
  %2936 = phi i8* [ %2934, %2933 ], [ %2813, %2926 ]
  %2937 = getelementptr inbounds i8, i8* %2814, i64 1
  %2938 = icmp ult i8* %2937, %2809
  br i1 %2938, label %2812, label %2819

; <label>:2939:                                   ; preds = %2832, %2939
  %2940 = phi i8* [ %2944, %2939 ], [ %2833, %2832 ]
  %2941 = phi i8* [ %2942, %2939 ], [ %2834, %2832 ]
  %2942 = getelementptr inbounds i8, i8* %2941, i64 1
  %2943 = load i8, i8* %2941, align 1
  %2944 = getelementptr inbounds i8, i8* %2940, i64 1
  store i8 %2943, i8* %2940, align 1
  %2945 = icmp eq i8* %2942, %2809
  br i1 %2945, label %2946, label %2939

; <label>:2946:                                   ; preds = %2939
  br label %2947

; <label>:2947:                                   ; preds = %2946, %2924
  %2948 = getelementptr i8, i8* %0, i64 %2828
  %2949 = ptrtoint i8* %2948 to i64
  %2950 = getelementptr i8, i8* %2824, i64 %2949
  br label %2951

; <label>:2951:                                   ; preds = %2822, %2947
  %2952 = phi i8* [ %2824, %2822 ], [ %2950, %2947 ]
  %2953 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %2952, i1 false) #9
  %2954 = tail call i8* @__memcpy_chk(i8* %2952, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %2953) #9
  %2955 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %2807) #9
  br label %4067

; <label>:2956:                                   ; preds = %6
  %2957 = getelementptr inbounds i8, i8* %0, i64 1
  %2958 = getelementptr inbounds i8, i8* %0, i64 %1
  %2959 = icmp sgt i64 %1, 1
  br i1 %2959, label %2960, label %2971

; <label>:2960:                                   ; preds = %2956
  br label %2961

; <label>:2961:                                   ; preds = %2960, %3084
  %2962 = phi i8* [ %3085, %3084 ], [ %2957, %2960 ]
  %2963 = phi i8* [ %3086, %3084 ], [ %2957, %2960 ]
  %2964 = load i8, i8* %2963, align 1
  %2965 = sext i8 %2964 to i32
  %2966 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %2965, i64 8) #9
  %2967 = icmp eq i8* %2966, null
  br i1 %2967, label %2968, label %3075

; <label>:2968:                                   ; preds = %2961, %3084
  %2969 = phi i8* [ %3086, %3084 ], [ %2963, %2961 ]
  %2970 = phi i8* [ %3085, %3084 ], [ %2962, %2961 ]
  br label %2971

; <label>:2971:                                   ; preds = %2968, %2956
  %2972 = phi i8* [ %2957, %2956 ], [ %2969, %2968 ]
  %2973 = phi i8* [ %2957, %2956 ], [ %2970, %2968 ]
  %2974 = ptrtoint i8* %2972 to i64
  %2975 = icmp ult i8* %2972, %2958
  br i1 %2975, label %2976, label %3100

; <label>:2976:                                   ; preds = %2971
  %2977 = sub i64 %1, %2974
  %2978 = getelementptr i8, i8* %0, i64 %2977
  %2979 = ptrtoint i8* %2978 to i64
  %2980 = icmp ult i8* %2978, inttoptr (i64 32 to i8*)
  br i1 %2980, label %2981, label %2984

; <label>:2981:                                   ; preds = %3073, %2987, %2984, %2976
  %2982 = phi i8* [ %2973, %2987 ], [ %2973, %2984 ], [ %2973, %2976 ], [ %2995, %3073 ]
  %2983 = phi i8* [ %2972, %2987 ], [ %2972, %2984 ], [ %2972, %2976 ], [ %2996, %3073 ]
  br label %3088

; <label>:2984:                                   ; preds = %2976
  %2985 = and i64 %2979, -32
  %2986 = icmp eq i64 %2985, 0
  br i1 %2986, label %2981, label %2987

; <label>:2987:                                   ; preds = %2984
  %2988 = sub i64 %1, %2974
  %2989 = getelementptr i8, i8* %0, i64 %2988
  %2990 = ptrtoint i8* %2989 to i64
  %2991 = getelementptr i8, i8* %2973, i64 %2990
  %2992 = icmp ult i8* %2973, %2958
  %2993 = icmp ult i8* %2972, %2991
  %2994 = and i1 %2992, %2993
  %2995 = getelementptr i8, i8* %2973, i64 %2985
  %2996 = getelementptr i8, i8* %2972, i64 %2985
  br i1 %2994, label %2981, label %2997

; <label>:2997:                                   ; preds = %2987
  %2998 = add i64 %2985, -32
  %2999 = lshr exact i64 %2998, 5
  %3000 = add nuw nsw i64 %2999, 1
  %3001 = and i64 %3000, 3
  %3002 = icmp eq i64 %3001, 0
  br i1 %3002, label %3021, label %3003

; <label>:3003:                                   ; preds = %2997
  br label %3004

; <label>:3004:                                   ; preds = %3004, %3003
  %3005 = phi i64 [ %3017, %3004 ], [ 0, %3003 ]
  %3006 = phi i64 [ %3018, %3004 ], [ %3001, %3003 ]
  %3007 = getelementptr i8, i8* %2973, i64 %3005
  %3008 = getelementptr i8, i8* %2972, i64 %3005
  %3009 = bitcast i8* %3008 to <16 x i8>*
  %3010 = load <16 x i8>, <16 x i8>* %3009, align 1
  %3011 = getelementptr i8, i8* %3008, i64 16
  %3012 = bitcast i8* %3011 to <16 x i8>*
  %3013 = load <16 x i8>, <16 x i8>* %3012, align 1
  %3014 = bitcast i8* %3007 to <16 x i8>*
  store <16 x i8> %3010, <16 x i8>* %3014, align 1
  %3015 = getelementptr i8, i8* %3007, i64 16
  %3016 = bitcast i8* %3015 to <16 x i8>*
  store <16 x i8> %3013, <16 x i8>* %3016, align 1
  %3017 = add i64 %3005, 32
  %3018 = add i64 %3006, -1
  %3019 = icmp eq i64 %3018, 0
  br i1 %3019, label %3020, label %3004

; <label>:3020:                                   ; preds = %3004
  br label %3021

; <label>:3021:                                   ; preds = %2997, %3020
  %3022 = phi i64 [ 0, %2997 ], [ %3017, %3020 ]
  %3023 = icmp ult i64 %2998, 96
  br i1 %3023, label %3073, label %3024

; <label>:3024:                                   ; preds = %3021
  br label %3025

; <label>:3025:                                   ; preds = %3025, %3024
  %3026 = phi i64 [ %3022, %3024 ], [ %3070, %3025 ]
  %3027 = getelementptr i8, i8* %2973, i64 %3026
  %3028 = getelementptr i8, i8* %2972, i64 %3026
  %3029 = bitcast i8* %3028 to <16 x i8>*
  %3030 = load <16 x i8>, <16 x i8>* %3029, align 1
  %3031 = getelementptr i8, i8* %3028, i64 16
  %3032 = bitcast i8* %3031 to <16 x i8>*
  %3033 = load <16 x i8>, <16 x i8>* %3032, align 1
  %3034 = bitcast i8* %3027 to <16 x i8>*
  store <16 x i8> %3030, <16 x i8>* %3034, align 1
  %3035 = getelementptr i8, i8* %3027, i64 16
  %3036 = bitcast i8* %3035 to <16 x i8>*
  store <16 x i8> %3033, <16 x i8>* %3036, align 1
  %3037 = add i64 %3026, 32
  %3038 = getelementptr i8, i8* %2973, i64 %3037
  %3039 = getelementptr i8, i8* %2972, i64 %3037
  %3040 = bitcast i8* %3039 to <16 x i8>*
  %3041 = load <16 x i8>, <16 x i8>* %3040, align 1
  %3042 = getelementptr i8, i8* %3039, i64 16
  %3043 = bitcast i8* %3042 to <16 x i8>*
  %3044 = load <16 x i8>, <16 x i8>* %3043, align 1
  %3045 = bitcast i8* %3038 to <16 x i8>*
  store <16 x i8> %3041, <16 x i8>* %3045, align 1
  %3046 = getelementptr i8, i8* %3038, i64 16
  %3047 = bitcast i8* %3046 to <16 x i8>*
  store <16 x i8> %3044, <16 x i8>* %3047, align 1
  %3048 = add i64 %3026, 64
  %3049 = getelementptr i8, i8* %2973, i64 %3048
  %3050 = getelementptr i8, i8* %2972, i64 %3048
  %3051 = bitcast i8* %3050 to <16 x i8>*
  %3052 = load <16 x i8>, <16 x i8>* %3051, align 1
  %3053 = getelementptr i8, i8* %3050, i64 16
  %3054 = bitcast i8* %3053 to <16 x i8>*
  %3055 = load <16 x i8>, <16 x i8>* %3054, align 1
  %3056 = bitcast i8* %3049 to <16 x i8>*
  store <16 x i8> %3052, <16 x i8>* %3056, align 1
  %3057 = getelementptr i8, i8* %3049, i64 16
  %3058 = bitcast i8* %3057 to <16 x i8>*
  store <16 x i8> %3055, <16 x i8>* %3058, align 1
  %3059 = add i64 %3026, 96
  %3060 = getelementptr i8, i8* %2973, i64 %3059
  %3061 = getelementptr i8, i8* %2972, i64 %3059
  %3062 = bitcast i8* %3061 to <16 x i8>*
  %3063 = load <16 x i8>, <16 x i8>* %3062, align 1
  %3064 = getelementptr i8, i8* %3061, i64 16
  %3065 = bitcast i8* %3064 to <16 x i8>*
  %3066 = load <16 x i8>, <16 x i8>* %3065, align 1
  %3067 = bitcast i8* %3060 to <16 x i8>*
  store <16 x i8> %3063, <16 x i8>* %3067, align 1
  %3068 = getelementptr i8, i8* %3060, i64 16
  %3069 = bitcast i8* %3068 to <16 x i8>*
  store <16 x i8> %3066, <16 x i8>* %3069, align 1
  %3070 = add i64 %3026, 128
  %3071 = icmp eq i64 %3070, %2985
  br i1 %3071, label %3072, label %3025

; <label>:3072:                                   ; preds = %3025
  br label %3073

; <label>:3073:                                   ; preds = %3021, %3072
  %3074 = icmp eq i64 %2979, %2985
  br i1 %3074, label %3096, label %2981

; <label>:3075:                                   ; preds = %2961
  %3076 = zext i32 %2965 to i64
  %3077 = icmp ult i8 %2964, 64
  %3078 = shl i64 1, %3076
  %3079 = and i64 %3078, 317209104613377
  %3080 = icmp ne i64 %3079, 0
  %3081 = and i1 %3077, %3080
  br i1 %3081, label %3082, label %3084

; <label>:3082:                                   ; preds = %3075
  %3083 = getelementptr inbounds i8, i8* %2962, i64 1
  store i8 %2964, i8* %2962, align 1
  br label %3084

; <label>:3084:                                   ; preds = %3082, %3075
  %3085 = phi i8* [ %3083, %3082 ], [ %2962, %3075 ]
  %3086 = getelementptr inbounds i8, i8* %2963, i64 1
  %3087 = icmp ult i8* %3086, %2958
  br i1 %3087, label %2961, label %2968

; <label>:3088:                                   ; preds = %2981, %3088
  %3089 = phi i8* [ %3093, %3088 ], [ %2982, %2981 ]
  %3090 = phi i8* [ %3091, %3088 ], [ %2983, %2981 ]
  %3091 = getelementptr inbounds i8, i8* %3090, i64 1
  %3092 = load i8, i8* %3090, align 1
  %3093 = getelementptr inbounds i8, i8* %3089, i64 1
  store i8 %3092, i8* %3089, align 1
  %3094 = icmp eq i8* %3091, %2958
  br i1 %3094, label %3095, label %3088

; <label>:3095:                                   ; preds = %3088
  br label %3096

; <label>:3096:                                   ; preds = %3095, %3073
  %3097 = getelementptr i8, i8* %0, i64 %2977
  %3098 = ptrtoint i8* %3097 to i64
  %3099 = getelementptr i8, i8* %2973, i64 %3098
  br label %3100

; <label>:3100:                                   ; preds = %2971, %3096
  %3101 = phi i8* [ %2973, %2971 ], [ %3099, %3096 ]
  %3102 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3101, i1 false) #9
  %3103 = tail call i8* @__memcpy_chk(i8* %3101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %3102) #9
  %3104 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 512) #9
  br label %4067

; <label>:3105:                                   ; preds = %6
  %3106 = getelementptr inbounds i8, i8* %5, i64 64
  %3107 = bitcast i8* %3106 to i64*
  %3108 = load i64, i64* %3107, align 8
  %3109 = getelementptr inbounds i8, i8* %0, i64 1
  %3110 = getelementptr inbounds i8, i8* %0, i64 %1
  %3111 = icmp sgt i64 %1, 1
  br i1 %3111, label %3112, label %3123

; <label>:3112:                                   ; preds = %3105
  br label %3113

; <label>:3113:                                   ; preds = %3112, %3236
  %3114 = phi i8* [ %3237, %3236 ], [ %3109, %3112 ]
  %3115 = phi i8* [ %3238, %3236 ], [ %3109, %3112 ]
  %3116 = load i8, i8* %3115, align 1
  %3117 = sext i8 %3116 to i32
  %3118 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3117, i64 8) #9
  %3119 = icmp eq i8* %3118, null
  br i1 %3119, label %3120, label %3227

; <label>:3120:                                   ; preds = %3113, %3236
  %3121 = phi i8* [ %3238, %3236 ], [ %3115, %3113 ]
  %3122 = phi i8* [ %3237, %3236 ], [ %3114, %3113 ]
  br label %3123

; <label>:3123:                                   ; preds = %3120, %3105
  %3124 = phi i8* [ %3109, %3105 ], [ %3121, %3120 ]
  %3125 = phi i8* [ %3109, %3105 ], [ %3122, %3120 ]
  %3126 = ptrtoint i8* %3124 to i64
  %3127 = icmp ult i8* %3124, %3110
  br i1 %3127, label %3128, label %3252

; <label>:3128:                                   ; preds = %3123
  %3129 = sub i64 %1, %3126
  %3130 = getelementptr i8, i8* %0, i64 %3129
  %3131 = ptrtoint i8* %3130 to i64
  %3132 = icmp ult i8* %3130, inttoptr (i64 32 to i8*)
  br i1 %3132, label %3133, label %3136

; <label>:3133:                                   ; preds = %3225, %3139, %3136, %3128
  %3134 = phi i8* [ %3125, %3139 ], [ %3125, %3136 ], [ %3125, %3128 ], [ %3147, %3225 ]
  %3135 = phi i8* [ %3124, %3139 ], [ %3124, %3136 ], [ %3124, %3128 ], [ %3148, %3225 ]
  br label %3240

; <label>:3136:                                   ; preds = %3128
  %3137 = and i64 %3131, -32
  %3138 = icmp eq i64 %3137, 0
  br i1 %3138, label %3133, label %3139

; <label>:3139:                                   ; preds = %3136
  %3140 = sub i64 %1, %3126
  %3141 = getelementptr i8, i8* %0, i64 %3140
  %3142 = ptrtoint i8* %3141 to i64
  %3143 = getelementptr i8, i8* %3125, i64 %3142
  %3144 = icmp ult i8* %3125, %3110
  %3145 = icmp ult i8* %3124, %3143
  %3146 = and i1 %3144, %3145
  %3147 = getelementptr i8, i8* %3125, i64 %3137
  %3148 = getelementptr i8, i8* %3124, i64 %3137
  br i1 %3146, label %3133, label %3149

; <label>:3149:                                   ; preds = %3139
  %3150 = add i64 %3137, -32
  %3151 = lshr exact i64 %3150, 5
  %3152 = add nuw nsw i64 %3151, 1
  %3153 = and i64 %3152, 3
  %3154 = icmp eq i64 %3153, 0
  br i1 %3154, label %3173, label %3155

; <label>:3155:                                   ; preds = %3149
  br label %3156

; <label>:3156:                                   ; preds = %3156, %3155
  %3157 = phi i64 [ %3169, %3156 ], [ 0, %3155 ]
  %3158 = phi i64 [ %3170, %3156 ], [ %3153, %3155 ]
  %3159 = getelementptr i8, i8* %3125, i64 %3157
  %3160 = getelementptr i8, i8* %3124, i64 %3157
  %3161 = bitcast i8* %3160 to <16 x i8>*
  %3162 = load <16 x i8>, <16 x i8>* %3161, align 1
  %3163 = getelementptr i8, i8* %3160, i64 16
  %3164 = bitcast i8* %3163 to <16 x i8>*
  %3165 = load <16 x i8>, <16 x i8>* %3164, align 1
  %3166 = bitcast i8* %3159 to <16 x i8>*
  store <16 x i8> %3162, <16 x i8>* %3166, align 1
  %3167 = getelementptr i8, i8* %3159, i64 16
  %3168 = bitcast i8* %3167 to <16 x i8>*
  store <16 x i8> %3165, <16 x i8>* %3168, align 1
  %3169 = add i64 %3157, 32
  %3170 = add i64 %3158, -1
  %3171 = icmp eq i64 %3170, 0
  br i1 %3171, label %3172, label %3156

; <label>:3172:                                   ; preds = %3156
  br label %3173

; <label>:3173:                                   ; preds = %3149, %3172
  %3174 = phi i64 [ 0, %3149 ], [ %3169, %3172 ]
  %3175 = icmp ult i64 %3150, 96
  br i1 %3175, label %3225, label %3176

; <label>:3176:                                   ; preds = %3173
  br label %3177

; <label>:3177:                                   ; preds = %3177, %3176
  %3178 = phi i64 [ %3174, %3176 ], [ %3222, %3177 ]
  %3179 = getelementptr i8, i8* %3125, i64 %3178
  %3180 = getelementptr i8, i8* %3124, i64 %3178
  %3181 = bitcast i8* %3180 to <16 x i8>*
  %3182 = load <16 x i8>, <16 x i8>* %3181, align 1
  %3183 = getelementptr i8, i8* %3180, i64 16
  %3184 = bitcast i8* %3183 to <16 x i8>*
  %3185 = load <16 x i8>, <16 x i8>* %3184, align 1
  %3186 = bitcast i8* %3179 to <16 x i8>*
  store <16 x i8> %3182, <16 x i8>* %3186, align 1
  %3187 = getelementptr i8, i8* %3179, i64 16
  %3188 = bitcast i8* %3187 to <16 x i8>*
  store <16 x i8> %3185, <16 x i8>* %3188, align 1
  %3189 = add i64 %3178, 32
  %3190 = getelementptr i8, i8* %3125, i64 %3189
  %3191 = getelementptr i8, i8* %3124, i64 %3189
  %3192 = bitcast i8* %3191 to <16 x i8>*
  %3193 = load <16 x i8>, <16 x i8>* %3192, align 1
  %3194 = getelementptr i8, i8* %3191, i64 16
  %3195 = bitcast i8* %3194 to <16 x i8>*
  %3196 = load <16 x i8>, <16 x i8>* %3195, align 1
  %3197 = bitcast i8* %3190 to <16 x i8>*
  store <16 x i8> %3193, <16 x i8>* %3197, align 1
  %3198 = getelementptr i8, i8* %3190, i64 16
  %3199 = bitcast i8* %3198 to <16 x i8>*
  store <16 x i8> %3196, <16 x i8>* %3199, align 1
  %3200 = add i64 %3178, 64
  %3201 = getelementptr i8, i8* %3125, i64 %3200
  %3202 = getelementptr i8, i8* %3124, i64 %3200
  %3203 = bitcast i8* %3202 to <16 x i8>*
  %3204 = load <16 x i8>, <16 x i8>* %3203, align 1
  %3205 = getelementptr i8, i8* %3202, i64 16
  %3206 = bitcast i8* %3205 to <16 x i8>*
  %3207 = load <16 x i8>, <16 x i8>* %3206, align 1
  %3208 = bitcast i8* %3201 to <16 x i8>*
  store <16 x i8> %3204, <16 x i8>* %3208, align 1
  %3209 = getelementptr i8, i8* %3201, i64 16
  %3210 = bitcast i8* %3209 to <16 x i8>*
  store <16 x i8> %3207, <16 x i8>* %3210, align 1
  %3211 = add i64 %3178, 96
  %3212 = getelementptr i8, i8* %3125, i64 %3211
  %3213 = getelementptr i8, i8* %3124, i64 %3211
  %3214 = bitcast i8* %3213 to <16 x i8>*
  %3215 = load <16 x i8>, <16 x i8>* %3214, align 1
  %3216 = getelementptr i8, i8* %3213, i64 16
  %3217 = bitcast i8* %3216 to <16 x i8>*
  %3218 = load <16 x i8>, <16 x i8>* %3217, align 1
  %3219 = bitcast i8* %3212 to <16 x i8>*
  store <16 x i8> %3215, <16 x i8>* %3219, align 1
  %3220 = getelementptr i8, i8* %3212, i64 16
  %3221 = bitcast i8* %3220 to <16 x i8>*
  store <16 x i8> %3218, <16 x i8>* %3221, align 1
  %3222 = add i64 %3178, 128
  %3223 = icmp eq i64 %3222, %3137
  br i1 %3223, label %3224, label %3177

; <label>:3224:                                   ; preds = %3177
  br label %3225

; <label>:3225:                                   ; preds = %3173, %3224
  %3226 = icmp eq i64 %3131, %3137
  br i1 %3226, label %3248, label %3133

; <label>:3227:                                   ; preds = %3113
  %3228 = zext i32 %3117 to i64
  %3229 = icmp ult i8 %3116, 64
  %3230 = shl i64 1, %3228
  %3231 = and i64 %3230, 317209104613377
  %3232 = icmp ne i64 %3231, 0
  %3233 = and i1 %3229, %3232
  br i1 %3233, label %3234, label %3236

; <label>:3234:                                   ; preds = %3227
  %3235 = getelementptr inbounds i8, i8* %3114, i64 1
  store i8 %3116, i8* %3114, align 1
  br label %3236

; <label>:3236:                                   ; preds = %3234, %3227
  %3237 = phi i8* [ %3235, %3234 ], [ %3114, %3227 ]
  %3238 = getelementptr inbounds i8, i8* %3115, i64 1
  %3239 = icmp ult i8* %3238, %3110
  br i1 %3239, label %3113, label %3120

; <label>:3240:                                   ; preds = %3133, %3240
  %3241 = phi i8* [ %3245, %3240 ], [ %3134, %3133 ]
  %3242 = phi i8* [ %3243, %3240 ], [ %3135, %3133 ]
  %3243 = getelementptr inbounds i8, i8* %3242, i64 1
  %3244 = load i8, i8* %3242, align 1
  %3245 = getelementptr inbounds i8, i8* %3241, i64 1
  store i8 %3244, i8* %3241, align 1
  %3246 = icmp eq i8* %3243, %3110
  br i1 %3246, label %3247, label %3240

; <label>:3247:                                   ; preds = %3240
  br label %3248

; <label>:3248:                                   ; preds = %3247, %3225
  %3249 = getelementptr i8, i8* %0, i64 %3129
  %3250 = ptrtoint i8* %3249 to i64
  %3251 = getelementptr i8, i8* %3125, i64 %3250
  br label %3252

; <label>:3252:                                   ; preds = %3123, %3248
  %3253 = phi i8* [ %3125, %3123 ], [ %3251, %3248 ]
  %3254 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3253, i1 false) #9
  %3255 = tail call i8* @__memcpy_chk(i8* %3253, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %3254) #9
  %3256 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %3108) #9
  br label %4067

; <label>:3257:                                   ; preds = %6
  %3258 = getelementptr inbounds i8, i8* %5, i64 56
  %3259 = bitcast i8* %3258 to i64*
  %3260 = load i64, i64* %3259, align 8
  %3261 = icmp sgt i64 %3260, 0
  %3262 = icmp ult i64 %3260, 2305843009213693953
  %3263 = and i1 %3261, %3262
  %3264 = select i1 %3263, i64 %3260, i64 512
  %3265 = getelementptr inbounds i8, i8* %0, i64 1
  %3266 = getelementptr inbounds i8, i8* %0, i64 %1
  %3267 = icmp sgt i64 %1, 1
  br i1 %3267, label %3268, label %3279

; <label>:3268:                                   ; preds = %3257
  br label %3269

; <label>:3269:                                   ; preds = %3268, %3392
  %3270 = phi i8* [ %3393, %3392 ], [ %3265, %3268 ]
  %3271 = phi i8* [ %3394, %3392 ], [ %3265, %3268 ]
  %3272 = load i8, i8* %3271, align 1
  %3273 = sext i8 %3272 to i32
  %3274 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3273, i64 8) #9
  %3275 = icmp eq i8* %3274, null
  br i1 %3275, label %3276, label %3383

; <label>:3276:                                   ; preds = %3269, %3392
  %3277 = phi i8* [ %3394, %3392 ], [ %3271, %3269 ]
  %3278 = phi i8* [ %3393, %3392 ], [ %3270, %3269 ]
  br label %3279

; <label>:3279:                                   ; preds = %3276, %3257
  %3280 = phi i8* [ %3265, %3257 ], [ %3277, %3276 ]
  %3281 = phi i8* [ %3265, %3257 ], [ %3278, %3276 ]
  %3282 = ptrtoint i8* %3280 to i64
  %3283 = icmp ult i8* %3280, %3266
  br i1 %3283, label %3284, label %3408

; <label>:3284:                                   ; preds = %3279
  %3285 = sub i64 %1, %3282
  %3286 = getelementptr i8, i8* %0, i64 %3285
  %3287 = ptrtoint i8* %3286 to i64
  %3288 = icmp ult i8* %3286, inttoptr (i64 32 to i8*)
  br i1 %3288, label %3289, label %3292

; <label>:3289:                                   ; preds = %3381, %3295, %3292, %3284
  %3290 = phi i8* [ %3281, %3295 ], [ %3281, %3292 ], [ %3281, %3284 ], [ %3303, %3381 ]
  %3291 = phi i8* [ %3280, %3295 ], [ %3280, %3292 ], [ %3280, %3284 ], [ %3304, %3381 ]
  br label %3396

; <label>:3292:                                   ; preds = %3284
  %3293 = and i64 %3287, -32
  %3294 = icmp eq i64 %3293, 0
  br i1 %3294, label %3289, label %3295

; <label>:3295:                                   ; preds = %3292
  %3296 = sub i64 %1, %3282
  %3297 = getelementptr i8, i8* %0, i64 %3296
  %3298 = ptrtoint i8* %3297 to i64
  %3299 = getelementptr i8, i8* %3281, i64 %3298
  %3300 = icmp ult i8* %3281, %3266
  %3301 = icmp ult i8* %3280, %3299
  %3302 = and i1 %3300, %3301
  %3303 = getelementptr i8, i8* %3281, i64 %3293
  %3304 = getelementptr i8, i8* %3280, i64 %3293
  br i1 %3302, label %3289, label %3305

; <label>:3305:                                   ; preds = %3295
  %3306 = add i64 %3293, -32
  %3307 = lshr exact i64 %3306, 5
  %3308 = add nuw nsw i64 %3307, 1
  %3309 = and i64 %3308, 3
  %3310 = icmp eq i64 %3309, 0
  br i1 %3310, label %3329, label %3311

; <label>:3311:                                   ; preds = %3305
  br label %3312

; <label>:3312:                                   ; preds = %3312, %3311
  %3313 = phi i64 [ %3325, %3312 ], [ 0, %3311 ]
  %3314 = phi i64 [ %3326, %3312 ], [ %3309, %3311 ]
  %3315 = getelementptr i8, i8* %3281, i64 %3313
  %3316 = getelementptr i8, i8* %3280, i64 %3313
  %3317 = bitcast i8* %3316 to <16 x i8>*
  %3318 = load <16 x i8>, <16 x i8>* %3317, align 1
  %3319 = getelementptr i8, i8* %3316, i64 16
  %3320 = bitcast i8* %3319 to <16 x i8>*
  %3321 = load <16 x i8>, <16 x i8>* %3320, align 1
  %3322 = bitcast i8* %3315 to <16 x i8>*
  store <16 x i8> %3318, <16 x i8>* %3322, align 1
  %3323 = getelementptr i8, i8* %3315, i64 16
  %3324 = bitcast i8* %3323 to <16 x i8>*
  store <16 x i8> %3321, <16 x i8>* %3324, align 1
  %3325 = add i64 %3313, 32
  %3326 = add i64 %3314, -1
  %3327 = icmp eq i64 %3326, 0
  br i1 %3327, label %3328, label %3312

; <label>:3328:                                   ; preds = %3312
  br label %3329

; <label>:3329:                                   ; preds = %3305, %3328
  %3330 = phi i64 [ 0, %3305 ], [ %3325, %3328 ]
  %3331 = icmp ult i64 %3306, 96
  br i1 %3331, label %3381, label %3332

; <label>:3332:                                   ; preds = %3329
  br label %3333

; <label>:3333:                                   ; preds = %3333, %3332
  %3334 = phi i64 [ %3330, %3332 ], [ %3378, %3333 ]
  %3335 = getelementptr i8, i8* %3281, i64 %3334
  %3336 = getelementptr i8, i8* %3280, i64 %3334
  %3337 = bitcast i8* %3336 to <16 x i8>*
  %3338 = load <16 x i8>, <16 x i8>* %3337, align 1
  %3339 = getelementptr i8, i8* %3336, i64 16
  %3340 = bitcast i8* %3339 to <16 x i8>*
  %3341 = load <16 x i8>, <16 x i8>* %3340, align 1
  %3342 = bitcast i8* %3335 to <16 x i8>*
  store <16 x i8> %3338, <16 x i8>* %3342, align 1
  %3343 = getelementptr i8, i8* %3335, i64 16
  %3344 = bitcast i8* %3343 to <16 x i8>*
  store <16 x i8> %3341, <16 x i8>* %3344, align 1
  %3345 = add i64 %3334, 32
  %3346 = getelementptr i8, i8* %3281, i64 %3345
  %3347 = getelementptr i8, i8* %3280, i64 %3345
  %3348 = bitcast i8* %3347 to <16 x i8>*
  %3349 = load <16 x i8>, <16 x i8>* %3348, align 1
  %3350 = getelementptr i8, i8* %3347, i64 16
  %3351 = bitcast i8* %3350 to <16 x i8>*
  %3352 = load <16 x i8>, <16 x i8>* %3351, align 1
  %3353 = bitcast i8* %3346 to <16 x i8>*
  store <16 x i8> %3349, <16 x i8>* %3353, align 1
  %3354 = getelementptr i8, i8* %3346, i64 16
  %3355 = bitcast i8* %3354 to <16 x i8>*
  store <16 x i8> %3352, <16 x i8>* %3355, align 1
  %3356 = add i64 %3334, 64
  %3357 = getelementptr i8, i8* %3281, i64 %3356
  %3358 = getelementptr i8, i8* %3280, i64 %3356
  %3359 = bitcast i8* %3358 to <16 x i8>*
  %3360 = load <16 x i8>, <16 x i8>* %3359, align 1
  %3361 = getelementptr i8, i8* %3358, i64 16
  %3362 = bitcast i8* %3361 to <16 x i8>*
  %3363 = load <16 x i8>, <16 x i8>* %3362, align 1
  %3364 = bitcast i8* %3357 to <16 x i8>*
  store <16 x i8> %3360, <16 x i8>* %3364, align 1
  %3365 = getelementptr i8, i8* %3357, i64 16
  %3366 = bitcast i8* %3365 to <16 x i8>*
  store <16 x i8> %3363, <16 x i8>* %3366, align 1
  %3367 = add i64 %3334, 96
  %3368 = getelementptr i8, i8* %3281, i64 %3367
  %3369 = getelementptr i8, i8* %3280, i64 %3367
  %3370 = bitcast i8* %3369 to <16 x i8>*
  %3371 = load <16 x i8>, <16 x i8>* %3370, align 1
  %3372 = getelementptr i8, i8* %3369, i64 16
  %3373 = bitcast i8* %3372 to <16 x i8>*
  %3374 = load <16 x i8>, <16 x i8>* %3373, align 1
  %3375 = bitcast i8* %3368 to <16 x i8>*
  store <16 x i8> %3371, <16 x i8>* %3375, align 1
  %3376 = getelementptr i8, i8* %3368, i64 16
  %3377 = bitcast i8* %3376 to <16 x i8>*
  store <16 x i8> %3374, <16 x i8>* %3377, align 1
  %3378 = add i64 %3334, 128
  %3379 = icmp eq i64 %3378, %3293
  br i1 %3379, label %3380, label %3333

; <label>:3380:                                   ; preds = %3333
  br label %3381

; <label>:3381:                                   ; preds = %3329, %3380
  %3382 = icmp eq i64 %3287, %3293
  br i1 %3382, label %3404, label %3289

; <label>:3383:                                   ; preds = %3269
  %3384 = zext i32 %3273 to i64
  %3385 = icmp ult i8 %3272, 64
  %3386 = shl i64 1, %3384
  %3387 = and i64 %3386, 317209104613377
  %3388 = icmp ne i64 %3387, 0
  %3389 = and i1 %3385, %3388
  br i1 %3389, label %3390, label %3392

; <label>:3390:                                   ; preds = %3383
  %3391 = getelementptr inbounds i8, i8* %3270, i64 1
  store i8 %3272, i8* %3270, align 1
  br label %3392

; <label>:3392:                                   ; preds = %3390, %3383
  %3393 = phi i8* [ %3391, %3390 ], [ %3270, %3383 ]
  %3394 = getelementptr inbounds i8, i8* %3271, i64 1
  %3395 = icmp ult i8* %3394, %3266
  br i1 %3395, label %3269, label %3276

; <label>:3396:                                   ; preds = %3289, %3396
  %3397 = phi i8* [ %3401, %3396 ], [ %3290, %3289 ]
  %3398 = phi i8* [ %3399, %3396 ], [ %3291, %3289 ]
  %3399 = getelementptr inbounds i8, i8* %3398, i64 1
  %3400 = load i8, i8* %3398, align 1
  %3401 = getelementptr inbounds i8, i8* %3397, i64 1
  store i8 %3400, i8* %3397, align 1
  %3402 = icmp eq i8* %3399, %3266
  br i1 %3402, label %3403, label %3396

; <label>:3403:                                   ; preds = %3396
  br label %3404

; <label>:3404:                                   ; preds = %3403, %3381
  %3405 = getelementptr i8, i8* %0, i64 %3285
  %3406 = ptrtoint i8* %3405 to i64
  %3407 = getelementptr i8, i8* %3281, i64 %3406
  br label %3408

; <label>:3408:                                   ; preds = %3279, %3404
  %3409 = phi i8* [ %3281, %3279 ], [ %3407, %3404 ]
  %3410 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3409, i1 false) #9
  %3411 = tail call i8* @__memcpy_chk(i8* %3409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0), i64 3, i64 %3410) #9
  %3412 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %3264) #9
  br label %4067

; <label>:3413:                                   ; preds = %6
  %3414 = getelementptr inbounds i8, i8* %0, i64 1
  %3415 = getelementptr inbounds i8, i8* %0, i64 %1
  %3416 = icmp sgt i64 %1, 1
  br i1 %3416, label %3417, label %3428

; <label>:3417:                                   ; preds = %3413
  br label %3418

; <label>:3418:                                   ; preds = %3417, %3541
  %3419 = phi i8* [ %3542, %3541 ], [ %3414, %3417 ]
  %3420 = phi i8* [ %3543, %3541 ], [ %3414, %3417 ]
  %3421 = load i8, i8* %3420, align 1
  %3422 = sext i8 %3421 to i32
  %3423 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3422, i64 8) #9
  %3424 = icmp eq i8* %3423, null
  br i1 %3424, label %3425, label %3532

; <label>:3425:                                   ; preds = %3418, %3541
  %3426 = phi i8* [ %3543, %3541 ], [ %3420, %3418 ]
  %3427 = phi i8* [ %3542, %3541 ], [ %3419, %3418 ]
  br label %3428

; <label>:3428:                                   ; preds = %3425, %3413
  %3429 = phi i8* [ %3414, %3413 ], [ %3426, %3425 ]
  %3430 = phi i8* [ %3414, %3413 ], [ %3427, %3425 ]
  %3431 = ptrtoint i8* %3429 to i64
  %3432 = icmp ult i8* %3429, %3415
  br i1 %3432, label %3433, label %3557

; <label>:3433:                                   ; preds = %3428
  %3434 = sub i64 %1, %3431
  %3435 = getelementptr i8, i8* %0, i64 %3434
  %3436 = ptrtoint i8* %3435 to i64
  %3437 = icmp ult i8* %3435, inttoptr (i64 32 to i8*)
  br i1 %3437, label %3438, label %3441

; <label>:3438:                                   ; preds = %3530, %3444, %3441, %3433
  %3439 = phi i8* [ %3430, %3444 ], [ %3430, %3441 ], [ %3430, %3433 ], [ %3452, %3530 ]
  %3440 = phi i8* [ %3429, %3444 ], [ %3429, %3441 ], [ %3429, %3433 ], [ %3453, %3530 ]
  br label %3545

; <label>:3441:                                   ; preds = %3433
  %3442 = and i64 %3436, -32
  %3443 = icmp eq i64 %3442, 0
  br i1 %3443, label %3438, label %3444

; <label>:3444:                                   ; preds = %3441
  %3445 = sub i64 %1, %3431
  %3446 = getelementptr i8, i8* %0, i64 %3445
  %3447 = ptrtoint i8* %3446 to i64
  %3448 = getelementptr i8, i8* %3430, i64 %3447
  %3449 = icmp ult i8* %3430, %3415
  %3450 = icmp ult i8* %3429, %3448
  %3451 = and i1 %3449, %3450
  %3452 = getelementptr i8, i8* %3430, i64 %3442
  %3453 = getelementptr i8, i8* %3429, i64 %3442
  br i1 %3451, label %3438, label %3454

; <label>:3454:                                   ; preds = %3444
  %3455 = add i64 %3442, -32
  %3456 = lshr exact i64 %3455, 5
  %3457 = add nuw nsw i64 %3456, 1
  %3458 = and i64 %3457, 3
  %3459 = icmp eq i64 %3458, 0
  br i1 %3459, label %3478, label %3460

; <label>:3460:                                   ; preds = %3454
  br label %3461

; <label>:3461:                                   ; preds = %3461, %3460
  %3462 = phi i64 [ %3474, %3461 ], [ 0, %3460 ]
  %3463 = phi i64 [ %3475, %3461 ], [ %3458, %3460 ]
  %3464 = getelementptr i8, i8* %3430, i64 %3462
  %3465 = getelementptr i8, i8* %3429, i64 %3462
  %3466 = bitcast i8* %3465 to <16 x i8>*
  %3467 = load <16 x i8>, <16 x i8>* %3466, align 1
  %3468 = getelementptr i8, i8* %3465, i64 16
  %3469 = bitcast i8* %3468 to <16 x i8>*
  %3470 = load <16 x i8>, <16 x i8>* %3469, align 1
  %3471 = bitcast i8* %3464 to <16 x i8>*
  store <16 x i8> %3467, <16 x i8>* %3471, align 1
  %3472 = getelementptr i8, i8* %3464, i64 16
  %3473 = bitcast i8* %3472 to <16 x i8>*
  store <16 x i8> %3470, <16 x i8>* %3473, align 1
  %3474 = add i64 %3462, 32
  %3475 = add i64 %3463, -1
  %3476 = icmp eq i64 %3475, 0
  br i1 %3476, label %3477, label %3461

; <label>:3477:                                   ; preds = %3461
  br label %3478

; <label>:3478:                                   ; preds = %3454, %3477
  %3479 = phi i64 [ 0, %3454 ], [ %3474, %3477 ]
  %3480 = icmp ult i64 %3455, 96
  br i1 %3480, label %3530, label %3481

; <label>:3481:                                   ; preds = %3478
  br label %3482

; <label>:3482:                                   ; preds = %3482, %3481
  %3483 = phi i64 [ %3479, %3481 ], [ %3527, %3482 ]
  %3484 = getelementptr i8, i8* %3430, i64 %3483
  %3485 = getelementptr i8, i8* %3429, i64 %3483
  %3486 = bitcast i8* %3485 to <16 x i8>*
  %3487 = load <16 x i8>, <16 x i8>* %3486, align 1
  %3488 = getelementptr i8, i8* %3485, i64 16
  %3489 = bitcast i8* %3488 to <16 x i8>*
  %3490 = load <16 x i8>, <16 x i8>* %3489, align 1
  %3491 = bitcast i8* %3484 to <16 x i8>*
  store <16 x i8> %3487, <16 x i8>* %3491, align 1
  %3492 = getelementptr i8, i8* %3484, i64 16
  %3493 = bitcast i8* %3492 to <16 x i8>*
  store <16 x i8> %3490, <16 x i8>* %3493, align 1
  %3494 = add i64 %3483, 32
  %3495 = getelementptr i8, i8* %3430, i64 %3494
  %3496 = getelementptr i8, i8* %3429, i64 %3494
  %3497 = bitcast i8* %3496 to <16 x i8>*
  %3498 = load <16 x i8>, <16 x i8>* %3497, align 1
  %3499 = getelementptr i8, i8* %3496, i64 16
  %3500 = bitcast i8* %3499 to <16 x i8>*
  %3501 = load <16 x i8>, <16 x i8>* %3500, align 1
  %3502 = bitcast i8* %3495 to <16 x i8>*
  store <16 x i8> %3498, <16 x i8>* %3502, align 1
  %3503 = getelementptr i8, i8* %3495, i64 16
  %3504 = bitcast i8* %3503 to <16 x i8>*
  store <16 x i8> %3501, <16 x i8>* %3504, align 1
  %3505 = add i64 %3483, 64
  %3506 = getelementptr i8, i8* %3430, i64 %3505
  %3507 = getelementptr i8, i8* %3429, i64 %3505
  %3508 = bitcast i8* %3507 to <16 x i8>*
  %3509 = load <16 x i8>, <16 x i8>* %3508, align 1
  %3510 = getelementptr i8, i8* %3507, i64 16
  %3511 = bitcast i8* %3510 to <16 x i8>*
  %3512 = load <16 x i8>, <16 x i8>* %3511, align 1
  %3513 = bitcast i8* %3506 to <16 x i8>*
  store <16 x i8> %3509, <16 x i8>* %3513, align 1
  %3514 = getelementptr i8, i8* %3506, i64 16
  %3515 = bitcast i8* %3514 to <16 x i8>*
  store <16 x i8> %3512, <16 x i8>* %3515, align 1
  %3516 = add i64 %3483, 96
  %3517 = getelementptr i8, i8* %3430, i64 %3516
  %3518 = getelementptr i8, i8* %3429, i64 %3516
  %3519 = bitcast i8* %3518 to <16 x i8>*
  %3520 = load <16 x i8>, <16 x i8>* %3519, align 1
  %3521 = getelementptr i8, i8* %3518, i64 16
  %3522 = bitcast i8* %3521 to <16 x i8>*
  %3523 = load <16 x i8>, <16 x i8>* %3522, align 1
  %3524 = bitcast i8* %3517 to <16 x i8>*
  store <16 x i8> %3520, <16 x i8>* %3524, align 1
  %3525 = getelementptr i8, i8* %3517, i64 16
  %3526 = bitcast i8* %3525 to <16 x i8>*
  store <16 x i8> %3523, <16 x i8>* %3526, align 1
  %3527 = add i64 %3483, 128
  %3528 = icmp eq i64 %3527, %3442
  br i1 %3528, label %3529, label %3482

; <label>:3529:                                   ; preds = %3482
  br label %3530

; <label>:3530:                                   ; preds = %3478, %3529
  %3531 = icmp eq i64 %3436, %3442
  br i1 %3531, label %3553, label %3438

; <label>:3532:                                   ; preds = %3418
  %3533 = zext i32 %3422 to i64
  %3534 = icmp ult i8 %3421, 64
  %3535 = shl i64 1, %3533
  %3536 = and i64 %3535, 35184372088833
  %3537 = icmp ne i64 %3536, 0
  %3538 = and i1 %3534, %3537
  br i1 %3538, label %3539, label %3541

; <label>:3539:                                   ; preds = %3532
  %3540 = getelementptr inbounds i8, i8* %3419, i64 1
  store i8 %3421, i8* %3419, align 1
  br label %3541

; <label>:3541:                                   ; preds = %3539, %3532
  %3542 = phi i8* [ %3540, %3539 ], [ %3419, %3532 ]
  %3543 = getelementptr inbounds i8, i8* %3420, i64 1
  %3544 = icmp ult i8* %3543, %3415
  br i1 %3544, label %3418, label %3425

; <label>:3545:                                   ; preds = %3438, %3545
  %3546 = phi i8* [ %3550, %3545 ], [ %3439, %3438 ]
  %3547 = phi i8* [ %3548, %3545 ], [ %3440, %3438 ]
  %3548 = getelementptr inbounds i8, i8* %3547, i64 1
  %3549 = load i8, i8* %3547, align 1
  %3550 = getelementptr inbounds i8, i8* %3546, i64 1
  store i8 %3549, i8* %3546, align 1
  %3551 = icmp eq i8* %3548, %3415
  br i1 %3551, label %3552, label %3545

; <label>:3552:                                   ; preds = %3545
  br label %3553

; <label>:3553:                                   ; preds = %3552, %3530
  %3554 = getelementptr i8, i8* %0, i64 %3434
  %3555 = ptrtoint i8* %3554 to i64
  %3556 = getelementptr i8, i8* %3430, i64 %3555
  br label %3557

; <label>:3557:                                   ; preds = %3428, %3553
  %3558 = phi i8* [ %3430, %3428 ], [ %3556, %3553 ]
  %3559 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3558, i1 false) #9
  %3560 = tail call i8* @__memcpy_chk(i8* %3558, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %3559) #9
  %3561 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #9
  br label %4067

; <label>:3562:                                   ; preds = %6
  tail call fastcc void @out_epoch_sec(i8* %0, i64 %1, i64 0, i64 0)
  br label %4067

; <label>:3563:                                   ; preds = %6
  %3564 = getelementptr inbounds i8, i8* %5, i64 72
  %3565 = bitcast i8* %3564 to i64*
  %3566 = load i64, i64* %3565, align 8
  %3567 = getelementptr inbounds i8, i8* %5, i64 80
  %3568 = bitcast i8* %3567 to i64*
  %3569 = load i64, i64* %3568, align 8
  tail call fastcc void @human_time(i64 %3566, i64 %3569)
  %3570 = getelementptr inbounds i8, i8* %0, i64 1
  %3571 = getelementptr inbounds i8, i8* %0, i64 %1
  %3572 = icmp sgt i64 %1, 1
  br i1 %3572, label %3573, label %3584

; <label>:3573:                                   ; preds = %3563
  br label %3574

; <label>:3574:                                   ; preds = %3573, %3697
  %3575 = phi i8* [ %3698, %3697 ], [ %3570, %3573 ]
  %3576 = phi i8* [ %3699, %3697 ], [ %3570, %3573 ]
  %3577 = load i8, i8* %3576, align 1
  %3578 = sext i8 %3577 to i32
  %3579 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3578, i64 8) #9
  %3580 = icmp eq i8* %3579, null
  br i1 %3580, label %3581, label %3688

; <label>:3581:                                   ; preds = %3574, %3697
  %3582 = phi i8* [ %3699, %3697 ], [ %3576, %3574 ]
  %3583 = phi i8* [ %3698, %3697 ], [ %3575, %3574 ]
  br label %3584

; <label>:3584:                                   ; preds = %3581, %3563
  %3585 = phi i8* [ %3570, %3563 ], [ %3582, %3581 ]
  %3586 = phi i8* [ %3570, %3563 ], [ %3583, %3581 ]
  %3587 = ptrtoint i8* %3585 to i64
  %3588 = icmp ult i8* %3585, %3571
  br i1 %3588, label %3589, label %3713

; <label>:3589:                                   ; preds = %3584
  %3590 = sub i64 %1, %3587
  %3591 = getelementptr i8, i8* %0, i64 %3590
  %3592 = ptrtoint i8* %3591 to i64
  %3593 = icmp ult i8* %3591, inttoptr (i64 32 to i8*)
  br i1 %3593, label %3594, label %3597

; <label>:3594:                                   ; preds = %3686, %3600, %3597, %3589
  %3595 = phi i8* [ %3586, %3600 ], [ %3586, %3597 ], [ %3586, %3589 ], [ %3608, %3686 ]
  %3596 = phi i8* [ %3585, %3600 ], [ %3585, %3597 ], [ %3585, %3589 ], [ %3609, %3686 ]
  br label %3701

; <label>:3597:                                   ; preds = %3589
  %3598 = and i64 %3592, -32
  %3599 = icmp eq i64 %3598, 0
  br i1 %3599, label %3594, label %3600

; <label>:3600:                                   ; preds = %3597
  %3601 = sub i64 %1, %3587
  %3602 = getelementptr i8, i8* %0, i64 %3601
  %3603 = ptrtoint i8* %3602 to i64
  %3604 = getelementptr i8, i8* %3586, i64 %3603
  %3605 = icmp ult i8* %3586, %3571
  %3606 = icmp ult i8* %3585, %3604
  %3607 = and i1 %3605, %3606
  %3608 = getelementptr i8, i8* %3586, i64 %3598
  %3609 = getelementptr i8, i8* %3585, i64 %3598
  br i1 %3607, label %3594, label %3610

; <label>:3610:                                   ; preds = %3600
  %3611 = add i64 %3598, -32
  %3612 = lshr exact i64 %3611, 5
  %3613 = add nuw nsw i64 %3612, 1
  %3614 = and i64 %3613, 3
  %3615 = icmp eq i64 %3614, 0
  br i1 %3615, label %3634, label %3616

; <label>:3616:                                   ; preds = %3610
  br label %3617

; <label>:3617:                                   ; preds = %3617, %3616
  %3618 = phi i64 [ %3630, %3617 ], [ 0, %3616 ]
  %3619 = phi i64 [ %3631, %3617 ], [ %3614, %3616 ]
  %3620 = getelementptr i8, i8* %3586, i64 %3618
  %3621 = getelementptr i8, i8* %3585, i64 %3618
  %3622 = bitcast i8* %3621 to <16 x i8>*
  %3623 = load <16 x i8>, <16 x i8>* %3622, align 1
  %3624 = getelementptr i8, i8* %3621, i64 16
  %3625 = bitcast i8* %3624 to <16 x i8>*
  %3626 = load <16 x i8>, <16 x i8>* %3625, align 1
  %3627 = bitcast i8* %3620 to <16 x i8>*
  store <16 x i8> %3623, <16 x i8>* %3627, align 1
  %3628 = getelementptr i8, i8* %3620, i64 16
  %3629 = bitcast i8* %3628 to <16 x i8>*
  store <16 x i8> %3626, <16 x i8>* %3629, align 1
  %3630 = add i64 %3618, 32
  %3631 = add i64 %3619, -1
  %3632 = icmp eq i64 %3631, 0
  br i1 %3632, label %3633, label %3617

; <label>:3633:                                   ; preds = %3617
  br label %3634

; <label>:3634:                                   ; preds = %3610, %3633
  %3635 = phi i64 [ 0, %3610 ], [ %3630, %3633 ]
  %3636 = icmp ult i64 %3611, 96
  br i1 %3636, label %3686, label %3637

; <label>:3637:                                   ; preds = %3634
  br label %3638

; <label>:3638:                                   ; preds = %3638, %3637
  %3639 = phi i64 [ %3635, %3637 ], [ %3683, %3638 ]
  %3640 = getelementptr i8, i8* %3586, i64 %3639
  %3641 = getelementptr i8, i8* %3585, i64 %3639
  %3642 = bitcast i8* %3641 to <16 x i8>*
  %3643 = load <16 x i8>, <16 x i8>* %3642, align 1
  %3644 = getelementptr i8, i8* %3641, i64 16
  %3645 = bitcast i8* %3644 to <16 x i8>*
  %3646 = load <16 x i8>, <16 x i8>* %3645, align 1
  %3647 = bitcast i8* %3640 to <16 x i8>*
  store <16 x i8> %3643, <16 x i8>* %3647, align 1
  %3648 = getelementptr i8, i8* %3640, i64 16
  %3649 = bitcast i8* %3648 to <16 x i8>*
  store <16 x i8> %3646, <16 x i8>* %3649, align 1
  %3650 = add i64 %3639, 32
  %3651 = getelementptr i8, i8* %3586, i64 %3650
  %3652 = getelementptr i8, i8* %3585, i64 %3650
  %3653 = bitcast i8* %3652 to <16 x i8>*
  %3654 = load <16 x i8>, <16 x i8>* %3653, align 1
  %3655 = getelementptr i8, i8* %3652, i64 16
  %3656 = bitcast i8* %3655 to <16 x i8>*
  %3657 = load <16 x i8>, <16 x i8>* %3656, align 1
  %3658 = bitcast i8* %3651 to <16 x i8>*
  store <16 x i8> %3654, <16 x i8>* %3658, align 1
  %3659 = getelementptr i8, i8* %3651, i64 16
  %3660 = bitcast i8* %3659 to <16 x i8>*
  store <16 x i8> %3657, <16 x i8>* %3660, align 1
  %3661 = add i64 %3639, 64
  %3662 = getelementptr i8, i8* %3586, i64 %3661
  %3663 = getelementptr i8, i8* %3585, i64 %3661
  %3664 = bitcast i8* %3663 to <16 x i8>*
  %3665 = load <16 x i8>, <16 x i8>* %3664, align 1
  %3666 = getelementptr i8, i8* %3663, i64 16
  %3667 = bitcast i8* %3666 to <16 x i8>*
  %3668 = load <16 x i8>, <16 x i8>* %3667, align 1
  %3669 = bitcast i8* %3662 to <16 x i8>*
  store <16 x i8> %3665, <16 x i8>* %3669, align 1
  %3670 = getelementptr i8, i8* %3662, i64 16
  %3671 = bitcast i8* %3670 to <16 x i8>*
  store <16 x i8> %3668, <16 x i8>* %3671, align 1
  %3672 = add i64 %3639, 96
  %3673 = getelementptr i8, i8* %3586, i64 %3672
  %3674 = getelementptr i8, i8* %3585, i64 %3672
  %3675 = bitcast i8* %3674 to <16 x i8>*
  %3676 = load <16 x i8>, <16 x i8>* %3675, align 1
  %3677 = getelementptr i8, i8* %3674, i64 16
  %3678 = bitcast i8* %3677 to <16 x i8>*
  %3679 = load <16 x i8>, <16 x i8>* %3678, align 1
  %3680 = bitcast i8* %3673 to <16 x i8>*
  store <16 x i8> %3676, <16 x i8>* %3680, align 1
  %3681 = getelementptr i8, i8* %3673, i64 16
  %3682 = bitcast i8* %3681 to <16 x i8>*
  store <16 x i8> %3679, <16 x i8>* %3682, align 1
  %3683 = add i64 %3639, 128
  %3684 = icmp eq i64 %3683, %3598
  br i1 %3684, label %3685, label %3638

; <label>:3685:                                   ; preds = %3638
  br label %3686

; <label>:3686:                                   ; preds = %3634, %3685
  %3687 = icmp eq i64 %3592, %3598
  br i1 %3687, label %3709, label %3594

; <label>:3688:                                   ; preds = %3574
  %3689 = zext i32 %3578 to i64
  %3690 = icmp ult i8 %3577, 64
  %3691 = shl i64 1, %3689
  %3692 = and i64 %3691, 35184372088833
  %3693 = icmp ne i64 %3692, 0
  %3694 = and i1 %3690, %3693
  br i1 %3694, label %3695, label %3697

; <label>:3695:                                   ; preds = %3688
  %3696 = getelementptr inbounds i8, i8* %3575, i64 1
  store i8 %3577, i8* %3575, align 1
  br label %3697

; <label>:3697:                                   ; preds = %3695, %3688
  %3698 = phi i8* [ %3696, %3695 ], [ %3575, %3688 ]
  %3699 = getelementptr inbounds i8, i8* %3576, i64 1
  %3700 = icmp ult i8* %3699, %3571
  br i1 %3700, label %3574, label %3581

; <label>:3701:                                   ; preds = %3594, %3701
  %3702 = phi i8* [ %3706, %3701 ], [ %3595, %3594 ]
  %3703 = phi i8* [ %3704, %3701 ], [ %3596, %3594 ]
  %3704 = getelementptr inbounds i8, i8* %3703, i64 1
  %3705 = load i8, i8* %3703, align 1
  %3706 = getelementptr inbounds i8, i8* %3702, i64 1
  store i8 %3705, i8* %3702, align 1
  %3707 = icmp eq i8* %3704, %3571
  br i1 %3707, label %3708, label %3701

; <label>:3708:                                   ; preds = %3701
  br label %3709

; <label>:3709:                                   ; preds = %3708, %3686
  %3710 = getelementptr i8, i8* %0, i64 %3590
  %3711 = ptrtoint i8* %3710 to i64
  %3712 = getelementptr i8, i8* %3586, i64 %3711
  br label %3713

; <label>:3713:                                   ; preds = %3584, %3709
  %3714 = phi i8* [ %3586, %3584 ], [ %3712, %3709 ]
  %3715 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3714, i1 false) #9
  %3716 = tail call i8* @__memcpy_chk(i8* %3714, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %3715) #9
  %3717 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @human_time.str, i64 0, i64 0)) #9
  br label %4067

; <label>:3718:                                   ; preds = %6
  %3719 = getelementptr inbounds i8, i8* %5, i64 72
  %3720 = bitcast i8* %3719 to i64*
  %3721 = load i64, i64* %3720, align 8
  %3722 = getelementptr inbounds i8, i8* %5, i64 80
  %3723 = bitcast i8* %3722 to i64*
  %3724 = load i64, i64* %3723, align 8
  tail call fastcc void @out_epoch_sec(i8* %0, i64 %1, i64 %3721, i64 %3724)
  br label %4067

; <label>:3725:                                   ; preds = %6
  %3726 = getelementptr inbounds i8, i8* %5, i64 88
  %3727 = bitcast i8* %3726 to i64*
  %3728 = load i64, i64* %3727, align 8
  %3729 = getelementptr inbounds i8, i8* %5, i64 96
  %3730 = bitcast i8* %3729 to i64*
  %3731 = load i64, i64* %3730, align 8
  tail call fastcc void @human_time(i64 %3728, i64 %3731)
  %3732 = getelementptr inbounds i8, i8* %0, i64 1
  %3733 = getelementptr inbounds i8, i8* %0, i64 %1
  %3734 = icmp sgt i64 %1, 1
  br i1 %3734, label %3735, label %3746

; <label>:3735:                                   ; preds = %3725
  br label %3736

; <label>:3736:                                   ; preds = %3735, %3859
  %3737 = phi i8* [ %3860, %3859 ], [ %3732, %3735 ]
  %3738 = phi i8* [ %3861, %3859 ], [ %3732, %3735 ]
  %3739 = load i8, i8* %3738, align 1
  %3740 = sext i8 %3739 to i32
  %3741 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3740, i64 8) #9
  %3742 = icmp eq i8* %3741, null
  br i1 %3742, label %3743, label %3850

; <label>:3743:                                   ; preds = %3736, %3859
  %3744 = phi i8* [ %3861, %3859 ], [ %3738, %3736 ]
  %3745 = phi i8* [ %3860, %3859 ], [ %3737, %3736 ]
  br label %3746

; <label>:3746:                                   ; preds = %3743, %3725
  %3747 = phi i8* [ %3732, %3725 ], [ %3744, %3743 ]
  %3748 = phi i8* [ %3732, %3725 ], [ %3745, %3743 ]
  %3749 = ptrtoint i8* %3747 to i64
  %3750 = icmp ult i8* %3747, %3733
  br i1 %3750, label %3751, label %3875

; <label>:3751:                                   ; preds = %3746
  %3752 = sub i64 %1, %3749
  %3753 = getelementptr i8, i8* %0, i64 %3752
  %3754 = ptrtoint i8* %3753 to i64
  %3755 = icmp ult i8* %3753, inttoptr (i64 32 to i8*)
  br i1 %3755, label %3756, label %3759

; <label>:3756:                                   ; preds = %3848, %3762, %3759, %3751
  %3757 = phi i8* [ %3748, %3762 ], [ %3748, %3759 ], [ %3748, %3751 ], [ %3770, %3848 ]
  %3758 = phi i8* [ %3747, %3762 ], [ %3747, %3759 ], [ %3747, %3751 ], [ %3771, %3848 ]
  br label %3863

; <label>:3759:                                   ; preds = %3751
  %3760 = and i64 %3754, -32
  %3761 = icmp eq i64 %3760, 0
  br i1 %3761, label %3756, label %3762

; <label>:3762:                                   ; preds = %3759
  %3763 = sub i64 %1, %3749
  %3764 = getelementptr i8, i8* %0, i64 %3763
  %3765 = ptrtoint i8* %3764 to i64
  %3766 = getelementptr i8, i8* %3748, i64 %3765
  %3767 = icmp ult i8* %3748, %3733
  %3768 = icmp ult i8* %3747, %3766
  %3769 = and i1 %3767, %3768
  %3770 = getelementptr i8, i8* %3748, i64 %3760
  %3771 = getelementptr i8, i8* %3747, i64 %3760
  br i1 %3769, label %3756, label %3772

; <label>:3772:                                   ; preds = %3762
  %3773 = add i64 %3760, -32
  %3774 = lshr exact i64 %3773, 5
  %3775 = add nuw nsw i64 %3774, 1
  %3776 = and i64 %3775, 3
  %3777 = icmp eq i64 %3776, 0
  br i1 %3777, label %3796, label %3778

; <label>:3778:                                   ; preds = %3772
  br label %3779

; <label>:3779:                                   ; preds = %3779, %3778
  %3780 = phi i64 [ %3792, %3779 ], [ 0, %3778 ]
  %3781 = phi i64 [ %3793, %3779 ], [ %3776, %3778 ]
  %3782 = getelementptr i8, i8* %3748, i64 %3780
  %3783 = getelementptr i8, i8* %3747, i64 %3780
  %3784 = bitcast i8* %3783 to <16 x i8>*
  %3785 = load <16 x i8>, <16 x i8>* %3784, align 1
  %3786 = getelementptr i8, i8* %3783, i64 16
  %3787 = bitcast i8* %3786 to <16 x i8>*
  %3788 = load <16 x i8>, <16 x i8>* %3787, align 1
  %3789 = bitcast i8* %3782 to <16 x i8>*
  store <16 x i8> %3785, <16 x i8>* %3789, align 1
  %3790 = getelementptr i8, i8* %3782, i64 16
  %3791 = bitcast i8* %3790 to <16 x i8>*
  store <16 x i8> %3788, <16 x i8>* %3791, align 1
  %3792 = add i64 %3780, 32
  %3793 = add i64 %3781, -1
  %3794 = icmp eq i64 %3793, 0
  br i1 %3794, label %3795, label %3779

; <label>:3795:                                   ; preds = %3779
  br label %3796

; <label>:3796:                                   ; preds = %3772, %3795
  %3797 = phi i64 [ 0, %3772 ], [ %3792, %3795 ]
  %3798 = icmp ult i64 %3773, 96
  br i1 %3798, label %3848, label %3799

; <label>:3799:                                   ; preds = %3796
  br label %3800

; <label>:3800:                                   ; preds = %3800, %3799
  %3801 = phi i64 [ %3797, %3799 ], [ %3845, %3800 ]
  %3802 = getelementptr i8, i8* %3748, i64 %3801
  %3803 = getelementptr i8, i8* %3747, i64 %3801
  %3804 = bitcast i8* %3803 to <16 x i8>*
  %3805 = load <16 x i8>, <16 x i8>* %3804, align 1
  %3806 = getelementptr i8, i8* %3803, i64 16
  %3807 = bitcast i8* %3806 to <16 x i8>*
  %3808 = load <16 x i8>, <16 x i8>* %3807, align 1
  %3809 = bitcast i8* %3802 to <16 x i8>*
  store <16 x i8> %3805, <16 x i8>* %3809, align 1
  %3810 = getelementptr i8, i8* %3802, i64 16
  %3811 = bitcast i8* %3810 to <16 x i8>*
  store <16 x i8> %3808, <16 x i8>* %3811, align 1
  %3812 = add i64 %3801, 32
  %3813 = getelementptr i8, i8* %3748, i64 %3812
  %3814 = getelementptr i8, i8* %3747, i64 %3812
  %3815 = bitcast i8* %3814 to <16 x i8>*
  %3816 = load <16 x i8>, <16 x i8>* %3815, align 1
  %3817 = getelementptr i8, i8* %3814, i64 16
  %3818 = bitcast i8* %3817 to <16 x i8>*
  %3819 = load <16 x i8>, <16 x i8>* %3818, align 1
  %3820 = bitcast i8* %3813 to <16 x i8>*
  store <16 x i8> %3816, <16 x i8>* %3820, align 1
  %3821 = getelementptr i8, i8* %3813, i64 16
  %3822 = bitcast i8* %3821 to <16 x i8>*
  store <16 x i8> %3819, <16 x i8>* %3822, align 1
  %3823 = add i64 %3801, 64
  %3824 = getelementptr i8, i8* %3748, i64 %3823
  %3825 = getelementptr i8, i8* %3747, i64 %3823
  %3826 = bitcast i8* %3825 to <16 x i8>*
  %3827 = load <16 x i8>, <16 x i8>* %3826, align 1
  %3828 = getelementptr i8, i8* %3825, i64 16
  %3829 = bitcast i8* %3828 to <16 x i8>*
  %3830 = load <16 x i8>, <16 x i8>* %3829, align 1
  %3831 = bitcast i8* %3824 to <16 x i8>*
  store <16 x i8> %3827, <16 x i8>* %3831, align 1
  %3832 = getelementptr i8, i8* %3824, i64 16
  %3833 = bitcast i8* %3832 to <16 x i8>*
  store <16 x i8> %3830, <16 x i8>* %3833, align 1
  %3834 = add i64 %3801, 96
  %3835 = getelementptr i8, i8* %3748, i64 %3834
  %3836 = getelementptr i8, i8* %3747, i64 %3834
  %3837 = bitcast i8* %3836 to <16 x i8>*
  %3838 = load <16 x i8>, <16 x i8>* %3837, align 1
  %3839 = getelementptr i8, i8* %3836, i64 16
  %3840 = bitcast i8* %3839 to <16 x i8>*
  %3841 = load <16 x i8>, <16 x i8>* %3840, align 1
  %3842 = bitcast i8* %3835 to <16 x i8>*
  store <16 x i8> %3838, <16 x i8>* %3842, align 1
  %3843 = getelementptr i8, i8* %3835, i64 16
  %3844 = bitcast i8* %3843 to <16 x i8>*
  store <16 x i8> %3841, <16 x i8>* %3844, align 1
  %3845 = add i64 %3801, 128
  %3846 = icmp eq i64 %3845, %3760
  br i1 %3846, label %3847, label %3800

; <label>:3847:                                   ; preds = %3800
  br label %3848

; <label>:3848:                                   ; preds = %3796, %3847
  %3849 = icmp eq i64 %3754, %3760
  br i1 %3849, label %3871, label %3756

; <label>:3850:                                   ; preds = %3736
  %3851 = zext i32 %3740 to i64
  %3852 = icmp ult i8 %3739, 64
  %3853 = shl i64 1, %3851
  %3854 = and i64 %3853, 35184372088833
  %3855 = icmp ne i64 %3854, 0
  %3856 = and i1 %3852, %3855
  br i1 %3856, label %3857, label %3859

; <label>:3857:                                   ; preds = %3850
  %3858 = getelementptr inbounds i8, i8* %3737, i64 1
  store i8 %3739, i8* %3737, align 1
  br label %3859

; <label>:3859:                                   ; preds = %3857, %3850
  %3860 = phi i8* [ %3858, %3857 ], [ %3737, %3850 ]
  %3861 = getelementptr inbounds i8, i8* %3738, i64 1
  %3862 = icmp ult i8* %3861, %3733
  br i1 %3862, label %3736, label %3743

; <label>:3863:                                   ; preds = %3756, %3863
  %3864 = phi i8* [ %3868, %3863 ], [ %3757, %3756 ]
  %3865 = phi i8* [ %3866, %3863 ], [ %3758, %3756 ]
  %3866 = getelementptr inbounds i8, i8* %3865, i64 1
  %3867 = load i8, i8* %3865, align 1
  %3868 = getelementptr inbounds i8, i8* %3864, i64 1
  store i8 %3867, i8* %3864, align 1
  %3869 = icmp eq i8* %3866, %3733
  br i1 %3869, label %3870, label %3863

; <label>:3870:                                   ; preds = %3863
  br label %3871

; <label>:3871:                                   ; preds = %3870, %3848
  %3872 = getelementptr i8, i8* %0, i64 %3752
  %3873 = ptrtoint i8* %3872 to i64
  %3874 = getelementptr i8, i8* %3748, i64 %3873
  br label %3875

; <label>:3875:                                   ; preds = %3746, %3871
  %3876 = phi i8* [ %3748, %3746 ], [ %3874, %3871 ]
  %3877 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %3876, i1 false) #9
  %3878 = tail call i8* @__memcpy_chk(i8* %3876, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %3877) #9
  %3879 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @human_time.str, i64 0, i64 0)) #9
  br label %4067

; <label>:3880:                                   ; preds = %6
  %3881 = getelementptr inbounds i8, i8* %5, i64 88
  %3882 = bitcast i8* %3881 to i64*
  %3883 = load i64, i64* %3882, align 8
  %3884 = getelementptr inbounds i8, i8* %5, i64 96
  %3885 = bitcast i8* %3884 to i64*
  %3886 = load i64, i64* %3885, align 8
  tail call fastcc void @out_epoch_sec(i8* %0, i64 %1, i64 %3883, i64 %3886)
  br label %4067

; <label>:3887:                                   ; preds = %6
  %3888 = getelementptr inbounds i8, i8* %5, i64 104
  %3889 = bitcast i8* %3888 to i64*
  %3890 = load i64, i64* %3889, align 8
  %3891 = getelementptr inbounds i8, i8* %5, i64 112
  %3892 = bitcast i8* %3891 to i64*
  %3893 = load i64, i64* %3892, align 8
  tail call fastcc void @human_time(i64 %3890, i64 %3893)
  %3894 = getelementptr inbounds i8, i8* %0, i64 1
  %3895 = getelementptr inbounds i8, i8* %0, i64 %1
  %3896 = icmp sgt i64 %1, 1
  br i1 %3896, label %3897, label %3908

; <label>:3897:                                   ; preds = %3887
  br label %3898

; <label>:3898:                                   ; preds = %3897, %4021
  %3899 = phi i8* [ %4022, %4021 ], [ %3894, %3897 ]
  %3900 = phi i8* [ %4023, %4021 ], [ %3894, %3897 ]
  %3901 = load i8, i8* %3900, align 1
  %3902 = sext i8 %3901 to i32
  %3903 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %3902, i64 8) #9
  %3904 = icmp eq i8* %3903, null
  br i1 %3904, label %3905, label %4012

; <label>:3905:                                   ; preds = %3898, %4021
  %3906 = phi i8* [ %4023, %4021 ], [ %3900, %3898 ]
  %3907 = phi i8* [ %4022, %4021 ], [ %3899, %3898 ]
  br label %3908

; <label>:3908:                                   ; preds = %3905, %3887
  %3909 = phi i8* [ %3894, %3887 ], [ %3906, %3905 ]
  %3910 = phi i8* [ %3894, %3887 ], [ %3907, %3905 ]
  %3911 = ptrtoint i8* %3909 to i64
  %3912 = icmp ult i8* %3909, %3895
  br i1 %3912, label %3913, label %4037

; <label>:3913:                                   ; preds = %3908
  %3914 = sub i64 %1, %3911
  %3915 = getelementptr i8, i8* %0, i64 %3914
  %3916 = ptrtoint i8* %3915 to i64
  %3917 = icmp ult i8* %3915, inttoptr (i64 32 to i8*)
  br i1 %3917, label %3918, label %3921

; <label>:3918:                                   ; preds = %4010, %3924, %3921, %3913
  %3919 = phi i8* [ %3910, %3924 ], [ %3910, %3921 ], [ %3910, %3913 ], [ %3932, %4010 ]
  %3920 = phi i8* [ %3909, %3924 ], [ %3909, %3921 ], [ %3909, %3913 ], [ %3933, %4010 ]
  br label %4025

; <label>:3921:                                   ; preds = %3913
  %3922 = and i64 %3916, -32
  %3923 = icmp eq i64 %3922, 0
  br i1 %3923, label %3918, label %3924

; <label>:3924:                                   ; preds = %3921
  %3925 = sub i64 %1, %3911
  %3926 = getelementptr i8, i8* %0, i64 %3925
  %3927 = ptrtoint i8* %3926 to i64
  %3928 = getelementptr i8, i8* %3910, i64 %3927
  %3929 = icmp ult i8* %3910, %3895
  %3930 = icmp ult i8* %3909, %3928
  %3931 = and i1 %3929, %3930
  %3932 = getelementptr i8, i8* %3910, i64 %3922
  %3933 = getelementptr i8, i8* %3909, i64 %3922
  br i1 %3931, label %3918, label %3934

; <label>:3934:                                   ; preds = %3924
  %3935 = add i64 %3922, -32
  %3936 = lshr exact i64 %3935, 5
  %3937 = add nuw nsw i64 %3936, 1
  %3938 = and i64 %3937, 3
  %3939 = icmp eq i64 %3938, 0
  br i1 %3939, label %3958, label %3940

; <label>:3940:                                   ; preds = %3934
  br label %3941

; <label>:3941:                                   ; preds = %3941, %3940
  %3942 = phi i64 [ %3954, %3941 ], [ 0, %3940 ]
  %3943 = phi i64 [ %3955, %3941 ], [ %3938, %3940 ]
  %3944 = getelementptr i8, i8* %3910, i64 %3942
  %3945 = getelementptr i8, i8* %3909, i64 %3942
  %3946 = bitcast i8* %3945 to <16 x i8>*
  %3947 = load <16 x i8>, <16 x i8>* %3946, align 1
  %3948 = getelementptr i8, i8* %3945, i64 16
  %3949 = bitcast i8* %3948 to <16 x i8>*
  %3950 = load <16 x i8>, <16 x i8>* %3949, align 1
  %3951 = bitcast i8* %3944 to <16 x i8>*
  store <16 x i8> %3947, <16 x i8>* %3951, align 1
  %3952 = getelementptr i8, i8* %3944, i64 16
  %3953 = bitcast i8* %3952 to <16 x i8>*
  store <16 x i8> %3950, <16 x i8>* %3953, align 1
  %3954 = add i64 %3942, 32
  %3955 = add i64 %3943, -1
  %3956 = icmp eq i64 %3955, 0
  br i1 %3956, label %3957, label %3941

; <label>:3957:                                   ; preds = %3941
  br label %3958

; <label>:3958:                                   ; preds = %3934, %3957
  %3959 = phi i64 [ 0, %3934 ], [ %3954, %3957 ]
  %3960 = icmp ult i64 %3935, 96
  br i1 %3960, label %4010, label %3961

; <label>:3961:                                   ; preds = %3958
  br label %3962

; <label>:3962:                                   ; preds = %3962, %3961
  %3963 = phi i64 [ %3959, %3961 ], [ %4007, %3962 ]
  %3964 = getelementptr i8, i8* %3910, i64 %3963
  %3965 = getelementptr i8, i8* %3909, i64 %3963
  %3966 = bitcast i8* %3965 to <16 x i8>*
  %3967 = load <16 x i8>, <16 x i8>* %3966, align 1
  %3968 = getelementptr i8, i8* %3965, i64 16
  %3969 = bitcast i8* %3968 to <16 x i8>*
  %3970 = load <16 x i8>, <16 x i8>* %3969, align 1
  %3971 = bitcast i8* %3964 to <16 x i8>*
  store <16 x i8> %3967, <16 x i8>* %3971, align 1
  %3972 = getelementptr i8, i8* %3964, i64 16
  %3973 = bitcast i8* %3972 to <16 x i8>*
  store <16 x i8> %3970, <16 x i8>* %3973, align 1
  %3974 = add i64 %3963, 32
  %3975 = getelementptr i8, i8* %3910, i64 %3974
  %3976 = getelementptr i8, i8* %3909, i64 %3974
  %3977 = bitcast i8* %3976 to <16 x i8>*
  %3978 = load <16 x i8>, <16 x i8>* %3977, align 1
  %3979 = getelementptr i8, i8* %3976, i64 16
  %3980 = bitcast i8* %3979 to <16 x i8>*
  %3981 = load <16 x i8>, <16 x i8>* %3980, align 1
  %3982 = bitcast i8* %3975 to <16 x i8>*
  store <16 x i8> %3978, <16 x i8>* %3982, align 1
  %3983 = getelementptr i8, i8* %3975, i64 16
  %3984 = bitcast i8* %3983 to <16 x i8>*
  store <16 x i8> %3981, <16 x i8>* %3984, align 1
  %3985 = add i64 %3963, 64
  %3986 = getelementptr i8, i8* %3910, i64 %3985
  %3987 = getelementptr i8, i8* %3909, i64 %3985
  %3988 = bitcast i8* %3987 to <16 x i8>*
  %3989 = load <16 x i8>, <16 x i8>* %3988, align 1
  %3990 = getelementptr i8, i8* %3987, i64 16
  %3991 = bitcast i8* %3990 to <16 x i8>*
  %3992 = load <16 x i8>, <16 x i8>* %3991, align 1
  %3993 = bitcast i8* %3986 to <16 x i8>*
  store <16 x i8> %3989, <16 x i8>* %3993, align 1
  %3994 = getelementptr i8, i8* %3986, i64 16
  %3995 = bitcast i8* %3994 to <16 x i8>*
  store <16 x i8> %3992, <16 x i8>* %3995, align 1
  %3996 = add i64 %3963, 96
  %3997 = getelementptr i8, i8* %3910, i64 %3996
  %3998 = getelementptr i8, i8* %3909, i64 %3996
  %3999 = bitcast i8* %3998 to <16 x i8>*
  %4000 = load <16 x i8>, <16 x i8>* %3999, align 1
  %4001 = getelementptr i8, i8* %3998, i64 16
  %4002 = bitcast i8* %4001 to <16 x i8>*
  %4003 = load <16 x i8>, <16 x i8>* %4002, align 1
  %4004 = bitcast i8* %3997 to <16 x i8>*
  store <16 x i8> %4000, <16 x i8>* %4004, align 1
  %4005 = getelementptr i8, i8* %3997, i64 16
  %4006 = bitcast i8* %4005 to <16 x i8>*
  store <16 x i8> %4003, <16 x i8>* %4006, align 1
  %4007 = add i64 %3963, 128
  %4008 = icmp eq i64 %4007, %3922
  br i1 %4008, label %4009, label %3962

; <label>:4009:                                   ; preds = %3962
  br label %4010

; <label>:4010:                                   ; preds = %3958, %4009
  %4011 = icmp eq i64 %3916, %3922
  br i1 %4011, label %4033, label %3918

; <label>:4012:                                   ; preds = %3898
  %4013 = zext i32 %3902 to i64
  %4014 = icmp ult i8 %3901, 64
  %4015 = shl i64 1, %4013
  %4016 = and i64 %4015, 35184372088833
  %4017 = icmp ne i64 %4016, 0
  %4018 = and i1 %4014, %4017
  br i1 %4018, label %4019, label %4021

; <label>:4019:                                   ; preds = %4012
  %4020 = getelementptr inbounds i8, i8* %3899, i64 1
  store i8 %3901, i8* %3899, align 1
  br label %4021

; <label>:4021:                                   ; preds = %4019, %4012
  %4022 = phi i8* [ %4020, %4019 ], [ %3899, %4012 ]
  %4023 = getelementptr inbounds i8, i8* %3900, i64 1
  %4024 = icmp ult i8* %4023, %3895
  br i1 %4024, label %3898, label %3905

; <label>:4025:                                   ; preds = %3918, %4025
  %4026 = phi i8* [ %4030, %4025 ], [ %3919, %3918 ]
  %4027 = phi i8* [ %4028, %4025 ], [ %3920, %3918 ]
  %4028 = getelementptr inbounds i8, i8* %4027, i64 1
  %4029 = load i8, i8* %4027, align 1
  %4030 = getelementptr inbounds i8, i8* %4026, i64 1
  store i8 %4029, i8* %4026, align 1
  %4031 = icmp eq i8* %4028, %3895
  br i1 %4031, label %4032, label %4025

; <label>:4032:                                   ; preds = %4025
  br label %4033

; <label>:4033:                                   ; preds = %4032, %4010
  %4034 = getelementptr i8, i8* %0, i64 %3914
  %4035 = ptrtoint i8* %4034 to i64
  %4036 = getelementptr i8, i8* %3910, i64 %4035
  br label %4037

; <label>:4037:                                   ; preds = %3908, %4033
  %4038 = phi i8* [ %3910, %3908 ], [ %4036, %4033 ]
  %4039 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %4038, i1 false) #9
  %4040 = tail call i8* @__memcpy_chk(i8* %4038, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i64 2, i64 %4039) #9
  %4041 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @human_time.str, i64 0, i64 0)) #9
  br label %4067

; <label>:4042:                                   ; preds = %6
  %4043 = getelementptr inbounds i8, i8* %5, i64 104
  %4044 = bitcast i8* %4043 to i64*
  %4045 = load i64, i64* %4044, align 8
  %4046 = getelementptr inbounds i8, i8* %5, i64 112
  %4047 = bitcast i8* %4046 to i64*
  %4048 = load i64, i64* %4047, align 8
  tail call fastcc void @out_epoch_sec(i8* %0, i64 %1, i64 %4045, i64 %4048)
  br label %4067

; <label>:4049:                                   ; preds = %6
  %4050 = tail call i32* @__errno_location() #1
  store i32 95, i32* %4050, align 4
  %4051 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.205, i64 0, i64 0), i32 5) #9
  %4052 = tail call i8* @quotearg_style(i32 4, i8* %4) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %4051, i8* %4052) #9
  %4053 = getelementptr inbounds i8, i8* %0, i64 %1
  %4054 = bitcast i8* %4053 to i16*
  store i16 115, i16* %4054, align 1
  %4055 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.195, i64 0, i64 0)) #9
  br label %4067

; <label>:4056:                                   ; preds = %6
  %4057 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4058 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4057, i64 0, i32 5
  %4059 = load i8*, i8** %4058, align 8
  %4060 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4057, i64 0, i32 6
  %4061 = load i8*, i8** %4060, align 8
  %4062 = icmp ult i8* %4059, %4061
  br i1 %4062, label %4065, label %4063

; <label>:4063:                                   ; preds = %4056
  %4064 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %4057, i32 63) #9
  br label %4067

; <label>:4065:                                   ; preds = %4056
  %4066 = getelementptr inbounds i8, i8* %4059, i64 1
  store i8* %4066, i8** %4058, align 8
  store i8 63, i8* %4059, align 1
  br label %4067

; <label>:4067:                                   ; preds = %4065, %4063, %152, %619, %770, %922, %1076, %1225, %1378, %1528, %1680, %1833, %1992, %2145, %2304, %2461, %2642, %2799, %2951, %3100, %3252, %3408, %3562, %3713, %3718, %3875, %3880, %4037, %4042, %4049, %303, %468, %3557, %319
  %4068 = phi i1 [ true, %319 ], [ true, %4049 ], [ false, %4042 ], [ false, %4037 ], [ false, %3880 ], [ false, %3875 ], [ false, %3718 ], [ false, %3713 ], [ false, %3562 ], [ false, %3408 ], [ false, %3252 ], [ false, %3100 ], [ false, %2951 ], [ false, %2799 ], [ %2647, %2642 ], [ false, %2461 ], [ false, %2304 ], [ false, %2145 ], [ false, %1992 ], [ false, %1833 ], [ false, %1680 ], [ false, %1528 ], [ false, %1378 ], [ false, %1225 ], [ false, %1076 ], [ false, %922 ], [ false, %770 ], [ false, %619 ], [ false, %468 ], [ false, %303 ], [ false, %152 ], [ false, %3557 ], [ false, %4063 ], [ false, %4065 ]
  ret i1 %4068
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #9

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

declare %struct.group* @getgrgid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @find_bind_mount(i8*) unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  %3 = alloca %struct.stat, align 8
  %4 = load i1, i1* @find_bind_mount.tried_mount_list, align 1
  br i1 %4, label %13, label %5

; <label>:5:                                      ; preds = %1
  %6 = tail call %struct.mount_entry* @read_file_system_list(i1 zeroext false) #9
  store %struct.mount_entry* %6, %struct.mount_entry** @find_bind_mount.mount_list, align 8
  %7 = icmp eq %struct.mount_entry* %6, null
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %5
  %9 = tail call i32* @__errno_location() #1
  %10 = load i32, i32* %9, align 4
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.198, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0), i8* %11) #9
  br label %12

; <label>:12:                                     ; preds = %5, %8
  store i1 true, i1* @find_bind_mount.tried_mount_list, align 1
  br label %13

; <label>:13:                                     ; preds = %12, %1
  %14 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %14) #9
  %15 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %2) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %61

; <label>:17:                                     ; preds = %13
  %18 = load %struct.mount_entry*, %struct.mount_entry** @find_bind_mount.mount_list, align 8
  %19 = icmp eq %struct.mount_entry* %18, null
  br i1 %19, label %61, label %20

; <label>:20:                                     ; preds = %17
  %21 = bitcast %struct.stat* %3 to i8*
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  br label %26

; <label>:26:                                     ; preds = %20, %56
  %27 = phi %struct.mount_entry* [ %18, %20 ], [ %58, %56 ]
  %28 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %27, i64 0, i32 5
  %29 = load i8, i8* %28, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %56, label %32

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %27, i64 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %35, 47
  br i1 %36, label %37, label %56

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %27, i64 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* %0) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %56

; <label>:42:                                     ; preds = %37
  call void @llvm.lifetime.start(i64 144, i8* nonnull %21) #9
  %43 = call i32 @__xstat(i32 1, i8* nonnull %34, %struct.stat* nonnull %3) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

; <label>:45:                                     ; preds = %42
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* %23, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

; <label>:49:                                     ; preds = %45
  %50 = load i64, i64* %24, align 8
  %51 = load i64, i64* %25, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49, %45, %42
  call void @llvm.lifetime.end(i64 144, i8* nonnull %21) #9
  br label %56

; <label>:54:                                     ; preds = %49
  %55 = load i8*, i8** %33, align 8
  call void @llvm.lifetime.end(i64 144, i8* nonnull %21) #9
  br label %61

; <label>:56:                                     ; preds = %53, %26, %32, %37
  %57 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %27, i64 0, i32 6
  %58 = load %struct.mount_entry*, %struct.mount_entry** %57, align 8
  %59 = icmp eq %struct.mount_entry* %58, null
  br i1 %59, label %60, label %26

; <label>:60:                                     ; preds = %56
  br label %61

; <label>:61:                                     ; preds = %60, %17, %54, %13
  %62 = phi i8* [ null, %13 ], [ %55, %54 ], [ null, %17 ], [ null, %60 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %14) #9
  ret i8* %62
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @out_epoch_sec(i8*, i64, i64, i64) unnamed_addr #6 {
  %5 = tail call i8* @memchr(i8* %0, i32 46, i64 %1) #13
  %6 = icmp eq i8* %5, null
  br i1 %6, label %98, label %7

; <label>:7:                                      ; preds = %4
  %8 = ptrtoint i8* %5 to i64
  %9 = ptrtoint i8* %0 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds i8, i8* %0, i64 %1
  store i8 0, i8* %11, align 1
  %12 = getelementptr inbounds i8, i8* %5, i64 1
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %14, -48
  %16 = icmp ult i32 %15, 10
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %7
  %18 = tail call i64 @strtol(i8* nocapture %12, i8** null, i32 10) #9
  %19 = icmp slt i64 %18, 2147483647
  %20 = select i1 %19, i64 %18, i64 2147483647
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %98, label %23

; <label>:23:                                     ; preds = %7, %17
  %24 = phi i32 [ %21, %17 ], [ 9, %7 ]
  %25 = getelementptr inbounds i8, i8* %5, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %27, -48
  %29 = icmp ult i32 %28, 10
  br i1 %29, label %30, label %94

; <label>:30:                                     ; preds = %23
  store i8 0, i8* %5, align 1
  br label %31

; <label>:31:                                     ; preds = %31, %30
  %32 = phi i8* [ %5, %30 ], [ %33, %31 ]
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = getelementptr inbounds i8, i8* %32, i64 -2
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = icmp ult i32 %37, 10
  br i1 %38, label %31, label %39

; <label>:39:                                     ; preds = %31
  %40 = tail call i64 @strtol(i8* nocapture %33, i8** null, i32 10) #9
  %41 = icmp slt i64 %40, 2147483647
  %42 = select i1 %41, i64 %40, i64 2147483647
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %94

; <label>:45:                                     ; preds = %39
  %46 = load i8, i8* %33, align 1
  %47 = icmp eq i8 %46, 48
  %48 = zext i1 %47 to i64
  %49 = getelementptr inbounds i8, i8* %33, i64 %48
  %50 = ptrtoint i8* %49 to i64
  %51 = sub i64 %50, %9
  %52 = load i64, i64* @decimal_point_len, align 8
  %53 = shl i64 %42, 32
  %54 = ashr exact i64 %53, 32
  %55 = icmp ugt i64 %54, %52
  %56 = sub i64 %54, %52
  %57 = trunc i64 %56 to i32
  %58 = select i1 %55, i32 %57, i32 0
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %94

; <label>:60:                                     ; preds = %45
  %61 = sub nsw i32 %58, %24
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %94

; <label>:63:                                     ; preds = %60
  %64 = icmp ugt i8* %49, %0
  br i1 %64, label %65, label %84

; <label>:65:                                     ; preds = %63
  br label %71

; <label>:66:                                     ; preds = %79
  %67 = ptrtoint i8* %80 to i64
  %68 = sub i64 %67, %9
  %69 = and i8 %81, 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %90

; <label>:71:                                     ; preds = %65, %79
  %72 = phi i8 [ %81, %79 ], [ 0, %65 ]
  %73 = phi i8* [ %82, %79 ], [ %0, %65 ]
  %74 = phi i8* [ %80, %79 ], [ %0, %65 ]
  %75 = load i8, i8* %73, align 1
  %76 = icmp eq i8 %75, 45
  br i1 %76, label %79, label %77

; <label>:77:                                     ; preds = %71
  %78 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %75, i8* %74, align 1
  br label %79

; <label>:79:                                     ; preds = %71, %77
  %80 = phi i8* [ %78, %77 ], [ %74, %71 ]
  %81 = phi i8 [ %72, %77 ], [ 1, %71 ]
  %82 = getelementptr inbounds i8, i8* %73, i64 1
  %83 = icmp eq i8* %82, %49
  br i1 %83, label %66, label %71

; <label>:84:                                     ; preds = %63, %66
  %85 = phi i64 [ %68, %66 ], [ 0, %63 ]
  %86 = phi i8* [ %80, %66 ], [ %0, %63 ]
  %87 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %86, i1 false)
  %88 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %86, i32 1, i64 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.202, i64 0, i64 0), i32 %61) #9
  %89 = sext i32 %88 to i64
  br label %90

; <label>:90:                                     ; preds = %66, %84
  %91 = phi i64 [ %85, %84 ], [ %68, %66 ]
  %92 = phi i64 [ %89, %84 ], [ 0, %66 ]
  %93 = add nsw i64 %91, %92
  br label %94

; <label>:94:                                     ; preds = %39, %60, %90, %45, %23
  %95 = phi i32 [ 0, %23 ], [ %43, %45 ], [ %43, %90 ], [ %43, %60 ], [ %43, %39 ]
  %96 = phi i64 [ %10, %23 ], [ %51, %45 ], [ %93, %90 ], [ %51, %60 ], [ %10, %39 ]
  %97 = icmp slt i32 %24, 9
  br i1 %97, label %98, label %157

; <label>:98:                                     ; preds = %4, %17, %94
  %99 = phi i64 [ %96, %94 ], [ %1, %4 ], [ %10, %17 ]
  %100 = phi i32 [ %95, %94 ], [ 0, %4 ], [ 0, %17 ]
  %101 = phi i32 [ %24, %94 ], [ 0, %4 ], [ 0, %17 ]
  %102 = sub i32 9, %101
  %103 = icmp ult i32 %102, 8
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %146, %107, %98
  %105 = phi i32 [ %101, %107 ], [ %101, %98 ], [ %110, %146 ]
  %106 = phi i32 [ 1, %107 ], [ 1, %98 ], [ %154, %146 ]
  br label %169

; <label>:107:                                    ; preds = %98
  %108 = and i32 %102, -8
  %109 = icmp eq i32 %108, 0
  %110 = add i32 %101, %108
  br i1 %109, label %104, label %111

; <label>:111:                                    ; preds = %107
  %112 = add i32 %108, -8
  %113 = lshr exact i32 %112, 3
  %114 = add nuw nsw i32 %113, 1
  %115 = and i32 %114, 7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %129, label %117

; <label>:117:                                    ; preds = %111
  br label %118

; <label>:118:                                    ; preds = %118, %117
  %119 = phi i32 [ %125, %118 ], [ 0, %117 ]
  %120 = phi <4 x i32> [ %123, %118 ], [ <i32 1, i32 1, i32 1, i32 1>, %117 ]
  %121 = phi <4 x i32> [ %124, %118 ], [ <i32 1, i32 1, i32 1, i32 1>, %117 ]
  %122 = phi i32 [ %126, %118 ], [ %115, %117 ]
  %123 = mul nsw <4 x i32> %120, <i32 10, i32 10, i32 10, i32 10>
  %124 = mul nsw <4 x i32> %121, <i32 10, i32 10, i32 10, i32 10>
  %125 = add i32 %119, 8
  %126 = add i32 %122, -1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %118

; <label>:128:                                    ; preds = %118
  br label %129

; <label>:129:                                    ; preds = %111, %128
  %130 = phi <4 x i32> [ undef, %111 ], [ %123, %128 ]
  %131 = phi <4 x i32> [ undef, %111 ], [ %124, %128 ]
  %132 = phi i32 [ 0, %111 ], [ %125, %128 ]
  %133 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %111 ], [ %123, %128 ]
  %134 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %111 ], [ %124, %128 ]
  %135 = icmp ult i32 %112, 56
  br i1 %135, label %146, label %136

; <label>:136:                                    ; preds = %129
  br label %137

; <label>:137:                                    ; preds = %137, %136
  %138 = phi i32 [ %132, %136 ], [ %143, %137 ]
  %139 = phi <4 x i32> [ %133, %136 ], [ %141, %137 ]
  %140 = phi <4 x i32> [ %134, %136 ], [ %142, %137 ]
  %141 = mul <4 x i32> %139, <i32 100000000, i32 100000000, i32 100000000, i32 100000000>
  %142 = mul <4 x i32> %140, <i32 100000000, i32 100000000, i32 100000000, i32 100000000>
  %143 = add i32 %138, 64
  %144 = icmp eq i32 %143, %108
  br i1 %144, label %145, label %137

; <label>:145:                                    ; preds = %137
  br label %146

; <label>:146:                                    ; preds = %129, %145
  %147 = phi <4 x i32> [ %130, %129 ], [ %141, %145 ]
  %148 = phi <4 x i32> [ %131, %129 ], [ %142, %145 ]
  %149 = mul <4 x i32> %148, %147
  %150 = shufflevector <4 x i32> %149, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %151 = mul <4 x i32> %149, %150
  %152 = shufflevector <4 x i32> %151, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %153 = mul <4 x i32> %151, %152
  %154 = extractelement <4 x i32> %153, i32 0
  %155 = icmp eq i32 %102, %108
  br i1 %155, label %157, label %104

; <label>:156:                                    ; preds = %169
  br label %157

; <label>:157:                                    ; preds = %156, %146, %94
  %158 = phi i32 [ 9, %94 ], [ %101, %146 ], [ %101, %156 ]
  %159 = phi i64 [ %96, %94 ], [ %99, %146 ], [ %99, %156 ]
  %160 = phi i32 [ %95, %94 ], [ %100, %146 ], [ %100, %156 ]
  %161 = phi i32 [ %24, %94 ], [ %101, %146 ], [ %101, %156 ]
  %162 = phi i32 [ 1, %94 ], [ %154, %146 ], [ %172, %156 ]
  %163 = sext i32 %162 to i64
  %164 = sdiv i64 %3, %163
  %165 = trunc i64 %164 to i32
  %166 = icmp sgt i64 %2, -1
  %167 = icmp eq i64 %3, 0
  %168 = or i1 %166, %167
  br i1 %168, label %335, label %175

; <label>:169:                                    ; preds = %104, %169
  %170 = phi i32 [ %173, %169 ], [ %105, %104 ]
  %171 = phi i32 [ %172, %169 ], [ %106, %104 ]
  %172 = mul nsw i32 %171, 10
  %173 = add nsw i32 %170, 1
  %174 = icmp eq i32 %173, 9
  br i1 %174, label %156, label %169

; <label>:175:                                    ; preds = %157
  %176 = sdiv i32 1000000000, %162
  %177 = sub nsw i32 %176, %165
  %178 = srem i64 %3, %163
  %179 = icmp ne i64 %178, 0
  %180 = sext i1 %179 to i32
  %181 = add i32 %180, %177
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = add nsw i64 %183, %2
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %335

; <label>:186:                                    ; preds = %175
  %187 = getelementptr inbounds i8, i8* %0, i64 1
  %188 = getelementptr inbounds i8, i8* %0, i64 %159
  %189 = icmp sgt i64 %159, 1
  br i1 %189, label %190, label %201

; <label>:190:                                    ; preds = %186
  br label %191

; <label>:191:                                    ; preds = %190, %314
  %192 = phi i8* [ %315, %314 ], [ %187, %190 ]
  %193 = phi i8* [ %316, %314 ], [ %187, %190 ]
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %195, i64 8) #9
  %197 = icmp eq i8* %196, null
  br i1 %197, label %198, label %305

; <label>:198:                                    ; preds = %191, %314
  %199 = phi i8* [ %316, %314 ], [ %193, %191 ]
  %200 = phi i8* [ %315, %314 ], [ %192, %191 ]
  br label %201

; <label>:201:                                    ; preds = %198, %186
  %202 = phi i8* [ %187, %186 ], [ %199, %198 ]
  %203 = phi i8* [ %187, %186 ], [ %200, %198 ]
  %204 = ptrtoint i8* %202 to i64
  %205 = icmp ult i8* %202, %188
  br i1 %205, label %206, label %330

; <label>:206:                                    ; preds = %201
  %207 = sub i64 %159, %204
  %208 = getelementptr i8, i8* %0, i64 %207
  %209 = ptrtoint i8* %208 to i64
  %210 = icmp ult i8* %208, inttoptr (i64 32 to i8*)
  br i1 %210, label %211, label %214

; <label>:211:                                    ; preds = %303, %217, %214, %206
  %212 = phi i8* [ %203, %217 ], [ %203, %214 ], [ %203, %206 ], [ %225, %303 ]
  %213 = phi i8* [ %202, %217 ], [ %202, %214 ], [ %202, %206 ], [ %226, %303 ]
  br label %318

; <label>:214:                                    ; preds = %206
  %215 = and i64 %209, -32
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %211, label %217

; <label>:217:                                    ; preds = %214
  %218 = sub i64 %159, %204
  %219 = getelementptr i8, i8* %0, i64 %218
  %220 = ptrtoint i8* %219 to i64
  %221 = getelementptr i8, i8* %203, i64 %220
  %222 = icmp ult i8* %203, %188
  %223 = icmp ult i8* %202, %221
  %224 = and i1 %222, %223
  %225 = getelementptr i8, i8* %203, i64 %215
  %226 = getelementptr i8, i8* %202, i64 %215
  br i1 %224, label %211, label %227

; <label>:227:                                    ; preds = %217
  %228 = add i64 %215, -32
  %229 = lshr exact i64 %228, 5
  %230 = add nuw nsw i64 %229, 1
  %231 = and i64 %230, 3
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %251, label %233

; <label>:233:                                    ; preds = %227
  br label %234

; <label>:234:                                    ; preds = %234, %233
  %235 = phi i64 [ %247, %234 ], [ 0, %233 ]
  %236 = phi i64 [ %248, %234 ], [ %231, %233 ]
  %237 = getelementptr i8, i8* %203, i64 %235
  %238 = getelementptr i8, i8* %202, i64 %235
  %239 = bitcast i8* %238 to <16 x i8>*
  %240 = load <16 x i8>, <16 x i8>* %239, align 1
  %241 = getelementptr i8, i8* %238, i64 16
  %242 = bitcast i8* %241 to <16 x i8>*
  %243 = load <16 x i8>, <16 x i8>* %242, align 1
  %244 = bitcast i8* %237 to <16 x i8>*
  store <16 x i8> %240, <16 x i8>* %244, align 1
  %245 = getelementptr i8, i8* %237, i64 16
  %246 = bitcast i8* %245 to <16 x i8>*
  store <16 x i8> %243, <16 x i8>* %246, align 1
  %247 = add i64 %235, 32
  %248 = add i64 %236, -1
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %234

; <label>:250:                                    ; preds = %234
  br label %251

; <label>:251:                                    ; preds = %227, %250
  %252 = phi i64 [ 0, %227 ], [ %247, %250 ]
  %253 = icmp ult i64 %228, 96
  br i1 %253, label %303, label %254

; <label>:254:                                    ; preds = %251
  br label %255

; <label>:255:                                    ; preds = %255, %254
  %256 = phi i64 [ %252, %254 ], [ %300, %255 ]
  %257 = getelementptr i8, i8* %203, i64 %256
  %258 = getelementptr i8, i8* %202, i64 %256
  %259 = bitcast i8* %258 to <16 x i8>*
  %260 = load <16 x i8>, <16 x i8>* %259, align 1
  %261 = getelementptr i8, i8* %258, i64 16
  %262 = bitcast i8* %261 to <16 x i8>*
  %263 = load <16 x i8>, <16 x i8>* %262, align 1
  %264 = bitcast i8* %257 to <16 x i8>*
  store <16 x i8> %260, <16 x i8>* %264, align 1
  %265 = getelementptr i8, i8* %257, i64 16
  %266 = bitcast i8* %265 to <16 x i8>*
  store <16 x i8> %263, <16 x i8>* %266, align 1
  %267 = add i64 %256, 32
  %268 = getelementptr i8, i8* %203, i64 %267
  %269 = getelementptr i8, i8* %202, i64 %267
  %270 = bitcast i8* %269 to <16 x i8>*
  %271 = load <16 x i8>, <16 x i8>* %270, align 1
  %272 = getelementptr i8, i8* %269, i64 16
  %273 = bitcast i8* %272 to <16 x i8>*
  %274 = load <16 x i8>, <16 x i8>* %273, align 1
  %275 = bitcast i8* %268 to <16 x i8>*
  store <16 x i8> %271, <16 x i8>* %275, align 1
  %276 = getelementptr i8, i8* %268, i64 16
  %277 = bitcast i8* %276 to <16 x i8>*
  store <16 x i8> %274, <16 x i8>* %277, align 1
  %278 = add i64 %256, 64
  %279 = getelementptr i8, i8* %203, i64 %278
  %280 = getelementptr i8, i8* %202, i64 %278
  %281 = bitcast i8* %280 to <16 x i8>*
  %282 = load <16 x i8>, <16 x i8>* %281, align 1
  %283 = getelementptr i8, i8* %280, i64 16
  %284 = bitcast i8* %283 to <16 x i8>*
  %285 = load <16 x i8>, <16 x i8>* %284, align 1
  %286 = bitcast i8* %279 to <16 x i8>*
  store <16 x i8> %282, <16 x i8>* %286, align 1
  %287 = getelementptr i8, i8* %279, i64 16
  %288 = bitcast i8* %287 to <16 x i8>*
  store <16 x i8> %285, <16 x i8>* %288, align 1
  %289 = add i64 %256, 96
  %290 = getelementptr i8, i8* %203, i64 %289
  %291 = getelementptr i8, i8* %202, i64 %289
  %292 = bitcast i8* %291 to <16 x i8>*
  %293 = load <16 x i8>, <16 x i8>* %292, align 1
  %294 = getelementptr i8, i8* %291, i64 16
  %295 = bitcast i8* %294 to <16 x i8>*
  %296 = load <16 x i8>, <16 x i8>* %295, align 1
  %297 = bitcast i8* %290 to <16 x i8>*
  store <16 x i8> %293, <16 x i8>* %297, align 1
  %298 = getelementptr i8, i8* %290, i64 16
  %299 = bitcast i8* %298 to <16 x i8>*
  store <16 x i8> %296, <16 x i8>* %299, align 1
  %300 = add i64 %256, 128
  %301 = icmp eq i64 %300, %215
  br i1 %301, label %302, label %255

; <label>:302:                                    ; preds = %255
  br label %303

; <label>:303:                                    ; preds = %251, %302
  %304 = icmp eq i64 %209, %215
  br i1 %304, label %326, label %211

; <label>:305:                                    ; preds = %191
  %306 = zext i32 %195 to i64
  %307 = icmp ult i8 %194, 64
  %308 = shl i64 1, %306
  %309 = and i64 %308, 326009492602881
  %310 = icmp ne i64 %309, 0
  %311 = and i1 %307, %310
  br i1 %311, label %312, label %314

; <label>:312:                                    ; preds = %305
  %313 = getelementptr inbounds i8, i8* %192, i64 1
  store i8 %194, i8* %192, align 1
  br label %314

; <label>:314:                                    ; preds = %312, %305
  %315 = phi i8* [ %313, %312 ], [ %192, %305 ]
  %316 = getelementptr inbounds i8, i8* %193, i64 1
  %317 = icmp ult i8* %316, %188
  br i1 %317, label %191, label %198

; <label>:318:                                    ; preds = %211, %318
  %319 = phi i8* [ %323, %318 ], [ %212, %211 ]
  %320 = phi i8* [ %321, %318 ], [ %213, %211 ]
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  %322 = load i8, i8* %320, align 1
  %323 = getelementptr inbounds i8, i8* %319, i64 1
  store i8 %322, i8* %319, align 1
  %324 = icmp eq i8* %321, %188
  br i1 %324, label %325, label %318

; <label>:325:                                    ; preds = %318
  br label %326

; <label>:326:                                    ; preds = %325, %303
  %327 = getelementptr i8, i8* %0, i64 %207
  %328 = ptrtoint i8* %327 to i64
  %329 = getelementptr i8, i8* %203, i64 %328
  br label %330

; <label>:330:                                    ; preds = %201, %326
  %331 = phi i8* [ %203, %201 ], [ %329, %326 ]
  %332 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %331, i1 false) #9
  %333 = tail call i8* @__memcpy_chk(i8* %331, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.204, i64 0, i64 0), i64 4, i64 %332) #9
  %334 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, double -2.500000e-01) #9
  br label %486

; <label>:335:                                    ; preds = %157, %175
  %336 = phi i64 [ %184, %175 ], [ %2, %157 ]
  %337 = phi i32 [ %181, %175 ], [ %165, %157 ]
  %338 = getelementptr inbounds i8, i8* %0, i64 1
  %339 = getelementptr inbounds i8, i8* %0, i64 %159
  %340 = icmp sgt i64 %159, 1
  br i1 %340, label %341, label %352

; <label>:341:                                    ; preds = %335
  br label %342

; <label>:342:                                    ; preds = %341, %465
  %343 = phi i8* [ %466, %465 ], [ %338, %341 ]
  %344 = phi i8* [ %467, %465 ], [ %338, %341 ]
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = tail call i8* @memchr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @printf_flags, i64 0, i64 0), i32 %346, i64 8) #9
  %348 = icmp eq i8* %347, null
  br i1 %348, label %349, label %456

; <label>:349:                                    ; preds = %342, %465
  %350 = phi i8* [ %467, %465 ], [ %344, %342 ]
  %351 = phi i8* [ %466, %465 ], [ %343, %342 ]
  br label %352

; <label>:352:                                    ; preds = %349, %335
  %353 = phi i8* [ %338, %335 ], [ %350, %349 ]
  %354 = phi i8* [ %338, %335 ], [ %351, %349 ]
  %355 = ptrtoint i8* %353 to i64
  %356 = icmp ult i8* %353, %339
  br i1 %356, label %357, label %481

; <label>:357:                                    ; preds = %352
  %358 = sub i64 %159, %355
  %359 = getelementptr i8, i8* %0, i64 %358
  %360 = ptrtoint i8* %359 to i64
  %361 = icmp ult i8* %359, inttoptr (i64 32 to i8*)
  br i1 %361, label %362, label %365

; <label>:362:                                    ; preds = %454, %368, %365, %357
  %363 = phi i8* [ %354, %368 ], [ %354, %365 ], [ %354, %357 ], [ %376, %454 ]
  %364 = phi i8* [ %353, %368 ], [ %353, %365 ], [ %353, %357 ], [ %377, %454 ]
  br label %469

; <label>:365:                                    ; preds = %357
  %366 = and i64 %360, -32
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %362, label %368

; <label>:368:                                    ; preds = %365
  %369 = sub i64 %159, %355
  %370 = getelementptr i8, i8* %0, i64 %369
  %371 = ptrtoint i8* %370 to i64
  %372 = getelementptr i8, i8* %354, i64 %371
  %373 = icmp ult i8* %354, %339
  %374 = icmp ult i8* %353, %372
  %375 = and i1 %373, %374
  %376 = getelementptr i8, i8* %354, i64 %366
  %377 = getelementptr i8, i8* %353, i64 %366
  br i1 %375, label %362, label %378

; <label>:378:                                    ; preds = %368
  %379 = add i64 %366, -32
  %380 = lshr exact i64 %379, 5
  %381 = add nuw nsw i64 %380, 1
  %382 = and i64 %381, 3
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %402, label %384

; <label>:384:                                    ; preds = %378
  br label %385

; <label>:385:                                    ; preds = %385, %384
  %386 = phi i64 [ %398, %385 ], [ 0, %384 ]
  %387 = phi i64 [ %399, %385 ], [ %382, %384 ]
  %388 = getelementptr i8, i8* %354, i64 %386
  %389 = getelementptr i8, i8* %353, i64 %386
  %390 = bitcast i8* %389 to <16 x i8>*
  %391 = load <16 x i8>, <16 x i8>* %390, align 1
  %392 = getelementptr i8, i8* %389, i64 16
  %393 = bitcast i8* %392 to <16 x i8>*
  %394 = load <16 x i8>, <16 x i8>* %393, align 1
  %395 = bitcast i8* %388 to <16 x i8>*
  store <16 x i8> %391, <16 x i8>* %395, align 1
  %396 = getelementptr i8, i8* %388, i64 16
  %397 = bitcast i8* %396 to <16 x i8>*
  store <16 x i8> %394, <16 x i8>* %397, align 1
  %398 = add i64 %386, 32
  %399 = add i64 %387, -1
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %385

; <label>:401:                                    ; preds = %385
  br label %402

; <label>:402:                                    ; preds = %378, %401
  %403 = phi i64 [ 0, %378 ], [ %398, %401 ]
  %404 = icmp ult i64 %379, 96
  br i1 %404, label %454, label %405

; <label>:405:                                    ; preds = %402
  br label %406

; <label>:406:                                    ; preds = %406, %405
  %407 = phi i64 [ %403, %405 ], [ %451, %406 ]
  %408 = getelementptr i8, i8* %354, i64 %407
  %409 = getelementptr i8, i8* %353, i64 %407
  %410 = bitcast i8* %409 to <16 x i8>*
  %411 = load <16 x i8>, <16 x i8>* %410, align 1
  %412 = getelementptr i8, i8* %409, i64 16
  %413 = bitcast i8* %412 to <16 x i8>*
  %414 = load <16 x i8>, <16 x i8>* %413, align 1
  %415 = bitcast i8* %408 to <16 x i8>*
  store <16 x i8> %411, <16 x i8>* %415, align 1
  %416 = getelementptr i8, i8* %408, i64 16
  %417 = bitcast i8* %416 to <16 x i8>*
  store <16 x i8> %414, <16 x i8>* %417, align 1
  %418 = add i64 %407, 32
  %419 = getelementptr i8, i8* %354, i64 %418
  %420 = getelementptr i8, i8* %353, i64 %418
  %421 = bitcast i8* %420 to <16 x i8>*
  %422 = load <16 x i8>, <16 x i8>* %421, align 1
  %423 = getelementptr i8, i8* %420, i64 16
  %424 = bitcast i8* %423 to <16 x i8>*
  %425 = load <16 x i8>, <16 x i8>* %424, align 1
  %426 = bitcast i8* %419 to <16 x i8>*
  store <16 x i8> %422, <16 x i8>* %426, align 1
  %427 = getelementptr i8, i8* %419, i64 16
  %428 = bitcast i8* %427 to <16 x i8>*
  store <16 x i8> %425, <16 x i8>* %428, align 1
  %429 = add i64 %407, 64
  %430 = getelementptr i8, i8* %354, i64 %429
  %431 = getelementptr i8, i8* %353, i64 %429
  %432 = bitcast i8* %431 to <16 x i8>*
  %433 = load <16 x i8>, <16 x i8>* %432, align 1
  %434 = getelementptr i8, i8* %431, i64 16
  %435 = bitcast i8* %434 to <16 x i8>*
  %436 = load <16 x i8>, <16 x i8>* %435, align 1
  %437 = bitcast i8* %430 to <16 x i8>*
  store <16 x i8> %433, <16 x i8>* %437, align 1
  %438 = getelementptr i8, i8* %430, i64 16
  %439 = bitcast i8* %438 to <16 x i8>*
  store <16 x i8> %436, <16 x i8>* %439, align 1
  %440 = add i64 %407, 96
  %441 = getelementptr i8, i8* %354, i64 %440
  %442 = getelementptr i8, i8* %353, i64 %440
  %443 = bitcast i8* %442 to <16 x i8>*
  %444 = load <16 x i8>, <16 x i8>* %443, align 1
  %445 = getelementptr i8, i8* %442, i64 16
  %446 = bitcast i8* %445 to <16 x i8>*
  %447 = load <16 x i8>, <16 x i8>* %446, align 1
  %448 = bitcast i8* %441 to <16 x i8>*
  store <16 x i8> %444, <16 x i8>* %448, align 1
  %449 = getelementptr i8, i8* %441, i64 16
  %450 = bitcast i8* %449 to <16 x i8>*
  store <16 x i8> %447, <16 x i8>* %450, align 1
  %451 = add i64 %407, 128
  %452 = icmp eq i64 %451, %366
  br i1 %452, label %453, label %406

; <label>:453:                                    ; preds = %406
  br label %454

; <label>:454:                                    ; preds = %402, %453
  %455 = icmp eq i64 %360, %366
  br i1 %455, label %477, label %362

; <label>:456:                                    ; preds = %342
  %457 = zext i32 %346 to i64
  %458 = icmp ult i8 %345, 64
  %459 = shl i64 1, %457
  %460 = and i64 %459, 326009492602881
  %461 = icmp ne i64 %460, 0
  %462 = and i1 %458, %461
  br i1 %462, label %463, label %465

; <label>:463:                                    ; preds = %456
  %464 = getelementptr inbounds i8, i8* %343, i64 1
  store i8 %345, i8* %343, align 1
  br label %465

; <label>:465:                                    ; preds = %463, %456
  %466 = phi i8* [ %464, %463 ], [ %343, %456 ]
  %467 = getelementptr inbounds i8, i8* %344, i64 1
  %468 = icmp ult i8* %467, %339
  br i1 %468, label %342, label %349

; <label>:469:                                    ; preds = %362, %469
  %470 = phi i8* [ %474, %469 ], [ %363, %362 ]
  %471 = phi i8* [ %472, %469 ], [ %364, %362 ]
  %472 = getelementptr inbounds i8, i8* %471, i64 1
  %473 = load i8, i8* %471, align 1
  %474 = getelementptr inbounds i8, i8* %470, i64 1
  store i8 %473, i8* %470, align 1
  %475 = icmp eq i8* %472, %339
  br i1 %475, label %476, label %469

; <label>:476:                                    ; preds = %469
  br label %477

; <label>:477:                                    ; preds = %476, %454
  %478 = getelementptr i8, i8* %0, i64 %358
  %479 = ptrtoint i8* %478 to i64
  %480 = getelementptr i8, i8* %354, i64 %479
  br label %481

; <label>:481:                                    ; preds = %352, %477
  %482 = phi i8* [ %354, %352 ], [ %480, %477 ]
  %483 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %482, i1 false) #9
  %484 = tail call i8* @__memcpy_chk(i8* %482, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i64 3, i64 %483) #9
  %485 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %0, i64 %336) #9
  br label %486

; <label>:486:                                    ; preds = %481, %330
  %487 = phi i32 [ %181, %330 ], [ %337, %481 ]
  %488 = phi i32 [ %334, %330 ], [ %485, %481 ]
  %489 = icmp eq i32 %161, 0
  br i1 %489, label %509, label %490

; <label>:490:                                    ; preds = %486
  %491 = sub nsw i32 %161, %158
  %492 = icmp sgt i32 %488, 0
  %493 = select i1 %492, i32 %488, i32 0
  %494 = icmp sgt i32 %160, %493
  br i1 %494, label %495, label %505

; <label>:495:                                    ; preds = %490
  %496 = load i64, i64* @decimal_point_len, align 8
  %497 = sub nsw i32 %160, %493
  %498 = sext i32 %497 to i64
  %499 = icmp ugt i64 %498, %496
  br i1 %499, label %500, label %505

; <label>:500:                                    ; preds = %495
  %501 = zext i32 %158 to i64
  %502 = sub nsw i64 %498, %501
  %503 = sub i64 %502, %496
  %504 = trunc i64 %503 to i32
  br label %505

; <label>:505:                                    ; preds = %490, %495, %500
  %506 = phi i32 [ %504, %500 ], [ 0, %495 ], [ 0, %490 ]
  %507 = load i8*, i8** @decimal_point, align 8
  %508 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.203, i64 0, i64 0), i8* %507, i32 %158, i32 %487, i32 %506, i32 %491, i32 0) #9
  br label %509

; <label>:509:                                    ; preds = %486, %505
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @human_time(i64, i64) unnamed_addr #6 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca %struct.tm, align 8
  %5 = alloca [21 x i8], align 16
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i64 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = load %struct.tm_zone*, %struct.tm_zone** @human_time.tz, align 8
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %2
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i64 0, i64 0)) #9
  %12 = tail call %struct.tm_zone* @tzalloc(i8* %11) #9
  store %struct.tm_zone* %12, %struct.tm_zone** @human_time.tz, align 8
  br label %13

; <label>:13:                                     ; preds = %2, %10
  %14 = phi %struct.tm_zone* [ %8, %2 ], [ %12, %10 ]
  %15 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %15) #9
  %16 = trunc i64 %1 to i32
  %17 = call %struct.tm* @localtime_rz(%struct.tm_zone* %14, i64* nonnull %6, %struct.tm* nonnull %4) #9
  %18 = icmp eq %struct.tm* %17, null
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %13
  %20 = load %struct.tm_zone*, %struct.tm_zone** @human_time.tz, align 8
  %21 = call i64 @nstrftime(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @human_time.str, i64 0, i64 0), i64 61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.200, i64 0, i64 0), %struct.tm* nonnull %4, %struct.tm_zone* %20, i32 %16) #9
  br label %27

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 21, i8* nonnull %23) #9
  %24 = load i64, i64* %6, align 8
  %25 = call i8* @imaxtostr(i64 %24, i8* nonnull %23) #9
  %26 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @human_time.str, i64 0, i64 0), i32 1, i64 61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.201, i64 0, i64 0), i8* %25, i32 %16) #9
  call void @llvm.lifetime.end(i64 21, i8* nonnull %23) #9
  br label %27

; <label>:27:                                     ; preds = %22, %19
  call void @llvm.lifetime.end(i64 56, i8* nonnull %15) #9
  ret void
}

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @find_mount_point(i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %3 = alloca %struct.saved_cwd, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  %6 = bitcast %struct.saved_cwd* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #9
  %7 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %7) #9
  %8 = call i32 @save_cwd(%struct.saved_cwd* nonnull %3) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %2
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %12, i8* %13) #9
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
  %21 = call i32 @chdir(i8* %0) #9
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %43

; <label>:23:                                     ; preds = %19
  %24 = tail call i32* @__errno_location() #1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.27, i64 0, i64 0), i32 5) #9
  %27 = call i8* @quotearg_style(i32 4, i8* %0) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %25, i8* %26, i8* %27) #9
  br label %95

; <label>:28:                                     ; preds = %14
  %29 = call i8* @dir_name(i8* %0) #9
  %30 = call i64 @strlen(i8* %29) #13
  %31 = add i64 %30, 1
  %32 = alloca i8, i64 %31, align 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %32, i8* %29, i64 %31, i32 1, i1 false)
  call void @free(i8* %29) #9
  %33 = call i32 @chdir(i8* nonnull %32) #9
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %28
  %36 = tail call i32* @__errno_location() #1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.27, i64 0, i64 0), i32 5) #9
  %39 = call i8* @quotearg_style(i32 4, i8* nonnull %32) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %37, i8* %38, i8* %39) #9
  br label %95

; <label>:40:                                     ; preds = %28
  %41 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.28, i64 0, i64 0), %struct.stat* nonnull %4) #9
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %52, label %43

; <label>:43:                                     ; preds = %19, %40
  %44 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #9
  %45 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0), %struct.stat* nonnull %5) #9
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
  %55 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3.30, i64 0, i64 0), i32 5) #9
  %56 = call i8* @quotearg_style(i32 4, i8* nonnull %32) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %54, i8* %55, i8* %56) #9
  br label %85

; <label>:57:                                     ; preds = %80
  br label %58

; <label>:58:                                     ; preds = %57, %43
  %59 = tail call i32* @__errno_location() #1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.31, i64 0, i64 0), i32 5) #9
  %62 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %60, i8* %61, i8* %62) #9
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
  %72 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0)) #9
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

; <label>:74:                                     ; preds = %71
  %75 = tail call i32* @__errno_location() #1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.27, i64 0, i64 0), i32 5) #9
  %78 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %76, i8* %77, i8* %78) #9
  br label %79

; <label>:79:                                     ; preds = %58, %74
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #9
  br label %85

; <label>:80:                                     ; preds = %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* nonnull %44, i64 144, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #9
  call void @llvm.lifetime.start(i64 144, i8* nonnull %44) #9
  %81 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.29, i64 0, i64 0), %struct.stat* nonnull %5) #9
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %57, label %63

; <label>:83:                                     ; preds = %63, %67
  call void @llvm.lifetime.end(i64 144, i8* nonnull %44) #9
  %84 = call i8* @xgetcwd() #9
  br label %85

; <label>:85:                                     ; preds = %79, %52, %83
  %86 = phi i8* [ %84, %83 ], [ null, %52 ], [ null, %79 ]
  %87 = tail call i32* @__errno_location() #1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @restore_cwd(%struct.saved_cwd* nonnull %3) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

; <label>:91:                                     ; preds = %85
  %92 = load i32, i32* %87, align 4
  %93 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6.32, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %92, i8* %93) #9
  unreachable

; <label>:94:                                     ; preds = %85
  call void @free_cwd(%struct.saved_cwd* nonnull %3) #9
  store i32 %88, i32* %87, align 4
  br label %95

; <label>:95:                                     ; preds = %35, %94, %23, %10
  %96 = phi i8* [ null, %10 ], [ null, %23 ], [ %86, %94 ], [ null, %35 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %7) #9
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #9
  ret i8* %96
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @areadlink_with_size(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = icmp ult i64 %1, 1025
  %4 = add i64 %1, 1
  %5 = select i1 %3, i64 %4, i64 1025
  %6 = tail call noalias i8* @malloc(i64 %5) #9
  %7 = icmp eq i8* %6, null
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %27
  %10 = phi i8* [ %29, %27 ], [ %6, %8 ]
  %11 = phi i64 [ %28, %27 ], [ %5, %8 ]
  %12 = tail call i64 @readlink(i8* %0, i8* nonnull %10, i64 %11) #9
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* nonnull %10) #9
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
  tail call void @free(i8* nonnull %10) #9
  %24 = icmp ult i64 %11, 4611686018427387904
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %23
  %26 = shl i64 %11, 1
  br label %27

; <label>:27:                                     ; preds = %25, %31
  %28 = phi i64 [ %26, %25 ], [ 9223372036854775807, %31 ]
  %29 = tail call noalias i8* @malloc(i64 %28) #9
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
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #9
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #10 {
  %5 = tail call i64 @strlen(i8* %0) #13
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
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #13
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
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #13
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
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.188, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #9
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #9
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.189, i64 0, i64 0), i32 5) #9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #9
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
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #9
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.190, i64 0, i64 0), i8* %22) #9
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #9
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.191, i64 0, i64 0), i8* %26) #9
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
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #9
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
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #13
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.187, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.188, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #9
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #9
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #9
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #9
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
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #13
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
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #9
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.206, i64 0, i64 0), i32 5) #9
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.207, i64 0, i64 0), i8* %17, i8* %12) #9
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.208, i64 0, i64 0), i8* %12) #9
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #14
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #9
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
  %2 = tail call i8* @mdir_name(i8* %0) #9
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
  %5 = tail call i8* @last_component(i8* %0) #13
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
  %5 = tail call i8* @last_component(i8* %0) #13
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
  %22 = tail call noalias i8* @malloc(i64 %21) #9
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

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @file_type(%struct.stat* nocapture readonly) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 61440
  %5 = add nsw i32 %4, -4096
  %6 = lshr exact i32 %5, 12
  %7 = trunc i32 %6 to i20
  switch i20 %7, label %18 [
    i20 7, label %8
    i20 3, label %19
    i20 9, label %13
    i20 5, label %14
    i20 1, label %15
    i20 0, label %16
    i20 11, label %17
  ]

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.219, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.220, i64 0, i64 0)
  br label %19

; <label>:13:                                     ; preds = %1
  br label %19

; <label>:14:                                     ; preds = %1
  br label %19

; <label>:15:                                     ; preds = %1
  br label %19

; <label>:16:                                     ; preds = %1
  br label %19

; <label>:17:                                     ; preds = %1
  br label %19

; <label>:18:                                     ; preds = %1
  br label %19

; <label>:19:                                     ; preds = %1, %18, %17, %16, %15, %14, %13, %8
  %20 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11.221, i64 0, i64 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.222, i64 0, i64 0), %17 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.223, i64 0, i64 0), %16 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.224, i64 0, i64 0), %15 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7.225, i64 0, i64 0), %14 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.226, i64 0, i64 0), %13 ], [ %12, %8 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.227, i64 0, i64 0), %1 ]
  %21 = tail call i8* @dcgettext(i8* null, i8* %20, i32 5) #9
  ret i8* %21
}

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

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.236, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.237, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.238, i64 0, i64 0), i64 3) #13
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
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #9

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
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #9
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
  %13 = tail call i64 @__ctype_get_mb_cur_max() #9
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.257, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.258, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.259, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.259, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.259, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.258, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.258, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.258, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.259, i64 0, i64 0), %41 ]
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #9
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #9
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #9
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
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #9
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #9
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
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #9
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #9
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.260, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.261, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.262, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.263, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.259, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.258, i64 0, i64 0)
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
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #9
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #9
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #9
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
  %24 = tail call noalias i8* @xmalloc(i64 %23) #9
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
  tail call void @free(i8* %8) #9
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
  tail call void @free(i8* %16) #9
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #9
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
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #9
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
  tail call void @free(i8* %40) #9
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #9
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
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #9
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #9
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
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
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #9
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #9
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
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
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #9
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
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
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #9
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #9
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
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #9
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #9
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #9
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @save_cwd(%struct.saved_cwd* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  store i8* null, i8** %2, align 8
  %3 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i32 0) #9
  %4 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 0
  store i32 %3, i32* %4, align 8
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @getcwd(i8* null, i64 0) #9
  store i8* %7, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  %9 = sext i1 %8 to i32
  br label %12

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @set_cloexec_flag(i32 %3, i1 zeroext true) #9
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
  %6 = tail call i32 @fchdir(i32 %3) #9
  br label %11

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = tail call i32 @chdir_long(i8* %9) #9
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
  %6 = tail call i32 @close(i32 %3) #9
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = getelementptr inbounds %struct.saved_cwd, %struct.saved_cwd* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  tail call void @free(i8* %9) #9
  ret void
}

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i64 @nstrftime(i8*, i64, i8* readonly, %struct.tm*, %struct.tm_zone*, i32) local_unnamed_addr #6 {
  %7 = tail call fastcc i64 @__strftime_internal(i8* %0, i64 %1, i8* %2, %struct.tm* %3, i1 zeroext false, %struct.tm_zone* %4, i32 %5)
  ret i64 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @__strftime_internal(i8*, i64, i8* readonly, %struct.tm*, i1 zeroext, %struct.tm_zone*, i32) unnamed_addr #6 {
  %8 = alloca [23 x i8], align 16
  %9 = alloca [5 x i8], align 1
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.tm, align 8
  %12 = zext i1 %4 to i8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 10
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  %18 = select i1 %17, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.283, i64 0, i64 0)
  %19 = icmp sgt i32 %14, 12
  %20 = add nsw i32 %14, -12
  %21 = icmp eq i32 %14, 0
  %22 = select i1 %21, i32 12, i32 %14
  %23 = select i1 %19, i32 %20, i32 %22
  %24 = load i8, i8* %2, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %1395, label %26

; <label>:26:                                     ; preds = %7
  %27 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 5
  %35 = getelementptr inbounds [23 x i8], [23 x i8]* %8, i64 0, i64 23
  %36 = ptrtoint i8* %35 to i64
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 3
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 7
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 1
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 4
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 0
  %42 = bitcast %struct.tm* %11 to i8*
  %43 = bitcast %struct.tm* %3 to i8*
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 6
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %3, i64 0, i32 9
  %47 = add i64 %36, -1
  br label %48

; <label>:48:                                     ; preds = %26, %1385
  %49 = phi i8 [ %24, %26 ], [ %1392, %1385 ]
  %50 = phi i64 [ 0, %26 ], [ %1386, %1385 ]
  %51 = phi i8* [ %0, %26 ], [ %1387, %1385 ]
  %52 = phi i8* [ %2, %26 ], [ %1391, %1385 ]
  %53 = phi i32 [ undef, %26 ], [ %1389, %1385 ]
  %54 = phi i32 [ undef, %26 ], [ %1390, %1385 ]
  call void @llvm.lifetime.start(i64 23, i8* nonnull %27) #9
  %55 = icmp eq i8 %49, 37
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %48
  br label %86

; <label>:57:                                     ; preds = %48
  %58 = sub i64 %1, %50
  %59 = icmp ult i64 %58, 2
  br i1 %59, label %67, label %60

; <label>:60:                                     ; preds = %57
  %61 = icmp eq i8* %51, null
  br i1 %61, label %64, label %62

; <label>:62:                                     ; preds = %60
  store i8 %49, i8* %51, align 1
  %63 = getelementptr inbounds i8, i8* %51, i64 1
  br label %64

; <label>:64:                                     ; preds = %60, %62
  %65 = phi i8* [ %63, %62 ], [ null, %60 ]
  %66 = add i64 %50, 1
  br label %67

; <label>:67:                                     ; preds = %57, %64
  %68 = phi i32 [ 0, %64 ], [ 1, %57 ]
  %69 = phi i8* [ %65, %64 ], [ %51, %57 ]
  %70 = phi i64 [ %66, %64 ], [ %50, %57 ]
  %71 = icmp eq i32 %68, 0
  %72 = select i1 %71, i32 4, i32 %68
  br label %1378

; <label>:73:                                     ; preds = %79, %81
  %74 = phi i32 [ %83, %81 ], [ %78, %79 ]
  %75 = phi i8* [ %84, %81 ], [ %76, %79 ]
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  switch i32 %78, label %91 [
    i32 95, label %79
    i32 45, label %79
    i32 48, label %79
    i32 94, label %80
    i32 35, label %85
  ]

; <label>:79:                                     ; preds = %73, %73, %73
  br label %73

; <label>:80:                                     ; preds = %73
  br label %81

; <label>:81:                                     ; preds = %80, %86
  %82 = phi i8 [ %88, %86 ], [ 1, %80 ]
  %83 = phi i32 [ %89, %86 ], [ %74, %80 ]
  %84 = phi i8* [ %90, %86 ], [ %76, %80 ]
  br label %73

; <label>:85:                                     ; preds = %73
  br label %86

; <label>:86:                                     ; preds = %56, %85
  %87 = phi i8 [ 1, %85 ], [ 0, %56 ]
  %88 = phi i8 [ %82, %85 ], [ %12, %56 ]
  %89 = phi i32 [ %74, %85 ], [ 0, %56 ]
  %90 = phi i8* [ %76, %85 ], [ %52, %56 ]
  br label %81

; <label>:91:                                     ; preds = %73
  %92 = add nsw i32 %78, -48
  %93 = icmp ult i32 %92, 10
  br i1 %93, label %94, label %118

; <label>:94:                                     ; preds = %91
  br label %95

; <label>:95:                                     ; preds = %94, %110
  %96 = phi i8 [ %113, %110 ], [ %77, %94 ]
  %97 = phi i32 [ %111, %110 ], [ 0, %94 ]
  %98 = phi i8* [ %112, %110 ], [ %76, %94 ]
  %99 = icmp sgt i32 %97, 214748364
  br i1 %99, label %110, label %100

; <label>:100:                                    ; preds = %95
  %101 = icmp eq i32 %97, 214748364
  %102 = sext i8 %96 to i32
  %103 = add nsw i32 %102, -48
  %104 = icmp sgt i32 %103, 7
  %105 = and i1 %101, %104
  br i1 %105, label %110, label %106

; <label>:106:                                    ; preds = %100
  %107 = mul nsw i32 %97, 10
  %108 = add i32 %107, -48
  %109 = add i32 %108, %102
  br label %110

; <label>:110:                                    ; preds = %100, %95, %106
  %111 = phi i32 [ %109, %106 ], [ 2147483647, %95 ], [ 2147483647, %100 ]
  %112 = getelementptr inbounds i8, i8* %98, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = add nsw i32 %114, -48
  %116 = icmp ult i32 %115, 10
  br i1 %116, label %95, label %117

; <label>:117:                                    ; preds = %110
  br label %118

; <label>:118:                                    ; preds = %117, %91
  %119 = phi i8 [ %77, %91 ], [ %113, %117 ]
  %120 = phi i32 [ -1, %91 ], [ %111, %117 ]
  %121 = phi i8* [ %76, %91 ], [ %112, %117 ]
  %122 = sext i8 %119 to i32
  switch i32 %122, label %126 [
    i32 69, label %123
    i32 79, label %123
  ]

; <label>:123:                                    ; preds = %118, %118
  %124 = getelementptr inbounds i8, i8* %121, i64 1
  %125 = load i8, i8* %124, align 1
  br label %126

; <label>:126:                                    ; preds = %118, %123
  %127 = phi i8 [ %125, %123 ], [ %119, %118 ]
  %128 = phi i32 [ %122, %123 ], [ 0, %118 ]
  %129 = phi i8* [ %124, %123 ], [ %121, %118 ]
  %130 = sext i8 %127 to i32
  switch i32 %130, label %1257 [
    i32 37, label %132
    i32 97, label %162
    i32 65, label %167
    i32 98, label %172
    i32 104, label %172
    i32 66, label %176
    i32 99, label %181
    i32 67, label %406
    i32 120, label %420
    i32 68, label %422
    i32 100, label %424
    i32 101, label %428
    i32 70, label %759
    i32 72, label %761
    i32 73, label %765
    i32 107, label %767
    i32 108, label %771
    i32 106, label %773
    i32 77, label %780
    i32 109, label %784
    i32 78, label %791
    i32 110, label %824
    i32 80, label %850
    i32 112, label %851
    i32 113, label %856
    i32 82, label %183
    i32 114, label %212
    i32 83, label %861
    i32 115, label %865
    i32 88, label %884
    i32 84, label %886
    i32 116, label %887
    i32 117, label %913
    i32 85, label %918
    i32 86, label %926
    i32 103, label %926
    i32 71, label %926
    i32 87, label %1006
    i32 119, label %1016
    i32 89, label %1020
    i32 121, label %1027
    i32 90, label %1038
    i32 58, label %131
    i32 122, label %1212
    i32 0, label %1254
  ]

; <label>:131:                                    ; preds = %126
  br label %1205

; <label>:132:                                    ; preds = %126
  %133 = icmp eq i32 %128, 0
  br i1 %133, label %134, label %1257

; <label>:134:                                    ; preds = %132
  %135 = icmp sgt i32 %120, 0
  %136 = select i1 %135, i32 %120, i32 0
  %137 = icmp ugt i32 %136, 1
  %138 = icmp ugt i32 %136, 1
  %139 = select i1 %138, i32 %136, i32 1
  %140 = zext i32 %139 to i64
  %141 = sub i64 %1, %50
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %1370

; <label>:143:                                    ; preds = %134
  %144 = icmp eq i8* %51, null
  br i1 %144, label %159, label %145

; <label>:145:                                    ; preds = %143
  br i1 %137, label %146, label %155

; <label>:146:                                    ; preds = %145
  %147 = sext i32 %120 to i64
  %148 = add nsw i64 %147, -1
  %149 = icmp eq i32 %74, 48
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %146
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %148, i32 1, i1 false)
  br label %152

; <label>:151:                                    ; preds = %146
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %148, i32 1, i1 false)
  br label %152

; <label>:152:                                    ; preds = %151, %150
  %153 = getelementptr inbounds i8, i8* %51, i64 %148
  %154 = load i8, i8* %129, align 1
  br label %155

; <label>:155:                                    ; preds = %152, %145
  %156 = phi i8 [ %154, %152 ], [ %127, %145 ]
  %157 = phi i8* [ %153, %152 ], [ %51, %145 ]
  store i8 %156, i8* %157, align 1
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  br label %159

; <label>:159:                                    ; preds = %155, %143
  %160 = phi i8* [ %158, %155 ], [ null, %143 ]
  %161 = add i64 %140, %50
  br label %1372

; <label>:162:                                    ; preds = %126
  %163 = icmp eq i32 %128, 0
  br i1 %163, label %164, label %1257

; <label>:164:                                    ; preds = %162
  %165 = icmp eq i8 %87, 0
  %166 = select i1 %165, i8 %82, i8 1
  br label %212

; <label>:167:                                    ; preds = %126
  %168 = icmp eq i32 %128, 0
  br i1 %168, label %169, label %1257

; <label>:169:                                    ; preds = %167
  %170 = icmp eq i8 %87, 0
  %171 = select i1 %170, i8 %82, i8 1
  br label %212

; <label>:172:                                    ; preds = %126, %126
  %173 = icmp eq i8 %87, 0
  %174 = select i1 %173, i8 %82, i8 1
  %175 = icmp eq i32 %128, 0
  br i1 %175, label %212, label %1257

; <label>:176:                                    ; preds = %126
  %177 = icmp eq i32 %128, 0
  br i1 %177, label %178, label %1257

; <label>:178:                                    ; preds = %176
  %179 = icmp eq i8 %87, 0
  %180 = select i1 %179, i8 %82, i8 1
  br label %212

; <label>:181:                                    ; preds = %126
  %182 = icmp eq i32 %128, 79
  br i1 %182, label %1257, label %212

; <label>:183:                                    ; preds = %126, %759, %422, %886
  %184 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.284, i64 0, i64 0), %886 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.285, i64 0, i64 0), %422 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.286, i64 0, i64 0), %759 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.287, i64 0, i64 0), %126 ]
  %185 = icmp ne i8 %82, 0
  %186 = call fastcc i64 @__strftime_internal(i8* null, i64 -1, i8* nonnull %184, %struct.tm* %3, i1 zeroext %185, %struct.tm_zone* %5, i32 %6)
  %187 = icmp sgt i32 %120, 0
  %188 = select i1 %187, i32 %120, i32 0
  %189 = zext i32 %188 to i64
  %190 = icmp ult i64 %186, %189
  %191 = select i1 %190, i64 %189, i64 %186
  %192 = sub i64 %1, %50
  %193 = icmp ult i64 %191, %192
  br i1 %193, label %194, label %1370

; <label>:194:                                    ; preds = %183
  %195 = icmp eq i8* %51, null
  br i1 %195, label %209, label %196

; <label>:196:                                    ; preds = %194
  br i1 %190, label %197, label %205

; <label>:197:                                    ; preds = %196
  %198 = sext i32 %120 to i64
  %199 = sub i64 %198, %186
  %200 = icmp eq i32 %74, 48
  br i1 %200, label %201, label %202

; <label>:201:                                    ; preds = %197
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %199, i32 1, i1 false)
  br label %203

; <label>:202:                                    ; preds = %197
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %199, i32 1, i1 false)
  br label %203

; <label>:203:                                    ; preds = %202, %201
  %204 = getelementptr inbounds i8, i8* %51, i64 %199
  br label %205

; <label>:205:                                    ; preds = %203, %196
  %206 = phi i8* [ %204, %203 ], [ %51, %196 ]
  %207 = call fastcc i64 @__strftime_internal(i8* %206, i64 %192, i8* %184, %struct.tm* %3, i1 zeroext %185, %struct.tm_zone* %5, i32 %6)
  %208 = getelementptr inbounds i8, i8* %206, i64 %186
  br label %209

; <label>:209:                                    ; preds = %205, %194
  %210 = phi i8* [ %208, %205 ], [ null, %194 ]
  %211 = add i64 %191, %50
  br label %1372

; <label>:212:                                    ; preds = %851, %178, %169, %164, %1020, %445, %172, %1027, %884, %126, %420, %406, %181
  %213 = phi i8 [ 121, %1027 ], [ 89, %1020 ], [ 88, %884 ], [ 114, %126 ], [ 120, %420 ], [ 67, %406 ], [ 99, %181 ], [ %127, %172 ], [ 97, %164 ], [ 65, %169 ], [ 66, %178 ], [ %127, %445 ], [ 112, %851 ]
  %214 = phi i8 [ %82, %1027 ], [ %82, %1020 ], [ %82, %884 ], [ %82, %126 ], [ %82, %420 ], [ %82, %406 ], [ %82, %181 ], [ %174, %172 ], [ %166, %164 ], [ %171, %169 ], [ %180, %178 ], [ %82, %445 ], [ %854, %851 ]
  %215 = phi i8 [ 0, %1027 ], [ 0, %1020 ], [ 0, %884 ], [ 0, %126 ], [ 0, %420 ], [ 0, %406 ], [ 0, %181 ], [ 0, %172 ], [ 0, %164 ], [ 0, %169 ], [ 0, %178 ], [ 0, %445 ], [ %855, %851 ]
  %216 = phi i32 [ %120, %1027 ], [ %120, %1020 ], [ %120, %884 ], [ %120, %126 ], [ %120, %420 ], [ %120, %406 ], [ %120, %181 ], [ %120, %172 ], [ %120, %164 ], [ %120, %169 ], [ %120, %178 ], [ %446, %445 ], [ %120, %851 ]
  %217 = phi i32 [ %54, %1027 ], [ %54, %1020 ], [ %54, %884 ], [ %54, %126 ], [ %54, %420 ], [ %54, %406 ], [ %54, %181 ], [ %54, %172 ], [ %54, %164 ], [ %54, %169 ], [ %54, %178 ], [ %447, %445 ], [ %54, %851 ]
  %218 = phi i32 [ %53, %1027 ], [ %53, %1020 ], [ %53, %884 ], [ %53, %126 ], [ %53, %420 ], [ %53, %406 ], [ %53, %181 ], [ %53, %172 ], [ %53, %164 ], [ %53, %169 ], [ %53, %178 ], [ %450, %445 ], [ %53, %851 ]
  %219 = phi i32 [ 0, %1027 ], [ 0, %1020 ], [ 0, %884 ], [ 0, %126 ], [ 0, %420 ], [ 0, %406 ], [ 0, %181 ], [ 0, %172 ], [ 0, %164 ], [ 0, %169 ], [ 0, %178 ], [ %451, %445 ], [ 0, %851 ]
  %220 = phi i32 [ %74, %1027 ], [ %74, %1020 ], [ %74, %884 ], [ %74, %126 ], [ %74, %420 ], [ %74, %406 ], [ %74, %181 ], [ %74, %172 ], [ %74, %164 ], [ %74, %169 ], [ %74, %178 ], [ %452, %445 ], [ %74, %851 ]
  %221 = phi i8* [ %129, %1027 ], [ %129, %1020 ], [ %129, %884 ], [ %129, %126 ], [ %129, %420 ], [ %129, %406 ], [ %129, %181 ], [ %129, %172 ], [ %129, %164 ], [ %129, %169 ], [ %129, %178 ], [ %453, %445 ], [ %129, %851 ]
  call void @llvm.lifetime.start(i64 5, i8* nonnull %28) #9
  call void @llvm.lifetime.start(i64 1024, i8* nonnull %29) #9
  store i8 32, i8* %28, align 1
  store i8 37, i8* %30, align 1
  %222 = icmp eq i32 %128, 0
  br i1 %222, label %225, label %223

; <label>:223:                                    ; preds = %212
  %224 = trunc i32 %128 to i8
  store i8 %224, i8* %31, align 1
  br label %225

; <label>:225:                                    ; preds = %212, %223
  %226 = phi i8* [ %33, %223 ], [ %31, %212 ]
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  store i8 %213, i8* %226, align 1
  store i8 0, i8* %227, align 1
  %228 = call i64 @strftime(i8* nonnull %29, i64 1024, i8* nonnull %28, %struct.tm* %3) #9
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %402, label %230

; <label>:230:                                    ; preds = %225
  %231 = add i64 %228, -1
  %232 = icmp sgt i32 %216, 0
  %233 = select i1 %232, i32 %216, i32 0
  %234 = zext i32 %233 to i64
  %235 = icmp ult i64 %231, %234
  %236 = select i1 %235, i64 %234, i64 %231
  %237 = sub i64 %1, %50
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %405

; <label>:239:                                    ; preds = %230
  %240 = icmp eq i8* %51, null
  br i1 %240, label %399, label %241

; <label>:241:                                    ; preds = %239
  %242 = icmp ne i32 %219, 0
  %243 = xor i1 %235, true
  %244 = or i1 %242, %243
  br i1 %244, label %253, label %245

; <label>:245:                                    ; preds = %241
  %246 = sext i32 %216 to i64
  %247 = sub i64 %246, %231
  %248 = icmp eq i32 %220, 48
  br i1 %248, label %249, label %250

; <label>:249:                                    ; preds = %245
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %247, i32 1, i1 false)
  br label %251

; <label>:250:                                    ; preds = %245
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %247, i32 1, i1 false)
  br label %251

; <label>:251:                                    ; preds = %250, %249
  %252 = getelementptr inbounds i8, i8* %51, i64 %247
  br label %253

; <label>:253:                                    ; preds = %241, %251
  %254 = phi i8* [ %252, %251 ], [ %51, %241 ]
  %255 = and i8 %215, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %323, label %257

; <label>:257:                                    ; preds = %253
  %258 = icmp eq i64 %231, 0
  br i1 %258, label %397, label %259

; <label>:259:                                    ; preds = %257
  %260 = tail call i32** @__ctype_tolower_loc() #1
  %261 = add i64 %228, -2
  %262 = and i64 %231, 3
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %280, label %264

; <label>:264:                                    ; preds = %259
  br label %265

; <label>:265:                                    ; preds = %265, %264
  %266 = phi i64 [ %231, %264 ], [ %268, %265 ]
  %267 = phi i64 [ %262, %264 ], [ %277, %265 ]
  %268 = add i64 %266, -1
  %269 = load i32*, i32** %260, align 8
  %270 = getelementptr inbounds i8, i8* %32, i64 %268
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = trunc i32 %274 to i8
  %276 = getelementptr inbounds i8, i8* %254, i64 %268
  store i8 %275, i8* %276, align 1
  %277 = add i64 %267, -1
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %265

; <label>:279:                                    ; preds = %265
  br label %280

; <label>:280:                                    ; preds = %259, %279
  %281 = phi i64 [ %231, %259 ], [ %268, %279 ]
  %282 = icmp ult i64 %261, 3
  br i1 %282, label %396, label %283

; <label>:283:                                    ; preds = %280
  br label %284

; <label>:284:                                    ; preds = %284, %283
  %285 = phi i64 [ %281, %283 ], [ %313, %284 ]
  %286 = add i64 %285, -1
  %287 = load i32*, i32** %260, align 8
  %288 = getelementptr inbounds i8, i8* %32, i64 %286
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds i8, i8* %254, i64 %286
  store i8 %293, i8* %294, align 1
  %295 = add i64 %285, -2
  %296 = load i32*, i32** %260, align 8
  %297 = getelementptr inbounds i8, i8* %32, i64 %295
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds i8, i8* %254, i64 %295
  store i8 %302, i8* %303, align 1
  %304 = add i64 %285, -3
  %305 = load i32*, i32** %260, align 8
  %306 = getelementptr inbounds i8, i8* %32, i64 %304
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds i8, i8* %254, i64 %304
  store i8 %311, i8* %312, align 1
  %313 = add i64 %285, -4
  %314 = load i32*, i32** %260, align 8
  %315 = getelementptr inbounds i8, i8* %32, i64 %313
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = trunc i32 %319 to i8
  %321 = getelementptr inbounds i8, i8* %254, i64 %313
  store i8 %320, i8* %321, align 1
  %322 = icmp eq i64 %313, 0
  br i1 %322, label %395, label %284

; <label>:323:                                    ; preds = %253
  %324 = and i8 %214, 1
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %392, label %326

; <label>:326:                                    ; preds = %323
  %327 = icmp eq i64 %231, 0
  br i1 %327, label %397, label %328

; <label>:328:                                    ; preds = %326
  %329 = tail call i32** @__ctype_toupper_loc() #1
  %330 = add i64 %228, -2
  %331 = and i64 %231, 3
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %349, label %333

; <label>:333:                                    ; preds = %328
  br label %334

; <label>:334:                                    ; preds = %334, %333
  %335 = phi i64 [ %231, %333 ], [ %337, %334 ]
  %336 = phi i64 [ %331, %333 ], [ %346, %334 ]
  %337 = add i64 %335, -1
  %338 = load i32*, i32** %329, align 8
  %339 = getelementptr inbounds i8, i8* %32, i64 %337
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = trunc i32 %343 to i8
  %345 = getelementptr inbounds i8, i8* %254, i64 %337
  store i8 %344, i8* %345, align 1
  %346 = add i64 %336, -1
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %334

; <label>:348:                                    ; preds = %334
  br label %349

; <label>:349:                                    ; preds = %328, %348
  %350 = phi i64 [ %231, %328 ], [ %337, %348 ]
  %351 = icmp ult i64 %330, 3
  br i1 %351, label %394, label %352

; <label>:352:                                    ; preds = %349
  br label %353

; <label>:353:                                    ; preds = %353, %352
  %354 = phi i64 [ %350, %352 ], [ %382, %353 ]
  %355 = add i64 %354, -1
  %356 = load i32*, i32** %329, align 8
  %357 = getelementptr inbounds i8, i8* %32, i64 %355
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i64
  %360 = getelementptr inbounds i32, i32* %356, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = trunc i32 %361 to i8
  %363 = getelementptr inbounds i8, i8* %254, i64 %355
  store i8 %362, i8* %363, align 1
  %364 = add i64 %354, -2
  %365 = load i32*, i32** %329, align 8
  %366 = getelementptr inbounds i8, i8* %32, i64 %364
  %367 = load i8, i8* %366, align 1
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = trunc i32 %370 to i8
  %372 = getelementptr inbounds i8, i8* %254, i64 %364
  store i8 %371, i8* %372, align 1
  %373 = add i64 %354, -3
  %374 = load i32*, i32** %329, align 8
  %375 = getelementptr inbounds i8, i8* %32, i64 %373
  %376 = load i8, i8* %375, align 1
  %377 = zext i8 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = trunc i32 %379 to i8
  %381 = getelementptr inbounds i8, i8* %254, i64 %373
  store i8 %380, i8* %381, align 1
  %382 = add i64 %354, -4
  %383 = load i32*, i32** %329, align 8
  %384 = getelementptr inbounds i8, i8* %32, i64 %382
  %385 = load i8, i8* %384, align 1
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = trunc i32 %388 to i8
  %390 = getelementptr inbounds i8, i8* %254, i64 %382
  store i8 %389, i8* %390, align 1
  %391 = icmp eq i64 %382, 0
  br i1 %391, label %393, label %353

; <label>:392:                                    ; preds = %323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %254, i8* %32, i64 %231, i32 1, i1 false)
  br label %397

; <label>:393:                                    ; preds = %353
  br label %394

; <label>:394:                                    ; preds = %349, %393
  br label %397

; <label>:395:                                    ; preds = %284
  br label %396

; <label>:396:                                    ; preds = %280, %395
  br label %397

; <label>:397:                                    ; preds = %396, %394, %326, %257, %392
  %398 = getelementptr inbounds i8, i8* %254, i64 %231
  br label %399

; <label>:399:                                    ; preds = %397, %239
  %400 = phi i8* [ %398, %397 ], [ null, %239 ]
  %401 = add i64 %236, %50
  br label %402

; <label>:402:                                    ; preds = %399, %225
  %403 = phi i8* [ %400, %399 ], [ %51, %225 ]
  %404 = phi i64 [ %401, %399 ], [ %50, %225 ]
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #9
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #9
  br label %1372

; <label>:405:                                    ; preds = %230
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %29) #9
  call void @llvm.lifetime.end(i64 5, i8* nonnull %28) #9
  br label %1371

; <label>:406:                                    ; preds = %126
  %407 = icmp eq i32 %128, 69
  br i1 %407, label %212, label %408

; <label>:408:                                    ; preds = %406
  %409 = load i32, i32* %34, align 4
  %410 = sdiv i32 %409, 100
  %411 = add nsw i32 %410, 19
  %412 = srem i32 %409, 100
  %413 = icmp slt i32 %412, 0
  %414 = icmp sgt i32 %409, -1900
  %415 = and i1 %414, %413
  %416 = sext i1 %415 to i32
  %417 = add nsw i32 %411, %416
  %418 = icmp slt i32 %409, -1900
  %419 = zext i1 %418 to i8
  br label %445

; <label>:420:                                    ; preds = %126
  %421 = icmp eq i32 %128, 79
  br i1 %421, label %1257, label %212

; <label>:422:                                    ; preds = %126
  %423 = icmp eq i32 %128, 0
  br i1 %423, label %183, label %1257

; <label>:424:                                    ; preds = %126
  %425 = icmp eq i32 %128, 69
  br i1 %425, label %1257, label %426

; <label>:426:                                    ; preds = %424
  %427 = load i32, i32* %37, align 4
  br label %438

; <label>:428:                                    ; preds = %126
  %429 = icmp eq i32 %128, 69
  br i1 %429, label %1257, label %430

; <label>:430:                                    ; preds = %428
  %431 = load i32, i32* %37, align 4
  br label %432

; <label>:432:                                    ; preds = %771, %769, %430
  %433 = phi i32 [ %770, %769 ], [ %431, %430 ], [ %23, %771 ]
  switch i32 %74, label %434 [
    i32 48, label %438
    i32 45, label %438
  ]

; <label>:434:                                    ; preds = %432
  br label %438

; <label>:435:                                    ; preds = %818
  br label %436

; <label>:436:                                    ; preds = %812, %435
  %437 = phi i32 [ %813, %812 ], [ %821, %435 ]
  br label %438

; <label>:438:                                    ; preds = %436, %795, %991, %986, %997, %1033, %1029, %793, %765, %432, %432, %434, %1018, %1008, %920, %913, %863, %782, %763, %426
  %439 = phi i32 [ %120, %1018 ], [ %120, %1008 ], [ %120, %920 ], [ %120, %913 ], [ %120, %863 ], [ %120, %782 ], [ %120, %434 ], [ %120, %432 ], [ %120, %763 ], [ %120, %426 ], [ %120, %432 ], [ %120, %765 ], [ 9, %793 ], [ %120, %1029 ], [ %120, %1033 ], [ %120, %997 ], [ %120, %986 ], [ %120, %991 ], [ %120, %795 ], [ %120, %436 ]
  %440 = phi i32 [ %1019, %1018 ], [ %1015, %1008 ], [ %925, %920 ], [ %917, %913 ], [ %864, %863 ], [ %783, %782 ], [ %433, %434 ], [ %433, %432 ], [ %764, %763 ], [ %427, %426 ], [ %433, %432 ], [ %23, %765 ], [ %6, %793 ], [ %1031, %1029 ], [ %1037, %1033 ], [ %999, %997 ], [ %989, %986 ], [ %996, %991 ], [ %6, %795 ], [ %437, %436 ]
  %441 = phi i32 [ 1, %1018 ], [ 2, %1008 ], [ 2, %920 ], [ 1, %913 ], [ 2, %863 ], [ 2, %782 ], [ 2, %434 ], [ 2, %432 ], [ 2, %763 ], [ 2, %426 ], [ 2, %432 ], [ 2, %765 ], [ 9, %793 ], [ 2, %1029 ], [ 2, %1033 ], [ 2, %997 ], [ 2, %986 ], [ 2, %991 ], [ %120, %795 ], [ %120, %436 ]
  %442 = phi i32 [ %74, %1018 ], [ %74, %1008 ], [ %74, %920 ], [ %74, %913 ], [ %74, %863 ], [ %74, %782 ], [ 95, %434 ], [ %74, %432 ], [ %74, %763 ], [ %74, %426 ], [ %74, %432 ], [ %74, %765 ], [ %74, %793 ], [ %74, %1029 ], [ %74, %1033 ], [ %74, %997 ], [ %74, %986 ], [ %74, %991 ], [ %74, %795 ], [ %74, %436 ]
  %443 = lshr i32 %440, 31
  %444 = trunc i32 %443 to i8
  br label %445

; <label>:445:                                    ; preds = %1000, %438, %775, %786, %856, %408, %1248
  %446 = phi i32 [ %120, %1248 ], [ %439, %438 ], [ %120, %1000 ], [ %120, %856 ], [ %120, %786 ], [ %120, %775 ], [ %120, %408 ]
  %447 = phi i32 [ %1250, %1248 ], [ 0, %438 ], [ 0, %1000 ], [ 0, %856 ], [ 0, %786 ], [ 0, %775 ], [ 0, %408 ]
  %448 = phi i8 [ 1, %1248 ], [ 0, %438 ], [ 0, %1000 ], [ 0, %856 ], [ 0, %786 ], [ 0, %775 ], [ 0, %408 ]
  %449 = phi i8 [ %1228, %1248 ], [ %444, %438 ], [ %1003, %1000 ], [ 0, %856 ], [ %789, %786 ], [ %778, %775 ], [ %419, %408 ]
  %450 = phi i32 [ %1251, %1248 ], [ %440, %438 ], [ %1005, %1000 ], [ %860, %856 ], [ %790, %786 ], [ %779, %775 ], [ %417, %408 ]
  %451 = phi i32 [ %1252, %1248 ], [ %441, %438 ], [ 4, %1000 ], [ 1, %856 ], [ 2, %786 ], [ 3, %775 ], [ 2, %408 ]
  %452 = phi i32 [ %74, %1248 ], [ %442, %438 ], [ %74, %1000 ], [ %74, %856 ], [ %74, %786 ], [ %74, %775 ], [ %74, %408 ]
  %453 = phi i8* [ %1214, %1248 ], [ %129, %438 ], [ %129, %1000 ], [ %129, %856 ], [ %129, %786 ], [ %129, %775 ], [ %129, %408 ]
  %454 = icmp eq i32 %128, 79
  %455 = and i8 %449, 1
  %456 = icmp eq i8 %455, 0
  %457 = and i1 %454, %456
  br i1 %457, label %212, label %458

; <label>:458:                                    ; preds = %1021, %445
  %459 = phi i1 [ %1026, %1021 ], [ %456, %445 ]
  %460 = phi i8* [ %129, %1021 ], [ %453, %445 ]
  %461 = phi i32 [ %74, %1021 ], [ %452, %445 ]
  %462 = phi i32 [ 4, %1021 ], [ %451, %445 ]
  %463 = phi i32 [ %1025, %1021 ], [ %450, %445 ]
  %464 = phi i8 [ %1024, %1021 ], [ %449, %445 ]
  %465 = phi i8 [ 0, %1021 ], [ %448, %445 ]
  %466 = phi i32 [ 0, %1021 ], [ %447, %445 ]
  %467 = phi i32 [ %120, %1021 ], [ %446, %445 ]
  %468 = sub i32 0, %463
  %469 = select i1 %459, i32 %463, i32 %468
  br label %470

; <label>:470:                                    ; preds = %458, %478
  %471 = phi i8* [ %484, %478 ], [ %35, %458 ]
  %472 = phi i32 [ %480, %478 ], [ %466, %458 ]
  %473 = phi i32 [ %485, %478 ], [ %469, %458 ]
  %474 = and i32 %472, 1
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %478, label %476

; <label>:476:                                    ; preds = %470
  %477 = getelementptr inbounds i8, i8* %471, i64 -1
  store i8 58, i8* %477, align 1
  br label %478

; <label>:478:                                    ; preds = %470, %476
  %479 = phi i8* [ %477, %476 ], [ %471, %470 ]
  %480 = ashr i32 %472, 1
  %481 = urem i32 %473, 10
  %482 = trunc i32 %481 to i8
  %483 = or i8 %482, 48
  %484 = getelementptr inbounds i8, i8* %479, i64 -1
  store i8 %483, i8* %484, align 1
  %485 = udiv i32 %473, 10
  %486 = icmp ugt i32 %473, 9
  %487 = icmp ne i32 %480, 0
  %488 = or i1 %486, %487
  br i1 %488, label %470, label %489

; <label>:489:                                    ; preds = %478
  br label %490

; <label>:490:                                    ; preds = %489, %882
  %491 = phi i32 [ %120, %882 ], [ %467, %489 ]
  %492 = phi i8* [ %879, %882 ], [ %484, %489 ]
  %493 = phi i32 [ %54, %882 ], [ 0, %489 ]
  %494 = phi i8 [ 0, %882 ], [ %465, %489 ]
  %495 = phi i8 [ %883, %882 ], [ %464, %489 ]
  %496 = phi i32 [ %53, %882 ], [ %485, %489 ]
  %497 = phi i32 [ 1, %882 ], [ %462, %489 ]
  %498 = phi i32 [ %74, %882 ], [ %461, %489 ]
  %499 = phi i8* [ %129, %882 ], [ %460, %489 ]
  %500 = icmp slt i32 %497, %491
  %501 = select i1 %500, i32 %491, i32 %497
  %502 = and i8 %495, 1
  %503 = icmp ne i8 %502, 0
  %504 = and i8 %494, 1
  %505 = icmp ne i8 %504, 0
  %506 = select i1 %505, i8 43, i8 0
  %507 = select i1 %503, i8 45, i8 %506
  %508 = icmp eq i32 %498, 45
  br i1 %508, label %509, label %535

; <label>:509:                                    ; preds = %490
  %510 = icmp eq i8 %507, 0
  br i1 %510, label %655, label %511

; <label>:511:                                    ; preds = %509
  %512 = icmp sgt i32 %491, 0
  %513 = select i1 %512, i32 %491, i32 0
  %514 = icmp ugt i32 %513, 1
  %515 = select i1 %514, i32 %513, i32 1
  %516 = zext i32 %515 to i64
  %517 = sub i64 %1, %50
  %518 = icmp ult i64 %516, %517
  br i1 %518, label %519, label %1370

; <label>:519:                                    ; preds = %511
  %520 = icmp eq i8* %51, null
  br i1 %520, label %532, label %521

; <label>:521:                                    ; preds = %519
  %522 = icmp ne i32 %501, 0
  %523 = icmp ult i32 %513, 2
  %524 = or i1 %523, %522
  br i1 %524, label %529, label %525

; <label>:525:                                    ; preds = %521
  %526 = sext i32 %491 to i64
  %527 = add nsw i64 %526, -1
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %527, i32 1, i1 false)
  %528 = getelementptr inbounds i8, i8* %51, i64 %527
  br label %529

; <label>:529:                                    ; preds = %521, %525
  %530 = phi i8* [ %528, %525 ], [ %51, %521 ]
  store i8 %507, i8* %530, align 1
  %531 = getelementptr inbounds i8, i8* %530, i64 1
  br label %532

; <label>:532:                                    ; preds = %529, %519
  %533 = phi i8* [ %531, %529 ], [ null, %519 ]
  %534 = add i64 %516, %50
  br label %655

; <label>:535:                                    ; preds = %490
  %536 = sext i32 %501 to i64
  %537 = ptrtoint i8* %492 to i64
  %538 = sub i64 %537, %36
  %539 = icmp ne i8 %507, 0
  %540 = sext i1 %539 to i64
  %541 = add i64 %538, %540
  %542 = add i64 %541, %536
  %543 = trunc i64 %542 to i32
  %544 = icmp sgt i32 %543, 0
  br i1 %544, label %545, label %626

; <label>:545:                                    ; preds = %535
  %546 = icmp eq i32 %498, 95
  br i1 %546, label %547, label %584

; <label>:547:                                    ; preds = %545
  %548 = shl i64 %542, 32
  %549 = ashr exact i64 %548, 32
  %550 = sub i64 %1, %50
  %551 = icmp ult i64 %549, %550
  br i1 %551, label %552, label %1370

; <label>:552:                                    ; preds = %547
  %553 = icmp eq i8* %51, null
  br i1 %553, label %556, label %554

; <label>:554:                                    ; preds = %552
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %549, i32 1, i1 false)
  %555 = getelementptr inbounds i8, i8* %51, i64 %549
  br label %556

; <label>:556:                                    ; preds = %552, %554
  %557 = phi i8* [ %555, %554 ], [ null, %552 ]
  %558 = add i64 %549, %50
  %559 = icmp sgt i32 %491, %543
  %560 = sub nsw i32 %491, %543
  %561 = select i1 %559, i32 %560, i32 0
  br i1 %539, label %562, label %655

; <label>:562:                                    ; preds = %556
  %563 = icmp ugt i32 %561, 1
  %564 = select i1 %563, i32 %561, i32 1
  %565 = zext i32 %564 to i64
  %566 = sub i64 %1, %558
  %567 = icmp ult i64 %565, %566
  br i1 %567, label %568, label %1370

; <label>:568:                                    ; preds = %562
  %569 = icmp eq i8* %557, null
  br i1 %569, label %581, label %570

; <label>:570:                                    ; preds = %568
  %571 = icmp ne i32 %501, 0
  %572 = icmp ult i32 %561, 2
  %573 = or i1 %571, %572
  br i1 %573, label %578, label %574

; <label>:574:                                    ; preds = %570
  %575 = zext i32 %561 to i64
  %576 = add nsw i64 %575, -1
  call void @llvm.memset.p0i8.i64(i8* nonnull %557, i8 32, i64 %576, i32 1, i1 false)
  %577 = getelementptr inbounds i8, i8* %557, i64 %576
  br label %578

; <label>:578:                                    ; preds = %570, %574
  %579 = phi i8* [ %577, %574 ], [ %557, %570 ]
  store i8 %507, i8* %579, align 1
  %580 = getelementptr inbounds i8, i8* %579, i64 1
  br label %581

; <label>:581:                                    ; preds = %578, %568
  %582 = phi i8* [ %580, %578 ], [ null, %568 ]
  %583 = add i64 %565, %558
  br label %655

; <label>:584:                                    ; preds = %545
  %585 = sub i64 %1, %50
  %586 = icmp ult i64 %536, %585
  br i1 %586, label %587, label %1370

; <label>:587:                                    ; preds = %584
  br i1 %539, label %588, label %615

; <label>:588:                                    ; preds = %587
  %589 = icmp sgt i32 %491, 0
  %590 = select i1 %589, i32 %491, i32 0
  %591 = icmp ugt i32 %590, 1
  %592 = select i1 %591, i32 %590, i32 1
  %593 = zext i32 %592 to i64
  %594 = icmp ult i64 %593, %585
  br i1 %594, label %595, label %1370

; <label>:595:                                    ; preds = %588
  %596 = icmp eq i8* %51, null
  br i1 %596, label %612, label %597

; <label>:597:                                    ; preds = %595
  %598 = icmp ne i32 %501, 0
  %599 = icmp ult i32 %590, 2
  %600 = or i1 %599, %598
  br i1 %600, label %609, label %601

; <label>:601:                                    ; preds = %597
  %602 = sext i32 %491 to i64
  %603 = add nsw i64 %602, -1
  %604 = icmp eq i32 %498, 48
  br i1 %604, label %605, label %606

; <label>:605:                                    ; preds = %601
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %603, i32 1, i1 false)
  br label %607

; <label>:606:                                    ; preds = %601
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %603, i32 1, i1 false)
  br label %607

; <label>:607:                                    ; preds = %606, %605
  %608 = getelementptr inbounds i8, i8* %51, i64 %603
  br label %609

; <label>:609:                                    ; preds = %597, %607
  %610 = phi i8* [ %608, %607 ], [ %51, %597 ]
  store i8 %507, i8* %610, align 1
  %611 = getelementptr inbounds i8, i8* %610, i64 1
  br label %612

; <label>:612:                                    ; preds = %609, %595
  %613 = phi i8* [ %611, %609 ], [ null, %595 ]
  %614 = add i64 %593, %50
  br label %615

; <label>:615:                                    ; preds = %612, %587
  %616 = phi i8* [ %51, %587 ], [ %613, %612 ]
  %617 = phi i64 [ %50, %587 ], [ %614, %612 ]
  %618 = icmp eq i8* %616, null
  %619 = shl i64 %542, 32
  %620 = ashr exact i64 %619, 32
  br i1 %618, label %623, label %621

; <label>:621:                                    ; preds = %615
  call void @llvm.memset.p0i8.i64(i8* nonnull %616, i8 48, i64 %620, i32 1, i1 false)
  %622 = getelementptr inbounds i8, i8* %616, i64 %620
  br label %623

; <label>:623:                                    ; preds = %615, %621
  %624 = phi i8* [ %622, %621 ], [ null, %615 ]
  %625 = add i64 %617, %620
  br label %655

; <label>:626:                                    ; preds = %535
  br i1 %539, label %627, label %655

; <label>:627:                                    ; preds = %626
  %628 = icmp sgt i32 %491, 0
  %629 = select i1 %628, i32 %491, i32 0
  %630 = icmp ugt i32 %629, 1
  %631 = select i1 %630, i32 %629, i32 1
  %632 = zext i32 %631 to i64
  %633 = sub i64 %1, %50
  %634 = icmp ult i64 %632, %633
  br i1 %634, label %635, label %1370

; <label>:635:                                    ; preds = %627
  %636 = icmp eq i8* %51, null
  br i1 %636, label %652, label %637

; <label>:637:                                    ; preds = %635
  %638 = icmp ne i32 %501, 0
  %639 = icmp ult i32 %629, 2
  %640 = or i1 %639, %638
  br i1 %640, label %649, label %641

; <label>:641:                                    ; preds = %637
  %642 = sext i32 %491 to i64
  %643 = add nsw i64 %642, -1
  %644 = icmp eq i32 %498, 48
  br i1 %644, label %645, label %646

; <label>:645:                                    ; preds = %641
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %643, i32 1, i1 false)
  br label %647

; <label>:646:                                    ; preds = %641
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %643, i32 1, i1 false)
  br label %647

; <label>:647:                                    ; preds = %646, %645
  %648 = getelementptr inbounds i8, i8* %51, i64 %643
  br label %649

; <label>:649:                                    ; preds = %637, %647
  %650 = phi i8* [ %648, %647 ], [ %51, %637 ]
  store i8 %507, i8* %650, align 1
  %651 = getelementptr inbounds i8, i8* %650, i64 1
  br label %652

; <label>:652:                                    ; preds = %649, %635
  %653 = phi i8* [ %651, %649 ], [ null, %635 ]
  %654 = add i64 %632, %50
  br label %655

; <label>:655:                                    ; preds = %556, %623, %626, %581, %652, %532, %509
  %656 = phi i32 [ %491, %509 ], [ %491, %532 ], [ %491, %652 ], [ %561, %581 ], [ %491, %626 ], [ 0, %623 ], [ %561, %556 ]
  %657 = phi i8* [ %51, %509 ], [ %533, %532 ], [ %653, %652 ], [ %582, %581 ], [ %51, %626 ], [ %624, %623 ], [ %557, %556 ]
  %658 = phi i64 [ %50, %509 ], [ %534, %532 ], [ %654, %652 ], [ %583, %581 ], [ %50, %626 ], [ %625, %623 ], [ %558, %556 ]
  %659 = ptrtoint i8* %492 to i64
  %660 = sub i64 %36, %659
  %661 = icmp sgt i32 %656, 0
  %662 = select i1 %661, i32 %656, i32 0
  %663 = zext i32 %662 to i64
  %664 = icmp ult i64 %660, %663
  %665 = select i1 %664, i64 %663, i64 %660
  %666 = sub i64 %1, %658
  %667 = icmp ult i64 %665, %666
  br i1 %667, label %668, label %1370

; <label>:668:                                    ; preds = %655
  %669 = icmp eq i8* %657, null
  br i1 %669, label %756, label %670

; <label>:670:                                    ; preds = %668
  %671 = icmp ne i32 %501, 0
  %672 = xor i1 %664, true
  %673 = or i1 %671, %672
  br i1 %673, label %682, label %674

; <label>:674:                                    ; preds = %670
  %675 = sext i32 %656 to i64
  %676 = sub i64 %675, %660
  %677 = icmp eq i32 %498, 48
  br i1 %677, label %678, label %679

; <label>:678:                                    ; preds = %674
  call void @llvm.memset.p0i8.i64(i8* nonnull %657, i8 48, i64 %676, i32 1, i1 false)
  br label %680

; <label>:679:                                    ; preds = %674
  call void @llvm.memset.p0i8.i64(i8* nonnull %657, i8 32, i64 %676, i32 1, i1 false)
  br label %680

; <label>:680:                                    ; preds = %679, %678
  %681 = getelementptr inbounds i8, i8* %657, i64 %676
  br label %682

; <label>:682:                                    ; preds = %680, %670
  %683 = phi i8* [ %681, %680 ], [ %657, %670 ]
  %684 = icmp eq i8 %82, 0
  br i1 %684, label %751, label %685

; <label>:685:                                    ; preds = %682
  %686 = icmp eq i64 %660, 0
  br i1 %686, label %754, label %687

; <label>:687:                                    ; preds = %685
  %688 = tail call i32** @__ctype_toupper_loc() #1
  %689 = sub i64 %47, %659
  %690 = and i64 %660, 3
  %691 = icmp eq i64 %690, 0
  br i1 %691, label %708, label %692

; <label>:692:                                    ; preds = %687
  br label %693

; <label>:693:                                    ; preds = %693, %692
  %694 = phi i64 [ %660, %692 ], [ %696, %693 ]
  %695 = phi i64 [ %690, %692 ], [ %705, %693 ]
  %696 = add i64 %694, -1
  %697 = load i32*, i32** %688, align 8
  %698 = getelementptr inbounds i8, i8* %492, i64 %696
  %699 = load i8, i8* %698, align 1
  %700 = zext i8 %699 to i64
  %701 = getelementptr inbounds i32, i32* %697, i64 %700
  %702 = load i32, i32* %701, align 4
  %703 = trunc i32 %702 to i8
  %704 = getelementptr inbounds i8, i8* %683, i64 %696
  store i8 %703, i8* %704, align 1
  %705 = add i64 %695, -1
  %706 = icmp eq i64 %705, 0
  br i1 %706, label %707, label %693

; <label>:707:                                    ; preds = %693
  br label %708

; <label>:708:                                    ; preds = %687, %707
  %709 = phi i64 [ %660, %687 ], [ %696, %707 ]
  %710 = icmp ult i64 %689, 3
  br i1 %710, label %753, label %711

; <label>:711:                                    ; preds = %708
  br label %712

; <label>:712:                                    ; preds = %712, %711
  %713 = phi i64 [ %709, %711 ], [ %741, %712 ]
  %714 = add i64 %713, -1
  %715 = load i32*, i32** %688, align 8
  %716 = getelementptr inbounds i8, i8* %492, i64 %714
  %717 = load i8, i8* %716, align 1
  %718 = zext i8 %717 to i64
  %719 = getelementptr inbounds i32, i32* %715, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = trunc i32 %720 to i8
  %722 = getelementptr inbounds i8, i8* %683, i64 %714
  store i8 %721, i8* %722, align 1
  %723 = add i64 %713, -2
  %724 = load i32*, i32** %688, align 8
  %725 = getelementptr inbounds i8, i8* %492, i64 %723
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i64
  %728 = getelementptr inbounds i32, i32* %724, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = trunc i32 %729 to i8
  %731 = getelementptr inbounds i8, i8* %683, i64 %723
  store i8 %730, i8* %731, align 1
  %732 = add i64 %713, -3
  %733 = load i32*, i32** %688, align 8
  %734 = getelementptr inbounds i8, i8* %492, i64 %732
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i64
  %737 = getelementptr inbounds i32, i32* %733, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = trunc i32 %738 to i8
  %740 = getelementptr inbounds i8, i8* %683, i64 %732
  store i8 %739, i8* %740, align 1
  %741 = add i64 %713, -4
  %742 = load i32*, i32** %688, align 8
  %743 = getelementptr inbounds i8, i8* %492, i64 %741
  %744 = load i8, i8* %743, align 1
  %745 = zext i8 %744 to i64
  %746 = getelementptr inbounds i32, i32* %742, i64 %745
  %747 = load i32, i32* %746, align 4
  %748 = trunc i32 %747 to i8
  %749 = getelementptr inbounds i8, i8* %683, i64 %741
  store i8 %748, i8* %749, align 1
  %750 = icmp eq i64 %741, 0
  br i1 %750, label %752, label %712

; <label>:751:                                    ; preds = %682
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %683, i8* %492, i64 %660, i32 1, i1 false)
  br label %754

; <label>:752:                                    ; preds = %712
  br label %753

; <label>:753:                                    ; preds = %708, %752
  br label %754

; <label>:754:                                    ; preds = %753, %685, %751
  %755 = getelementptr inbounds i8, i8* %683, i64 %660
  br label %756

; <label>:756:                                    ; preds = %754, %668
  %757 = phi i8* [ %755, %754 ], [ null, %668 ]
  %758 = add i64 %665, %658
  br label %1372

; <label>:759:                                    ; preds = %126
  %760 = icmp eq i32 %128, 0
  br i1 %760, label %183, label %1257

; <label>:761:                                    ; preds = %126
  %762 = icmp eq i32 %128, 69
  br i1 %762, label %1257, label %763

; <label>:763:                                    ; preds = %761
  %764 = load i32, i32* %13, align 8
  br label %438

; <label>:765:                                    ; preds = %126
  %766 = icmp eq i32 %128, 69
  br i1 %766, label %1257, label %438

; <label>:767:                                    ; preds = %126
  %768 = icmp eq i32 %128, 69
  br i1 %768, label %1257, label %769

; <label>:769:                                    ; preds = %767
  %770 = load i32, i32* %13, align 8
  br label %432

; <label>:771:                                    ; preds = %126
  %772 = icmp eq i32 %128, 69
  br i1 %772, label %1257, label %432

; <label>:773:                                    ; preds = %126
  %774 = icmp eq i32 %128, 69
  br i1 %774, label %1257, label %775

; <label>:775:                                    ; preds = %773
  %776 = load i32, i32* %38, align 4
  %777 = icmp slt i32 %776, -1
  %778 = zext i1 %777 to i8
  %779 = add i32 %776, 1
  br label %445

; <label>:780:                                    ; preds = %126
  %781 = icmp eq i32 %128, 69
  br i1 %781, label %1257, label %782

; <label>:782:                                    ; preds = %780
  %783 = load i32, i32* %39, align 4
  br label %438

; <label>:784:                                    ; preds = %126
  %785 = icmp eq i32 %128, 69
  br i1 %785, label %1257, label %786

; <label>:786:                                    ; preds = %784
  %787 = load i32, i32* %40, align 8
  %788 = icmp slt i32 %787, -1
  %789 = zext i1 %788 to i8
  %790 = add i32 %787, 1
  br label %445

; <label>:791:                                    ; preds = %126
  %792 = icmp eq i32 %128, 69
  br i1 %792, label %1257, label %793

; <label>:793:                                    ; preds = %791
  %794 = icmp eq i32 %120, -1
  br i1 %794, label %438, label %795

; <label>:795:                                    ; preds = %793
  %796 = icmp slt i32 %120, 9
  br i1 %796, label %797, label %438

; <label>:797:                                    ; preds = %795
  %798 = sub i32 9, %120
  %799 = sub i32 8, %120
  %800 = and i32 %798, 3
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %812, label %802

; <label>:802:                                    ; preds = %797
  br label %803

; <label>:803:                                    ; preds = %803, %802
  %804 = phi i32 [ %807, %803 ], [ %6, %802 ]
  %805 = phi i32 [ %808, %803 ], [ %120, %802 ]
  %806 = phi i32 [ %809, %803 ], [ %800, %802 ]
  %807 = sdiv i32 %804, 10
  %808 = add nsw i32 %805, 1
  %809 = add i32 %806, -1
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %803

; <label>:811:                                    ; preds = %803
  br label %812

; <label>:812:                                    ; preds = %797, %811
  %813 = phi i32 [ undef, %797 ], [ %807, %811 ]
  %814 = phi i32 [ %6, %797 ], [ %807, %811 ]
  %815 = phi i32 [ %120, %797 ], [ %808, %811 ]
  %816 = icmp ult i32 %799, 3
  br i1 %816, label %436, label %817

; <label>:817:                                    ; preds = %812
  br label %818

; <label>:818:                                    ; preds = %818, %817
  %819 = phi i32 [ %814, %817 ], [ %821, %818 ]
  %820 = phi i32 [ %815, %817 ], [ %822, %818 ]
  %821 = sdiv i32 %819, 10000
  %822 = add nsw i32 %820, 4
  %823 = icmp eq i32 %822, 9
  br i1 %823, label %435, label %818

; <label>:824:                                    ; preds = %126
  %825 = icmp sgt i32 %120, 0
  %826 = select i1 %825, i32 %120, i32 0
  %827 = icmp ugt i32 %826, 1
  %828 = icmp ugt i32 %826, 1
  %829 = select i1 %828, i32 %826, i32 1
  %830 = zext i32 %829 to i64
  %831 = sub i64 %1, %50
  %832 = icmp ult i64 %830, %831
  br i1 %832, label %833, label %1370

; <label>:833:                                    ; preds = %824
  %834 = icmp eq i8* %51, null
  br i1 %834, label %847, label %835

; <label>:835:                                    ; preds = %833
  br i1 %827, label %836, label %844

; <label>:836:                                    ; preds = %835
  %837 = sext i32 %120 to i64
  %838 = add nsw i64 %837, -1
  %839 = icmp eq i32 %74, 48
  br i1 %839, label %840, label %841

; <label>:840:                                    ; preds = %836
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %838, i32 1, i1 false)
  br label %842

; <label>:841:                                    ; preds = %836
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %838, i32 1, i1 false)
  br label %842

; <label>:842:                                    ; preds = %841, %840
  %843 = getelementptr inbounds i8, i8* %51, i64 %838
  br label %844

; <label>:844:                                    ; preds = %842, %835
  %845 = phi i8* [ %843, %842 ], [ %51, %835 ]
  store i8 10, i8* %845, align 1
  %846 = getelementptr inbounds i8, i8* %845, i64 1
  br label %847

; <label>:847:                                    ; preds = %844, %833
  %848 = phi i8* [ %846, %844 ], [ null, %833 ]
  %849 = add i64 %830, %50
  br label %1372

; <label>:850:                                    ; preds = %126
  br label %851

; <label>:851:                                    ; preds = %126, %850
  %852 = phi i8 [ 0, %126 ], [ 1, %850 ]
  %853 = icmp eq i8 %87, 0
  %854 = select i1 %853, i8 %82, i8 0
  %855 = select i1 %853, i8 %852, i8 1
  br label %212

; <label>:856:                                    ; preds = %126
  %857 = load i32, i32* %40, align 8
  %858 = mul nsw i32 %857, 11
  %859 = ashr i32 %858, 5
  %860 = add nsw i32 %859, 1
  br label %445

; <label>:861:                                    ; preds = %126
  %862 = icmp eq i32 %128, 69
  br i1 %862, label %1257, label %863

; <label>:863:                                    ; preds = %861
  %864 = load i32, i32* %41, align 8
  br label %438

; <label>:865:                                    ; preds = %126
  call void @llvm.lifetime.start(i64 56, i8* nonnull %42) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %42, i8* %43, i64 56, i32 8, i1 false)
  %866 = call i64 @mktime_z(%struct.tm_zone* %5, %struct.tm* nonnull %11) #9
  %867 = icmp slt i64 %866, 0
  %868 = lshr i64 %866, 63
  br label %869

; <label>:869:                                    ; preds = %869, %865
  %870 = phi i64 [ %866, %865 ], [ %874, %869 ]
  %871 = phi i8* [ %35, %865 ], [ %879, %869 ]
  %872 = srem i64 %870, 10
  %873 = trunc i64 %872 to i32
  %874 = sdiv i64 %870, 10
  %875 = sub nsw i32 0, %873
  %876 = select i1 %867, i32 %875, i32 %873
  %877 = add nsw i32 %876, 48
  %878 = trunc i32 %877 to i8
  %879 = getelementptr inbounds i8, i8* %871, i64 -1
  store i8 %878, i8* %879, align 1
  %880 = add i64 %870, 9
  %881 = icmp ugt i64 %880, 18
  br i1 %881, label %869, label %882

; <label>:882:                                    ; preds = %869
  %883 = trunc i64 %868 to i8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %42) #9
  br label %490

; <label>:884:                                    ; preds = %126
  %885 = icmp eq i32 %128, 79
  br i1 %885, label %1257, label %212

; <label>:886:                                    ; preds = %126
  br label %183

; <label>:887:                                    ; preds = %126
  %888 = icmp sgt i32 %120, 0
  %889 = select i1 %888, i32 %120, i32 0
  %890 = icmp ugt i32 %889, 1
  %891 = icmp ugt i32 %889, 1
  %892 = select i1 %891, i32 %889, i32 1
  %893 = zext i32 %892 to i64
  %894 = sub i64 %1, %50
  %895 = icmp ult i64 %893, %894
  br i1 %895, label %896, label %1370

; <label>:896:                                    ; preds = %887
  %897 = icmp eq i8* %51, null
  br i1 %897, label %910, label %898

; <label>:898:                                    ; preds = %896
  br i1 %890, label %899, label %907

; <label>:899:                                    ; preds = %898
  %900 = sext i32 %120 to i64
  %901 = add nsw i64 %900, -1
  %902 = icmp eq i32 %74, 48
  br i1 %902, label %903, label %904

; <label>:903:                                    ; preds = %899
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %901, i32 1, i1 false)
  br label %905

; <label>:904:                                    ; preds = %899
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %901, i32 1, i1 false)
  br label %905

; <label>:905:                                    ; preds = %904, %903
  %906 = getelementptr inbounds i8, i8* %51, i64 %901
  br label %907

; <label>:907:                                    ; preds = %905, %898
  %908 = phi i8* [ %906, %905 ], [ %51, %898 ]
  store i8 9, i8* %908, align 1
  %909 = getelementptr inbounds i8, i8* %908, i64 1
  br label %910

; <label>:910:                                    ; preds = %907, %896
  %911 = phi i8* [ %909, %907 ], [ null, %896 ]
  %912 = add i64 %893, %50
  br label %1372

; <label>:913:                                    ; preds = %126
  %914 = load i32, i32* %44, align 8
  %915 = add nsw i32 %914, 6
  %916 = srem i32 %915, 7
  %917 = add nsw i32 %916, 1
  br label %438

; <label>:918:                                    ; preds = %126
  %919 = icmp eq i32 %128, 69
  br i1 %919, label %1257, label %920

; <label>:920:                                    ; preds = %918
  %921 = load i32, i32* %38, align 4
  %922 = load i32, i32* %44, align 8
  %923 = add i32 %921, 7
  %924 = sub i32 %923, %922
  %925 = sdiv i32 %924, 7
  br label %438

; <label>:926:                                    ; preds = %126, %126, %126
  %927 = icmp eq i32 %128, 69
  br i1 %927, label %1257, label %928

; <label>:928:                                    ; preds = %926
  %929 = load i32, i32* %34, align 4
  %930 = ashr i32 %929, 31
  %931 = and i32 %930, 400
  %932 = add i32 %929, -100
  %933 = add i32 %932, %931
  %934 = load i32, i32* %38, align 4
  %935 = load i32, i32* %44, align 8
  %936 = add i32 %934, 382
  %937 = sub i32 %936, %935
  %938 = srem i32 %937, 7
  %939 = add i32 %934, 3
  %940 = sub i32 %939, %938
  %941 = icmp slt i32 %940, 0
  br i1 %941, label %942, label %961

; <label>:942:                                    ; preds = %928
  %943 = add nsw i32 %933, -1
  %944 = and i32 %943, 3
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %953

; <label>:946:                                    ; preds = %942
  %947 = srem i32 %943, 100
  %948 = icmp ne i32 %947, 0
  %949 = srem i32 %943, 400
  %950 = icmp eq i32 %949, 0
  %951 = or i1 %948, %950
  %952 = select i1 %951, i32 366, i32 365
  br label %953

; <label>:953:                                    ; preds = %946, %942
  %954 = phi i32 [ 365, %942 ], [ %952, %946 ]
  %955 = add nsw i32 %954, %934
  %956 = add i32 %955, 382
  %957 = sub i32 %956, %935
  %958 = srem i32 %957, 7
  %959 = add i32 %955, 3
  %960 = sub i32 %959, %958
  br label %983

; <label>:961:                                    ; preds = %928
  %962 = and i32 %933, 3
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %971

; <label>:964:                                    ; preds = %961
  %965 = srem i32 %933, 100
  %966 = icmp ne i32 %965, 0
  %967 = srem i32 %933, 400
  %968 = icmp eq i32 %967, 0
  %969 = or i1 %966, %968
  %970 = select i1 %969, i32 366, i32 365
  br label %971

; <label>:971:                                    ; preds = %964, %961
  %972 = phi i32 [ 365, %961 ], [ %970, %964 ]
  %973 = sub nsw i32 %934, %972
  %974 = add i32 %973, 382
  %975 = sub i32 %974, %935
  %976 = srem i32 %975, 7
  %977 = add i32 %973, 3
  %978 = sub i32 %977, %976
  %979 = icmp sgt i32 %978, -1
  %980 = lshr i32 %978, 31
  %981 = xor i32 %980, 1
  %982 = select i1 %979, i32 %978, i32 %940
  br label %983

; <label>:983:                                    ; preds = %971, %953
  %984 = phi i32 [ -1, %953 ], [ %981, %971 ]
  %985 = phi i32 [ %960, %953 ], [ %982, %971 ]
  switch i32 %130, label %997 [
    i32 103, label %986
    i32 71, label %1000
  ]

; <label>:986:                                    ; preds = %983
  %987 = srem i32 %929, 100
  %988 = add nsw i32 %987, %984
  %989 = srem i32 %988, 100
  %990 = icmp sgt i32 %989, -1
  br i1 %990, label %438, label %991

; <label>:991:                                    ; preds = %986
  %992 = sub nsw i32 -1900, %984
  %993 = icmp slt i32 %929, %992
  %994 = sub nsw i32 0, %989
  %995 = add nsw i32 %989, 100
  %996 = select i1 %993, i32 %994, i32 %995
  br label %438

; <label>:997:                                    ; preds = %983
  %998 = sdiv i32 %985, 7
  %999 = add nsw i32 %998, 1
  br label %438

; <label>:1000:                                   ; preds = %983
  %1001 = sub nsw i32 -1900, %984
  %1002 = icmp slt i32 %929, %1001
  %1003 = zext i1 %1002 to i8
  %1004 = add nsw i32 %984, 1900
  %1005 = add i32 %1004, %929
  br label %445

; <label>:1006:                                   ; preds = %126
  %1007 = icmp eq i32 %128, 69
  br i1 %1007, label %1257, label %1008

; <label>:1008:                                   ; preds = %1006
  %1009 = load i32, i32* %38, align 4
  %1010 = load i32, i32* %44, align 8
  %1011 = add nsw i32 %1010, 6
  %1012 = srem i32 %1011, 7
  %1013 = add i32 %1009, 7
  %1014 = sub i32 %1013, %1012
  %1015 = sdiv i32 %1014, 7
  br label %438

; <label>:1016:                                   ; preds = %126
  %1017 = icmp eq i32 %128, 69
  br i1 %1017, label %1257, label %1018

; <label>:1018:                                   ; preds = %1016
  %1019 = load i32, i32* %44, align 8
  br label %438

; <label>:1020:                                   ; preds = %126
  switch i32 %128, label %1021 [
    i32 69, label %212
    i32 79, label %1257
  ]

; <label>:1021:                                   ; preds = %1020
  %1022 = load i32, i32* %34, align 4
  %1023 = icmp slt i32 %1022, -1900
  %1024 = zext i1 %1023 to i8
  %1025 = add i32 %1022, 1900
  %1026 = xor i1 %1023, true
  br label %458

; <label>:1027:                                   ; preds = %126
  %1028 = icmp eq i32 %128, 69
  br i1 %1028, label %212, label %1029

; <label>:1029:                                   ; preds = %1027
  %1030 = load i32, i32* %34, align 4
  %1031 = srem i32 %1030, 100
  %1032 = icmp slt i32 %1031, 0
  br i1 %1032, label %1033, label %438

; <label>:1033:                                   ; preds = %1029
  %1034 = icmp slt i32 %1030, -1900
  %1035 = sub nsw i32 0, %1031
  %1036 = add nsw i32 %1031, 100
  %1037 = select i1 %1034, i32 %1035, i32 %1036
  br label %438

; <label>:1038:                                   ; preds = %126
  %1039 = icmp eq i8 %87, 0
  %1040 = call i64 @strlen(i8* %18) #13
  %1041 = icmp sgt i32 %120, 0
  %1042 = select i1 %1041, i32 %120, i32 0
  %1043 = zext i32 %1042 to i64
  %1044 = icmp ult i64 %1040, %1043
  %1045 = select i1 %1044, i64 %1043, i64 %1040
  %1046 = sub i64 %1, %50
  %1047 = icmp ult i64 %1045, %1046
  br i1 %1047, label %1048, label %1370

; <label>:1048:                                   ; preds = %1038
  %1049 = icmp eq i8* %51, null
  br i1 %1049, label %1202, label %1050

; <label>:1050:                                   ; preds = %1048
  br i1 %1044, label %1051, label %1059

; <label>:1051:                                   ; preds = %1050
  %1052 = sext i32 %120 to i64
  %1053 = sub i64 %1052, %1040
  %1054 = icmp eq i32 %74, 48
  br i1 %1054, label %1055, label %1056

; <label>:1055:                                   ; preds = %1051
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %1053, i32 1, i1 false)
  br label %1057

; <label>:1056:                                   ; preds = %1051
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %1053, i32 1, i1 false)
  br label %1057

; <label>:1057:                                   ; preds = %1056, %1055
  %1058 = getelementptr inbounds i8, i8* %51, i64 %1053
  br label %1059

; <label>:1059:                                   ; preds = %1057, %1050
  %1060 = phi i8* [ %1058, %1057 ], [ %51, %1050 ]
  br i1 %1039, label %1127, label %1061

; <label>:1061:                                   ; preds = %1059
  %1062 = icmp eq i64 %1040, 0
  br i1 %1062, label %1200, label %1063

; <label>:1063:                                   ; preds = %1061
  %1064 = tail call i32** @__ctype_tolower_loc() #1
  %1065 = add i64 %1040, -1
  %1066 = and i64 %1040, 3
  %1067 = icmp eq i64 %1066, 0
  br i1 %1067, label %1084, label %1068

; <label>:1068:                                   ; preds = %1063
  br label %1069

; <label>:1069:                                   ; preds = %1069, %1068
  %1070 = phi i64 [ %1040, %1068 ], [ %1072, %1069 ]
  %1071 = phi i64 [ %1066, %1068 ], [ %1081, %1069 ]
  %1072 = add i64 %1070, -1
  %1073 = load i32*, i32** %1064, align 8
  %1074 = getelementptr inbounds i8, i8* %18, i64 %1072
  %1075 = load i8, i8* %1074, align 1
  %1076 = zext i8 %1075 to i64
  %1077 = getelementptr inbounds i32, i32* %1073, i64 %1076
  %1078 = load i32, i32* %1077, align 4
  %1079 = trunc i32 %1078 to i8
  %1080 = getelementptr inbounds i8, i8* %1060, i64 %1072
  store i8 %1079, i8* %1080, align 1
  %1081 = add i64 %1071, -1
  %1082 = icmp eq i64 %1081, 0
  br i1 %1082, label %1083, label %1069

; <label>:1083:                                   ; preds = %1069
  br label %1084

; <label>:1084:                                   ; preds = %1063, %1083
  %1085 = phi i64 [ %1040, %1063 ], [ %1072, %1083 ]
  %1086 = icmp ult i64 %1065, 3
  br i1 %1086, label %1199, label %1087

; <label>:1087:                                   ; preds = %1084
  br label %1088

; <label>:1088:                                   ; preds = %1088, %1087
  %1089 = phi i64 [ %1085, %1087 ], [ %1117, %1088 ]
  %1090 = add i64 %1089, -1
  %1091 = load i32*, i32** %1064, align 8
  %1092 = getelementptr inbounds i8, i8* %18, i64 %1090
  %1093 = load i8, i8* %1092, align 1
  %1094 = zext i8 %1093 to i64
  %1095 = getelementptr inbounds i32, i32* %1091, i64 %1094
  %1096 = load i32, i32* %1095, align 4
  %1097 = trunc i32 %1096 to i8
  %1098 = getelementptr inbounds i8, i8* %1060, i64 %1090
  store i8 %1097, i8* %1098, align 1
  %1099 = add i64 %1089, -2
  %1100 = load i32*, i32** %1064, align 8
  %1101 = getelementptr inbounds i8, i8* %18, i64 %1099
  %1102 = load i8, i8* %1101, align 1
  %1103 = zext i8 %1102 to i64
  %1104 = getelementptr inbounds i32, i32* %1100, i64 %1103
  %1105 = load i32, i32* %1104, align 4
  %1106 = trunc i32 %1105 to i8
  %1107 = getelementptr inbounds i8, i8* %1060, i64 %1099
  store i8 %1106, i8* %1107, align 1
  %1108 = add i64 %1089, -3
  %1109 = load i32*, i32** %1064, align 8
  %1110 = getelementptr inbounds i8, i8* %18, i64 %1108
  %1111 = load i8, i8* %1110, align 1
  %1112 = zext i8 %1111 to i64
  %1113 = getelementptr inbounds i32, i32* %1109, i64 %1112
  %1114 = load i32, i32* %1113, align 4
  %1115 = trunc i32 %1114 to i8
  %1116 = getelementptr inbounds i8, i8* %1060, i64 %1108
  store i8 %1115, i8* %1116, align 1
  %1117 = add i64 %1089, -4
  %1118 = load i32*, i32** %1064, align 8
  %1119 = getelementptr inbounds i8, i8* %18, i64 %1117
  %1120 = load i8, i8* %1119, align 1
  %1121 = zext i8 %1120 to i64
  %1122 = getelementptr inbounds i32, i32* %1118, i64 %1121
  %1123 = load i32, i32* %1122, align 4
  %1124 = trunc i32 %1123 to i8
  %1125 = getelementptr inbounds i8, i8* %1060, i64 %1117
  store i8 %1124, i8* %1125, align 1
  %1126 = icmp eq i64 %1117, 0
  br i1 %1126, label %1198, label %1088

; <label>:1127:                                   ; preds = %1059
  %1128 = icmp eq i8 %82, 0
  br i1 %1128, label %1195, label %1129

; <label>:1129:                                   ; preds = %1127
  %1130 = icmp eq i64 %1040, 0
  br i1 %1130, label %1200, label %1131

; <label>:1131:                                   ; preds = %1129
  %1132 = tail call i32** @__ctype_toupper_loc() #1
  %1133 = add i64 %1040, -1
  %1134 = and i64 %1040, 3
  %1135 = icmp eq i64 %1134, 0
  br i1 %1135, label %1152, label %1136

; <label>:1136:                                   ; preds = %1131
  br label %1137

; <label>:1137:                                   ; preds = %1137, %1136
  %1138 = phi i64 [ %1040, %1136 ], [ %1140, %1137 ]
  %1139 = phi i64 [ %1134, %1136 ], [ %1149, %1137 ]
  %1140 = add i64 %1138, -1
  %1141 = load i32*, i32** %1132, align 8
  %1142 = getelementptr inbounds i8, i8* %18, i64 %1140
  %1143 = load i8, i8* %1142, align 1
  %1144 = zext i8 %1143 to i64
  %1145 = getelementptr inbounds i32, i32* %1141, i64 %1144
  %1146 = load i32, i32* %1145, align 4
  %1147 = trunc i32 %1146 to i8
  %1148 = getelementptr inbounds i8, i8* %1060, i64 %1140
  store i8 %1147, i8* %1148, align 1
  %1149 = add i64 %1139, -1
  %1150 = icmp eq i64 %1149, 0
  br i1 %1150, label %1151, label %1137

; <label>:1151:                                   ; preds = %1137
  br label %1152

; <label>:1152:                                   ; preds = %1131, %1151
  %1153 = phi i64 [ %1040, %1131 ], [ %1140, %1151 ]
  %1154 = icmp ult i64 %1133, 3
  br i1 %1154, label %1197, label %1155

; <label>:1155:                                   ; preds = %1152
  br label %1156

; <label>:1156:                                   ; preds = %1156, %1155
  %1157 = phi i64 [ %1153, %1155 ], [ %1185, %1156 ]
  %1158 = add i64 %1157, -1
  %1159 = load i32*, i32** %1132, align 8
  %1160 = getelementptr inbounds i8, i8* %18, i64 %1158
  %1161 = load i8, i8* %1160, align 1
  %1162 = zext i8 %1161 to i64
  %1163 = getelementptr inbounds i32, i32* %1159, i64 %1162
  %1164 = load i32, i32* %1163, align 4
  %1165 = trunc i32 %1164 to i8
  %1166 = getelementptr inbounds i8, i8* %1060, i64 %1158
  store i8 %1165, i8* %1166, align 1
  %1167 = add i64 %1157, -2
  %1168 = load i32*, i32** %1132, align 8
  %1169 = getelementptr inbounds i8, i8* %18, i64 %1167
  %1170 = load i8, i8* %1169, align 1
  %1171 = zext i8 %1170 to i64
  %1172 = getelementptr inbounds i32, i32* %1168, i64 %1171
  %1173 = load i32, i32* %1172, align 4
  %1174 = trunc i32 %1173 to i8
  %1175 = getelementptr inbounds i8, i8* %1060, i64 %1167
  store i8 %1174, i8* %1175, align 1
  %1176 = add i64 %1157, -3
  %1177 = load i32*, i32** %1132, align 8
  %1178 = getelementptr inbounds i8, i8* %18, i64 %1176
  %1179 = load i8, i8* %1178, align 1
  %1180 = zext i8 %1179 to i64
  %1181 = getelementptr inbounds i32, i32* %1177, i64 %1180
  %1182 = load i32, i32* %1181, align 4
  %1183 = trunc i32 %1182 to i8
  %1184 = getelementptr inbounds i8, i8* %1060, i64 %1176
  store i8 %1183, i8* %1184, align 1
  %1185 = add i64 %1157, -4
  %1186 = load i32*, i32** %1132, align 8
  %1187 = getelementptr inbounds i8, i8* %18, i64 %1185
  %1188 = load i8, i8* %1187, align 1
  %1189 = zext i8 %1188 to i64
  %1190 = getelementptr inbounds i32, i32* %1186, i64 %1189
  %1191 = load i32, i32* %1190, align 4
  %1192 = trunc i32 %1191 to i8
  %1193 = getelementptr inbounds i8, i8* %1060, i64 %1185
  store i8 %1192, i8* %1193, align 1
  %1194 = icmp eq i64 %1185, 0
  br i1 %1194, label %1196, label %1156

; <label>:1195:                                   ; preds = %1127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1060, i8* %18, i64 %1040, i32 1, i1 false)
  br label %1200

; <label>:1196:                                   ; preds = %1156
  br label %1197

; <label>:1197:                                   ; preds = %1152, %1196
  br label %1200

; <label>:1198:                                   ; preds = %1088
  br label %1199

; <label>:1199:                                   ; preds = %1084, %1198
  br label %1200

; <label>:1200:                                   ; preds = %1199, %1197, %1129, %1061, %1195
  %1201 = getelementptr inbounds i8, i8* %1060, i64 %1040
  br label %1202

; <label>:1202:                                   ; preds = %1200, %1048
  %1203 = phi i8* [ %1201, %1200 ], [ null, %1048 ]
  %1204 = add i64 %1045, %50
  br label %1372

; <label>:1205:                                   ; preds = %131, %1209
  %1206 = phi i64 [ %1210, %1209 ], [ 1, %131 ]
  %1207 = getelementptr inbounds i8, i8* %129, i64 %1206
  %1208 = load i8, i8* %1207, align 1
  switch i8 %1208, label %1256 [
    i8 58, label %1209
    i8 122, label %1211
  ]

; <label>:1209:                                   ; preds = %1205
  %1210 = add i64 %1206, 1
  br label %1205

; <label>:1211:                                   ; preds = %1205
  br label %1212

; <label>:1212:                                   ; preds = %1211, %126
  %1213 = phi i64 [ 0, %126 ], [ %1206, %1211 ]
  %1214 = phi i8* [ %129, %126 ], [ %1207, %1211 ]
  %1215 = load i32, i32* %45, align 8
  %1216 = icmp slt i32 %1215, 0
  br i1 %1216, label %1372, label %1217

; <label>:1217:                                   ; preds = %1212
  %1218 = load i64, i64* %46, align 8
  %1219 = trunc i64 %1218 to i32
  %1220 = icmp slt i32 %1219, 0
  br i1 %1220, label %1226, label %1221

; <label>:1221:                                   ; preds = %1217
  %1222 = icmp eq i32 %1219, 0
  br i1 %1222, label %1223, label %1226

; <label>:1223:                                   ; preds = %1221
  %1224 = load i8, i8* %18, align 1
  %1225 = icmp eq i8 %1224, 45
  br label %1226

; <label>:1226:                                   ; preds = %1221, %1223, %1217
  %1227 = phi i1 [ true, %1217 ], [ false, %1221 ], [ %1225, %1223 ]
  %1228 = zext i1 %1227 to i8
  %1229 = sdiv i32 %1219, 60
  %1230 = sdiv i32 %1219, 3600
  %1231 = srem i32 %1229, 60
  %1232 = srem i32 %1219, 60
  switch i64 %1213, label %1248 [
    i64 0, label %1233
    i64 1, label %1236
    i64 2, label %1239
    i64 3, label %1244
  ]

; <label>:1233:                                   ; preds = %1226
  %1234 = mul nsw i32 %1230, 100
  %1235 = add nsw i32 %1234, %1231
  br label %1248

; <label>:1236:                                   ; preds = %1246, %1226
  %1237 = mul nsw i32 %1230, 100
  %1238 = add nsw i32 %1237, %1231
  br label %1248

; <label>:1239:                                   ; preds = %1244, %1226
  %1240 = mul nsw i32 %1230, 10000
  %1241 = mul nsw i32 %1231, 100
  %1242 = add i32 %1240, %1232
  %1243 = add i32 %1242, %1241
  br label %1248

; <label>:1244:                                   ; preds = %1226
  %1245 = icmp eq i32 %1232, 0
  br i1 %1245, label %1246, label %1239

; <label>:1246:                                   ; preds = %1244
  %1247 = icmp eq i32 %1231, 0
  br i1 %1247, label %1248, label %1236

; <label>:1248:                                   ; preds = %1226, %1246, %1239, %1236, %1233
  %1249 = phi i32 [ 32, %1239 ], [ 32, %1236 ], [ 32, %1233 ], [ 32, %1246 ], [ 14, %1226 ]
  %1250 = phi i32 [ 20, %1239 ], [ 4, %1236 ], [ 0, %1233 ], [ 0, %1246 ], [ %54, %1226 ]
  %1251 = phi i32 [ %1243, %1239 ], [ %1238, %1236 ], [ %1235, %1233 ], [ %1230, %1246 ], [ %53, %1226 ]
  %1252 = phi i32 [ 9, %1239 ], [ 6, %1236 ], [ 5, %1233 ], [ 3, %1246 ], [ 0, %1226 ]
  %1253 = trunc i32 %1249 to i6
  switch i6 %1253, label %1378 [
    i6 -32, label %445
    i6 14, label %1257
  ]

; <label>:1254:                                   ; preds = %126
  %1255 = getelementptr inbounds i8, i8* %129, i64 -1
  br label %1257

; <label>:1256:                                   ; preds = %1205
  br label %1257

; <label>:1257:                                   ; preds = %1256, %1020, %132, %162, %167, %172, %176, %422, %759, %1254, %126, %1016, %1006, %926, %918, %884, %861, %791, %784, %780, %773, %771, %767, %765, %761, %428, %424, %420, %181, %1248
  %1258 = phi i8 [ %82, %126 ], [ %82, %1254 ], [ %82, %1248 ], [ %82, %1016 ], [ %82, %1006 ], [ %82, %926 ], [ %82, %918 ], [ %82, %884 ], [ %82, %861 ], [ %82, %791 ], [ %82, %784 ], [ %82, %780 ], [ %82, %773 ], [ %82, %771 ], [ %82, %767 ], [ %82, %765 ], [ %82, %761 ], [ %82, %759 ], [ %82, %428 ], [ %82, %424 ], [ %82, %422 ], [ %82, %420 ], [ %82, %181 ], [ %82, %176 ], [ %174, %172 ], [ %82, %167 ], [ %82, %162 ], [ %82, %132 ], [ %82, %1020 ], [ %82, %1256 ]
  %1259 = phi i32 [ %54, %126 ], [ %54, %1254 ], [ %1250, %1248 ], [ %54, %1016 ], [ %54, %1006 ], [ %54, %926 ], [ %54, %918 ], [ %54, %884 ], [ %54, %861 ], [ %54, %791 ], [ %54, %784 ], [ %54, %780 ], [ %54, %773 ], [ %54, %771 ], [ %54, %767 ], [ %54, %765 ], [ %54, %761 ], [ %54, %759 ], [ %54, %428 ], [ %54, %424 ], [ %54, %422 ], [ %54, %420 ], [ %54, %181 ], [ %54, %176 ], [ %54, %172 ], [ %54, %167 ], [ %54, %162 ], [ %54, %132 ], [ %54, %1020 ], [ %54, %1256 ]
  %1260 = phi i32 [ %53, %126 ], [ %53, %1254 ], [ %1251, %1248 ], [ %53, %1016 ], [ %53, %1006 ], [ %53, %926 ], [ %53, %918 ], [ %53, %884 ], [ %53, %861 ], [ %53, %791 ], [ %53, %784 ], [ %53, %780 ], [ %53, %773 ], [ %53, %771 ], [ %53, %767 ], [ %53, %765 ], [ %53, %761 ], [ %53, %759 ], [ %53, %428 ], [ %53, %424 ], [ %53, %422 ], [ %53, %420 ], [ %53, %181 ], [ %53, %176 ], [ %53, %172 ], [ %53, %167 ], [ %53, %162 ], [ %53, %132 ], [ %53, %1020 ], [ %53, %1256 ]
  %1261 = phi i32 [ 0, %126 ], [ 0, %1254 ], [ %1252, %1248 ], [ 0, %1016 ], [ 0, %1006 ], [ 0, %926 ], [ 0, %918 ], [ 0, %884 ], [ 0, %861 ], [ 0, %791 ], [ 0, %784 ], [ 0, %780 ], [ 0, %773 ], [ 0, %771 ], [ 0, %767 ], [ 0, %765 ], [ 0, %761 ], [ 0, %759 ], [ 0, %428 ], [ 0, %424 ], [ 0, %422 ], [ 0, %420 ], [ 0, %181 ], [ 0, %176 ], [ 0, %172 ], [ 0, %167 ], [ 0, %162 ], [ 0, %132 ], [ 0, %1020 ], [ 0, %1256 ]
  %1262 = phi i8* [ %129, %126 ], [ %1255, %1254 ], [ %1214, %1248 ], [ %129, %1016 ], [ %129, %1006 ], [ %129, %926 ], [ %129, %918 ], [ %129, %884 ], [ %129, %861 ], [ %129, %791 ], [ %129, %784 ], [ %129, %780 ], [ %129, %773 ], [ %129, %771 ], [ %129, %767 ], [ %129, %765 ], [ %129, %761 ], [ %129, %759 ], [ %129, %428 ], [ %129, %424 ], [ %129, %422 ], [ %129, %420 ], [ %129, %181 ], [ %129, %176 ], [ %129, %172 ], [ %129, %167 ], [ %129, %162 ], [ %129, %132 ], [ %129, %1020 ], [ %129, %1256 ]
  br label %1263

; <label>:1263:                                   ; preds = %1263, %1257
  %1264 = phi i64 [ %1269, %1263 ], [ 1, %1257 ]
  %1265 = sub nsw i64 1, %1264
  %1266 = getelementptr inbounds i8, i8* %1262, i64 %1265
  %1267 = load i8, i8* %1266, align 1
  %1268 = icmp eq i8 %1267, 37
  %1269 = add nuw i64 %1264, 1
  br i1 %1268, label %1270, label %1263

; <label>:1270:                                   ; preds = %1263
  %1271 = shl i64 %1264, 32
  %1272 = ashr exact i64 %1271, 32
  %1273 = icmp sgt i32 %120, 0
  %1274 = select i1 %1273, i32 %120, i32 0
  %1275 = zext i32 %1274 to i64
  %1276 = icmp ult i64 %1272, %1275
  %1277 = select i1 %1276, i64 %1275, i64 %1272
  %1278 = sub i64 %1, %50
  %1279 = icmp ult i64 %1277, %1278
  br i1 %1279, label %1280, label %1370

; <label>:1280:                                   ; preds = %1270
  %1281 = icmp eq i8* %51, null
  br i1 %1281, label %1367, label %1282

; <label>:1282:                                   ; preds = %1280
  %1283 = icmp ne i32 %1261, 0
  %1284 = xor i1 %1276, true
  %1285 = or i1 %1283, %1284
  br i1 %1285, label %1294, label %1286

; <label>:1286:                                   ; preds = %1282
  %1287 = sext i32 %120 to i64
  %1288 = sub nsw i64 %1287, %1272
  %1289 = icmp eq i32 %74, 48
  br i1 %1289, label %1290, label %1291

; <label>:1290:                                   ; preds = %1286
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 48, i64 %1288, i32 1, i1 false)
  br label %1292

; <label>:1291:                                   ; preds = %1286
  call void @llvm.memset.p0i8.i64(i8* nonnull %51, i8 32, i64 %1288, i32 1, i1 false)
  br label %1292

; <label>:1292:                                   ; preds = %1291, %1290
  %1293 = getelementptr inbounds i8, i8* %51, i64 %1288
  br label %1294

; <label>:1294:                                   ; preds = %1292, %1282
  %1295 = phi i8* [ %1293, %1292 ], [ %51, %1282 ]
  %1296 = and i8 %1258, 1
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1362, label %1298

; <label>:1298:                                   ; preds = %1294
  %1299 = tail call i32** @__ctype_toupper_loc() #1
  %1300 = add nsw i64 %1272, -1
  %1301 = and i64 %1272, 3
  %1302 = icmp eq i64 %1301, 0
  br i1 %1302, label %1319, label %1303

; <label>:1303:                                   ; preds = %1298
  br label %1304

; <label>:1304:                                   ; preds = %1304, %1303
  %1305 = phi i64 [ %1272, %1303 ], [ %1307, %1304 ]
  %1306 = phi i64 [ %1301, %1303 ], [ %1316, %1304 ]
  %1307 = add i64 %1305, -1
  %1308 = load i32*, i32** %1299, align 8
  %1309 = getelementptr inbounds i8, i8* %1266, i64 %1307
  %1310 = load i8, i8* %1309, align 1
  %1311 = zext i8 %1310 to i64
  %1312 = getelementptr inbounds i32, i32* %1308, i64 %1311
  %1313 = load i32, i32* %1312, align 4
  %1314 = trunc i32 %1313 to i8
  %1315 = getelementptr inbounds i8, i8* %1295, i64 %1307
  store i8 %1314, i8* %1315, align 1
  %1316 = add i64 %1306, -1
  %1317 = icmp eq i64 %1316, 0
  br i1 %1317, label %1318, label %1304

; <label>:1318:                                   ; preds = %1304
  br label %1319

; <label>:1319:                                   ; preds = %1298, %1318
  %1320 = phi i64 [ %1272, %1298 ], [ %1307, %1318 ]
  %1321 = icmp ult i64 %1300, 3
  br i1 %1321, label %1364, label %1322

; <label>:1322:                                   ; preds = %1319
  br label %1323

; <label>:1323:                                   ; preds = %1323, %1322
  %1324 = phi i64 [ %1320, %1322 ], [ %1352, %1323 ]
  %1325 = add i64 %1324, -1
  %1326 = load i32*, i32** %1299, align 8
  %1327 = getelementptr inbounds i8, i8* %1266, i64 %1325
  %1328 = load i8, i8* %1327, align 1
  %1329 = zext i8 %1328 to i64
  %1330 = getelementptr inbounds i32, i32* %1326, i64 %1329
  %1331 = load i32, i32* %1330, align 4
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds i8, i8* %1295, i64 %1325
  store i8 %1332, i8* %1333, align 1
  %1334 = add i64 %1324, -2
  %1335 = load i32*, i32** %1299, align 8
  %1336 = getelementptr inbounds i8, i8* %1266, i64 %1334
  %1337 = load i8, i8* %1336, align 1
  %1338 = zext i8 %1337 to i64
  %1339 = getelementptr inbounds i32, i32* %1335, i64 %1338
  %1340 = load i32, i32* %1339, align 4
  %1341 = trunc i32 %1340 to i8
  %1342 = getelementptr inbounds i8, i8* %1295, i64 %1334
  store i8 %1341, i8* %1342, align 1
  %1343 = add i64 %1324, -3
  %1344 = load i32*, i32** %1299, align 8
  %1345 = getelementptr inbounds i8, i8* %1266, i64 %1343
  %1346 = load i8, i8* %1345, align 1
  %1347 = zext i8 %1346 to i64
  %1348 = getelementptr inbounds i32, i32* %1344, i64 %1347
  %1349 = load i32, i32* %1348, align 4
  %1350 = trunc i32 %1349 to i8
  %1351 = getelementptr inbounds i8, i8* %1295, i64 %1343
  store i8 %1350, i8* %1351, align 1
  %1352 = add i64 %1324, -4
  %1353 = load i32*, i32** %1299, align 8
  %1354 = getelementptr inbounds i8, i8* %1266, i64 %1352
  %1355 = load i8, i8* %1354, align 1
  %1356 = zext i8 %1355 to i64
  %1357 = getelementptr inbounds i32, i32* %1353, i64 %1356
  %1358 = load i32, i32* %1357, align 4
  %1359 = trunc i32 %1358 to i8
  %1360 = getelementptr inbounds i8, i8* %1295, i64 %1352
  store i8 %1359, i8* %1360, align 1
  %1361 = icmp eq i64 %1352, 0
  br i1 %1361, label %1363, label %1323

; <label>:1362:                                   ; preds = %1294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1295, i8* %1266, i64 %1272, i32 1, i1 false)
  br label %1365

; <label>:1363:                                   ; preds = %1323
  br label %1364

; <label>:1364:                                   ; preds = %1319, %1363
  br label %1365

; <label>:1365:                                   ; preds = %1364, %1362
  %1366 = getelementptr inbounds i8, i8* %1295, i64 %1272
  br label %1367

; <label>:1367:                                   ; preds = %1365, %1280
  %1368 = phi i8* [ %1366, %1365 ], [ null, %1280 ]
  %1369 = add i64 %1277, %50
  br label %1372

; <label>:1370:                                   ; preds = %1270, %1038, %887, %824, %655, %627, %588, %562, %584, %547, %511, %183, %134
  br label %1371

; <label>:1371:                                   ; preds = %1370, %405
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #9
  br label %1403

; <label>:1372:                                   ; preds = %1367, %1202, %910, %847, %756, %402, %209, %159, %1212
  %1373 = phi i32 [ %1259, %1367 ], [ %54, %1202 ], [ %54, %910 ], [ %54, %847 ], [ %493, %756 ], [ %217, %402 ], [ %54, %209 ], [ %54, %159 ], [ %54, %1212 ]
  %1374 = phi i32 [ %1260, %1367 ], [ %53, %1202 ], [ %53, %910 ], [ %53, %847 ], [ %496, %756 ], [ %218, %402 ], [ %53, %209 ], [ %53, %159 ], [ %53, %1212 ]
  %1375 = phi i8* [ %1262, %1367 ], [ %129, %1202 ], [ %129, %910 ], [ %129, %847 ], [ %499, %756 ], [ %221, %402 ], [ %129, %209 ], [ %129, %159 ], [ %1214, %1212 ]
  %1376 = phi i8* [ %1368, %1367 ], [ %1203, %1202 ], [ %911, %910 ], [ %848, %847 ], [ %757, %756 ], [ %403, %402 ], [ %210, %209 ], [ %160, %159 ], [ %51, %1212 ]
  %1377 = phi i64 [ %1369, %1367 ], [ %1204, %1202 ], [ %912, %910 ], [ %849, %847 ], [ %758, %756 ], [ %404, %402 ], [ %211, %209 ], [ %161, %159 ], [ %50, %1212 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #9
  br label %1385

; <label>:1378:                                   ; preds = %67, %1248
  %1379 = phi i32 [ %1249, %1248 ], [ %72, %67 ]
  %1380 = phi i32 [ %1250, %1248 ], [ %54, %67 ]
  %1381 = phi i32 [ %1251, %1248 ], [ %53, %67 ]
  %1382 = phi i8* [ %1214, %1248 ], [ %52, %67 ]
  %1383 = phi i8* [ %51, %1248 ], [ %69, %67 ]
  %1384 = phi i64 [ %50, %1248 ], [ %70, %67 ]
  call void @llvm.lifetime.end(i64 23, i8* nonnull %27) #9
  switch i32 %1379, label %1402 [
    i32 0, label %1385
    i32 4, label %1385
  ]

; <label>:1385:                                   ; preds = %1372, %1378, %1378
  %1386 = phi i64 [ %1377, %1372 ], [ %1384, %1378 ], [ %1384, %1378 ]
  %1387 = phi i8* [ %1376, %1372 ], [ %1383, %1378 ], [ %1383, %1378 ]
  %1388 = phi i8* [ %1375, %1372 ], [ %1382, %1378 ], [ %1382, %1378 ]
  %1389 = phi i32 [ %1374, %1372 ], [ %1381, %1378 ], [ %1381, %1378 ]
  %1390 = phi i32 [ %1373, %1372 ], [ %1380, %1378 ], [ %1380, %1378 ]
  %1391 = getelementptr inbounds i8, i8* %1388, i64 1
  %1392 = load i8, i8* %1391, align 1
  %1393 = icmp eq i8 %1392, 0
  br i1 %1393, label %1394, label %48

; <label>:1394:                                   ; preds = %1385
  br label %1395

; <label>:1395:                                   ; preds = %1394, %7
  %1396 = phi i8* [ %0, %7 ], [ %1387, %1394 ]
  %1397 = phi i64 [ 0, %7 ], [ %1386, %1394 ]
  %1398 = icmp ne i8* %1396, null
  %1399 = icmp ne i64 %1, 0
  %1400 = and i1 %1399, %1398
  br i1 %1400, label %1401, label %1403

; <label>:1401:                                   ; preds = %1395
  store i8 0, i8* %1396, align 1
  br label %1403

; <label>:1402:                                   ; preds = %1378
  br label %1403

; <label>:1403:                                   ; preds = %1402, %1371, %1395, %1401
  %1404 = phi i64 [ %1397, %1401 ], [ %1397, %1395 ], [ 0, %1371 ], [ 0, %1402 ]
  ret i64 %1404
}

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.288, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.289, i64 0, i64 0), i8* %2, i8* %3) #9
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.290, i64 0, i64 0), i32 5) #9
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.291, i64 0, i64 0), i32 5) #9
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #9
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.292, i64 0, i64 0), i32 5) #9
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.293, i64 0, i64 0), i32 5) #9
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.294, i64 0, i64 0), i32 5) #9
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.295, i64 0, i64 0), i32 5) #9
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #9
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.296, i64 0, i64 0), i32 5) #9
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #9
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.297, i64 0, i64 0), i32 5) #9
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
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #9
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.298, i64 0, i64 0), i32 5) #9
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
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #9
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.299, i64 0, i64 0), i32 5) #9
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
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #9
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.300, i64 0, i64 0), i32 5) #9
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
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #9
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.301, i64 0, i64 0), i32 5) #9
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
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #9
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
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #9
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #9
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #9
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.304, i64 0, i64 0), i32 5) #9
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.305, i64 0, i64 0)) #9
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.306, i64 0, i64 0), i32 5) #9
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.307, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.308, i64 0, i64 0)) #9
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.309, i64 0, i64 0), i32 5) #9
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #9
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
  %8 = tail call noalias i8* @malloc(i64 %7) #9
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
  %2 = tail call noalias i8* @malloc(i64 %0) #9
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
  tail call void @free(i8* nonnull %0) #9
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #9
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
  tail call void @free(i8* nonnull %0) #9
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #9
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
  tail call void @free(i8* nonnull %0) #9
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #9
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
  %2 = tail call noalias i8* @malloc(i64 %0) #9
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
  tail call void @free(i8* nonnull %0) #9
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #9
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
  %2 = tail call noalias i8* @malloc(i64 %0) #9
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
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #9
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
  %3 = tail call noalias i8* @malloc(i64 %1) #9
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
  %4 = tail call noalias i8* @malloc(i64 %3) #9
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #9
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.322, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.323, i64 0, i64 0), i8* %2) #9
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xgetcwd() local_unnamed_addr #6 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #9
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #1
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #14
  unreachable

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xasprintf(i8*, ...) local_unnamed_addr #6 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #9
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %5 = call i8* @xvasprintf(i8* %0, %struct.__va_list_tag* nonnull %4) #9
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #9
  ret i8* %5
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
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #9
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @chdir_long(i8*) local_unnamed_addr #6 {
  %2 = tail call i32 @chdir(i8* %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %118, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 36
  br i1 %7, label %8, label %118

; <label>:8:                                      ; preds = %4
  %9 = tail call i64 @strlen(i8* %0) #13
  %10 = getelementptr inbounds i8, i8* %0, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.332, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #14
  unreachable

; <label>:13:                                     ; preds = %8
  %14 = icmp ugt i64 %9, 4095
  br i1 %14, label %16, label %15

; <label>:15:                                     ; preds = %13
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.334, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #14
  unreachable

; <label>:16:                                     ; preds = %13
  %17 = tail call i64 @strspn(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.335, i64 0, i64 0)) #9
  switch i64 %17, label %33 [
    i64 2, label %18
    i64 0, label %38
  ]

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds i8, i8* %0, i64 3
  %20 = ptrtoint i8* %10 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = tail call i8* @memchr(i8* %19, i32 47, i64 %22) #13
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %18
  store i32 36, i32* %5, align 4
  br label %118

; <label>:26:                                     ; preds = %18
  store i8 0, i8* %23, align 1
  %27 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* %0, i32 67840) #9
  %28 = icmp slt i32 %27, 0
  store i8 47, i8* %23, align 1
  br i1 %28, label %106, label %29

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds i8, i8* %23, i64 1
  %31 = tail call i64 @strspn(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.335, i64 0, i64 0)) #9
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  br label %38

; <label>:33:                                     ; preds = %16
  %34 = tail call i32 (i32, i8*, i32, ...) @openat(i32 -100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.335, i64 0, i64 0), i32 67840) #9
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.336, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #14
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.337, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #14
  unreachable

; <label>:53:                                     ; preds = %51, %74
  %54 = phi i64 [ %78, %74 ], [ %48, %51 ]
  %55 = phi i8* [ %77, %74 ], [ %40, %51 ]
  %56 = phi i32 [ %66, %74 ], [ %39, %51 ]
  %57 = tail call i8* @memrchr(i8* %55, i32 47, i64 4096) #13
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.338, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.chdir_long, i64 0, i64 0)) #14
  unreachable

; <label>:65:                                     ; preds = %60
  %66 = tail call i32 (i32, i8*, i32, ...) @openat(i32 %56, i8* %55, i32 67840) #9
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %81, label %68

; <label>:68:                                     ; preds = %65
  %69 = icmp sgt i32 %56, -1
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %68
  %71 = tail call i32 @close(i32 %56) #9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

; <label>:73:                                     ; preds = %70
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.339, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #14
  unreachable

; <label>:74:                                     ; preds = %68, %70
  store i8 47, i8* %57, align 1
  %75 = getelementptr inbounds i8, i8* %57, i64 1
  %76 = tail call i64 @strspn(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.335, i64 0, i64 0)) #9
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
  %88 = tail call i32 (i32, i8*, i32, ...) @openat(i32 %84, i8* %85, i32 67840) #9
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %108, label %90

; <label>:90:                                     ; preds = %87
  %91 = icmp sgt i32 %84, -1
  br i1 %91, label %92, label %96

; <label>:92:                                     ; preds = %90
  %93 = tail call i32 @close(i32 %84) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

; <label>:95:                                     ; preds = %92
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.339, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #14
  unreachable

; <label>:96:                                     ; preds = %90, %92, %83
  %97 = phi i32 [ %84, %83 ], [ %88, %92 ], [ %88, %90 ]
  %98 = tail call i32 @fchdir(i32 %97) #9
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

; <label>:100:                                    ; preds = %96
  %101 = icmp sgt i32 %97, -1
  br i1 %101, label %102, label %118

; <label>:102:                                    ; preds = %100
  %103 = tail call i32 @close(i32 %97) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

; <label>:105:                                    ; preds = %102
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.339, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #14
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
  %113 = tail call i32 @close(i32 %109) #9
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

; <label>:115:                                    ; preds = %112
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.339, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.333, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.cdb_free, i64 0, i64 0)) #14
  unreachable

; <label>:116:                                    ; preds = %106, %108, %112
  %117 = phi i32 [ %107, %106 ], [ %110, %108 ], [ %110, %112 ]
  store i32 %117, i32* %5, align 4
  br label %118

; <label>:118:                                    ; preds = %116, %25, %59, %100, %102, %1, %4
  %119 = phi i32 [ %2, %4 ], [ 0, %1 ], [ -1, %116 ], [ -1, %25 ], [ -1, %59 ], [ 0, %100 ], [ 0, %102 ]
  ret i32 %119
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @memrchr(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #9
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #9
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #9
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #9
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
  %18 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.344, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.345, i64 0, i64 0))
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %353, label %20

; <label>:20:                                     ; preds = %1
  %21 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %21) #9
  store i8* null, i8** %4, align 8
  %22 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %22) #9
  store i64 0, i64* %5, align 8
  %23 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #9
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
  call void @llvm.lifetime.start(i64 4, i8* nonnull %26) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %27) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %28) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %29) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %30) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %31) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %32) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %33) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %34) #9
  call void @llvm.lifetime.start(i64 4, i8* nonnull %35) #9
  call void @llvm.lifetime.start(i64 1, i8* nonnull %16) #9
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @sscanf(i8* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2.346, i64 0, i64 0), i32* nonnull %6, i32* nonnull %7, i32* nonnull %14, i32* nonnull %15, i32* nonnull %8, i32* nonnull %9, i8* nonnull %16) #9
  switch i32 %39, label %332 [
    i32 7, label %40
    i32 3, label %40
  ]

; <label>:40:                                     ; preds = %36, %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.347, i64 0, i64 0)) #13
  %46 = icmp eq i8* %45, null
  br i1 %46, label %332, label %47

; <label>:47:                                     ; preds = %40
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.348, i64 0, i64 0), i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32* nonnull %13, i8* nonnull %16) #9
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
  %67 = call i64 @strlen(i8* %66) #13
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
  %117 = call i64 @strlen(i8* %116) #13
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
  %168 = call i64 @strlen(i8* %167) #13
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
  %214 = call noalias i8* @xmalloc(i64 56) #9
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %45, i64 %216
  %218 = call noalias i8* @xstrdup(i8* %217) #9
  %219 = bitcast i8* %214 to i8**
  store i8* %218, i8** %219, align 8
  %220 = load i8*, i8** %4, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = call noalias i8* @xstrdup(i8* %223) #9
  %225 = getelementptr inbounds i8, i8* %214, i64 8
  %226 = bitcast i8* %225 to i8**
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = call noalias i8* @xstrdup(i8* %230) #9
  %232 = getelementptr inbounds i8, i8* %214, i64 16
  %233 = bitcast i8* %232 to i8**
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %45, i64 %235
  %237 = call noalias i8* @xstrdup(i8* %236) #9
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
  %261 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.349, i64 0, i64 0)) #9
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %299, label %263

; <label>:263:                                    ; preds = %213
  %264 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.350, i64 0, i64 0)) #9
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %299, label %266

; <label>:266:                                    ; preds = %263
  %267 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.351, i64 0, i64 0)) #9
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %299, label %269

; <label>:269:                                    ; preds = %266
  %270 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.352, i64 0, i64 0)) #9
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %299, label %272

; <label>:272:                                    ; preds = %269
  %273 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.353, i64 0, i64 0)) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %299, label %275

; <label>:275:                                    ; preds = %272
  %276 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.354, i64 0, i64 0)) #9
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %299, label %278

; <label>:278:                                    ; preds = %275
  %279 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.355, i64 0, i64 0)) #9
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %299, label %281

; <label>:281:                                    ; preds = %278
  %282 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.356, i64 0, i64 0)) #9
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %299, label %284

; <label>:284:                                    ; preds = %281
  %285 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.357, i64 0, i64 0)) #9
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %299, label %287

; <label>:287:                                    ; preds = %284
  %288 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.358, i64 0, i64 0)) #9
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %299, label %290

; <label>:290:                                    ; preds = %287
  %291 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.359, i64 0, i64 0)) #9
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %299, label %293

; <label>:293:                                    ; preds = %290
  %294 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.360, i64 0, i64 0)) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

; <label>:296:                                    ; preds = %293
  %297 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.361, i64 0, i64 0)) #9
  %298 = icmp eq i32 %297, 0
  br label %299

; <label>:299:                                    ; preds = %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %213
  %300 = phi i1 [ true, %293 ], [ true, %290 ], [ true, %287 ], [ true, %284 ], [ true, %281 ], [ true, %278 ], [ true, %275 ], [ true, %272 ], [ true, %269 ], [ true, %266 ], [ true, %263 ], [ true, %213 ], [ %298, %296 ]
  %301 = zext i1 %300 to i8
  %302 = and i8 %242, -2
  %303 = or i8 %302, %301
  store i8 %303, i8* %240, align 8
  %304 = load i8*, i8** %219, align 8
  %305 = call i8* @strchr(i8* %304, i32 58) #9
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
  %315 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.362, i64 0, i64 0)) #9
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %323, label %317

; <label>:317:                                    ; preds = %314
  %318 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.363, i64 0, i64 0)) #9
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

; <label>:320:                                    ; preds = %307, %310, %317
  %321 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.364, i64 0, i64 0), i8* nonnull %304) #9
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
  call void @llvm.lifetime.end(i64 1, i8* nonnull %16) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %35) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %34) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %33) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %32) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %31) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %30) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %29) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %28) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %27) #9
  call void @llvm.lifetime.end(i64 4, i8* nonnull %26) #9
  %334 = call i64 @__getdelim(i8** nonnull %4, i64* nonnull %5, i32 10, %struct._IO_FILE* nonnull %18) #9
  %335 = icmp eq i64 %334, -1
  br i1 %335, label %336, label %36

; <label>:336:                                    ; preds = %332
  br label %337

; <label>:337:                                    ; preds = %336, %20
  %338 = phi %struct.mount_entry** [ %3, %20 ], [ %333, %336 ]
  %339 = load i8*, i8** %4, align 8
  call void @free(i8* %339) #9
  %340 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i64 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = and i32 %341, 32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %348, label %344

; <label>:344:                                    ; preds = %337
  %345 = tail call i32* @__errno_location() #1
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #9
  store i32 %346, i32* %345, align 4
  br label %351

; <label>:348:                                    ; preds = %337
  %349 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %18) #9
  %350 = icmp eq i32 %349, -1
  br i1 %350, label %351, label %352

; <label>:351:                                    ; preds = %348, %344
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #9
  br label %469

; <label>:352:                                    ; preds = %348
  call void @llvm.lifetime.end(i64 8, i8* nonnull %22) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %21) #9
  br label %466

; <label>:353:                                    ; preds = %1
  %354 = tail call %struct._IO_FILE* @setmntent(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21.365, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.345, i64 0, i64 0)) #9
  %355 = icmp eq %struct._IO_FILE* %354, null
  br i1 %355, label %500, label %356

; <label>:356:                                    ; preds = %353
  %357 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #9
  %358 = icmp eq %struct.mntent* %357, null
  br i1 %358, label %462, label %359

; <label>:359:                                    ; preds = %356
  br label %360

; <label>:360:                                    ; preds = %359, %448
  %361 = phi %struct.mntent* [ %459, %448 ], [ %357, %359 ]
  %362 = phi %struct.mount_entry** [ %458, %448 ], [ %3, %359 ]
  %363 = tail call i8* @hasmntopt(%struct.mntent* nonnull %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.366, i64 0, i64 0)) #9
  %364 = tail call noalias i8* @xmalloc(i64 56) #9
  %365 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = tail call noalias i8* @xstrdup(i8* %366) #9
  %368 = bitcast i8* %364 to i8**
  store i8* %367, i8** %368, align 8
  %369 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 1
  %370 = load i8*, i8** %369, align 8
  %371 = tail call noalias i8* @xstrdup(i8* %370) #9
  %372 = getelementptr inbounds i8, i8* %364, i64 8
  %373 = bitcast i8* %372 to i8**
  store i8* %371, i8** %373, align 8
  %374 = getelementptr inbounds i8, i8* %364, i64 16
  %375 = bitcast i8* %374 to i8**
  store i8* null, i8** %375, align 8
  %376 = getelementptr inbounds %struct.mntent, %struct.mntent* %361, i64 0, i32 2
  %377 = load i8*, i8** %376, align 8
  %378 = tail call noalias i8* @xstrdup(i8* %377) #9
  %379 = getelementptr inbounds i8, i8* %364, i64 24
  %380 = bitcast i8* %379 to i8**
  store i8* %378, i8** %380, align 8
  %381 = getelementptr inbounds i8, i8* %364, i64 40
  %382 = load i8, i8* %381, align 8
  %383 = or i8 %382, 4
  store i8 %383, i8* %381, align 8
  %384 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.349, i64 0, i64 0)) #9
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %424, label %386

; <label>:386:                                    ; preds = %360
  %387 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.350, i64 0, i64 0)) #9
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %424, label %389

; <label>:389:                                    ; preds = %386
  %390 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.351, i64 0, i64 0)) #9
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %424, label %392

; <label>:392:                                    ; preds = %389
  %393 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.352, i64 0, i64 0)) #9
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %424, label %395

; <label>:395:                                    ; preds = %392
  %396 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9.353, i64 0, i64 0)) #9
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %424, label %398

; <label>:398:                                    ; preds = %395
  %399 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.354, i64 0, i64 0)) #9
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %424, label %401

; <label>:401:                                    ; preds = %398
  %402 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11.355, i64 0, i64 0)) #9
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %424, label %404

; <label>:404:                                    ; preds = %401
  %405 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12.356, i64 0, i64 0)) #9
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %424, label %407

; <label>:407:                                    ; preds = %404
  %408 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.357, i64 0, i64 0)) #9
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %424, label %410

; <label>:410:                                    ; preds = %407
  %411 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.358, i64 0, i64 0)) #9
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %424, label %413

; <label>:413:                                    ; preds = %410
  %414 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.359, i64 0, i64 0)) #9
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %424, label %416

; <label>:416:                                    ; preds = %413
  %417 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16.360, i64 0, i64 0)) #9
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %424, label %419

; <label>:419:                                    ; preds = %416
  %420 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17.361, i64 0, i64 0)) #9
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
  %430 = tail call i8* @strchr(i8* %429, i32 58) #9
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
  %440 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18.362, i64 0, i64 0)) #9
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %448, label %442

; <label>:442:                                    ; preds = %439
  %443 = tail call i32 @strcmp(i8* %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19.363, i64 0, i64 0)) #9
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %448, label %445

; <label>:445:                                    ; preds = %432, %435, %442
  %446 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20.364, i64 0, i64 0), i8* nonnull %429) #9
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
  %459 = tail call %struct.mntent* @getmntent(%struct._IO_FILE* nonnull %354) #9
  %460 = icmp eq %struct.mntent* %459, null
  br i1 %460, label %461, label %360

; <label>:461:                                    ; preds = %448
  br label %462

; <label>:462:                                    ; preds = %461, %356
  %463 = phi %struct.mount_entry** [ %3, %356 ], [ %458, %461 ]
  %464 = tail call i32 @endmntent(%struct._IO_FILE* nonnull %354) #9
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
  call void @free(i8* %482) #9
  %483 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 1
  %484 = load i8*, i8** %483, align 8
  call void @free(i8* %484) #9
  %485 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 2
  %486 = load i8*, i8** %485, align 8
  call void @free(i8* %486) #9
  %487 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 5
  %488 = load i8, i8* %487, align 8
  %489 = and i8 %488, 4
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %494, label %491

; <label>:491:                                    ; preds = %476
  %492 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %477, i64 0, i32 3
  %493 = load i8*, i8** %492, align 8
  call void @free(i8* %493) #9
  br label %494

; <label>:494:                                    ; preds = %476, %491
  %495 = bitcast %struct.mount_entry* %477 to i8*
  call void @free(i8* %495) #9
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
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

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
  tail call void @free(i8* %3) #9
  %4 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 1
  %5 = load i8*, i8** %4, align 8
  tail call void @free(i8* %5) #9
  %6 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 2
  %7 = load i8*, i8** %6, align 8
  tail call void @free(i8* %7) #9
  %8 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 5
  %9 = load i8, i8* %8, align 8
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.mount_entry, %struct.mount_entry* %0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 8
  tail call void @free(i8* %14) #9
  br label %15

; <label>:15:                                     ; preds = %1, %12
  %16 = bitcast %struct.mount_entry* %0 to i8*
  tail call void @free(i8* %16) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.tm_zone* @tzalloc(i8* readonly) local_unnamed_addr #6 {
  %2 = icmp ne i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @strlen(i8* nonnull %0) #13
  %5 = add i64 %4, 1
  br label %6

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i64 [ %5, %3 ], [ 0, %1 ]
  %8 = icmp ult i64 %7, 119
  %9 = add i64 %7, 17
  %10 = and i64 %9, -8
  %11 = select i1 %8, i64 128, i64 %10
  %12 = tail call noalias i8* @malloc(i64 %11) #9
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* nonnull %0, i64 %7, i32 1, i1 false) #9
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
  tail call void @free(i8* %8) #9
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
  %6 = tail call %struct.tm* @gmtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #9
  br label %54

; <label>:7:                                      ; preds = %3
  %8 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %9 = icmp eq %struct.tm_zone* %8, null
  br i1 %9, label %54, label %10

; <label>:10:                                     ; preds = %7
  %11 = tail call %struct.tm* @localtime_r(i64* nonnull %1, %struct.tm* nonnull %2) #9
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
  %27 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0), i8* nonnull %26, i32 1) #9
  br label %30

; <label>:28:                                     ; preds = %19
  %29 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0)) #9
  br label %30

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %30
  tail call void @tzset() #9
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
  tail call void @free(i8* %45) #9
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
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0)) #9
  %3 = icmp eq i8* %2, null
  %4 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %3, label %12, label %7

; <label>:7:                                      ; preds = %1
  br i1 %6, label %13, label %8

; <label>:8:                                      ; preds = %7
  %9 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %10 = tail call i32 @strcmp(i8* %9, i8* nonnull %2) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %56, label %13

; <label>:12:                                     ; preds = %1
  br i1 %6, label %56, label %16

; <label>:13:                                     ; preds = %7, %8
  %14 = tail call i64 @strlen(i8* nonnull %2) #13
  %15 = add i64 %14, 1
  br label %16

; <label>:16:                                     ; preds = %12, %13
  %17 = phi i1 [ true, %13 ], [ false, %12 ]
  %18 = phi i64 [ %15, %13 ], [ 0, %12 ]
  %19 = icmp ult i64 %18, 119
  %20 = add i64 %18, 17
  %21 = and i64 %20, -8
  %22 = select i1 %19, i64 128, i64 %21
  %23 = tail call noalias i8* @malloc(i64 %22) #9
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* nonnull %2, i64 %18, i32 1, i1 false) #9
  %32 = getelementptr inbounds i8, i8* %30, i64 %18
  store i8 0, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %31, %26
  br i1 %6, label %37, label %34

; <label>:34:                                     ; preds = %33
  %35 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %0, i64 0, i32 2, i64 0
  %36 = tail call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0), i8* nonnull %35, i32 1) #9
  br label %39

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0)) #9
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39
  tail call void @tzset() #9
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
  tail call void @free(i8* %52) #9
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
  %25 = tail call i32 @strcmp(i8* %24, i8* nonnull %4) #9
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
  %37 = tail call i64 @strlen(i8* nonnull %4) #13
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds %struct.tm_zone, %struct.tm_zone* %20, i64 0, i32 2, i64 119
  %40 = ptrtoint i8* %39 to i64
  %41 = ptrtoint i8* %36 to i64
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %35
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %36, i8* nonnull %4, i64 %38, i32 1, i1 false) #9
  %45 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %45, align 1
  br label %75

; <label>:46:                                     ; preds = %35
  %47 = icmp ult i64 %38, 119
  %48 = add i64 %37, 18
  %49 = and i64 %48, -8
  %50 = select i1 %47, i64 128, i64 %49
  %51 = tail call noalias i8* @malloc(i64 %50) #9
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %53

; <label>:53:                                     ; preds = %46
  %54 = bitcast i8* %51 to %struct.tm_zone**
  store %struct.tm_zone* null, %struct.tm_zone** %54, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 8
  store i8 1, i8* %55, align 8
  %56 = getelementptr inbounds i8, i8* %51, i64 9
  store i8 0, i8* %56, align 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* nonnull %4, i64 %38, i32 1, i1 false) #9
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
  %62 = tail call i64 @strlen(i8* nonnull %24) #13
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
  %76 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.372, i64 0, i64 0), %13 ], [ %56, %53 ], [ %36, %44 ], [ %24, %74 ]
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
  %7 = tail call i64 @timegm(%struct.tm* nonnull %1) #9
  br label %106

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc %struct.tm_zone* @set_tz(%struct.tm_zone* nonnull %0)
  %10 = icmp eq %struct.tm_zone* %9, null
  br i1 %10, label %106, label %11

; <label>:11:                                     ; preds = %8
  %12 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #9
  %13 = tail call i64 @rpl_mktime(%struct.tm* nonnull %1) #9
  store i64 %13, i64* %3, align 8
  %14 = bitcast %struct.tm* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #9
  %15 = icmp eq i64 %13, -1
  br i1 %15, label %16, label %68

; <label>:16:                                     ; preds = %11
  %17 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %4) #9
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
  %81 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0), i8* nonnull %80, i32 1) #9
  br label %84

; <label>:82:                                     ; preds = %73
  %83 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.371, i64 0, i64 0)) #9
  br label %84

; <label>:84:                                     ; preds = %82, %79
  %85 = phi i32 [ %81, %79 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %84
  call void @tzset() #9
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
  call void @free(i8* %99) #9
  %100 = icmp eq %struct.tm_zone* %98, null
  br i1 %100, label %101, label %95

; <label>:101:                                    ; preds = %95
  br label %102

; <label>:102:                                    ; preds = %101, %90
  store i32 %92, i32* %74, align 4
  br i1 %91, label %104, label %103

; <label>:103:                                    ; preds = %102
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9
  br label %106

; <label>:104:                                    ; preds = %71, %102
  %105 = load i64, i64* %3, align 8
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #9
  br label %106

; <label>:106:                                    ; preds = %8, %103, %104, %6
  %107 = phi i64 [ %7, %6 ], [ %105, %104 ], [ -1, %103 ], [ -1, %8 ]
  ret i64 %107
}

; Function Attrs: nounwind
declare i64 @timegm(%struct.tm*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 {
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #9
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1
  %7 = and i32 %3, -2
  %8 = select i1 %1, i32 %6, i32 %7
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #9
  %12 = icmp eq i32 %11, -1
  %13 = sext i1 %12 to i32
  ret i32 %13

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #9
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #9
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #9
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #9
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
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #9
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #9
  %28 = call i32 @fd_safer(i32 %27) #9
  ret i32 %28
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #9
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.383, i64 0, i64 0)) #9
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
  %3 = tail call i8* @nl_langinfo(i32 14) #9
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.386, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.387, i64 0, i64 0)) #9
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.388, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  %29 = tail call noalias i8* @malloc(i64 %28) #9
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #9
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.389, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.389, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.390, i64 0, i64 0)) #9
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #9
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #9
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #9
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9
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
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #9
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
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #9
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.391, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9
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
  %90 = call noalias i8* @malloc(i64 %89) #9
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #9
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #9
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #9
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #9
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #9
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #9
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #9
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #9
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #9
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.386, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.386, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.386, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #9
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.386, i64 0, i64 0), %24 ]
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
  %135 = call i32 @strcmp(i8* %5, i8* %134) #9
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.392, i64 0, i64 0), i8* %158
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
  %4 = tail call i32 @dup_safer(i32 %0) #9
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #9
  store i32 %6, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #9
  br label %6

; <label>:6:                                      ; preds = %84, %2
  %7 = phi i64 [ 0, %2 ], [ %86, %84 ]
  %8 = phi i8* [ %0, %2 ], [ %85, %84 ]
  %9 = load i8, i8* %8, align 1
  switch i8 %9, label %89 [
    i8 0, label %10
    i8 37, label %80
  ]

; <label>:10:                                     ; preds = %6
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %11) #9
  %12 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #9
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #9
  %15 = call noalias i8* @xmalloc(i64 1) #9
  br label %77

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16
  br label %21

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ]
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  %25 = icmp ult i32 %22, 41
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16
  %28 = sext i32 %22 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %22, 8
  store i32 %30, i32* %17, align 16
  br label %34

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %19, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38) #13
  %40 = add i64 %39, %23
  %41 = icmp uge i64 %40, %23
  %42 = select i1 %41, i64 %40, i64 -1
  %43 = add i64 %24, -1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %21

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #9
  %46 = icmp ugt i64 %42, 2147483647
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #1
  store i32 75, i32* %48, align 4
  br label %87

; <label>:49:                                     ; preds = %45
  %50 = add i64 %40, 1
  %51 = call noalias i8* @xmalloc(i64 %50) #9
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  %58 = load i32, i32* %52, align 8
  %59 = icmp ult i32 %58, 41
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8
  %62 = sext i32 %58 to i64
  %63 = getelementptr i8, i8* %61, i64 %62
  %64 = add i32 %58, 8
  store i32 %64, i32* %52, align 8
  br label %68

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8
  %67 = getelementptr i8, i8* %66, i64 8
  store i8* %67, i8** %54, align 8
  br label %68

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71) #13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #9
  %73 = getelementptr inbounds i8, i8* %57, i64 %72
  %74 = add i64 %56, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %55

; <label>:76:                                     ; preds = %68
  br label %77

; <label>:77:                                     ; preds = %76, %14
  %78 = phi i8* [ %15, %14 ], [ %51, %76 ]
  %79 = phi i8* [ %15, %14 ], [ %73, %76 ]
  store i8 0, i8* %79, align 1
  br label %87

; <label>:80:                                     ; preds = %6
  %81 = getelementptr inbounds i8, i8* %8, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = icmp eq i8 %82, 115
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %8, i64 2
  %86 = add i64 %7, 1
  br label %6

; <label>:87:                                     ; preds = %77, %47
  %88 = phi i8* [ null, %47 ], [ %78, %77 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %11) #9
  br label %99

; <label>:89:                                     ; preds = %6, %80
  %90 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #9
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

; <label>:92:                                     ; preds = %89
  %93 = tail call i32* @__errno_location() #1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 12
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %92
  call void @xalloc_die() #14
  unreachable

; <label>:97:                                     ; preds = %89
  %98 = load i8*, i8** %4, align 8
  br label %99

; <label>:99:                                     ; preds = %87, %92, %97
  %100 = phi i8* [ %98, %97 ], [ %88, %87 ], [ null, %92 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #9
  ret i8* %100
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #9

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #9
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #9
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
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #9
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
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #9
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
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #9
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #9
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #9
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
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #9
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #9
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #9
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
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #9
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
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #9
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #9
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %16) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #9
  store i64 %103, i64* %9, align 8
  %108 = call %struct.tm* %1(i64* nonnull %9, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %97) #9
  store i64 %121, i64* %7, align 8
  %124 = call %struct.tm* %1(i64* nonnull %7, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %97) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %98) #9
  store i64 %127, i64* %8, align 8
  %141 = call %struct.tm* %1(i64* nonnull %8, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %98) #9
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #9
  store i64 %254, i64* %6, align 8
  %255 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #9
  store i64 %268, i64* %4, align 8
  %271 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #9
  store i64 %274, i64* %5, align 8
  %288 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %364) #9
  store i64 %363, i64* %12, align 8
  %365 = call %struct.tm* %1(i64* nonnull %12, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %364) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %377) #9
  store i64 %379, i64* %10, align 8
  %382 = call %struct.tm* %1(i64* nonnull %10, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %377) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %399) #9
  store i64 %385, i64* %11, align 8
  %400 = call %struct.tm* %1(i64* nonnull %11, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %399) #9
  br label %402

; <label>:401:                                    ; preds = %289
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #9
  br label %438

; <label>:402:                                    ; preds = %362, %369, %395, %398
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %429) #9
  store i64 %428, i64* %13, align 8
  %430 = call %struct.tm* %1(i64* nonnull %13, %struct.tm* nonnull %14) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %429) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %16) #9
  ret i64 %437

; <label>:438:                                    ; preds = %401, %249
  %439 = sub nuw nsw i64 9223372036854775807, %250
  %440 = icmp slt i64 %439, %103
  br i1 %440, label %485, label %441

; <label>:441:                                    ; preds = %438
  %442 = add i64 %250, %103
  call void @llvm.lifetime.start(i64 56, i8* nonnull %244) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #9
  store i64 %442, i64* %6, align 8
  %443 = call %struct.tm* %1(i64* nonnull %6, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %247) #9
  store i64 %456, i64* %4, align 8
  %459 = call %struct.tm* %1(i64* nonnull %4, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %247) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %248) #9
  store i64 %462, i64* %5, align 8
  %476 = call %struct.tm* %1(i64* nonnull %5, %struct.tm* nonnull %15) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %248) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %244) #9
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
  tail call void @tzset() #9
  %14 = bitcast %struct.tm* %12 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %14) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %94) #9
  store i64 %101, i64* %7, align 8
  %106 = call %struct.tm* @localtime_r(i64* nonnull %7, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %94) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %95) #9
  store i64 %119, i64* %5, align 8
  %122 = call %struct.tm* @localtime_r(i64* nonnull %5, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %95) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %96) #9
  store i64 %125, i64* %6, align 8
  %139 = call %struct.tm* @localtime_r(i64* nonnull %6, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %96) #9
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
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #9
  store i64 %252, i64* %4, align 8
  %253 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #9
  store i64 %266, i64* %2, align 8
  %269 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #9
  store i64 %272, i64* %3, align 8
  %286 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %362) #9
  store i64 %361, i64* %10, align 8
  %363 = call %struct.tm* @localtime_r(i64* nonnull %10, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %362) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %375) #9
  store i64 %377, i64* %8, align 8
  %380 = call %struct.tm* @localtime_r(i64* nonnull %8, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %375) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %397) #9
  store i64 %383, i64* %9, align 8
  %398 = call %struct.tm* @localtime_r(i64* nonnull %9, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %397) #9
  br label %400

; <label>:399:                                    ; preds = %287
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #9
  br label %433

; <label>:400:                                    ; preds = %396, %393, %367, %360
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %427) #9
  store i64 %426, i64* %11, align 8
  %428 = call %struct.tm* @localtime_r(i64* nonnull %11, %struct.tm* nonnull %12) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %427) #9
  %429 = icmp eq %struct.tm* %428, null
  br i1 %429, label %484, label %430

; <label>:430:                                    ; preds = %425, %403
  %431 = phi i64 [ %404, %403 ], [ %426, %425 ]
  %432 = bitcast %struct.tm* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %432, i8* nonnull %14, i64 56, i32 8, i1 false) #9
  br label %484

; <label>:433:                                    ; preds = %399, %247
  %434 = sub nuw nsw i64 9223372036854775807, %248
  %435 = icmp slt i64 %434, %101
  br i1 %435, label %480, label %436

; <label>:436:                                    ; preds = %433
  %437 = add i64 %248, %101
  call void @llvm.lifetime.start(i64 56, i8* nonnull %242) #9
  call void @llvm.lifetime.start(i64 8, i8* nonnull %243) #9
  store i64 %437, i64* %4, align 8
  %438 = call %struct.tm* @localtime_r(i64* nonnull %4, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %243) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %245) #9
  store i64 %451, i64* %2, align 8
  %454 = call %struct.tm* @localtime_r(i64* nonnull %2, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %245) #9
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %246) #9
  store i64 %457, i64* %3, align 8
  %471 = call %struct.tm* @localtime_r(i64* nonnull %3, %struct.tm* nonnull %13) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %246) #9
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
  call void @llvm.lifetime.end(i64 56, i8* nonnull %242) #9
  br label %480

; <label>:480:                                    ; preds = %479, %433
  %481 = add nuw nsw i64 %248, 601200
  %482 = icmp slt i64 %481, 268828200
  br i1 %482, label %247, label %401

; <label>:483:                                    ; preds = %226
  br label %484

; <label>:484:                                    ; preds = %483, %419, %422, %425, %430
  %485 = phi i64 [ %431, %430 ], [ -1, %425 ], [ -1, %422 ], [ -1, %419 ], [ -1, %483 ]
  call void @llvm.lifetime.end(i64 56, i8* nonnull %14) #9
  ret i64 %485
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #9
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
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
