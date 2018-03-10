; ModuleID = 'coreutils-8.27/src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [274 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\0A  -c, --csh, --c-shell        output C shell code to set LS_COLORS\0A  -p, --print-database        output defaults\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [103 x i8] c"the options to output dircolors' internal database and\0Ato select a shell syntax are mutually exclusive\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@G_line = internal constant [4173 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2017 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Below are TERM entries, which can be a glob patterns, to match\00# against the TERM environment variable to determine if it is colorizable.\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM xterm*\00# Below are the color init strings for the basic file types. A color init\00# string consists of one or more of the following numeric codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # file that is setuid (u+s)\00SETGID 30;43 # file that is setgid (g+s)\00CAPABILITY 30;41 # file with capability\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for files with execute permission:\00EXEC 01;32\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to colorize below. Put the extension, a space, and the color init string.\00# (and any comments you want to add after a '#')\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to colorize scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00 # archives or compressed (bright red)\00.tar 01;31\00.tgz 01;31\00.arc 01;31\00.arj 01;31\00.taz 01;31\00.lha 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.tlz 01;31\00.txz 01;31\00.tzo 01;31\00.t7z 01;31\00.zip 01;31\00.z 01;31\00.Z 01;31\00.dz 01;31\00.gz 01;31\00.lrz 01;31\00.lz 01;31\00.lzo 01;31\00.xz 01;31\00.zst 01;31\00.tzst 01;31\00.bz2 01;31\00.bz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tz 01;31\00.deb 01;31\00.rpm 01;31\00.jar 01;31\00.war 01;31\00.ear 01;31\00.sar 01;31\00.rar 01;31\00.alz 01;31\00.ace 01;31\00.zoo 01;31\00.cpio 01;31\00.7z 01;31\00.rz 01;31\00.cab 01;31\00.wim 01;31\00.swm 01;31\00.dwm 01;31\00.esd 01;31\00# image formats\00.jpg 01;35\00.jpeg 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00", align 16, !dbg !280
@.str.44 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !248
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s:%lu: invalid line;  missing second token\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 16, !dbg !286
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16, !dbg !292
@.str.52 = private unnamed_addr constant [32 x i8] c"%s:%lu: unrecognized keyword %s\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !306
@.str.22 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !312
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !317
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !320
@.str.115 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !327
@.str.120 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.121 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.122 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.124, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.125, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.126, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.127, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.130, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.131, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.132, i32 0, i32 0), i8* null], align 16, !dbg !334
@.str.123 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.124 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.125 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.126 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.127 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.128 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.129 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.130 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.131 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.132 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !346
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !353
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !363
@.str.11.133 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.134 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.135 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.136 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.137 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.138 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.139 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !370
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !377
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !365
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !379
@.str.146 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.147 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.148 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.149 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.150 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.151 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.152 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.153 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.154 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.155 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.156 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.157 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.158 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.159 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.162 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.163 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.164 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.165 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.166 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.167 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !384
@.str.1.178 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@obstack_alloc_failed_handler = local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !393
@.str.1.195 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.205 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.208 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !403
@.str.3.209 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.210 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.211 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.212 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.213 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.214 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !811 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !815, metadata !816), !dbg !817
  %2 = icmp eq i32 %0, 0, !dbg !818
  br i1 %2, label %8, label %3, !dbg !820

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !821, !tbaa !824
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !821
  %6 = load i8*, i8** @program_name, align 8, !dbg !821, !tbaa !824
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !828
  br label %39, !dbg !830

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !832
  %10 = load i8*, i8** @program_name, align 8, !dbg !832, !tbaa !824
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !834
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !836
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !836, !tbaa !824
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !837
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !838
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !838, !tbaa !824
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !839
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !840
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !840, !tbaa !824
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !841
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !842
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !842, !tbaa !824
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !843
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !258, metadata !816) #11, !dbg !844
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 0, metadata !258, metadata !816) #11, !dbg !844
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !846
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !847
  %26 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !849
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !269, metadata !816) #11, !dbg !850
  %27 = icmp eq i8* %26, null, !dbg !851
  br i1 %27, label %34, label %28, !dbg !852

; <label>:28:                                     ; preds = %8
  %29 = tail call i32 @strncmp(i8* nonnull %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #13, !dbg !853
  %30 = icmp eq i32 %29, 0, !dbg !853
  br i1 %30, label %34, label %31, !dbg !855

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !857
  %33 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !859
  br label %34, !dbg !861

; <label>:34:                                     ; preds = %8, %28, %31
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !862
  %36 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !863
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !864
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !865
  br label %39

; <label>:39:                                     ; preds = %34, %3
  tail call void @exit(i32 %0) #14, !dbg !866
  unreachable, !dbg !866
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !867 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !872, metadata !816), !dbg !893
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !873, metadata !816), !dbg !894
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !874, metadata !816), !dbg !895
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !876, metadata !816), !dbg !896
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !877, metadata !816), !dbg !897
  %3 = load i8*, i8** %1, align 8, !dbg !898, !tbaa !824
  tail call void @set_program_name(i8* %3) #11, !dbg !899
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #11, !dbg !900
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !901
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !902
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !903
  br label %9, !dbg !904

; <label>:8:                                      ; preds = %12
  br label %9, !dbg !896

; <label>:9:                                      ; preds = %8, %2
  %10 = phi i8 [ 0, %2 ], [ 1, %8 ]
  %11 = phi i32 [ 2, %2 ], [ %13, %8 ]
  br label %12, !dbg !896

; <label>:12:                                     ; preds = %16, %9
  %13 = phi i32 [ %11, %9 ], [ %17, %16 ]
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !876, metadata !816), !dbg !896
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !877, metadata !816), !dbg !897
  %14 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11, !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !875, metadata !816), !dbg !907
  switch i32 %14, label %22 [
    i32 -1, label %23
    i32 98, label %16
    i32 99, label %15
    i32 112, label %8
    i32 -130, label %18
    i32 -131, label %19
  ], !dbg !908

; <label>:15:                                     ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !876, metadata !816), !dbg !896
  br label %16, !dbg !909

; <label>:16:                                     ; preds = %15, %12
  %17 = phi i32 [ 1, %15 ], [ 0, %12 ]
  br label %12, !dbg !896, !llvm.loop !911

; <label>:18:                                     ; preds = %12
  tail call void @usage(i32 0) #15, !dbg !913
  unreachable, !dbg !913

; <label>:19:                                     ; preds = %12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !914, !tbaa !824
  %21 = load i8*, i8** @Version, align 8, !dbg !914, !tbaa !824
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null) #11, !dbg !914
  tail call void @exit(i32 0) #14, !dbg !915
  unreachable, !dbg !914

; <label>:22:                                     ; preds = %12
  tail call void @usage(i32 1) #15, !dbg !917
  unreachable, !dbg !917

; <label>:23:                                     ; preds = %12
  %24 = load i32, i32* @optind, align 4, !dbg !918, !tbaa !919
  %25 = sub nsw i32 %0, %24, !dbg !921
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !872, metadata !816), !dbg !893
  %26 = sext i32 %24 to i64, !dbg !922
  %27 = getelementptr inbounds i8*, i8** %1, i64 %26, !dbg !922
  tail call void @llvm.dbg.value(metadata i8** %27, i64 0, metadata !873, metadata !816), !dbg !894
  %28 = icmp ne i8 %10, 0, !dbg !923
  %29 = icmp ne i32 %13, 2, !dbg !925
  %30 = and i1 %28, %29, !dbg !927
  br i1 %30, label %31, label %33, !dbg !927

; <label>:31:                                     ; preds = %23
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !928
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #11, !dbg !930
  tail call void @usage(i32 1) #15, !dbg !931
  unreachable, !dbg !931

; <label>:33:                                     ; preds = %23
  %34 = xor i1 %28, true, !dbg !932
  %35 = zext i1 %34 to i32, !dbg !932
  %36 = icmp slt i32 %35, %25, !dbg !934
  br i1 %36, label %37, label %48, !dbg !935

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #11, !dbg !936
  %39 = zext i1 %34 to i64, !dbg !938
  %40 = getelementptr inbounds i8*, i8** %27, i64 %39, !dbg !938
  %41 = load i8*, i8** %40, align 8, !dbg !938, !tbaa !824
  %42 = tail call i8* @quote(i8* %41) #11, !dbg !939
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38, i8* %42) #11, !dbg !941
  br i1 %28, label %43, label %47, !dbg !943

; <label>:43:                                     ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !944, !tbaa !824
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !944
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %44, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %45) #11, !dbg !946
  br label %47, !dbg !944

; <label>:47:                                     ; preds = %43, %37
  tail call void @usage(i32 1) #15, !dbg !948
  unreachable, !dbg !948

; <label>:48:                                     ; preds = %33
  br i1 %28, label %49, label %59, !dbg !949

; <label>:49:                                     ; preds = %48
  br label %50, !dbg !950

; <label>:50:                                     ; preds = %49, %50
  %51 = phi i8* [ %55, %50 ], [ getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 0, i64 0), %49 ]
  %52 = tail call i32 @puts(i8* %51), !dbg !950
  %53 = tail call i64 @strlen(i8* %51) #13, !dbg !952
  %54 = add i64 %53, 1, !dbg !953
  %55 = getelementptr inbounds i8, i8* %51, i64 %54, !dbg !954
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !878, metadata !816), !dbg !955
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !878, metadata !816), !dbg !955
  %56 = ptrtoint i8* %55 to i64, !dbg !956
  %57 = sub i64 %56, ptrtoint ([4173 x i8]* @G_line to i64), !dbg !956
  %58 = icmp ult i64 %57, 4173, !dbg !958
  br i1 %58, label %50, label %156, !dbg !959, !llvm.loop !960

; <label>:59:                                     ; preds = %48
  %60 = icmp eq i32 %13, 2, !dbg !963
  br i1 %60, label %61, label %89, !dbg !965

; <label>:61:                                     ; preds = %59
  %62 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #11, !dbg !966
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !971, metadata !816) #11, !dbg !987
  %63 = icmp eq i8* %62, null, !dbg !988
  br i1 %63, label %87, label %64, !dbg !990

; <label>:64:                                     ; preds = %61
  %65 = load i8, i8* %62, align 1, !dbg !991, !tbaa !993
  %66 = icmp eq i8 %65, 0, !dbg !994
  br i1 %66, label %87, label %67, !dbg !995

; <label>:67:                                     ; preds = %64
  %68 = tail call i8* @last_component(i8* nonnull %62) #13, !dbg !997
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !971, metadata !816) #11, !dbg !987
  tail call void @llvm.dbg.value(metadata i64 3, i64 0, metadata !975, metadata !816) #11, !dbg !998
  tail call void @llvm.dbg.value(metadata i8* %68, i64 0, metadata !976, metadata !816) #11, !dbg !999
  %69 = load i8, i8* %68, align 1, !dbg !1000, !tbaa !993
  %70 = icmp eq i8 %69, 99, !dbg !1002
  br i1 %70, label %71, label %83, !dbg !1005

; <label>:71:                                     ; preds = %67
  %72 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !1007
  %73 = load i8, i8* %72, align 1, !dbg !1007, !tbaa !993
  %74 = icmp eq i8 %73, 115, !dbg !1010
  br i1 %74, label %75, label %83, !dbg !1013

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds i8, i8* %68, i64 2, !dbg !1015
  %77 = load i8, i8* %76, align 1, !dbg !1015, !tbaa !993
  %78 = icmp eq i8 %77, 104, !dbg !1018
  br i1 %78, label %79, label %83, !dbg !1021

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds i8, i8* %68, i64 3, !dbg !1023
  %81 = load i8, i8* %80, align 1, !dbg !1023, !tbaa !993
  %82 = icmp eq i8 %81, 0, !dbg !1025
  br i1 %82, label %89, label %83, !dbg !1027

; <label>:83:                                     ; preds = %79, %75, %71, %67
  tail call void @llvm.dbg.value(metadata i64 4, i64 0, metadata !981, metadata !816) #11, !dbg !1029
  %84 = tail call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #11, !dbg !1030
  %85 = icmp eq i32 %84, 0, !dbg !1032
  %86 = zext i1 %85 to i32, !dbg !1034
  br label %89, !dbg !1034

; <label>:87:                                     ; preds = %64, %61
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !1036
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %88) #11, !dbg !1039
  unreachable, !dbg !1036

; <label>:89:                                     ; preds = %83, %79, %59
  %90 = phi i32 [ %13, %59 ], [ %86, %83 ], [ 1, %79 ]
  tail call void @llvm.dbg.value(metadata i32 %90, i64 0, metadata !876, metadata !816), !dbg !896
  %91 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @lsc_obstack, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #11, !dbg !1041
  %92 = icmp eq i32 %25, 0, !dbg !1042
  br i1 %92, label %93, label %95, !dbg !1044

; <label>:93:                                     ; preds = %89
  %94 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* null, i8* null), !dbg !1045
  br i1 %94, label %122, label %157, !dbg !1046

; <label>:95:                                     ; preds = %89
  %96 = load i8*, i8** %27, align 8, !dbg !1047, !tbaa !824
  tail call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1048, metadata !816) #11, !dbg !1061
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1057, metadata !816) #11, !dbg !1063
  tail call void @llvm.dbg.value(metadata i8* %96, i64 0, metadata !1058, metadata !816) #11, !dbg !1064
  %97 = load i8, i8* %96, align 1, !dbg !1065, !tbaa !993
  %98 = icmp eq i8 %97, 45, !dbg !1067
  br i1 %98, label %99, label %103, !dbg !1070

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1072
  %101 = load i8, i8* %100, align 1, !dbg !1072, !tbaa !993
  %102 = icmp eq i8 %101, 0, !dbg !1075
  br i1 %102, label %111, label %103, !dbg !1077

; <label>:103:                                    ; preds = %99, %95
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1079, !tbaa !824
  %105 = tail call %struct._IO_FILE* @freopen_safer(i8* nonnull %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %struct._IO_FILE* %104) #11, !dbg !1081
  %106 = icmp eq %struct._IO_FILE* %105, null, !dbg !1082
  br i1 %106, label %107, label %111, !dbg !1083

; <label>:107:                                    ; preds = %103
  %108 = tail call i32* @__errno_location() #1, !dbg !1085
  %109 = load i32, i32* %108, align 4, !dbg !1085, !tbaa !919
  %110 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %96) #11, !dbg !1087
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %110) #11, !dbg !1089
  br label %157, !dbg !1091

; <label>:111:                                    ; preds = %103, %99
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1092, !tbaa !824
  %113 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %112, i8* nonnull %96) #11, !dbg !1093
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1094, !tbaa !824
  %115 = tail call i32 @rpl_fclose(%struct._IO_FILE* %114) #11, !dbg !1096
  %116 = icmp eq i32 %115, 0, !dbg !1097
  br i1 %116, label %121, label %117, !dbg !1098

; <label>:117:                                    ; preds = %111
  %118 = tail call i32* @__errno_location() #1, !dbg !1099
  %119 = load i32, i32* %118, align 4, !dbg !1099, !tbaa !919
  %120 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %96) #11, !dbg !1101
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %120) #11, !dbg !1103
  br label %157, !dbg !1105

; <label>:121:                                    ; preds = %111
  br i1 %113, label %122, label %157, !dbg !1046

; <label>:122:                                    ; preds = %93, %121
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !885, metadata !816), !dbg !1106
  %123 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1106, !tbaa !1107
  %124 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !1106, !tbaa !1110
  %125 = ptrtoint i8* %123 to i64, !dbg !1106
  %126 = ptrtoint i8* %124 to i64, !dbg !1106
  %127 = sub i64 %125, %126, !dbg !1106
  tail call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !881, metadata !816), !dbg !1111
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !888, metadata !816), !dbg !1112
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !890, metadata !816), !dbg !1112
  %128 = icmp eq i8* %123, %124, !dbg !1113
  br i1 %128, label %129, label %132, !dbg !1112

; <label>:129:                                    ; preds = %122
  %130 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1115
  %131 = or i8 %130, 2, !dbg !1115
  store i8 %131, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1115
  br label %132, !dbg !1115

; <label>:132:                                    ; preds = %129, %122
  %133 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !1117, !tbaa !1119
  %134 = add i64 %133, %125, !dbg !1117
  %135 = xor i64 %133, -1, !dbg !1117
  %136 = and i64 %134, %135, !dbg !1117
  %137 = getelementptr inbounds i8, i8* null, i64 %136, !dbg !1117
  %138 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 1) to i64*), align 8, !dbg !1120, !tbaa !1123
  %139 = ptrtoint i8* %137 to i64, !dbg !1120
  %140 = sub i64 %139, %138, !dbg !1120
  %141 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1120, !tbaa !1124
  %142 = ptrtoint i8* %141 to i64, !dbg !1120
  %143 = sub i64 %142, %138, !dbg !1120
  %144 = icmp ugt i64 %140, %143, !dbg !1120
  %145 = select i1 %144, i8* %141, i8* %137, !dbg !1117
  store i8* %145, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1125
  %146 = ptrtoint i8* %145 to i64, !dbg !1127
  store i64 %146, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2) to i64*), align 8, !dbg !1127, !tbaa !1110
  tail call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !887, metadata !816), !dbg !1129
  %147 = icmp eq i32 %90, 0, !dbg !1130
  %148 = select i1 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), !dbg !1132
  %149 = select i1 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), !dbg !1132
  tail call void @llvm.dbg.value(metadata i8* %149, i64 0, metadata !892, metadata !816), !dbg !1133
  tail call void @llvm.dbg.value(metadata i8* %148, i64 0, metadata !891, metadata !816), !dbg !1134
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1135, !tbaa !824
  %151 = tail call i32 @fputs_unlocked(i8* %148, %struct._IO_FILE* %150) #11, !dbg !1135
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !824
  %153 = tail call i64 @fwrite_unlocked(i8* %124, i64 1, i64 %127, %struct._IO_FILE* %152) #11, !dbg !1136
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !824
  %155 = tail call i32 @fputs_unlocked(i8* %149, %struct._IO_FILE* %154) #11, !dbg !1137
  br label %157, !dbg !1138

; <label>:156:                                    ; preds = %50
  br label %157, !dbg !1139

; <label>:157:                                    ; preds = %156, %93, %121, %107, %117, %132
  %158 = phi i32 [ 0, %132 ], [ 1, %121 ], [ 1, %117 ], [ 1, %107 ], [ 1, %93 ], [ 0, %156 ]
  ret i32 %158, !dbg !1139
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE*, i8*) unnamed_addr #6 !dbg !11 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !81, metadata !816), !dbg !1140
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !82, metadata !816), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !83, metadata !816), !dbg !1142
  %5 = bitcast i8** %3 to i8*, !dbg !1143
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #11, !dbg !1143
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !85, metadata !816), !dbg !1144
  store i8* null, i8** %3, align 8, !dbg !1144, !tbaa !824
  %6 = bitcast i64* %4 to i8*, !dbg !1145
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #11, !dbg !1145
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !86, metadata !816), !dbg !1146
  store i64 0, i64* %4, align 8, !dbg !1146, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !89, metadata !816), !dbg !1148
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !90, metadata !816), !dbg !1149
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #11, !dbg !1150
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !88, metadata !816), !dbg !1151
  %8 = icmp eq i8* %7, null, !dbg !1152
  br i1 %8, label %12, label %9, !dbg !1154

; <label>:9:                                      ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !1155, !tbaa !993
  %11 = icmp eq i8 %10, 0, !dbg !1157
  br i1 %11, label %12, label %13, !dbg !1158

; <label>:12:                                     ; preds = %9, %2
  br label %13, !dbg !1160

; <label>:13:                                     ; preds = %12, %9
  %14 = phi i8* [ %7, %9 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %12 ]
  %15 = icmp eq %struct._IO_FILE* %0, null
  %16 = icmp eq i8* %1, null
  br label %17, !dbg !1142

; <label>:17:                                     ; preds = %13, %252
  %18 = phi i32 [ 3, %13 ], [ %253, %252 ]
  %19 = phi i8 [ 1, %13 ], [ %254, %252 ]
  %20 = phi i8* [ getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 0, i64 0), %13 ], [ %43, %252 ]
  %21 = phi i64 [ 0, %13 ], [ %29, %252 ]
  br label %22, !dbg !1142

; <label>:22:                                     ; preds = %17, %115
  %23 = phi i8 [ %19, %17 ], [ 0, %115 ]
  %24 = phi i8* [ %20, %17 ], [ %43, %115 ]
  %25 = phi i64 [ %21, %17 ], [ %29, %115 ]
  br label %26, !dbg !1142

; <label>:26:                                     ; preds = %112, %22
  %27 = phi i8* [ %24, %22 ], [ %43, %112 ]
  %28 = phi i64 [ %25, %22 ], [ %29, %112 ]
  call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !83, metadata !816), !dbg !1142
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !84, metadata !816), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !88, metadata !816), !dbg !1151
  call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !89, metadata !816), !dbg !1148
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !90, metadata !816), !dbg !1149
  %29 = add i64 %28, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !83, metadata !816), !dbg !1142
  br i1 %15, label %35, label %30, !dbg !1163

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !85, metadata !1164), !dbg !1144
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !86, metadata !1164), !dbg !1146
  call void @llvm.dbg.value(metadata i8** %3, i64 0, metadata !1165, metadata !816) #11, !dbg !1174
  call void @llvm.dbg.value(metadata i64* %4, i64 0, metadata !1172, metadata !816) #11, !dbg !1179
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1173, metadata !816) #11, !dbg !1180
  %31 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* nonnull %0) #11, !dbg !1181
  %32 = icmp slt i64 %31, 1, !dbg !1182
  %33 = load i8*, i8** %3, align 8, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !85, metadata !816), !dbg !1144
  br i1 %32, label %34, label %41, !dbg !1183

; <label>:34:                                     ; preds = %30
  call void @free(i8* %33) #11, !dbg !1184
  br label %256, !dbg !1186

; <label>:35:                                     ; preds = %26
  %36 = icmp eq i8* %27, getelementptr inbounds ([4173 x i8], [4173 x i8]* @G_line, i64 1, i64 0), !dbg !1187
  br i1 %36, label %255, label %37, !dbg !1190

; <label>:37:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %27, i64 0, metadata !87, metadata !816), !dbg !1191
  %38 = call i64 @strlen(i8* %27) #13, !dbg !1192
  %39 = add i64 %38, 1, !dbg !1193
  %40 = getelementptr inbounds i8, i8* %27, i64 %39, !dbg !1194
  call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !84, metadata !816), !dbg !1161
  br label %41

; <label>:41:                                     ; preds = %30, %37
  %42 = phi i8* [ %27, %37 ], [ %33, %30 ]
  %43 = phi i8* [ %40, %37 ], [ %27, %30 ]
  call void @llvm.dbg.value(metadata i8* %43, i64 0, metadata !84, metadata !816), !dbg !1161
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !87, metadata !816), !dbg !1191
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1195, metadata !816) #11, !dbg !1205
  call void @llvm.dbg.value(metadata i8* %42, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %44 = tail call i16** @__ctype_b_loc() #1, !dbg !1208
  %45 = load i16*, i16** %44, align 8, !tbaa !824
  br label %46, !dbg !1212

; <label>:46:                                     ; preds = %46, %41
  %47 = phi i8* [ %42, %41 ], [ %54, %46 ]
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %48 = load i8, i8* %47, align 1, !dbg !1208, !tbaa !993
  %49 = zext i8 %48 to i64, !dbg !1208
  %50 = getelementptr inbounds i16, i16* %45, i64 %49, !dbg !1208
  %51 = load i16, i16* %50, align 2, !dbg !1208, !tbaa !1213
  %52 = and i16 %51, 8192, !dbg !1208
  %53 = icmp eq i16 %52, 0, !dbg !1215
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1217
  call void @llvm.dbg.value(metadata i8* %54, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  br i1 %53, label %55, label %46, !dbg !1215, !llvm.loop !1219

; <label>:55:                                     ; preds = %46
  switch i8 %48, label %56 [
    i8 0, label %112
    i8 35, label %112
  ], !dbg !1222

; <label>:56:                                     ; preds = %55
  br label %57, !dbg !1224

; <label>:57:                                     ; preds = %56, %57
  %58 = phi i8* [ %59, %57 ], [ %47, %56 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1224
  %60 = load i8, i8* %59, align 1, !tbaa !993
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %45, i64 %61
  %63 = load i16, i16* %62, align 2, !tbaa !1213
  call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %64 = and i16 %63, 8192, !dbg !1226
  %65 = icmp ne i16 %64, 0, !dbg !1226
  %66 = icmp eq i8 %60, 0, !dbg !1228
  %67 = or i1 %66, %65, !dbg !1230
  br i1 %67, label %68, label %57, !dbg !1230, !llvm.loop !1231

; <label>:68:                                     ; preds = %57
  %69 = ptrtoint i8* %59 to i64, !dbg !1234
  %70 = ptrtoint i8* %47 to i64, !dbg !1234
  %71 = sub i64 %69, %70, !dbg !1234
  %72 = call i8* @xstrndup(i8* %47, i64 %71) #11, !dbg !1235
  %73 = load i8, i8* %59, align 1, !dbg !1236, !tbaa !993
  %74 = icmp eq i8 %73, 0, !dbg !1238
  br i1 %74, label %109, label %75, !dbg !1239, !llvm.loop !1240

; <label>:75:                                     ; preds = %68
  %76 = load i16*, i16** %44, align 8, !tbaa !824
  br label %77, !dbg !1207

; <label>:77:                                     ; preds = %77, %75
  %78 = phi i8* [ %79, %77 ], [ %59, %75 ]
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %80 = load i8, i8* %79, align 1, !dbg !1245, !tbaa !993
  %81 = zext i8 %80 to i64, !dbg !1245
  %82 = getelementptr inbounds i16, i16* %76, i64 %81, !dbg !1245
  %83 = load i16, i16* %82, align 2, !dbg !1245, !tbaa !1213
  %84 = and i16 %83, 8192, !dbg !1245
  %85 = icmp eq i16 %84, 0, !dbg !1246
  br i1 %85, label %86, label %77, !dbg !1246, !llvm.loop !1240

; <label>:86:                                     ; preds = %77
  switch i8 %80, label %87 [
    i8 0, label %109
    i8 35, label %109
  ], !dbg !1248

; <label>:87:                                     ; preds = %86
  br label %88, !dbg !1207

; <label>:88:                                     ; preds = %87, %92
  %89 = phi i8 [ %94, %92 ], [ %80, %87 ], !dbg !1250
  %90 = phi i8* [ %93, %92 ], [ %79, %87 ]
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  switch i8 %89, label %92 [
    i8 35, label %91
    i8 0, label %91
  ], !dbg !1251

; <label>:91:                                     ; preds = %88, %88
  br label %95

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !1253
  call void @llvm.dbg.value(metadata i8* %93, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %94 = load i8, i8* %93, align 1, !tbaa !993
  br label %88, !dbg !1254, !llvm.loop !1256

; <label>:95:                                     ; preds = %91, %95
  %96 = phi i8* [ %97, %95 ], [ %90, %91 ]
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !1202, metadata !816) #11, !dbg !1207
  %98 = load i8, i8* %97, align 1, !dbg !1259, !tbaa !993
  %99 = zext i8 %98 to i64, !dbg !1259
  %100 = getelementptr inbounds i16, i16* %76, i64 %99, !dbg !1259
  %101 = load i16, i16* %100, align 2, !dbg !1259, !tbaa !1213
  %102 = and i16 %101, 8192, !dbg !1259
  %103 = icmp eq i16 %102, 0, !dbg !1263
  br i1 %103, label %104, label %95, !dbg !1263, !llvm.loop !1265

; <label>:104:                                    ; preds = %95
  %105 = ptrtoint i8* %96 to i64, !dbg !1268
  %106 = ptrtoint i8* %79 to i64, !dbg !1268
  %107 = sub i64 %105, %106, !dbg !1268
  %108 = call i8* @xstrndup(i8* %79, i64 %107) #11, !dbg !1269
  br label %109, !dbg !1270

; <label>:109:                                    ; preds = %68, %86, %86, %104
  %110 = phi i8* [ null, %68 ], [ %108, %104 ], [ null, %86 ], [ null, %86 ]
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  %111 = icmp eq i8* %72, null, !dbg !1272
  br i1 %111, label %112, label %113, !dbg !1274

; <label>:112:                                    ; preds = %109, %55, %55
  br label %26, !dbg !1142, !llvm.loop !1275

; <label>:113:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !816), !dbg !1278
  %114 = icmp eq i8* %110, null, !dbg !1279
  br i1 %114, label %115, label %118, !dbg !1281

; <label>:115:                                    ; preds = %113
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1282
  %117 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11, !dbg !1284
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %116, i8* %117, i64 %29) #11, !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !89, metadata !816), !dbg !1148
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  call void @free(i8* nonnull %72) #11, !dbg !1287
  br label %22, !dbg !1288, !llvm.loop !1275

; <label>:118:                                    ; preds = %113
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !94, metadata !816), !dbg !1289
  %119 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #13, !dbg !1290
  %120 = icmp eq i32 %119, 0, !dbg !1291
  br i1 %120, label %121, label %127, !dbg !1292

; <label>:121:                                    ; preds = %118
  %122 = call i32 @fnmatch(i8* nonnull %110, i8* %14, i32 0) #11, !dbg !1293
  %123 = icmp eq i32 %122, 0, !dbg !1296
  br i1 %123, label %252, label %124, !dbg !1297

; <label>:124:                                    ; preds = %121
  %125 = icmp eq i32 %18, 2, !dbg !1298
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !90, metadata !816), !dbg !1149
  %126 = select i1 %125, i32 2, i32 0, !dbg !1300
  br label %252, !dbg !1300

; <label>:127:                                    ; preds = %118
  %128 = icmp eq i32 %18, 2, !dbg !1301
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !90, metadata !816), !dbg !1149
  %129 = select i1 %128, i32 1, i32 %18, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !90, metadata !816), !dbg !1149
  %130 = icmp eq i32 %129, 0, !dbg !1304
  br i1 %130, label %252, label %131, !dbg !1305

; <label>:131:                                    ; preds = %127
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  %132 = load i8, i8* %72, align 1, !dbg !1306, !tbaa !993
  switch i8 %132, label %180 [
    i8 46, label %133
    i8 42, label %161
  ], !dbg !1307

; <label>:133:                                    ; preds = %131
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !95, metadata !816), !dbg !1308
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !154, metadata !816), !dbg !1309
  %134 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1309, !tbaa !1124
  %135 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1309, !tbaa !1107
  %136 = icmp eq i64 %134, %135, !dbg !1310
  %137 = inttoptr i64 %135 to i8*, !dbg !1308
  br i1 %136, label %138, label %140, !dbg !1308

; <label>:138:                                    ; preds = %133
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1311
  %139 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %140, !dbg !1311

; <label>:140:                                    ; preds = %138, %133
  %141 = phi i8* [ %139, %138 ], [ %137, %133 ], !dbg !1313
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !1313
  store i8* %142, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1313, !tbaa !1107
  store i8 42, i8* %141, align 1, !dbg !1313, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1315
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !159, metadata !816), !dbg !1316
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !161, metadata !816), !dbg !1317
  %143 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1317, !tbaa !1124
  %144 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1317, !tbaa !1107
  %145 = icmp eq i64 %143, %144, !dbg !1318
  %146 = inttoptr i64 %144 to i8*, !dbg !1316
  br i1 %145, label %147, label %149, !dbg !1316

; <label>:147:                                    ; preds = %140
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1319
  %148 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %149, !dbg !1319

; <label>:149:                                    ; preds = %147, %140
  %150 = phi i8* [ %148, %147 ], [ %146, %140 ], !dbg !1321
  %151 = getelementptr inbounds i8, i8* %150, i64 1, !dbg !1321
  store i8* %151, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1321, !tbaa !1107
  store i8 61, i8* %150, align 1, !dbg !1321, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !816), !dbg !1278
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1323
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !164, metadata !816), !dbg !1324
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !166, metadata !816), !dbg !1325
  %152 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1325, !tbaa !1124
  %153 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1325, !tbaa !1107
  %154 = icmp eq i64 %152, %153, !dbg !1326
  %155 = inttoptr i64 %153 to i8*, !dbg !1324
  br i1 %154, label %156, label %158, !dbg !1324

; <label>:156:                                    ; preds = %149
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1327
  %157 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %158, !dbg !1327

; <label>:158:                                    ; preds = %156, %149
  %159 = phi i8* [ %157, %156 ], [ %155, %149 ], !dbg !1329
  %160 = getelementptr inbounds i8, i8* %159, i64 1, !dbg !1329
  store i8* %160, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1329, !tbaa !1107
  store i8 58, i8* %159, align 1, !dbg !1329, !tbaa !993
  br label %252, !dbg !1331

; <label>:161:                                    ; preds = %131
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1332
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !169, metadata !816), !dbg !1333
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !173, metadata !816), !dbg !1334
  %162 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1334, !tbaa !1124
  %163 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1334, !tbaa !1107
  %164 = icmp eq i64 %162, %163, !dbg !1335
  %165 = inttoptr i64 %163 to i8*, !dbg !1333
  br i1 %164, label %166, label %168, !dbg !1333

; <label>:166:                                    ; preds = %161
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1336
  %167 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %168, !dbg !1336

; <label>:168:                                    ; preds = %166, %161
  %169 = phi i8* [ %167, %166 ], [ %165, %161 ], !dbg !1338
  %170 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1338
  store i8* %170, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1338, !tbaa !1107
  store i8 61, i8* %169, align 1, !dbg !1338, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !816), !dbg !1278
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1340
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !176, metadata !816), !dbg !1341
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !178, metadata !816), !dbg !1342
  %171 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1342, !tbaa !1124
  %172 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1342, !tbaa !1107
  %173 = icmp eq i64 %171, %172, !dbg !1343
  %174 = inttoptr i64 %172 to i8*, !dbg !1341
  br i1 %173, label %175, label %177, !dbg !1341

; <label>:175:                                    ; preds = %168
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1344
  %176 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %177, !dbg !1344

; <label>:177:                                    ; preds = %175, %168
  %178 = phi i8* [ %176, %175 ], [ %174, %168 ], !dbg !1346
  %179 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !1346
  store i8* %179, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1346, !tbaa !1107
  store i8 58, i8* %178, align 1, !dbg !1346, !tbaa !993
  br label %252, !dbg !1348

; <label>:180:                                    ; preds = %131
  %181 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #13, !dbg !1349
  %182 = icmp eq i32 %181, 0, !dbg !1350
  br i1 %182, label %252, label %183, !dbg !1351

; <label>:183:                                    ; preds = %180
  %184 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #13, !dbg !1352
  %185 = icmp eq i32 %184, 0, !dbg !1354
  br i1 %185, label %252, label %186, !dbg !1355

; <label>:186:                                    ; preds = %183
  %187 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #13, !dbg !1356
  %188 = icmp eq i32 %187, 0, !dbg !1357
  br i1 %188, label %252, label %189, !dbg !1358

; <label>:189:                                    ; preds = %186
  br label %192, !dbg !1360

; <label>:190:                                    ; preds = %192
  %191 = icmp eq i64 %198, 37, !dbg !1364
  br i1 %191, label %241, label %192, !dbg !1364, !llvm.loop !1366

; <label>:192:                                    ; preds = %189, %190
  %193 = phi i64 [ %198, %190 ], [ 0, %189 ]
  %194 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %193, !dbg !1360
  %195 = load i8*, i8** %194, align 8, !dbg !1360, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  %196 = call i32 @c_strcasecmp(i8* nonnull %72, i8* %195) #13, !dbg !1369
  %197 = icmp eq i32 %196, 0, !dbg !1371
  %198 = add nuw nsw i64 %193, 1, !dbg !1372
  br i1 %197, label %199, label %190, !dbg !1374

; <label>:199:                                    ; preds = %192
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !184, metadata !816), !dbg !1375
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !189, metadata !816), !dbg !1376
  %200 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1377, !tbaa !1124
  %201 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1377, !tbaa !1107
  %202 = icmp eq i64 %200, %201, !dbg !1379
  %203 = inttoptr i64 %201 to i8*, !dbg !1381
  br i1 %202, label %204, label %206, !dbg !1381

; <label>:204:                                    ; preds = %199
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1383
  %205 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %206, !dbg !1383

; <label>:206:                                    ; preds = %204, %199
  %207 = phi i8* [ %205, %204 ], [ %203, %199 ], !dbg !1385
  %208 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %193, !dbg !1385
  %209 = load i8*, i8** %208, align 8, !dbg !1385, !tbaa !824
  %210 = load i8, i8* %209, align 1, !dbg !1385, !tbaa !993
  %211 = getelementptr inbounds i8, i8* %207, i64 1, !dbg !1385
  store i8* %211, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1385, !tbaa !1107
  store i8 %210, i8* %207, align 1, !dbg !1385, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !192, metadata !816), !dbg !1387
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !194, metadata !816), !dbg !1388
  %212 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1389, !tbaa !1124
  %213 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1389, !tbaa !1107
  %214 = icmp eq i64 %212, %213, !dbg !1391
  %215 = inttoptr i64 %213 to i8*, !dbg !1393
  br i1 %214, label %216, label %218, !dbg !1393

; <label>:216:                                    ; preds = %206
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1395
  %217 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %218, !dbg !1395

; <label>:218:                                    ; preds = %216, %206
  %219 = phi i8* [ %217, %216 ], [ %215, %206 ], !dbg !1397
  %220 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !1397
  %221 = load i8, i8* %220, align 1, !dbg !1397, !tbaa !993
  %222 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !1397
  store i8* %222, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1397, !tbaa !1107
  store i8 %221, i8* %219, align 1, !dbg !1397, !tbaa !993
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !197, metadata !816), !dbg !1399
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !199, metadata !816), !dbg !1400
  %223 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1400, !tbaa !1124
  %224 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1400, !tbaa !1107
  %225 = icmp eq i64 %223, %224, !dbg !1401
  %226 = inttoptr i64 %224 to i8*, !dbg !1399
  br i1 %225, label %227, label %229, !dbg !1399

; <label>:227:                                    ; preds = %218
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1402
  %228 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %229, !dbg !1402

; <label>:229:                                    ; preds = %227, %218
  %230 = phi i8* [ %228, %227 ], [ %226, %218 ], !dbg !1404
  %231 = getelementptr inbounds i8, i8* %230, i64 1, !dbg !1404
  store i8* %231, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1404, !tbaa !1107
  store i8 61, i8* %230, align 1, !dbg !1404, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !816), !dbg !1278
  call fastcc void @append_quoted(i8* nonnull %110), !dbg !1406
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !202, metadata !816), !dbg !1407
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !204, metadata !816), !dbg !1408
  %232 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1408, !tbaa !1124
  %233 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1408, !tbaa !1107
  %234 = icmp eq i64 %232, %233, !dbg !1409
  %235 = inttoptr i64 %233 to i8*, !dbg !1407
  br i1 %234, label %236, label %238, !dbg !1407

; <label>:236:                                    ; preds = %229
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1410
  %237 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %238, !dbg !1410

; <label>:238:                                    ; preds = %236, %229
  %239 = phi i8* [ %237, %236 ], [ %235, %229 ], !dbg !1412
  %240 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1412
  store i8* %240, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1412, !tbaa !1107
  store i8 58, i8* %239, align 1, !dbg !1412, !tbaa !993
  br label %252, !dbg !1414

; <label>:241:                                    ; preds = %190
  call void @llvm.dbg.value(metadata i32 %129, i64 0, metadata !90, metadata !816), !dbg !1149
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !94, metadata !816), !dbg !1289
  %242 = add i32 %129, -1, !dbg !1415
  %243 = icmp ult i32 %242, 2, !dbg !1415
  br i1 %243, label %244, label %252, !dbg !1418

; <label>:244:                                    ; preds = %241
  %245 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #11, !dbg !1419
  br i1 %16, label %248, label %246, !dbg !1421

; <label>:246:                                    ; preds = %244
  %247 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %1) #11, !dbg !1422
  br label %250, !dbg !1424

; <label>:248:                                    ; preds = %244
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 5) #11, !dbg !1425
  br label %250, !dbg !1427

; <label>:250:                                    ; preds = %248, %246
  %251 = phi i8* [ %247, %246 ], [ %249, %248 ], !dbg !1428
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %245, i8* %251, i64 %29, i8* nonnull %72) #11, !dbg !1430
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !89, metadata !816), !dbg !1148
  br label %252, !dbg !1431

; <label>:252:                                    ; preds = %127, %238, %124, %121, %186, %183, %180, %177, %158, %241, %250
  %253 = phi i32 [ %129, %250 ], [ %129, %241 ], [ 0, %127 ], [ %129, %238 ], [ %126, %124 ], [ 2, %121 ], [ %129, %186 ], [ %129, %183 ], [ %129, %180 ], [ %129, %177 ], [ %129, %158 ]
  %254 = phi i8 [ 0, %250 ], [ %23, %241 ], [ %23, %127 ], [ %23, %238 ], [ %23, %124 ], [ %23, %121 ], [ %23, %186 ], [ %23, %183 ], [ %23, %180 ], [ %23, %177 ], [ %23, %158 ]
  call void @llvm.dbg.value(metadata i8 %254, i64 0, metadata !89, metadata !816), !dbg !1148
  call void @llvm.dbg.value(metadata i8* %72, i64 0, metadata !91, metadata !816), !dbg !1271
  call void @free(i8* %72) #11, !dbg !1432
  call void @llvm.dbg.value(metadata i8* %110, i64 0, metadata !93, metadata !816), !dbg !1278
  call void @free(i8* %110) #11, !dbg !1433
  br label %17, !dbg !1277

; <label>:255:                                    ; preds = %35
  br label %256, !dbg !1148

; <label>:256:                                    ; preds = %255, %34
  call void @llvm.dbg.value(metadata i8 %23, i64 0, metadata !89, metadata !816), !dbg !1148
  call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !90, metadata !816), !dbg !1149
  %257 = and i8 %23, 1, !dbg !1434
  %258 = icmp ne i8 %257, 0, !dbg !1434
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #11, !dbg !1435
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #11, !dbg !1435
  ret i1 %258, !dbg !1436
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #7

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #7

declare i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @append_quoted(i8* nocapture readonly) unnamed_addr #6 !dbg !1437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1439, metadata !816), !dbg !1469
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1440, metadata !816), !dbg !1470
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1439, metadata !816), !dbg !1469
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1440, metadata !816), !dbg !1470
  %2 = load i8, i8* %0, align 1, !dbg !1471, !tbaa !993
  %3 = icmp eq i8 %2, 0, !dbg !1473
  br i1 %3, label %70, label %4, !dbg !1474

; <label>:4:                                      ; preds = %1
  br label %5, !dbg !1471

; <label>:5:                                      ; preds = %4, %62
  %6 = phi i8 [ %67, %62 ], [ %2, %4 ]
  %7 = phi i8* [ %66, %62 ], [ %0, %4 ]
  %8 = phi i8 [ %55, %62 ], [ 1, %4 ]
  %9 = sext i8 %6 to i32, !dbg !1471
  switch i32 %9, label %54 [
    i32 39, label %10
    i32 92, label %38
    i32 94, label %38
    i32 58, label %41
    i32 61, label %41
  ], !dbg !1475

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1441, metadata !816), !dbg !1476
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1445, metadata !816), !dbg !1477
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1477, !tbaa !1124
  %12 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1477, !tbaa !1107
  %13 = icmp eq i64 %11, %12, !dbg !1478
  %14 = inttoptr i64 %12 to i8*, !dbg !1476
  br i1 %13, label %15, label %17, !dbg !1476

; <label>:15:                                     ; preds = %10
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1479
  %16 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %17, !dbg !1479

; <label>:17:                                     ; preds = %15, %10
  %18 = phi i8* [ %16, %15 ], [ %14, %10 ], !dbg !1481
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !1481
  store i8* %19, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1481, !tbaa !1107
  store i8 39, i8* %18, align 1, !dbg !1481, !tbaa !993
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1448, metadata !816), !dbg !1483
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1450, metadata !816), !dbg !1484
  %20 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1484, !tbaa !1124
  %21 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1484, !tbaa !1107
  %22 = icmp eq i64 %20, %21, !dbg !1485
  %23 = inttoptr i64 %21 to i8*, !dbg !1483
  br i1 %22, label %24, label %26, !dbg !1483

; <label>:24:                                     ; preds = %17
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1486
  %25 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %26, !dbg !1486

; <label>:26:                                     ; preds = %24, %17
  %27 = phi i8* [ %25, %24 ], [ %23, %17 ], !dbg !1488
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1488
  store i8* %28, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1488, !tbaa !1107
  store i8 92, i8* %27, align 1, !dbg !1488, !tbaa !993
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1453, metadata !816), !dbg !1490
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1455, metadata !816), !dbg !1491
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1491, !tbaa !1124
  %30 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1491, !tbaa !1107
  %31 = icmp eq i64 %29, %30, !dbg !1492
  %32 = inttoptr i64 %30 to i8*, !dbg !1490
  br i1 %31, label %33, label %35, !dbg !1490

; <label>:33:                                     ; preds = %26
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1493
  %34 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %35, !dbg !1493

; <label>:35:                                     ; preds = %33, %26
  %36 = phi i8* [ %34, %33 ], [ %32, %26 ], !dbg !1495
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1495
  store i8* %37, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1495, !tbaa !1107
  store i8 39, i8* %36, align 1, !dbg !1495, !tbaa !993
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1440, metadata !816), !dbg !1470
  br label %54, !dbg !1497

; <label>:38:                                     ; preds = %5, %5
  %39 = and i8 %8, 1, !dbg !1498
  %40 = xor i8 %39, 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !1440, metadata !816), !dbg !1470
  br label %54, !dbg !1500

; <label>:41:                                     ; preds = %5, %5
  %42 = and i8 %8, 1, !dbg !1501
  %43 = icmp eq i8 %42, 0, !dbg !1501
  br i1 %43, label %54, label %44, !dbg !1502

; <label>:44:                                     ; preds = %41
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1458, metadata !816), !dbg !1503
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1461, metadata !816), !dbg !1504
  %45 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1504, !tbaa !1124
  %46 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1504, !tbaa !1107
  %47 = icmp eq i64 %45, %46, !dbg !1505
  %48 = inttoptr i64 %46 to i8*, !dbg !1503
  br i1 %47, label %49, label %51, !dbg !1503

; <label>:49:                                     ; preds = %44
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1506
  %50 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %51, !dbg !1506

; <label>:51:                                     ; preds = %49, %44
  %52 = phi i8* [ %50, %49 ], [ %48, %44 ], !dbg !1508
  %53 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1508
  store i8* %53, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1508, !tbaa !1107
  store i8 92, i8* %52, align 1, !dbg !1508, !tbaa !993
  br label %54, !dbg !1510

; <label>:54:                                     ; preds = %5, %51, %41, %38, %35
  %55 = phi i8 [ %40, %38 ], [ 1, %35 ], [ 1, %41 ], [ 1, %51 ], [ 1, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !1440, metadata !816), !dbg !1470
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1464, metadata !816), !dbg !1512
  tail call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, i64 0, metadata !1466, metadata !816), !dbg !1513
  %56 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1513, !tbaa !1124
  %57 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1513, !tbaa !1107
  %58 = icmp eq i64 %56, %57, !dbg !1514
  %59 = inttoptr i64 %57 to i8*, !dbg !1512
  br i1 %58, label %60, label %62, !dbg !1512

; <label>:60:                                     ; preds = %54
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #11, !dbg !1515
  %61 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !tbaa !1107
  br label %62, !dbg !1515

; <label>:62:                                     ; preds = %60, %54
  %63 = phi i8* [ %61, %60 ], [ %59, %54 ], !dbg !1517
  %64 = load i8, i8* %7, align 1, !dbg !1517, !tbaa !993
  %65 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1517
  store i8* %65, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1517, !tbaa !1107
  store i8 %64, i8* %63, align 1, !dbg !1517, !tbaa !993
  %66 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1519
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1439, metadata !816), !dbg !1469
  tail call void @llvm.dbg.value(metadata i8* %66, i64 0, metadata !1439, metadata !816), !dbg !1469
  tail call void @llvm.dbg.value(metadata i8 %55, i64 0, metadata !1440, metadata !816), !dbg !1470
  %67 = load i8, i8* %66, align 1, !dbg !1471, !tbaa !993
  %68 = icmp eq i8 %67, 0, !dbg !1473
  br i1 %68, label %69, label %5, !dbg !1474, !llvm.loop !1520

; <label>:69:                                     ; preds = %62
  br label %70, !dbg !1523

; <label>:70:                                     ; preds = %69, %1
  ret void, !dbg !1523
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @c_strcasecmp(i8* readonly, i8* readonly) local_unnamed_addr #9 !dbg !1524 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1529, metadata !816), !dbg !1535
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1530, metadata !816), !dbg !1536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1531, metadata !816), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1532, metadata !816), !dbg !1538
  %3 = icmp eq i8* %0, %1, !dbg !1539
  br i1 %3, label %34, label %4, !dbg !1541, !llvm.loop !1542

; <label>:4:                                      ; preds = %2
  br label %5, !dbg !1537

; <label>:5:                                      ; preds = %4, %24
  %6 = phi i8* [ %26, %24 ], [ %1, %4 ]
  %7 = phi i8* [ %25, %24 ], [ %0, %4 ]
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1531, metadata !816), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1532, metadata !816), !dbg !1538
  %8 = load i8, i8* %7, align 1, !dbg !1545, !tbaa !993
  %9 = zext i8 %8 to i32, !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1547, metadata !816), !dbg !1553
  %10 = add nsw i32 %9, -65, !dbg !1555
  %11 = icmp ult i32 %10, 26, !dbg !1555
  %12 = add nuw nsw i32 %9, 32, !dbg !1556
  %13 = select i1 %11, i32 %12, i32 %9, !dbg !1555
  %14 = load i8, i8* %6, align 1, !dbg !1558, !tbaa !993
  %15 = zext i8 %14 to i32, !dbg !1558
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !1547, metadata !816), !dbg !1559
  %16 = add nsw i32 %15, -65, !dbg !1561
  %17 = icmp ult i32 %16, 26, !dbg !1561
  %18 = add nuw nsw i32 %15, 32, !dbg !1562
  %19 = select i1 %17, i32 %18, i32 %15, !dbg !1561
  %20 = and i32 %13, 255, !dbg !1563
  %21 = icmp eq i32 %20, 0, !dbg !1565
  br i1 %21, label %22, label %24, !dbg !1566

; <label>:22:                                     ; preds = %5
  %23 = and i32 %19, 255, !dbg !1567
  br label %30, !dbg !1566

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1569
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1531, metadata !816), !dbg !1537
  %26 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1570
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !1532, metadata !816), !dbg !1538
  %27 = and i32 %19, 255, !dbg !1571
  %28 = icmp eq i32 %20, %27, !dbg !1572
  br i1 %28, label %5, label %29, !dbg !1573, !llvm.loop !1542

; <label>:29:                                     ; preds = %24
  br label %30, !dbg !1575

; <label>:30:                                     ; preds = %29, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %29 ], !dbg !1567
  %32 = phi i32 [ 0, %22 ], [ %20, %29 ]
  %33 = sub nsw i32 %32, %31, !dbg !1575
  br label %34, !dbg !1576

; <label>:34:                                     ; preds = %2, %30
  %35 = phi i32 [ %33, %30 ], [ 0, %2 ]
  ret i32 %35, !dbg !1577
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1578 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1580, metadata !816), !dbg !1581
  store i8* %0, i8** @file_name, align 8, !dbg !1582, !tbaa !824
  ret void, !dbg !1583
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1584 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1588, metadata !1589), !dbg !1590
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1591, !tbaa !1592
  ret void, !dbg !1594
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1595 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1600, !tbaa !824
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1601
  %3 = icmp eq i32 %2, 0, !dbg !1602
  br i1 %3, label %21, label %4, !dbg !1603

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1604, !tbaa !1592, !range !1606
  %6 = icmp eq i8 %5, 0, !dbg !1604
  %7 = tail call i32* @__errno_location() #1, !dbg !1607
  br i1 %6, label %11, label %8, !dbg !1609

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1610, !tbaa !919
  %10 = icmp eq i32 %9, 32, !dbg !1612
  br i1 %10, label %21, label %11, !dbg !1613

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #11, !dbg !1615
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1597, metadata !816), !dbg !1616
  %13 = load i8*, i8** @file_name, align 8, !dbg !1617, !tbaa !824
  %14 = icmp eq i8* %13, null, !dbg !1617
  %15 = load i32, i32* %7, align 4, !tbaa !919
  br i1 %14, label %18, label %16, !dbg !1618

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1619
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.28, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1621
  br label %19, !dbg !1623

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.29, i64 0, i64 0), i8* %12) #11, !dbg !1624
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1625, !tbaa !919
  tail call void @_exit(i32 %20) #14, !dbg !1626
  unreachable, !dbg !1626

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1627, !tbaa !824
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1629
  %24 = icmp eq i32 %23, 0, !dbg !1630
  br i1 %24, label %27, label %25, !dbg !1631

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1632, !tbaa !919
  tail call void @_exit(i32 %26) #14, !dbg !1633
  unreachable, !dbg !1633

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1634
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #9 !dbg !1635 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1640, metadata !816), !dbg !1644
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1641, metadata !816), !dbg !1645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1643, metadata !816), !dbg !1646
  br label %2, !dbg !1647

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1641, metadata !816), !dbg !1645
  %4 = load i8, i8* %3, align 1, !dbg !1648, !tbaa !993
  %5 = icmp eq i8 %4, 47, !dbg !1648
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1650
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1641, metadata !816), !dbg !1645
  br i1 %5, label %2, label %7, !dbg !1651, !llvm.loop !1652

; <label>:7:                                      ; preds = %2
  br label %8, !dbg !1646

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ], !dbg !1653
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !1643, metadata !816), !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1642, metadata !816), !dbg !1657
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1641, metadata !816), !dbg !1645
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ], !dbg !1658

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1, !dbg !1660
  %15 = icmp eq i8 %14, 0, !dbg !1660
  tail call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !1641, metadata !816), !dbg !1645
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1643, metadata !816), !dbg !1646
  %16 = select i1 %15, i8* %10, i8* %11, !dbg !1664
  %17 = select i1 %15, i8 %12, i8 0, !dbg !1664
  br label %18, !dbg !1664

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  tail call void @llvm.dbg.value(metadata i8 %20, i64 0, metadata !1643, metadata !816), !dbg !1646
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !1641, metadata !816), !dbg !1645
  %21 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1665
  tail call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1642, metadata !816), !dbg !1657
  %22 = load i8, i8* %21, align 1, !tbaa !993
  br label %8, !dbg !1667, !llvm.loop !1668

; <label>:23:                                     ; preds = %8
  ret i8* %10, !dbg !1671
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #9 !dbg !1672 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1676, metadata !816), !dbg !1679
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1678, metadata !816), !dbg !1680
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !1681
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1677, metadata !816), !dbg !1683
  br label %3, !dbg !1684

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1677, metadata !816), !dbg !1683
  %5 = icmp ugt i64 %4, 1, !dbg !1685
  br i1 %5, label %6, label %11, !dbg !1688

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1, !dbg !1689
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1689
  %9 = load i8, i8* %8, align 1, !dbg !1689, !tbaa !993
  %10 = icmp eq i8 %9, 47, !dbg !1689
  br i1 %10, label %3, label %11, !dbg !1691, !llvm.loop !1693

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4, !dbg !1696
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1697 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1742, metadata !816), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1743, metadata !816), !dbg !1750
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1744, metadata !816), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1745, metadata !816), !dbg !1752
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1746, metadata !816), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1747, metadata !816), !dbg !1754
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #11, !dbg !1755
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1756

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #11, !dbg !1757
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1747, metadata !816), !dbg !1754
  %7 = icmp ne i32 %6, 2, !dbg !1760
  %8 = zext i1 %7 to i8, !dbg !1760
  br label %9, !dbg !1760

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1747, metadata !816), !dbg !1754
  %11 = tail call i32 @dup2(i32 1, i32 1) #11, !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1746, metadata !816), !dbg !1753
  %12 = icmp ne i32 %11, 1, !dbg !1763
  %13 = zext i1 %12 to i8, !dbg !1763
  br label %14, !dbg !1763

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1747, metadata !816), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1746, metadata !816), !dbg !1753
  %17 = tail call i32 @dup2(i32 0, i32 0) #11, !dbg !1764
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1745, metadata !816), !dbg !1752
  %18 = icmp eq i32 %17, 0, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1747, metadata !816), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1746, metadata !816), !dbg !1753
  br i1 %18, label %27, label %19, !dbg !1767

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1769, metadata !816) #11, !dbg !1775
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i32 0) #11, !dbg !1778
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !1774, metadata !816) #11, !dbg !1779
  %21 = icmp eq i32 %20, 0, !dbg !1780
  br i1 %21, label %27, label %22, !dbg !1782

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1783
  br i1 %23, label %24, label %54, !dbg !1786

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #11, !dbg !1787
  %26 = tail call i32* @__errno_location() #1, !dbg !1789
  store i32 9, i32* %26, align 4, !dbg !1790, !tbaa !919
  br label %54, !dbg !1791

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1792
  br i1 %29, label %38, label %30, !dbg !1794

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1769, metadata !816) #11, !dbg !1795
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i32 0) #11, !dbg !1798
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !1774, metadata !816) #11, !dbg !1799
  %32 = icmp eq i32 %31, 1, !dbg !1800
  br i1 %32, label %38, label %33, !dbg !1801

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1802
  br i1 %34, label %35, label %54, !dbg !1803

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #11, !dbg !1804
  %37 = tail call i32* @__errno_location() #1, !dbg !1805
  store i32 9, i32* %37, align 4, !dbg !1806, !tbaa !919
  br label %54, !dbg !1807

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1808
  %40 = icmp eq i8 %39, 0, !dbg !1808
  br i1 %40, label %49, label %41, !dbg !1810

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !1769, metadata !816) #11, !dbg !1811
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i32 0) #11, !dbg !1814
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !1774, metadata !816) #11, !dbg !1815
  %43 = icmp eq i32 %42, 2, !dbg !1816
  br i1 %43, label %49, label %44, !dbg !1817

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1818
  br i1 %45, label %46, label %54, !dbg !1819

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #11, !dbg !1820
  %48 = tail call i32* @__errno_location() #1, !dbg !1821
  store i32 9, i32* %48, align 4, !dbg !1822, !tbaa !919
  br label %54, !dbg !1823

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @rpl_freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #11, !dbg !1824
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1744, metadata !816), !dbg !1751
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1744, metadata !816), !dbg !1751
  %59 = tail call i32* @__errno_location() #1, !dbg !1825
  %60 = load i32, i32* %59, align 4, !dbg !1825, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1748, metadata !816), !dbg !1826
  %61 = and i8 %55, 1, !dbg !1827
  %62 = icmp eq i8 %61, 0, !dbg !1827
  br i1 %62, label %65, label %63, !dbg !1829

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #11, !dbg !1830
  br label %65, !dbg !1830

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1831
  %67 = icmp eq i8 %66, 0, !dbg !1831
  br i1 %67, label %70, label %68, !dbg !1833

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #11, !dbg !1834
  br label %70, !dbg !1834

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1835

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #11, !dbg !1836
  br label %73, !dbg !1836

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1838
  br i1 %74, label %75, label %76, !dbg !1840

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1841, !tbaa !919
  br label %76, !dbg !1842

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1843
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !1844 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1846, metadata !816), !dbg !1849
  %2 = icmp eq i8* %0, null, !dbg !1850
  br i1 %2, label %3, label %6, !dbg !1852

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1853, !tbaa !824
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.120, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !1855
  tail call void @abort() #14, !dbg !1856
  unreachable, !dbg !1856

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !1857
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !1847, metadata !816), !dbg !1858
  %8 = icmp ne i8* %7, null, !dbg !1859
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1860
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !1862
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1848, metadata !816), !dbg !1863
  %11 = ptrtoint i8* %10 to i64, !dbg !1864
  %12 = ptrtoint i8* %0 to i64, !dbg !1864
  %13 = sub i64 %11, %12, !dbg !1864
  %14 = icmp sgt i64 %13, 6, !dbg !1866
  br i1 %14, label %15, label %24, !dbg !1867

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1868
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.121, i64 0, i64 0), i64 7) #13, !dbg !1868
  %18 = icmp eq i32 %17, 0, !dbg !1870
  br i1 %18, label %19, label %24, !dbg !1871

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !1846, metadata !816), !dbg !1849
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.122, i64 0, i64 0), i64 3) #13, !dbg !1872
  %21 = icmp eq i32 %20, 0, !dbg !1875
  br i1 %21, label %22, label %24, !dbg !1876

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1877
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !1846, metadata !816), !dbg !1849
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1879, !tbaa !824
  br label %24, !dbg !1880

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !1846, metadata !816), !dbg !1849
  store i8* %25, i8** @program_name, align 8, !dbg !1881, !tbaa !824
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1882, !tbaa !824
  ret void, !dbg !1883
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !1884 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1889, metadata !816), !dbg !1892
  %2 = tail call i32* @__errno_location() #1, !dbg !1893
  %3 = load i32, i32* %2, align 4, !dbg !1893, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1890, metadata !816), !dbg !1894
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1895
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !1896
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !1896
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1898
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1898
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !1891, metadata !816), !dbg !1899
  store i32 %3, i32* %2, align 4, !dbg !1900, !tbaa !919
  ret %struct.quoting_options* %8, !dbg !1901
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !1902 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1908, metadata !816), !dbg !1909
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !1910
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1910
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1911
  %5 = load i32, i32* %4, align 8, !dbg !1911, !tbaa !1913
  ret i32 %5, !dbg !1915
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1916 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1920, metadata !816), !dbg !1922
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1921, metadata !816), !dbg !1923
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !1924
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1924
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1925
  store i32 %1, i32* %5, align 8, !dbg !1927, !tbaa !1913
  ret void, !dbg !1928
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !1929 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1933, metadata !816), !dbg !1941
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1934, metadata !816), !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !1935, metadata !816), !dbg !1943
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1936, metadata !816), !dbg !1944
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !1945
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !1945
  %6 = lshr i8 %1, 5, !dbg !1946
  %7 = zext i8 %6 to i64, !dbg !1946
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1948
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1937, metadata !816), !dbg !1949
  %9 = and i8 %1, 31, !dbg !1950
  %10 = zext i8 %9 to i32, !dbg !1951
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1939, metadata !816), !dbg !1952
  %11 = load i32, i32* %8, align 4, !dbg !1953, !tbaa !919
  %12 = lshr i32 %11, %10, !dbg !1954
  %13 = and i32 %12, 1, !dbg !1955
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1940, metadata !816), !dbg !1956
  %14 = and i32 %2, 1, !dbg !1957
  %15 = xor i32 %13, %14, !dbg !1958
  %16 = shl i32 %15, %10, !dbg !1959
  %17 = xor i32 %16, %11, !dbg !1960
  store i32 %17, i32* %8, align 4, !dbg !1960, !tbaa !919
  ret i32 %13, !dbg !1961
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !1962 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1966, metadata !816), !dbg !1969
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1967, metadata !816), !dbg !1970
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1971
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1966, metadata !816), !dbg !1969
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1973
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1966, metadata !816), !dbg !1969
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1974
  %6 = load i32, i32* %5, align 4, !dbg !1974, !tbaa !1975
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1968, metadata !816), !dbg !1976
  store i32 %1, i32* %5, align 4, !dbg !1977, !tbaa !1975
  ret i32 %6, !dbg !1978
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !1979 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !1983, metadata !816), !dbg !1986
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1984, metadata !816), !dbg !1987
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1985, metadata !816), !dbg !1988
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1989
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1983, metadata !816), !dbg !1986
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1991
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1983, metadata !816), !dbg !1986
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1992
  store i32 10, i32* %6, align 8, !dbg !1993, !tbaa !1913
  %7 = icmp ne i8* %1, null, !dbg !1994
  %8 = icmp ne i8* %2, null, !dbg !1996
  %9 = and i1 %7, %8, !dbg !1998
  br i1 %9, label %11, label %10, !dbg !1998

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !1999
  unreachable, !dbg !1999

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2000
  store i8* %1, i8** %12, align 8, !dbg !2001, !tbaa !2002
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2003
  store i8* %2, i8** %13, align 8, !dbg !2004, !tbaa !2005
  ret void, !dbg !2006
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2007 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2011, metadata !816), !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2012, metadata !816), !dbg !2020
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2013, metadata !816), !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2014, metadata !816), !dbg !2022
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2015, metadata !816), !dbg !2023
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2024
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2016, metadata !816), !dbg !2025
  %8 = tail call i32* @__errno_location() #1, !dbg !2026
  %9 = load i32, i32* %8, align 4, !dbg !2026, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2017, metadata !816), !dbg !2027
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2028
  %11 = load i32, i32* %10, align 8, !dbg !2028, !tbaa !1913
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2029
  %13 = load i32, i32* %12, align 4, !dbg !2029, !tbaa !1975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2030
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2031
  %16 = load i8*, i8** %15, align 8, !dbg !2031, !tbaa !2002
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2032
  %18 = load i8*, i8** %17, align 8, !dbg !2032, !tbaa !2005
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2018, metadata !816), !dbg !2034
  store i32 %9, i32* %8, align 4, !dbg !2035, !tbaa !919
  ret i64 %19, !dbg !2036
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2037 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2043, metadata !816), !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2044, metadata !816), !dbg !2107
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2045, metadata !816), !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2046, metadata !816), !dbg !2109
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2047, metadata !816), !dbg !2110
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2048, metadata !816), !dbg !2111
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2049, metadata !816), !dbg !2112
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2050, metadata !816), !dbg !2113
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2051, metadata !816), !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !816), !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2054, metadata !816), !dbg !2116
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2055, metadata !816), !dbg !2117
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2056, metadata !816), !dbg !2118
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2057, metadata !816), !dbg !2119
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2120
  %14 = icmp eq i64 %13, 1, !dbg !2121
  %15 = lshr i32 %5, 1, !dbg !2122
  %16 = trunc i32 %15 to i8, !dbg !2122
  %17 = and i8 %16, 1, !dbg !2122
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2059, metadata !816), !dbg !2122
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !816), !dbg !2123
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2061, metadata !816), !dbg !2124
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2062, metadata !816), !dbg !2125
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2126

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2062, metadata !816), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2057, metadata !816), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2056, metadata !816), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2051, metadata !816), !dbg !2114
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2050, metadata !816), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2047, metadata !816), !dbg !2110
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
  ], !dbg !2127

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2047, metadata !816), !dbg !2110
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2047, metadata !816), !dbg !2110
  br label %95, !dbg !2128

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2047, metadata !816), !dbg !2110
  %43 = and i8 %36, 1, !dbg !2130
  %44 = icmp eq i8 %43, 0, !dbg !2130
  br i1 %44, label %45, label %95, !dbg !2128

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2132
  br i1 %46, label %95, label %47, !dbg !2136

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2138, !tbaa !993
  br label %95, !dbg !2138

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.133, i64 0, i64 0), i32 %28), !dbg !2140
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2050, metadata !816), !dbg !2113
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.134, i64 0, i64 0), i32 %28), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2051, metadata !816), !dbg !2114
  br label %51, !dbg !2145

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2051, metadata !816), !dbg !2114
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2050, metadata !816), !dbg !2113
  %54 = and i8 %36, 1, !dbg !2146
  %55 = icmp eq i8 %54, 0, !dbg !2146
  br i1 %55, label %56, label %73, !dbg !2148

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2053, metadata !816), !dbg !2115
  %57 = load i8, i8* %52, align 1, !dbg !2149, !tbaa !993
  %58 = icmp eq i8 %57, 0, !dbg !2153
  br i1 %58, label %73, label %59, !dbg !2153

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2155

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2155
  br i1 %64, label %65, label %67, !dbg !2159

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2161
  store i8 %61, i8* %66, align 1, !dbg !2161, !tbaa !993
  br label %67, !dbg !2161

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2053, metadata !816), !dbg !2115
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2165
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2053, metadata !816), !dbg !2115
  %70 = load i8, i8* %69, align 1, !dbg !2149, !tbaa !993
  %71 = icmp eq i8 %70, 0, !dbg !2153
  br i1 %71, label %72, label %60, !dbg !2153, !llvm.loop !2167

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2115

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2057, metadata !816), !dbg !2119
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2055, metadata !816), !dbg !2117
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2056, metadata !816), !dbg !2118
  br label %95, !dbg !2171

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2057, metadata !816), !dbg !2119
  br label %77, !dbg !2172

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2057, metadata !816), !dbg !2119
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2059, metadata !816), !dbg !2122
  br label %79, !dbg !2173

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2057, metadata !816), !dbg !2119
  %82 = and i8 %81, 1, !dbg !2174
  %83 = icmp eq i8 %82, 0, !dbg !2174
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2057, metadata !816), !dbg !2119
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2176
  br label %85, !dbg !2176

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2057, metadata !816), !dbg !2119
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2047, metadata !816), !dbg !2110
  %88 = and i8 %87, 1, !dbg !2177
  %89 = icmp eq i8 %88, 0, !dbg !2177
  br i1 %89, label %90, label %95, !dbg !2179

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2180
  br i1 %91, label %95, label %92, !dbg !2184

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2186, !tbaa !993
  br label %95, !dbg !2186

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2059, metadata !816), !dbg !2122
  br label %95, !dbg !2188

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2189
  unreachable, !dbg !2189

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.135, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.135, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.135, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.134, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.134, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.134, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.135, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2059, metadata !816), !dbg !2122
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2057, metadata !816), !dbg !2119
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2056, metadata !816), !dbg !2118
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2051, metadata !816), !dbg !2114
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2050, metadata !816), !dbg !2113
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2047, metadata !816), !dbg !2110
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2052, metadata !816), !dbg !2190
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
  br label %123, !dbg !2191

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2062, metadata !816), !dbg !2125
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2052, metadata !816), !dbg !2190
  %132 = icmp eq i64 %127, -1, !dbg !2192
  br i1 %132, label %135, label %133, !dbg !2194

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2195
  br i1 %134, label %597, label %139, !dbg !2197

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2199
  %137 = load i8, i8* %136, align 1, !dbg !2199, !tbaa !993
  %138 = icmp eq i8 %137, 0, !dbg !2201
  br i1 %138, label %597, label %139, !dbg !2197

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !816), !dbg !2202
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2070, metadata !816), !dbg !2204
  br i1 %109, label %140, label %155, !dbg !2205

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2207
  %142 = and i1 %110, %132, !dbg !2209
  br i1 %142, label %143, label %145, !dbg !2209

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2046, metadata !816), !dbg !2109
  br label %145, !dbg !2211

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2046, metadata !816), !dbg !2109
  %147 = icmp ugt i64 %141, %146, !dbg !2213
  br i1 %147, label %155, label %148, !dbg !2215

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2216
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2217
  %151 = icmp ne i32 %150, 0, !dbg !2218
  %152 = or i1 %151, %112, !dbg !2218
  %153 = xor i1 %151, true, !dbg !2218
  %154 = zext i1 %153 to i8, !dbg !2218
  br i1 %152, label %155, label %644, !dbg !2218

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2068, metadata !816), !dbg !2202
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2046, metadata !816), !dbg !2109
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2220
  %159 = load i8, i8* %158, align 1, !dbg !2220, !tbaa !993
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2063, metadata !816), !dbg !2221
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
  ], !dbg !2222

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2223

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2224

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2069, metadata !816), !dbg !2203
  %163 = and i8 %128, 1, !dbg !2229
  %164 = icmp eq i8 %163, 0, !dbg !2229
  %165 = and i1 %114, %164, !dbg !2232
  br i1 %165, label %166, label %182, !dbg !2232

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2234
  br i1 %167, label %168, label %170, !dbg !2239

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2241
  store i8 39, i8* %169, align 1, !dbg !2241, !tbaa !993
  br label %170, !dbg !2241

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2053, metadata !816), !dbg !2115
  %172 = icmp ult i64 %171, %131, !dbg !2245
  br i1 %172, label %173, label %175, !dbg !2249

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2251
  store i8 36, i8* %174, align 1, !dbg !2251, !tbaa !993
  br label %175, !dbg !2251

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2053, metadata !816), !dbg !2115
  %177 = icmp ult i64 %176, %131, !dbg !2255
  br i1 %177, label %178, label %180, !dbg !2259

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2261
  store i8 39, i8* %179, align 1, !dbg !2261, !tbaa !993
  br label %180, !dbg !2261

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %182, !dbg !2265

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2053, metadata !816), !dbg !2115
  %185 = icmp ult i64 %183, %131, !dbg !2267
  br i1 %185, label %186, label %188, !dbg !2271

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2273
  store i8 92, i8* %187, align 1, !dbg !2273, !tbaa !993
  br label %188, !dbg !2273

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2053, metadata !816), !dbg !2115
  br i1 %106, label %190, label %476, !dbg !2277

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2279
  %192 = icmp ult i64 %191, %156, !dbg !2281
  br i1 %192, label %193, label %476, !dbg !2282

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2283
  %195 = load i8, i8* %194, align 1, !dbg !2283, !tbaa !993
  %196 = add i8 %195, -48, !dbg !2285
  %197 = icmp ult i8 %196, 10, !dbg !2285
  br i1 %197, label %198, label %476, !dbg !2285

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2286
  br i1 %199, label %200, label %202, !dbg !2291

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2293
  store i8 48, i8* %201, align 1, !dbg !2293, !tbaa !993
  br label %202, !dbg !2293

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2295
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2053, metadata !816), !dbg !2115
  %204 = icmp ult i64 %203, %131, !dbg !2297
  br i1 %204, label %205, label %207, !dbg !2301

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2303
  store i8 48, i8* %206, align 1, !dbg !2303, !tbaa !993
  br label %207, !dbg !2303

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2053, metadata !816), !dbg !2115
  br label %476, !dbg !2307

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2308

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2309

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2310

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2312

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2314
  %215 = icmp ult i64 %214, %156, !dbg !2316
  br i1 %215, label %216, label %476, !dbg !2317

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2318
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2320
  %219 = load i8, i8* %218, align 1, !dbg !2320, !tbaa !993
  %220 = icmp eq i8 %219, 63, !dbg !2321
  br i1 %220, label %221, label %476, !dbg !2322

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2324
  %223 = load i8, i8* %222, align 1, !dbg !2324, !tbaa !993
  %224 = sext i8 %223 to i32, !dbg !2324
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
  ], !dbg !2325

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2326

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2052, metadata !816), !dbg !2190
  %227 = icmp ult i64 %125, %131, !dbg !2328
  br i1 %227, label %228, label %230, !dbg !2332

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2334
  store i8 63, i8* %229, align 1, !dbg !2334, !tbaa !993
  br label %230, !dbg !2334

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2053, metadata !816), !dbg !2115
  %232 = icmp ult i64 %231, %131, !dbg !2338
  br i1 %232, label %233, label %235, !dbg !2342

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2344
  store i8 34, i8* %234, align 1, !dbg !2344, !tbaa !993
  br label %235, !dbg !2344

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2053, metadata !816), !dbg !2115
  %237 = icmp ult i64 %236, %131, !dbg !2348
  br i1 %237, label %238, label %240, !dbg !2352

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2354
  store i8 34, i8* %239, align 1, !dbg !2354, !tbaa !993
  br label %240, !dbg !2354

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2356
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2053, metadata !816), !dbg !2115
  %242 = icmp ult i64 %241, %131, !dbg !2358
  br i1 %242, label %243, label %245, !dbg !2362

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2364
  store i8 63, i8* %244, align 1, !dbg !2364, !tbaa !993
  br label %245, !dbg !2364

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2053, metadata !816), !dbg !2115
  br label %476, !dbg !2368

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2067, metadata !816), !dbg !2369
  br label %257, !dbg !2370

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2067, metadata !816), !dbg !2369
  br label %257, !dbg !2371

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2067, metadata !816), !dbg !2369
  br label %255, !dbg !2372

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2067, metadata !816), !dbg !2369
  br label %255, !dbg !2373

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2067, metadata !816), !dbg !2369
  br label %257, !dbg !2374

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2067, metadata !816), !dbg !2369
  br i1 %114, label %253, label %254, !dbg !2375

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2376

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2379

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2067, metadata !816), !dbg !2369
  br i1 %118, label %257, label %644, !dbg !2381

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2067, metadata !816), !dbg !2369
  br i1 %105, label %503, label %476, !dbg !2383

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2384
  br i1 %260, label %261, label %266, !dbg !2386

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2387, !tbaa !993
  %263 = icmp ne i8 %262, 0, !dbg !2389
  %264 = icmp ne i64 %124, 0, !dbg !2390
  %265 = or i1 %264, %263, !dbg !2392
  br i1 %265, label %476, label %272, !dbg !2392

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !2393
  %268 = icmp ne i64 %124, 0, !dbg !2390
  %269 = or i1 %268, %267, !dbg !2395
  br i1 %269, label %476, label %272, !dbg !2395

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2390
  br i1 %271, label %272, label %476, !dbg !2397

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2070, metadata !816), !dbg !2204
  br label %273, !dbg !2398

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2070, metadata !816), !dbg !2204
  br i1 %118, label %476, label %644, !dbg !2399

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2070, metadata !816), !dbg !2204
  br i1 %114, label %276, label %476, !dbg !2401

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !2402

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !2405
  %279 = icmp ne i64 %126, 0, !dbg !2407
  %280 = or i1 %279, %278, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2044, metadata !816), !dbg !2107
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !2409
  %282 = select i1 %280, i64 %131, i64 0, !dbg !2409
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2054, metadata !816), !dbg !2116
  %283 = icmp ult i64 %125, %282, !dbg !2410
  br i1 %283, label %284, label %286, !dbg !2414

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2416
  store i8 39, i8* %285, align 1, !dbg !2416, !tbaa !993
  br label %286, !dbg !2416

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2053, metadata !816), !dbg !2115
  %288 = icmp ult i64 %287, %282, !dbg !2420
  br i1 %288, label %289, label %291, !dbg !2424

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2426
  store i8 92, i8* %290, align 1, !dbg !2426, !tbaa !993
  br label %291, !dbg !2426

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !2428
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2053, metadata !816), !dbg !2115
  %293 = icmp ult i64 %292, %282, !dbg !2430
  br i1 %293, label %294, label %296, !dbg !2434

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2436
  store i8 39, i8* %295, align 1, !dbg !2436, !tbaa !993
  br label %296, !dbg !2436

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %476, !dbg !2440

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !2441

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2071, metadata !816), !dbg !2442
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !2443
  %301 = load i16*, i16** %300, align 8, !dbg !2443, !tbaa !824
  %302 = zext i8 %159 to i64, !dbg !2443
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2443
  %304 = load i16, i16* %303, align 2, !dbg !2443, !tbaa !1213
  %305 = lshr i16 %304, 14, !dbg !2445
  %306 = trunc i16 %305 to i8, !dbg !2445
  %307 = and i8 %306, 1, !dbg !2445
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2074, metadata !816), !dbg !2446
  br label %368, !dbg !2447

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !2448
  store i64 0, i64* %10, align 8, !dbg !2449
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2074, metadata !816), !dbg !2446
  %309 = icmp eq i64 %156, -1, !dbg !2450
  br i1 %309, label %310, label %312, !dbg !2452, !llvm.loop !2453

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2046, metadata !816), !dbg !2109
  br label %312, !dbg !2457, !llvm.loop !2453

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !2446

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2074, metadata !816), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !2458
  %317 = add i64 %315, %124, !dbg !2459
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !2460
  %319 = sub i64 %313, %317, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2075, metadata !1164), !dbg !2462
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2092, metadata !1164), !dbg !2463
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2095, metadata !816), !dbg !2465
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !2466

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2071, metadata !816), !dbg !2442
  %322 = icmp ugt i64 %313, %317, !dbg !2467
  br i1 %322, label %323, label %351, !dbg !2470

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !2471

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !2471
  %328 = load i8, i8* %327, align 1, !dbg !2471, !tbaa !993
  %329 = icmp eq i8 %328, 0, !dbg !2473
  br i1 %329, label %348, label %330, !dbg !2474

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2071, metadata !816), !dbg !2442
  %332 = add i64 %331, %124, !dbg !2477
  %333 = icmp ult i64 %332, %313, !dbg !2467
  br i1 %333, label %324, label %348, !dbg !2470, !llvm.loop !2478

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !2480
  %336 = and i1 %116, %335, !dbg !2484
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2096, metadata !816), !dbg !2485
  br i1 %336, label %337, label %355, !dbg !2484

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !2486

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !2486
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !2487
  %342 = load i8, i8* %341, align 1, !dbg !2487, !tbaa !993
  %343 = sext i8 %342 to i32, !dbg !2487
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !2488

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2096, metadata !816), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2096, metadata !816), !dbg !2485
  %346 = icmp ult i64 %345, %320, !dbg !2480
  br i1 %346, label %338, label %354, !dbg !2491, !llvm.loop !2493

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !2446

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !2446

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !2446

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2074, metadata !816), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2496
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !2497

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !2497, !tbaa !919
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2092, metadata !816), !dbg !2463
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !2499
  %358 = icmp eq i32 %357, 0, !dbg !2499
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2074, metadata !816), !dbg !2446
  %359 = select i1 %358, i8 0, i8 %316, !dbg !2500
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2074, metadata !816), !dbg !2446
  %360 = add i64 %320, %315, !dbg !2501
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2074, metadata !816), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2075, metadata !1164), !dbg !2462
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !2502
  %362 = icmp eq i32 %361, 0, !dbg !2503
  br i1 %362, label %314, label %363, !dbg !2504, !llvm.loop !2453

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !2506

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2506
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2074, metadata !816), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !2496
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !2506
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2074, metadata !816), !dbg !2446
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2071, metadata !816), !dbg !2442
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2046, metadata !816), !dbg !2109
  %372 = and i8 %371, 1, !dbg !2507
  %373 = icmp ne i8 %372, 0, !dbg !2507
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2070, metadata !816), !dbg !2204
  %374 = icmp ult i64 %370, 2, !dbg !2508
  %375 = or i1 %373, %113, !dbg !2509
  %376 = and i1 %374, %375, !dbg !2511
  br i1 %376, label %476, label %377, !dbg !2511

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2103, metadata !816), !dbg !2513
  br label %379, !dbg !2514

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2068, metadata !816), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2052, metadata !816), !dbg !2190
  br i1 %375, label %432, label %386, !dbg !2515

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !2520

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2069, metadata !816), !dbg !2203
  %388 = and i8 %382, 1, !dbg !2524
  %389 = icmp eq i8 %388, 0, !dbg !2524
  %390 = and i1 %114, %389, !dbg !2527
  br i1 %390, label %391, label %407, !dbg !2527

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !2529
  br i1 %392, label %393, label %395, !dbg !2534

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2536
  store i8 39, i8* %394, align 1, !dbg !2536, !tbaa !993
  br label %395, !dbg !2536

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2053, metadata !816), !dbg !2115
  %397 = icmp ult i64 %396, %131, !dbg !2540
  br i1 %397, label %398, label %400, !dbg !2544

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2546
  store i8 36, i8* %399, align 1, !dbg !2546, !tbaa !993
  br label %400, !dbg !2546

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2053, metadata !816), !dbg !2115
  %402 = icmp ult i64 %401, %131, !dbg !2550
  br i1 %402, label %403, label %405, !dbg !2554

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2556
  store i8 39, i8* %404, align 1, !dbg !2556, !tbaa !993
  br label %405, !dbg !2556

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %407, !dbg !2560

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2053, metadata !816), !dbg !2115
  %410 = icmp ult i64 %408, %131, !dbg !2562
  br i1 %410, label %411, label %413, !dbg !2566

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2568
  store i8 92, i8* %412, align 1, !dbg !2568, !tbaa !993
  br label %413, !dbg !2568

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2053, metadata !816), !dbg !2115
  %415 = icmp ult i64 %414, %131, !dbg !2572
  br i1 %415, label %416, label %420, !dbg !2576

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !2578
  %418 = or i8 %417, 48, !dbg !2578
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !2578
  store i8 %418, i8* %419, align 1, !dbg !2578, !tbaa !993
  br label %420, !dbg !2578

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !2580
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2053, metadata !816), !dbg !2115
  %422 = icmp ult i64 %421, %131, !dbg !2582
  br i1 %422, label %423, label %428, !dbg !2586

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !2588
  %425 = and i8 %424, 7, !dbg !2588
  %426 = or i8 %425, 48, !dbg !2588
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !2588
  store i8 %426, i8* %427, align 1, !dbg !2588, !tbaa !993
  br label %428, !dbg !2588

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2053, metadata !816), !dbg !2115
  %430 = and i8 %383, 7, !dbg !2592
  %431 = or i8 %430, 48, !dbg !2593
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2063, metadata !816), !dbg !2221
  br label %441, !dbg !2594

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !2595
  %434 = icmp eq i8 %433, 0, !dbg !2595
  br i1 %434, label %441, label %435, !dbg !2597

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !2598
  br i1 %436, label %437, label %439, !dbg !2603

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !2605
  store i8 92, i8* %438, align 1, !dbg !2605, !tbaa !993
  br label %439, !dbg !2605

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2068, metadata !816), !dbg !2202
  br label %441, !dbg !2609

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2068, metadata !816), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2053, metadata !816), !dbg !2115
  %447 = add i64 %380, 1, !dbg !2610
  %448 = icmp ugt i64 %378, %447, !dbg !2612
  br i1 %448, label %449, label %541, !dbg !2613

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !2614
  %451 = icmp ne i8 %450, 0, !dbg !2614
  %452 = and i8 %446, 1, !dbg !2618
  %453 = icmp eq i8 %452, 0, !dbg !2618
  %454 = and i1 %451, %453, !dbg !2614
  br i1 %454, label %455, label %466, !dbg !2614

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !2620
  br i1 %456, label %457, label %459, !dbg !2625

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !2627
  store i8 39, i8* %458, align 1, !dbg !2627, !tbaa !993
  br label %459, !dbg !2627

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2053, metadata !816), !dbg !2115
  %461 = icmp ult i64 %460, %131, !dbg !2631
  br i1 %461, label %462, label %464, !dbg !2635

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !2637
  store i8 39, i8* %463, align 1, !dbg !2637, !tbaa !993
  br label %464, !dbg !2637

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %466, !dbg !2641

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2053, metadata !816), !dbg !2115
  %469 = icmp ult i64 %467, %131, !dbg !2643
  br i1 %469, label %470, label %472, !dbg !2647

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !2649
  store i8 %444, i8* %471, align 1, !dbg !2649, !tbaa !993
  br label %472, !dbg !2649

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2052, metadata !816), !dbg !2190
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !2653
  %475 = load i8, i8* %474, align 1, !dbg !2653, !tbaa !993
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2063, metadata !816), !dbg !2221
  br label %379, !dbg !2654, !llvm.loop !2656

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2070, metadata !816), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2068, metadata !816), !dbg !2202
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2052, metadata !816), !dbg !2190
  br i1 %107, label %488, label %487, !dbg !2659

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !2661

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !2662

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !2663
  %491 = zext i8 %490 to i64, !dbg !2663
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2665
  %493 = load i32, i32* %492, align 4, !dbg !2665, !tbaa !919
  %494 = and i8 %483, 31, !dbg !2666
  %495 = zext i8 %494 to i32, !dbg !2667
  %496 = shl i32 1, %495, !dbg !2668
  %497 = and i32 %493, %496, !dbg !2668
  %498 = icmp eq i32 %497, 0, !dbg !2668
  %499 = icmp eq i8 %157, 0, !dbg !2669
  %500 = and i1 %499, %498, !dbg !2670
  br i1 %500, label %542, label %503, !dbg !2670

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !2669
  br i1 %502, label %542, label %503, !dbg !2671

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2070, metadata !816), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2052, metadata !816), !dbg !2190
  br i1 %112, label %513, label %644, !dbg !2673

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2069, metadata !816), !dbg !2203
  %514 = and i8 %508, 1, !dbg !2676
  %515 = icmp eq i8 %514, 0, !dbg !2676
  %516 = and i1 %114, %515, !dbg !2679
  br i1 %516, label %517, label %533, !dbg !2679

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !2681
  br i1 %518, label %519, label %521, !dbg !2686

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !2688
  store i8 39, i8* %520, align 1, !dbg !2688, !tbaa !993
  br label %521, !dbg !2688

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2053, metadata !816), !dbg !2115
  %523 = icmp ult i64 %522, %512, !dbg !2692
  br i1 %523, label %524, label %526, !dbg !2696

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !2698
  store i8 36, i8* %525, align 1, !dbg !2698, !tbaa !993
  br label %526, !dbg !2698

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2053, metadata !816), !dbg !2115
  %528 = icmp ult i64 %527, %512, !dbg !2702
  br i1 %528, label %529, label %531, !dbg !2706

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2708
  store i8 39, i8* %530, align 1, !dbg !2708, !tbaa !993
  br label %531, !dbg !2708

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !2710
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %533, !dbg !2712

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2053, metadata !816), !dbg !2115
  %536 = icmp ult i64 %534, %512, !dbg !2714
  br i1 %536, label %537, label %539, !dbg !2718

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !2720
  store i8 92, i8* %538, align 1, !dbg !2720, !tbaa !993
  br label %539, !dbg !2720

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2070, metadata !816), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2052, metadata !816), !dbg !2190
  br label %569, !dbg !2724

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2107

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2070, metadata !816), !dbg !2204
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2069, metadata !816), !dbg !2203
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2063, metadata !816), !dbg !2221
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2061, metadata !816), !dbg !2124
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2046, metadata !816), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2054, metadata !816), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2052, metadata !816), !dbg !2190
  %553 = and i8 %547, 1, !dbg !2724
  %554 = icmp ne i8 %553, 0, !dbg !2724
  %555 = and i8 %550, 1, !dbg !2728
  %556 = icmp eq i8 %555, 0, !dbg !2728
  %557 = and i1 %554, %556, !dbg !2724
  br i1 %557, label %558, label %569, !dbg !2724

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !2730
  br i1 %559, label %560, label %562, !dbg !2735

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !2737
  store i8 39, i8* %561, align 1, !dbg !2737, !tbaa !993
  br label %562, !dbg !2737

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2053, metadata !816), !dbg !2115
  %564 = icmp ult i64 %563, %552, !dbg !2741
  br i1 %564, label %565, label %567, !dbg !2745

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !2747
  store i8 39, i8* %566, align 1, !dbg !2747, !tbaa !993
  br label %567, !dbg !2747

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2053, metadata !816), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2060, metadata !816), !dbg !2123
  br label %569, !dbg !2751

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2060, metadata !816), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2053, metadata !816), !dbg !2115
  %579 = icmp ult i64 %577, %570, !dbg !2753
  br i1 %579, label %580, label %582, !dbg !2757

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !2759
  store i8 %572, i8* %581, align 1, !dbg !2759, !tbaa !993
  br label %582, !dbg !2759

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2053, metadata !816), !dbg !2115
  %584 = and i8 %571, 1, !dbg !2763
  %585 = icmp eq i8 %584, 0, !dbg !2763
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2062, metadata !816), !dbg !2125
  %586 = select i1 %585, i8 0, i8 %130, !dbg !2765
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2062, metadata !816), !dbg !2125
  br label %587, !dbg !2766

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2052, metadata !816), !dbg !2190
  br label %123, !dbg !2769, !llvm.loop !2770

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !2773
  %600 = and i1 %114, %599, !dbg !2775
  %601 = xor i1 %600, true, !dbg !2775
  %602 = or i1 %112, %601, !dbg !2775
  br i1 %602, label %603, label %648, !dbg !2775

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !2776
  %605 = xor i1 %604, true, !dbg !2776
  %606 = and i8 %129, 1, !dbg !2778
  %607 = icmp eq i8 %606, 0, !dbg !2778
  %608 = or i1 %607, %605, !dbg !2776
  br i1 %608, label %618, label %609, !dbg !2776

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !2780
  %611 = icmp eq i8 %610, 0, !dbg !2780
  br i1 %611, label %614, label %612, !dbg !2783

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !2784
  br label %659, !dbg !2785

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !2786
  %616 = icmp ne i64 %126, 0, !dbg !2788
  %617 = and i1 %616, %615, !dbg !2790
  br i1 %617, label %27, label %618, !dbg !2790

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !2791
  %620 = and i1 %619, %112, !dbg !2793
  br i1 %620, label %621, label %638, !dbg !2793

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2053, metadata !816), !dbg !2115
  %622 = load i8, i8* %100, align 1, !dbg !2794, !tbaa !993
  %623 = icmp eq i8 %622, 0, !dbg !2798
  br i1 %623, label %638, label %624, !dbg !2798

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !2800

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !2800
  br i1 %629, label %630, label %632, !dbg !2804

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !2806
  store i8 %626, i8* %631, align 1, !dbg !2806, !tbaa !993
  br label %632, !dbg !2806

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2053, metadata !816), !dbg !2115
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !2810
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2055, metadata !816), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2053, metadata !816), !dbg !2115
  %635 = load i8, i8* %634, align 1, !dbg !2794, !tbaa !993
  %636 = icmp eq i8 %635, 0, !dbg !2798
  br i1 %636, label %637, label %625, !dbg !2798, !llvm.loop !2812

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2115

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2053, metadata !816), !dbg !2115
  %640 = icmp ult i64 %639, %131, !dbg !2815
  br i1 %640, label %641, label %659, !dbg !2817

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !2818
  store i8 0, i8* %642, align 1, !dbg !2819, !tbaa !993
  br label %659, !dbg !2818

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2107

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2107

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2107

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2044, metadata !816), !dbg !2107
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2046, metadata !816), !dbg !2109
  %653 = icmp ne i32 %650, 2, !dbg !2820
  %654 = icmp eq i8 %104, 0, !dbg !2822
  %655 = or i1 %653, %654, !dbg !2824
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2047, metadata !816), !dbg !2110
  %656 = select i1 %655, i32 %650, i32 4, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2047, metadata !816), !dbg !2110
  %657 = and i32 %5, -3, !dbg !2825
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !2826
  br label %659, !dbg !2827

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !2828
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !2829 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2833, metadata !816), !dbg !2837
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2834, metadata !816), !dbg !2838
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !2835, metadata !816), !dbg !2840
  %4 = icmp eq i8* %3, %0, !dbg !2841
  br i1 %4, label %5, label %75, !dbg !2843

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !2836, metadata !816), !dbg !2845
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2846, metadata !816), !dbg !2862
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2860, metadata !816), !dbg !2865
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2861, metadata !816), !dbg !2866
  %7 = load i8, i8* %6, align 1, !tbaa !993
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !2867
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !2867

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2870, metadata !816), !dbg !2884
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !816), !dbg !2888
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !816), !dbg !2889
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !993
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !2890
  %15 = icmp eq i32 %14, 84, !dbg !2890
  br i1 %15, label %16, label %72, !dbg !2890

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2893, metadata !816), !dbg !2906
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2904, metadata !816), !dbg !2910
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2905, metadata !816), !dbg !2911
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !993
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !2912
  %21 = icmp eq i32 %20, 70, !dbg !2912
  br i1 %21, label %22, label %72, !dbg !2912

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2915, metadata !816), !dbg !2927
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2925, metadata !816), !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2926, metadata !816), !dbg !2932
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !993
  %25 = icmp eq i8 %24, 45, !dbg !2933
  br i1 %25, label %26, label %72, !dbg !2936

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !816), !dbg !2949
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2947, metadata !816), !dbg !2953
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2948, metadata !816), !dbg !2954
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !993
  %29 = icmp eq i8 %28, 56, !dbg !2955
  br i1 %29, label %30, label %72, !dbg !2958

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !816), !dbg !2970
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2968, metadata !816), !dbg !2974
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2969, metadata !816), !dbg !2975
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !993
  %33 = icmp eq i8 %32, 0, !dbg !2976
  br i1 %33, label %34, label %72, !dbg !2979

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !2981, !tbaa !993
  %36 = icmp eq i8 %35, 96, !dbg !2982
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.136, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.137, i64 0, i64 0), !dbg !2981
  br label %75, !dbg !2983

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2870, metadata !816), !dbg !2984
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2882, metadata !816), !dbg !2988
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2883, metadata !816), !dbg !2989
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !993
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !2990
  %43 = icmp eq i32 %42, 66, !dbg !2990
  br i1 %43, label %44, label %72, !dbg !2990

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2893, metadata !816), !dbg !2991
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2904, metadata !816), !dbg !2993
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2905, metadata !816), !dbg !2994
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !993
  %47 = icmp eq i8 %46, 49, !dbg !2995
  br i1 %47, label %48, label %72, !dbg !2997

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2915, metadata !816), !dbg !2999
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2925, metadata !816), !dbg !3001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2926, metadata !816), !dbg !3002
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !993
  %51 = icmp eq i8 %50, 56, !dbg !3003
  br i1 %51, label %52, label %72, !dbg !3004

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2938, metadata !816), !dbg !3005
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2947, metadata !816), !dbg !3007
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2948, metadata !816), !dbg !3008
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !993
  %55 = icmp eq i8 %54, 48, !dbg !3009
  br i1 %55, label %56, label %72, !dbg !3010

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2960, metadata !816), !dbg !3011
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2968, metadata !816), !dbg !3013
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2969, metadata !816), !dbg !3014
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !993
  %59 = icmp eq i8 %58, 51, !dbg !3015
  br i1 %59, label %60, label %72, !dbg !3016

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3017, metadata !816), !dbg !3026
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3024, metadata !816), !dbg !3030
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3025, metadata !816), !dbg !3031
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !993
  %63 = icmp eq i8 %62, 48, !dbg !3032
  br i1 %63, label %64, label %72, !dbg !3035

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3037, metadata !816), !dbg !3045
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3043, metadata !816), !dbg !3049
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3044, metadata !816), !dbg !3050
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !993
  %67 = icmp eq i8 %66, 0, !dbg !3051
  br i1 %67, label %68, label %72, !dbg !3054

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3055, !tbaa !993
  %70 = icmp eq i8 %69, 96, !dbg !3056
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.138, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.139, i64 0, i64 0), !dbg !3055
  br label %75, !dbg !3057

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3058
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.135, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.134, i64 0, i64 0), !dbg !3059
  br label %75, !dbg !3060

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3061
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3062 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3066, metadata !816), !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3067, metadata !816), !dbg !3070
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3068, metadata !816), !dbg !3071
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !816) #11, !dbg !3085
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3077, metadata !816) #11, !dbg !3087
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3078, metadata !816) #11, !dbg !3088
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3079, metadata !816) #11, !dbg !3089
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3090
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3090
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3080, metadata !816) #11, !dbg !3091
  %6 = tail call i32* @__errno_location() #1, !dbg !3092
  %7 = load i32, i32* %6, align 4, !dbg !3092, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3081, metadata !816) #11, !dbg !3093
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3094
  %9 = load i32, i32* %8, align 4, !dbg !3094, !tbaa !1975
  %10 = or i32 %9, 1, !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3082, metadata !816) #11, !dbg !3096
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3097
  %12 = load i32, i32* %11, align 8, !dbg !3097, !tbaa !1913
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3098
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3099
  %15 = load i8*, i8** %14, align 8, !dbg !3099, !tbaa !2002
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3100
  %17 = load i8*, i8** %16, align 8, !dbg !3100, !tbaa !2005
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3101
  %19 = add i64 %18, 1, !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3083, metadata !816) #11, !dbg !3103
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3104, metadata !816) #11, !dbg !3109
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3111
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3084, metadata !816) #11, !dbg !3112
  %21 = load i32, i32* %11, align 8, !dbg !3113, !tbaa !1913
  %22 = load i8*, i8** %14, align 8, !dbg !3114, !tbaa !2002
  %23 = load i8*, i8** %16, align 8, !dbg !3115, !tbaa !2005
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3116
  store i32 %7, i32* %6, align 4, !dbg !3117, !tbaa !919
  ret i8* %20, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3073 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3072, metadata !816), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3077, metadata !816), !dbg !3120
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3078, metadata !816), !dbg !3121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3079, metadata !816), !dbg !3122
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3123
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3123
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3080, metadata !816), !dbg !3124
  %7 = tail call i32* @__errno_location() #1, !dbg !3125
  %8 = load i32, i32* %7, align 4, !dbg !3125, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3081, metadata !816), !dbg !3126
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3127
  %10 = load i32, i32* %9, align 4, !dbg !3127, !tbaa !1975
  %11 = icmp ne i64* %2, null, !dbg !3128
  %12 = xor i1 %11, true, !dbg !3128
  %13 = zext i1 %12 to i32, !dbg !3128
  %14 = or i32 %10, %13, !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3082, metadata !816), !dbg !3130
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3131
  %16 = load i32, i32* %15, align 8, !dbg !3131, !tbaa !1913
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3132
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3133
  %19 = load i8*, i8** %18, align 8, !dbg !3133, !tbaa !2002
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3134
  %21 = load i8*, i8** %20, align 8, !dbg !3134, !tbaa !2005
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3135
  %23 = add i64 %22, 1, !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3083, metadata !816), !dbg !3137
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3104, metadata !816) #11, !dbg !3138
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3140
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3084, metadata !816), !dbg !3141
  %25 = load i32, i32* %15, align 8, !dbg !3142, !tbaa !1913
  %26 = load i8*, i8** %18, align 8, !dbg !3143, !tbaa !2002
  %27 = load i8*, i8** %20, align 8, !dbg !3144, !tbaa !2005
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3145
  store i32 %8, i32* %7, align 4, !dbg !3146, !tbaa !919
  br i1 %11, label %29, label %30, !dbg !3147

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3148, !tbaa !1147
  br label %30, !dbg !3150

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3151
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3152 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3156, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3154, metadata !816), !dbg !3157
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3155, metadata !816), !dbg !3158
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3155, metadata !816), !dbg !3158
  %2 = load i32, i32* @nslots, align 4, !dbg !3159, !tbaa !919
  %3 = icmp sgt i32 %2, 1, !dbg !3163
  br i1 %3, label %4, label %14, !dbg !3164

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3166

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3166
  %8 = load i8*, i8** %7, align 8, !dbg !3166, !tbaa !3167
  tail call void @free(i8* %8) #11, !dbg !3169
  %9 = add nuw i64 %6, 1, !dbg !3170
  %10 = load i32, i32* @nslots, align 4, !dbg !3159, !tbaa !919
  %11 = sext i32 %10 to i64, !dbg !3163
  %12 = icmp slt i64 %9, %11, !dbg !3163
  br i1 %12, label %5, label %13, !dbg !3164, !llvm.loop !3172

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3175

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3175
  %16 = load i8*, i8** %15, align 8, !dbg !3175, !tbaa !3167
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3177
  br i1 %17, label %19, label %18, !dbg !3178

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3179
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3181, !tbaa !3182
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3183, !tbaa !3167
  br label %19, !dbg !3184

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3185
  br i1 %20, label %23, label %21, !dbg !3187

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3188
  tail call void @free(i8* %22) #11, !dbg !3190
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3191, !tbaa !824
  br label %23, !dbg !3192

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3193, !tbaa !919
  ret void, !dbg !3194
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3195 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3199, metadata !816), !dbg !3201
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3200, metadata !816), !dbg !3202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3203
  ret i8* %3, !dbg !3204
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3205 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3209, metadata !816), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3210, metadata !816), !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3211, metadata !816), !dbg !3225
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3212, metadata !816), !dbg !3226
  %5 = tail call i32* @__errno_location() #1, !dbg !3227
  %6 = load i32, i32* %5, align 4, !dbg !3227, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3213, metadata !816), !dbg !3228
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3229, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3214, metadata !816), !dbg !3230
  %8 = icmp slt i32 %0, 0, !dbg !3231
  br i1 %8, label %9, label %10, !dbg !3233

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3234
  unreachable, !dbg !3234

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3235, !tbaa !919
  %12 = icmp sgt i32 %11, %0, !dbg !3236
  br i1 %12, label %34, label %13, !dbg !3237

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3238
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3239
  br i1 %15, label %16, label %17, !dbg !3241

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3242
  unreachable, !dbg !3242

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3243
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3243
  %20 = add nsw i32 %0, 1, !dbg !3245
  %21 = sext i32 %20 to i64, !dbg !3246
  %22 = shl nsw i64 %21, 4, !dbg !3247
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3248
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3248
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3214, metadata !816), !dbg !3230
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3249, !tbaa !824
  br i1 %14, label %25, label %26, !dbg !3250

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3251, !tbaa.struct !3253
  br label %26, !dbg !3254

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3255, !tbaa !919
  %28 = sext i32 %27 to i64, !dbg !3256
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3256
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3257
  %31 = sub nsw i32 %20, %27, !dbg !3258
  %32 = sext i32 %31 to i64, !dbg !3259
  %33 = shl nsw i64 %32, 4, !dbg !3260
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3257
  store i32 %20, i32* @nslots, align 4, !dbg !3261, !tbaa !919
  br label %34, !dbg !3262

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3214, metadata !816), !dbg !3230
  %36 = sext i32 %0 to i64, !dbg !3263
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3264
  %38 = load i64, i64* %37, align 8, !dbg !3264, !tbaa !3182
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3218, metadata !816), !dbg !3265
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3266
  %40 = load i8*, i8** %39, align 8, !dbg !3266, !tbaa !3167
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3220, metadata !816), !dbg !3267
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3268
  %42 = load i32, i32* %41, align 4, !dbg !3268, !tbaa !1975
  %43 = or i32 %42, 1, !dbg !3269
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3221, metadata !816), !dbg !3270
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3271
  %45 = load i32, i32* %44, align 8, !dbg !3271, !tbaa !1913
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3272
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3273
  %48 = load i8*, i8** %47, align 8, !dbg !3273, !tbaa !2002
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3274
  %50 = load i8*, i8** %49, align 8, !dbg !3274, !tbaa !2005
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3222, metadata !816), !dbg !3276
  %52 = icmp ugt i64 %38, %51, !dbg !3277
  br i1 %52, label %63, label %53, !dbg !3279

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3218, metadata !816), !dbg !3265
  store i64 %54, i64* %37, align 8, !dbg !3282, !tbaa !3182
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3283
  br i1 %55, label %57, label %56, !dbg !3285

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3286
  br label %57, !dbg !3286

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3104, metadata !816) #11, !dbg !3287
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3289
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3220, metadata !816), !dbg !3267
  store i8* %58, i8** %39, align 8, !dbg !3290, !tbaa !3167
  %59 = load i32, i32* %44, align 8, !dbg !3291, !tbaa !1913
  %60 = load i8*, i8** %47, align 8, !dbg !3292, !tbaa !2002
  %61 = load i8*, i8** %49, align 8, !dbg !3293, !tbaa !2005
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3294
  br label %63, !dbg !3295

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3220, metadata !816), !dbg !3267
  store i32 %6, i32* %5, align 4, !dbg !3296, !tbaa !919
  ret i8* %64, !dbg !3297
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #8

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3302, metadata !816), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3303, metadata !816), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3304, metadata !816), !dbg !3307
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3308
  ret i8* %4, !dbg !3309
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3312, metadata !816), !dbg !3313
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3199, metadata !816) #11, !dbg !3314
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3200, metadata !816) #11, !dbg !3316
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3317
  ret i8* %2, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3319 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3323, metadata !816), !dbg !3325
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3324, metadata !816), !dbg !3326
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3302, metadata !816) #11, !dbg !3327
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3303, metadata !816) #11, !dbg !3329
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3304, metadata !816) #11, !dbg !3330
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3331
  ret i8* %3, !dbg !3332
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3333 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3341, metadata !3347), !dbg !3348
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3337, metadata !816), !dbg !3350
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3338, metadata !816), !dbg !3351
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3339, metadata !816), !dbg !3352
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3353
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3353
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3340, metadata !1164), !dbg !3354
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !816) #11, !dbg !3355
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3356
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3356
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3341, metadata !816) #11, !dbg !3348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3348
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3348
  %8 = icmp eq i32 %1, 10, !dbg !3358
  br i1 %8, label %9, label %10, !dbg !3360

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3361, !noalias !3362
  unreachable, !dbg !3361

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3341, metadata !3357) #11, !dbg !3348
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3365
  store i32 %1, i32* %11, align 8, !dbg !3365, !alias.scope !3362
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3365
  %13 = bitcast i32* %12 to i8*, !dbg !3365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3365
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3366
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3340, metadata !1164), !dbg !3354
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3367
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3368
  ret i8* %14, !dbg !3369
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3370 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3341, metadata !3347), !dbg !3379
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3374, metadata !816), !dbg !3381
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3375, metadata !816), !dbg !3382
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3376, metadata !816), !dbg !3383
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3377, metadata !816), !dbg !3384
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3385
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3385
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3378, metadata !1164), !dbg !3386
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !816) #11, !dbg !3387
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3388
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3388
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3341, metadata !816) #11, !dbg !3379
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3379
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3379
  %9 = icmp eq i32 %1, 10, !dbg !3389
  br i1 %9, label %10, label %11, !dbg !3390

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3391, !noalias !3392
  unreachable, !dbg !3391

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3341, metadata !3357) #11, !dbg !3379
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3395
  store i32 %1, i32* %12, align 8, !dbg !3395, !alias.scope !3392
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3395
  %14 = bitcast i32* %13 to i8*, !dbg !3395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !3395
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3396
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3378, metadata !1164), !dbg !3386
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !3397
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3398
  ret i8* %15, !dbg !3399
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !3400 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3341, metadata !3347), !dbg !3406
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3404, metadata !816), !dbg !3409
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3405, metadata !816), !dbg !3410
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3337, metadata !816) #11, !dbg !3411
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3338, metadata !816) #11, !dbg !3412
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3339, metadata !816) #11, !dbg !3413
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3414
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3414
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3340, metadata !1164) #11, !dbg !3415
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3346, metadata !816) #11, !dbg !3416
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !3417
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !3417
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3341, metadata !816) #11, !dbg !3406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3406
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !3406
  %7 = icmp eq i32 %0, 10, !dbg !3418
  br i1 %7, label %8, label %9, !dbg !3419

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !3420, !noalias !3421
  unreachable, !dbg !3420

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3406
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3424
  store i32 %0, i32* %10, align 8, !dbg !3424, !alias.scope !3421
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3424
  %12 = bitcast i32* %11 to i8*, !dbg !3424
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !3424
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !3425
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3340, metadata !1164) #11, !dbg !3415
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3426
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3427
  ret i8* %13, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3429 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3341, metadata !3347), !dbg !3436
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3433, metadata !816), !dbg !3439
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3434, metadata !816), !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3435, metadata !816), !dbg !3441
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3374, metadata !816) #11, !dbg !3442
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3375, metadata !816) #11, !dbg !3443
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3376, metadata !816) #11, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3377, metadata !816) #11, !dbg !3445
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3446
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3446
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3378, metadata !1164) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3346, metadata !816) #11, !dbg !3448
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3449
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3449
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3341, metadata !816) #11, !dbg !3436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3436
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3436
  %8 = icmp eq i32 %0, 10, !dbg !3450
  br i1 %8, label %9, label %10, !dbg !3451

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3452, !noalias !3453
  unreachable, !dbg !3452

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3436
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3456
  store i32 %0, i32* %11, align 8, !dbg !3456, !alias.scope !3453
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3456
  %13 = bitcast i32* %12 to i8*, !dbg !3456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3456
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3457
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3378, metadata !1164) #11, !dbg !3447
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !3458
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3459
  ret i8* %14, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !3461 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3465, metadata !816), !dbg !3469
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3466, metadata !816), !dbg !3470
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !3467, metadata !816), !dbg !3471
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3472
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3473, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3468, metadata !1164), !dbg !3475
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1933, metadata !816), !dbg !3476
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1934, metadata !816), !dbg !3478
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !816), !dbg !3479
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !1936, metadata !816), !dbg !3480
  %6 = lshr i8 %2, 5, !dbg !3481
  %7 = zext i8 %6 to i64, !dbg !3481
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3482
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !1937, metadata !816), !dbg !3483
  %9 = and i8 %2, 31, !dbg !3484
  %10 = zext i8 %9 to i32, !dbg !3485
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !1939, metadata !816), !dbg !3486
  %11 = load i32, i32* %8, align 4, !dbg !3487, !tbaa !919
  %12 = lshr i32 %11, %10, !dbg !3488
  %13 = and i32 %12, 1, !dbg !3489
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !1940, metadata !816), !dbg !3490
  %14 = xor i32 %13, 1, !dbg !3491
  %15 = shl i32 %14, %10, !dbg !3492
  %16 = xor i32 %15, %11, !dbg !3493
  store i32 %16, i32* %8, align 4, !dbg !3493, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3468, metadata !1164), !dbg !3475
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3494
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3495
  ret i8* %17, !dbg !3496
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !3497 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3501, metadata !816), !dbg !3503
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3502, metadata !816), !dbg !3504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3465, metadata !816) #11, !dbg !3505
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3466, metadata !816) #11, !dbg !3507
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !3467, metadata !816) #11, !dbg !3508
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3509
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3509
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3510, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3468, metadata !1164) #11, !dbg !3511
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1933, metadata !816) #11, !dbg !3512
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1934, metadata !816) #11, !dbg !3514
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !816) #11, !dbg !3515
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !1936, metadata !816) #11, !dbg !3516
  %5 = lshr i8 %1, 5, !dbg !3517
  %6 = zext i8 %5 to i64, !dbg !3517
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3518
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !1937, metadata !816) #11, !dbg !3519
  %8 = and i8 %1, 31, !dbg !3520
  %9 = zext i8 %8 to i32, !dbg !3521
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1939, metadata !816) #11, !dbg !3522
  %10 = load i32, i32* %7, align 4, !dbg !3523, !tbaa !919
  %11 = lshr i32 %10, %9, !dbg !3524
  %12 = and i32 %11, 1, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !1940, metadata !816) #11, !dbg !3526
  %13 = xor i32 %12, 1, !dbg !3527
  %14 = shl i32 %13, %9, !dbg !3528
  %15 = xor i32 %14, %10, !dbg !3529
  store i32 %15, i32* %7, align 4, !dbg !3529, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3468, metadata !1164) #11, !dbg !3511
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3530
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3531
  ret i8* %16, !dbg !3532
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !3533 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3535, metadata !816), !dbg !3536
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3501, metadata !816) #11, !dbg !3537
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3502, metadata !816) #11, !dbg !3539
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3465, metadata !816) #11, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3466, metadata !816) #11, !dbg !3542
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3467, metadata !816) #11, !dbg !3543
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3544
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !3544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3545, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3468, metadata !1164) #11, !dbg !3546
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !1933, metadata !816) #11, !dbg !3547
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1934, metadata !816) #11, !dbg !3549
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !816) #11, !dbg !3550
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1936, metadata !816) #11, !dbg !3551
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3552
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !1937, metadata !816) #11, !dbg !3553
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1939, metadata !816) #11, !dbg !3554
  %5 = load i32, i32* %4, align 4, !dbg !3555, !tbaa !919
  %6 = or i32 %5, 67108864, !dbg !3556
  store i32 %6, i32* %4, align 4, !dbg !3556, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3468, metadata !1164) #11, !dbg !3546
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3557
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !3558
  ret i8* %7, !dbg !3559
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !3560 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3562, metadata !816), !dbg !3564
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3563, metadata !816), !dbg !3565
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3465, metadata !816) #11, !dbg !3566
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3466, metadata !816) #11, !dbg !3568
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !3467, metadata !816) #11, !dbg !3569
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3570
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !3570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3571, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3468, metadata !1164) #11, !dbg !3572
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !1933, metadata !816) #11, !dbg !3573
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1934, metadata !816) #11, !dbg !3575
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !816) #11, !dbg !3576
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1936, metadata !816) #11, !dbg !3577
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3578
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !1937, metadata !816) #11, !dbg !3579
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1939, metadata !816) #11, !dbg !3580
  %6 = load i32, i32* %5, align 4, !dbg !3581, !tbaa !919
  %7 = or i32 %6, 67108864, !dbg !3582
  store i32 %7, i32* %5, align 4, !dbg !3582, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3468, metadata !1164) #11, !dbg !3572
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3583
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !3584
  ret i8* %8, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !3586 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3341, metadata !3347), !dbg !3592
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3588, metadata !816), !dbg !3594
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3589, metadata !816), !dbg !3595
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3590, metadata !816), !dbg !3596
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3597
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3597
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3346, metadata !816) #11, !dbg !3598
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3599
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3599
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3341, metadata !816) #11, !dbg !3592
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3341, metadata !3357) #11, !dbg !3592
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3592
  %9 = icmp eq i32 %1, 10, !dbg !3600
  br i1 %9, label %10, label %11, !dbg !3601

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3602, !noalias !3603
  unreachable, !dbg !3602

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3341, metadata !3357) #11, !dbg !3592
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !3606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !3606
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !3607
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3608
  store i32 %1, i32* %13, align 8, !dbg !3608
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3608
  %15 = bitcast i32* %14 to i8*, !dbg !3608
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !3608
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3591, metadata !1164), !dbg !3609
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1933, metadata !816), !dbg !3610
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1934, metadata !816), !dbg !3612
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1935, metadata !816), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !1936, metadata !816), !dbg !3614
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !3615
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !1937, metadata !816), !dbg !3616
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !1939, metadata !816), !dbg !3617
  %17 = load i32, i32* %16, align 4, !dbg !3618, !tbaa !919
  %18 = or i32 %17, 67108864, !dbg !3619
  store i32 %18, i32* %16, align 4, !dbg !3619, !tbaa !919
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3591, metadata !1164), !dbg !3609
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3620
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3621
  ret i8* %19, !dbg !3622
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3623 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3627, metadata !816), !dbg !3631
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3628, metadata !816), !dbg !3632
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3629, metadata !816), !dbg !3633
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3630, metadata !816), !dbg !3634
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3635, metadata !816) #11, !dbg !3645
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3640, metadata !816) #11, !dbg !3647
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3641, metadata !816) #11, !dbg !3648
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3642, metadata !816) #11, !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3643, metadata !816) #11, !dbg !3650
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3651
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3651
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3652, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3644, metadata !1164) #11, !dbg !3653
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1983, metadata !816) #11, !dbg !3654
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1984, metadata !816) #11, !dbg !3656
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1985, metadata !816) #11, !dbg !3657
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1983, metadata !816) #11, !dbg !3654
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1983, metadata !816) #11, !dbg !3654
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3658
  store i32 10, i32* %7, align 8, !dbg !3659, !tbaa !1913
  %8 = icmp ne i8* %1, null, !dbg !3660
  %9 = icmp ne i8* %2, null, !dbg !3661
  %10 = and i1 %8, %9, !dbg !3662
  br i1 %10, label %12, label %11, !dbg !3662

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3663
  unreachable, !dbg !3663

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3664
  store i8* %1, i8** %13, align 8, !dbg !3665, !tbaa !2002
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3666
  store i8* %2, i8** %14, align 8, !dbg !3667, !tbaa !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3644, metadata !1164) #11, !dbg !3653
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3668
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3669
  ret i8* %15, !dbg !3670
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3636 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3635, metadata !816), !dbg !3671
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3640, metadata !816), !dbg !3672
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3641, metadata !816), !dbg !3673
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3642, metadata !816), !dbg !3674
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !3643, metadata !816), !dbg !3675
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3676
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !3677, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3644, metadata !1164), !dbg !3678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1983, metadata !816) #11, !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1984, metadata !816) #11, !dbg !3681
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1985, metadata !816) #11, !dbg !3682
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1983, metadata !816) #11, !dbg !3679
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !1983, metadata !816) #11, !dbg !3679
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3683
  store i32 10, i32* %8, align 8, !dbg !3684, !tbaa !1913
  %9 = icmp ne i8* %1, null, !dbg !3685
  %10 = icmp ne i8* %2, null, !dbg !3686
  %11 = and i1 %9, %10, !dbg !3687
  br i1 %11, label %13, label %12, !dbg !3687

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !3688
  unreachable, !dbg !3688

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3689
  store i8* %1, i8** %14, align 8, !dbg !3690, !tbaa !2002
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3691
  store i8* %2, i8** %15, align 8, !dbg !3692, !tbaa !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3644, metadata !1164), !dbg !3678
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3693
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !3694
  ret i8* %16, !dbg !3695
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !3696 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3700, metadata !816), !dbg !3703
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3701, metadata !816), !dbg !3704
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3702, metadata !816), !dbg !3705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3627, metadata !816) #11, !dbg !3706
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3628, metadata !816) #11, !dbg !3708
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3629, metadata !816) #11, !dbg !3709
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3630, metadata !816) #11, !dbg !3710
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3635, metadata !816) #11, !dbg !3711
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3640, metadata !816) #11, !dbg !3713
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3641, metadata !816) #11, !dbg !3714
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3642, metadata !816) #11, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3643, metadata !816) #11, !dbg !3716
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3717
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !3717
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3718, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3644, metadata !1164) #11, !dbg !3719
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1983, metadata !816) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1984, metadata !816) #11, !dbg !3722
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !816) #11, !dbg !3723
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1983, metadata !816) #11, !dbg !3720
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !1983, metadata !816) #11, !dbg !3720
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3724
  store i32 10, i32* %6, align 8, !dbg !3725, !tbaa !1913
  %7 = icmp ne i8* %0, null, !dbg !3726
  %8 = icmp ne i8* %1, null, !dbg !3727
  %9 = and i1 %7, %8, !dbg !3728
  br i1 %9, label %11, label %10, !dbg !3728

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !3729
  unreachable, !dbg !3729

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3730
  store i8* %0, i8** %12, align 8, !dbg !3731, !tbaa !2002
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3732
  store i8* %1, i8** %13, align 8, !dbg !3733, !tbaa !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3644, metadata !1164) #11, !dbg !3719
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3734
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !3735
  ret i8* %14, !dbg !3736
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !3737 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3741, metadata !816), !dbg !3745
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3742, metadata !816), !dbg !3746
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3743, metadata !816), !dbg !3747
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3744, metadata !816), !dbg !3748
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3635, metadata !816) #11, !dbg !3749
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3640, metadata !816) #11, !dbg !3751
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3641, metadata !816) #11, !dbg !3752
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3642, metadata !816) #11, !dbg !3753
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3643, metadata !816) #11, !dbg !3754
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3755
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !3756, !tbaa.struct !3474
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3644, metadata !1164) #11, !dbg !3757
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1983, metadata !816) #11, !dbg !3758
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1984, metadata !816) #11, !dbg !3760
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1985, metadata !816) #11, !dbg !3761
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !1983, metadata !816) #11, !dbg !3758
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !1983, metadata !816) #11, !dbg !3758
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3762
  store i32 10, i32* %7, align 8, !dbg !3763, !tbaa !1913
  %8 = icmp ne i8* %0, null, !dbg !3764
  %9 = icmp ne i8* %1, null, !dbg !3765
  %10 = and i1 %8, %9, !dbg !3766
  br i1 %10, label %12, label %11, !dbg !3766

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !3767
  unreachable, !dbg !3767

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3768
  store i8* %0, i8** %13, align 8, !dbg !3769, !tbaa !2002
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3770
  store i8* %1, i8** %14, align 8, !dbg !3771, !tbaa !2005
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3644, metadata !1164) #11, !dbg !3757
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3772
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3773
  ret i8* %15, !dbg !3774
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3775 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3779, metadata !816), !dbg !3782
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3780, metadata !816), !dbg !3783
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3781, metadata !816), !dbg !3784
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3785
  ret i8* %4, !dbg !3786
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !3787 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3791, metadata !816), !dbg !3793
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3792, metadata !816), !dbg !3794
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3779, metadata !816) #11, !dbg !3795
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3780, metadata !816) #11, !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3781, metadata !816) #11, !dbg !3798
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3799
  ret i8* %3, !dbg !3800
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !3801 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3805, metadata !816), !dbg !3807
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3806, metadata !816), !dbg !3808
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3779, metadata !816) #11, !dbg !3809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3780, metadata !816) #11, !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3781, metadata !816) #11, !dbg !3812
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3813
  ret i8* %3, !dbg !3814
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3819, metadata !816), !dbg !3820
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3805, metadata !816) #11, !dbg !3821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3806, metadata !816) #11, !dbg !3823
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3779, metadata !816) #11, !dbg !3824
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3780, metadata !816) #11, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !3781, metadata !816) #11, !dbg !3827
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3828
  ret i8* %2, !dbg !3829
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !3830 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3875, metadata !816), !dbg !3881
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3876, metadata !816), !dbg !3882
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3877, metadata !816), !dbg !3883
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3878, metadata !816), !dbg !3884
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3879, metadata !816), !dbg !3885
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !3880, metadata !816), !dbg !3886
  %7 = icmp eq i8* %1, null, !dbg !3887
  br i1 %7, label %10, label %8, !dbg !3889

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.146, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3890
  br label %12, !dbg !3890

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.147, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3891
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.148, i64 0, i64 0), i32 5) #11, !dbg !3892
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !3893
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.149, i64 0, i64 0), i32 5) #11, !dbg !3895
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !3896
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
  ], !dbg !3897

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !3898
  unreachable, !dbg !3898

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.150, i64 0, i64 0), i32 5) #11, !dbg !3900
  %20 = load i8*, i8** %4, align 8, !dbg !3900, !tbaa !824
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3901
  br label %146, !dbg !3903

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.151, i64 0, i64 0), i32 5) #11, !dbg !3904
  %24 = load i8*, i8** %4, align 8, !dbg !3904, !tbaa !824
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3904
  %26 = load i8*, i8** %25, align 8, !dbg !3904, !tbaa !824
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3905
  br label %146, !dbg !3906

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.152, i64 0, i64 0), i32 5) #11, !dbg !3907
  %30 = load i8*, i8** %4, align 8, !dbg !3907, !tbaa !824
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3907
  %32 = load i8*, i8** %31, align 8, !dbg !3907, !tbaa !824
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3907
  %34 = load i8*, i8** %33, align 8, !dbg !3907, !tbaa !824
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3908
  br label %146, !dbg !3909

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.153, i64 0, i64 0), i32 5) #11, !dbg !3910
  %38 = load i8*, i8** %4, align 8, !dbg !3910, !tbaa !824
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3910
  %40 = load i8*, i8** %39, align 8, !dbg !3910, !tbaa !824
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3910
  %42 = load i8*, i8** %41, align 8, !dbg !3910, !tbaa !824
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3910
  %44 = load i8*, i8** %43, align 8, !dbg !3910, !tbaa !824
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3911
  br label %146, !dbg !3912

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.154, i64 0, i64 0), i32 5) #11, !dbg !3913
  %48 = load i8*, i8** %4, align 8, !dbg !3913, !tbaa !824
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3913
  %50 = load i8*, i8** %49, align 8, !dbg !3913, !tbaa !824
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3913
  %52 = load i8*, i8** %51, align 8, !dbg !3913, !tbaa !824
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3913
  %54 = load i8*, i8** %53, align 8, !dbg !3913, !tbaa !824
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3913
  %56 = load i8*, i8** %55, align 8, !dbg !3913, !tbaa !824
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3914
  br label %146, !dbg !3915

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.155, i64 0, i64 0), i32 5) #11, !dbg !3916
  %60 = load i8*, i8** %4, align 8, !dbg !3916, !tbaa !824
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3916
  %62 = load i8*, i8** %61, align 8, !dbg !3916, !tbaa !824
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3916
  %64 = load i8*, i8** %63, align 8, !dbg !3916, !tbaa !824
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3916
  %66 = load i8*, i8** %65, align 8, !dbg !3916, !tbaa !824
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3916
  %68 = load i8*, i8** %67, align 8, !dbg !3916, !tbaa !824
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3916
  %70 = load i8*, i8** %69, align 8, !dbg !3916, !tbaa !824
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3917
  br label %146, !dbg !3918

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.156, i64 0, i64 0), i32 5) #11, !dbg !3919
  %74 = load i8*, i8** %4, align 8, !dbg !3919, !tbaa !824
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3919
  %76 = load i8*, i8** %75, align 8, !dbg !3919, !tbaa !824
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3919
  %78 = load i8*, i8** %77, align 8, !dbg !3919, !tbaa !824
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3919
  %80 = load i8*, i8** %79, align 8, !dbg !3919, !tbaa !824
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3919
  %82 = load i8*, i8** %81, align 8, !dbg !3919, !tbaa !824
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3919
  %84 = load i8*, i8** %83, align 8, !dbg !3919, !tbaa !824
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3919
  %86 = load i8*, i8** %85, align 8, !dbg !3919, !tbaa !824
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3920
  br label %146, !dbg !3921

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.157, i64 0, i64 0), i32 5) #11, !dbg !3922
  %90 = load i8*, i8** %4, align 8, !dbg !3922, !tbaa !824
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3922
  %92 = load i8*, i8** %91, align 8, !dbg !3922, !tbaa !824
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3922
  %94 = load i8*, i8** %93, align 8, !dbg !3922, !tbaa !824
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3922
  %96 = load i8*, i8** %95, align 8, !dbg !3922, !tbaa !824
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3922
  %98 = load i8*, i8** %97, align 8, !dbg !3922, !tbaa !824
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3922
  %100 = load i8*, i8** %99, align 8, !dbg !3922, !tbaa !824
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3922
  %102 = load i8*, i8** %101, align 8, !dbg !3922, !tbaa !824
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3922
  %104 = load i8*, i8** %103, align 8, !dbg !3922, !tbaa !824
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3923
  br label %146, !dbg !3924

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.158, i64 0, i64 0), i32 5) #11, !dbg !3925
  %108 = load i8*, i8** %4, align 8, !dbg !3925, !tbaa !824
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3925
  %110 = load i8*, i8** %109, align 8, !dbg !3925, !tbaa !824
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3925
  %112 = load i8*, i8** %111, align 8, !dbg !3925, !tbaa !824
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3925
  %114 = load i8*, i8** %113, align 8, !dbg !3925, !tbaa !824
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3925
  %116 = load i8*, i8** %115, align 8, !dbg !3925, !tbaa !824
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3925
  %118 = load i8*, i8** %117, align 8, !dbg !3925, !tbaa !824
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3925
  %120 = load i8*, i8** %119, align 8, !dbg !3925, !tbaa !824
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3925
  %122 = load i8*, i8** %121, align 8, !dbg !3925, !tbaa !824
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3925
  %124 = load i8*, i8** %123, align 8, !dbg !3925, !tbaa !824
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3926
  br label %146, !dbg !3927

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.159, i64 0, i64 0), i32 5) #11, !dbg !3928
  %128 = load i8*, i8** %4, align 8, !dbg !3928, !tbaa !824
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3928
  %130 = load i8*, i8** %129, align 8, !dbg !3928, !tbaa !824
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3928
  %132 = load i8*, i8** %131, align 8, !dbg !3928, !tbaa !824
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3928
  %134 = load i8*, i8** %133, align 8, !dbg !3928, !tbaa !824
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3928
  %136 = load i8*, i8** %135, align 8, !dbg !3928, !tbaa !824
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3928
  %138 = load i8*, i8** %137, align 8, !dbg !3928, !tbaa !824
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3928
  %140 = load i8*, i8** %139, align 8, !dbg !3928, !tbaa !824
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3928
  %142 = load i8*, i8** %141, align 8, !dbg !3928, !tbaa !824
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3928
  %144 = load i8*, i8** %143, align 8, !dbg !3928, !tbaa !824
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3929
  br label %146, !dbg !3930

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3931
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !3932 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3936, metadata !816), !dbg !3942
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3937, metadata !816), !dbg !3943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3938, metadata !816), !dbg !3944
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3939, metadata !816), !dbg !3945
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !3940, metadata !816), !dbg !3946
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3941, metadata !816), !dbg !3947
  br label %6, !dbg !3948

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !3941, metadata !816), !dbg !3947
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3950
  %9 = load i8*, i8** %8, align 8, !dbg !3950, !tbaa !824
  %10 = icmp eq i8* %9, null, !dbg !3953
  %11 = add i64 %7, 1, !dbg !3955
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !3941, metadata !816), !dbg !3947
  br i1 %10, label %12, label %6, !dbg !3953, !llvm.loop !3957

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3960
  ret void, !dbg !3961
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !3962 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !3973, metadata !816), !dbg !3981
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3974, metadata !816), !dbg !3982
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3975, metadata !816), !dbg !3983
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3976, metadata !816), !dbg !3984
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !3977, metadata !816), !dbg !3985
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3986
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !3986
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3979, metadata !816), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !3978, metadata !816), !dbg !3988
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !3989
  %12 = icmp ult i32 %11, 41, !dbg !3989
  br i1 %12, label %13, label %18, !dbg !3989

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3993
  %15 = sext i32 %11 to i64, !dbg !3993
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3993
  %17 = add i32 %11, 8, !dbg !3993
  store i32 %17, i32* %8, align 8, !dbg !3993
  br label %21, !dbg !3993

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3995
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3995
  store i8* %20, i8** %10, align 8, !dbg !3995
  br label %21, !dbg !3995

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !3989
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3997
  %25 = load i8*, i8** %24, align 8, !dbg !3997
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3999
  store i8* %25, i8** %26, align 16, !dbg !4000, !tbaa !824
  %27 = icmp eq i8* %25, null, !dbg !4001
  br i1 %27, label %30, label %28, !dbg !4002

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %29 = icmp ult i32 %22, 41, !dbg !3989
  br i1 %29, label %35, label %32, !dbg !3989

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4004
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4005
  ret void, !dbg !4005

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3995
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3995
  store i8* %34, i8** %10, align 8, !dbg !3995
  br label %40, !dbg !3995

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3993
  %37 = sext i32 %22 to i64, !dbg !3993
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3993
  %39 = add i32 %22, 8, !dbg !3993
  store i32 %39, i32* %8, align 8, !dbg !3993
  br label %40, !dbg !3993

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !3989
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3997
  %44 = load i8*, i8** %43, align 8, !dbg !3997
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3999
  store i8* %44, i8** %45, align 8, !dbg !4000, !tbaa !824
  %46 = icmp eq i8* %44, null, !dbg !4001
  br i1 %46, label %30, label %47, !dbg !4002

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %48 = icmp ult i32 %41, 41, !dbg !3989
  br i1 %48, label %52, label %49, !dbg !3989

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3995
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3995
  store i8* %51, i8** %10, align 8, !dbg !3995
  br label %57, !dbg !3995

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3993
  %54 = sext i32 %41 to i64, !dbg !3993
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3993
  %56 = add i32 %41, 8, !dbg !3993
  store i32 %56, i32* %8, align 8, !dbg !3993
  br label %57, !dbg !3993

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !3989
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3997
  %61 = load i8*, i8** %60, align 8, !dbg !3997
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3999
  store i8* %61, i8** %62, align 16, !dbg !4000, !tbaa !824
  %63 = icmp eq i8* %61, null, !dbg !4001
  br i1 %63, label %30, label %64, !dbg !4002

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %65 = icmp ult i32 %58, 41, !dbg !3989
  br i1 %65, label %69, label %66, !dbg !3989

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3995
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3995
  store i8* %68, i8** %10, align 8, !dbg !3995
  br label %74, !dbg !3995

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3993
  %71 = sext i32 %58 to i64, !dbg !3993
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3993
  %73 = add i32 %58, 8, !dbg !3993
  store i32 %73, i32* %8, align 8, !dbg !3993
  br label %74, !dbg !3993

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !3989
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3997
  %78 = load i8*, i8** %77, align 8, !dbg !3997
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3999
  store i8* %78, i8** %79, align 8, !dbg !4000, !tbaa !824
  %80 = icmp eq i8* %78, null, !dbg !4001
  br i1 %80, label %30, label %81, !dbg !4002

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %82 = icmp ult i32 %75, 41, !dbg !3989
  br i1 %82, label %86, label %83, !dbg !3989

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3995
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3995
  store i8* %85, i8** %10, align 8, !dbg !3995
  br label %91, !dbg !3995

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3993
  %88 = sext i32 %75 to i64, !dbg !3993
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3993
  %90 = add i32 %75, 8, !dbg !3993
  store i32 %90, i32* %8, align 8, !dbg !3993
  br label %91, !dbg !3993

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !3989
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3997
  %95 = load i8*, i8** %94, align 8, !dbg !3997
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3999
  store i8* %95, i8** %96, align 16, !dbg !4000, !tbaa !824
  %97 = icmp eq i8* %95, null, !dbg !4001
  br i1 %97, label %30, label %98, !dbg !4002

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %99 = icmp ult i32 %92, 41, !dbg !3989
  br i1 %99, label %103, label %100, !dbg !3989

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3995
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3995
  store i8* %102, i8** %10, align 8, !dbg !3995
  br label %108, !dbg !3995

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3993
  %105 = sext i32 %92 to i64, !dbg !3993
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3993
  %107 = add i32 %92, 8, !dbg !3993
  store i32 %107, i32* %8, align 8, !dbg !3993
  br label %108, !dbg !3993

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3997
  %111 = load i8*, i8** %110, align 8, !dbg !3997
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3999
  store i8* %111, i8** %112, align 8, !dbg !4000, !tbaa !824
  %113 = icmp eq i8* %111, null, !dbg !4001
  br i1 %113, label %30, label %114, !dbg !4002

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %115 = load i8*, i8** %10, align 8, !dbg !3995
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3995
  store i8* %116, i8** %10, align 8, !dbg !3995
  %117 = bitcast i8* %115 to i8**, !dbg !3997
  %118 = load i8*, i8** %117, align 8, !dbg !3997
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3999
  store i8* %118, i8** %119, align 16, !dbg !4000, !tbaa !824
  %120 = icmp eq i8* %118, null, !dbg !4001
  br i1 %120, label %30, label %121, !dbg !4002

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %122 = load i8*, i8** %10, align 8, !dbg !3995
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3995
  store i8* %123, i8** %10, align 8, !dbg !3995
  %124 = bitcast i8* %122 to i8**, !dbg !3997
  %125 = load i8*, i8** %124, align 8, !dbg !3997
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3999
  store i8* %125, i8** %126, align 8, !dbg !4000, !tbaa !824
  %127 = icmp eq i8* %125, null, !dbg !4001
  br i1 %127, label %30, label %128, !dbg !4002

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %129 = load i8*, i8** %10, align 8, !dbg !3995
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3995
  store i8* %130, i8** %10, align 8, !dbg !3995
  %131 = bitcast i8* %129 to i8**, !dbg !3997
  %132 = load i8*, i8** %131, align 8, !dbg !3997
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3999
  store i8* %132, i8** %133, align 16, !dbg !4000, !tbaa !824
  %134 = icmp eq i8* %132, null, !dbg !4001
  br i1 %134, label %30, label %135, !dbg !4002

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %136 = load i8*, i8** %10, align 8, !dbg !3995
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3995
  store i8* %137, i8** %10, align 8, !dbg !3995
  %138 = bitcast i8* %136 to i8**, !dbg !3997
  %139 = load i8*, i8** %138, align 8, !dbg !3997
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3999
  store i8* %139, i8** %140, align 8, !dbg !4000, !tbaa !824
  %141 = icmp eq i8* %139, null, !dbg !4001
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !3978, metadata !816), !dbg !3988
  %142 = select i1 %141, i64 9, i64 10, !dbg !4002
  br label %30, !dbg !4002
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4006 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4010, metadata !816), !dbg !4020
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4011, metadata !816), !dbg !4021
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4012, metadata !816), !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4013, metadata !816), !dbg !4023
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4024
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4024
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4014, metadata !816), !dbg !4025
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4026
  call void @llvm.va_start(i8* nonnull %6), !dbg !4026
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4027
  call void @llvm.va_end(i8* nonnull %6), !dbg !4028
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4029
  ret void, !dbg !4029
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4030 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.162, i64 0, i64 0), i32 5) #11, !dbg !4031
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.163, i64 0, i64 0)) #11, !dbg !4032
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.164, i64 0, i64 0), i32 5) #11, !dbg !4034
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.165, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.166, i64 0, i64 0)) #11, !dbg !4035
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.167, i64 0, i64 0), i32 5) #11, !dbg !4036
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4036, !tbaa !824
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4037
  ret void, !dbg !4038
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4039 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4043, metadata !816), !dbg !4045
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4044, metadata !816), !dbg !4046
  %3 = udiv i64 9223372036854775807, %1, !dbg !4047
  %4 = icmp ult i64 %3, %0, !dbg !4047
  br i1 %4, label %5, label %6, !dbg !4049

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4050
  unreachable, !dbg !4050

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4051
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4052, metadata !816) #11, !dbg !4057
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4059
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4056, metadata !816) #11, !dbg !4060
  %9 = icmp eq i8* %8, null, !dbg !4061
  %10 = icmp ne i64 %7, 0, !dbg !4063
  %11 = and i1 %10, %9, !dbg !4065
  br i1 %11, label %12, label %13, !dbg !4065

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4066
  unreachable, !dbg !4066

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4067
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4053 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4052, metadata !816), !dbg !4068
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4069
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4056, metadata !816), !dbg !4070
  %3 = icmp eq i8* %2, null, !dbg !4071
  %4 = icmp ne i64 %0, 0, !dbg !4072
  %5 = and i1 %4, %3, !dbg !4073
  br i1 %5, label %6, label %7, !dbg !4073

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4074
  unreachable, !dbg !4074

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4075
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4076 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4080, metadata !816), !dbg !4083
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4081, metadata !816), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4082, metadata !816), !dbg !4085
  %4 = udiv i64 9223372036854775807, %2, !dbg !4086
  %5 = icmp ult i64 %4, %1, !dbg !4086
  br i1 %5, label %6, label %7, !dbg !4088

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4089
  unreachable, !dbg !4089

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4090
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816) #11, !dbg !4095
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4094, metadata !816) #11, !dbg !4097
  %9 = icmp eq i64 %8, 0, !dbg !4098
  %10 = icmp ne i8* %0, null, !dbg !4100
  %11 = and i1 %10, %9, !dbg !4102
  br i1 %11, label %12, label %13, !dbg !4102

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4103
  br label %19, !dbg !4105

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4106
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4091, metadata !816) #11, !dbg !4095
  %15 = icmp eq i8* %14, null, !dbg !4107
  %16 = icmp ne i64 %8, 0, !dbg !4109
  %17 = and i1 %16, %15, !dbg !4111
  br i1 %17, label %18, label %19, !dbg !4111

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4112
  unreachable, !dbg !4112

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4113
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4092 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816), !dbg !4114
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4094, metadata !816), !dbg !4115
  %3 = icmp eq i64 %1, 0, !dbg !4116
  %4 = icmp ne i8* %0, null, !dbg !4117
  %5 = and i1 %4, %3, !dbg !4118
  br i1 %5, label %6, label %7, !dbg !4118

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4119
  br label %13, !dbg !4120

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4121
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4091, metadata !816), !dbg !4114
  %9 = icmp eq i8* %8, null, !dbg !4122
  %10 = icmp ne i64 %1, 0, !dbg !4123
  %11 = and i1 %10, %9, !dbg !4124
  br i1 %11, label %12, label %13, !dbg !4124

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4125
  unreachable, !dbg !4125

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4126
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !772 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !777, metadata !816), !dbg !4127
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !778, metadata !816), !dbg !4128
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !779, metadata !816), !dbg !4129
  %4 = load i64, i64* %1, align 8, !dbg !4130, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !780, metadata !816), !dbg !4131
  %5 = icmp eq i8* %0, null, !dbg !4132
  br i1 %5, label %6, label %13, !dbg !4134

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4135
  br i1 %7, label %8, label %17, !dbg !4138

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4139
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !780, metadata !816), !dbg !4131
  %10 = icmp ugt i64 %2, 128, !dbg !4141
  %11 = zext i1 %10 to i64, !dbg !4141
  %12 = add nuw nsw i64 %9, %11, !dbg !4142
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !780, metadata !816), !dbg !4131
  br label %17, !dbg !4143

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4144
  %15 = icmp ugt i64 %14, %4, !dbg !4147
  br i1 %15, label %20, label %16, !dbg !4148

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4149
  unreachable, !dbg !4149

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !780, metadata !816), !dbg !4131
  store i64 %18, i64* %1, align 8, !dbg !4150, !tbaa !1147
  %19 = mul i64 %18, %2, !dbg !4151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816) #11, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4094, metadata !816) #11, !dbg !4154
  br label %27, !dbg !4155

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4156
  %22 = add i64 %4, 1, !dbg !4157
  %23 = add i64 %22, %21, !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !780, metadata !816), !dbg !4131
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !780, metadata !816), !dbg !4131
  store i64 %23, i64* %1, align 8, !dbg !4150, !tbaa !1147
  %24 = mul i64 %23, %2, !dbg !4151
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816) #11, !dbg !4152
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4094, metadata !816) #11, !dbg !4154
  %25 = icmp eq i64 %24, 0, !dbg !4159
  br i1 %25, label %26, label %27, !dbg !4155

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4160
  br label %34, !dbg !4161

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4162
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4091, metadata !816) #11, !dbg !4152
  %30 = icmp eq i8* %29, null, !dbg !4163
  %31 = icmp ne i64 %28, 0, !dbg !4164
  %32 = and i1 %31, %30, !dbg !4165
  br i1 %32, label %33, label %34, !dbg !4165

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4166
  unreachable, !dbg !4166

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4167
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4168 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4170, metadata !816), !dbg !4171
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4052, metadata !816) #11, !dbg !4172
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4174
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4056, metadata !816) #11, !dbg !4175
  %3 = icmp eq i8* %2, null, !dbg !4176
  %4 = icmp ne i64 %0, 0, !dbg !4177
  %5 = and i1 %4, %3, !dbg !4178
  br i1 %5, label %6, label %7, !dbg !4178

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4179
  unreachable, !dbg !4179

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4180
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4181 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4185, metadata !816), !dbg !4187
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4186, metadata !816), !dbg !4188
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !777, metadata !816) #11, !dbg !4189
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !778, metadata !816) #11, !dbg !4191
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !779, metadata !816) #11, !dbg !4192
  %3 = load i64, i64* %1, align 8, !dbg !4193, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  %4 = icmp eq i8* %0, null, !dbg !4195
  br i1 %4, label %5, label %8, !dbg !4196

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4197
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4198
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  store i64 %7, i64* %1, align 8, !dbg !4199, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816) #11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4094, metadata !816) #11, !dbg !4202
  br label %17, !dbg !4203

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4204
  br i1 %9, label %11, label %10, !dbg !4205

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4206
  unreachable, !dbg !4206

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4207
  %13 = add i64 %3, 1, !dbg !4208
  %14 = add i64 %13, %12, !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !780, metadata !816) #11, !dbg !4194
  store i64 %14, i64* %1, align 8, !dbg !4199, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4091, metadata !816) #11, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4094, metadata !816) #11, !dbg !4202
  %15 = icmp eq i64 %14, 0, !dbg !4210
  br i1 %15, label %16, label %17, !dbg !4203

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4211
  br label %24, !dbg !4212

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4213
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4091, metadata !816) #11, !dbg !4200
  %20 = icmp eq i8* %19, null, !dbg !4214
  %21 = icmp ne i64 %18, 0, !dbg !4215
  %22 = and i1 %21, %20, !dbg !4216
  br i1 %22, label %23, label %24, !dbg !4216

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4217
  unreachable, !dbg !4217

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4218
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4219 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4221, metadata !816), !dbg !4222
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4052, metadata !816) #11, !dbg !4223
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4225
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4056, metadata !816) #11, !dbg !4226
  %3 = icmp eq i8* %2, null, !dbg !4227
  %4 = icmp ne i64 %0, 0, !dbg !4228
  %5 = and i1 %4, %3, !dbg !4229
  br i1 %5, label %6, label %7, !dbg !4229

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4230
  unreachable, !dbg !4230

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4231
  ret i8* %2, !dbg !4232
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4233 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4235, metadata !816), !dbg !4238
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4236, metadata !816), !dbg !4239
  %3 = udiv i64 9223372036854775807, %1, !dbg !4240
  %4 = icmp ult i64 %3, %0, !dbg !4240
  br i1 %4, label %8, label %5, !dbg !4242

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4237, metadata !816), !dbg !4245
  %7 = icmp eq i8* %6, null, !dbg !4246
  br i1 %7, label %8, label %9, !dbg !4247

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4249
  unreachable, !dbg !4249

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4250
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4251 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4255, metadata !816), !dbg !4257
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4256, metadata !816), !dbg !4258
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4052, metadata !816) #11, !dbg !4259
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4261
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4056, metadata !816) #11, !dbg !4262
  %4 = icmp eq i8* %3, null, !dbg !4263
  %5 = icmp ne i64 %1, 0, !dbg !4264
  %6 = and i1 %5, %4, !dbg !4265
  br i1 %6, label %7, label %8, !dbg !4265

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4266
  unreachable, !dbg !4266

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4267
  ret i8* %3, !dbg !4268
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4269 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4271, metadata !816), !dbg !4272
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4273
  %3 = add i64 %2, 1, !dbg !4274
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4255, metadata !816) #11, !dbg !4275
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4256, metadata !816) #11, !dbg !4278
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4052, metadata !816) #11, !dbg !4279
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4281
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4056, metadata !816) #11, !dbg !4282
  %5 = icmp eq i8* %4, null, !dbg !4283
  %6 = icmp ne i64 %3, 0, !dbg !4284
  %7 = and i1 %6, %5, !dbg !4285
  br i1 %7, label %8, label %9, !dbg !4285

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4286
  unreachable, !dbg !4286

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4287
  ret i8* %4, !dbg !4288
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4289 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4291, !tbaa !919
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.178, i64 0, i64 0), i32 5) #11, !dbg !4292
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.179, i64 0, i64 0), i8* %2) #11, !dbg !4293
  tail call void @abort() #14, !dbg !4295
  unreachable, !dbg !4295
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4296 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4299, metadata !816), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4300, metadata !816), !dbg !4303
  %3 = tail call noalias i8* @__strndup(i8* %0, i64 %1) #11, !dbg !4304
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4301, metadata !816), !dbg !4305
  %4 = icmp eq i8* %3, null, !dbg !4306
  br i1 %4, label %5, label %6, !dbg !4308

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4309
  unreachable, !dbg !4309

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4310
}

; Function Attrs: nounwind
declare noalias i8* @__strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !4311 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4314, metadata !816), !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4315, metadata !816), !dbg !4321
  %3 = icmp eq i64 %0, 0, !dbg !4322
  %4 = icmp eq i64 %1, 0, !dbg !4323
  %5 = or i1 %3, %4, !dbg !4325
  br i1 %5, label %12, label %6, !dbg !4325

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4326
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4317, metadata !816), !dbg !4327
  %8 = udiv i64 %7, %1, !dbg !4328
  %9 = icmp eq i64 %8, %0, !dbg !4330
  br i1 %9, label %12, label %10, !dbg !4331

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !4332
  store i32 12, i32* %11, align 4, !dbg !4334, !tbaa !919
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4314, metadata !816), !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !4315, metadata !816), !dbg !4321
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4335
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !4316, metadata !816), !dbg !4336
  br label %16, !dbg !4337

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !4338
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4384, metadata !816), !dbg !4388
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4385, metadata !816), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4387, metadata !816), !dbg !4390
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4391
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4386, metadata !816), !dbg !4392
  %3 = icmp slt i32 %2, 0, !dbg !4393
  br i1 %3, label %4, label %6, !dbg !4395

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4396
  br label %24, !dbg !4397

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4398
  %8 = icmp eq i32 %7, 0, !dbg !4398
  br i1 %8, label %13, label %9, !dbg !4400

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4401
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4403
  %12 = icmp eq i64 %11, -1, !dbg !4405
  br i1 %12, label %16, label %13, !dbg !4406

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4407
  %15 = icmp eq i32 %14, 0, !dbg !4407
  br i1 %15, label %16, label %18, !dbg !4408

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4385, metadata !816), !dbg !4389
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4387, metadata !816), !dbg !4390
  br label %24, !dbg !4411

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !4412
  %20 = load i32, i32* %19, align 4, !dbg !4412, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4385, metadata !816), !dbg !4389
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !4385, metadata !816), !dbg !4389
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4410
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !4387, metadata !816), !dbg !4390
  %22 = icmp eq i32 %20, 0, !dbg !4413
  br i1 %22, label %24, label %23, !dbg !4411

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4415, !tbaa !919
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !4387, metadata !816), !dbg !4390
  br label %24, !dbg !4417

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !4418
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !4419 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4464, metadata !816), !dbg !4465
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4466
  br i1 %2, label %6, label %3, !dbg !4468

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4469
  %5 = icmp eq i32 %4, 0, !dbg !4469
  br i1 %5, label %6, label %8, !dbg !4471

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4473
  br label %17, !dbg !4474

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4475, metadata !816) #11, !dbg !4480
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4482
  %10 = load i32, i32* %9, align 8, !dbg !4482, !tbaa !4484
  %11 = and i32 %10, 256, !dbg !4486
  %12 = icmp eq i32 %11, 0, !dbg !4486
  br i1 %12, label %15, label %13, !dbg !4487

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4488
  br label %15, !dbg !4488

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4489
  br label %17, !dbg !4490

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !4491
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @rpl_freopen(i8*, i8* nonnull, %struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !4492 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4537, metadata !816), !dbg !4550
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4538, metadata !816), !dbg !4551
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !4539, metadata !816), !dbg !4552
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4553, metadata !816) #11, !dbg !4558
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4556, metadata !816) #11, !dbg !4560
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !4557, metadata !816) #11, !dbg !4561
  %4 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* nonnull %1, %struct._IO_FILE* nonnull %2) #11, !dbg !4562
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !4540, metadata !816), !dbg !4563
  %5 = icmp ne %struct._IO_FILE* %4, null, !dbg !4564
  %6 = icmp ne i8* %0, null, !dbg !4565
  %7 = and i1 %6, %5, !dbg !4566
  br i1 %7, label %8, label %25, !dbg !4566

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @fileno(%struct._IO_FILE* nonnull %4) #11, !dbg !4567
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4542, metadata !816), !dbg !4568
  %10 = tail call i32 @dup2(i32 %9, i32 %9) #11, !dbg !4569
  %11 = icmp slt i32 %10, 0, !dbg !4570
  br i1 %11, label %12, label %25, !dbg !4571

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1, !dbg !4572
  %14 = load i32, i32* %13, align 4, !dbg !4572, !tbaa !919
  %15 = icmp eq i32 %14, 9, !dbg !4574
  br i1 %15, label %16, label %25, !dbg !4575

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.190, i64 0, i64 0), i32 524288) #11, !dbg !4577
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !4546, metadata !816), !dbg !4578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4549, metadata !816), !dbg !4579
  %18 = icmp eq i32 %17, %9, !dbg !4580
  br i1 %18, label %23, label %19, !dbg !4582

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @dup2(i32 %17, i32 %9) #11, !dbg !4583
  %21 = icmp slt i32 %20, 0, !dbg !4586
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4549, metadata !816), !dbg !4579
  %22 = tail call i32 @close(i32 %17) #11, !dbg !4587
  br i1 %21, label %25, label %23

; <label>:23:                                     ; preds = %19, %16
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !4549, metadata !816), !dbg !4579
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4553, metadata !816) #11, !dbg !4588
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4556, metadata !816) #11, !dbg !4591
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !4557, metadata !816) #11, !dbg !4592
  %24 = tail call %struct._IO_FILE* @freopen(i8* nonnull %0, i8* nonnull %1, %struct._IO_FILE* nonnull %4) #11, !dbg !4593
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !4540, metadata !816), !dbg !4563
  br label %25, !dbg !4594

; <label>:25:                                     ; preds = %19, %8, %12, %23, %3
  %26 = phi %struct._IO_FILE* [ %4, %3 ], [ %4, %12 ], [ %4, %8 ], [ %24, %23 ], [ %4, %19 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %26, i64 0, metadata !4540, metadata !816), !dbg !4563
  ret %struct._IO_FILE* %26, !dbg !4595
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4642, metadata !816), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4643, metadata !816), !dbg !4649
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !4644, metadata !816), !dbg !4650
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4651
  %5 = load i8*, i8** %4, align 8, !dbg !4651, !tbaa !4652
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4653
  %7 = load i8*, i8** %6, align 8, !dbg !4653, !tbaa !4654
  %8 = icmp eq i8* %5, %7, !dbg !4655
  br i1 %8, label %9, label %28, !dbg !4656

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4657
  %11 = load i8*, i8** %10, align 8, !dbg !4657, !tbaa !4659
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4660
  %13 = load i8*, i8** %12, align 8, !dbg !4660, !tbaa !4661
  %14 = icmp eq i8* %11, %13, !dbg !4662
  br i1 %14, label %15, label %28, !dbg !4663

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4664
  %17 = load i8*, i8** %16, align 8, !dbg !4664, !tbaa !4665
  %18 = icmp eq i8* %17, null, !dbg !4666
  br i1 %18, label %19, label %28, !dbg !4667

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4669
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4670
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !4645, metadata !816), !dbg !4672
  %22 = icmp eq i64 %21, -1, !dbg !4673
  br i1 %22, label %30, label %23, !dbg !4675

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4676
  %25 = load i32, i32* %24, align 8, !dbg !4677, !tbaa !4484
  %26 = and i32 %25, -17, !dbg !4677
  store i32 %26, i32* %24, align 8, !dbg !4677, !tbaa !4484
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4678
  store i64 %21, i64* %27, align 8, !dbg !4679, !tbaa !4680
  br label %30, !dbg !4681

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4682
  br label %30, !dbg !4683

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !4684
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !4685 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !4702, metadata !816), !dbg !4711
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4703, metadata !816), !dbg !4712
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4704, metadata !816), !dbg !4713
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !4705, metadata !816), !dbg !4714
  %6 = bitcast i32* %5 to i8*, !dbg !4715
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !4715
  %7 = icmp eq i32* %0, null, !dbg !4716
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !4702, metadata !816), !dbg !4711
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4718
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !4702, metadata !816), !dbg !4711
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4719
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !4706, metadata !816), !dbg !4720
  %10 = icmp ugt i64 %9, -3, !dbg !4721
  %11 = icmp ne i64 %2, 0, !dbg !4722
  %12 = and i1 %11, %10, !dbg !4724
  br i1 %12, label %13, label %18, !dbg !4724

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4725
  br i1 %14, label %18, label %15, !dbg !4727

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4729, !tbaa !993
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !4708, metadata !816), !dbg !4730
  %17 = zext i8 %16 to i32, !dbg !4731
  store i32 %17, i32* %8, align 4, !dbg !4732, !tbaa !919
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !4733
  ret i64 %19, !dbg !4733
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !4734 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4735, !tbaa !824
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.195, i64 0, i64 0), i32 5) #11, !dbg !4735
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.196, i64 0, i64 0), i8* %2) #11, !dbg !4736
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4738, !tbaa !919
  tail call void @exit(i32 %4) #14, !dbg !4739
  unreachable, !dbg !4739
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin(%struct.obstack* nocapture, i64, i64, i8* (i64)*, void (i8*)*) local_unnamed_addr #6 !dbg !4740 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4778, metadata !816), !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4779, metadata !816), !dbg !4784
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4780, metadata !816), !dbg !4785
  tail call void @llvm.dbg.value(metadata i8* (i64)* %3, i64 0, metadata !4781, metadata !816), !dbg !4786
  tail call void @llvm.dbg.value(metadata void (i8*)* %4, i64 0, metadata !4782, metadata !816), !dbg !4787
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !4788
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !4789, !tbaa !824
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !4790
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !4791, !tbaa !824
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4792
  %9 = load i8, i8* %8, align 8, !dbg !4793
  %10 = and i8 %9, -2, !dbg !4793
  store i8 %10, i8* %8, align 8, !dbg !4793
  %11 = icmp eq i64 %2, 0, !dbg !4794
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !4802, metadata !816) #11, !dbg !4808
  %12 = select i1 %11, i64 16, i64 %2, !dbg !4809
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !4802, metadata !816) #11, !dbg !4808
  %13 = icmp eq i64 %1, 0, !dbg !4810
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !4801, metadata !816) #11, !dbg !4811
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !4812
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4801, metadata !816) #11, !dbg !4811
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4813
  store i64 %14, i64* %15, align 8, !dbg !4814, !tbaa !4815
  %16 = add i64 %12, -1, !dbg !4816
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4817
  store i64 %16, i64* %17, align 8, !dbg !4818, !tbaa !1119
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4819, metadata !816) #11, !dbg !4825
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4824, metadata !816) #11, !dbg !4827
  %18 = tail call i8* %3(i64 %14) #11, !dbg !4828
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4830
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !4831
  store i8* %18, i8** %20, align 8, !dbg !4831, !tbaa !1123
  %21 = icmp eq i8* %18, null, !dbg !4832
  br i1 %21, label %22, label %24, !dbg !4834

; <label>:22:                                     ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4835, !tbaa !824
  tail call void %23() #14, !dbg !4836
  unreachable, !dbg !4836

; <label>:24:                                     ; preds = %5
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !4837
  %26 = ptrtoint i8* %25 to i64, !dbg !4837
  %27 = add i64 %26, %16, !dbg !4837
  %28 = sub i64 0, %12, !dbg !4837
  %29 = and i64 %27, %28, !dbg !4837
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !4837
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4838
  store i8* %30, i8** %31, align 8, !dbg !4839, !tbaa !1110
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4840
  store i8* %30, i8** %32, align 8, !dbg !4841, !tbaa !1107
  %33 = load i64, i64* %15, align 8, !dbg !4842, !tbaa !4815
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !4843
  %35 = bitcast i8* %18 to i8**, !dbg !4844
  store i8* %34, i8** %35, align 8, !dbg !4845, !tbaa !824
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4846
  store i8* %34, i8** %36, align 8, !dbg !4847, !tbaa !1124
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !4848
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !4848
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !4849, !tbaa !824
  %39 = load i8, i8* %8, align 8, !dbg !4850
  %40 = and i8 %39, -7, !dbg !4851
  store i8 %40, i8* %8, align 8, !dbg !4851
  ret i32 1, !dbg !4852
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @_obstack_begin_1(%struct.obstack* nocapture, i64, i64, i8* (i8*, i64)*, void (i8*, i8*)*, i8*) local_unnamed_addr #6 !dbg !4853 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4857, metadata !816), !dbg !4863
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4858, metadata !816), !dbg !4864
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4859, metadata !816), !dbg !4865
  tail call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, i64 0, metadata !4860, metadata !816), !dbg !4866
  tail call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, i64 0, metadata !4861, metadata !816), !dbg !4867
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !4862, metadata !816), !dbg !4868
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4869
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !4870
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !4871, !tbaa !824
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4872
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !4873
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !4874, !tbaa !824
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4875
  store i8* %5, i8** %11, align 8, !dbg !4876, !tbaa !4877
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4878
  %13 = load i8, i8* %12, align 8, !dbg !4879
  %14 = or i8 %13, 1, !dbg !4879
  store i8 %14, i8* %12, align 8, !dbg !4879
  %15 = icmp eq i64 %2, 0, !dbg !4880
  tail call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !4802, metadata !816) #11, !dbg !4882
  %16 = select i1 %15, i64 16, i64 %2, !dbg !4883
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !4802, metadata !816) #11, !dbg !4882
  %17 = icmp eq i64 %1, 0, !dbg !4884
  tail call void @llvm.dbg.value(metadata i64 4064, i64 0, metadata !4801, metadata !816) #11, !dbg !4885
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !4886
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4801, metadata !816) #11, !dbg !4885
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4887
  store i64 %18, i64* %19, align 8, !dbg !4888, !tbaa !4815
  %20 = add i64 %16, -1, !dbg !4889
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4890
  store i64 %20, i64* %21, align 8, !dbg !4891, !tbaa !1119
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4819, metadata !816) #11, !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4824, metadata !816) #11, !dbg !4894
  %22 = tail call i8* %3(i8* %5, i64 %18) #11, !dbg !4895
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4896
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !4897
  store i8* %22, i8** %24, align 8, !dbg !4897, !tbaa !1123
  %25 = icmp eq i8* %22, null, !dbg !4898
  br i1 %25, label %26, label %28, !dbg !4899

; <label>:26:                                     ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4900, !tbaa !824
  tail call void %27() #14, !dbg !4901
  unreachable, !dbg !4901

; <label>:28:                                     ; preds = %6
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !4902
  %30 = ptrtoint i8* %29 to i64, !dbg !4902
  %31 = add i64 %30, %20, !dbg !4902
  %32 = sub i64 0, %16, !dbg !4902
  %33 = and i64 %31, %32, !dbg !4902
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !4902
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4903
  store i8* %34, i8** %35, align 8, !dbg !4904, !tbaa !1110
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4905
  store i8* %34, i8** %36, align 8, !dbg !4906, !tbaa !1107
  %37 = load i64, i64* %19, align 8, !dbg !4907, !tbaa !4815
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !4908
  %39 = bitcast i8* %22 to i8**, !dbg !4909
  store i8* %38, i8** %39, align 8, !dbg !4910, !tbaa !824
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4911
  store i8* %38, i8** %40, align 8, !dbg !4912, !tbaa !1124
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4913
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !4913
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !4914, !tbaa !824
  %43 = load i8, i8* %12, align 8, !dbg !4915
  %44 = and i8 %43, -7, !dbg !4916
  store i8 %44, i8* %12, align 8, !dbg !4916
  ret i32 1, !dbg !4917
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_newchunk(%struct.obstack* nocapture, i64) local_unnamed_addr #6 !dbg !4918 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4922, metadata !816), !dbg !4931
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4923, metadata !816), !dbg !4932
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4933
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4933, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !4924, metadata !816), !dbg !4934
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, i64 0, metadata !4925, metadata !816), !dbg !4935
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4936
  %6 = bitcast i8** %5 to i64*, !dbg !4936
  %7 = load i64, i64* %6, align 8, !dbg !4936, !tbaa !1107
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4937
  %9 = bitcast i8** %8 to i64*, !dbg !4937
  %10 = load i64, i64* %9, align 8, !dbg !4937, !tbaa !1110
  %11 = sub i64 %7, %10, !dbg !4938
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4926, metadata !816), !dbg !4939
  %12 = add i64 %11, %1, !dbg !4940
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !4928, metadata !816), !dbg !4941
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4942
  %14 = load i64, i64* %13, align 8, !dbg !4942, !tbaa !1119
  %15 = add i64 %12, %14, !dbg !4943
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4929, metadata !816), !dbg !4944
  %16 = lshr i64 %11, 3, !dbg !4945
  %17 = add nuw nsw i64 %16, 100, !dbg !4946
  %18 = add i64 %17, %15, !dbg !4947
  tail call void @llvm.dbg.value(metadata i64 %18, i64 0, metadata !4930, metadata !816), !dbg !4948
  %19 = icmp ult i64 %18, %15, !dbg !4949
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !4930, metadata !816), !dbg !4948
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !4951
  tail call void @llvm.dbg.value(metadata i64 %20, i64 0, metadata !4930, metadata !816), !dbg !4948
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4952
  %22 = load i64, i64* %21, align 8, !dbg !4952, !tbaa !4815
  %23 = icmp ult i64 %20, %22, !dbg !4954
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !4930, metadata !816), !dbg !4948
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !4955
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4930, metadata !816), !dbg !4948
  %25 = icmp ugt i64 %11, %12, !dbg !4956
  %26 = icmp ugt i64 %12, %15, !dbg !4958
  %27 = or i1 %25, %26, !dbg !4960
  br i1 %27, label %47, label %28, !dbg !4960

; <label>:28:                                     ; preds = %2
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !4819, metadata !816) #11, !dbg !4961
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4824, metadata !816) #11, !dbg !4963
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4964
  %30 = load i8, i8* %29, align 8, !dbg !4964
  %31 = and i8 %30, 1, !dbg !4964
  %32 = icmp eq i8 %31, 0, !dbg !4965
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7
  br i1 %32, label %40, label %34, !dbg !4966

; <label>:34:                                     ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !4967
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !4967, !tbaa !824
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4968
  %38 = load i8*, i8** %37, align 8, !dbg !4968, !tbaa !4877
  %39 = tail call i8* %36(i8* %38, i64 %24) #11, !dbg !4969
  br label %44, !dbg !4970

; <label>:40:                                     ; preds = %28
  %41 = getelementptr inbounds %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !4971
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !4971, !tbaa !824
  %43 = tail call i8* %42(i64 %24) #11, !dbg !4972
  br label %44, !dbg !4973

; <label>:44:                                     ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ]
  %46 = icmp eq i8* %45, null, !dbg !4974
  br i1 %46, label %47, label %49, !dbg !4976

; <label>:47:                                     ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4977, !tbaa !824
  tail call void %48() #14, !dbg !4978
  unreachable, !dbg !4978

; <label>:49:                                     ; preds = %44
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !4979
  store i8* %45, i8** %50, align 8, !dbg !4979, !tbaa !1123
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !4980
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !4980
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !4981, !tbaa !824
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !4982
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4983
  store i8* %53, i8** %54, align 8, !dbg !4984, !tbaa !1124
  %55 = bitcast i8* %45 to i8**, !dbg !4985
  store i8* %53, i8** %55, align 8, !dbg !4986, !tbaa !824
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !4987
  %57 = ptrtoint i8* %56 to i64, !dbg !4987
  %58 = load i64, i64* %13, align 8, !dbg !4987, !tbaa !1119
  %59 = add i64 %58, %57, !dbg !4987
  %60 = xor i64 %58, -1, !dbg !4987
  %61 = and i64 %59, %60, !dbg !4987
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !4987
  tail call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !4927, metadata !816), !dbg !4988
  %63 = load i8*, i8** %8, align 8, !dbg !4989, !tbaa !1110
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %11, i32 1, i1 false), !dbg !4990
  %64 = load i8, i8* %29, align 8, !dbg !4991
  %65 = and i8 %64, 2, !dbg !4991
  %66 = icmp eq i8 %65, 0, !dbg !4993
  br i1 %66, label %67, label %92, !dbg !4994

; <label>:67:                                     ; preds = %49
  %68 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !4995
  %69 = ptrtoint i8* %68 to i64, !dbg !4995
  %70 = add i64 %58, %69, !dbg !4995
  %71 = and i64 %70, %60, !dbg !4995
  %72 = getelementptr inbounds i8, i8* null, i64 %71, !dbg !4995
  %73 = icmp eq i8* %63, %72, !dbg !4996
  br i1 %73, label %74, label %92, !dbg !4997

; <label>:74:                                     ; preds = %67
  %75 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !4999
  %76 = bitcast %struct._obstack_chunk** %75 to i64*, !dbg !4999
  %77 = load i64, i64* %76, align 8, !dbg !4999, !tbaa !824
  %78 = bitcast i8* %51 to i64*, !dbg !5001
  store i64 %77, i64* %78, align 8, !dbg !5001, !tbaa !824
  %79 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !5002
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5003, metadata !816) #11, !dbg !5009
  tail call void @llvm.dbg.value(metadata i8* %79, i64 0, metadata !5008, metadata !816) #11, !dbg !5011
  %80 = load i8, i8* %29, align 8, !dbg !5012
  %81 = and i8 %80, 1, !dbg !5012
  %82 = icmp eq i8 %81, 0, !dbg !5014
  %83 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  br i1 %82, label %89, label %84, !dbg !5015

; <label>:84:                                     ; preds = %74
  %85 = bitcast %union.anon.1* %83 to void (i8*, i8*)**, !dbg !5016
  %86 = load void (i8*, i8*)*, void (i8*, i8*)** %85, align 8, !dbg !5016, !tbaa !824
  %87 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !5017
  %88 = load i8*, i8** %87, align 8, !dbg !5017, !tbaa !4877
  tail call void %86(i8* %88, i8* %79) #11, !dbg !5018
  br label %92, !dbg !5018

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %union.anon.1, %union.anon.1* %83, i64 0, i32 0, !dbg !5019
  %91 = load void (i8*)*, void (i8*)** %90, align 8, !dbg !5019, !tbaa !824
  tail call void %91(i8* %79) #11, !dbg !5020
  br label %92

; <label>:92:                                     ; preds = %89, %84, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !5021, !tbaa !1110
  %93 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !5022
  store i8* %93, i8** %5, align 8, !dbg !5023, !tbaa !1107
  %94 = load i8, i8* %29, align 8, !dbg !5024
  %95 = and i8 %94, -3, !dbg !5024
  store i8 %95, i8* %29, align 8, !dbg !5024
  ret void, !dbg !5025
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly, i8* readnone) local_unnamed_addr #9 !dbg !5026 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5030, metadata !816), !dbg !5034
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5031, metadata !816), !dbg !5035
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5036
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5032, metadata !816), !dbg !5037
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5038
  br i1 %5, label %21, label %6, !dbg !5040

; <label>:6:                                      ; preds = %2
  br label %7, !dbg !5041

; <label>:7:                                      ; preds = %6, %15
  %8 = phi %struct._obstack_chunk* [ %17, %15 ], [ %4, %6 ]
  %9 = bitcast %struct._obstack_chunk* %8 to i8*, !dbg !5041
  %10 = icmp ult i8* %9, %1, !dbg !5043
  br i1 %10, label %11, label %15, !dbg !5044

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0, !dbg !5045
  %13 = load i8*, i8** %12, align 8, !dbg !5045, !tbaa !824
  %14 = icmp ult i8* %13, %1, !dbg !5047
  br i1 %14, label %15, label %19, !dbg !5048

; <label>:15:                                     ; preds = %7, %11
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1, !dbg !5050
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, i64 0, metadata !5032, metadata !816), !dbg !5037
  %18 = icmp eq %struct._obstack_chunk* %17, null, !dbg !5038
  br i1 %18, label %19, label %7, !dbg !5040, !llvm.loop !5052

; <label>:19:                                     ; preds = %15, %11
  %20 = phi i32 [ 0, %15 ], [ 1, %11 ]
  br label %21, !dbg !5055

; <label>:21:                                     ; preds = %19, %2
  %22 = phi i32 [ 0, %2 ], [ %20, %19 ]
  ret i32 %22, !dbg !5055
}

; Function Attrs: nounwind sspstrong uwtable
define void @_obstack_free(%struct.obstack* nocapture, i8*) local_unnamed_addr #6 !dbg !5056 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5058, metadata !816), !dbg !5062
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5059, metadata !816), !dbg !5063
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5064
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !5064, !tbaa !1123
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5060, metadata !816), !dbg !5065
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, i64 0, metadata !5060, metadata !816), !dbg !5065
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !5066
  br i1 %5, label %43, label %6, !dbg !5068

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = getelementptr inbounds %union.anon.1, %union.anon.1* %8, i64 0, i32 0
  %10 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  br label %12, !dbg !5068

; <label>:12:                                     ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !5069
  %15 = icmp ult i8* %14, %1, !dbg !5071
  br i1 %15, label %16, label %20, !dbg !5072

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !5073
  %18 = load i8*, i8** %17, align 8, !dbg !5073, !tbaa !824
  %19 = icmp ult i8* %18, %1, !dbg !5075
  br i1 %19, label %20, label %35, !dbg !5076

; <label>:20:                                     ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !5078
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !5078, !tbaa !824
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5061, metadata !816), !dbg !5080
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5003, metadata !816) #11, !dbg !5081
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !5008, metadata !816) #11, !dbg !5083
  %23 = load i8, i8* %7, align 8, !dbg !5084
  %24 = and i8 %23, 1, !dbg !5084
  %25 = icmp eq i8 %24, 0, !dbg !5085
  br i1 %25, label %29, label %26, !dbg !5086

; <label>:26:                                     ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8, !dbg !5087, !tbaa !824
  %28 = load i8*, i8** %11, align 8, !dbg !5088, !tbaa !4877
  tail call void %27(i8* %28, i8* nonnull %14) #11, !dbg !5089
  br label %31, !dbg !5089

; <label>:29:                                     ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %9, align 8, !dbg !5090, !tbaa !824
  tail call void %30(i8* nonnull %14) #11, !dbg !5091
  br label %31

; <label>:31:                                     ; preds = %26, %29
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5060, metadata !816), !dbg !5065
  %32 = load i8, i8* %7, align 8, !dbg !5092
  %33 = or i8 %32, 2, !dbg !5092
  store i8 %33, i8* %7, align 8, !dbg !5092
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, i64 0, metadata !5060, metadata !816), !dbg !5065
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !5066
  br i1 %34, label %42, label %12, !dbg !5068, !llvm.loop !5093

; <label>:35:                                     ; preds = %16
  %36 = bitcast %struct._obstack_chunk* %13 to i64*
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !5096
  store i8* %1, i8** %37, align 8, !dbg !5099, !tbaa !1107
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !5100
  store i8* %1, i8** %38, align 8, !dbg !5101, !tbaa !1110
  %39 = load i64, i64* %36, align 8, !dbg !5102, !tbaa !824
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !5103
  %41 = bitcast i8** %40 to i64*, !dbg !5104
  store i64 %39, i64* %41, align 8, !dbg !5104, !tbaa !1124
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !5105, !tbaa !1123
  br label %46, !dbg !5106

; <label>:42:                                     ; preds = %31
  br label %43, !dbg !5107

; <label>:43:                                     ; preds = %42, %2
  %44 = icmp eq i8* %1, null, !dbg !5107
  br i1 %44, label %46, label %45, !dbg !5109

; <label>:45:                                     ; preds = %43
  tail call void @abort() #14, !dbg !5110
  unreachable, !dbg !5110

; <label>:46:                                     ; preds = %43, %35
  ret void, !dbg !5111
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @_obstack_memory_used(%struct.obstack* nocapture readonly) local_unnamed_addr #9 !dbg !5112 {
  tail call void @llvm.dbg.value(metadata %struct.obstack* %0, i64 0, metadata !5116, metadata !816), !dbg !5119
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5118, metadata !816), !dbg !5120
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !5121
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !tbaa !824
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5118, metadata !816), !dbg !5120
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, i64 0, metadata !5117, metadata !816), !dbg !5123
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !5124
  br i1 %4, label %18, label %5, !dbg !5127

; <label>:5:                                      ; preds = %1
  br label %6, !dbg !5129

; <label>:6:                                      ; preds = %5, %6
  %7 = phi %struct._obstack_chunk* [ %15, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %13, %6 ], [ 0, %5 ]
  %9 = bitcast %struct._obstack_chunk* %7 to i64*, !dbg !5129
  %10 = load i64, i64* %9, align 8, !dbg !5129, !tbaa !824
  %11 = ptrtoint %struct._obstack_chunk* %7 to i64, !dbg !5131
  %12 = sub i64 %8, %11, !dbg !5131
  %13 = add i64 %12, %10, !dbg !5132
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5118, metadata !816), !dbg !5120
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !5133
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !tbaa !824
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5118, metadata !816), !dbg !5120
  tail call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, i64 0, metadata !5117, metadata !816), !dbg !5123
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !5124
  br i1 %16, label %17, label %6, !dbg !5127, !llvm.loop !5135

; <label>:17:                                     ; preds = %6
  br label %18, !dbg !5138

; <label>:18:                                     ; preds = %17, %1
  %19 = phi i64 [ 0, %1 ], [ %13, %17 ]
  ret i64 %19, !dbg !5138
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5139 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5184, metadata !816), !dbg !5189
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5190
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5191, metadata !816), !dbg !5194
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5196
  %4 = load i32, i32* %3, align 8, !dbg !5196, !tbaa !4484
  %5 = and i32 %4, 32, !dbg !5196
  %6 = icmp eq i32 %5, 0, !dbg !5197
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5198
  %8 = icmp ne i32 %7, 0, !dbg !5199
  br i1 %6, label %9, label %19, !dbg !5200

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5202
  %11 = icmp ne i64 %2, 0, !dbg !5202
  %12 = or i1 %11, %10, !dbg !5202
  %13 = sext i1 %8 to i32, !dbg !5202
  br i1 %12, label %22, label %14, !dbg !5202

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5204
  %16 = load i32, i32* %15, align 4, !dbg !5204, !tbaa !919
  %17 = icmp ne i32 %16, 9, !dbg !5206
  %18 = sext i1 %17 to i32, !dbg !5206
  br label %22, !dbg !5206

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5208

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5210
  store i32 0, i32* %21, align 4, !dbg !5212, !tbaa !919
  br label %22, !dbg !5210

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5213
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !5214 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5217, metadata !816), !dbg !5237
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5218, metadata !816), !dbg !5238
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !5239
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5219, metadata !816), !dbg !5240
  %3 = icmp eq i8* %2, null, !dbg !5241
  br i1 %3, label %15, label %4, !dbg !5242

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !5227, metadata !816), !dbg !5243
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5228, metadata !816), !dbg !5244
  %5 = load i8, i8* %2, align 1, !dbg !5245, !tbaa !993
  %6 = icmp eq i8 %5, 67, !dbg !5247
  br i1 %6, label %7, label %11, !dbg !5250

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !5252
  %9 = load i8, i8* %8, align 1, !dbg !5252, !tbaa !993
  %10 = icmp eq i8 %9, 0, !dbg !5255
  br i1 %10, label %14, label %11, !dbg !5257

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !5233, metadata !816), !dbg !5259
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.205, i64 0, i64 0)) #11, !dbg !5260
  %13 = icmp eq i32 %12, 0, !dbg !5262
  br i1 %13, label %14, label %15, !dbg !5264

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !5218, metadata !816), !dbg !5238
  br label %15, !dbg !5266

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !5267
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5268 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5280, metadata !816), !dbg !5354
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5347, metadata !816), !dbg !5356
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5357
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5272, metadata !816), !dbg !5358
  %4 = icmp eq i8* %3, null, !dbg !5359
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.208, i64 0, i64 0), i8* %3, !dbg !5361
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5272, metadata !816), !dbg !5358
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5362, !tbaa !824
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5294, metadata !816) #11, !dbg !5363
  %7 = icmp eq i8* %6, null, !dbg !5364
  br i1 %7, label %8, label %127, !dbg !5365

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.209, i64 0, i64 0)) #11, !dbg !5366
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5295, metadata !816) #11, !dbg !5367
  %10 = icmp eq i8* %9, null, !dbg !5368
  br i1 %10, label %14, label %11, !dbg !5370

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5371, !tbaa !993
  %13 = icmp eq i8 %12, 0, !dbg !5373
  br i1 %13, label %14, label %15, !dbg !5374

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5376

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.210, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5295, metadata !816) #11, !dbg !5367
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5377
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5298, metadata !816) #11, !dbg !5378
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5300, metadata !816) #11, !dbg !5379
  %18 = icmp eq i64 %17, 0, !dbg !5380
  br i1 %18, label %24, label %19, !dbg !5381

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5382
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5382
  %22 = load i8, i8* %21, align 1, !dbg !5382, !tbaa !993
  %23 = icmp ne i8 %22, 47, !dbg !5384
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5385
  %27 = add i64 %17, 14, !dbg !5386
  %28 = add i64 %27, %26, !dbg !5387
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5388
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5297, metadata !816) #11, !dbg !5389
  %30 = icmp eq i8* %29, null, !dbg !5390
  br i1 %30, label %125, label %31, !dbg !5390

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5391
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5394

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5395, !tbaa !993
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5397
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.211, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5398
  br label %37, !dbg !5399

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5397
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.211, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5398
  br label %37, !dbg !5399

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5400
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5302, metadata !816) #11, !dbg !5401
  %39 = icmp slt i32 %38, 0, !dbg !5402
  br i1 %39, label %123, label %40, !dbg !5403

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.212, i64 0, i64 0)) #11, !dbg !5404
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5303, metadata !816) #11, !dbg !5405
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5406
  br i1 %42, label %48, label %43, !dbg !5407

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5408

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5409
  br label %123, !dbg !5411

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5413
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5414
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5415, metadata !816) #11, !dbg !5420
  %53 = load i8*, i8** %46, align 8, !dbg !5422, !tbaa !4654
  %54 = load i8*, i8** %47, align 8, !dbg !5422, !tbaa !4652
  %55 = icmp ult i8* %53, %54, !dbg !5422
  br i1 %55, label %58, label %56, !dbg !5422, !prof !5423

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5424
  br label %62, !dbg !5424

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5426
  store i8* %59, i8** %46, align 8, !dbg !5426, !tbaa !4654
  %60 = load i8, i8* %53, align 1, !dbg !5426, !tbaa !993
  %61 = zext i8 %60 to i32, !dbg !5426
  br label %62, !dbg !5426

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5428
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5346, metadata !816) #11, !dbg !5430
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5431

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5432

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5415, metadata !816) #11, !dbg !5432
  %66 = load i8*, i8** %46, align 8, !dbg !5436, !tbaa !4654
  %67 = load i8*, i8** %47, align 8, !dbg !5436, !tbaa !4652
  %68 = icmp ult i8* %66, %67, !dbg !5436
  br i1 %68, label %71, label %69, !dbg !5436, !prof !5423

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5437
  br label %75, !dbg !5437

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5438
  store i8* %72, i8** %46, align 8, !dbg !5438, !tbaa !4654
  %73 = load i8, i8* %66, align 1, !dbg !5438, !tbaa !993
  %74 = zext i8 %73 to i32, !dbg !5438
  br label %75, !dbg !5438

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5439
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5346, metadata !816) #11, !dbg !5430
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5440, !llvm.loop !5442

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5445
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.213, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5446
  %80 = icmp slt i32 %79, 2, !dbg !5448
  br i1 %80, label %115, label %81, !dbg !5449

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5450
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5351, metadata !816) #11, !dbg !5451
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5452
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5352, metadata !816) #11, !dbg !5453
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5353, metadata !816) #11, !dbg !5454
  %84 = icmp eq i64 %51, 0, !dbg !5455
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5457

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  %89 = add i64 %86, 2, !dbg !5458
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5460
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  br label %95, !dbg !5461

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5462
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  %93 = add i64 %92, 1, !dbg !5464
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5465
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  %98 = icmp eq i8* %97, null, !dbg !5466
  br i1 %98, label %99, label %100, !dbg !5468

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  call void @free(i8* %52) #11, !dbg !5469
  br label %116, !dbg !5471

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5472
  %102 = xor i64 %83, -1, !dbg !5473
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5473
  %104 = xor i64 %82, -1, !dbg !5474
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5474
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5475, metadata !816) #11, !dbg !5484
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5483, metadata !816) #11, !dbg !5484
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5486
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5487
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5475, metadata !816) #11, !dbg !5488
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5483, metadata !816) #11, !dbg !5488
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5490
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5491
  br label %111, !dbg !5492

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5408

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5492
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5492
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5408

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5408

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5344, metadata !816) #11, !dbg !5408
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5345, metadata !816) #11, !dbg !5412
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5492
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5492
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5493
  %120 = icmp eq i64 %117, 0, !dbg !5494
  br i1 %120, label %123, label %121, !dbg !5496

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5497
  store i8 0, i8* %122, align 1, !dbg !5499, !tbaa !993
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5294, metadata !816) #11, !dbg !5363
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.208, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.208, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.208, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5294, metadata !816) #11, !dbg !5363
  call void @free(i8* %29) #11, !dbg !5500
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.208, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5294, metadata !816) #11, !dbg !5363
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5501, !tbaa !824
  br label %127, !dbg !5502

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5273, metadata !816), !dbg !5503
  %129 = load i8, i8* %128, align 1, !dbg !5504, !tbaa !993
  %130 = icmp eq i8 %129, 0, !dbg !5505
  br i1 %130, label %157, label %131, !dbg !5506

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5508

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5508
  %136 = icmp eq i32 %135, 0, !dbg !5509
  br i1 %136, label %143, label %137, !dbg !5510

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5511
  br i1 %138, label %139, label %147, !dbg !5513

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5514
  %141 = load i8, i8* %140, align 1, !dbg !5514, !tbaa !993
  %142 = icmp eq i8 %141, 0, !dbg !5516
  br i1 %142, label %143, label %147, !dbg !5517

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5519
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5521
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5522
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5272, metadata !816), !dbg !5358
  br label %157, !dbg !5523

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5524
  %149 = add i64 %148, 1, !dbg !5525
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5526
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5273, metadata !816), !dbg !5503
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5527
  %152 = add i64 %151, 1, !dbg !5528
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5529
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5273, metadata !816), !dbg !5503
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5273, metadata !816), !dbg !5503
  %154 = load i8, i8* %153, align 1, !dbg !5504, !tbaa !993
  %155 = icmp eq i8 %154, 0, !dbg !5505
  br i1 %155, label %156, label %132, !dbg !5506, !llvm.loop !5530

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5358

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5272, metadata !816), !dbg !5358
  %159 = load i8, i8* %158, align 1, !dbg !5533, !tbaa !993
  %160 = icmp eq i8 %159, 0, !dbg !5535
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.214, i64 0, i64 0), i8* %158, !dbg !5536
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5272, metadata !816), !dbg !5358
  ret i8* %161, !dbg !5537
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

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !308, !751, !314, !754, !322, !757, !329, !336, !759, !386, !767, !784, !786, !788, !790, !792, !794, !796, !798, !395, !801, !803, !405}
!llvm.ident = !{!806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806, !806}
!llvm.module.flags = !{!807, !808, !809, !810}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 80, type: !294, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !241, globals: !247)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !212, !226}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !3, line: 42, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0)
!8 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1)
!9 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !11, file: !3, line: 250, size: 32, elements: !207)
!11 = distinct !DISubprogram(name: "dc_parse_stream", scope: !3, file: !3, line: 239, type: !12, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !80)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !78}
!14 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !20)
!19 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!20 = !{!21, !23, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !44, !45, !46, !47, !51, !53, !55, !59, !62, !64, !66, !67, !68, !69, !73, !74}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !18, file: !19, line: 242, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !18, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !18, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !18, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !18, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !18, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !18, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !18, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !18, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !18, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !18, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !18, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !18, file: !19, line: 260, baseType: !37, size: 64, offset: 768)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !39)
!39 = !{!40, !41, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !38, file: !19, line: 157, baseType: !37, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !38, file: !19, line: 158, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !38, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !18, file: !19, line: 262, baseType: !42, size: 64, offset: 832)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !18, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !18, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !18, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !49, line: 140, baseType: !50)
!49 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !18, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !18, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!54 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !18, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !18, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !19, line: 150, baseType: null)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !18, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !49, line: 141, baseType: !50)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !18, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !18, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !18, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !18, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !18, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 62, baseType: !72)
!71 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !18, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !18, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 20)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !93, !94, !95, !154, !159, !161, !164, !166, !169, !173, !176, !178, !181, !184, !189, !192, !194, !197, !199, !202, !204}
!81 = !DILocalVariable(name: "fp", arg: 1, scope: !11, file: !3, line: 239, type: !15)
!82 = !DILocalVariable(name: "filename", arg: 2, scope: !11, file: !3, line: 239, type: !78)
!83 = !DILocalVariable(name: "line_number", scope: !11, file: !3, line: 241, type: !70)
!84 = !DILocalVariable(name: "next_G_line", scope: !11, file: !3, line: 242, type: !78)
!85 = !DILocalVariable(name: "input_line", scope: !11, file: !3, line: 243, type: !24)
!86 = !DILocalVariable(name: "input_line_size", scope: !11, file: !3, line: 244, type: !70)
!87 = !DILocalVariable(name: "line", scope: !11, file: !3, line: 245, type: !78)
!88 = !DILocalVariable(name: "term", scope: !11, file: !3, line: 246, type: !78)
!89 = !DILocalVariable(name: "ok", scope: !11, file: !3, line: 247, type: !14)
!90 = !DILocalVariable(name: "state", scope: !11, file: !3, line: 250, type: !10)
!91 = !DILocalVariable(name: "keywd", scope: !92, file: !3, line: 259, type: !24)
!92 = distinct !DILexicalBlock(scope: !11, file: !3, line: 258, column: 5)
!93 = !DILocalVariable(name: "arg", scope: !92, file: !3, line: 259, type: !24)
!94 = !DILocalVariable(name: "unrecognized", scope: !92, file: !3, line: 260, type: !14)
!95 = !DILocalVariable(name: "__o", scope: !96, file: !3, line: 312, type: !103)
!96 = distinct !DILexicalBlock(scope: !97, file: !3, line: 312, column: 19)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 311, column: 17)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 310, column: 19)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 309, column: 13)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 308, column: 15)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 304, column: 9)
!102 = distinct !DILexicalBlock(scope: !92, file: !3, line: 296, column: 11)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !105, line: 174, size: 704, elements: !106)
!105 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!106 = !{!107, !108, !118, !119, !120, !121, !126, !127, !138, !149, !150, !152, !153}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !104, file: !105, line: 176, baseType: !70, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !104, file: !105, line: 177, baseType: !109, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !105, line: 167, size: 128, elements: !111)
!111 = !{!112, !113, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !110, file: !105, line: 169, baseType: !24, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !110, file: !105, line: 170, baseType: !109, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !110, file: !105, line: 171, baseType: !115, offset: 128)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: -1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !104, file: !105, line: 178, baseType: !24, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !104, file: !105, line: 179, baseType: !24, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !104, file: !105, line: 180, baseType: !24, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !104, file: !105, line: 185, baseType: !122, size: 64, offset: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 181, size: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !122, file: !105, line: 183, baseType: !70, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !122, file: !105, line: 184, baseType: !65, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !104, file: !105, line: 186, baseType: !70, size: 64, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !104, file: !105, line: 193, baseType: !128, size: 64, offset: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 189, size: 64, elements: !129)
!129 = !{!130, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !128, file: !105, line: 191, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!65, !70}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !128, file: !105, line: 192, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!65, !65, !70}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !104, file: !105, line: 198, baseType: !139, size: 64, offset: 512)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 194, size: 64, elements: !140)
!140 = !{!141, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !139, file: !105, line: 196, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !65}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !139, file: !105, line: 197, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !65, !65}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !104, file: !105, line: 200, baseType: !65, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !104, file: !105, line: 201, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!151 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !104, file: !105, line: 202, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !104, file: !105, line: 206, baseType: !151, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!154 = !DILocalVariable(name: "__o1", scope: !155, file: !3, line: 312, type: !157)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 312, column: 19)
!156 = distinct !DILexicalBlock(scope: !96, file: !3, line: 312, column: 19)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!159 = !DILocalVariable(name: "__o", scope: !160, file: !3, line: 314, type: !103)
!160 = distinct !DILexicalBlock(scope: !97, file: !3, line: 314, column: 19)
!161 = !DILocalVariable(name: "__o1", scope: !162, file: !3, line: 314, type: !157)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 314, column: 19)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 314, column: 19)
!164 = !DILocalVariable(name: "__o", scope: !165, file: !3, line: 316, type: !103)
!165 = distinct !DILexicalBlock(scope: !97, file: !3, line: 316, column: 19)
!166 = !DILocalVariable(name: "__o1", scope: !167, file: !3, line: 316, type: !157)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 316, column: 19)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 316, column: 19)
!169 = !DILocalVariable(name: "__o", scope: !170, file: !3, line: 321, type: !103)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 321, column: 19)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 319, column: 17)
!172 = distinct !DILexicalBlock(scope: !98, file: !3, line: 318, column: 24)
!173 = !DILocalVariable(name: "__o1", scope: !174, file: !3, line: 321, type: !157)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 321, column: 19)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 321, column: 19)
!176 = !DILocalVariable(name: "__o", scope: !177, file: !3, line: 323, type: !103)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 323, column: 19)
!178 = !DILocalVariable(name: "__o1", scope: !179, file: !3, line: 323, type: !157)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 323, column: 19)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 323, column: 19)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 333, type: !22)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 332, column: 17)
!183 = distinct !DILexicalBlock(scope: !172, file: !3, line: 325, column: 24)
!184 = !DILocalVariable(name: "__o", scope: !185, file: !3, line: 341, type: !103)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 341, column: 23)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 340, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 339, column: 23)
!189 = !DILocalVariable(name: "__o1", scope: !190, file: !3, line: 341, type: !157)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 341, column: 23)
!191 = distinct !DILexicalBlock(scope: !185, file: !3, line: 341, column: 23)
!192 = !DILocalVariable(name: "__o", scope: !193, file: !3, line: 341, type: !103)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!194 = !DILocalVariable(name: "__o1", scope: !195, file: !3, line: 341, type: !157)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 341, column: 23)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 341, column: 23)
!197 = !DILocalVariable(name: "__o", scope: !198, file: !3, line: 342, type: !103)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 342, column: 23)
!199 = !DILocalVariable(name: "__o1", scope: !200, file: !3, line: 342, type: !157)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 342, column: 23)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 342, column: 23)
!202 = !DILocalVariable(name: "__o", scope: !203, file: !3, line: 344, type: !103)
!203 = distinct !DILexicalBlock(scope: !187, file: !3, line: 344, column: 23)
!204 = !DILocalVariable(name: "__o1", scope: !205, file: !3, line: 344, type: !157)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 344, column: 23)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 344, column: 23)
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "ST_TERMNO", value: 0)
!209 = !DIEnumerator(name: "ST_TERMYES", value: 1)
!210 = !DIEnumerator(name: "ST_TERMSURE", value: 2)
!211 = !DIEnumerator(name: "ST_GLOBAL", value: 3)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !213, line: 32, size: 32, elements: !214)
!213 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!215 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!216 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!217 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!218 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!219 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!220 = !DIEnumerator(name: "c_quoting_style", value: 5)
!221 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!222 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!223 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!224 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!225 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 46, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!229 = !DIEnumerator(name: "_ISupper", value: 256)
!230 = !DIEnumerator(name: "_ISlower", value: 512)
!231 = !DIEnumerator(name: "_ISalpha", value: 1024)
!232 = !DIEnumerator(name: "_ISdigit", value: 2048)
!233 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!234 = !DIEnumerator(name: "_ISspace", value: 8192)
!235 = !DIEnumerator(name: "_ISprint", value: 16384)
!236 = !DIEnumerator(name: "_ISgraph", value: 32768)
!237 = !DIEnumerator(name: "_ISblank", value: 1)
!238 = !DIEnumerator(name: "_IScntrl", value: 2)
!239 = !DIEnumerator(name: "_ISpunct", value: 4)
!240 = !DIEnumerator(name: "_ISalnum", value: 8)
!241 = !{!24, !65, !70, !242, !244, !78, !72, !22, !52}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !{!248, !250, !0, !280, !286, !292}
!248 = !DIGlobalVariableExpression(var: !249)
!249 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 60, type: !104, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251)
!251 = distinct !DIGlobalVariable(name: "infomap", scope: !252, file: !253, line: 632, type: !277, isLocal: true, isDefinition: true)
!252 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !253, file: !253, line: 630, type: !254, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !256)
!253 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!254 = !DISubroutineType(types: !255)
!255 = !{null, !78}
!256 = !{!257, !258, !259, !266, !268, !269, !270, !273, !274, !276}
!257 = !DILocalVariable(name: "program", arg: 1, scope: !252, file: !253, line: 630, type: !78)
!258 = !DILocalVariable(name: "node", scope: !252, file: !253, line: 642, type: !78)
!259 = !DILocalVariable(name: "map_prog", scope: !252, file: !253, line: 643, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !252, file: !253, line: 632, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !262, file: !253, line: 632, baseType: !78, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !262, file: !253, line: 632, baseType: !78, size: 64, offset: 64)
!266 = !DILocalVariable(name: "__s1_len", scope: !267, file: !253, line: 645, type: !70)
!267 = distinct !DILexicalBlock(scope: !252, file: !253, line: 645, column: 33)
!268 = !DILocalVariable(name: "__s2_len", scope: !267, file: !253, line: 645, type: !70)
!269 = !DILocalVariable(name: "lc_messages", scope: !252, file: !253, line: 655, type: !78)
!270 = !DILocalVariable(name: "__s1_len", scope: !271, file: !253, line: 656, type: !70)
!271 = distinct !DILexicalBlock(scope: !272, file: !253, line: 656, column: 22)
!272 = distinct !DILexicalBlock(scope: !252, file: !253, line: 656, column: 7)
!273 = !DILocalVariable(name: "__s2_len", scope: !271, file: !253, line: 656, type: !70)
!274 = !DILocalVariable(name: "__s2", scope: !275, file: !253, line: 656, type: !244)
!275 = distinct !DILexicalBlock(scope: !271, file: !253, line: 656, column: 22)
!276 = !DILocalVariable(name: "__result", scope: !275, file: !253, line: 656, type: !22)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 896, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 7)
!280 = !DIGlobalVariableExpression(var: !281)
!281 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !282, line: 1, type: !283, isLocal: true, isDefinition: true)
!282 = !DIFile(filename: "src/dircolors.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 33384, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 4173)
!286 = !DIGlobalVariableExpression(var: !287)
!287 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 62, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 2432, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!290 = !{!291}
!291 = !DISubrange(count: 38)
!292 = !DIGlobalVariableExpression(var: !293)
!293 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 72, type: !288, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 2048, elements: !304)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !297, line: 104, size: 256, elements: !298)
!297 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!298 = !{!299, !300, !301, !303}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !297, line: 106, baseType: !78, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !296, file: !297, line: 109, baseType: !22, size: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !296, file: !297, line: 110, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !296, file: !297, line: 111, baseType: !22, size: 32, offset: 192)
!304 = !{!305}
!305 = !DISubrange(count: 8)
!306 = !DIGlobalVariableExpression(var: !307)
!307 = distinct !DIGlobalVariable(name: "Version", scope: !308, file: !309, line: 2, type: !78, isLocal: false, isDefinition: true)
!308 = distinct !DICompileUnit(language: DW_LANG_C99, file: !309, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !311)
!309 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!310 = !{}
!311 = !{!306}
!312 = !DIGlobalVariableExpression(var: !313)
!313 = distinct !DIGlobalVariable(name: "file_name", scope: !314, file: !319, line: 36, type: !78, isLocal: true, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !316)
!315 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!316 = !{!312, !317}
!317 = !DIGlobalVariableExpression(var: !318)
!318 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !314, file: !319, line: 46, type: !14, isLocal: true, isDefinition: true)
!319 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!320 = !DIGlobalVariableExpression(var: !321)
!321 = distinct !DIGlobalVariable(name: "exit_failure", scope: !322, file: !325, line: 24, type: !326, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !324)
!323 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!324 = !{!320}
!325 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!327 = !DIGlobalVariableExpression(var: !328)
!328 = distinct !DIGlobalVariable(name: "program_name", scope: !329, file: !333, line: 33, type: !78, isLocal: false, isDefinition: true)
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !331, globals: !332)
!330 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!331 = !{!65, !24}
!332 = !{!327}
!333 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!334 = !DIGlobalVariableExpression(var: !335)
!335 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !336, file: !348, line: 77, type: !381, isLocal: false, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !338, retainedTypes: !344, globals: !345)
!337 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!338 = !{!212, !339, !226}
!339 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !213, line: 242, size: 32, elements: !340)
!340 = !{!341, !342, !343}
!341 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!342 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!343 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!344 = !{!22, !52, !70, !24}
!345 = !{!334, !346, !353, !363, !365, !370, !377, !379}
!346 = !DIGlobalVariableExpression(var: !347)
!347 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !336, file: !348, line: 93, type: !349, isLocal: false, isDefinition: true)
!348 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 320, elements: !351)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!351 = !{!352}
!352 = !DISubrange(count: 10)
!353 = !DIGlobalVariableExpression(var: !354)
!354 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !336, file: !348, line: 1043, type: !355, isLocal: false, isDefinition: true)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !348, line: 57, size: 448, elements: !356)
!356 = !{!357, !358, !359, !361, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !355, file: !348, line: 60, baseType: !212, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !348, line: 63, baseType: !22, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !355, file: !348, line: 67, baseType: !360, size: 256, offset: 64)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !304)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !355, file: !348, line: 70, baseType: !78, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !355, file: !348, line: 73, baseType: !78, size: 64, offset: 384)
!363 = !DIGlobalVariableExpression(var: !364)
!364 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !336, file: !348, line: 108, type: !355, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366)
!366 = distinct !DIGlobalVariable(name: "slot0", scope: !336, file: !348, line: 834, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 256)
!370 = !DIGlobalVariableExpression(var: !371)
!371 = distinct !DIGlobalVariable(name: "slotvec", scope: !336, file: !348, line: 837, type: !372, isLocal: true, isDefinition: true)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !348, line: 826, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !373, file: !348, line: 828, baseType: !70, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !373, file: !348, line: 829, baseType: !24, size: 64, offset: 64)
!377 = !DIGlobalVariableExpression(var: !378)
!378 = distinct !DIGlobalVariable(name: "nslots", scope: !336, file: !348, line: 835, type: !22, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380)
!380 = distinct !DIGlobalVariable(name: "slotvec0", scope: !336, file: !348, line: 836, type: !373, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 704, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 11)
!384 = !DIGlobalVariableExpression(var: !385)
!385 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !386, file: !389, line: 26, type: !390, isLocal: false, isDefinition: true)
!386 = distinct !DICompileUnit(language: DW_LANG_C99, file: !387, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, globals: !388)
!387 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!388 = !{!384}
!389 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 47)
!393 = !DIGlobalVariableExpression(var: !394)
!394 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !395, file: !399, line: 351, type: !400, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !397, globals: !398)
!396 = !DIFile(filename: "./lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!397 = !{!24, !65}
!398 = !{!393}
!399 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null}
!403 = !DIGlobalVariableExpression(var: !404)
!404 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !405, file: !749, line: 120, type: !750, isLocal: true, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !407, retainedTypes: !746, globals: !748)
!406 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!407 = !{!408}
!408 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !409, line: 41, size: 32, elements: !410)
!409 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!411 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!412 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!413 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!414 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!415 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!416 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!417 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!418 = !DIEnumerator(name: "DAY_1", value: 131079)
!419 = !DIEnumerator(name: "DAY_2", value: 131080)
!420 = !DIEnumerator(name: "DAY_3", value: 131081)
!421 = !DIEnumerator(name: "DAY_4", value: 131082)
!422 = !DIEnumerator(name: "DAY_5", value: 131083)
!423 = !DIEnumerator(name: "DAY_6", value: 131084)
!424 = !DIEnumerator(name: "DAY_7", value: 131085)
!425 = !DIEnumerator(name: "ABMON_1", value: 131086)
!426 = !DIEnumerator(name: "ABMON_2", value: 131087)
!427 = !DIEnumerator(name: "ABMON_3", value: 131088)
!428 = !DIEnumerator(name: "ABMON_4", value: 131089)
!429 = !DIEnumerator(name: "ABMON_5", value: 131090)
!430 = !DIEnumerator(name: "ABMON_6", value: 131091)
!431 = !DIEnumerator(name: "ABMON_7", value: 131092)
!432 = !DIEnumerator(name: "ABMON_8", value: 131093)
!433 = !DIEnumerator(name: "ABMON_9", value: 131094)
!434 = !DIEnumerator(name: "ABMON_10", value: 131095)
!435 = !DIEnumerator(name: "ABMON_11", value: 131096)
!436 = !DIEnumerator(name: "ABMON_12", value: 131097)
!437 = !DIEnumerator(name: "MON_1", value: 131098)
!438 = !DIEnumerator(name: "MON_2", value: 131099)
!439 = !DIEnumerator(name: "MON_3", value: 131100)
!440 = !DIEnumerator(name: "MON_4", value: 131101)
!441 = !DIEnumerator(name: "MON_5", value: 131102)
!442 = !DIEnumerator(name: "MON_6", value: 131103)
!443 = !DIEnumerator(name: "MON_7", value: 131104)
!444 = !DIEnumerator(name: "MON_8", value: 131105)
!445 = !DIEnumerator(name: "MON_9", value: 131106)
!446 = !DIEnumerator(name: "MON_10", value: 131107)
!447 = !DIEnumerator(name: "MON_11", value: 131108)
!448 = !DIEnumerator(name: "MON_12", value: 131109)
!449 = !DIEnumerator(name: "AM_STR", value: 131110)
!450 = !DIEnumerator(name: "PM_STR", value: 131111)
!451 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!452 = !DIEnumerator(name: "D_FMT", value: 131113)
!453 = !DIEnumerator(name: "T_FMT", value: 131114)
!454 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!455 = !DIEnumerator(name: "ERA", value: 131116)
!456 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!457 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!458 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!459 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!460 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!461 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!462 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!463 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!464 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!465 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!466 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!467 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!468 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!469 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!470 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!471 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!472 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!473 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!474 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!475 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!476 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!477 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!478 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!479 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!480 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!481 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!482 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!483 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!484 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!485 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!486 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!487 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!488 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!489 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!490 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!491 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!492 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!493 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!494 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!495 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!496 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!497 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!498 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!499 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!500 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!501 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!502 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!503 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!504 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!505 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!506 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!507 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!508 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!509 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!510 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!511 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!512 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!513 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!514 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!515 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!516 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!517 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!518 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!519 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!520 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!521 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!522 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!523 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!524 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!525 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!526 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!527 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!528 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!529 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!530 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!531 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!532 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!533 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!534 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!535 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!536 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!537 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!538 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!539 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!540 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!541 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!542 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!543 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!544 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!545 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!546 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!547 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!548 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!549 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!550 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!551 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!552 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!553 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!554 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!555 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!556 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!557 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!558 = !DIEnumerator(name: "CODESET", value: 14)
!559 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!560 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!561 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!562 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!568 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!569 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!570 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!571 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!572 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!573 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!574 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!575 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!576 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!577 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!578 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!579 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!580 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!581 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!582 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!583 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!584 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!588 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!589 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!590 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!591 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!592 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!593 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!594 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!595 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!596 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!597 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!598 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!599 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!600 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!601 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!602 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!603 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!604 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!605 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!606 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!607 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!608 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!609 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!610 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!611 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!612 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!613 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!614 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!615 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!616 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!617 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!618 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!619 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!620 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!621 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!622 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!623 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!624 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!625 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!626 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!627 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!628 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!629 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!630 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!631 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!632 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!633 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!634 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!635 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!636 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!637 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!638 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!639 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!640 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!641 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!642 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!643 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!644 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!645 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!646 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!647 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!648 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!649 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!650 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!651 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!652 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!653 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!654 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!655 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!656 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!657 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!658 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!659 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!660 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!661 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!662 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!663 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!664 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!665 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!666 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!667 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!668 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!669 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!670 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!671 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!672 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!673 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!674 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!675 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!676 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!677 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!678 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!679 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!680 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!681 = !DIEnumerator(name: "THOUSEP", value: 65537)
!682 = !DIEnumerator(name: "__GROUPING", value: 65538)
!683 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!684 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!685 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!686 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!687 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!688 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!689 = !DIEnumerator(name: "__YESSTR", value: 327682)
!690 = !DIEnumerator(name: "__NOSTR", value: 327683)
!691 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!692 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!693 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!694 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!695 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!696 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!697 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!698 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!699 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!700 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!701 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!702 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!703 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!704 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!705 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!706 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!707 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!708 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!709 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!710 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!711 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!712 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!713 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!714 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!715 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!716 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!717 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!718 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!719 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!720 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!721 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!722 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!723 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!724 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!725 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!726 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!727 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!728 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!729 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!730 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!731 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!732 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!733 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!734 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!735 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!736 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!737 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!738 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!739 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!740 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!741 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!742 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!743 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!744 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!745 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!746 = !{!65, !24, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!748 = !{!403}
!749 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!750 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!751 = distinct !DICompileUnit(language: DW_LANG_C99, file: !752, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !753)
!752 = !DIFile(filename: "./lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!753 = !{!244}
!754 = distinct !DICompileUnit(language: DW_LANG_C99, file: !755, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !756)
!755 = !DIFile(filename: "./lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!756 = !{!24}
!757 = distinct !DICompileUnit(language: DW_LANG_C99, file: !758, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!758 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!759 = distinct !DICompileUnit(language: DW_LANG_C99, file: !760, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !761, retainedTypes: !766)
!760 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!761 = !{!762}
!762 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !763, line: 41, size: 32, elements: !764)
!763 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!764 = !{!765}
!765 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!766 = !{!65}
!767 = distinct !DICompileUnit(language: DW_LANG_C99, file: !768, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !769, retainedTypes: !783)
!768 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!769 = !{!770}
!770 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !772, file: !771, line: 192, size: 32, elements: !781)
!771 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!772 = distinct !DISubprogram(name: "x2nrealloc", scope: !771, file: !771, line: 180, type: !773, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !776)
!773 = !DISubroutineType(types: !774)
!774 = !{!65, !65, !775, !70}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!776 = !{!777, !778, !779, !780}
!777 = !DILocalVariable(name: "p", arg: 1, scope: !772, file: !771, line: 180, type: !65)
!778 = !DILocalVariable(name: "pn", arg: 2, scope: !772, file: !771, line: 180, type: !775)
!779 = !DILocalVariable(name: "s", arg: 3, scope: !772, file: !771, line: 180, type: !70)
!780 = !DILocalVariable(name: "n", scope: !772, file: !771, line: 182, type: !70)
!781 = !{!782}
!782 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!783 = !{!70, !24, !65}
!784 = distinct !DICompileUnit(language: DW_LANG_C99, file: !785, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!785 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!786 = distinct !DICompileUnit(language: DW_LANG_C99, file: !787, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!787 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!788 = distinct !DICompileUnit(language: DW_LANG_C99, file: !789, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !766)
!789 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!790 = distinct !DICompileUnit(language: DW_LANG_C99, file: !791, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!791 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!792 = distinct !DICompileUnit(language: DW_LANG_C99, file: !793, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !766)
!793 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!794 = distinct !DICompileUnit(language: DW_LANG_C99, file: !795, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!795 = !DIFile(filename: "./lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!796 = distinct !DICompileUnit(language: DW_LANG_C99, file: !797, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !766)
!797 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!798 = distinct !DICompileUnit(language: DW_LANG_C99, file: !799, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !800)
!799 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!800 = !{!70}
!801 = distinct !DICompileUnit(language: DW_LANG_C99, file: !802, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310)
!802 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!803 = distinct !DICompileUnit(language: DW_LANG_C99, file: !804, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !310, retainedTypes: !805)
!804 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!805 = !{!70, !242, !244, !78}
!806 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!807 = !{i32 2, !"Dwarf Version", i32 4}
!808 = !{i32 2, !"Debug Info Version", i32 3}
!809 = !{i32 1, !"PIC Level", i32 2}
!810 = !{i32 1, !"PIE Level", i32 2}
!811 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 93, type: !812, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !22}
!814 = !{!815}
!815 = !DILocalVariable(name: "status", arg: 1, scope: !811, file: !3, line: 93, type: !22)
!816 = !DIExpression()
!817 = !DILocation(line: 93, column: 12, scope: !811)
!818 = !DILocation(line: 95, column: 14, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !3, line: 95, column: 7)
!820 = !DILocation(line: 95, column: 7, scope: !811)
!821 = !DILocation(line: 96, column: 5, scope: !822)
!822 = !DILexicalBlockFile(scope: !823, file: !3, discriminator: 1)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 96, column: 5)
!824 = !{!825, !825, i64 0}
!825 = !{!"any pointer", !826, i64 0}
!826 = !{!"omnipotent char", !827, i64 0}
!827 = !{!"Simple C/C++ TBAA"}
!828 = !DILocation(line: 96, column: 5, scope: !829)
!829 = !DILexicalBlockFile(scope: !823, file: !3, discriminator: 3)
!830 = !DILocation(line: 96, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !823, file: !3, discriminator: 2)
!832 = !DILocation(line: 99, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !819, file: !3, line: 98, column: 5)
!834 = !DILocation(line: 99, column: 7, scope: !835)
!835 = !DILexicalBlockFile(scope: !833, file: !3, discriminator: 1)
!836 = !DILocation(line: 100, column: 7, scope: !833)
!837 = !DILocation(line: 100, column: 7, scope: !835)
!838 = !DILocation(line: 108, column: 7, scope: !833)
!839 = !DILocation(line: 108, column: 7, scope: !835)
!840 = !DILocation(line: 109, column: 7, scope: !833)
!841 = !DILocation(line: 109, column: 7, scope: !835)
!842 = !DILocation(line: 110, column: 7, scope: !833)
!843 = !DILocation(line: 110, column: 7, scope: !835)
!844 = !DILocation(line: 642, column: 15, scope: !252, inlinedAt: !845)
!845 = distinct !DILocation(line: 116, column: 7, scope: !833)
!846 = !DILocation(line: 651, column: 3, scope: !252, inlinedAt: !845)
!847 = !DILocation(line: 651, column: 3, scope: !848, inlinedAt: !845)
!848 = !DILexicalBlockFile(scope: !252, file: !253, discriminator: 1)
!849 = !DILocation(line: 655, column: 29, scope: !252, inlinedAt: !845)
!850 = !DILocation(line: 655, column: 15, scope: !252, inlinedAt: !845)
!851 = !DILocation(line: 656, column: 7, scope: !272, inlinedAt: !845)
!852 = !DILocation(line: 656, column: 19, scope: !272, inlinedAt: !845)
!853 = !DILocation(line: 656, column: 22, scope: !854, inlinedAt: !845)
!854 = !DILexicalBlockFile(scope: !272, file: !253, discriminator: 16)
!855 = !DILocation(line: 656, column: 7, scope: !856, inlinedAt: !845)
!856 = !DILexicalBlockFile(scope: !252, file: !253, discriminator: 16)
!857 = !DILocation(line: 662, column: 7, scope: !858, inlinedAt: !845)
!858 = distinct !DILexicalBlock(scope: !272, file: !253, line: 657, column: 5)
!859 = !DILocation(line: 662, column: 7, scope: !860, inlinedAt: !845)
!860 = !DILexicalBlockFile(scope: !858, file: !253, discriminator: 1)
!861 = !DILocation(line: 664, column: 5, scope: !858, inlinedAt: !845)
!862 = !DILocation(line: 665, column: 3, scope: !252, inlinedAt: !845)
!863 = !DILocation(line: 665, column: 3, scope: !848, inlinedAt: !845)
!864 = !DILocation(line: 667, column: 3, scope: !252, inlinedAt: !845)
!865 = !DILocation(line: 667, column: 3, scope: !848, inlinedAt: !845)
!866 = !DILocation(line: 119, column: 3, scope: !811)
!867 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 396, type: !868, isLocal: false, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !871)
!868 = !DISubroutineType(types: !869)
!869 = !{!22, !22, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !881, !885, !887, !888, !890, !891, !892}
!872 = !DILocalVariable(name: "argc", arg: 1, scope: !867, file: !3, line: 396, type: !22)
!873 = !DILocalVariable(name: "argv", arg: 2, scope: !867, file: !3, line: 396, type: !870)
!874 = !DILocalVariable(name: "ok", scope: !867, file: !3, line: 398, type: !14)
!875 = !DILocalVariable(name: "optc", scope: !867, file: !3, line: 399, type: !22)
!876 = !DILocalVariable(name: "syntax", scope: !867, file: !3, line: 400, type: !5)
!877 = !DILocalVariable(name: "print_database", scope: !867, file: !3, line: 401, type: !14)
!878 = !DILocalVariable(name: "p", scope: !879, file: !3, line: 459, type: !78)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 458, column: 5)
!880 = distinct !DILexicalBlock(scope: !867, file: !3, line: 457, column: 7)
!881 = !DILocalVariable(name: "len", scope: !882, file: !3, line: 487, type: !70)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 486, column: 9)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 485, column: 11)
!884 = distinct !DILexicalBlock(scope: !880, file: !3, line: 467, column: 5)
!885 = !DILocalVariable(name: "__o", scope: !886, file: !3, line: 487, type: !157)
!886 = distinct !DILexicalBlock(scope: !882, file: !3, line: 487, column: 24)
!887 = !DILocalVariable(name: "s", scope: !882, file: !3, line: 488, type: !24)
!888 = !DILocalVariable(name: "__o1", scope: !889, file: !3, line: 488, type: !103)
!889 = distinct !DILexicalBlock(scope: !882, file: !3, line: 488, column: 21)
!890 = !DILocalVariable(name: "__value", scope: !889, file: !3, line: 488, type: !65)
!891 = !DILocalVariable(name: "prefix", scope: !882, file: !3, line: 489, type: !78)
!892 = !DILocalVariable(name: "suffix", scope: !882, file: !3, line: 490, type: !78)
!893 = !DILocation(line: 396, column: 11, scope: !867)
!894 = !DILocation(line: 396, column: 24, scope: !867)
!895 = !DILocation(line: 398, column: 8, scope: !867)
!896 = !DILocation(line: 400, column: 21, scope: !867)
!897 = !DILocation(line: 401, column: 8, scope: !867)
!898 = !DILocation(line: 404, column: 21, scope: !867)
!899 = !DILocation(line: 404, column: 3, scope: !867)
!900 = !DILocation(line: 405, column: 3, scope: !867)
!901 = !DILocation(line: 406, column: 3, scope: !867)
!902 = !DILocation(line: 407, column: 3, scope: !867)
!903 = !DILocation(line: 409, column: 3, scope: !867)
!904 = !DILocation(line: 411, column: 3, scope: !867)
!905 = !DILocation(line: 411, column: 18, scope: !906)
!906 = !DILexicalBlockFile(scope: !867, file: !3, discriminator: 1)
!907 = !DILocation(line: 399, column: 7, scope: !867)
!908 = !DILocation(line: 411, column: 3, scope: !906)
!909 = !DILocation(line: 420, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !867, file: !3, line: 413, column: 7)
!911 = distinct !{!911, !904, !912}
!912 = !DILocation(line: 432, column: 7, scope: !867)
!913 = !DILocation(line: 426, column: 7, scope: !910)
!914 = !DILocation(line: 428, column: 7, scope: !910)
!915 = !DILocation(line: 428, column: 7, scope: !916)
!916 = !DILexicalBlockFile(scope: !910, file: !3, discriminator: 1)
!917 = !DILocation(line: 431, column: 9, scope: !910)
!918 = !DILocation(line: 434, column: 11, scope: !867)
!919 = !{!920, !920, i64 0}
!920 = !{!"int", !826, i64 0}
!921 = !DILocation(line: 434, column: 8, scope: !867)
!922 = !DILocation(line: 435, column: 8, scope: !867)
!923 = !DILocation(line: 439, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !867, file: !3, line: 439, column: 7)
!925 = !DILocation(line: 439, column: 32, scope: !926)
!926 = !DILexicalBlockFile(scope: !924, file: !3, discriminator: 1)
!927 = !DILocation(line: 439, column: 22, scope: !924)
!928 = !DILocation(line: 442, column: 14, scope: !929)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 440, column: 5)
!930 = !DILocation(line: 441, column: 7, scope: !929)
!931 = !DILocation(line: 444, column: 7, scope: !929)
!932 = !DILocation(line: 447, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !867, file: !3, line: 447, column: 7)
!934 = !DILocation(line: 447, column: 25, scope: !933)
!935 = !DILocation(line: 447, column: 7, scope: !867)
!936 = !DILocation(line: 449, column: 20, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !3, line: 448, column: 5)
!938 = !DILocation(line: 449, column: 50, scope: !937)
!939 = !DILocation(line: 449, column: 43, scope: !940)
!940 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 1)
!941 = !DILocation(line: 449, column: 7, scope: !942)
!942 = !DILexicalBlockFile(scope: !937, file: !3, discriminator: 2)
!943 = !DILocation(line: 450, column: 11, scope: !937)
!944 = !DILocation(line: 451, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 450, column: 11)
!946 = !DILocation(line: 451, column: 9, scope: !947)
!947 = !DILexicalBlockFile(scope: !945, file: !3, discriminator: 1)
!948 = !DILocation(line: 454, column: 7, scope: !937)
!949 = !DILocation(line: 457, column: 7, scope: !867)
!950 = !DILocation(line: 462, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !879, file: !3, line: 461, column: 9)
!952 = !DILocation(line: 463, column: 16, scope: !951)
!953 = !DILocation(line: 463, column: 27, scope: !951)
!954 = !DILocation(line: 463, column: 13, scope: !951)
!955 = !DILocation(line: 459, column: 19, scope: !879)
!956 = !DILocation(line: 460, column: 16, scope: !957)
!957 = !DILexicalBlockFile(scope: !879, file: !3, discriminator: 1)
!958 = !DILocation(line: 460, column: 25, scope: !957)
!959 = !DILocation(line: 460, column: 7, scope: !957)
!960 = distinct !{!960, !961, !962}
!961 = !DILocation(line: 460, column: 7, scope: !879)
!962 = !DILocation(line: 464, column: 9, scope: !879)
!963 = !DILocation(line: 469, column: 18, scope: !964)
!964 = distinct !DILexicalBlock(scope: !884, file: !3, line: 469, column: 11)
!965 = !DILocation(line: 469, column: 11, scope: !884)
!966 = !DILocation(line: 130, column: 11, scope: !967, inlinedAt: !985)
!967 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 126, type: !968, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!5}
!970 = !{!971, !972, !975, !976, !978, !979, !981, !982, !984}
!971 = !DILocalVariable(name: "shell", scope: !967, file: !3, line: 128, type: !24)
!972 = !DILocalVariable(name: "__s1_len", scope: !973, file: !3, line: 136, type: !70)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 136, column: 7)
!974 = distinct !DILexicalBlock(scope: !967, file: !3, line: 136, column: 7)
!975 = !DILocalVariable(name: "__s2_len", scope: !973, file: !3, line: 136, type: !70)
!976 = !DILocalVariable(name: "__s2", scope: !977, file: !3, line: 136, type: !244)
!977 = distinct !DILexicalBlock(scope: !973, file: !3, line: 136, column: 7)
!978 = !DILocalVariable(name: "__result", scope: !977, file: !3, line: 136, type: !22)
!979 = !DILocalVariable(name: "__s1_len", scope: !980, file: !3, line: 136, type: !70)
!980 = distinct !DILexicalBlock(scope: !974, file: !3, line: 136, column: 31)
!981 = !DILocalVariable(name: "__s2_len", scope: !980, file: !3, line: 136, type: !70)
!982 = !DILocalVariable(name: "__s2", scope: !983, file: !3, line: 136, type: !244)
!983 = distinct !DILexicalBlock(scope: !980, file: !3, line: 136, column: 31)
!984 = !DILocalVariable(name: "__result", scope: !983, file: !3, line: 136, type: !22)
!985 = distinct !DILocation(line: 471, column: 20, scope: !986)
!986 = distinct !DILexicalBlock(scope: !964, file: !3, line: 470, column: 9)
!987 = !DILocation(line: 128, column: 9, scope: !967, inlinedAt: !985)
!988 = !DILocation(line: 131, column: 13, scope: !989, inlinedAt: !985)
!989 = distinct !DILexicalBlock(scope: !967, file: !3, line: 131, column: 7)
!990 = !DILocation(line: 131, column: 21, scope: !989, inlinedAt: !985)
!991 = !DILocation(line: 131, column: 24, scope: !992, inlinedAt: !985)
!992 = !DILexicalBlockFile(scope: !989, file: !3, discriminator: 1)
!993 = !{!826, !826, i64 0}
!994 = !DILocation(line: 131, column: 31, scope: !992, inlinedAt: !985)
!995 = !DILocation(line: 131, column: 7, scope: !996, inlinedAt: !985)
!996 = !DILexicalBlockFile(scope: !967, file: !3, discriminator: 1)
!997 = !DILocation(line: 134, column: 11, scope: !967, inlinedAt: !985)
!998 = !DILocation(line: 136, column: 7, scope: !973, inlinedAt: !985)
!999 = !DILocation(line: 136, column: 7, scope: !977, inlinedAt: !985)
!1000 = !DILocation(line: 136, column: 7, scope: !1001, inlinedAt: !985)
!1001 = !DILexicalBlockFile(scope: !977, file: !3, discriminator: 2)
!1002 = !DILocation(line: 136, column: 7, scope: !1003, inlinedAt: !985)
!1003 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 3)
!1004 = distinct !DILexicalBlock(scope: !977, file: !3, line: 136, column: 7)
!1005 = !DILocation(line: 136, column: 7, scope: !1006, inlinedAt: !985)
!1006 = !DILexicalBlockFile(scope: !1004, file: !3, discriminator: 2)
!1007 = !DILocation(line: 136, column: 7, scope: !1008, inlinedAt: !985)
!1008 = !DILexicalBlockFile(scope: !1009, file: !3, discriminator: 4)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 136, column: 7)
!1010 = !DILocation(line: 136, column: 7, scope: !1011, inlinedAt: !985)
!1011 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 5)
!1012 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 136, column: 7)
!1013 = !DILocation(line: 136, column: 7, scope: !1014, inlinedAt: !985)
!1014 = !DILexicalBlockFile(scope: !1012, file: !3, discriminator: 4)
!1015 = !DILocation(line: 136, column: 7, scope: !1016, inlinedAt: !985)
!1016 = !DILexicalBlockFile(scope: !1017, file: !3, discriminator: 6)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 136, column: 7)
!1018 = !DILocation(line: 136, column: 7, scope: !1019, inlinedAt: !985)
!1019 = !DILexicalBlockFile(scope: !1020, file: !3, discriminator: 7)
!1020 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 136, column: 7)
!1021 = !DILocation(line: 136, column: 7, scope: !1022, inlinedAt: !985)
!1022 = !DILexicalBlockFile(scope: !1020, file: !3, discriminator: 6)
!1023 = !DILocation(line: 136, column: 7, scope: !1024, inlinedAt: !985)
!1024 = !DILexicalBlockFile(scope: !1020, file: !3, discriminator: 8)
!1025 = !DILocation(line: 136, column: 7, scope: !1026, inlinedAt: !985)
!1026 = !DILexicalBlockFile(scope: !973, file: !3, discriminator: 11)
!1027 = !DILocation(line: 136, column: 28, scope: !1028, inlinedAt: !985)
!1028 = !DILexicalBlockFile(scope: !974, file: !3, discriminator: 13)
!1029 = !DILocation(line: 136, column: 31, scope: !980, inlinedAt: !985)
!1030 = !DILocation(line: 136, column: 31, scope: !1031, inlinedAt: !985)
!1031 = !DILexicalBlockFile(scope: !980, file: !3, discriminator: 26)
!1032 = !DILocation(line: 136, column: 31, scope: !1033, inlinedAt: !985)
!1033 = !DILexicalBlockFile(scope: !974, file: !3, discriminator: 27)
!1034 = !DILocation(line: 136, column: 7, scope: !1035, inlinedAt: !985)
!1035 = !DILexicalBlockFile(scope: !967, file: !3, discriminator: 27)
!1036 = !DILocation(line: 474, column: 15, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 473, column: 13)
!1038 = distinct !DILexicalBlock(scope: !986, file: !3, line: 472, column: 15)
!1039 = !DILocation(line: 474, column: 15, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1037, file: !3, discriminator: 1)
!1041 = !DILocation(line: 479, column: 7, scope: !884)
!1042 = !DILocation(line: 480, column: 16, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !884, file: !3, line: 480, column: 11)
!1044 = !DILocation(line: 480, column: 11, scope: !884)
!1045 = !DILocation(line: 481, column: 14, scope: !1043)
!1046 = !DILocation(line: 485, column: 11, scope: !884)
!1047 = !DILocation(line: 483, column: 29, scope: !1043)
!1048 = !DILocalVariable(name: "filename", arg: 1, scope: !1049, file: !3, line: 374, type: !78)
!1049 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 374, type: !1050, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1052)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!14, !78}
!1052 = !{!1048, !1053, !1054, !1057, !1058, !1060}
!1053 = !DILocalVariable(name: "ok", scope: !1049, file: !3, line: 376, type: !14)
!1054 = !DILocalVariable(name: "__s1_len", scope: !1055, file: !3, line: 378, type: !70)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 378, column: 9)
!1056 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 378, column: 7)
!1057 = !DILocalVariable(name: "__s2_len", scope: !1055, file: !3, line: 378, type: !70)
!1058 = !DILocalVariable(name: "__s2", scope: !1059, file: !3, line: 378, type: !244)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 378, column: 9)
!1060 = !DILocalVariable(name: "__result", scope: !1059, file: !3, line: 378, type: !22)
!1061 = !DILocation(line: 374, column: 28, scope: !1049, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 483, column: 14, scope: !1043)
!1063 = !DILocation(line: 378, column: 9, scope: !1055, inlinedAt: !1062)
!1064 = !DILocation(line: 378, column: 9, scope: !1059, inlinedAt: !1062)
!1065 = !DILocation(line: 378, column: 9, scope: !1066, inlinedAt: !1062)
!1066 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 2)
!1067 = !DILocation(line: 378, column: 9, scope: !1068, inlinedAt: !1062)
!1068 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 3)
!1069 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 378, column: 9)
!1070 = !DILocation(line: 378, column: 9, scope: !1071, inlinedAt: !1062)
!1071 = !DILexicalBlockFile(scope: !1069, file: !3, discriminator: 2)
!1072 = !DILocation(line: 378, column: 9, scope: !1073, inlinedAt: !1062)
!1073 = !DILexicalBlockFile(scope: !1074, file: !3, discriminator: 4)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 378, column: 9)
!1075 = !DILocation(line: 378, column: 9, scope: !1076, inlinedAt: !1062)
!1076 = !DILexicalBlockFile(scope: !1055, file: !3, discriminator: 11)
!1077 = !DILocation(line: 378, column: 31, scope: !1078, inlinedAt: !1062)
!1078 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 13)
!1079 = !DILocation(line: 378, column: 58, scope: !1080, inlinedAt: !1062)
!1080 = !DILexicalBlockFile(scope: !1056, file: !3, discriminator: 14)
!1081 = !DILocation(line: 378, column: 34, scope: !1080, inlinedAt: !1062)
!1082 = !DILocation(line: 378, column: 65, scope: !1080, inlinedAt: !1062)
!1083 = !DILocation(line: 378, column: 7, scope: !1084, inlinedAt: !1062)
!1084 = !DILexicalBlockFile(scope: !1049, file: !3, discriminator: 14)
!1085 = !DILocation(line: 380, column: 17, scope: !1086, inlinedAt: !1062)
!1086 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 379, column: 5)
!1087 = !DILocation(line: 380, column: 30, scope: !1088, inlinedAt: !1062)
!1088 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 1)
!1089 = !DILocation(line: 380, column: 7, scope: !1090, inlinedAt: !1062)
!1090 = !DILexicalBlockFile(scope: !1086, file: !3, discriminator: 2)
!1091 = !DILocation(line: 381, column: 7, scope: !1086, inlinedAt: !1062)
!1092 = !DILocation(line: 384, column: 25, scope: !1049, inlinedAt: !1062)
!1093 = !DILocation(line: 384, column: 8, scope: !1049, inlinedAt: !1062)
!1094 = !DILocation(line: 386, column: 15, scope: !1095, inlinedAt: !1062)
!1095 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 386, column: 7)
!1096 = !DILocation(line: 386, column: 7, scope: !1095, inlinedAt: !1062)
!1097 = !DILocation(line: 386, column: 22, scope: !1095, inlinedAt: !1062)
!1098 = !DILocation(line: 386, column: 7, scope: !1049, inlinedAt: !1062)
!1099 = !DILocation(line: 388, column: 17, scope: !1100, inlinedAt: !1062)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 387, column: 5)
!1101 = !DILocation(line: 388, column: 30, scope: !1102, inlinedAt: !1062)
!1102 = !DILexicalBlockFile(scope: !1100, file: !3, discriminator: 1)
!1103 = !DILocation(line: 388, column: 7, scope: !1104, inlinedAt: !1062)
!1104 = !DILexicalBlockFile(scope: !1100, file: !3, discriminator: 2)
!1105 = !DILocation(line: 389, column: 7, scope: !1100, inlinedAt: !1062)
!1106 = !DILocation(line: 487, column: 24, scope: !886)
!1107 = !{!1108, !825, i64 24}
!1108 = !{!"obstack", !1109, i64 0, !825, i64 8, !825, i64 16, !825, i64 24, !825, i64 32, !826, i64 40, !1109, i64 48, !826, i64 56, !826, i64 64, !825, i64 72, !920, i64 80, !920, i64 80, !920, i64 80}
!1109 = !{!"long", !826, i64 0}
!1110 = !{!1108, !825, i64 16}
!1111 = !DILocation(line: 487, column: 18, scope: !882)
!1112 = !DILocation(line: 488, column: 21, scope: !889)
!1113 = !DILocation(line: 488, column: 21, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !889, file: !3, line: 488, column: 21)
!1115 = !DILocation(line: 488, column: 21, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1114, file: !3, discriminator: 1)
!1117 = !DILocation(line: 488, column: 21, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 2)
!1119 = !{!1108, !1109, i64 48}
!1120 = !DILocation(line: 488, column: 21, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 2)
!1122 = distinct !DILexicalBlock(scope: !889, file: !3, line: 488, column: 21)
!1123 = !{!1108, !825, i64 8}
!1124 = !{!1108, !825, i64 32}
!1125 = !DILocation(line: 488, column: 21, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1122, file: !3, discriminator: 3)
!1127 = !DILocation(line: 488, column: 21, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !889, file: !3, discriminator: 4)
!1129 = !DILocation(line: 488, column: 17, scope: !882)
!1130 = !DILocation(line: 492, column: 22, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !882, file: !3, line: 492, column: 15)
!1132 = !DILocation(line: 492, column: 15, scope: !882)
!1133 = !DILocation(line: 490, column: 23, scope: !882)
!1134 = !DILocation(line: 489, column: 23, scope: !882)
!1135 = !DILocation(line: 502, column: 11, scope: !882)
!1136 = !DILocation(line: 503, column: 11, scope: !882)
!1137 = !DILocation(line: 504, column: 11, scope: !882)
!1138 = !DILocation(line: 505, column: 9, scope: !882)
!1139 = !DILocation(line: 509, column: 1, scope: !867)
!1140 = !DILocation(line: 239, column: 24, scope: !11)
!1141 = !DILocation(line: 239, column: 40, scope: !11)
!1142 = !DILocation(line: 241, column: 10, scope: !11)
!1143 = !DILocation(line: 243, column: 3, scope: !11)
!1144 = !DILocation(line: 243, column: 9, scope: !11)
!1145 = !DILocation(line: 244, column: 3, scope: !11)
!1146 = !DILocation(line: 244, column: 10, scope: !11)
!1147 = !{!1109, !1109, i64 0}
!1148 = !DILocation(line: 247, column: 8, scope: !11)
!1149 = !DILocation(line: 250, column: 58, scope: !11)
!1150 = !DILocation(line: 253, column: 10, scope: !11)
!1151 = !DILocation(line: 246, column: 15, scope: !11)
!1152 = !DILocation(line: 254, column: 12, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !11, file: !3, line: 254, column: 7)
!1154 = !DILocation(line: 254, column: 20, scope: !1153)
!1155 = !DILocation(line: 254, column: 23, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1153, file: !3, discriminator: 1)
!1157 = !DILocation(line: 254, column: 29, scope: !1156)
!1158 = !DILocation(line: 254, column: 7, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !11, file: !3, discriminator: 1)
!1160 = !DILocation(line: 255, column: 5, scope: !1153)
!1161 = !DILocation(line: 242, column: 15, scope: !11)
!1162 = !DILocation(line: 262, column: 7, scope: !92)
!1163 = !DILocation(line: 264, column: 11, scope: !92)
!1164 = !DIExpression(DW_OP_deref)
!1165 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1166, file: !1167, line: 115, type: !870)
!1166 = distinct !DISubprogram(name: "getline", scope: !1167, file: !1167, line: 115, type: !1168, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1171)
!1167 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!1170, !870, !775, !15}
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !49, line: 181, baseType: !50)
!1171 = !{!1165, !1172, !1173}
!1172 = !DILocalVariable(name: "__n", arg: 2, scope: !1166, file: !1167, line: 115, type: !775)
!1173 = !DILocalVariable(name: "__stream", arg: 3, scope: !1166, file: !1167, line: 115, type: !15)
!1174 = !DILocation(line: 115, column: 17, scope: !1166, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 266, column: 15, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 266, column: 15)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 265, column: 9)
!1178 = distinct !DILexicalBlock(scope: !92, file: !3, line: 264, column: 11)
!1179 = !DILocation(line: 115, column: 36, scope: !1166, inlinedAt: !1175)
!1180 = !DILocation(line: 115, column: 47, scope: !1166, inlinedAt: !1175)
!1181 = !DILocation(line: 117, column: 10, scope: !1166, inlinedAt: !1175)
!1182 = !DILocation(line: 266, column: 59, scope: !1176)
!1183 = !DILocation(line: 266, column: 15, scope: !1177)
!1184 = !DILocation(line: 268, column: 15, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 267, column: 13)
!1186 = !DILocation(line: 269, column: 15, scope: !1185)
!1187 = !DILocation(line: 275, column: 27, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 275, column: 15)
!1189 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 274, column: 9)
!1190 = !DILocation(line: 275, column: 15, scope: !1189)
!1191 = !DILocation(line: 245, column: 15, scope: !11)
!1192 = !DILocation(line: 278, column: 26, scope: !1189)
!1193 = !DILocation(line: 278, column: 47, scope: !1189)
!1194 = !DILocation(line: 278, column: 23, scope: !1189)
!1195 = !DILocalVariable(name: "line", arg: 1, scope: !1196, file: !3, line: 143, type: !78)
!1196 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 143, type: !1197, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1199)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !78, !870, !870}
!1199 = !{!1195, !1200, !1201, !1202, !1203, !1204}
!1200 = !DILocalVariable(name: "keyword", arg: 2, scope: !1196, file: !3, line: 143, type: !870)
!1201 = !DILocalVariable(name: "arg", arg: 3, scope: !1196, file: !3, line: 143, type: !870)
!1202 = !DILocalVariable(name: "p", scope: !1196, file: !3, line: 145, type: !78)
!1203 = !DILocalVariable(name: "keyword_start", scope: !1196, file: !3, line: 146, type: !78)
!1204 = !DILocalVariable(name: "arg_start", scope: !1196, file: !3, line: 147, type: !78)
!1205 = !DILocation(line: 143, column: 25, scope: !1196, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 281, column: 7, scope: !92)
!1207 = !DILocation(line: 145, column: 15, scope: !1196, inlinedAt: !1206)
!1208 = !DILocation(line: 152, column: 18, scope: !1209, inlinedAt: !1206)
!1209 = !DILexicalBlockFile(scope: !1210, file: !3, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 152, column: 3)
!1211 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 152, column: 3)
!1212 = !DILocation(line: 152, column: 8, scope: !1211, inlinedAt: !1206)
!1213 = !{!1214, !1214, i64 0}
!1214 = !{!"short", !826, i64 0}
!1215 = !DILocation(line: 152, column: 3, scope: !1216, inlinedAt: !1206)
!1216 = !DILexicalBlockFile(scope: !1211, file: !3, discriminator: 1)
!1217 = !DILocation(line: 152, column: 43, scope: !1218, inlinedAt: !1206)
!1218 = !DILexicalBlockFile(scope: !1210, file: !3, discriminator: 2)
!1219 = distinct !{!1219, !1220, !1221}
!1220 = !DILocation(line: 152, column: 3, scope: !1211)
!1221 = !DILocation(line: 153, column: 5, scope: !1211)
!1222 = !DILocation(line: 156, column: 18, scope: !1223, inlinedAt: !1206)
!1223 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 156, column: 7)
!1224 = !DILocation(line: 163, column: 7, scope: !1225, inlinedAt: !1206)
!1225 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 162, column: 5)
!1226 = !DILocation(line: 161, column: 11, scope: !1227, inlinedAt: !1206)
!1227 = !DILexicalBlockFile(scope: !1196, file: !3, discriminator: 1)
!1228 = !DILocation(line: 161, column: 41, scope: !1229, inlinedAt: !1206)
!1229 = !DILexicalBlockFile(scope: !1196, file: !3, discriminator: 2)
!1230 = !DILocation(line: 161, column: 35, scope: !1227, inlinedAt: !1206)
!1231 = distinct !{!1231, !1232, !1233}
!1232 = !DILocation(line: 161, column: 3, scope: !1196)
!1233 = !DILocation(line: 164, column: 5, scope: !1196)
!1234 = !DILocation(line: 166, column: 41, scope: !1196, inlinedAt: !1206)
!1235 = !DILocation(line: 166, column: 14, scope: !1196, inlinedAt: !1206)
!1236 = !DILocation(line: 167, column: 7, scope: !1237, inlinedAt: !1206)
!1237 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 167, column: 7)
!1238 = !DILocation(line: 167, column: 11, scope: !1237, inlinedAt: !1206)
!1239 = !DILocation(line: 167, column: 7, scope: !1196, inlinedAt: !1206)
!1240 = distinct !{!1240, !1241, !1242}
!1241 = !DILocation(line: 170, column: 3, scope: !1196)
!1242 = !DILocation(line: 174, column: 33, scope: !1196)
!1243 = !DILocation(line: 172, column: 7, scope: !1244, inlinedAt: !1206)
!1244 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 171, column: 5)
!1245 = !DILocation(line: 174, column: 10, scope: !1196, inlinedAt: !1206)
!1246 = !DILocation(line: 173, column: 5, scope: !1247, inlinedAt: !1206)
!1247 = !DILexicalBlockFile(scope: !1244, file: !3, discriminator: 1)
!1248 = !DILocation(line: 176, column: 18, scope: !1249, inlinedAt: !1206)
!1249 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 176, column: 7)
!1250 = !DILocation(line: 181, column: 10, scope: !1227, inlinedAt: !1206)
!1251 = !DILocation(line: 181, column: 3, scope: !1252, inlinedAt: !1206)
!1252 = !DILexicalBlockFile(scope: !1196, file: !3, discriminator: 3)
!1253 = !DILocation(line: 182, column: 5, scope: !1196, inlinedAt: !1206)
!1254 = !DILocation(line: 181, column: 3, scope: !1255, inlinedAt: !1206)
!1255 = !DILexicalBlockFile(scope: !1196, file: !3, discriminator: 4)
!1256 = distinct !{!1256, !1257, !1258}
!1257 = !DILocation(line: 181, column: 3, scope: !1196)
!1258 = !DILocation(line: 182, column: 7, scope: !1196)
!1259 = !DILocation(line: 184, column: 13, scope: !1260, inlinedAt: !1206)
!1260 = !DILexicalBlockFile(scope: !1261, file: !3, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 184, column: 3)
!1262 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 184, column: 3)
!1263 = !DILocation(line: 184, column: 3, scope: !1264, inlinedAt: !1206)
!1264 = !DILexicalBlockFile(scope: !1262, file: !3, discriminator: 1)
!1265 = distinct !{!1265, !1266, !1267}
!1266 = !DILocation(line: 184, column: 3, scope: !1262)
!1267 = !DILocation(line: 185, column: 5, scope: !1262)
!1268 = !DILocation(line: 188, column: 33, scope: !1196, inlinedAt: !1206)
!1269 = !DILocation(line: 188, column: 10, scope: !1196, inlinedAt: !1206)
!1270 = !DILocation(line: 189, column: 1, scope: !1196, inlinedAt: !1206)
!1271 = !DILocation(line: 259, column: 13, scope: !92)
!1272 = !DILocation(line: 283, column: 17, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !92, file: !3, line: 283, column: 11)
!1274 = !DILocation(line: 283, column: 11, scope: !92)
!1275 = distinct !{!1275, !1276, !1277}
!1276 = !DILocation(line: 257, column: 3, scope: !11)
!1277 = !DILocation(line: 368, column: 5, scope: !11)
!1278 = !DILocation(line: 259, column: 21, scope: !92)
!1279 = !DILocation(line: 286, column: 15, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !92, file: !3, line: 286, column: 11)
!1281 = !DILocation(line: 286, column: 11, scope: !92)
!1282 = !DILocation(line: 288, column: 24, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 287, column: 9)
!1284 = !DILocation(line: 289, column: 18, scope: !1283)
!1285 = !DILocation(line: 288, column: 11, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1283, file: !3, discriminator: 1)
!1287 = !DILocation(line: 291, column: 11, scope: !1283)
!1288 = !DILocation(line: 292, column: 11, scope: !1283)
!1289 = !DILocation(line: 260, column: 12, scope: !92)
!1290 = !DILocation(line: 296, column: 11, scope: !102)
!1291 = !DILocation(line: 296, column: 40, scope: !102)
!1292 = !DILocation(line: 296, column: 11, scope: !92)
!1293 = !DILocation(line: 298, column: 15, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 298, column: 15)
!1295 = distinct !DILexicalBlock(scope: !102, file: !3, line: 297, column: 9)
!1296 = !DILocation(line: 298, column: 38, scope: !1294)
!1297 = !DILocation(line: 298, column: 15, scope: !1295)
!1298 = !DILocation(line: 300, column: 26, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 300, column: 20)
!1300 = !DILocation(line: 300, column: 20, scope: !1294)
!1301 = !DILocation(line: 305, column: 21, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !101, file: !3, line: 305, column: 15)
!1303 = !DILocation(line: 305, column: 15, scope: !101)
!1304 = !DILocation(line: 308, column: 21, scope: !100)
!1305 = !DILocation(line: 308, column: 15, scope: !101)
!1306 = !DILocation(line: 310, column: 19, scope: !98)
!1307 = !DILocation(line: 310, column: 19, scope: !99)
!1308 = !DILocation(line: 312, column: 19, scope: !96)
!1309 = !DILocation(line: 312, column: 19, scope: !155)
!1310 = !DILocation(line: 312, column: 19, scope: !156)
!1311 = !DILocation(line: 312, column: 19, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !156, file: !3, discriminator: 1)
!1313 = !DILocation(line: 312, column: 19, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !96, file: !3, discriminator: 2)
!1315 = !DILocation(line: 313, column: 19, scope: !97)
!1316 = !DILocation(line: 314, column: 19, scope: !160)
!1317 = !DILocation(line: 314, column: 19, scope: !162)
!1318 = !DILocation(line: 314, column: 19, scope: !163)
!1319 = !DILocation(line: 314, column: 19, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !163, file: !3, discriminator: 1)
!1321 = !DILocation(line: 314, column: 19, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !160, file: !3, discriminator: 2)
!1323 = !DILocation(line: 315, column: 19, scope: !97)
!1324 = !DILocation(line: 316, column: 19, scope: !165)
!1325 = !DILocation(line: 316, column: 19, scope: !167)
!1326 = !DILocation(line: 316, column: 19, scope: !168)
!1327 = !DILocation(line: 316, column: 19, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !168, file: !3, discriminator: 1)
!1329 = !DILocation(line: 316, column: 19, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !165, file: !3, discriminator: 2)
!1331 = !DILocation(line: 317, column: 17, scope: !97)
!1332 = !DILocation(line: 320, column: 19, scope: !171)
!1333 = !DILocation(line: 321, column: 19, scope: !170)
!1334 = !DILocation(line: 321, column: 19, scope: !174)
!1335 = !DILocation(line: 321, column: 19, scope: !175)
!1336 = !DILocation(line: 321, column: 19, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !175, file: !3, discriminator: 1)
!1338 = !DILocation(line: 321, column: 19, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !170, file: !3, discriminator: 2)
!1340 = !DILocation(line: 322, column: 19, scope: !171)
!1341 = !DILocation(line: 323, column: 19, scope: !177)
!1342 = !DILocation(line: 323, column: 19, scope: !179)
!1343 = !DILocation(line: 323, column: 19, scope: !180)
!1344 = !DILocation(line: 323, column: 19, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !180, file: !3, discriminator: 1)
!1346 = !DILocation(line: 323, column: 19, scope: !1347)
!1347 = !DILexicalBlockFile(scope: !177, file: !3, discriminator: 2)
!1348 = !DILocation(line: 324, column: 17, scope: !171)
!1349 = !DILocation(line: 325, column: 24, scope: !183)
!1350 = !DILocation(line: 325, column: 56, scope: !183)
!1351 = !DILocation(line: 326, column: 24, scope: !183)
!1352 = !DILocation(line: 326, column: 27, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !183, file: !3, discriminator: 1)
!1354 = !DILocation(line: 326, column: 57, scope: !1353)
!1355 = !DILocation(line: 327, column: 24, scope: !183)
!1356 = !DILocation(line: 327, column: 27, scope: !1353)
!1357 = !DILocation(line: 327, column: 60, scope: !1353)
!1358 = !DILocation(line: 325, column: 24, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !172, file: !3, discriminator: 1)
!1360 = !DILocation(line: 335, column: 31, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !3, discriminator: 1)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 335, column: 19)
!1363 = distinct !DILexicalBlock(scope: !182, file: !3, line: 335, column: 19)
!1364 = !DILocation(line: 335, column: 19, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1363, file: !3, discriminator: 1)
!1366 = distinct !{!1366, !1367, !1368}
!1367 = !DILocation(line: 335, column: 19, scope: !1363)
!1368 = !DILocation(line: 337, column: 23, scope: !1363)
!1369 = !DILocation(line: 336, column: 25, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 336, column: 25)
!1371 = !DILocation(line: 336, column: 62, scope: !1370)
!1372 = !DILocation(line: 335, column: 55, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1362, file: !3, discriminator: 2)
!1374 = !DILocation(line: 336, column: 25, scope: !1362)
!1375 = !DILocation(line: 341, column: 23, scope: !185)
!1376 = !DILocation(line: 341, column: 23, scope: !190)
!1377 = !DILocation(line: 341, column: 23, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !190, file: !3, discriminator: 1)
!1379 = !DILocation(line: 341, column: 23, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !191, file: !3, discriminator: 1)
!1381 = !DILocation(line: 341, column: 23, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 1)
!1383 = !DILocation(line: 341, column: 23, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !191, file: !3, discriminator: 2)
!1385 = !DILocation(line: 341, column: 23, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !185, file: !3, discriminator: 3)
!1387 = !DILocation(line: 341, column: 23, scope: !193)
!1388 = !DILocation(line: 341, column: 23, scope: !195)
!1389 = !DILocation(line: 341, column: 23, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !195, file: !3, discriminator: 3)
!1391 = !DILocation(line: 341, column: 23, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !196, file: !3, discriminator: 3)
!1393 = !DILocation(line: 341, column: 23, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !193, file: !3, discriminator: 3)
!1395 = !DILocation(line: 341, column: 23, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !196, file: !3, discriminator: 4)
!1397 = !DILocation(line: 341, column: 23, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !193, file: !3, discriminator: 5)
!1399 = !DILocation(line: 342, column: 23, scope: !198)
!1400 = !DILocation(line: 342, column: 23, scope: !200)
!1401 = !DILocation(line: 342, column: 23, scope: !201)
!1402 = !DILocation(line: 342, column: 23, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !201, file: !3, discriminator: 1)
!1404 = !DILocation(line: 342, column: 23, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !198, file: !3, discriminator: 2)
!1406 = !DILocation(line: 343, column: 23, scope: !187)
!1407 = !DILocation(line: 344, column: 23, scope: !203)
!1408 = !DILocation(line: 344, column: 23, scope: !205)
!1409 = !DILocation(line: 344, column: 23, scope: !206)
!1410 = !DILocation(line: 344, column: 23, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !206, file: !3, discriminator: 1)
!1412 = !DILocation(line: 344, column: 23, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !203, file: !3, discriminator: 2)
!1414 = !DILocation(line: 345, column: 21, scope: !187)
!1415 = !DILocation(line: 358, column: 49, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !3, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !92, file: !3, line: 358, column: 11)
!1418 = !DILocation(line: 358, column: 24, scope: !1417)
!1419 = !DILocation(line: 360, column: 24, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 359, column: 9)
!1421 = !DILocation(line: 361, column: 19, scope: !1420)
!1422 = !DILocation(line: 361, column: 30, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1420, file: !3, discriminator: 1)
!1424 = !DILocation(line: 361, column: 19, scope: !1423)
!1425 = !DILocation(line: 361, column: 50, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1420, file: !3, discriminator: 2)
!1427 = !DILocation(line: 361, column: 19, scope: !1426)
!1428 = !DILocation(line: 361, column: 19, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1420, file: !3, discriminator: 3)
!1430 = !DILocation(line: 360, column: 11, scope: !1423)
!1431 = !DILocation(line: 364, column: 9, scope: !1420)
!1432 = !DILocation(line: 366, column: 7, scope: !92)
!1433 = !DILocation(line: 367, column: 7, scope: !92)
!1434 = !DILocation(line: 370, column: 10, scope: !11)
!1435 = !DILocation(line: 371, column: 1, scope: !11)
!1436 = !DILocation(line: 370, column: 3, scope: !11)
!1437 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 195, type: !254, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1438)
!1438 = !{!1439, !1440, !1441, !1445, !1448, !1450, !1453, !1455, !1458, !1461, !1464, !1466}
!1439 = !DILocalVariable(name: "str", arg: 1, scope: !1437, file: !3, line: 195, type: !78)
!1440 = !DILocalVariable(name: "need_backslash", scope: !1437, file: !3, line: 197, type: !14)
!1441 = !DILocalVariable(name: "__o", scope: !1442, file: !3, line: 204, type: !103)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 204, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 202, column: 9)
!1444 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 200, column: 5)
!1445 = !DILocalVariable(name: "__o1", scope: !1446, file: !3, line: 204, type: !157)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 204, column: 11)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 204, column: 11)
!1448 = !DILocalVariable(name: "__o", scope: !1449, file: !3, line: 205, type: !103)
!1449 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 205, column: 11)
!1450 = !DILocalVariable(name: "__o1", scope: !1451, file: !3, line: 205, type: !157)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 205, column: 11)
!1452 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 205, column: 11)
!1453 = !DILocalVariable(name: "__o", scope: !1454, file: !3, line: 206, type: !103)
!1454 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 206, column: 11)
!1455 = !DILocalVariable(name: "__o1", scope: !1456, file: !3, line: 206, type: !157)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 206, column: 11)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 206, column: 11)
!1458 = !DILocalVariable(name: "__o", scope: !1459, file: !3, line: 218, type: !103)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 218, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 217, column: 15)
!1461 = !DILocalVariable(name: "__o1", scope: !1462, file: !3, line: 218, type: !157)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 218, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 218, column: 13)
!1464 = !DILocalVariable(name: "__o", scope: !1465, file: !3, line: 226, type: !103)
!1465 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 226, column: 7)
!1466 = !DILocalVariable(name: "__o1", scope: !1467, file: !3, line: 226, type: !157)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 226, column: 7)
!1468 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 226, column: 7)
!1469 = !DILocation(line: 195, column: 28, scope: !1437)
!1470 = !DILocation(line: 197, column: 8, scope: !1437)
!1471 = !DILocation(line: 199, column: 10, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1437, file: !3, discriminator: 1)
!1473 = !DILocation(line: 199, column: 15, scope: !1472)
!1474 = !DILocation(line: 199, column: 3, scope: !1472)
!1475 = !DILocation(line: 201, column: 7, scope: !1444)
!1476 = !DILocation(line: 204, column: 11, scope: !1442)
!1477 = !DILocation(line: 204, column: 11, scope: !1446)
!1478 = !DILocation(line: 204, column: 11, scope: !1447)
!1479 = !DILocation(line: 204, column: 11, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1447, file: !3, discriminator: 1)
!1481 = !DILocation(line: 204, column: 11, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1442, file: !3, discriminator: 2)
!1483 = !DILocation(line: 205, column: 11, scope: !1449)
!1484 = !DILocation(line: 205, column: 11, scope: !1451)
!1485 = !DILocation(line: 205, column: 11, scope: !1452)
!1486 = !DILocation(line: 205, column: 11, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1452, file: !3, discriminator: 1)
!1488 = !DILocation(line: 205, column: 11, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1449, file: !3, discriminator: 2)
!1490 = !DILocation(line: 206, column: 11, scope: !1454)
!1491 = !DILocation(line: 206, column: 11, scope: !1456)
!1492 = !DILocation(line: 206, column: 11, scope: !1457)
!1493 = !DILocation(line: 206, column: 11, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1457, file: !3, discriminator: 1)
!1495 = !DILocation(line: 206, column: 11, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1454, file: !3, discriminator: 2)
!1497 = !DILocation(line: 208, column: 11, scope: !1443)
!1498 = !DILocation(line: 212, column: 29, scope: !1443)
!1499 = !DILocation(line: 212, column: 26, scope: !1443)
!1500 = !DILocation(line: 213, column: 11, scope: !1443)
!1501 = !DILocation(line: 217, column: 15, scope: !1460)
!1502 = !DILocation(line: 217, column: 15, scope: !1443)
!1503 = !DILocation(line: 218, column: 13, scope: !1459)
!1504 = !DILocation(line: 218, column: 13, scope: !1462)
!1505 = !DILocation(line: 218, column: 13, scope: !1463)
!1506 = !DILocation(line: 218, column: 13, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1463, file: !3, discriminator: 1)
!1508 = !DILocation(line: 218, column: 13, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1459, file: !3, discriminator: 2)
!1510 = !DILocation(line: 218, column: 13, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1460, file: !3, discriminator: 2)
!1512 = !DILocation(line: 226, column: 7, scope: !1465)
!1513 = !DILocation(line: 226, column: 7, scope: !1467)
!1514 = !DILocation(line: 226, column: 7, scope: !1468)
!1515 = !DILocation(line: 226, column: 7, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1468, file: !3, discriminator: 1)
!1517 = !DILocation(line: 226, column: 7, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1465, file: !3, discriminator: 2)
!1519 = !DILocation(line: 227, column: 7, scope: !1444)
!1520 = distinct !{!1520, !1521, !1522}
!1521 = !DILocation(line: 199, column: 3, scope: !1437)
!1522 = !DILocation(line: 228, column: 5, scope: !1437)
!1523 = !DILocation(line: 229, column: 1, scope: !1437)
!1524 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1525, file: !1525, line: 27, type: !1526, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !1528)
!1525 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!22, !78, !78}
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534}
!1529 = !DILocalVariable(name: "s1", arg: 1, scope: !1524, file: !1525, line: 27, type: !78)
!1530 = !DILocalVariable(name: "s2", arg: 2, scope: !1524, file: !1525, line: 27, type: !78)
!1531 = !DILocalVariable(name: "p1", scope: !1524, file: !1525, line: 29, type: !244)
!1532 = !DILocalVariable(name: "p2", scope: !1524, file: !1525, line: 30, type: !244)
!1533 = !DILocalVariable(name: "c1", scope: !1524, file: !1525, line: 31, type: !246)
!1534 = !DILocalVariable(name: "c2", scope: !1524, file: !1525, line: 31, type: !246)
!1535 = !DILocation(line: 27, column: 27, scope: !1524)
!1536 = !DILocation(line: 27, column: 43, scope: !1524)
!1537 = !DILocation(line: 29, column: 33, scope: !1524)
!1538 = !DILocation(line: 30, column: 33, scope: !1524)
!1539 = !DILocation(line: 33, column: 10, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1524, file: !1525, line: 33, column: 7)
!1541 = !DILocation(line: 33, column: 7, scope: !1524)
!1542 = distinct !{!1542, !1543, !1544}
!1543 = !DILocation(line: 36, column: 3, scope: !1524)
!1544 = !DILocation(line: 47, column: 18, scope: !1524)
!1545 = !DILocation(line: 38, column: 23, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1524, file: !1525, line: 37, column: 5)
!1547 = !DILocalVariable(name: "c", arg: 1, scope: !1548, file: !1549, line: 337, type: !22)
!1548 = distinct !DISubprogram(name: "c_tolower", scope: !1549, file: !1549, line: 337, type: !1550, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !751, variables: !1552)
!1549 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!22, !22}
!1552 = !{!1547}
!1553 = !DILocation(line: 337, column: 16, scope: !1548, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 38, column: 12, scope: !1546)
!1555 = !DILocation(line: 339, column: 3, scope: !1548, inlinedAt: !1554)
!1556 = !DILocation(line: 342, column: 22, scope: !1557, inlinedAt: !1554)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !1549, line: 340, column: 5)
!1558 = !DILocation(line: 39, column: 23, scope: !1546)
!1559 = !DILocation(line: 337, column: 16, scope: !1548, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 39, column: 12, scope: !1546)
!1561 = !DILocation(line: 339, column: 3, scope: !1548, inlinedAt: !1560)
!1562 = !DILocation(line: 342, column: 22, scope: !1557, inlinedAt: !1560)
!1563 = !DILocation(line: 41, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1546, file: !1525, line: 41, column: 11)
!1565 = !DILocation(line: 41, column: 14, scope: !1564)
!1566 = !DILocation(line: 41, column: 11, scope: !1546)
!1567 = !DILocation(line: 50, column: 17, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1524, file: !1525, line: 49, column: 7)
!1569 = !DILocation(line: 44, column: 7, scope: !1546)
!1570 = !DILocation(line: 45, column: 7, scope: !1546)
!1571 = !DILocation(line: 47, column: 16, scope: !1524)
!1572 = !DILocation(line: 47, column: 13, scope: !1524)
!1573 = !DILocation(line: 46, column: 5, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1546, file: !1525, discriminator: 1)
!1575 = !DILocation(line: 50, column: 15, scope: !1568)
!1576 = !DILocation(line: 50, column: 5, scope: !1568)
!1577 = !DILocation(line: 56, column: 1, scope: !1524)
!1578 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !319, file: !319, line: 41, type: !254, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !314, variables: !1579)
!1579 = !{!1580}
!1580 = !DILocalVariable(name: "file", arg: 1, scope: !1578, file: !319, line: 41, type: !78)
!1581 = !DILocation(line: 41, column: 41, scope: !1578)
!1582 = !DILocation(line: 43, column: 13, scope: !1578)
!1583 = !DILocation(line: 44, column: 1, scope: !1578)
!1584 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !319, file: !319, line: 78, type: !1585, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !314, variables: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !14}
!1587 = !{!1588}
!1588 = !DILocalVariable(name: "ignore", arg: 1, scope: !1584, file: !319, line: 78, type: !14)
!1589 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1590 = !DILocation(line: 78, column: 37, scope: !1584)
!1591 = !DILocation(line: 80, column: 16, scope: !1584)
!1592 = !{!1593, !1593, i64 0}
!1593 = !{!"_Bool", !826, i64 0}
!1594 = !DILocation(line: 81, column: 1, scope: !1584)
!1595 = distinct !DISubprogram(name: "close_stdout", scope: !319, file: !319, line: 107, type: !401, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !314, variables: !1596)
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "write_error", scope: !1598, file: !319, line: 112, type: !78)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !319, line: 111, column: 5)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !319, line: 109, column: 7)
!1600 = !DILocation(line: 109, column: 21, scope: !1599)
!1601 = !DILocation(line: 109, column: 7, scope: !1599)
!1602 = !DILocation(line: 109, column: 29, scope: !1599)
!1603 = !DILocation(line: 110, column: 7, scope: !1599)
!1604 = !DILocation(line: 110, column: 12, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1599, file: !319, discriminator: 1)
!1606 = !{i8 0, i8 2}
!1607 = !DILocation(line: 114, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1598, file: !319, line: 113, column: 11)
!1609 = !DILocation(line: 110, column: 25, scope: !1605)
!1610 = !DILocation(line: 110, column: 28, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1599, file: !319, discriminator: 2)
!1612 = !DILocation(line: 110, column: 34, scope: !1611)
!1613 = !DILocation(line: 109, column: 7, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1595, file: !319, discriminator: 1)
!1615 = !DILocation(line: 112, column: 33, scope: !1598)
!1616 = !DILocation(line: 112, column: 19, scope: !1598)
!1617 = !DILocation(line: 113, column: 11, scope: !1608)
!1618 = !DILocation(line: 113, column: 11, scope: !1598)
!1619 = !DILocation(line: 114, column: 36, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1608, file: !319, discriminator: 1)
!1621 = !DILocation(line: 114, column: 9, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1608, file: !319, discriminator: 2)
!1623 = !DILocation(line: 114, column: 9, scope: !1608)
!1624 = !DILocation(line: 117, column: 9, scope: !1620)
!1625 = !DILocation(line: 119, column: 14, scope: !1598)
!1626 = !DILocation(line: 119, column: 7, scope: !1598)
!1627 = !DILocation(line: 122, column: 22, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1595, file: !319, line: 122, column: 8)
!1629 = !DILocation(line: 122, column: 8, scope: !1628)
!1630 = !DILocation(line: 122, column: 30, scope: !1628)
!1631 = !DILocation(line: 122, column: 8, scope: !1595)
!1632 = !DILocation(line: 123, column: 13, scope: !1628)
!1633 = !DILocation(line: 123, column: 6, scope: !1628)
!1634 = !DILocation(line: 124, column: 1, scope: !1595)
!1635 = distinct !DISubprogram(name: "last_component", scope: !1636, file: !1636, line: 30, type: !1637, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !1639)
!1636 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!24, !78}
!1639 = !{!1640, !1641, !1642, !1643}
!1640 = !DILocalVariable(name: "name", arg: 1, scope: !1635, file: !1636, line: 30, type: !78)
!1641 = !DILocalVariable(name: "base", scope: !1635, file: !1636, line: 32, type: !78)
!1642 = !DILocalVariable(name: "p", scope: !1635, file: !1636, line: 33, type: !78)
!1643 = !DILocalVariable(name: "saw_slash", scope: !1635, file: !1636, line: 34, type: !14)
!1644 = !DILocation(line: 30, column: 29, scope: !1635)
!1645 = !DILocation(line: 32, column: 15, scope: !1635)
!1646 = !DILocation(line: 34, column: 8, scope: !1635)
!1647 = !DILocation(line: 36, column: 3, scope: !1635)
!1648 = !DILocation(line: 36, column: 10, scope: !1649)
!1649 = !DILexicalBlockFile(scope: !1635, file: !1636, discriminator: 1)
!1650 = !DILocation(line: 37, column: 9, scope: !1635)
!1651 = !DILocation(line: 36, column: 3, scope: !1649)
!1652 = distinct !{!1652, !1647, !1650}
!1653 = !DILocation(line: 39, column: 18, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !1636, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !1636, line: 39, column: 3)
!1656 = distinct !DILexicalBlock(scope: !1635, file: !1636, line: 39, column: 3)
!1657 = !DILocation(line: 33, column: 15, scope: !1635)
!1658 = !DILocation(line: 39, column: 3, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1656, file: !1636, discriminator: 1)
!1660 = !DILocation(line: 43, column: 16, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !1636, line: 43, column: 16)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1636, line: 41, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1655, file: !1636, line: 40, column: 5)
!1664 = !DILocation(line: 43, column: 16, scope: !1662)
!1665 = !DILocation(line: 39, column: 23, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1655, file: !1636, discriminator: 2)
!1667 = !DILocation(line: 39, column: 3, scope: !1666)
!1668 = distinct !{!1668, !1669, !1670}
!1669 = !DILocation(line: 39, column: 3, scope: !1656)
!1670 = !DILocation(line: 48, column: 5, scope: !1656)
!1671 = !DILocation(line: 50, column: 3, scope: !1635)
!1672 = distinct !DISubprogram(name: "base_len", scope: !1636, file: !1636, line: 58, type: !1673, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !754, variables: !1675)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!70, !78}
!1675 = !{!1676, !1677, !1678}
!1676 = !DILocalVariable(name: "name", arg: 1, scope: !1672, file: !1636, line: 58, type: !78)
!1677 = !DILocalVariable(name: "len", scope: !1672, file: !1636, line: 60, type: !70)
!1678 = !DILocalVariable(name: "prefix_len", scope: !1672, file: !1636, line: 61, type: !70)
!1679 = !DILocation(line: 58, column: 23, scope: !1672)
!1680 = !DILocation(line: 61, column: 10, scope: !1672)
!1681 = !DILocation(line: 63, column: 14, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1672, file: !1636, line: 63, column: 3)
!1683 = !DILocation(line: 60, column: 10, scope: !1672)
!1684 = !DILocation(line: 63, column: 8, scope: !1682)
!1685 = !DILocation(line: 63, column: 32, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !1636, discriminator: 1)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !1636, line: 63, column: 3)
!1688 = !DILocation(line: 63, column: 38, scope: !1686)
!1689 = !DILocation(line: 63, column: 41, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1687, file: !1636, discriminator: 2)
!1691 = !DILocation(line: 63, column: 3, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1682, file: !1636, discriminator: 3)
!1693 = distinct !{!1693, !1694, !1695}
!1694 = !DILocation(line: 63, column: 3, scope: !1682)
!1695 = !DILocation(line: 64, column: 5, scope: !1682)
!1696 = !DILocation(line: 74, column: 3, scope: !1672)
!1697 = distinct !DISubprogram(name: "freopen_safer", scope: !1698, file: !1698, line: 54, type: !1699, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !757, variables: !1741)
!1698 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1701, !78, !78, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1703, file: !19, line: 242, baseType: !22, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1703, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1703, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1703, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1703, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1703, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1703, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1703, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1703, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1703, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1703, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1703, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1703, file: !19, line: 260, baseType: !1718, size: 64, offset: 768)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !1720)
!1720 = !{!1721, !1722, !1724}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1719, file: !19, line: 157, baseType: !1718, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1719, file: !19, line: 158, baseType: !1723, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1719, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1703, file: !19, line: 262, baseType: !1723, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1703, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1703, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1703, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1703, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1703, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1703, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1703, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1703, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1703, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1703, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1703, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1703, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1703, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1703, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1703, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!1741 = !{!1742, !1743, !1744, !1745, !1746, !1747, !1748}
!1742 = !DILocalVariable(name: "name", arg: 1, scope: !1697, file: !1698, line: 54, type: !78)
!1743 = !DILocalVariable(name: "mode", arg: 2, scope: !1697, file: !1698, line: 54, type: !78)
!1744 = !DILocalVariable(name: "f", arg: 3, scope: !1697, file: !1698, line: 54, type: !1701)
!1745 = !DILocalVariable(name: "protect_in", scope: !1697, file: !1698, line: 62, type: !14)
!1746 = !DILocalVariable(name: "protect_out", scope: !1697, file: !1698, line: 63, type: !14)
!1747 = !DILocalVariable(name: "protect_err", scope: !1697, file: !1698, line: 64, type: !14)
!1748 = !DILocalVariable(name: "saved_errno", scope: !1697, file: !1698, line: 65, type: !22)
!1749 = !DILocation(line: 54, column: 28, scope: !1697)
!1750 = !DILocation(line: 54, column: 46, scope: !1697)
!1751 = !DILocation(line: 54, column: 58, scope: !1697)
!1752 = !DILocation(line: 62, column: 8, scope: !1697)
!1753 = !DILocation(line: 63, column: 8, scope: !1697)
!1754 = !DILocation(line: 64, column: 8, scope: !1697)
!1755 = !DILocation(line: 67, column: 11, scope: !1697)
!1756 = !DILocation(line: 67, column: 3, scope: !1697)
!1757 = !DILocation(line: 70, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1698, line: 70, column: 11)
!1759 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 68, column: 5)
!1760 = !DILocation(line: 70, column: 11, scope: !1759)
!1761 = !DILocation(line: 74, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !1698, line: 74, column: 11)
!1763 = !DILocation(line: 74, column: 11, scope: !1759)
!1764 = !DILocation(line: 78, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !1698, line: 78, column: 11)
!1766 = !DILocation(line: 78, column: 11, scope: !1759)
!1767 = !DILocation(line: 85, column: 18, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 85, column: 7)
!1769 = !DILocalVariable(name: "fd", arg: 1, scope: !1770, file: !1698, line: 32, type: !22)
!1770 = distinct !DISubprogram(name: "protect_fd", scope: !1698, file: !1698, line: 32, type: !1771, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !757, variables: !1773)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!14, !22}
!1773 = !{!1769, !1774}
!1774 = !DILocalVariable(name: "value", scope: !1770, file: !1698, line: 34, type: !22)
!1775 = !DILocation(line: 32, column: 17, scope: !1770, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 85, column: 22, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1768, file: !1698, discriminator: 1)
!1778 = !DILocation(line: 34, column: 15, scope: !1770, inlinedAt: !1776)
!1779 = !DILocation(line: 34, column: 7, scope: !1770, inlinedAt: !1776)
!1780 = !DILocation(line: 35, column: 13, scope: !1781, inlinedAt: !1776)
!1781 = distinct !DILexicalBlock(scope: !1770, file: !1698, line: 35, column: 7)
!1782 = !DILocation(line: 35, column: 7, scope: !1770, inlinedAt: !1776)
!1783 = !DILocation(line: 37, column: 13, scope: !1784, inlinedAt: !1776)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !1698, line: 37, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !1698, line: 36, column: 5)
!1786 = !DILocation(line: 37, column: 11, scope: !1785, inlinedAt: !1776)
!1787 = !DILocation(line: 39, column: 11, scope: !1788, inlinedAt: !1776)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !1698, line: 38, column: 9)
!1789 = !DILocation(line: 40, column: 11, scope: !1788, inlinedAt: !1776)
!1790 = !DILocation(line: 40, column: 17, scope: !1788, inlinedAt: !1776)
!1791 = !DILocation(line: 41, column: 9, scope: !1788, inlinedAt: !1776)
!1792 = !DILocation(line: 87, column: 12, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1768, file: !1698, line: 87, column: 12)
!1794 = !DILocation(line: 87, column: 24, scope: !1793)
!1795 = !DILocation(line: 32, column: 17, scope: !1770, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 87, column: 28, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1793, file: !1698, discriminator: 1)
!1798 = !DILocation(line: 34, column: 15, scope: !1770, inlinedAt: !1796)
!1799 = !DILocation(line: 34, column: 7, scope: !1770, inlinedAt: !1796)
!1800 = !DILocation(line: 35, column: 13, scope: !1781, inlinedAt: !1796)
!1801 = !DILocation(line: 35, column: 7, scope: !1770, inlinedAt: !1796)
!1802 = !DILocation(line: 37, column: 13, scope: !1784, inlinedAt: !1796)
!1803 = !DILocation(line: 37, column: 11, scope: !1785, inlinedAt: !1796)
!1804 = !DILocation(line: 39, column: 11, scope: !1788, inlinedAt: !1796)
!1805 = !DILocation(line: 40, column: 11, scope: !1788, inlinedAt: !1796)
!1806 = !DILocation(line: 40, column: 17, scope: !1788, inlinedAt: !1796)
!1807 = !DILocation(line: 41, column: 9, scope: !1788, inlinedAt: !1796)
!1808 = !DILocation(line: 89, column: 12, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1793, file: !1698, line: 89, column: 12)
!1810 = !DILocation(line: 89, column: 24, scope: !1809)
!1811 = !DILocation(line: 32, column: 17, scope: !1770, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 89, column: 28, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !1809, file: !1698, discriminator: 1)
!1814 = !DILocation(line: 34, column: 15, scope: !1770, inlinedAt: !1812)
!1815 = !DILocation(line: 34, column: 7, scope: !1770, inlinedAt: !1812)
!1816 = !DILocation(line: 35, column: 13, scope: !1781, inlinedAt: !1812)
!1817 = !DILocation(line: 35, column: 7, scope: !1770, inlinedAt: !1812)
!1818 = !DILocation(line: 37, column: 13, scope: !1784, inlinedAt: !1812)
!1819 = !DILocation(line: 37, column: 11, scope: !1785, inlinedAt: !1812)
!1820 = !DILocation(line: 39, column: 11, scope: !1788, inlinedAt: !1812)
!1821 = !DILocation(line: 40, column: 11, scope: !1788, inlinedAt: !1812)
!1822 = !DILocation(line: 40, column: 17, scope: !1788, inlinedAt: !1812)
!1823 = !DILocation(line: 41, column: 9, scope: !1788, inlinedAt: !1812)
!1824 = !DILocation(line: 92, column: 9, scope: !1809)
!1825 = !DILocation(line: 93, column: 17, scope: !1697)
!1826 = !DILocation(line: 65, column: 7, scope: !1697)
!1827 = !DILocation(line: 94, column: 7, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 94, column: 7)
!1829 = !DILocation(line: 94, column: 7, scope: !1697)
!1830 = !DILocation(line: 95, column: 5, scope: !1828)
!1831 = !DILocation(line: 96, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 96, column: 7)
!1833 = !DILocation(line: 96, column: 7, scope: !1697)
!1834 = !DILocation(line: 97, column: 5, scope: !1832)
!1835 = !DILocation(line: 98, column: 7, scope: !1697)
!1836 = !DILocation(line: 99, column: 5, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 98, column: 7)
!1838 = !DILocation(line: 100, column: 8, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1697, file: !1698, line: 100, column: 7)
!1840 = !DILocation(line: 100, column: 7, scope: !1697)
!1841 = !DILocation(line: 101, column: 11, scope: !1839)
!1842 = !DILocation(line: 101, column: 5, scope: !1839)
!1843 = !DILocation(line: 102, column: 3, scope: !1697)
!1844 = distinct !DISubprogram(name: "set_program_name", scope: !333, file: !333, line: 39, type: !254, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !329, variables: !1845)
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "argv0", arg: 1, scope: !1844, file: !333, line: 39, type: !78)
!1847 = !DILocalVariable(name: "slash", scope: !1844, file: !333, line: 46, type: !78)
!1848 = !DILocalVariable(name: "base", scope: !1844, file: !333, line: 47, type: !78)
!1849 = !DILocation(line: 39, column: 31, scope: !1844)
!1850 = !DILocation(line: 51, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !333, line: 51, column: 7)
!1852 = !DILocation(line: 51, column: 7, scope: !1844)
!1853 = !DILocation(line: 55, column: 14, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !333, line: 52, column: 5)
!1855 = !DILocation(line: 54, column: 7, scope: !1854)
!1856 = !DILocation(line: 56, column: 7, scope: !1854)
!1857 = !DILocation(line: 59, column: 11, scope: !1844)
!1858 = !DILocation(line: 46, column: 15, scope: !1844)
!1859 = !DILocation(line: 60, column: 17, scope: !1844)
!1860 = !DILocation(line: 60, column: 33, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1844, file: !333, discriminator: 1)
!1862 = !DILocation(line: 60, column: 11, scope: !1844)
!1863 = !DILocation(line: 47, column: 15, scope: !1844)
!1864 = !DILocation(line: 61, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1844, file: !333, line: 61, column: 7)
!1866 = !DILocation(line: 61, column: 20, scope: !1865)
!1867 = !DILocation(line: 61, column: 25, scope: !1865)
!1868 = !DILocation(line: 61, column: 28, scope: !1869)
!1869 = !DILexicalBlockFile(scope: !1865, file: !333, discriminator: 1)
!1870 = !DILocation(line: 61, column: 61, scope: !1869)
!1871 = !DILocation(line: 61, column: 7, scope: !1861)
!1872 = !DILocation(line: 64, column: 11, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !333, line: 64, column: 11)
!1874 = distinct !DILexicalBlock(scope: !1865, file: !333, line: 62, column: 5)
!1875 = !DILocation(line: 64, column: 36, scope: !1873)
!1876 = !DILocation(line: 64, column: 11, scope: !1874)
!1877 = !DILocation(line: 66, column: 24, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1873, file: !333, line: 65, column: 9)
!1879 = !DILocation(line: 70, column: 41, scope: !1878)
!1880 = !DILocation(line: 72, column: 9, scope: !1878)
!1881 = !DILocation(line: 84, column: 16, scope: !1844)
!1882 = !DILocation(line: 90, column: 27, scope: !1844)
!1883 = !DILocation(line: 92, column: 1, scope: !1844)
!1884 = distinct !DISubprogram(name: "clone_quoting_options", scope: !348, file: !348, line: 114, type: !1885, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1888)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!1887, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1888 = !{!1889, !1890, !1891}
!1889 = !DILocalVariable(name: "o", arg: 1, scope: !1884, file: !348, line: 114, type: !1887)
!1890 = !DILocalVariable(name: "e", scope: !1884, file: !348, line: 116, type: !22)
!1891 = !DILocalVariable(name: "p", scope: !1884, file: !348, line: 117, type: !1887)
!1892 = !DILocation(line: 114, column: 48, scope: !1884)
!1893 = !DILocation(line: 116, column: 11, scope: !1884)
!1894 = !DILocation(line: 116, column: 7, scope: !1884)
!1895 = !DILocation(line: 117, column: 40, scope: !1884)
!1896 = !DILocation(line: 117, column: 40, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1884, file: !348, discriminator: 3)
!1898 = !DILocation(line: 117, column: 31, scope: !1897)
!1899 = !DILocation(line: 117, column: 27, scope: !1884)
!1900 = !DILocation(line: 119, column: 9, scope: !1884)
!1901 = !DILocation(line: 120, column: 3, scope: !1884)
!1902 = distinct !DISubprogram(name: "get_quoting_style", scope: !348, file: !348, line: 125, type: !1903, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1907)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!212, !1905}
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "o", arg: 1, scope: !1902, file: !348, line: 125, type: !1905)
!1909 = !DILocation(line: 125, column: 50, scope: !1902)
!1910 = !DILocation(line: 127, column: 11, scope: !1902)
!1911 = !DILocation(line: 127, column: 46, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1902, file: !348, discriminator: 3)
!1913 = !{!1914, !826, i64 0}
!1914 = !{!"quoting_options", !826, i64 0, !920, i64 4, !826, i64 8, !825, i64 40, !825, i64 48}
!1915 = !DILocation(line: 127, column: 3, scope: !1912)
!1916 = distinct !DISubprogram(name: "set_quoting_style", scope: !348, file: !348, line: 133, type: !1917, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{null, !1887, !212}
!1919 = !{!1920, !1921}
!1920 = !DILocalVariable(name: "o", arg: 1, scope: !1916, file: !348, line: 133, type: !1887)
!1921 = !DILocalVariable(name: "s", arg: 2, scope: !1916, file: !348, line: 133, type: !212)
!1922 = !DILocation(line: 133, column: 44, scope: !1916)
!1923 = !DILocation(line: 133, column: 66, scope: !1916)
!1924 = !DILocation(line: 135, column: 4, scope: !1916)
!1925 = !DILocation(line: 135, column: 39, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1916, file: !348, discriminator: 3)
!1927 = !DILocation(line: 135, column: 45, scope: !1926)
!1928 = !DILocation(line: 136, column: 1, scope: !1916)
!1929 = distinct !DISubprogram(name: "set_char_quoting", scope: !348, file: !348, line: 144, type: !1930, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!22, !1887, !25, !22}
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1939, !1940}
!1933 = !DILocalVariable(name: "o", arg: 1, scope: !1929, file: !348, line: 144, type: !1887)
!1934 = !DILocalVariable(name: "c", arg: 2, scope: !1929, file: !348, line: 144, type: !25)
!1935 = !DILocalVariable(name: "i", arg: 3, scope: !1929, file: !348, line: 144, type: !22)
!1936 = !DILocalVariable(name: "uc", scope: !1929, file: !348, line: 146, type: !246)
!1937 = !DILocalVariable(name: "p", scope: !1929, file: !348, line: 147, type: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!1939 = !DILocalVariable(name: "shift", scope: !1929, file: !348, line: 149, type: !22)
!1940 = !DILocalVariable(name: "r", scope: !1929, file: !348, line: 150, type: !22)
!1941 = !DILocation(line: 144, column: 43, scope: !1929)
!1942 = !DILocation(line: 144, column: 51, scope: !1929)
!1943 = !DILocation(line: 144, column: 58, scope: !1929)
!1944 = !DILocation(line: 146, column: 17, scope: !1929)
!1945 = !DILocation(line: 148, column: 6, scope: !1929)
!1946 = !DILocation(line: 148, column: 62, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1929, file: !348, discriminator: 3)
!1948 = !DILocation(line: 148, column: 57, scope: !1947)
!1949 = !DILocation(line: 147, column: 17, scope: !1929)
!1950 = !DILocation(line: 149, column: 18, scope: !1929)
!1951 = !DILocation(line: 149, column: 15, scope: !1929)
!1952 = !DILocation(line: 149, column: 7, scope: !1929)
!1953 = !DILocation(line: 150, column: 12, scope: !1929)
!1954 = !DILocation(line: 150, column: 15, scope: !1929)
!1955 = !DILocation(line: 150, column: 25, scope: !1929)
!1956 = !DILocation(line: 150, column: 7, scope: !1929)
!1957 = !DILocation(line: 151, column: 13, scope: !1929)
!1958 = !DILocation(line: 151, column: 18, scope: !1929)
!1959 = !DILocation(line: 151, column: 23, scope: !1929)
!1960 = !DILocation(line: 151, column: 6, scope: !1929)
!1961 = !DILocation(line: 152, column: 3, scope: !1929)
!1962 = distinct !DISubprogram(name: "set_quoting_flags", scope: !348, file: !348, line: 160, type: !1963, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1965)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!22, !1887, !22}
!1965 = !{!1966, !1967, !1968}
!1966 = !DILocalVariable(name: "o", arg: 1, scope: !1962, file: !348, line: 160, type: !1887)
!1967 = !DILocalVariable(name: "i", arg: 2, scope: !1962, file: !348, line: 160, type: !22)
!1968 = !DILocalVariable(name: "r", scope: !1962, file: !348, line: 162, type: !22)
!1969 = !DILocation(line: 160, column: 44, scope: !1962)
!1970 = !DILocation(line: 160, column: 51, scope: !1962)
!1971 = !DILocation(line: 163, column: 8, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1962, file: !348, line: 163, column: 7)
!1973 = !DILocation(line: 163, column: 7, scope: !1962)
!1974 = !DILocation(line: 165, column: 10, scope: !1962)
!1975 = !{!1914, !920, i64 4}
!1976 = !DILocation(line: 162, column: 7, scope: !1962)
!1977 = !DILocation(line: 166, column: 12, scope: !1962)
!1978 = !DILocation(line: 167, column: 3, scope: !1962)
!1979 = distinct !DISubprogram(name: "set_custom_quoting", scope: !348, file: !348, line: 171, type: !1980, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !1887, !78, !78}
!1982 = !{!1983, !1984, !1985}
!1983 = !DILocalVariable(name: "o", arg: 1, scope: !1979, file: !348, line: 171, type: !1887)
!1984 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1979, file: !348, line: 172, type: !78)
!1985 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1979, file: !348, line: 172, type: !78)
!1986 = !DILocation(line: 171, column: 45, scope: !1979)
!1987 = !DILocation(line: 172, column: 33, scope: !1979)
!1988 = !DILocation(line: 172, column: 57, scope: !1979)
!1989 = !DILocation(line: 174, column: 8, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !348, line: 174, column: 7)
!1991 = !DILocation(line: 174, column: 7, scope: !1979)
!1992 = !DILocation(line: 176, column: 6, scope: !1979)
!1993 = !DILocation(line: 176, column: 12, scope: !1979)
!1994 = !DILocation(line: 177, column: 8, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !348, line: 177, column: 7)
!1996 = !DILocation(line: 177, column: 23, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1995, file: !348, discriminator: 1)
!1998 = !DILocation(line: 177, column: 19, scope: !1995)
!1999 = !DILocation(line: 178, column: 5, scope: !1995)
!2000 = !DILocation(line: 179, column: 6, scope: !1979)
!2001 = !DILocation(line: 179, column: 17, scope: !1979)
!2002 = !{!1914, !825, i64 40}
!2003 = !DILocation(line: 180, column: 6, scope: !1979)
!2004 = !DILocation(line: 180, column: 18, scope: !1979)
!2005 = !{!1914, !825, i64 48}
!2006 = !DILocation(line: 181, column: 1, scope: !1979)
!2007 = distinct !DISubprogram(name: "quotearg_buffer", scope: !348, file: !348, line: 776, type: !2008, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!70, !24, !70, !78, !70, !1905}
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!2011 = !DILocalVariable(name: "buffer", arg: 1, scope: !2007, file: !348, line: 776, type: !24)
!2012 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2007, file: !348, line: 776, type: !70)
!2013 = !DILocalVariable(name: "arg", arg: 3, scope: !2007, file: !348, line: 777, type: !78)
!2014 = !DILocalVariable(name: "argsize", arg: 4, scope: !2007, file: !348, line: 777, type: !70)
!2015 = !DILocalVariable(name: "o", arg: 5, scope: !2007, file: !348, line: 778, type: !1905)
!2016 = !DILocalVariable(name: "p", scope: !2007, file: !348, line: 780, type: !1905)
!2017 = !DILocalVariable(name: "e", scope: !2007, file: !348, line: 781, type: !22)
!2018 = !DILocalVariable(name: "r", scope: !2007, file: !348, line: 782, type: !70)
!2019 = !DILocation(line: 776, column: 24, scope: !2007)
!2020 = !DILocation(line: 776, column: 39, scope: !2007)
!2021 = !DILocation(line: 777, column: 30, scope: !2007)
!2022 = !DILocation(line: 777, column: 42, scope: !2007)
!2023 = !DILocation(line: 778, column: 48, scope: !2007)
!2024 = !DILocation(line: 780, column: 37, scope: !2007)
!2025 = !DILocation(line: 780, column: 33, scope: !2007)
!2026 = !DILocation(line: 781, column: 11, scope: !2007)
!2027 = !DILocation(line: 781, column: 7, scope: !2007)
!2028 = !DILocation(line: 783, column: 43, scope: !2007)
!2029 = !DILocation(line: 783, column: 53, scope: !2007)
!2030 = !DILocation(line: 783, column: 60, scope: !2007)
!2031 = !DILocation(line: 784, column: 43, scope: !2007)
!2032 = !DILocation(line: 784, column: 58, scope: !2007)
!2033 = !DILocation(line: 782, column: 14, scope: !2007)
!2034 = !DILocation(line: 782, column: 10, scope: !2007)
!2035 = !DILocation(line: 785, column: 9, scope: !2007)
!2036 = !DILocation(line: 786, column: 3, scope: !2007)
!2037 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !348, file: !348, line: 248, type: !2038, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2042)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!70, !24, !70, !78, !70, !212, !22, !2040, !78, !78}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2042 = !{!2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2067, !2068, !2069, !2070, !2071, !2074, !2075, !2092, !2095, !2096, !2103}
!2043 = !DILocalVariable(name: "buffer", arg: 1, scope: !2037, file: !348, line: 248, type: !24)
!2044 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2037, file: !348, line: 248, type: !70)
!2045 = !DILocalVariable(name: "arg", arg: 3, scope: !2037, file: !348, line: 249, type: !78)
!2046 = !DILocalVariable(name: "argsize", arg: 4, scope: !2037, file: !348, line: 249, type: !70)
!2047 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2037, file: !348, line: 250, type: !212)
!2048 = !DILocalVariable(name: "flags", arg: 6, scope: !2037, file: !348, line: 250, type: !22)
!2049 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2037, file: !348, line: 251, type: !2040)
!2050 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2037, file: !348, line: 252, type: !78)
!2051 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2037, file: !348, line: 253, type: !78)
!2052 = !DILocalVariable(name: "i", scope: !2037, file: !348, line: 255, type: !70)
!2053 = !DILocalVariable(name: "len", scope: !2037, file: !348, line: 256, type: !70)
!2054 = !DILocalVariable(name: "orig_buffersize", scope: !2037, file: !348, line: 257, type: !70)
!2055 = !DILocalVariable(name: "quote_string", scope: !2037, file: !348, line: 258, type: !78)
!2056 = !DILocalVariable(name: "quote_string_len", scope: !2037, file: !348, line: 259, type: !70)
!2057 = !DILocalVariable(name: "backslash_escapes", scope: !2037, file: !348, line: 260, type: !14)
!2058 = !DILocalVariable(name: "unibyte_locale", scope: !2037, file: !348, line: 261, type: !14)
!2059 = !DILocalVariable(name: "elide_outer_quotes", scope: !2037, file: !348, line: 262, type: !14)
!2060 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2037, file: !348, line: 263, type: !14)
!2061 = !DILocalVariable(name: "encountered_single_quote", scope: !2037, file: !348, line: 264, type: !14)
!2062 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2037, file: !348, line: 265, type: !14)
!2063 = !DILocalVariable(name: "c", scope: !2064, file: !348, line: 394, type: !246)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !348, line: 393, column: 5)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !348, line: 392, column: 3)
!2066 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 392, column: 3)
!2067 = !DILocalVariable(name: "esc", scope: !2064, file: !348, line: 395, type: !246)
!2068 = !DILocalVariable(name: "is_right_quote", scope: !2064, file: !348, line: 396, type: !14)
!2069 = !DILocalVariable(name: "escaping", scope: !2064, file: !348, line: 397, type: !14)
!2070 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2064, file: !348, line: 398, type: !14)
!2071 = !DILocalVariable(name: "m", scope: !2072, file: !348, line: 602, type: !70)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 600, column: 11)
!2073 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 418, column: 9)
!2074 = !DILocalVariable(name: "printable", scope: !2072, file: !348, line: 604, type: !14)
!2075 = !DILocalVariable(name: "mbstate", scope: !2076, file: !348, line: 613, type: !2078)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !348, line: 612, column: 15)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !348, line: 606, column: 17)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2079, line: 107, baseType: !2080)
!2079 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2079, line: 95, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2079, line: 83, size: 64, elements: !2082)
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2081, file: !2079, line: 85, baseType: !22, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2081, file: !2079, line: 94, baseType: !2085, size: 32, offset: 32)
!2085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2081, file: !2079, line: 86, size: 32, elements: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2085, file: !2079, line: 89, baseType: !151, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2085, file: !2079, line: 93, baseType: !2089, size: 32)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !2090)
!2090 = !{!2091}
!2091 = !DISubrange(count: 4)
!2092 = !DILocalVariable(name: "w", scope: !2093, file: !348, line: 623, type: !2094)
!2093 = distinct !DILexicalBlock(scope: !2076, file: !348, line: 622, column: 19)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 90, baseType: !22)
!2095 = !DILocalVariable(name: "bytes", scope: !2093, file: !348, line: 624, type: !70)
!2096 = !DILocalVariable(name: "j", scope: !2097, file: !348, line: 649, type: !70)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !348, line: 648, column: 27)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !348, line: 646, column: 29)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !348, line: 641, column: 23)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !348, line: 633, column: 30)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !348, line: 628, column: 30)
!2102 = distinct !DILexicalBlock(scope: !2093, file: !348, line: 626, column: 25)
!2103 = !DILocalVariable(name: "ilim", scope: !2104, file: !348, line: 676, type: !70)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !348, line: 673, column: 15)
!2105 = distinct !DILexicalBlock(scope: !2072, file: !348, line: 672, column: 17)
!2106 = !DILocation(line: 248, column: 33, scope: !2037)
!2107 = !DILocation(line: 248, column: 48, scope: !2037)
!2108 = !DILocation(line: 249, column: 39, scope: !2037)
!2109 = !DILocation(line: 249, column: 51, scope: !2037)
!2110 = !DILocation(line: 250, column: 46, scope: !2037)
!2111 = !DILocation(line: 250, column: 65, scope: !2037)
!2112 = !DILocation(line: 251, column: 47, scope: !2037)
!2113 = !DILocation(line: 252, column: 39, scope: !2037)
!2114 = !DILocation(line: 253, column: 39, scope: !2037)
!2115 = !DILocation(line: 256, column: 10, scope: !2037)
!2116 = !DILocation(line: 257, column: 10, scope: !2037)
!2117 = !DILocation(line: 258, column: 15, scope: !2037)
!2118 = !DILocation(line: 259, column: 10, scope: !2037)
!2119 = !DILocation(line: 260, column: 8, scope: !2037)
!2120 = !DILocation(line: 261, column: 25, scope: !2037)
!2121 = !DILocation(line: 261, column: 36, scope: !2037)
!2122 = !DILocation(line: 262, column: 8, scope: !2037)
!2123 = !DILocation(line: 263, column: 8, scope: !2037)
!2124 = !DILocation(line: 264, column: 8, scope: !2037)
!2125 = !DILocation(line: 265, column: 8, scope: !2037)
!2126 = !DILocation(line: 265, column: 3, scope: !2037)
!2127 = !DILocation(line: 308, column: 3, scope: !2037)
!2128 = !DILocation(line: 315, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 309, column: 5)
!2130 = !DILocation(line: 315, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2129, file: !348, line: 315, column: 11)
!2132 = !DILocation(line: 316, column: 9, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2134, file: !348, discriminator: 1)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !348, line: 316, column: 9)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !348, line: 316, column: 9)
!2136 = !DILocation(line: 316, column: 9, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2135, file: !348, discriminator: 1)
!2138 = !DILocation(line: 316, column: 9, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2134, file: !348, discriminator: 2)
!2140 = !DILocation(line: 354, column: 26, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !348, line: 332, column: 11)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !348, line: 331, column: 13)
!2143 = distinct !DILexicalBlock(scope: !2129, file: !348, line: 330, column: 7)
!2144 = !DILocation(line: 355, column: 27, scope: !2141)
!2145 = !DILocation(line: 356, column: 11, scope: !2141)
!2146 = !DILocation(line: 357, column: 14, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2143, file: !348, line: 357, column: 13)
!2148 = !DILocation(line: 357, column: 13, scope: !2143)
!2149 = !DILocation(line: 358, column: 43, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2151, file: !348, discriminator: 1)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !348, line: 358, column: 11)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !348, line: 358, column: 11)
!2153 = !DILocation(line: 358, column: 11, scope: !2154)
!2154 = !DILexicalBlockFile(scope: !2152, file: !348, discriminator: 1)
!2155 = !DILocation(line: 359, column: 13, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !348, discriminator: 1)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !348, line: 359, column: 13)
!2158 = distinct !DILexicalBlock(scope: !2151, file: !348, line: 359, column: 13)
!2159 = !DILocation(line: 359, column: 13, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2158, file: !348, discriminator: 1)
!2161 = !DILocation(line: 359, column: 13, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2157, file: !348, discriminator: 2)
!2163 = !DILocation(line: 359, column: 13, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2158, file: !348, discriminator: 3)
!2165 = !DILocation(line: 358, column: 70, scope: !2166)
!2166 = !DILexicalBlockFile(scope: !2151, file: !348, discriminator: 2)
!2167 = distinct !{!2167, !2168, !2169}
!2168 = !DILocation(line: 358, column: 11, scope: !2152)
!2169 = !DILocation(line: 359, column: 13, scope: !2152)
!2170 = !DILocation(line: 362, column: 28, scope: !2143)
!2171 = !DILocation(line: 364, column: 7, scope: !2129)
!2172 = !DILocation(line: 367, column: 7, scope: !2129)
!2173 = !DILocation(line: 370, column: 7, scope: !2129)
!2174 = !DILocation(line: 373, column: 12, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2129, file: !348, line: 373, column: 11)
!2176 = !DILocation(line: 373, column: 11, scope: !2129)
!2177 = !DILocation(line: 378, column: 12, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2129, file: !348, line: 378, column: 11)
!2179 = !DILocation(line: 378, column: 11, scope: !2129)
!2180 = !DILocation(line: 379, column: 9, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2182, file: !348, discriminator: 1)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !348, line: 379, column: 9)
!2183 = distinct !DILexicalBlock(scope: !2178, file: !348, line: 379, column: 9)
!2184 = !DILocation(line: 379, column: 9, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2183, file: !348, discriminator: 1)
!2186 = !DILocation(line: 379, column: 9, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2182, file: !348, discriminator: 2)
!2188 = !DILocation(line: 386, column: 7, scope: !2129)
!2189 = !DILocation(line: 389, column: 7, scope: !2129)
!2190 = !DILocation(line: 255, column: 10, scope: !2037)
!2191 = !DILocation(line: 392, column: 8, scope: !2066)
!2192 = !DILocation(line: 392, column: 27, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2065, file: !348, discriminator: 1)
!2194 = !DILocation(line: 392, column: 19, scope: !2193)
!2195 = !DILocation(line: 392, column: 60, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2065, file: !348, discriminator: 3)
!2197 = !DILocation(line: 392, column: 3, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2066, file: !348, discriminator: 4)
!2199 = !DILocation(line: 392, column: 41, scope: !2200)
!2200 = !DILexicalBlockFile(scope: !2065, file: !348, discriminator: 2)
!2201 = !DILocation(line: 392, column: 48, scope: !2200)
!2202 = !DILocation(line: 396, column: 12, scope: !2064)
!2203 = !DILocation(line: 397, column: 12, scope: !2064)
!2204 = !DILocation(line: 398, column: 12, scope: !2064)
!2205 = !DILocation(line: 401, column: 11, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 400, column: 11)
!2207 = !DILocation(line: 403, column: 17, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2206, file: !348, discriminator: 1)
!2209 = !DILocation(line: 404, column: 39, scope: !2206)
!2210 = !DILocation(line: 408, column: 32, scope: !2206)
!2211 = !DILocation(line: 404, column: 19, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2206, file: !348, discriminator: 2)
!2213 = !DILocation(line: 404, column: 15, scope: !2214)
!2214 = !DILexicalBlockFile(scope: !2206, file: !348, discriminator: 4)
!2215 = !DILocation(line: 409, column: 11, scope: !2206)
!2216 = !DILocation(line: 409, column: 26, scope: !2208)
!2217 = !DILocation(line: 409, column: 14, scope: !2208)
!2218 = !DILocation(line: 400, column: 11, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2064, file: !348, discriminator: 1)
!2220 = !DILocation(line: 416, column: 11, scope: !2064)
!2221 = !DILocation(line: 394, column: 21, scope: !2064)
!2222 = !DILocation(line: 417, column: 7, scope: !2064)
!2223 = !DILocation(line: 420, column: 15, scope: !2073)
!2224 = !DILocation(line: 422, column: 15, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2226, file: !348, discriminator: 1)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !348, line: 422, column: 15)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !348, line: 421, column: 13)
!2228 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 420, column: 15)
!2229 = !DILocation(line: 422, column: 15, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !2231, file: !348, discriminator: 4)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !348, line: 422, column: 15)
!2232 = !DILocation(line: 422, column: 15, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2231, file: !348, discriminator: 3)
!2234 = !DILocation(line: 422, column: 15, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2236, file: !348, discriminator: 6)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !348, line: 422, column: 15)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !348, line: 422, column: 15)
!2238 = distinct !DILexicalBlock(scope: !2231, file: !348, line: 422, column: 15)
!2239 = !DILocation(line: 422, column: 15, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !348, discriminator: 6)
!2241 = !DILocation(line: 422, column: 15, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2236, file: !348, discriminator: 7)
!2243 = !DILocation(line: 422, column: 15, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2237, file: !348, discriminator: 8)
!2245 = !DILocation(line: 422, column: 15, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !348, discriminator: 11)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !348, line: 422, column: 15)
!2248 = distinct !DILexicalBlock(scope: !2238, file: !348, line: 422, column: 15)
!2249 = !DILocation(line: 422, column: 15, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2248, file: !348, discriminator: 11)
!2251 = !DILocation(line: 422, column: 15, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2247, file: !348, discriminator: 12)
!2253 = !DILocation(line: 422, column: 15, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2248, file: !348, discriminator: 13)
!2255 = !DILocation(line: 422, column: 15, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2257, file: !348, discriminator: 16)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !348, line: 422, column: 15)
!2258 = distinct !DILexicalBlock(scope: !2238, file: !348, line: 422, column: 15)
!2259 = !DILocation(line: 422, column: 15, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2258, file: !348, discriminator: 16)
!2261 = !DILocation(line: 422, column: 15, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !2257, file: !348, discriminator: 17)
!2263 = !DILocation(line: 422, column: 15, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2258, file: !348, discriminator: 18)
!2265 = !DILocation(line: 422, column: 15, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2238, file: !348, discriminator: 20)
!2267 = !DILocation(line: 422, column: 15, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !348, discriminator: 22)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !348, line: 422, column: 15)
!2270 = distinct !DILexicalBlock(scope: !2226, file: !348, line: 422, column: 15)
!2271 = !DILocation(line: 422, column: 15, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2270, file: !348, discriminator: 22)
!2273 = !DILocation(line: 422, column: 15, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2269, file: !348, discriminator: 23)
!2275 = !DILocation(line: 422, column: 15, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2270, file: !348, discriminator: 24)
!2277 = !DILocation(line: 430, column: 19, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2227, file: !348, line: 429, column: 19)
!2279 = !DILocation(line: 430, column: 24, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2278, file: !348, discriminator: 1)
!2281 = !DILocation(line: 430, column: 28, scope: !2280)
!2282 = !DILocation(line: 430, column: 38, scope: !2280)
!2283 = !DILocation(line: 430, column: 48, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2278, file: !348, discriminator: 2)
!2285 = !DILocation(line: 430, column: 59, scope: !2284)
!2286 = !DILocation(line: 432, column: 19, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2288, file: !348, discriminator: 1)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !348, line: 432, column: 19)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !348, line: 432, column: 19)
!2290 = distinct !DILexicalBlock(scope: !2278, file: !348, line: 431, column: 17)
!2291 = !DILocation(line: 432, column: 19, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2289, file: !348, discriminator: 1)
!2293 = !DILocation(line: 432, column: 19, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2288, file: !348, discriminator: 2)
!2295 = !DILocation(line: 432, column: 19, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2289, file: !348, discriminator: 3)
!2297 = !DILocation(line: 433, column: 19, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2299, file: !348, discriminator: 1)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !348, line: 433, column: 19)
!2300 = distinct !DILexicalBlock(scope: !2290, file: !348, line: 433, column: 19)
!2301 = !DILocation(line: 433, column: 19, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2300, file: !348, discriminator: 1)
!2303 = !DILocation(line: 433, column: 19, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2299, file: !348, discriminator: 2)
!2305 = !DILocation(line: 433, column: 19, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2300, file: !348, discriminator: 3)
!2307 = !DILocation(line: 434, column: 17, scope: !2290)
!2308 = !DILocation(line: 441, column: 20, scope: !2228)
!2309 = !DILocation(line: 446, column: 11, scope: !2073)
!2310 = !DILocation(line: 449, column: 19, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 447, column: 13)
!2312 = !DILocation(line: 455, column: 19, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2311, file: !348, line: 454, column: 19)
!2314 = !DILocation(line: 455, column: 24, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2313, file: !348, discriminator: 1)
!2316 = !DILocation(line: 455, column: 28, scope: !2315)
!2317 = !DILocation(line: 455, column: 38, scope: !2315)
!2318 = !DILocation(line: 455, column: 47, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2313, file: !348, discriminator: 2)
!2320 = !DILocation(line: 455, column: 41, scope: !2319)
!2321 = !DILocation(line: 455, column: 52, scope: !2319)
!2322 = !DILocation(line: 454, column: 19, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2311, file: !348, discriminator: 1)
!2324 = !DILocation(line: 456, column: 25, scope: !2313)
!2325 = !DILocation(line: 456, column: 17, scope: !2313)
!2326 = !DILocation(line: 463, column: 25, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2313, file: !348, line: 457, column: 19)
!2328 = !DILocation(line: 467, column: 21, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2330, file: !348, discriminator: 1)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !348, line: 467, column: 21)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !348, line: 467, column: 21)
!2332 = !DILocation(line: 467, column: 21, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2331, file: !348, discriminator: 1)
!2334 = !DILocation(line: 467, column: 21, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2330, file: !348, discriminator: 2)
!2336 = !DILocation(line: 467, column: 21, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2331, file: !348, discriminator: 3)
!2338 = !DILocation(line: 468, column: 21, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !348, discriminator: 1)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !348, line: 468, column: 21)
!2341 = distinct !DILexicalBlock(scope: !2327, file: !348, line: 468, column: 21)
!2342 = !DILocation(line: 468, column: 21, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2341, file: !348, discriminator: 1)
!2344 = !DILocation(line: 468, column: 21, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2340, file: !348, discriminator: 2)
!2346 = !DILocation(line: 468, column: 21, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2341, file: !348, discriminator: 3)
!2348 = !DILocation(line: 469, column: 21, scope: !2349)
!2349 = !DILexicalBlockFile(scope: !2350, file: !348, discriminator: 1)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !348, line: 469, column: 21)
!2351 = distinct !DILexicalBlock(scope: !2327, file: !348, line: 469, column: 21)
!2352 = !DILocation(line: 469, column: 21, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2351, file: !348, discriminator: 1)
!2354 = !DILocation(line: 469, column: 21, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2350, file: !348, discriminator: 2)
!2356 = !DILocation(line: 469, column: 21, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2351, file: !348, discriminator: 3)
!2358 = !DILocation(line: 470, column: 21, scope: !2359)
!2359 = !DILexicalBlockFile(scope: !2360, file: !348, discriminator: 1)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !348, line: 470, column: 21)
!2361 = distinct !DILexicalBlock(scope: !2327, file: !348, line: 470, column: 21)
!2362 = !DILocation(line: 470, column: 21, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2361, file: !348, discriminator: 1)
!2364 = !DILocation(line: 470, column: 21, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2360, file: !348, discriminator: 2)
!2366 = !DILocation(line: 470, column: 21, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2361, file: !348, discriminator: 3)
!2368 = !DILocation(line: 471, column: 21, scope: !2327)
!2369 = !DILocation(line: 395, column: 21, scope: !2064)
!2370 = !DILocation(line: 484, column: 31, scope: !2073)
!2371 = !DILocation(line: 485, column: 31, scope: !2073)
!2372 = !DILocation(line: 487, column: 31, scope: !2073)
!2373 = !DILocation(line: 488, column: 31, scope: !2073)
!2374 = !DILocation(line: 489, column: 31, scope: !2073)
!2375 = !DILocation(line: 492, column: 15, scope: !2073)
!2376 = !DILocation(line: 494, column: 19, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !348, line: 493, column: 13)
!2378 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 492, column: 15)
!2379 = !DILocation(line: 501, column: 33, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 501, column: 15)
!2381 = !DILocation(line: 506, column: 15, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 505, column: 15)
!2383 = !DILocation(line: 510, column: 15, scope: !2073)
!2384 = !DILocation(line: 518, column: 26, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 518, column: 15)
!2386 = !DILocation(line: 518, column: 15, scope: !2073)
!2387 = !DILocation(line: 518, column: 40, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2385, file: !348, discriminator: 1)
!2389 = !DILocation(line: 518, column: 47, scope: !2388)
!2390 = !DILocation(line: 522, column: 17, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 522, column: 15)
!2392 = !DILocation(line: 518, column: 18, scope: !2388)
!2393 = !DILocation(line: 518, column: 65, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2385, file: !348, discriminator: 2)
!2395 = !DILocation(line: 518, column: 15, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2073, file: !348, discriminator: 2)
!2397 = !DILocation(line: 522, column: 15, scope: !2073)
!2398 = !DILocation(line: 526, column: 11, scope: !2073)
!2399 = !DILocation(line: 541, column: 15, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 540, column: 15)
!2401 = !DILocation(line: 548, column: 15, scope: !2073)
!2402 = !DILocation(line: 550, column: 19, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !348, line: 549, column: 13)
!2404 = distinct !DILexicalBlock(scope: !2073, file: !348, line: 548, column: 15)
!2405 = !DILocation(line: 553, column: 19, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2403, file: !348, line: 553, column: 19)
!2407 = !DILocation(line: 553, column: 35, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2406, file: !348, discriminator: 1)
!2409 = !DILocation(line: 553, column: 30, scope: !2406)
!2410 = !DILocation(line: 562, column: 15, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2412, file: !348, discriminator: 1)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !348, line: 562, column: 15)
!2413 = distinct !DILexicalBlock(scope: !2403, file: !348, line: 562, column: 15)
!2414 = !DILocation(line: 562, column: 15, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2413, file: !348, discriminator: 1)
!2416 = !DILocation(line: 562, column: 15, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2412, file: !348, discriminator: 2)
!2418 = !DILocation(line: 562, column: 15, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2413, file: !348, discriminator: 3)
!2420 = !DILocation(line: 563, column: 15, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2422, file: !348, discriminator: 1)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !348, line: 563, column: 15)
!2423 = distinct !DILexicalBlock(scope: !2403, file: !348, line: 563, column: 15)
!2424 = !DILocation(line: 563, column: 15, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2423, file: !348, discriminator: 1)
!2426 = !DILocation(line: 563, column: 15, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2422, file: !348, discriminator: 2)
!2428 = !DILocation(line: 563, column: 15, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2423, file: !348, discriminator: 3)
!2430 = !DILocation(line: 564, column: 15, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2432, file: !348, discriminator: 1)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !348, line: 564, column: 15)
!2433 = distinct !DILexicalBlock(scope: !2403, file: !348, line: 564, column: 15)
!2434 = !DILocation(line: 564, column: 15, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2433, file: !348, discriminator: 1)
!2436 = !DILocation(line: 564, column: 15, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2432, file: !348, discriminator: 2)
!2438 = !DILocation(line: 564, column: 15, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2433, file: !348, discriminator: 3)
!2440 = !DILocation(line: 566, column: 13, scope: !2403)
!2441 = !DILocation(line: 606, column: 17, scope: !2072)
!2442 = !DILocation(line: 602, column: 20, scope: !2072)
!2443 = !DILocation(line: 609, column: 29, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2077, file: !348, line: 607, column: 15)
!2445 = !DILocation(line: 609, column: 27, scope: !2444)
!2446 = !DILocation(line: 604, column: 18, scope: !2072)
!2447 = !DILocation(line: 610, column: 15, scope: !2444)
!2448 = !DILocation(line: 613, column: 17, scope: !2076)
!2449 = !DILocation(line: 614, column: 17, scope: !2076)
!2450 = !DILocation(line: 618, column: 29, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2076, file: !348, line: 618, column: 21)
!2452 = !DILocation(line: 618, column: 21, scope: !2076)
!2453 = distinct !{!2453, !2454, !2455}
!2454 = !DILocation(line: 621, column: 17, scope: !2076)
!2455 = !DILocation(line: 667, column: 44, scope: !2076)
!2456 = !DILocation(line: 619, column: 29, scope: !2451)
!2457 = !DILocation(line: 619, column: 19, scope: !2451)
!2458 = !DILocation(line: 623, column: 21, scope: !2093)
!2459 = !DILocation(line: 624, column: 56, scope: !2093)
!2460 = !DILocation(line: 624, column: 50, scope: !2093)
!2461 = !DILocation(line: 625, column: 53, scope: !2093)
!2462 = !DILocation(line: 613, column: 27, scope: !2076)
!2463 = !DILocation(line: 623, column: 29, scope: !2093)
!2464 = !DILocation(line: 624, column: 36, scope: !2093)
!2465 = !DILocation(line: 624, column: 28, scope: !2093)
!2466 = !DILocation(line: 626, column: 25, scope: !2093)
!2467 = !DILocation(line: 636, column: 38, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2469, file: !348, discriminator: 1)
!2469 = distinct !DILexicalBlock(scope: !2100, file: !348, line: 634, column: 23)
!2470 = !DILocation(line: 636, column: 48, scope: !2468)
!2471 = !DILocation(line: 636, column: 51, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2469, file: !348, discriminator: 2)
!2473 = !DILocation(line: 636, column: 48, scope: !2472)
!2474 = !DILocation(line: 636, column: 25, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2469, file: !348, discriminator: 3)
!2476 = !DILocation(line: 637, column: 28, scope: !2469)
!2477 = !DILocation(line: 636, column: 34, scope: !2468)
!2478 = distinct !{!2478, !2479, !2476}
!2479 = !DILocation(line: 636, column: 25, scope: !2469)
!2480 = !DILocation(line: 650, column: 43, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !348, discriminator: 1)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !348, line: 650, column: 29)
!2483 = distinct !DILexicalBlock(scope: !2097, file: !348, line: 650, column: 29)
!2484 = !DILocation(line: 647, column: 29, scope: !2098)
!2485 = !DILocation(line: 649, column: 36, scope: !2097)
!2486 = !DILocation(line: 651, column: 49, scope: !2482)
!2487 = !DILocation(line: 651, column: 39, scope: !2482)
!2488 = !DILocation(line: 651, column: 31, scope: !2482)
!2489 = !DILocation(line: 650, column: 53, scope: !2490)
!2490 = !DILexicalBlockFile(scope: !2482, file: !348, discriminator: 2)
!2491 = !DILocation(line: 650, column: 29, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2483, file: !348, discriminator: 1)
!2493 = distinct !{!2493, !2494, !2495}
!2494 = !DILocation(line: 650, column: 29, scope: !2483)
!2495 = !DILocation(line: 659, column: 33, scope: !2483)
!2496 = !DILocation(line: 666, column: 19, scope: !2076)
!2497 = !DILocation(line: 662, column: 41, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2099, file: !348, line: 662, column: 29)
!2499 = !DILocation(line: 662, column: 31, scope: !2498)
!2500 = !DILocation(line: 662, column: 29, scope: !2099)
!2501 = !DILocation(line: 664, column: 27, scope: !2099)
!2502 = !DILocation(line: 667, column: 26, scope: !2076)
!2503 = !DILocation(line: 667, column: 24, scope: !2076)
!2504 = !DILocation(line: 666, column: 19, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2093, file: !348, discriminator: 3)
!2506 = !DILocation(line: 668, column: 15, scope: !2077)
!2507 = !DILocation(line: 670, column: 40, scope: !2072)
!2508 = !DILocation(line: 672, column: 19, scope: !2105)
!2509 = !DILocation(line: 672, column: 45, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2105, file: !348, discriminator: 1)
!2511 = !DILocation(line: 672, column: 23, scope: !2105)
!2512 = !DILocation(line: 676, column: 33, scope: !2104)
!2513 = !DILocation(line: 676, column: 24, scope: !2104)
!2514 = !DILocation(line: 678, column: 17, scope: !2104)
!2515 = !DILocation(line: 680, column: 43, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !348, line: 680, column: 25)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !348, line: 679, column: 19)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !348, line: 678, column: 17)
!2519 = distinct !DILexicalBlock(scope: !2104, file: !348, line: 678, column: 17)
!2520 = !DILocation(line: 682, column: 25, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !348, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !348, line: 682, column: 25)
!2523 = distinct !DILexicalBlock(scope: !2516, file: !348, line: 681, column: 23)
!2524 = !DILocation(line: 682, column: 25, scope: !2525)
!2525 = !DILexicalBlockFile(scope: !2526, file: !348, discriminator: 4)
!2526 = distinct !DILexicalBlock(scope: !2522, file: !348, line: 682, column: 25)
!2527 = !DILocation(line: 682, column: 25, scope: !2528)
!2528 = !DILexicalBlockFile(scope: !2526, file: !348, discriminator: 3)
!2529 = !DILocation(line: 682, column: 25, scope: !2530)
!2530 = !DILexicalBlockFile(scope: !2531, file: !348, discriminator: 6)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !348, line: 682, column: 25)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !348, line: 682, column: 25)
!2533 = distinct !DILexicalBlock(scope: !2526, file: !348, line: 682, column: 25)
!2534 = !DILocation(line: 682, column: 25, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2532, file: !348, discriminator: 6)
!2536 = !DILocation(line: 682, column: 25, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2531, file: !348, discriminator: 7)
!2538 = !DILocation(line: 682, column: 25, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2532, file: !348, discriminator: 8)
!2540 = !DILocation(line: 682, column: 25, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2542, file: !348, discriminator: 11)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !348, line: 682, column: 25)
!2543 = distinct !DILexicalBlock(scope: !2533, file: !348, line: 682, column: 25)
!2544 = !DILocation(line: 682, column: 25, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2543, file: !348, discriminator: 11)
!2546 = !DILocation(line: 682, column: 25, scope: !2547)
!2547 = !DILexicalBlockFile(scope: !2542, file: !348, discriminator: 12)
!2548 = !DILocation(line: 682, column: 25, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2543, file: !348, discriminator: 13)
!2550 = !DILocation(line: 682, column: 25, scope: !2551)
!2551 = !DILexicalBlockFile(scope: !2552, file: !348, discriminator: 16)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !348, line: 682, column: 25)
!2553 = distinct !DILexicalBlock(scope: !2533, file: !348, line: 682, column: 25)
!2554 = !DILocation(line: 682, column: 25, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2553, file: !348, discriminator: 16)
!2556 = !DILocation(line: 682, column: 25, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2552, file: !348, discriminator: 17)
!2558 = !DILocation(line: 682, column: 25, scope: !2559)
!2559 = !DILexicalBlockFile(scope: !2553, file: !348, discriminator: 18)
!2560 = !DILocation(line: 682, column: 25, scope: !2561)
!2561 = !DILexicalBlockFile(scope: !2533, file: !348, discriminator: 20)
!2562 = !DILocation(line: 682, column: 25, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2564, file: !348, discriminator: 22)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !348, line: 682, column: 25)
!2565 = distinct !DILexicalBlock(scope: !2522, file: !348, line: 682, column: 25)
!2566 = !DILocation(line: 682, column: 25, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2565, file: !348, discriminator: 22)
!2568 = !DILocation(line: 682, column: 25, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2564, file: !348, discriminator: 23)
!2570 = !DILocation(line: 682, column: 25, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2565, file: !348, discriminator: 24)
!2572 = !DILocation(line: 683, column: 25, scope: !2573)
!2573 = !DILexicalBlockFile(scope: !2574, file: !348, discriminator: 1)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !348, line: 683, column: 25)
!2575 = distinct !DILexicalBlock(scope: !2523, file: !348, line: 683, column: 25)
!2576 = !DILocation(line: 683, column: 25, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2575, file: !348, discriminator: 1)
!2578 = !DILocation(line: 683, column: 25, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2574, file: !348, discriminator: 2)
!2580 = !DILocation(line: 683, column: 25, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2575, file: !348, discriminator: 3)
!2582 = !DILocation(line: 684, column: 25, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2584, file: !348, discriminator: 1)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !348, line: 684, column: 25)
!2585 = distinct !DILexicalBlock(scope: !2523, file: !348, line: 684, column: 25)
!2586 = !DILocation(line: 684, column: 25, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2585, file: !348, discriminator: 1)
!2588 = !DILocation(line: 684, column: 25, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2584, file: !348, discriminator: 2)
!2590 = !DILocation(line: 684, column: 25, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2585, file: !348, discriminator: 3)
!2592 = !DILocation(line: 685, column: 38, scope: !2523)
!2593 = !DILocation(line: 685, column: 33, scope: !2523)
!2594 = !DILocation(line: 686, column: 23, scope: !2523)
!2595 = !DILocation(line: 687, column: 30, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2516, file: !348, line: 687, column: 30)
!2597 = !DILocation(line: 687, column: 30, scope: !2516)
!2598 = !DILocation(line: 689, column: 25, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2600, file: !348, discriminator: 1)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !348, line: 689, column: 25)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !348, line: 689, column: 25)
!2602 = distinct !DILexicalBlock(scope: !2596, file: !348, line: 688, column: 23)
!2603 = !DILocation(line: 689, column: 25, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2601, file: !348, discriminator: 1)
!2605 = !DILocation(line: 689, column: 25, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2600, file: !348, discriminator: 2)
!2607 = !DILocation(line: 689, column: 25, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2601, file: !348, discriminator: 3)
!2609 = !DILocation(line: 691, column: 23, scope: !2602)
!2610 = !DILocation(line: 692, column: 35, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2517, file: !348, line: 692, column: 25)
!2612 = !DILocation(line: 692, column: 30, scope: !2611)
!2613 = !DILocation(line: 692, column: 25, scope: !2517)
!2614 = !DILocation(line: 694, column: 21, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2616, file: !348, discriminator: 1)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !348, line: 694, column: 21)
!2617 = distinct !DILexicalBlock(scope: !2517, file: !348, line: 694, column: 21)
!2618 = !DILocation(line: 694, column: 21, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2616, file: !348, discriminator: 2)
!2620 = !DILocation(line: 694, column: 21, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2622, file: !348, discriminator: 4)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !348, line: 694, column: 21)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !348, line: 694, column: 21)
!2624 = distinct !DILexicalBlock(scope: !2616, file: !348, line: 694, column: 21)
!2625 = !DILocation(line: 694, column: 21, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2623, file: !348, discriminator: 4)
!2627 = !DILocation(line: 694, column: 21, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2622, file: !348, discriminator: 5)
!2629 = !DILocation(line: 694, column: 21, scope: !2630)
!2630 = !DILexicalBlockFile(scope: !2623, file: !348, discriminator: 6)
!2631 = !DILocation(line: 694, column: 21, scope: !2632)
!2632 = !DILexicalBlockFile(scope: !2633, file: !348, discriminator: 9)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !348, line: 694, column: 21)
!2634 = distinct !DILexicalBlock(scope: !2624, file: !348, line: 694, column: 21)
!2635 = !DILocation(line: 694, column: 21, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2634, file: !348, discriminator: 9)
!2637 = !DILocation(line: 694, column: 21, scope: !2638)
!2638 = !DILexicalBlockFile(scope: !2633, file: !348, discriminator: 10)
!2639 = !DILocation(line: 694, column: 21, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2634, file: !348, discriminator: 11)
!2641 = !DILocation(line: 694, column: 21, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2624, file: !348, discriminator: 13)
!2643 = !DILocation(line: 695, column: 21, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2645, file: !348, discriminator: 1)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !348, line: 695, column: 21)
!2646 = distinct !DILexicalBlock(scope: !2517, file: !348, line: 695, column: 21)
!2647 = !DILocation(line: 695, column: 21, scope: !2648)
!2648 = !DILexicalBlockFile(scope: !2646, file: !348, discriminator: 1)
!2649 = !DILocation(line: 695, column: 21, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2645, file: !348, discriminator: 2)
!2651 = !DILocation(line: 695, column: 21, scope: !2652)
!2652 = !DILexicalBlockFile(scope: !2646, file: !348, discriminator: 3)
!2653 = !DILocation(line: 696, column: 25, scope: !2517)
!2654 = !DILocation(line: 678, column: 17, scope: !2655)
!2655 = !DILexicalBlockFile(scope: !2518, file: !348, discriminator: 1)
!2656 = distinct !{!2656, !2657, !2658}
!2657 = !DILocation(line: 678, column: 17, scope: !2519)
!2658 = !DILocation(line: 697, column: 19, scope: !2519)
!2659 = !DILocation(line: 704, column: 34, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 704, column: 11)
!2661 = !DILocation(line: 706, column: 14, scope: !2660)
!2662 = !DILocation(line: 707, column: 14, scope: !2660)
!2663 = !DILocation(line: 707, column: 35, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2660, file: !348, discriminator: 1)
!2665 = !DILocation(line: 707, column: 17, scope: !2664)
!2666 = !DILocation(line: 707, column: 53, scope: !2664)
!2667 = !DILocation(line: 707, column: 47, scope: !2664)
!2668 = !DILocation(line: 707, column: 65, scope: !2664)
!2669 = !DILocation(line: 708, column: 15, scope: !2664)
!2670 = !DILocation(line: 708, column: 11, scope: !2660)
!2671 = !DILocation(line: 704, column: 11, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2064, file: !348, discriminator: 2)
!2673 = !DILocation(line: 712, column: 7, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2675, file: !348, discriminator: 1)
!2675 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 712, column: 7)
!2676 = !DILocation(line: 712, column: 7, scope: !2677)
!2677 = !DILexicalBlockFile(scope: !2678, file: !348, discriminator: 4)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !348, line: 712, column: 7)
!2679 = !DILocation(line: 712, column: 7, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2678, file: !348, discriminator: 3)
!2681 = !DILocation(line: 712, column: 7, scope: !2682)
!2682 = !DILexicalBlockFile(scope: !2683, file: !348, discriminator: 6)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !348, line: 712, column: 7)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !348, line: 712, column: 7)
!2685 = distinct !DILexicalBlock(scope: !2678, file: !348, line: 712, column: 7)
!2686 = !DILocation(line: 712, column: 7, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2684, file: !348, discriminator: 6)
!2688 = !DILocation(line: 712, column: 7, scope: !2689)
!2689 = !DILexicalBlockFile(scope: !2683, file: !348, discriminator: 7)
!2690 = !DILocation(line: 712, column: 7, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2684, file: !348, discriminator: 8)
!2692 = !DILocation(line: 712, column: 7, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2694, file: !348, discriminator: 11)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !348, line: 712, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2685, file: !348, line: 712, column: 7)
!2696 = !DILocation(line: 712, column: 7, scope: !2697)
!2697 = !DILexicalBlockFile(scope: !2695, file: !348, discriminator: 11)
!2698 = !DILocation(line: 712, column: 7, scope: !2699)
!2699 = !DILexicalBlockFile(scope: !2694, file: !348, discriminator: 12)
!2700 = !DILocation(line: 712, column: 7, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2695, file: !348, discriminator: 13)
!2702 = !DILocation(line: 712, column: 7, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2704, file: !348, discriminator: 16)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !348, line: 712, column: 7)
!2705 = distinct !DILexicalBlock(scope: !2685, file: !348, line: 712, column: 7)
!2706 = !DILocation(line: 712, column: 7, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2705, file: !348, discriminator: 16)
!2708 = !DILocation(line: 712, column: 7, scope: !2709)
!2709 = !DILexicalBlockFile(scope: !2704, file: !348, discriminator: 17)
!2710 = !DILocation(line: 712, column: 7, scope: !2711)
!2711 = !DILexicalBlockFile(scope: !2705, file: !348, discriminator: 18)
!2712 = !DILocation(line: 712, column: 7, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2685, file: !348, discriminator: 20)
!2714 = !DILocation(line: 712, column: 7, scope: !2715)
!2715 = !DILexicalBlockFile(scope: !2716, file: !348, discriminator: 22)
!2716 = distinct !DILexicalBlock(scope: !2717, file: !348, line: 712, column: 7)
!2717 = distinct !DILexicalBlock(scope: !2675, file: !348, line: 712, column: 7)
!2718 = !DILocation(line: 712, column: 7, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2717, file: !348, discriminator: 22)
!2720 = !DILocation(line: 712, column: 7, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2716, file: !348, discriminator: 23)
!2722 = !DILocation(line: 712, column: 7, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2717, file: !348, discriminator: 24)
!2724 = !DILocation(line: 715, column: 7, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2726, file: !348, discriminator: 1)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !348, line: 715, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 715, column: 7)
!2728 = !DILocation(line: 715, column: 7, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2726, file: !348, discriminator: 2)
!2730 = !DILocation(line: 715, column: 7, scope: !2731)
!2731 = !DILexicalBlockFile(scope: !2732, file: !348, discriminator: 4)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !348, line: 715, column: 7)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !348, line: 715, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2726, file: !348, line: 715, column: 7)
!2735 = !DILocation(line: 715, column: 7, scope: !2736)
!2736 = !DILexicalBlockFile(scope: !2733, file: !348, discriminator: 4)
!2737 = !DILocation(line: 715, column: 7, scope: !2738)
!2738 = !DILexicalBlockFile(scope: !2732, file: !348, discriminator: 5)
!2739 = !DILocation(line: 715, column: 7, scope: !2740)
!2740 = !DILexicalBlockFile(scope: !2733, file: !348, discriminator: 6)
!2741 = !DILocation(line: 715, column: 7, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2743, file: !348, discriminator: 9)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !348, line: 715, column: 7)
!2744 = distinct !DILexicalBlock(scope: !2734, file: !348, line: 715, column: 7)
!2745 = !DILocation(line: 715, column: 7, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2744, file: !348, discriminator: 9)
!2747 = !DILocation(line: 715, column: 7, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2743, file: !348, discriminator: 10)
!2749 = !DILocation(line: 715, column: 7, scope: !2750)
!2750 = !DILexicalBlockFile(scope: !2744, file: !348, discriminator: 11)
!2751 = !DILocation(line: 715, column: 7, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2734, file: !348, discriminator: 13)
!2753 = !DILocation(line: 716, column: 7, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2755, file: !348, discriminator: 1)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !348, line: 716, column: 7)
!2756 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 716, column: 7)
!2757 = !DILocation(line: 716, column: 7, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2756, file: !348, discriminator: 1)
!2759 = !DILocation(line: 716, column: 7, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2755, file: !348, discriminator: 2)
!2761 = !DILocation(line: 716, column: 7, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2756, file: !348, discriminator: 3)
!2763 = !DILocation(line: 718, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2064, file: !348, line: 718, column: 11)
!2765 = !DILocation(line: 718, column: 11, scope: !2064)
!2766 = !DILocation(line: 720, column: 5, scope: !2065)
!2767 = !DILocation(line: 392, column: 75, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2065, file: !348, discriminator: 5)
!2769 = !DILocation(line: 392, column: 3, scope: !2768)
!2770 = distinct !{!2770, !2771, !2772}
!2771 = !DILocation(line: 392, column: 3, scope: !2066)
!2772 = !DILocation(line: 720, column: 5, scope: !2066)
!2773 = !DILocation(line: 722, column: 11, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 722, column: 7)
!2775 = !DILocation(line: 722, column: 16, scope: !2774)
!2776 = !DILocation(line: 730, column: 51, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 730, column: 7)
!2778 = !DILocation(line: 731, column: 10, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2777, file: !348, discriminator: 1)
!2780 = !DILocation(line: 733, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !348, line: 733, column: 11)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !348, line: 732, column: 5)
!2783 = !DILocation(line: 733, column: 11, scope: !2782)
!2784 = !DILocation(line: 734, column: 16, scope: !2781)
!2785 = !DILocation(line: 734, column: 9, scope: !2781)
!2786 = !DILocation(line: 738, column: 18, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2781, file: !348, line: 738, column: 16)
!2788 = !DILocation(line: 738, column: 32, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2787, file: !348, discriminator: 1)
!2790 = !DILocation(line: 738, column: 29, scope: !2787)
!2791 = !DILocation(line: 747, column: 7, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 747, column: 7)
!2793 = !DILocation(line: 747, column: 20, scope: !2792)
!2794 = !DILocation(line: 748, column: 12, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2796, file: !348, discriminator: 1)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !348, line: 748, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2792, file: !348, line: 748, column: 5)
!2798 = !DILocation(line: 748, column: 5, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2797, file: !348, discriminator: 1)
!2800 = !DILocation(line: 749, column: 7, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2802, file: !348, discriminator: 1)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !348, line: 749, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !348, line: 749, column: 7)
!2804 = !DILocation(line: 749, column: 7, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2803, file: !348, discriminator: 1)
!2806 = !DILocation(line: 749, column: 7, scope: !2807)
!2807 = !DILexicalBlockFile(scope: !2802, file: !348, discriminator: 2)
!2808 = !DILocation(line: 749, column: 7, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2803, file: !348, discriminator: 3)
!2810 = !DILocation(line: 748, column: 39, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2796, file: !348, discriminator: 2)
!2812 = distinct !{!2812, !2813, !2814}
!2813 = !DILocation(line: 748, column: 5, scope: !2797)
!2814 = !DILocation(line: 749, column: 7, scope: !2797)
!2815 = !DILocation(line: 751, column: 11, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 751, column: 7)
!2817 = !DILocation(line: 751, column: 7, scope: !2037)
!2818 = !DILocation(line: 752, column: 5, scope: !2816)
!2819 = !DILocation(line: 752, column: 17, scope: !2816)
!2820 = !DILocation(line: 758, column: 21, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2037, file: !348, line: 758, column: 7)
!2822 = !DILocation(line: 758, column: 54, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !2821, file: !348, discriminator: 1)
!2824 = !DILocation(line: 758, column: 51, scope: !2821)
!2825 = !DILocation(line: 762, column: 42, scope: !2037)
!2826 = !DILocation(line: 760, column: 10, scope: !2037)
!2827 = !DILocation(line: 760, column: 3, scope: !2037)
!2828 = !DILocation(line: 764, column: 1, scope: !2037)
!2829 = distinct !DISubprogram(name: "gettext_quote", scope: !348, file: !348, line: 199, type: !2830, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!78, !78, !212}
!2832 = !{!2833, !2834, !2835, !2836}
!2833 = !DILocalVariable(name: "msgid", arg: 1, scope: !2829, file: !348, line: 199, type: !78)
!2834 = !DILocalVariable(name: "s", arg: 2, scope: !2829, file: !348, line: 199, type: !212)
!2835 = !DILocalVariable(name: "translation", scope: !2829, file: !348, line: 201, type: !78)
!2836 = !DILocalVariable(name: "locale_code", scope: !2829, file: !348, line: 202, type: !78)
!2837 = !DILocation(line: 199, column: 28, scope: !2829)
!2838 = !DILocation(line: 199, column: 54, scope: !2829)
!2839 = !DILocation(line: 201, column: 29, scope: !2829)
!2840 = !DILocation(line: 201, column: 15, scope: !2829)
!2841 = !DILocation(line: 204, column: 19, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2829, file: !348, line: 204, column: 7)
!2843 = !DILocation(line: 204, column: 7, scope: !2829)
!2844 = !DILocation(line: 225, column: 17, scope: !2829)
!2845 = !DILocation(line: 202, column: 15, scope: !2829)
!2846 = !DILocalVariable(name: "s2", arg: 2, scope: !2847, file: !2848, line: 160, type: !78)
!2847 = distinct !DISubprogram(name: "strcaseeq0", scope: !2848, file: !2848, line: 160, type: !2849, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2851)
!2848 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25, !25, !25}
!2851 = !{!2852, !2846, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861}
!2852 = !DILocalVariable(name: "s1", arg: 1, scope: !2847, file: !2848, line: 160, type: !78)
!2853 = !DILocalVariable(name: "s20", arg: 3, scope: !2847, file: !2848, line: 160, type: !25)
!2854 = !DILocalVariable(name: "s21", arg: 4, scope: !2847, file: !2848, line: 160, type: !25)
!2855 = !DILocalVariable(name: "s22", arg: 5, scope: !2847, file: !2848, line: 160, type: !25)
!2856 = !DILocalVariable(name: "s23", arg: 6, scope: !2847, file: !2848, line: 160, type: !25)
!2857 = !DILocalVariable(name: "s24", arg: 7, scope: !2847, file: !2848, line: 160, type: !25)
!2858 = !DILocalVariable(name: "s25", arg: 8, scope: !2847, file: !2848, line: 160, type: !25)
!2859 = !DILocalVariable(name: "s26", arg: 9, scope: !2847, file: !2848, line: 160, type: !25)
!2860 = !DILocalVariable(name: "s27", arg: 10, scope: !2847, file: !2848, line: 160, type: !25)
!2861 = !DILocalVariable(name: "s28", arg: 11, scope: !2847, file: !2848, line: 160, type: !25)
!2862 = !DILocation(line: 160, column: 41, scope: !2847, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 226, column: 7, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2829, file: !348, line: 226, column: 7)
!2865 = !DILocation(line: 160, column: 120, scope: !2847, inlinedAt: !2863)
!2866 = !DILocation(line: 160, column: 130, scope: !2847, inlinedAt: !2863)
!2867 = !DILocation(line: 162, column: 7, scope: !2868, inlinedAt: !2863)
!2868 = !DILexicalBlockFile(scope: !2869, file: !2848, discriminator: 1)
!2869 = distinct !DILexicalBlock(scope: !2847, file: !2848, line: 162, column: 7)
!2870 = !DILocalVariable(name: "s2", arg: 2, scope: !2871, file: !2848, line: 146, type: !78)
!2871 = distinct !DISubprogram(name: "strcaseeq1", scope: !2848, file: !2848, line: 146, type: !2872, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25, !25}
!2874 = !{!2875, !2870, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2875 = !DILocalVariable(name: "s1", arg: 1, scope: !2871, file: !2848, line: 146, type: !78)
!2876 = !DILocalVariable(name: "s21", arg: 3, scope: !2871, file: !2848, line: 146, type: !25)
!2877 = !DILocalVariable(name: "s22", arg: 4, scope: !2871, file: !2848, line: 146, type: !25)
!2878 = !DILocalVariable(name: "s23", arg: 5, scope: !2871, file: !2848, line: 146, type: !25)
!2879 = !DILocalVariable(name: "s24", arg: 6, scope: !2871, file: !2848, line: 146, type: !25)
!2880 = !DILocalVariable(name: "s25", arg: 7, scope: !2871, file: !2848, line: 146, type: !25)
!2881 = !DILocalVariable(name: "s26", arg: 8, scope: !2871, file: !2848, line: 146, type: !25)
!2882 = !DILocalVariable(name: "s27", arg: 9, scope: !2871, file: !2848, line: 146, type: !25)
!2883 = !DILocalVariable(name: "s28", arg: 10, scope: !2871, file: !2848, line: 146, type: !25)
!2884 = !DILocation(line: 146, column: 41, scope: !2871, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 167, column: 16, scope: !2886, inlinedAt: !2863)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !2848, line: 164, column: 11)
!2887 = distinct !DILexicalBlock(scope: !2869, file: !2848, line: 163, column: 5)
!2888 = !DILocation(line: 146, column: 110, scope: !2871, inlinedAt: !2885)
!2889 = !DILocation(line: 146, column: 120, scope: !2871, inlinedAt: !2885)
!2890 = !DILocation(line: 148, column: 7, scope: !2891, inlinedAt: !2885)
!2891 = !DILexicalBlockFile(scope: !2892, file: !2848, discriminator: 1)
!2892 = distinct !DILexicalBlock(scope: !2871, file: !2848, line: 148, column: 7)
!2893 = !DILocalVariable(name: "s2", arg: 2, scope: !2894, file: !2848, line: 132, type: !78)
!2894 = distinct !DISubprogram(name: "strcaseeq2", scope: !2848, file: !2848, line: 132, type: !2895, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25, !25}
!2897 = !{!2898, !2893, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2898 = !DILocalVariable(name: "s1", arg: 1, scope: !2894, file: !2848, line: 132, type: !78)
!2899 = !DILocalVariable(name: "s22", arg: 3, scope: !2894, file: !2848, line: 132, type: !25)
!2900 = !DILocalVariable(name: "s23", arg: 4, scope: !2894, file: !2848, line: 132, type: !25)
!2901 = !DILocalVariable(name: "s24", arg: 5, scope: !2894, file: !2848, line: 132, type: !25)
!2902 = !DILocalVariable(name: "s25", arg: 6, scope: !2894, file: !2848, line: 132, type: !25)
!2903 = !DILocalVariable(name: "s26", arg: 7, scope: !2894, file: !2848, line: 132, type: !25)
!2904 = !DILocalVariable(name: "s27", arg: 8, scope: !2894, file: !2848, line: 132, type: !25)
!2905 = !DILocalVariable(name: "s28", arg: 9, scope: !2894, file: !2848, line: 132, type: !25)
!2906 = !DILocation(line: 132, column: 41, scope: !2894, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 153, column: 16, scope: !2908, inlinedAt: !2885)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !2848, line: 150, column: 11)
!2909 = distinct !DILexicalBlock(scope: !2892, file: !2848, line: 149, column: 5)
!2910 = !DILocation(line: 132, column: 100, scope: !2894, inlinedAt: !2907)
!2911 = !DILocation(line: 132, column: 110, scope: !2894, inlinedAt: !2907)
!2912 = !DILocation(line: 134, column: 7, scope: !2913, inlinedAt: !2907)
!2913 = !DILexicalBlockFile(scope: !2914, file: !2848, discriminator: 1)
!2914 = distinct !DILexicalBlock(scope: !2894, file: !2848, line: 134, column: 7)
!2915 = !DILocalVariable(name: "s2", arg: 2, scope: !2916, file: !2848, line: 118, type: !78)
!2916 = distinct !DISubprogram(name: "strcaseeq3", scope: !2848, file: !2848, line: 118, type: !2917, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!22, !78, !78, !25, !25, !25, !25, !25, !25}
!2919 = !{!2920, !2915, !2921, !2922, !2923, !2924, !2925, !2926}
!2920 = !DILocalVariable(name: "s1", arg: 1, scope: !2916, file: !2848, line: 118, type: !78)
!2921 = !DILocalVariable(name: "s23", arg: 3, scope: !2916, file: !2848, line: 118, type: !25)
!2922 = !DILocalVariable(name: "s24", arg: 4, scope: !2916, file: !2848, line: 118, type: !25)
!2923 = !DILocalVariable(name: "s25", arg: 5, scope: !2916, file: !2848, line: 118, type: !25)
!2924 = !DILocalVariable(name: "s26", arg: 6, scope: !2916, file: !2848, line: 118, type: !25)
!2925 = !DILocalVariable(name: "s27", arg: 7, scope: !2916, file: !2848, line: 118, type: !25)
!2926 = !DILocalVariable(name: "s28", arg: 8, scope: !2916, file: !2848, line: 118, type: !25)
!2927 = !DILocation(line: 118, column: 41, scope: !2916, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 139, column: 16, scope: !2929, inlinedAt: !2907)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !2848, line: 136, column: 11)
!2930 = distinct !DILexicalBlock(scope: !2914, file: !2848, line: 135, column: 5)
!2931 = !DILocation(line: 118, column: 90, scope: !2916, inlinedAt: !2928)
!2932 = !DILocation(line: 118, column: 100, scope: !2916, inlinedAt: !2928)
!2933 = !DILocation(line: 120, column: 7, scope: !2934, inlinedAt: !2928)
!2934 = !DILexicalBlockFile(scope: !2935, file: !2848, discriminator: 2)
!2935 = distinct !DILexicalBlock(scope: !2916, file: !2848, line: 120, column: 7)
!2936 = !DILocation(line: 120, column: 7, scope: !2937, inlinedAt: !2928)
!2937 = !DILexicalBlockFile(scope: !2916, file: !2848, discriminator: 2)
!2938 = !DILocalVariable(name: "s2", arg: 2, scope: !2939, file: !2848, line: 104, type: !78)
!2939 = distinct !DISubprogram(name: "strcaseeq4", scope: !2848, file: !2848, line: 104, type: !2940, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!22, !78, !78, !25, !25, !25, !25, !25}
!2942 = !{!2943, !2938, !2944, !2945, !2946, !2947, !2948}
!2943 = !DILocalVariable(name: "s1", arg: 1, scope: !2939, file: !2848, line: 104, type: !78)
!2944 = !DILocalVariable(name: "s24", arg: 3, scope: !2939, file: !2848, line: 104, type: !25)
!2945 = !DILocalVariable(name: "s25", arg: 4, scope: !2939, file: !2848, line: 104, type: !25)
!2946 = !DILocalVariable(name: "s26", arg: 5, scope: !2939, file: !2848, line: 104, type: !25)
!2947 = !DILocalVariable(name: "s27", arg: 6, scope: !2939, file: !2848, line: 104, type: !25)
!2948 = !DILocalVariable(name: "s28", arg: 7, scope: !2939, file: !2848, line: 104, type: !25)
!2949 = !DILocation(line: 104, column: 41, scope: !2939, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 125, column: 16, scope: !2951, inlinedAt: !2928)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2848, line: 122, column: 11)
!2952 = distinct !DILexicalBlock(scope: !2935, file: !2848, line: 121, column: 5)
!2953 = !DILocation(line: 104, column: 80, scope: !2939, inlinedAt: !2950)
!2954 = !DILocation(line: 104, column: 90, scope: !2939, inlinedAt: !2950)
!2955 = !DILocation(line: 106, column: 7, scope: !2956, inlinedAt: !2950)
!2956 = !DILexicalBlockFile(scope: !2957, file: !2848, discriminator: 2)
!2957 = distinct !DILexicalBlock(scope: !2939, file: !2848, line: 106, column: 7)
!2958 = !DILocation(line: 106, column: 7, scope: !2959, inlinedAt: !2950)
!2959 = !DILexicalBlockFile(scope: !2939, file: !2848, discriminator: 2)
!2960 = !DILocalVariable(name: "s2", arg: 2, scope: !2961, file: !2848, line: 90, type: !78)
!2961 = distinct !DISubprogram(name: "strcaseeq5", scope: !2848, file: !2848, line: 90, type: !2962, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!22, !78, !78, !25, !25, !25, !25}
!2964 = !{!2965, !2960, !2966, !2967, !2968, !2969}
!2965 = !DILocalVariable(name: "s1", arg: 1, scope: !2961, file: !2848, line: 90, type: !78)
!2966 = !DILocalVariable(name: "s25", arg: 3, scope: !2961, file: !2848, line: 90, type: !25)
!2967 = !DILocalVariable(name: "s26", arg: 4, scope: !2961, file: !2848, line: 90, type: !25)
!2968 = !DILocalVariable(name: "s27", arg: 5, scope: !2961, file: !2848, line: 90, type: !25)
!2969 = !DILocalVariable(name: "s28", arg: 6, scope: !2961, file: !2848, line: 90, type: !25)
!2970 = !DILocation(line: 90, column: 41, scope: !2961, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 111, column: 16, scope: !2972, inlinedAt: !2950)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !2848, line: 108, column: 11)
!2973 = distinct !DILexicalBlock(scope: !2957, file: !2848, line: 107, column: 5)
!2974 = !DILocation(line: 90, column: 70, scope: !2961, inlinedAt: !2971)
!2975 = !DILocation(line: 90, column: 80, scope: !2961, inlinedAt: !2971)
!2976 = !DILocation(line: 92, column: 7, scope: !2977, inlinedAt: !2971)
!2977 = !DILexicalBlockFile(scope: !2978, file: !2848, discriminator: 2)
!2978 = distinct !DILexicalBlock(scope: !2961, file: !2848, line: 92, column: 7)
!2979 = !DILocation(line: 92, column: 7, scope: !2980, inlinedAt: !2971)
!2980 = !DILexicalBlockFile(scope: !2961, file: !2848, discriminator: 2)
!2981 = !DILocation(line: 227, column: 12, scope: !2864)
!2982 = !DILocation(line: 227, column: 21, scope: !2864)
!2983 = !DILocation(line: 227, column: 5, scope: !2864)
!2984 = !DILocation(line: 146, column: 41, scope: !2871, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 167, column: 16, scope: !2886, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 228, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2829, file: !348, line: 228, column: 7)
!2988 = !DILocation(line: 146, column: 110, scope: !2871, inlinedAt: !2985)
!2989 = !DILocation(line: 146, column: 120, scope: !2871, inlinedAt: !2985)
!2990 = !DILocation(line: 148, column: 7, scope: !2891, inlinedAt: !2985)
!2991 = !DILocation(line: 132, column: 41, scope: !2894, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 153, column: 16, scope: !2908, inlinedAt: !2985)
!2993 = !DILocation(line: 132, column: 100, scope: !2894, inlinedAt: !2992)
!2994 = !DILocation(line: 132, column: 110, scope: !2894, inlinedAt: !2992)
!2995 = !DILocation(line: 134, column: 7, scope: !2996, inlinedAt: !2992)
!2996 = !DILexicalBlockFile(scope: !2914, file: !2848, discriminator: 2)
!2997 = !DILocation(line: 134, column: 7, scope: !2998, inlinedAt: !2992)
!2998 = !DILexicalBlockFile(scope: !2894, file: !2848, discriminator: 2)
!2999 = !DILocation(line: 118, column: 41, scope: !2916, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 139, column: 16, scope: !2929, inlinedAt: !2992)
!3001 = !DILocation(line: 118, column: 90, scope: !2916, inlinedAt: !3000)
!3002 = !DILocation(line: 118, column: 100, scope: !2916, inlinedAt: !3000)
!3003 = !DILocation(line: 120, column: 7, scope: !2934, inlinedAt: !3000)
!3004 = !DILocation(line: 120, column: 7, scope: !2937, inlinedAt: !3000)
!3005 = !DILocation(line: 104, column: 41, scope: !2939, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 125, column: 16, scope: !2951, inlinedAt: !3000)
!3007 = !DILocation(line: 104, column: 80, scope: !2939, inlinedAt: !3006)
!3008 = !DILocation(line: 104, column: 90, scope: !2939, inlinedAt: !3006)
!3009 = !DILocation(line: 106, column: 7, scope: !2956, inlinedAt: !3006)
!3010 = !DILocation(line: 106, column: 7, scope: !2959, inlinedAt: !3006)
!3011 = !DILocation(line: 90, column: 41, scope: !2961, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 111, column: 16, scope: !2972, inlinedAt: !3006)
!3013 = !DILocation(line: 90, column: 70, scope: !2961, inlinedAt: !3012)
!3014 = !DILocation(line: 90, column: 80, scope: !2961, inlinedAt: !3012)
!3015 = !DILocation(line: 92, column: 7, scope: !2977, inlinedAt: !3012)
!3016 = !DILocation(line: 92, column: 7, scope: !2980, inlinedAt: !3012)
!3017 = !DILocalVariable(name: "s2", arg: 2, scope: !3018, file: !2848, line: 76, type: !78)
!3018 = distinct !DISubprogram(name: "strcaseeq6", scope: !2848, file: !2848, line: 76, type: !3019, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!22, !78, !78, !25, !25, !25}
!3021 = !{!3022, !3017, !3023, !3024, !3025}
!3022 = !DILocalVariable(name: "s1", arg: 1, scope: !3018, file: !2848, line: 76, type: !78)
!3023 = !DILocalVariable(name: "s26", arg: 3, scope: !3018, file: !2848, line: 76, type: !25)
!3024 = !DILocalVariable(name: "s27", arg: 4, scope: !3018, file: !2848, line: 76, type: !25)
!3025 = !DILocalVariable(name: "s28", arg: 5, scope: !3018, file: !2848, line: 76, type: !25)
!3026 = !DILocation(line: 76, column: 41, scope: !3018, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 97, column: 16, scope: !3028, inlinedAt: !3012)
!3028 = distinct !DILexicalBlock(scope: !3029, file: !2848, line: 94, column: 11)
!3029 = distinct !DILexicalBlock(scope: !2978, file: !2848, line: 93, column: 5)
!3030 = !DILocation(line: 76, column: 60, scope: !3018, inlinedAt: !3027)
!3031 = !DILocation(line: 76, column: 70, scope: !3018, inlinedAt: !3027)
!3032 = !DILocation(line: 78, column: 7, scope: !3033, inlinedAt: !3027)
!3033 = !DILexicalBlockFile(scope: !3034, file: !2848, discriminator: 2)
!3034 = distinct !DILexicalBlock(scope: !3018, file: !2848, line: 78, column: 7)
!3035 = !DILocation(line: 78, column: 7, scope: !3036, inlinedAt: !3027)
!3036 = !DILexicalBlockFile(scope: !3018, file: !2848, discriminator: 2)
!3037 = !DILocalVariable(name: "s2", arg: 2, scope: !3038, file: !2848, line: 62, type: !78)
!3038 = distinct !DISubprogram(name: "strcaseeq7", scope: !2848, file: !2848, line: 62, type: !3039, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!22, !78, !78, !25, !25}
!3041 = !{!3042, !3037, !3043, !3044}
!3042 = !DILocalVariable(name: "s1", arg: 1, scope: !3038, file: !2848, line: 62, type: !78)
!3043 = !DILocalVariable(name: "s27", arg: 3, scope: !3038, file: !2848, line: 62, type: !25)
!3044 = !DILocalVariable(name: "s28", arg: 4, scope: !3038, file: !2848, line: 62, type: !25)
!3045 = !DILocation(line: 62, column: 41, scope: !3038, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 83, column: 16, scope: !3047, inlinedAt: !3027)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !2848, line: 80, column: 11)
!3048 = distinct !DILexicalBlock(scope: !3034, file: !2848, line: 79, column: 5)
!3049 = !DILocation(line: 62, column: 50, scope: !3038, inlinedAt: !3046)
!3050 = !DILocation(line: 62, column: 60, scope: !3038, inlinedAt: !3046)
!3051 = !DILocation(line: 64, column: 7, scope: !3052, inlinedAt: !3046)
!3052 = !DILexicalBlockFile(scope: !3053, file: !2848, discriminator: 2)
!3053 = distinct !DILexicalBlock(scope: !3038, file: !2848, line: 64, column: 7)
!3054 = !DILocation(line: 228, column: 7, scope: !2829)
!3055 = !DILocation(line: 229, column: 12, scope: !2987)
!3056 = !DILocation(line: 229, column: 21, scope: !2987)
!3057 = !DILocation(line: 229, column: 5, scope: !2987)
!3058 = !DILocation(line: 231, column: 13, scope: !2829)
!3059 = !DILocation(line: 231, column: 11, scope: !2829)
!3060 = !DILocation(line: 231, column: 3, scope: !2829)
!3061 = !DILocation(line: 232, column: 1, scope: !2829)
!3062 = distinct !DISubprogram(name: "quotearg_alloc", scope: !348, file: !348, line: 791, type: !3063, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!24, !78, !70, !1905}
!3065 = !{!3066, !3067, !3068}
!3066 = !DILocalVariable(name: "arg", arg: 1, scope: !3062, file: !348, line: 791, type: !78)
!3067 = !DILocalVariable(name: "argsize", arg: 2, scope: !3062, file: !348, line: 791, type: !70)
!3068 = !DILocalVariable(name: "o", arg: 3, scope: !3062, file: !348, line: 792, type: !1905)
!3069 = !DILocation(line: 791, column: 29, scope: !3062)
!3070 = !DILocation(line: 791, column: 41, scope: !3062)
!3071 = !DILocation(line: 792, column: 47, scope: !3062)
!3072 = !DILocalVariable(name: "arg", arg: 1, scope: !3073, file: !348, line: 804, type: !78)
!3073 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !348, file: !348, line: 804, type: !3074, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!24, !78, !70, !775, !1905}
!3076 = !{!3072, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084}
!3077 = !DILocalVariable(name: "argsize", arg: 2, scope: !3073, file: !348, line: 804, type: !70)
!3078 = !DILocalVariable(name: "size", arg: 3, scope: !3073, file: !348, line: 804, type: !775)
!3079 = !DILocalVariable(name: "o", arg: 4, scope: !3073, file: !348, line: 805, type: !1905)
!3080 = !DILocalVariable(name: "p", scope: !3073, file: !348, line: 807, type: !1905)
!3081 = !DILocalVariable(name: "e", scope: !3073, file: !348, line: 808, type: !22)
!3082 = !DILocalVariable(name: "flags", scope: !3073, file: !348, line: 810, type: !22)
!3083 = !DILocalVariable(name: "bufsize", scope: !3073, file: !348, line: 811, type: !70)
!3084 = !DILocalVariable(name: "buf", scope: !3073, file: !348, line: 815, type: !24)
!3085 = !DILocation(line: 804, column: 33, scope: !3073, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 794, column: 10, scope: !3062)
!3087 = !DILocation(line: 804, column: 45, scope: !3073, inlinedAt: !3086)
!3088 = !DILocation(line: 804, column: 62, scope: !3073, inlinedAt: !3086)
!3089 = !DILocation(line: 805, column: 51, scope: !3073, inlinedAt: !3086)
!3090 = !DILocation(line: 807, column: 37, scope: !3073, inlinedAt: !3086)
!3091 = !DILocation(line: 807, column: 33, scope: !3073, inlinedAt: !3086)
!3092 = !DILocation(line: 808, column: 11, scope: !3073, inlinedAt: !3086)
!3093 = !DILocation(line: 808, column: 7, scope: !3073, inlinedAt: !3086)
!3094 = !DILocation(line: 810, column: 18, scope: !3073, inlinedAt: !3086)
!3095 = !DILocation(line: 810, column: 24, scope: !3073, inlinedAt: !3086)
!3096 = !DILocation(line: 810, column: 7, scope: !3073, inlinedAt: !3086)
!3097 = !DILocation(line: 811, column: 69, scope: !3073, inlinedAt: !3086)
!3098 = !DILocation(line: 812, column: 53, scope: !3073, inlinedAt: !3086)
!3099 = !DILocation(line: 813, column: 49, scope: !3073, inlinedAt: !3086)
!3100 = !DILocation(line: 814, column: 49, scope: !3073, inlinedAt: !3086)
!3101 = !DILocation(line: 811, column: 20, scope: !3073, inlinedAt: !3086)
!3102 = !DILocation(line: 814, column: 62, scope: !3073, inlinedAt: !3086)
!3103 = !DILocation(line: 811, column: 10, scope: !3073, inlinedAt: !3086)
!3104 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !771, line: 220, type: !70)
!3105 = distinct !DISubprogram(name: "xcharalloc", scope: !771, file: !771, line: 220, type: !3106, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!24, !70}
!3108 = !{!3104}
!3109 = !DILocation(line: 220, column: 20, scope: !3105, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 815, column: 15, scope: !3073, inlinedAt: !3086)
!3111 = !DILocation(line: 222, column: 10, scope: !3105, inlinedAt: !3110)
!3112 = !DILocation(line: 815, column: 9, scope: !3073, inlinedAt: !3086)
!3113 = !DILocation(line: 816, column: 60, scope: !3073, inlinedAt: !3086)
!3114 = !DILocation(line: 818, column: 32, scope: !3073, inlinedAt: !3086)
!3115 = !DILocation(line: 818, column: 47, scope: !3073, inlinedAt: !3086)
!3116 = !DILocation(line: 816, column: 3, scope: !3073, inlinedAt: !3086)
!3117 = !DILocation(line: 819, column: 9, scope: !3073, inlinedAt: !3086)
!3118 = !DILocation(line: 794, column: 3, scope: !3062)
!3119 = !DILocation(line: 804, column: 33, scope: !3073)
!3120 = !DILocation(line: 804, column: 45, scope: !3073)
!3121 = !DILocation(line: 804, column: 62, scope: !3073)
!3122 = !DILocation(line: 805, column: 51, scope: !3073)
!3123 = !DILocation(line: 807, column: 37, scope: !3073)
!3124 = !DILocation(line: 807, column: 33, scope: !3073)
!3125 = !DILocation(line: 808, column: 11, scope: !3073)
!3126 = !DILocation(line: 808, column: 7, scope: !3073)
!3127 = !DILocation(line: 810, column: 18, scope: !3073)
!3128 = !DILocation(line: 810, column: 27, scope: !3073)
!3129 = !DILocation(line: 810, column: 24, scope: !3073)
!3130 = !DILocation(line: 810, column: 7, scope: !3073)
!3131 = !DILocation(line: 811, column: 69, scope: !3073)
!3132 = !DILocation(line: 812, column: 53, scope: !3073)
!3133 = !DILocation(line: 813, column: 49, scope: !3073)
!3134 = !DILocation(line: 814, column: 49, scope: !3073)
!3135 = !DILocation(line: 811, column: 20, scope: !3073)
!3136 = !DILocation(line: 814, column: 62, scope: !3073)
!3137 = !DILocation(line: 811, column: 10, scope: !3073)
!3138 = !DILocation(line: 220, column: 20, scope: !3105, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 815, column: 15, scope: !3073)
!3140 = !DILocation(line: 222, column: 10, scope: !3105, inlinedAt: !3139)
!3141 = !DILocation(line: 815, column: 9, scope: !3073)
!3142 = !DILocation(line: 816, column: 60, scope: !3073)
!3143 = !DILocation(line: 818, column: 32, scope: !3073)
!3144 = !DILocation(line: 818, column: 47, scope: !3073)
!3145 = !DILocation(line: 816, column: 3, scope: !3073)
!3146 = !DILocation(line: 819, column: 9, scope: !3073)
!3147 = !DILocation(line: 820, column: 7, scope: !3073)
!3148 = !DILocation(line: 821, column: 11, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3073, file: !348, line: 820, column: 7)
!3150 = !DILocation(line: 821, column: 5, scope: !3149)
!3151 = !DILocation(line: 822, column: 3, scope: !3073)
!3152 = distinct !DISubprogram(name: "quotearg_free", scope: !348, file: !348, line: 840, type: !401, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3153)
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "sv", scope: !3152, file: !348, line: 842, type: !372)
!3155 = !DILocalVariable(name: "i", scope: !3152, file: !348, line: 843, type: !22)
!3156 = !DILocation(line: 842, column: 24, scope: !3152)
!3157 = !DILocation(line: 842, column: 19, scope: !3152)
!3158 = !DILocation(line: 843, column: 7, scope: !3152)
!3159 = !DILocation(line: 844, column: 19, scope: !3160)
!3160 = !DILexicalBlockFile(scope: !3161, file: !348, discriminator: 1)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !348, line: 844, column: 3)
!3162 = distinct !DILexicalBlock(scope: !3152, file: !348, line: 844, column: 3)
!3163 = !DILocation(line: 844, column: 17, scope: !3160)
!3164 = !DILocation(line: 844, column: 3, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3162, file: !348, discriminator: 1)
!3166 = !DILocation(line: 845, column: 17, scope: !3161)
!3167 = !{!3168, !825, i64 8}
!3168 = !{!"slotvec", !1109, i64 0, !825, i64 8}
!3169 = !DILocation(line: 845, column: 5, scope: !3161)
!3170 = !DILocation(line: 844, column: 28, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3161, file: !348, discriminator: 2)
!3172 = distinct !{!3172, !3173, !3174}
!3173 = !DILocation(line: 844, column: 3, scope: !3162)
!3174 = !DILocation(line: 845, column: 20, scope: !3162)
!3175 = !DILocation(line: 846, column: 13, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3152, file: !348, line: 846, column: 7)
!3177 = !DILocation(line: 846, column: 17, scope: !3176)
!3178 = !DILocation(line: 846, column: 7, scope: !3152)
!3179 = !DILocation(line: 848, column: 7, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !348, line: 847, column: 5)
!3181 = !DILocation(line: 849, column: 21, scope: !3180)
!3182 = !{!3168, !1109, i64 0}
!3183 = !DILocation(line: 850, column: 20, scope: !3180)
!3184 = !DILocation(line: 851, column: 5, scope: !3180)
!3185 = !DILocation(line: 852, column: 10, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3152, file: !348, line: 852, column: 7)
!3187 = !DILocation(line: 852, column: 7, scope: !3152)
!3188 = !DILocation(line: 854, column: 13, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3186, file: !348, line: 853, column: 5)
!3190 = !DILocation(line: 854, column: 7, scope: !3189)
!3191 = !DILocation(line: 855, column: 15, scope: !3189)
!3192 = !DILocation(line: 856, column: 5, scope: !3189)
!3193 = !DILocation(line: 857, column: 10, scope: !3152)
!3194 = !DILocation(line: 858, column: 1, scope: !3152)
!3195 = distinct !DISubprogram(name: "quotearg_n", scope: !348, file: !348, line: 922, type: !3196, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!24, !22, !78}
!3198 = !{!3199, !3200}
!3199 = !DILocalVariable(name: "n", arg: 1, scope: !3195, file: !348, line: 922, type: !22)
!3200 = !DILocalVariable(name: "arg", arg: 2, scope: !3195, file: !348, line: 922, type: !78)
!3201 = !DILocation(line: 922, column: 17, scope: !3195)
!3202 = !DILocation(line: 922, column: 32, scope: !3195)
!3203 = !DILocation(line: 924, column: 10, scope: !3195)
!3204 = !DILocation(line: 924, column: 3, scope: !3195)
!3205 = distinct !DISubprogram(name: "quotearg_n_options", scope: !348, file: !348, line: 869, type: !3206, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!24, !22, !78, !70, !1905}
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3218, !3220, !3221, !3222}
!3209 = !DILocalVariable(name: "n", arg: 1, scope: !3205, file: !348, line: 869, type: !22)
!3210 = !DILocalVariable(name: "arg", arg: 2, scope: !3205, file: !348, line: 869, type: !78)
!3211 = !DILocalVariable(name: "argsize", arg: 3, scope: !3205, file: !348, line: 869, type: !70)
!3212 = !DILocalVariable(name: "options", arg: 4, scope: !3205, file: !348, line: 870, type: !1905)
!3213 = !DILocalVariable(name: "e", scope: !3205, file: !348, line: 872, type: !22)
!3214 = !DILocalVariable(name: "sv", scope: !3205, file: !348, line: 874, type: !372)
!3215 = !DILocalVariable(name: "preallocated", scope: !3216, file: !348, line: 881, type: !14)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !348, line: 880, column: 5)
!3217 = distinct !DILexicalBlock(scope: !3205, file: !348, line: 879, column: 7)
!3218 = !DILocalVariable(name: "size", scope: !3219, file: !348, line: 894, type: !70)
!3219 = distinct !DILexicalBlock(scope: !3205, file: !348, line: 893, column: 3)
!3220 = !DILocalVariable(name: "val", scope: !3219, file: !348, line: 895, type: !24)
!3221 = !DILocalVariable(name: "flags", scope: !3219, file: !348, line: 897, type: !22)
!3222 = !DILocalVariable(name: "qsize", scope: !3219, file: !348, line: 898, type: !70)
!3223 = !DILocation(line: 869, column: 25, scope: !3205)
!3224 = !DILocation(line: 869, column: 40, scope: !3205)
!3225 = !DILocation(line: 869, column: 52, scope: !3205)
!3226 = !DILocation(line: 870, column: 51, scope: !3205)
!3227 = !DILocation(line: 872, column: 11, scope: !3205)
!3228 = !DILocation(line: 872, column: 7, scope: !3205)
!3229 = !DILocation(line: 874, column: 24, scope: !3205)
!3230 = !DILocation(line: 874, column: 19, scope: !3205)
!3231 = !DILocation(line: 876, column: 9, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3205, file: !348, line: 876, column: 7)
!3233 = !DILocation(line: 876, column: 7, scope: !3205)
!3234 = !DILocation(line: 877, column: 5, scope: !3232)
!3235 = !DILocation(line: 879, column: 7, scope: !3217)
!3236 = !DILocation(line: 879, column: 14, scope: !3217)
!3237 = !DILocation(line: 879, column: 7, scope: !3205)
!3238 = !DILocation(line: 881, column: 31, scope: !3216)
!3239 = !DILocation(line: 883, column: 67, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3216, file: !348, line: 883, column: 11)
!3241 = !DILocation(line: 883, column: 11, scope: !3216)
!3242 = !DILocation(line: 884, column: 9, scope: !3240)
!3243 = !DILocation(line: 886, column: 32, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3216, file: !348, discriminator: 3)
!3245 = !DILocation(line: 886, column: 61, scope: !3244)
!3246 = !DILocation(line: 886, column: 58, scope: !3244)
!3247 = !DILocation(line: 886, column: 66, scope: !3244)
!3248 = !DILocation(line: 886, column: 22, scope: !3244)
!3249 = !DILocation(line: 886, column: 15, scope: !3244)
!3250 = !DILocation(line: 887, column: 11, scope: !3216)
!3251 = !DILocation(line: 888, column: 15, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3216, file: !348, line: 887, column: 11)
!3253 = !{i64 0, i64 8, !1147, i64 8, i64 8, !824}
!3254 = !DILocation(line: 888, column: 9, scope: !3252)
!3255 = !DILocation(line: 889, column: 20, scope: !3216)
!3256 = !DILocation(line: 889, column: 18, scope: !3216)
!3257 = !DILocation(line: 889, column: 7, scope: !3216)
!3258 = !DILocation(line: 889, column: 38, scope: !3216)
!3259 = !DILocation(line: 889, column: 31, scope: !3216)
!3260 = !DILocation(line: 889, column: 48, scope: !3216)
!3261 = !DILocation(line: 890, column: 14, scope: !3216)
!3262 = !DILocation(line: 891, column: 5, scope: !3216)
!3263 = !DILocation(line: 894, column: 19, scope: !3219)
!3264 = !DILocation(line: 894, column: 25, scope: !3219)
!3265 = !DILocation(line: 894, column: 12, scope: !3219)
!3266 = !DILocation(line: 895, column: 23, scope: !3219)
!3267 = !DILocation(line: 895, column: 11, scope: !3219)
!3268 = !DILocation(line: 897, column: 26, scope: !3219)
!3269 = !DILocation(line: 897, column: 32, scope: !3219)
!3270 = !DILocation(line: 897, column: 9, scope: !3219)
!3271 = !DILocation(line: 899, column: 55, scope: !3219)
!3272 = !DILocation(line: 900, column: 46, scope: !3219)
!3273 = !DILocation(line: 901, column: 55, scope: !3219)
!3274 = !DILocation(line: 902, column: 55, scope: !3219)
!3275 = !DILocation(line: 898, column: 20, scope: !3219)
!3276 = !DILocation(line: 898, column: 12, scope: !3219)
!3277 = !DILocation(line: 904, column: 14, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3219, file: !348, line: 904, column: 9)
!3279 = !DILocation(line: 904, column: 9, scope: !3219)
!3280 = !DILocation(line: 906, column: 35, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3278, file: !348, line: 905, column: 7)
!3282 = !DILocation(line: 906, column: 20, scope: !3281)
!3283 = !DILocation(line: 907, column: 17, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !348, line: 907, column: 13)
!3285 = !DILocation(line: 907, column: 13, scope: !3281)
!3286 = !DILocation(line: 908, column: 11, scope: !3284)
!3287 = !DILocation(line: 220, column: 20, scope: !3105, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 909, column: 27, scope: !3281)
!3289 = !DILocation(line: 222, column: 10, scope: !3105, inlinedAt: !3288)
!3290 = !DILocation(line: 909, column: 19, scope: !3281)
!3291 = !DILocation(line: 910, column: 69, scope: !3281)
!3292 = !DILocation(line: 912, column: 44, scope: !3281)
!3293 = !DILocation(line: 913, column: 44, scope: !3281)
!3294 = !DILocation(line: 910, column: 9, scope: !3281)
!3295 = !DILocation(line: 914, column: 7, scope: !3281)
!3296 = !DILocation(line: 916, column: 11, scope: !3219)
!3297 = !DILocation(line: 917, column: 5, scope: !3219)
!3298 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !348, file: !348, line: 928, type: !3299, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!24, !22, !78, !70}
!3301 = !{!3302, !3303, !3304}
!3302 = !DILocalVariable(name: "n", arg: 1, scope: !3298, file: !348, line: 928, type: !22)
!3303 = !DILocalVariable(name: "arg", arg: 2, scope: !3298, file: !348, line: 928, type: !78)
!3304 = !DILocalVariable(name: "argsize", arg: 3, scope: !3298, file: !348, line: 928, type: !70)
!3305 = !DILocation(line: 928, column: 21, scope: !3298)
!3306 = !DILocation(line: 928, column: 36, scope: !3298)
!3307 = !DILocation(line: 928, column: 48, scope: !3298)
!3308 = !DILocation(line: 930, column: 10, scope: !3298)
!3309 = !DILocation(line: 930, column: 3, scope: !3298)
!3310 = distinct !DISubprogram(name: "quotearg", scope: !348, file: !348, line: 934, type: !1637, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3311)
!3311 = !{!3312}
!3312 = !DILocalVariable(name: "arg", arg: 1, scope: !3310, file: !348, line: 934, type: !78)
!3313 = !DILocation(line: 934, column: 23, scope: !3310)
!3314 = !DILocation(line: 922, column: 17, scope: !3195, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 936, column: 10, scope: !3310)
!3316 = !DILocation(line: 922, column: 32, scope: !3195, inlinedAt: !3315)
!3317 = !DILocation(line: 924, column: 10, scope: !3195, inlinedAt: !3315)
!3318 = !DILocation(line: 936, column: 3, scope: !3310)
!3319 = distinct !DISubprogram(name: "quotearg_mem", scope: !348, file: !348, line: 940, type: !3320, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!24, !78, !70}
!3322 = !{!3323, !3324}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3319, file: !348, line: 940, type: !78)
!3324 = !DILocalVariable(name: "argsize", arg: 2, scope: !3319, file: !348, line: 940, type: !70)
!3325 = !DILocation(line: 940, column: 27, scope: !3319)
!3326 = !DILocation(line: 940, column: 39, scope: !3319)
!3327 = !DILocation(line: 928, column: 21, scope: !3298, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 942, column: 10, scope: !3319)
!3329 = !DILocation(line: 928, column: 36, scope: !3298, inlinedAt: !3328)
!3330 = !DILocation(line: 928, column: 48, scope: !3298, inlinedAt: !3328)
!3331 = !DILocation(line: 930, column: 10, scope: !3298, inlinedAt: !3328)
!3332 = !DILocation(line: 942, column: 3, scope: !3319)
!3333 = distinct !DISubprogram(name: "quotearg_n_style", scope: !348, file: !348, line: 946, type: !3334, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!24, !22, !212, !78}
!3336 = !{!3337, !3338, !3339, !3340}
!3337 = !DILocalVariable(name: "n", arg: 1, scope: !3333, file: !348, line: 946, type: !22)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !348, line: 946, type: !212)
!3339 = !DILocalVariable(name: "arg", arg: 3, scope: !3333, file: !348, line: 946, type: !78)
!3340 = !DILocalVariable(name: "o", scope: !3333, file: !348, line: 948, type: !1906)
!3341 = !DILocalVariable(name: "o", scope: !3342, file: !348, line: 187, type: !355)
!3342 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !348, file: !348, line: 185, type: !3343, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!355, !212}
!3345 = !{!3346, !3341}
!3346 = !DILocalVariable(name: "style", arg: 1, scope: !3342, file: !348, line: 185, type: !212)
!3347 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3348 = !DILocation(line: 187, column: 26, scope: !3342, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 948, column: 36, scope: !3333)
!3350 = !DILocation(line: 946, column: 23, scope: !3333)
!3351 = !DILocation(line: 946, column: 45, scope: !3333)
!3352 = !DILocation(line: 946, column: 60, scope: !3333)
!3353 = !DILocation(line: 948, column: 3, scope: !3333)
!3354 = !DILocation(line: 948, column: 32, scope: !3333)
!3355 = !DILocation(line: 185, column: 48, scope: !3342, inlinedAt: !3349)
!3356 = !DILocation(line: 187, column: 3, scope: !3342, inlinedAt: !3349)
!3357 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3358 = !DILocation(line: 188, column: 13, scope: !3359, inlinedAt: !3349)
!3359 = distinct !DILexicalBlock(scope: !3342, file: !348, line: 188, column: 7)
!3360 = !DILocation(line: 188, column: 7, scope: !3342, inlinedAt: !3349)
!3361 = !DILocation(line: 189, column: 5, scope: !3359, inlinedAt: !3349)
!3362 = !{!3363}
!3363 = distinct !{!3363, !3364, !"quoting_options_from_style: argument 0"}
!3364 = distinct !{!3364, !"quoting_options_from_style"}
!3365 = !DILocation(line: 191, column: 10, scope: !3342, inlinedAt: !3349)
!3366 = !DILocation(line: 192, column: 1, scope: !3342, inlinedAt: !3349)
!3367 = !DILocation(line: 949, column: 10, scope: !3333)
!3368 = !DILocation(line: 950, column: 1, scope: !3333)
!3369 = !DILocation(line: 949, column: 3, scope: !3333)
!3370 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !348, file: !348, line: 953, type: !3371, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!24, !22, !212, !78, !70}
!3373 = !{!3374, !3375, !3376, !3377, !3378}
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3370, file: !348, line: 953, type: !22)
!3375 = !DILocalVariable(name: "s", arg: 2, scope: !3370, file: !348, line: 953, type: !212)
!3376 = !DILocalVariable(name: "arg", arg: 3, scope: !3370, file: !348, line: 954, type: !78)
!3377 = !DILocalVariable(name: "argsize", arg: 4, scope: !3370, file: !348, line: 954, type: !70)
!3378 = !DILocalVariable(name: "o", scope: !3370, file: !348, line: 956, type: !1906)
!3379 = !DILocation(line: 187, column: 26, scope: !3342, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 956, column: 36, scope: !3370)
!3381 = !DILocation(line: 953, column: 27, scope: !3370)
!3382 = !DILocation(line: 953, column: 49, scope: !3370)
!3383 = !DILocation(line: 954, column: 35, scope: !3370)
!3384 = !DILocation(line: 954, column: 47, scope: !3370)
!3385 = !DILocation(line: 956, column: 3, scope: !3370)
!3386 = !DILocation(line: 956, column: 32, scope: !3370)
!3387 = !DILocation(line: 185, column: 48, scope: !3342, inlinedAt: !3380)
!3388 = !DILocation(line: 187, column: 3, scope: !3342, inlinedAt: !3380)
!3389 = !DILocation(line: 188, column: 13, scope: !3359, inlinedAt: !3380)
!3390 = !DILocation(line: 188, column: 7, scope: !3342, inlinedAt: !3380)
!3391 = !DILocation(line: 189, column: 5, scope: !3359, inlinedAt: !3380)
!3392 = !{!3393}
!3393 = distinct !{!3393, !3394, !"quoting_options_from_style: argument 0"}
!3394 = distinct !{!3394, !"quoting_options_from_style"}
!3395 = !DILocation(line: 191, column: 10, scope: !3342, inlinedAt: !3380)
!3396 = !DILocation(line: 192, column: 1, scope: !3342, inlinedAt: !3380)
!3397 = !DILocation(line: 957, column: 10, scope: !3370)
!3398 = !DILocation(line: 958, column: 1, scope: !3370)
!3399 = !DILocation(line: 957, column: 3, scope: !3370)
!3400 = distinct !DISubprogram(name: "quotearg_style", scope: !348, file: !348, line: 961, type: !3401, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3403)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!24, !212, !78}
!3403 = !{!3404, !3405}
!3404 = !DILocalVariable(name: "s", arg: 1, scope: !3400, file: !348, line: 961, type: !212)
!3405 = !DILocalVariable(name: "arg", arg: 2, scope: !3400, file: !348, line: 961, type: !78)
!3406 = !DILocation(line: 187, column: 26, scope: !3342, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 948, column: 36, scope: !3333, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 963, column: 10, scope: !3400)
!3409 = !DILocation(line: 961, column: 36, scope: !3400)
!3410 = !DILocation(line: 961, column: 51, scope: !3400)
!3411 = !DILocation(line: 946, column: 23, scope: !3333, inlinedAt: !3408)
!3412 = !DILocation(line: 946, column: 45, scope: !3333, inlinedAt: !3408)
!3413 = !DILocation(line: 946, column: 60, scope: !3333, inlinedAt: !3408)
!3414 = !DILocation(line: 948, column: 3, scope: !3333, inlinedAt: !3408)
!3415 = !DILocation(line: 948, column: 32, scope: !3333, inlinedAt: !3408)
!3416 = !DILocation(line: 185, column: 48, scope: !3342, inlinedAt: !3407)
!3417 = !DILocation(line: 187, column: 3, scope: !3342, inlinedAt: !3407)
!3418 = !DILocation(line: 188, column: 13, scope: !3359, inlinedAt: !3407)
!3419 = !DILocation(line: 188, column: 7, scope: !3342, inlinedAt: !3407)
!3420 = !DILocation(line: 189, column: 5, scope: !3359, inlinedAt: !3407)
!3421 = !{!3422}
!3422 = distinct !{!3422, !3423, !"quoting_options_from_style: argument 0"}
!3423 = distinct !{!3423, !"quoting_options_from_style"}
!3424 = !DILocation(line: 191, column: 10, scope: !3342, inlinedAt: !3407)
!3425 = !DILocation(line: 192, column: 1, scope: !3342, inlinedAt: !3407)
!3426 = !DILocation(line: 949, column: 10, scope: !3333, inlinedAt: !3408)
!3427 = !DILocation(line: 950, column: 1, scope: !3333, inlinedAt: !3408)
!3428 = !DILocation(line: 963, column: 3, scope: !3400)
!3429 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !348, file: !348, line: 967, type: !3430, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!24, !212, !78, !70}
!3432 = !{!3433, !3434, !3435}
!3433 = !DILocalVariable(name: "s", arg: 1, scope: !3429, file: !348, line: 967, type: !212)
!3434 = !DILocalVariable(name: "arg", arg: 2, scope: !3429, file: !348, line: 967, type: !78)
!3435 = !DILocalVariable(name: "argsize", arg: 3, scope: !3429, file: !348, line: 967, type: !70)
!3436 = !DILocation(line: 187, column: 26, scope: !3342, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 956, column: 36, scope: !3370, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 969, column: 10, scope: !3429)
!3439 = !DILocation(line: 967, column: 40, scope: !3429)
!3440 = !DILocation(line: 967, column: 55, scope: !3429)
!3441 = !DILocation(line: 967, column: 67, scope: !3429)
!3442 = !DILocation(line: 953, column: 27, scope: !3370, inlinedAt: !3438)
!3443 = !DILocation(line: 953, column: 49, scope: !3370, inlinedAt: !3438)
!3444 = !DILocation(line: 954, column: 35, scope: !3370, inlinedAt: !3438)
!3445 = !DILocation(line: 954, column: 47, scope: !3370, inlinedAt: !3438)
!3446 = !DILocation(line: 956, column: 3, scope: !3370, inlinedAt: !3438)
!3447 = !DILocation(line: 956, column: 32, scope: !3370, inlinedAt: !3438)
!3448 = !DILocation(line: 185, column: 48, scope: !3342, inlinedAt: !3437)
!3449 = !DILocation(line: 187, column: 3, scope: !3342, inlinedAt: !3437)
!3450 = !DILocation(line: 188, column: 13, scope: !3359, inlinedAt: !3437)
!3451 = !DILocation(line: 188, column: 7, scope: !3342, inlinedAt: !3437)
!3452 = !DILocation(line: 189, column: 5, scope: !3359, inlinedAt: !3437)
!3453 = !{!3454}
!3454 = distinct !{!3454, !3455, !"quoting_options_from_style: argument 0"}
!3455 = distinct !{!3455, !"quoting_options_from_style"}
!3456 = !DILocation(line: 191, column: 10, scope: !3342, inlinedAt: !3437)
!3457 = !DILocation(line: 192, column: 1, scope: !3342, inlinedAt: !3437)
!3458 = !DILocation(line: 957, column: 10, scope: !3370, inlinedAt: !3438)
!3459 = !DILocation(line: 958, column: 1, scope: !3370, inlinedAt: !3438)
!3460 = !DILocation(line: 969, column: 3, scope: !3429)
!3461 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !348, file: !348, line: 973, type: !3462, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3464)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!24, !78, !70, !25}
!3464 = !{!3465, !3466, !3467, !3468}
!3465 = !DILocalVariable(name: "arg", arg: 1, scope: !3461, file: !348, line: 973, type: !78)
!3466 = !DILocalVariable(name: "argsize", arg: 2, scope: !3461, file: !348, line: 973, type: !70)
!3467 = !DILocalVariable(name: "ch", arg: 3, scope: !3461, file: !348, line: 973, type: !25)
!3468 = !DILocalVariable(name: "options", scope: !3461, file: !348, line: 975, type: !355)
!3469 = !DILocation(line: 973, column: 32, scope: !3461)
!3470 = !DILocation(line: 973, column: 44, scope: !3461)
!3471 = !DILocation(line: 973, column: 58, scope: !3461)
!3472 = !DILocation(line: 975, column: 3, scope: !3461)
!3473 = !DILocation(line: 976, column: 13, scope: !3461)
!3474 = !{i64 0, i64 4, !993, i64 4, i64 4, !919, i64 8, i64 32, !993, i64 40, i64 8, !824, i64 48, i64 8, !824}
!3475 = !DILocation(line: 975, column: 26, scope: !3461)
!3476 = !DILocation(line: 144, column: 43, scope: !1929, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 977, column: 3, scope: !3461)
!3478 = !DILocation(line: 144, column: 51, scope: !1929, inlinedAt: !3477)
!3479 = !DILocation(line: 144, column: 58, scope: !1929, inlinedAt: !3477)
!3480 = !DILocation(line: 146, column: 17, scope: !1929, inlinedAt: !3477)
!3481 = !DILocation(line: 148, column: 62, scope: !1947, inlinedAt: !3477)
!3482 = !DILocation(line: 148, column: 57, scope: !1947, inlinedAt: !3477)
!3483 = !DILocation(line: 147, column: 17, scope: !1929, inlinedAt: !3477)
!3484 = !DILocation(line: 149, column: 18, scope: !1929, inlinedAt: !3477)
!3485 = !DILocation(line: 149, column: 15, scope: !1929, inlinedAt: !3477)
!3486 = !DILocation(line: 149, column: 7, scope: !1929, inlinedAt: !3477)
!3487 = !DILocation(line: 150, column: 12, scope: !1929, inlinedAt: !3477)
!3488 = !DILocation(line: 150, column: 15, scope: !1929, inlinedAt: !3477)
!3489 = !DILocation(line: 150, column: 25, scope: !1929, inlinedAt: !3477)
!3490 = !DILocation(line: 150, column: 7, scope: !1929, inlinedAt: !3477)
!3491 = !DILocation(line: 151, column: 18, scope: !1929, inlinedAt: !3477)
!3492 = !DILocation(line: 151, column: 23, scope: !1929, inlinedAt: !3477)
!3493 = !DILocation(line: 151, column: 6, scope: !1929, inlinedAt: !3477)
!3494 = !DILocation(line: 978, column: 10, scope: !3461)
!3495 = !DILocation(line: 979, column: 1, scope: !3461)
!3496 = !DILocation(line: 978, column: 3, scope: !3461)
!3497 = distinct !DISubprogram(name: "quotearg_char", scope: !348, file: !348, line: 982, type: !3498, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!24, !78, !25}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "arg", arg: 1, scope: !3497, file: !348, line: 982, type: !78)
!3502 = !DILocalVariable(name: "ch", arg: 2, scope: !3497, file: !348, line: 982, type: !25)
!3503 = !DILocation(line: 982, column: 28, scope: !3497)
!3504 = !DILocation(line: 982, column: 38, scope: !3497)
!3505 = !DILocation(line: 973, column: 32, scope: !3461, inlinedAt: !3506)
!3506 = distinct !DILocation(line: 984, column: 10, scope: !3497)
!3507 = !DILocation(line: 973, column: 44, scope: !3461, inlinedAt: !3506)
!3508 = !DILocation(line: 973, column: 58, scope: !3461, inlinedAt: !3506)
!3509 = !DILocation(line: 975, column: 3, scope: !3461, inlinedAt: !3506)
!3510 = !DILocation(line: 976, column: 13, scope: !3461, inlinedAt: !3506)
!3511 = !DILocation(line: 975, column: 26, scope: !3461, inlinedAt: !3506)
!3512 = !DILocation(line: 144, column: 43, scope: !1929, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 977, column: 3, scope: !3461, inlinedAt: !3506)
!3514 = !DILocation(line: 144, column: 51, scope: !1929, inlinedAt: !3513)
!3515 = !DILocation(line: 144, column: 58, scope: !1929, inlinedAt: !3513)
!3516 = !DILocation(line: 146, column: 17, scope: !1929, inlinedAt: !3513)
!3517 = !DILocation(line: 148, column: 62, scope: !1947, inlinedAt: !3513)
!3518 = !DILocation(line: 148, column: 57, scope: !1947, inlinedAt: !3513)
!3519 = !DILocation(line: 147, column: 17, scope: !1929, inlinedAt: !3513)
!3520 = !DILocation(line: 149, column: 18, scope: !1929, inlinedAt: !3513)
!3521 = !DILocation(line: 149, column: 15, scope: !1929, inlinedAt: !3513)
!3522 = !DILocation(line: 149, column: 7, scope: !1929, inlinedAt: !3513)
!3523 = !DILocation(line: 150, column: 12, scope: !1929, inlinedAt: !3513)
!3524 = !DILocation(line: 150, column: 15, scope: !1929, inlinedAt: !3513)
!3525 = !DILocation(line: 150, column: 25, scope: !1929, inlinedAt: !3513)
!3526 = !DILocation(line: 150, column: 7, scope: !1929, inlinedAt: !3513)
!3527 = !DILocation(line: 151, column: 18, scope: !1929, inlinedAt: !3513)
!3528 = !DILocation(line: 151, column: 23, scope: !1929, inlinedAt: !3513)
!3529 = !DILocation(line: 151, column: 6, scope: !1929, inlinedAt: !3513)
!3530 = !DILocation(line: 978, column: 10, scope: !3461, inlinedAt: !3506)
!3531 = !DILocation(line: 979, column: 1, scope: !3461, inlinedAt: !3506)
!3532 = !DILocation(line: 984, column: 3, scope: !3497)
!3533 = distinct !DISubprogram(name: "quotearg_colon", scope: !348, file: !348, line: 988, type: !1637, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3534)
!3534 = !{!3535}
!3535 = !DILocalVariable(name: "arg", arg: 1, scope: !3533, file: !348, line: 988, type: !78)
!3536 = !DILocation(line: 988, column: 29, scope: !3533)
!3537 = !DILocation(line: 982, column: 28, scope: !3497, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 990, column: 10, scope: !3533)
!3539 = !DILocation(line: 982, column: 38, scope: !3497, inlinedAt: !3538)
!3540 = !DILocation(line: 973, column: 32, scope: !3461, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 984, column: 10, scope: !3497, inlinedAt: !3538)
!3542 = !DILocation(line: 973, column: 44, scope: !3461, inlinedAt: !3541)
!3543 = !DILocation(line: 973, column: 58, scope: !3461, inlinedAt: !3541)
!3544 = !DILocation(line: 975, column: 3, scope: !3461, inlinedAt: !3541)
!3545 = !DILocation(line: 976, column: 13, scope: !3461, inlinedAt: !3541)
!3546 = !DILocation(line: 975, column: 26, scope: !3461, inlinedAt: !3541)
!3547 = !DILocation(line: 144, column: 43, scope: !1929, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 977, column: 3, scope: !3461, inlinedAt: !3541)
!3549 = !DILocation(line: 144, column: 51, scope: !1929, inlinedAt: !3548)
!3550 = !DILocation(line: 144, column: 58, scope: !1929, inlinedAt: !3548)
!3551 = !DILocation(line: 146, column: 17, scope: !1929, inlinedAt: !3548)
!3552 = !DILocation(line: 148, column: 57, scope: !1947, inlinedAt: !3548)
!3553 = !DILocation(line: 147, column: 17, scope: !1929, inlinedAt: !3548)
!3554 = !DILocation(line: 149, column: 7, scope: !1929, inlinedAt: !3548)
!3555 = !DILocation(line: 150, column: 12, scope: !1929, inlinedAt: !3548)
!3556 = !DILocation(line: 151, column: 6, scope: !1929, inlinedAt: !3548)
!3557 = !DILocation(line: 978, column: 10, scope: !3461, inlinedAt: !3541)
!3558 = !DILocation(line: 979, column: 1, scope: !3461, inlinedAt: !3541)
!3559 = !DILocation(line: 990, column: 3, scope: !3533)
!3560 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !348, file: !348, line: 994, type: !3320, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3561)
!3561 = !{!3562, !3563}
!3562 = !DILocalVariable(name: "arg", arg: 1, scope: !3560, file: !348, line: 994, type: !78)
!3563 = !DILocalVariable(name: "argsize", arg: 2, scope: !3560, file: !348, line: 994, type: !70)
!3564 = !DILocation(line: 994, column: 33, scope: !3560)
!3565 = !DILocation(line: 994, column: 45, scope: !3560)
!3566 = !DILocation(line: 973, column: 32, scope: !3461, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 996, column: 10, scope: !3560)
!3568 = !DILocation(line: 973, column: 44, scope: !3461, inlinedAt: !3567)
!3569 = !DILocation(line: 973, column: 58, scope: !3461, inlinedAt: !3567)
!3570 = !DILocation(line: 975, column: 3, scope: !3461, inlinedAt: !3567)
!3571 = !DILocation(line: 976, column: 13, scope: !3461, inlinedAt: !3567)
!3572 = !DILocation(line: 975, column: 26, scope: !3461, inlinedAt: !3567)
!3573 = !DILocation(line: 144, column: 43, scope: !1929, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 977, column: 3, scope: !3461, inlinedAt: !3567)
!3575 = !DILocation(line: 144, column: 51, scope: !1929, inlinedAt: !3574)
!3576 = !DILocation(line: 144, column: 58, scope: !1929, inlinedAt: !3574)
!3577 = !DILocation(line: 146, column: 17, scope: !1929, inlinedAt: !3574)
!3578 = !DILocation(line: 148, column: 57, scope: !1947, inlinedAt: !3574)
!3579 = !DILocation(line: 147, column: 17, scope: !1929, inlinedAt: !3574)
!3580 = !DILocation(line: 149, column: 7, scope: !1929, inlinedAt: !3574)
!3581 = !DILocation(line: 150, column: 12, scope: !1929, inlinedAt: !3574)
!3582 = !DILocation(line: 151, column: 6, scope: !1929, inlinedAt: !3574)
!3583 = !DILocation(line: 978, column: 10, scope: !3461, inlinedAt: !3567)
!3584 = !DILocation(line: 979, column: 1, scope: !3461, inlinedAt: !3567)
!3585 = !DILocation(line: 996, column: 3, scope: !3560)
!3586 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !348, file: !348, line: 1000, type: !3334, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3587)
!3587 = !{!3588, !3589, !3590, !3591}
!3588 = !DILocalVariable(name: "n", arg: 1, scope: !3586, file: !348, line: 1000, type: !22)
!3589 = !DILocalVariable(name: "s", arg: 2, scope: !3586, file: !348, line: 1000, type: !212)
!3590 = !DILocalVariable(name: "arg", arg: 3, scope: !3586, file: !348, line: 1000, type: !78)
!3591 = !DILocalVariable(name: "options", scope: !3586, file: !348, line: 1002, type: !355)
!3592 = !DILocation(line: 187, column: 26, scope: !3342, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 1003, column: 13, scope: !3586)
!3594 = !DILocation(line: 1000, column: 29, scope: !3586)
!3595 = !DILocation(line: 1000, column: 51, scope: !3586)
!3596 = !DILocation(line: 1000, column: 66, scope: !3586)
!3597 = !DILocation(line: 1002, column: 3, scope: !3586)
!3598 = !DILocation(line: 185, column: 48, scope: !3342, inlinedAt: !3593)
!3599 = !DILocation(line: 187, column: 3, scope: !3342, inlinedAt: !3593)
!3600 = !DILocation(line: 188, column: 13, scope: !3359, inlinedAt: !3593)
!3601 = !DILocation(line: 188, column: 7, scope: !3342, inlinedAt: !3593)
!3602 = !DILocation(line: 189, column: 5, scope: !3359, inlinedAt: !3593)
!3603 = !{!3604}
!3604 = distinct !{!3604, !3605, !"quoting_options_from_style: argument 0"}
!3605 = distinct !{!3605, !"quoting_options_from_style"}
!3606 = !DILocation(line: 191, column: 10, scope: !3342, inlinedAt: !3593)
!3607 = !DILocation(line: 192, column: 1, scope: !3342, inlinedAt: !3593)
!3608 = !DILocation(line: 1003, column: 13, scope: !3586)
!3609 = !DILocation(line: 1002, column: 26, scope: !3586)
!3610 = !DILocation(line: 144, column: 43, scope: !1929, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 1004, column: 3, scope: !3586)
!3612 = !DILocation(line: 144, column: 51, scope: !1929, inlinedAt: !3611)
!3613 = !DILocation(line: 144, column: 58, scope: !1929, inlinedAt: !3611)
!3614 = !DILocation(line: 146, column: 17, scope: !1929, inlinedAt: !3611)
!3615 = !DILocation(line: 148, column: 57, scope: !1947, inlinedAt: !3611)
!3616 = !DILocation(line: 147, column: 17, scope: !1929, inlinedAt: !3611)
!3617 = !DILocation(line: 149, column: 7, scope: !1929, inlinedAt: !3611)
!3618 = !DILocation(line: 150, column: 12, scope: !1929, inlinedAt: !3611)
!3619 = !DILocation(line: 151, column: 6, scope: !1929, inlinedAt: !3611)
!3620 = !DILocation(line: 1005, column: 10, scope: !3586)
!3621 = !DILocation(line: 1006, column: 1, scope: !3586)
!3622 = !DILocation(line: 1005, column: 3, scope: !3586)
!3623 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !348, file: !348, line: 1009, type: !3624, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3626)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!24, !22, !78, !78, !78}
!3626 = !{!3627, !3628, !3629, !3630}
!3627 = !DILocalVariable(name: "n", arg: 1, scope: !3623, file: !348, line: 1009, type: !22)
!3628 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3623, file: !348, line: 1009, type: !78)
!3629 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3623, file: !348, line: 1010, type: !78)
!3630 = !DILocalVariable(name: "arg", arg: 4, scope: !3623, file: !348, line: 1010, type: !78)
!3631 = !DILocation(line: 1009, column: 24, scope: !3623)
!3632 = !DILocation(line: 1009, column: 39, scope: !3623)
!3633 = !DILocation(line: 1010, column: 32, scope: !3623)
!3634 = !DILocation(line: 1010, column: 57, scope: !3623)
!3635 = !DILocalVariable(name: "n", arg: 1, scope: !3636, file: !348, line: 1017, type: !22)
!3636 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !348, file: !348, line: 1017, type: !3637, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3639)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!24, !22, !78, !78, !78, !70}
!3639 = !{!3635, !3640, !3641, !3642, !3643, !3644}
!3640 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3636, file: !348, line: 1017, type: !78)
!3641 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3636, file: !348, line: 1018, type: !78)
!3642 = !DILocalVariable(name: "arg", arg: 4, scope: !3636, file: !348, line: 1019, type: !78)
!3643 = !DILocalVariable(name: "argsize", arg: 5, scope: !3636, file: !348, line: 1019, type: !70)
!3644 = !DILocalVariable(name: "o", scope: !3636, file: !348, line: 1021, type: !355)
!3645 = !DILocation(line: 1017, column: 28, scope: !3636, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1012, column: 10, scope: !3623)
!3647 = !DILocation(line: 1017, column: 43, scope: !3636, inlinedAt: !3646)
!3648 = !DILocation(line: 1018, column: 36, scope: !3636, inlinedAt: !3646)
!3649 = !DILocation(line: 1019, column: 36, scope: !3636, inlinedAt: !3646)
!3650 = !DILocation(line: 1019, column: 48, scope: !3636, inlinedAt: !3646)
!3651 = !DILocation(line: 1021, column: 3, scope: !3636, inlinedAt: !3646)
!3652 = !DILocation(line: 1021, column: 30, scope: !3636, inlinedAt: !3646)
!3653 = !DILocation(line: 1021, column: 26, scope: !3636, inlinedAt: !3646)
!3654 = !DILocation(line: 171, column: 45, scope: !1979, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 1022, column: 3, scope: !3636, inlinedAt: !3646)
!3656 = !DILocation(line: 172, column: 33, scope: !1979, inlinedAt: !3655)
!3657 = !DILocation(line: 172, column: 57, scope: !1979, inlinedAt: !3655)
!3658 = !DILocation(line: 176, column: 6, scope: !1979, inlinedAt: !3655)
!3659 = !DILocation(line: 176, column: 12, scope: !1979, inlinedAt: !3655)
!3660 = !DILocation(line: 177, column: 8, scope: !1995, inlinedAt: !3655)
!3661 = !DILocation(line: 177, column: 23, scope: !1997, inlinedAt: !3655)
!3662 = !DILocation(line: 177, column: 19, scope: !1995, inlinedAt: !3655)
!3663 = !DILocation(line: 178, column: 5, scope: !1995, inlinedAt: !3655)
!3664 = !DILocation(line: 179, column: 6, scope: !1979, inlinedAt: !3655)
!3665 = !DILocation(line: 179, column: 17, scope: !1979, inlinedAt: !3655)
!3666 = !DILocation(line: 180, column: 6, scope: !1979, inlinedAt: !3655)
!3667 = !DILocation(line: 180, column: 18, scope: !1979, inlinedAt: !3655)
!3668 = !DILocation(line: 1023, column: 10, scope: !3636, inlinedAt: !3646)
!3669 = !DILocation(line: 1024, column: 1, scope: !3636, inlinedAt: !3646)
!3670 = !DILocation(line: 1012, column: 3, scope: !3623)
!3671 = !DILocation(line: 1017, column: 28, scope: !3636)
!3672 = !DILocation(line: 1017, column: 43, scope: !3636)
!3673 = !DILocation(line: 1018, column: 36, scope: !3636)
!3674 = !DILocation(line: 1019, column: 36, scope: !3636)
!3675 = !DILocation(line: 1019, column: 48, scope: !3636)
!3676 = !DILocation(line: 1021, column: 3, scope: !3636)
!3677 = !DILocation(line: 1021, column: 30, scope: !3636)
!3678 = !DILocation(line: 1021, column: 26, scope: !3636)
!3679 = !DILocation(line: 171, column: 45, scope: !1979, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 1022, column: 3, scope: !3636)
!3681 = !DILocation(line: 172, column: 33, scope: !1979, inlinedAt: !3680)
!3682 = !DILocation(line: 172, column: 57, scope: !1979, inlinedAt: !3680)
!3683 = !DILocation(line: 176, column: 6, scope: !1979, inlinedAt: !3680)
!3684 = !DILocation(line: 176, column: 12, scope: !1979, inlinedAt: !3680)
!3685 = !DILocation(line: 177, column: 8, scope: !1995, inlinedAt: !3680)
!3686 = !DILocation(line: 177, column: 23, scope: !1997, inlinedAt: !3680)
!3687 = !DILocation(line: 177, column: 19, scope: !1995, inlinedAt: !3680)
!3688 = !DILocation(line: 178, column: 5, scope: !1995, inlinedAt: !3680)
!3689 = !DILocation(line: 179, column: 6, scope: !1979, inlinedAt: !3680)
!3690 = !DILocation(line: 179, column: 17, scope: !1979, inlinedAt: !3680)
!3691 = !DILocation(line: 180, column: 6, scope: !1979, inlinedAt: !3680)
!3692 = !DILocation(line: 180, column: 18, scope: !1979, inlinedAt: !3680)
!3693 = !DILocation(line: 1023, column: 10, scope: !3636)
!3694 = !DILocation(line: 1024, column: 1, scope: !3636)
!3695 = !DILocation(line: 1023, column: 3, scope: !3636)
!3696 = distinct !DISubprogram(name: "quotearg_custom", scope: !348, file: !348, line: 1027, type: !3697, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!24, !78, !78, !78}
!3699 = !{!3700, !3701, !3702}
!3700 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3696, file: !348, line: 1027, type: !78)
!3701 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3696, file: !348, line: 1027, type: !78)
!3702 = !DILocalVariable(name: "arg", arg: 3, scope: !3696, file: !348, line: 1028, type: !78)
!3703 = !DILocation(line: 1027, column: 30, scope: !3696)
!3704 = !DILocation(line: 1027, column: 54, scope: !3696)
!3705 = !DILocation(line: 1028, column: 30, scope: !3696)
!3706 = !DILocation(line: 1009, column: 24, scope: !3623, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 1030, column: 10, scope: !3696)
!3708 = !DILocation(line: 1009, column: 39, scope: !3623, inlinedAt: !3707)
!3709 = !DILocation(line: 1010, column: 32, scope: !3623, inlinedAt: !3707)
!3710 = !DILocation(line: 1010, column: 57, scope: !3623, inlinedAt: !3707)
!3711 = !DILocation(line: 1017, column: 28, scope: !3636, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1012, column: 10, scope: !3623, inlinedAt: !3707)
!3713 = !DILocation(line: 1017, column: 43, scope: !3636, inlinedAt: !3712)
!3714 = !DILocation(line: 1018, column: 36, scope: !3636, inlinedAt: !3712)
!3715 = !DILocation(line: 1019, column: 36, scope: !3636, inlinedAt: !3712)
!3716 = !DILocation(line: 1019, column: 48, scope: !3636, inlinedAt: !3712)
!3717 = !DILocation(line: 1021, column: 3, scope: !3636, inlinedAt: !3712)
!3718 = !DILocation(line: 1021, column: 30, scope: !3636, inlinedAt: !3712)
!3719 = !DILocation(line: 1021, column: 26, scope: !3636, inlinedAt: !3712)
!3720 = !DILocation(line: 171, column: 45, scope: !1979, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1022, column: 3, scope: !3636, inlinedAt: !3712)
!3722 = !DILocation(line: 172, column: 33, scope: !1979, inlinedAt: !3721)
!3723 = !DILocation(line: 172, column: 57, scope: !1979, inlinedAt: !3721)
!3724 = !DILocation(line: 176, column: 6, scope: !1979, inlinedAt: !3721)
!3725 = !DILocation(line: 176, column: 12, scope: !1979, inlinedAt: !3721)
!3726 = !DILocation(line: 177, column: 8, scope: !1995, inlinedAt: !3721)
!3727 = !DILocation(line: 177, column: 23, scope: !1997, inlinedAt: !3721)
!3728 = !DILocation(line: 177, column: 19, scope: !1995, inlinedAt: !3721)
!3729 = !DILocation(line: 178, column: 5, scope: !1995, inlinedAt: !3721)
!3730 = !DILocation(line: 179, column: 6, scope: !1979, inlinedAt: !3721)
!3731 = !DILocation(line: 179, column: 17, scope: !1979, inlinedAt: !3721)
!3732 = !DILocation(line: 180, column: 6, scope: !1979, inlinedAt: !3721)
!3733 = !DILocation(line: 180, column: 18, scope: !1979, inlinedAt: !3721)
!3734 = !DILocation(line: 1023, column: 10, scope: !3636, inlinedAt: !3712)
!3735 = !DILocation(line: 1024, column: 1, scope: !3636, inlinedAt: !3712)
!3736 = !DILocation(line: 1030, column: 3, scope: !3696)
!3737 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !348, file: !348, line: 1034, type: !3738, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!24, !78, !78, !78, !70}
!3740 = !{!3741, !3742, !3743, !3744}
!3741 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3737, file: !348, line: 1034, type: !78)
!3742 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3737, file: !348, line: 1034, type: !78)
!3743 = !DILocalVariable(name: "arg", arg: 3, scope: !3737, file: !348, line: 1035, type: !78)
!3744 = !DILocalVariable(name: "argsize", arg: 4, scope: !3737, file: !348, line: 1035, type: !70)
!3745 = !DILocation(line: 1034, column: 34, scope: !3737)
!3746 = !DILocation(line: 1034, column: 58, scope: !3737)
!3747 = !DILocation(line: 1035, column: 34, scope: !3737)
!3748 = !DILocation(line: 1035, column: 46, scope: !3737)
!3749 = !DILocation(line: 1017, column: 28, scope: !3636, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 1037, column: 10, scope: !3737)
!3751 = !DILocation(line: 1017, column: 43, scope: !3636, inlinedAt: !3750)
!3752 = !DILocation(line: 1018, column: 36, scope: !3636, inlinedAt: !3750)
!3753 = !DILocation(line: 1019, column: 36, scope: !3636, inlinedAt: !3750)
!3754 = !DILocation(line: 1019, column: 48, scope: !3636, inlinedAt: !3750)
!3755 = !DILocation(line: 1021, column: 3, scope: !3636, inlinedAt: !3750)
!3756 = !DILocation(line: 1021, column: 30, scope: !3636, inlinedAt: !3750)
!3757 = !DILocation(line: 1021, column: 26, scope: !3636, inlinedAt: !3750)
!3758 = !DILocation(line: 171, column: 45, scope: !1979, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 1022, column: 3, scope: !3636, inlinedAt: !3750)
!3760 = !DILocation(line: 172, column: 33, scope: !1979, inlinedAt: !3759)
!3761 = !DILocation(line: 172, column: 57, scope: !1979, inlinedAt: !3759)
!3762 = !DILocation(line: 176, column: 6, scope: !1979, inlinedAt: !3759)
!3763 = !DILocation(line: 176, column: 12, scope: !1979, inlinedAt: !3759)
!3764 = !DILocation(line: 177, column: 8, scope: !1995, inlinedAt: !3759)
!3765 = !DILocation(line: 177, column: 23, scope: !1997, inlinedAt: !3759)
!3766 = !DILocation(line: 177, column: 19, scope: !1995, inlinedAt: !3759)
!3767 = !DILocation(line: 178, column: 5, scope: !1995, inlinedAt: !3759)
!3768 = !DILocation(line: 179, column: 6, scope: !1979, inlinedAt: !3759)
!3769 = !DILocation(line: 179, column: 17, scope: !1979, inlinedAt: !3759)
!3770 = !DILocation(line: 180, column: 6, scope: !1979, inlinedAt: !3759)
!3771 = !DILocation(line: 180, column: 18, scope: !1979, inlinedAt: !3759)
!3772 = !DILocation(line: 1023, column: 10, scope: !3636, inlinedAt: !3750)
!3773 = !DILocation(line: 1024, column: 1, scope: !3636, inlinedAt: !3750)
!3774 = !DILocation(line: 1037, column: 3, scope: !3737)
!3775 = distinct !DISubprogram(name: "quote_n_mem", scope: !348, file: !348, line: 1052, type: !3776, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!78, !22, !78, !70}
!3778 = !{!3779, !3780, !3781}
!3779 = !DILocalVariable(name: "n", arg: 1, scope: !3775, file: !348, line: 1052, type: !22)
!3780 = !DILocalVariable(name: "arg", arg: 2, scope: !3775, file: !348, line: 1052, type: !78)
!3781 = !DILocalVariable(name: "argsize", arg: 3, scope: !3775, file: !348, line: 1052, type: !70)
!3782 = !DILocation(line: 1052, column: 18, scope: !3775)
!3783 = !DILocation(line: 1052, column: 33, scope: !3775)
!3784 = !DILocation(line: 1052, column: 45, scope: !3775)
!3785 = !DILocation(line: 1054, column: 10, scope: !3775)
!3786 = !DILocation(line: 1054, column: 3, scope: !3775)
!3787 = distinct !DISubprogram(name: "quote_mem", scope: !348, file: !348, line: 1058, type: !3788, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!78, !78, !70}
!3790 = !{!3791, !3792}
!3791 = !DILocalVariable(name: "arg", arg: 1, scope: !3787, file: !348, line: 1058, type: !78)
!3792 = !DILocalVariable(name: "argsize", arg: 2, scope: !3787, file: !348, line: 1058, type: !70)
!3793 = !DILocation(line: 1058, column: 24, scope: !3787)
!3794 = !DILocation(line: 1058, column: 36, scope: !3787)
!3795 = !DILocation(line: 1052, column: 18, scope: !3775, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 1060, column: 10, scope: !3787)
!3797 = !DILocation(line: 1052, column: 33, scope: !3775, inlinedAt: !3796)
!3798 = !DILocation(line: 1052, column: 45, scope: !3775, inlinedAt: !3796)
!3799 = !DILocation(line: 1054, column: 10, scope: !3775, inlinedAt: !3796)
!3800 = !DILocation(line: 1060, column: 3, scope: !3787)
!3801 = distinct !DISubprogram(name: "quote_n", scope: !348, file: !348, line: 1064, type: !3802, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!78, !22, !78}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "n", arg: 1, scope: !3801, file: !348, line: 1064, type: !22)
!3806 = !DILocalVariable(name: "arg", arg: 2, scope: !3801, file: !348, line: 1064, type: !78)
!3807 = !DILocation(line: 1064, column: 14, scope: !3801)
!3808 = !DILocation(line: 1064, column: 29, scope: !3801)
!3809 = !DILocation(line: 1052, column: 18, scope: !3775, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 1066, column: 10, scope: !3801)
!3811 = !DILocation(line: 1052, column: 33, scope: !3775, inlinedAt: !3810)
!3812 = !DILocation(line: 1052, column: 45, scope: !3775, inlinedAt: !3810)
!3813 = !DILocation(line: 1054, column: 10, scope: !3775, inlinedAt: !3810)
!3814 = !DILocation(line: 1066, column: 3, scope: !3801)
!3815 = distinct !DISubprogram(name: "quote", scope: !348, file: !348, line: 1070, type: !3816, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !336, variables: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!78, !78}
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "arg", arg: 1, scope: !3815, file: !348, line: 1070, type: !78)
!3820 = !DILocation(line: 1070, column: 20, scope: !3815)
!3821 = !DILocation(line: 1064, column: 14, scope: !3801, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 1072, column: 10, scope: !3815)
!3823 = !DILocation(line: 1064, column: 29, scope: !3801, inlinedAt: !3822)
!3824 = !DILocation(line: 1052, column: 18, scope: !3775, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 1066, column: 10, scope: !3801, inlinedAt: !3822)
!3826 = !DILocation(line: 1052, column: 33, scope: !3775, inlinedAt: !3825)
!3827 = !DILocation(line: 1052, column: 45, scope: !3775, inlinedAt: !3825)
!3828 = !DILocation(line: 1054, column: 10, scope: !3775, inlinedAt: !3825)
!3829 = !DILocation(line: 1072, column: 3, scope: !3815)
!3830 = distinct !DISubprogram(name: "version_etc_arn", scope: !763, file: !763, line: 62, type: !3831, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !3874)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !3833, !78, !78, !78, !3873, !70}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !3835)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3835, file: !19, line: 242, baseType: !22, size: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3835, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3835, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3835, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3835, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3835, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3835, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3835, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3835, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3835, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3835, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3835, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3835, file: !19, line: 260, baseType: !3850, size: 64, offset: 768)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !3852)
!3852 = !{!3853, !3854, !3856}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !3851, file: !19, line: 157, baseType: !3850, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !3851, file: !19, line: 158, baseType: !3855, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !3851, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3835, file: !19, line: 262, baseType: !3855, size: 64, offset: 832)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3835, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3835, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3835, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3835, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3835, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3835, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3835, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3835, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !3835, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !3835, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !3835, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !3835, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3835, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3835, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3835, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3874 = !{!3875, !3876, !3877, !3878, !3879, !3880}
!3875 = !DILocalVariable(name: "stream", arg: 1, scope: !3830, file: !763, line: 62, type: !3833)
!3876 = !DILocalVariable(name: "command_name", arg: 2, scope: !3830, file: !763, line: 63, type: !78)
!3877 = !DILocalVariable(name: "package", arg: 3, scope: !3830, file: !763, line: 63, type: !78)
!3878 = !DILocalVariable(name: "version", arg: 4, scope: !3830, file: !763, line: 64, type: !78)
!3879 = !DILocalVariable(name: "authors", arg: 5, scope: !3830, file: !763, line: 65, type: !3873)
!3880 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3830, file: !763, line: 65, type: !70)
!3881 = !DILocation(line: 62, column: 24, scope: !3830)
!3882 = !DILocation(line: 63, column: 30, scope: !3830)
!3883 = !DILocation(line: 63, column: 56, scope: !3830)
!3884 = !DILocation(line: 64, column: 30, scope: !3830)
!3885 = !DILocation(line: 65, column: 39, scope: !3830)
!3886 = !DILocation(line: 65, column: 55, scope: !3830)
!3887 = !DILocation(line: 67, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3830, file: !763, line: 67, column: 7)
!3889 = !DILocation(line: 67, column: 7, scope: !3830)
!3890 = !DILocation(line: 68, column: 5, scope: !3888)
!3891 = !DILocation(line: 70, column: 5, scope: !3888)
!3892 = !DILocation(line: 84, column: 3, scope: !3830)
!3893 = !DILocation(line: 84, column: 3, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3830, file: !763, discriminator: 1)
!3895 = !DILocation(line: 86, column: 3, scope: !3830)
!3896 = !DILocation(line: 86, column: 3, scope: !3894)
!3897 = !DILocation(line: 95, column: 3, scope: !3830)
!3898 = !DILocation(line: 99, column: 7, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3830, file: !763, line: 96, column: 5)
!3900 = !DILocation(line: 102, column: 7, scope: !3899)
!3901 = !DILocation(line: 102, column: 7, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !3899, file: !763, discriminator: 1)
!3903 = !DILocation(line: 103, column: 7, scope: !3899)
!3904 = !DILocation(line: 106, column: 7, scope: !3899)
!3905 = !DILocation(line: 106, column: 7, scope: !3902)
!3906 = !DILocation(line: 107, column: 7, scope: !3899)
!3907 = !DILocation(line: 110, column: 7, scope: !3899)
!3908 = !DILocation(line: 110, column: 7, scope: !3902)
!3909 = !DILocation(line: 112, column: 7, scope: !3899)
!3910 = !DILocation(line: 117, column: 7, scope: !3899)
!3911 = !DILocation(line: 117, column: 7, scope: !3902)
!3912 = !DILocation(line: 119, column: 7, scope: !3899)
!3913 = !DILocation(line: 124, column: 7, scope: !3899)
!3914 = !DILocation(line: 124, column: 7, scope: !3902)
!3915 = !DILocation(line: 126, column: 7, scope: !3899)
!3916 = !DILocation(line: 131, column: 7, scope: !3899)
!3917 = !DILocation(line: 131, column: 7, scope: !3902)
!3918 = !DILocation(line: 134, column: 7, scope: !3899)
!3919 = !DILocation(line: 139, column: 7, scope: !3899)
!3920 = !DILocation(line: 139, column: 7, scope: !3902)
!3921 = !DILocation(line: 142, column: 7, scope: !3899)
!3922 = !DILocation(line: 147, column: 7, scope: !3899)
!3923 = !DILocation(line: 147, column: 7, scope: !3902)
!3924 = !DILocation(line: 151, column: 7, scope: !3899)
!3925 = !DILocation(line: 156, column: 7, scope: !3899)
!3926 = !DILocation(line: 156, column: 7, scope: !3902)
!3927 = !DILocation(line: 160, column: 7, scope: !3899)
!3928 = !DILocation(line: 167, column: 7, scope: !3899)
!3929 = !DILocation(line: 167, column: 7, scope: !3902)
!3930 = !DILocation(line: 171, column: 7, scope: !3899)
!3931 = !DILocation(line: 173, column: 1, scope: !3830)
!3932 = distinct !DISubprogram(name: "version_etc_ar", scope: !763, file: !763, line: 180, type: !3933, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3833, !78, !78, !78, !3873}
!3935 = !{!3936, !3937, !3938, !3939, !3940, !3941}
!3936 = !DILocalVariable(name: "stream", arg: 1, scope: !3932, file: !763, line: 180, type: !3833)
!3937 = !DILocalVariable(name: "command_name", arg: 2, scope: !3932, file: !763, line: 181, type: !78)
!3938 = !DILocalVariable(name: "package", arg: 3, scope: !3932, file: !763, line: 181, type: !78)
!3939 = !DILocalVariable(name: "version", arg: 4, scope: !3932, file: !763, line: 182, type: !78)
!3940 = !DILocalVariable(name: "authors", arg: 5, scope: !3932, file: !763, line: 182, type: !3873)
!3941 = !DILocalVariable(name: "n_authors", scope: !3932, file: !763, line: 184, type: !70)
!3942 = !DILocation(line: 180, column: 23, scope: !3932)
!3943 = !DILocation(line: 181, column: 29, scope: !3932)
!3944 = !DILocation(line: 181, column: 55, scope: !3932)
!3945 = !DILocation(line: 182, column: 29, scope: !3932)
!3946 = !DILocation(line: 182, column: 59, scope: !3932)
!3947 = !DILocation(line: 184, column: 10, scope: !3932)
!3948 = !DILocation(line: 186, column: 8, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3932, file: !763, line: 186, column: 3)
!3950 = !DILocation(line: 186, column: 23, scope: !3951)
!3951 = !DILexicalBlockFile(scope: !3952, file: !763, discriminator: 1)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !763, line: 186, column: 3)
!3953 = !DILocation(line: 186, column: 3, scope: !3954)
!3954 = !DILexicalBlockFile(scope: !3949, file: !763, discriminator: 1)
!3955 = !DILocation(line: 186, column: 52, scope: !3956)
!3956 = !DILexicalBlockFile(scope: !3952, file: !763, discriminator: 3)
!3957 = distinct !{!3957, !3958, !3959}
!3958 = !DILocation(line: 186, column: 3, scope: !3949)
!3959 = !DILocation(line: 187, column: 5, scope: !3949)
!3960 = !DILocation(line: 188, column: 3, scope: !3932)
!3961 = !DILocation(line: 189, column: 1, scope: !3932)
!3962 = distinct !DISubprogram(name: "version_etc_va", scope: !763, file: !763, line: 196, type: !3963, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !3972)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !3833, !78, !78, !78, !3965}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !760, line: 189, size: 192, elements: !3967)
!3967 = !{!3968, !3969, !3970, !3971}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3966, file: !760, line: 189, baseType: !151, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3966, file: !760, line: 189, baseType: !151, size: 32, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3966, file: !760, line: 189, baseType: !65, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3966, file: !760, line: 189, baseType: !65, size: 64, offset: 128)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3973 = !DILocalVariable(name: "stream", arg: 1, scope: !3962, file: !763, line: 196, type: !3833)
!3974 = !DILocalVariable(name: "command_name", arg: 2, scope: !3962, file: !763, line: 197, type: !78)
!3975 = !DILocalVariable(name: "package", arg: 3, scope: !3962, file: !763, line: 197, type: !78)
!3976 = !DILocalVariable(name: "version", arg: 4, scope: !3962, file: !763, line: 198, type: !78)
!3977 = !DILocalVariable(name: "authors", arg: 5, scope: !3962, file: !763, line: 198, type: !3965)
!3978 = !DILocalVariable(name: "n_authors", scope: !3962, file: !763, line: 200, type: !70)
!3979 = !DILocalVariable(name: "authtab", scope: !3962, file: !763, line: 201, type: !3980)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !351)
!3981 = !DILocation(line: 196, column: 23, scope: !3962)
!3982 = !DILocation(line: 197, column: 29, scope: !3962)
!3983 = !DILocation(line: 197, column: 55, scope: !3962)
!3984 = !DILocation(line: 198, column: 29, scope: !3962)
!3985 = !DILocation(line: 198, column: 46, scope: !3962)
!3986 = !DILocation(line: 201, column: 3, scope: !3962)
!3987 = !DILocation(line: 201, column: 15, scope: !3962)
!3988 = !DILocation(line: 200, column: 10, scope: !3962)
!3989 = !DILocation(line: 205, column: 35, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3991, file: !763, discriminator: 1)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !763, line: 203, column: 3)
!3992 = distinct !DILexicalBlock(scope: !3962, file: !763, line: 203, column: 3)
!3993 = !DILocation(line: 205, column: 35, scope: !3994)
!3994 = !DILexicalBlockFile(scope: !3991, file: !763, discriminator: 2)
!3995 = !DILocation(line: 205, column: 35, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3991, file: !763, discriminator: 3)
!3997 = !DILocation(line: 205, column: 35, scope: !3998)
!3998 = !DILexicalBlockFile(scope: !3991, file: !763, discriminator: 4)
!3999 = !DILocation(line: 205, column: 14, scope: !3998)
!4000 = !DILocation(line: 205, column: 33, scope: !3998)
!4001 = !DILocation(line: 205, column: 67, scope: !3998)
!4002 = !DILocation(line: 203, column: 3, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3992, file: !763, discriminator: 1)
!4004 = !DILocation(line: 208, column: 3, scope: !3962)
!4005 = !DILocation(line: 210, column: 1, scope: !3962)
!4006 = distinct !DISubprogram(name: "version_etc", scope: !763, file: !763, line: 227, type: !4007, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !4009)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{null, !3833, !78, !78, !78, null}
!4009 = !{!4010, !4011, !4012, !4013, !4014}
!4010 = !DILocalVariable(name: "stream", arg: 1, scope: !4006, file: !763, line: 227, type: !3833)
!4011 = !DILocalVariable(name: "command_name", arg: 2, scope: !4006, file: !763, line: 228, type: !78)
!4012 = !DILocalVariable(name: "package", arg: 3, scope: !4006, file: !763, line: 228, type: !78)
!4013 = !DILocalVariable(name: "version", arg: 4, scope: !4006, file: !763, line: 229, type: !78)
!4014 = !DILocalVariable(name: "authors", scope: !4006, file: !763, line: 231, type: !4015)
!4015 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !17, line: 80, baseType: !4016)
!4016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4017, line: 50, baseType: !4018)
!4017 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !760, line: 231, baseType: !4019)
!4019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3966, size: 192, elements: !57)
!4020 = !DILocation(line: 227, column: 20, scope: !4006)
!4021 = !DILocation(line: 228, column: 26, scope: !4006)
!4022 = !DILocation(line: 228, column: 52, scope: !4006)
!4023 = !DILocation(line: 229, column: 26, scope: !4006)
!4024 = !DILocation(line: 231, column: 3, scope: !4006)
!4025 = !DILocation(line: 231, column: 11, scope: !4006)
!4026 = !DILocation(line: 233, column: 3, scope: !4006)
!4027 = !DILocation(line: 234, column: 3, scope: !4006)
!4028 = !DILocation(line: 235, column: 3, scope: !4006)
!4029 = !DILocation(line: 236, column: 1, scope: !4006)
!4030 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !763, file: !763, line: 239, type: !401, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !759, variables: !310)
!4031 = !DILocation(line: 245, column: 3, scope: !4030)
!4032 = !DILocation(line: 245, column: 3, scope: !4033)
!4033 = !DILexicalBlockFile(scope: !4030, file: !763, discriminator: 1)
!4034 = !DILocation(line: 251, column: 3, scope: !4030)
!4035 = !DILocation(line: 251, column: 3, scope: !4033)
!4036 = !DILocation(line: 256, column: 3, scope: !4030)
!4037 = !DILocation(line: 256, column: 3, scope: !4033)
!4038 = !DILocation(line: 258, column: 1, scope: !4030)
!4039 = distinct !DISubprogram(name: "xnmalloc", scope: !771, file: !771, line: 105, type: !4040, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!65, !70, !70}
!4042 = !{!4043, !4044}
!4043 = !DILocalVariable(name: "n", arg: 1, scope: !4039, file: !771, line: 105, type: !70)
!4044 = !DILocalVariable(name: "s", arg: 2, scope: !4039, file: !771, line: 105, type: !70)
!4045 = !DILocation(line: 105, column: 18, scope: !4039)
!4046 = !DILocation(line: 105, column: 28, scope: !4039)
!4047 = !DILocation(line: 107, column: 7, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4039, file: !771, line: 107, column: 7)
!4049 = !DILocation(line: 107, column: 7, scope: !4039)
!4050 = !DILocation(line: 108, column: 5, scope: !4048)
!4051 = !DILocation(line: 109, column: 21, scope: !4039)
!4052 = !DILocalVariable(name: "n", arg: 1, scope: !4053, file: !4054, line: 39, type: !70)
!4053 = distinct !DISubprogram(name: "xmalloc", scope: !4054, file: !4054, line: 39, type: !132, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4055)
!4054 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4055 = !{!4052, !4056}
!4056 = !DILocalVariable(name: "p", scope: !4053, file: !4054, line: 41, type: !65)
!4057 = !DILocation(line: 39, column: 17, scope: !4053, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 109, column: 10, scope: !4039)
!4059 = !DILocation(line: 41, column: 13, scope: !4053, inlinedAt: !4058)
!4060 = !DILocation(line: 41, column: 9, scope: !4053, inlinedAt: !4058)
!4061 = !DILocation(line: 42, column: 8, scope: !4062, inlinedAt: !4058)
!4062 = distinct !DILexicalBlock(scope: !4053, file: !4054, line: 42, column: 7)
!4063 = !DILocation(line: 42, column: 15, scope: !4064, inlinedAt: !4058)
!4064 = !DILexicalBlockFile(scope: !4062, file: !4054, discriminator: 1)
!4065 = !DILocation(line: 42, column: 10, scope: !4062, inlinedAt: !4058)
!4066 = !DILocation(line: 43, column: 5, scope: !4062, inlinedAt: !4058)
!4067 = !DILocation(line: 109, column: 3, scope: !4039)
!4068 = !DILocation(line: 39, column: 17, scope: !4053)
!4069 = !DILocation(line: 41, column: 13, scope: !4053)
!4070 = !DILocation(line: 41, column: 9, scope: !4053)
!4071 = !DILocation(line: 42, column: 8, scope: !4062)
!4072 = !DILocation(line: 42, column: 15, scope: !4064)
!4073 = !DILocation(line: 42, column: 10, scope: !4062)
!4074 = !DILocation(line: 43, column: 5, scope: !4062)
!4075 = !DILocation(line: 44, column: 3, scope: !4053)
!4076 = distinct !DISubprogram(name: "xnrealloc", scope: !771, file: !771, line: 118, type: !4077, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4079)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!65, !65, !70, !70}
!4079 = !{!4080, !4081, !4082}
!4080 = !DILocalVariable(name: "p", arg: 1, scope: !4076, file: !771, line: 118, type: !65)
!4081 = !DILocalVariable(name: "n", arg: 2, scope: !4076, file: !771, line: 118, type: !70)
!4082 = !DILocalVariable(name: "s", arg: 3, scope: !4076, file: !771, line: 118, type: !70)
!4083 = !DILocation(line: 118, column: 18, scope: !4076)
!4084 = !DILocation(line: 118, column: 28, scope: !4076)
!4085 = !DILocation(line: 118, column: 38, scope: !4076)
!4086 = !DILocation(line: 120, column: 7, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4076, file: !771, line: 120, column: 7)
!4088 = !DILocation(line: 120, column: 7, scope: !4076)
!4089 = !DILocation(line: 121, column: 5, scope: !4087)
!4090 = !DILocation(line: 122, column: 25, scope: !4076)
!4091 = !DILocalVariable(name: "p", arg: 1, scope: !4092, file: !4054, line: 51, type: !65)
!4092 = distinct !DISubprogram(name: "xrealloc", scope: !4054, file: !4054, line: 51, type: !136, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4093)
!4093 = !{!4091, !4094}
!4094 = !DILocalVariable(name: "n", arg: 2, scope: !4092, file: !4054, line: 51, type: !70)
!4095 = !DILocation(line: 51, column: 17, scope: !4092, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 122, column: 10, scope: !4076)
!4097 = !DILocation(line: 51, column: 27, scope: !4092, inlinedAt: !4096)
!4098 = !DILocation(line: 53, column: 8, scope: !4099, inlinedAt: !4096)
!4099 = distinct !DILexicalBlock(scope: !4092, file: !4054, line: 53, column: 7)
!4100 = !DILocation(line: 53, column: 13, scope: !4101, inlinedAt: !4096)
!4101 = !DILexicalBlockFile(scope: !4099, file: !4054, discriminator: 1)
!4102 = !DILocation(line: 53, column: 10, scope: !4099, inlinedAt: !4096)
!4103 = !DILocation(line: 57, column: 7, scope: !4104, inlinedAt: !4096)
!4104 = distinct !DILexicalBlock(scope: !4099, file: !4054, line: 54, column: 5)
!4105 = !DILocation(line: 58, column: 7, scope: !4104, inlinedAt: !4096)
!4106 = !DILocation(line: 61, column: 7, scope: !4092, inlinedAt: !4096)
!4107 = !DILocation(line: 62, column: 8, scope: !4108, inlinedAt: !4096)
!4108 = distinct !DILexicalBlock(scope: !4092, file: !4054, line: 62, column: 7)
!4109 = !DILocation(line: 62, column: 13, scope: !4110, inlinedAt: !4096)
!4110 = !DILexicalBlockFile(scope: !4108, file: !4054, discriminator: 1)
!4111 = !DILocation(line: 62, column: 10, scope: !4108, inlinedAt: !4096)
!4112 = !DILocation(line: 63, column: 5, scope: !4108, inlinedAt: !4096)
!4113 = !DILocation(line: 122, column: 3, scope: !4076)
!4114 = !DILocation(line: 51, column: 17, scope: !4092)
!4115 = !DILocation(line: 51, column: 27, scope: !4092)
!4116 = !DILocation(line: 53, column: 8, scope: !4099)
!4117 = !DILocation(line: 53, column: 13, scope: !4101)
!4118 = !DILocation(line: 53, column: 10, scope: !4099)
!4119 = !DILocation(line: 57, column: 7, scope: !4104)
!4120 = !DILocation(line: 58, column: 7, scope: !4104)
!4121 = !DILocation(line: 61, column: 7, scope: !4092)
!4122 = !DILocation(line: 62, column: 8, scope: !4108)
!4123 = !DILocation(line: 62, column: 13, scope: !4110)
!4124 = !DILocation(line: 62, column: 10, scope: !4108)
!4125 = !DILocation(line: 63, column: 5, scope: !4108)
!4126 = !DILocation(line: 65, column: 1, scope: !4092)
!4127 = !DILocation(line: 180, column: 19, scope: !772)
!4128 = !DILocation(line: 180, column: 30, scope: !772)
!4129 = !DILocation(line: 180, column: 41, scope: !772)
!4130 = !DILocation(line: 182, column: 14, scope: !772)
!4131 = !DILocation(line: 182, column: 10, scope: !772)
!4132 = !DILocation(line: 184, column: 9, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !772, file: !771, line: 184, column: 7)
!4134 = !DILocation(line: 184, column: 7, scope: !772)
!4135 = !DILocation(line: 186, column: 13, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4137, file: !771, line: 186, column: 11)
!4137 = distinct !DILexicalBlock(scope: !4133, file: !771, line: 185, column: 5)
!4138 = !DILocation(line: 186, column: 11, scope: !4137)
!4139 = !DILocation(line: 194, column: 30, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4136, file: !771, line: 187, column: 9)
!4141 = !DILocation(line: 195, column: 16, scope: !4140)
!4142 = !DILocation(line: 195, column: 13, scope: !4140)
!4143 = !DILocation(line: 196, column: 9, scope: !4140)
!4144 = !DILocation(line: 204, column: 69, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !771, line: 204, column: 11)
!4146 = distinct !DILexicalBlock(scope: !4133, file: !771, line: 199, column: 5)
!4147 = !DILocation(line: 205, column: 11, scope: !4145)
!4148 = !DILocation(line: 204, column: 11, scope: !4146)
!4149 = !DILocation(line: 206, column: 9, scope: !4145)
!4150 = !DILocation(line: 210, column: 7, scope: !772)
!4151 = !DILocation(line: 211, column: 25, scope: !772)
!4152 = !DILocation(line: 51, column: 17, scope: !4092, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 211, column: 10, scope: !772)
!4154 = !DILocation(line: 51, column: 27, scope: !4092, inlinedAt: !4153)
!4155 = !DILocation(line: 53, column: 10, scope: !4099, inlinedAt: !4153)
!4156 = !DILocation(line: 207, column: 14, scope: !4146)
!4157 = !DILocation(line: 207, column: 18, scope: !4146)
!4158 = !DILocation(line: 207, column: 9, scope: !4146)
!4159 = !DILocation(line: 53, column: 8, scope: !4099, inlinedAt: !4153)
!4160 = !DILocation(line: 57, column: 7, scope: !4104, inlinedAt: !4153)
!4161 = !DILocation(line: 58, column: 7, scope: !4104, inlinedAt: !4153)
!4162 = !DILocation(line: 61, column: 7, scope: !4092, inlinedAt: !4153)
!4163 = !DILocation(line: 62, column: 8, scope: !4108, inlinedAt: !4153)
!4164 = !DILocation(line: 62, column: 13, scope: !4110, inlinedAt: !4153)
!4165 = !DILocation(line: 62, column: 10, scope: !4108, inlinedAt: !4153)
!4166 = !DILocation(line: 63, column: 5, scope: !4108, inlinedAt: !4153)
!4167 = !DILocation(line: 211, column: 3, scope: !772)
!4168 = distinct !DISubprogram(name: "xcharalloc", scope: !771, file: !771, line: 220, type: !3106, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4169)
!4169 = !{!4170}
!4170 = !DILocalVariable(name: "n", arg: 1, scope: !4168, file: !771, line: 220, type: !70)
!4171 = !DILocation(line: 220, column: 20, scope: !4168)
!4172 = !DILocation(line: 39, column: 17, scope: !4053, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 222, column: 10, scope: !4168)
!4174 = !DILocation(line: 41, column: 13, scope: !4053, inlinedAt: !4173)
!4175 = !DILocation(line: 41, column: 9, scope: !4053, inlinedAt: !4173)
!4176 = !DILocation(line: 42, column: 8, scope: !4062, inlinedAt: !4173)
!4177 = !DILocation(line: 42, column: 15, scope: !4064, inlinedAt: !4173)
!4178 = !DILocation(line: 42, column: 10, scope: !4062, inlinedAt: !4173)
!4179 = !DILocation(line: 43, column: 5, scope: !4062, inlinedAt: !4173)
!4180 = !DILocation(line: 222, column: 3, scope: !4168)
!4181 = distinct !DISubprogram(name: "x2realloc", scope: !4054, file: !4054, line: 74, type: !4182, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!65, !65, !775}
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "p", arg: 1, scope: !4181, file: !4054, line: 74, type: !65)
!4186 = !DILocalVariable(name: "pn", arg: 2, scope: !4181, file: !4054, line: 74, type: !775)
!4187 = !DILocation(line: 74, column: 18, scope: !4181)
!4188 = !DILocation(line: 74, column: 29, scope: !4181)
!4189 = !DILocation(line: 180, column: 19, scope: !772, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 76, column: 10, scope: !4181)
!4191 = !DILocation(line: 180, column: 30, scope: !772, inlinedAt: !4190)
!4192 = !DILocation(line: 180, column: 41, scope: !772, inlinedAt: !4190)
!4193 = !DILocation(line: 182, column: 14, scope: !772, inlinedAt: !4190)
!4194 = !DILocation(line: 182, column: 10, scope: !772, inlinedAt: !4190)
!4195 = !DILocation(line: 184, column: 9, scope: !4133, inlinedAt: !4190)
!4196 = !DILocation(line: 184, column: 7, scope: !772, inlinedAt: !4190)
!4197 = !DILocation(line: 186, column: 13, scope: !4136, inlinedAt: !4190)
!4198 = !DILocation(line: 186, column: 11, scope: !4137, inlinedAt: !4190)
!4199 = !DILocation(line: 210, column: 7, scope: !772, inlinedAt: !4190)
!4200 = !DILocation(line: 51, column: 17, scope: !4092, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 211, column: 10, scope: !772, inlinedAt: !4190)
!4202 = !DILocation(line: 51, column: 27, scope: !4092, inlinedAt: !4201)
!4203 = !DILocation(line: 53, column: 10, scope: !4099, inlinedAt: !4201)
!4204 = !DILocation(line: 205, column: 11, scope: !4145, inlinedAt: !4190)
!4205 = !DILocation(line: 204, column: 11, scope: !4146, inlinedAt: !4190)
!4206 = !DILocation(line: 206, column: 9, scope: !4145, inlinedAt: !4190)
!4207 = !DILocation(line: 207, column: 14, scope: !4146, inlinedAt: !4190)
!4208 = !DILocation(line: 207, column: 18, scope: !4146, inlinedAt: !4190)
!4209 = !DILocation(line: 207, column: 9, scope: !4146, inlinedAt: !4190)
!4210 = !DILocation(line: 53, column: 8, scope: !4099, inlinedAt: !4201)
!4211 = !DILocation(line: 57, column: 7, scope: !4104, inlinedAt: !4201)
!4212 = !DILocation(line: 58, column: 7, scope: !4104, inlinedAt: !4201)
!4213 = !DILocation(line: 61, column: 7, scope: !4092, inlinedAt: !4201)
!4214 = !DILocation(line: 62, column: 8, scope: !4108, inlinedAt: !4201)
!4215 = !DILocation(line: 62, column: 13, scope: !4110, inlinedAt: !4201)
!4216 = !DILocation(line: 62, column: 10, scope: !4108, inlinedAt: !4201)
!4217 = !DILocation(line: 63, column: 5, scope: !4108, inlinedAt: !4201)
!4218 = !DILocation(line: 76, column: 3, scope: !4181)
!4219 = distinct !DISubprogram(name: "xzalloc", scope: !4054, file: !4054, line: 84, type: !132, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4220)
!4220 = !{!4221}
!4221 = !DILocalVariable(name: "s", arg: 1, scope: !4219, file: !4054, line: 84, type: !70)
!4222 = !DILocation(line: 84, column: 17, scope: !4219)
!4223 = !DILocation(line: 39, column: 17, scope: !4053, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 86, column: 18, scope: !4219)
!4225 = !DILocation(line: 41, column: 13, scope: !4053, inlinedAt: !4224)
!4226 = !DILocation(line: 41, column: 9, scope: !4053, inlinedAt: !4224)
!4227 = !DILocation(line: 42, column: 8, scope: !4062, inlinedAt: !4224)
!4228 = !DILocation(line: 42, column: 15, scope: !4064, inlinedAt: !4224)
!4229 = !DILocation(line: 42, column: 10, scope: !4062, inlinedAt: !4224)
!4230 = !DILocation(line: 43, column: 5, scope: !4062, inlinedAt: !4224)
!4231 = !DILocation(line: 86, column: 10, scope: !4219)
!4232 = !DILocation(line: 86, column: 3, scope: !4219)
!4233 = distinct !DISubprogram(name: "xcalloc", scope: !4054, file: !4054, line: 93, type: !4040, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4234)
!4234 = !{!4235, !4236, !4237}
!4235 = !DILocalVariable(name: "n", arg: 1, scope: !4233, file: !4054, line: 93, type: !70)
!4236 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !4054, line: 93, type: !70)
!4237 = !DILocalVariable(name: "p", scope: !4233, file: !4054, line: 95, type: !65)
!4238 = !DILocation(line: 93, column: 17, scope: !4233)
!4239 = !DILocation(line: 93, column: 27, scope: !4233)
!4240 = !DILocation(line: 100, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4233, file: !4054, line: 100, column: 7)
!4242 = !DILocation(line: 101, column: 7, scope: !4241)
!4243 = !DILocation(line: 101, column: 18, scope: !4244)
!4244 = !DILexicalBlockFile(scope: !4241, file: !4054, discriminator: 1)
!4245 = !DILocation(line: 95, column: 9, scope: !4233)
!4246 = !DILocation(line: 101, column: 16, scope: !4244)
!4247 = !DILocation(line: 100, column: 7, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !4233, file: !4054, discriminator: 1)
!4249 = !DILocation(line: 102, column: 5, scope: !4241)
!4250 = !DILocation(line: 103, column: 3, scope: !4233)
!4251 = distinct !DISubprogram(name: "xmemdup", scope: !4054, file: !4054, line: 111, type: !4252, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!65, !242, !70}
!4254 = !{!4255, !4256}
!4255 = !DILocalVariable(name: "p", arg: 1, scope: !4251, file: !4054, line: 111, type: !242)
!4256 = !DILocalVariable(name: "s", arg: 2, scope: !4251, file: !4054, line: 111, type: !70)
!4257 = !DILocation(line: 111, column: 22, scope: !4251)
!4258 = !DILocation(line: 111, column: 32, scope: !4251)
!4259 = !DILocation(line: 39, column: 17, scope: !4053, inlinedAt: !4260)
!4260 = distinct !DILocation(line: 113, column: 18, scope: !4251)
!4261 = !DILocation(line: 41, column: 13, scope: !4053, inlinedAt: !4260)
!4262 = !DILocation(line: 41, column: 9, scope: !4053, inlinedAt: !4260)
!4263 = !DILocation(line: 42, column: 8, scope: !4062, inlinedAt: !4260)
!4264 = !DILocation(line: 42, column: 15, scope: !4064, inlinedAt: !4260)
!4265 = !DILocation(line: 42, column: 10, scope: !4062, inlinedAt: !4260)
!4266 = !DILocation(line: 43, column: 5, scope: !4062, inlinedAt: !4260)
!4267 = !DILocation(line: 113, column: 10, scope: !4251)
!4268 = !DILocation(line: 113, column: 3, scope: !4251)
!4269 = distinct !DISubprogram(name: "xstrdup", scope: !4054, file: !4054, line: 119, type: !1637, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !767, variables: !4270)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "string", arg: 1, scope: !4269, file: !4054, line: 119, type: !78)
!4272 = !DILocation(line: 119, column: 22, scope: !4269)
!4273 = !DILocation(line: 121, column: 27, scope: !4269)
!4274 = !DILocation(line: 121, column: 43, scope: !4269)
!4275 = !DILocation(line: 111, column: 22, scope: !4251, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 121, column: 10, scope: !4277)
!4277 = !DILexicalBlockFile(scope: !4269, file: !4054, discriminator: 1)
!4278 = !DILocation(line: 111, column: 32, scope: !4251, inlinedAt: !4276)
!4279 = !DILocation(line: 39, column: 17, scope: !4053, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 113, column: 18, scope: !4251, inlinedAt: !4276)
!4281 = !DILocation(line: 41, column: 13, scope: !4053, inlinedAt: !4280)
!4282 = !DILocation(line: 41, column: 9, scope: !4053, inlinedAt: !4280)
!4283 = !DILocation(line: 42, column: 8, scope: !4062, inlinedAt: !4280)
!4284 = !DILocation(line: 42, column: 15, scope: !4064, inlinedAt: !4280)
!4285 = !DILocation(line: 42, column: 10, scope: !4062, inlinedAt: !4280)
!4286 = !DILocation(line: 43, column: 5, scope: !4062, inlinedAt: !4280)
!4287 = !DILocation(line: 113, column: 10, scope: !4251, inlinedAt: !4276)
!4288 = !DILocation(line: 121, column: 3, scope: !4269)
!4289 = distinct !DISubprogram(name: "xalloc_die", scope: !4290, file: !4290, line: 32, type: !401, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !784, variables: !310)
!4290 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4291 = !DILocation(line: 34, column: 10, scope: !4289)
!4292 = !DILocation(line: 34, column: 33, scope: !4289)
!4293 = !DILocation(line: 34, column: 3, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4289, file: !4290, discriminator: 1)
!4295 = !DILocation(line: 40, column: 3, scope: !4289)
!4296 = distinct !DISubprogram(name: "xstrndup", scope: !4297, file: !4297, line: 30, type: !3320, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !786, variables: !4298)
!4297 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4298 = !{!4299, !4300, !4301}
!4299 = !DILocalVariable(name: "string", arg: 1, scope: !4296, file: !4297, line: 30, type: !78)
!4300 = !DILocalVariable(name: "n", arg: 2, scope: !4296, file: !4297, line: 30, type: !70)
!4301 = !DILocalVariable(name: "s", scope: !4296, file: !4297, line: 32, type: !24)
!4302 = !DILocation(line: 30, column: 23, scope: !4296)
!4303 = !DILocation(line: 30, column: 38, scope: !4296)
!4304 = !DILocation(line: 32, column: 13, scope: !4296)
!4305 = !DILocation(line: 32, column: 9, scope: !4296)
!4306 = !DILocation(line: 33, column: 9, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4296, file: !4297, line: 33, column: 7)
!4308 = !DILocation(line: 33, column: 7, scope: !4296)
!4309 = !DILocation(line: 34, column: 5, scope: !4307)
!4310 = !DILocation(line: 35, column: 3, scope: !4296)
!4311 = distinct !DISubprogram(name: "rpl_calloc", scope: !4312, file: !4312, line: 42, type: !4040, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !788, variables: !4313)
!4312 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4313 = !{!4314, !4315, !4316, !4317}
!4314 = !DILocalVariable(name: "n", arg: 1, scope: !4311, file: !4312, line: 42, type: !70)
!4315 = !DILocalVariable(name: "s", arg: 2, scope: !4311, file: !4312, line: 42, type: !70)
!4316 = !DILocalVariable(name: "result", scope: !4311, file: !4312, line: 44, type: !65)
!4317 = !DILocalVariable(name: "bytes", scope: !4318, file: !4312, line: 56, type: !70)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !4312, line: 53, column: 5)
!4319 = distinct !DILexicalBlock(scope: !4311, file: !4312, line: 47, column: 7)
!4320 = !DILocation(line: 42, column: 20, scope: !4311)
!4321 = !DILocation(line: 42, column: 30, scope: !4311)
!4322 = !DILocation(line: 47, column: 9, scope: !4319)
!4323 = !DILocation(line: 47, column: 19, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !4319, file: !4312, discriminator: 1)
!4325 = !DILocation(line: 47, column: 14, scope: !4319)
!4326 = !DILocation(line: 56, column: 24, scope: !4318)
!4327 = !DILocation(line: 56, column: 14, scope: !4318)
!4328 = !DILocation(line: 57, column: 17, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4318, file: !4312, line: 57, column: 11)
!4330 = !DILocation(line: 57, column: 21, scope: !4329)
!4331 = !DILocation(line: 57, column: 11, scope: !4318)
!4332 = !DILocation(line: 59, column: 11, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !4312, line: 58, column: 9)
!4334 = !DILocation(line: 59, column: 17, scope: !4333)
!4335 = !DILocation(line: 65, column: 12, scope: !4311)
!4336 = !DILocation(line: 44, column: 9, scope: !4311)
!4337 = !DILocation(line: 72, column: 3, scope: !4311)
!4338 = !DILocation(line: 73, column: 1, scope: !4311)
!4339 = distinct !DISubprogram(name: "rpl_fclose", scope: !4340, file: !4340, line: 56, type: !4341, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !790, variables: !4383)
!4340 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!22, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !4345)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4345, file: !19, line: 242, baseType: !22, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4345, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4345, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4345, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4345, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4345, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4345, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4345, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4345, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4345, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4345, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4345, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4345, file: !19, line: 260, baseType: !4360, size: 64, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4362)
!4362 = !{!4363, !4364, !4366}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4361, file: !19, line: 157, baseType: !4360, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4361, file: !19, line: 158, baseType: !4365, size: 64, offset: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4361, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4345, file: !19, line: 262, baseType: !4365, size: 64, offset: 832)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4345, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4345, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4345, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4345, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4345, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4345, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4345, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4345, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4345, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4345, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4345, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4345, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4345, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4345, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4345, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DILocalVariable(name: "fp", arg: 1, scope: !4339, file: !4340, line: 56, type: !4343)
!4385 = !DILocalVariable(name: "saved_errno", scope: !4339, file: !4340, line: 58, type: !22)
!4386 = !DILocalVariable(name: "fd", scope: !4339, file: !4340, line: 59, type: !22)
!4387 = !DILocalVariable(name: "result", scope: !4339, file: !4340, line: 60, type: !22)
!4388 = !DILocation(line: 56, column: 19, scope: !4339)
!4389 = !DILocation(line: 58, column: 7, scope: !4339)
!4390 = !DILocation(line: 60, column: 7, scope: !4339)
!4391 = !DILocation(line: 63, column: 8, scope: !4339)
!4392 = !DILocation(line: 59, column: 7, scope: !4339)
!4393 = !DILocation(line: 64, column: 10, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4339, file: !4340, line: 64, column: 7)
!4395 = !DILocation(line: 64, column: 7, scope: !4339)
!4396 = !DILocation(line: 65, column: 12, scope: !4394)
!4397 = !DILocation(line: 65, column: 5, scope: !4394)
!4398 = !DILocation(line: 70, column: 9, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4339, file: !4340, line: 70, column: 7)
!4400 = !DILocation(line: 70, column: 23, scope: !4399)
!4401 = !DILocation(line: 70, column: 33, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4399, file: !4340, discriminator: 1)
!4403 = !DILocation(line: 70, column: 26, scope: !4404)
!4404 = !DILexicalBlockFile(scope: !4399, file: !4340, discriminator: 3)
!4405 = !DILocation(line: 70, column: 59, scope: !4402)
!4406 = !DILocation(line: 71, column: 7, scope: !4399)
!4407 = !DILocation(line: 71, column: 10, scope: !4402)
!4408 = !DILocation(line: 70, column: 7, scope: !4409)
!4409 = !DILexicalBlockFile(scope: !4339, file: !4340, discriminator: 2)
!4410 = !DILocation(line: 98, column: 12, scope: !4339)
!4411 = !DILocation(line: 103, column: 7, scope: !4339)
!4412 = !DILocation(line: 72, column: 19, scope: !4399)
!4413 = !DILocation(line: 103, column: 19, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4339, file: !4340, line: 103, column: 7)
!4415 = !DILocation(line: 105, column: 13, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4414, file: !4340, line: 104, column: 5)
!4417 = !DILocation(line: 107, column: 5, scope: !4416)
!4418 = !DILocation(line: 110, column: 1, scope: !4339)
!4419 = distinct !DISubprogram(name: "rpl_fflush", scope: !4420, file: !4420, line: 127, type: !4421, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !792, variables: !4463)
!4420 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!22, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4425, file: !19, line: 242, baseType: !22, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4425, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4425, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4425, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4425, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4425, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4425, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4425, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4425, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4425, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4425, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4425, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4425, file: !19, line: 260, baseType: !4440, size: 64, offset: 768)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4442)
!4442 = !{!4443, !4444, !4446}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4441, file: !19, line: 157, baseType: !4440, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4441, file: !19, line: 158, baseType: !4445, size: 64, offset: 64)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4441, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4425, file: !19, line: 262, baseType: !4445, size: 64, offset: 832)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4425, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4425, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4425, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4425, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4425, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4425, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4425, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4425, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4425, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4425, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4425, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4425, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4425, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4425, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4425, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4463 = !{!4464}
!4464 = !DILocalVariable(name: "stream", arg: 1, scope: !4419, file: !4420, line: 127, type: !4423)
!4465 = !DILocation(line: 127, column: 19, scope: !4419)
!4466 = !DILocation(line: 148, column: 14, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4419, file: !4420, line: 148, column: 7)
!4468 = !DILocation(line: 148, column: 22, scope: !4467)
!4469 = !DILocation(line: 148, column: 27, scope: !4470)
!4470 = !DILexicalBlockFile(scope: !4467, file: !4420, discriminator: 1)
!4471 = !DILocation(line: 148, column: 7, scope: !4472)
!4472 = !DILexicalBlockFile(scope: !4419, file: !4420, discriminator: 1)
!4473 = !DILocation(line: 149, column: 12, scope: !4467)
!4474 = !DILocation(line: 149, column: 5, scope: !4467)
!4475 = !DILocalVariable(name: "fp", arg: 1, scope: !4476, file: !4420, line: 40, type: !4423)
!4476 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4420, file: !4420, line: 40, type: !4477, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !792, variables: !4479)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4423}
!4479 = !{!4475}
!4480 = !DILocation(line: 40, column: 48, scope: !4476, inlinedAt: !4481)
!4481 = distinct !DILocation(line: 153, column: 3, scope: !4419)
!4482 = !DILocation(line: 42, column: 11, scope: !4483, inlinedAt: !4481)
!4483 = distinct !DILexicalBlock(scope: !4476, file: !4420, line: 42, column: 7)
!4484 = !{!4485, !920, i64 0}
!4485 = !{!"_IO_FILE", !920, i64 0, !825, i64 8, !825, i64 16, !825, i64 24, !825, i64 32, !825, i64 40, !825, i64 48, !825, i64 56, !825, i64 64, !825, i64 72, !825, i64 80, !825, i64 88, !825, i64 96, !825, i64 104, !920, i64 112, !920, i64 116, !1109, i64 120, !1214, i64 128, !826, i64 130, !826, i64 131, !825, i64 136, !1109, i64 144, !825, i64 152, !825, i64 160, !825, i64 168, !825, i64 176, !1109, i64 184, !920, i64 192, !826, i64 196}
!4486 = !DILocation(line: 42, column: 18, scope: !4483, inlinedAt: !4481)
!4487 = !DILocation(line: 42, column: 7, scope: !4476, inlinedAt: !4481)
!4488 = !DILocation(line: 44, column: 5, scope: !4483, inlinedAt: !4481)
!4489 = !DILocation(line: 155, column: 10, scope: !4419)
!4490 = !DILocation(line: 155, column: 3, scope: !4419)
!4491 = !DILocation(line: 229, column: 1, scope: !4419)
!4492 = distinct !DISubprogram(name: "rpl_freopen", scope: !4493, file: !4493, line: 47, type: !4494, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !794, variables: !4536)
!4493 = !DIFile(filename: "lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!4496, !78, !78, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !4498)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4499)
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4498, file: !19, line: 242, baseType: !22, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4498, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4498, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4498, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4498, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4498, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4498, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4498, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4498, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4498, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4498, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4498, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4498, file: !19, line: 260, baseType: !4513, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4515)
!4515 = !{!4516, !4517, !4519}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4514, file: !19, line: 157, baseType: !4513, size: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4514, file: !19, line: 158, baseType: !4518, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4514, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4498, file: !19, line: 262, baseType: !4518, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4498, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4498, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4498, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4498, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4498, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4498, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4498, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4498, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4498, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4498, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4498, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4498, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4498, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4498, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4498, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4536 = !{!4537, !4538, !4539, !4540, !4541, !4542, !4546, !4549}
!4537 = !DILocalVariable(name: "filename", arg: 1, scope: !4492, file: !4493, line: 47, type: !78)
!4538 = !DILocalVariable(name: "mode", arg: 2, scope: !4492, file: !4493, line: 47, type: !78)
!4539 = !DILocalVariable(name: "stream", arg: 3, scope: !4492, file: !4493, line: 47, type: !4496)
!4540 = !DILocalVariable(name: "result", scope: !4492, file: !4493, line: 49, type: !4496)
!4541 = !DILocalVariable(name: "null_device", scope: !4492, file: !4493, line: 55, type: !78)
!4542 = !DILocalVariable(name: "fd", scope: !4543, file: !4493, line: 75, type: !22)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !4493, line: 74, column: 5)
!4544 = distinct !DILexicalBlock(scope: !4545, file: !4493, line: 73, column: 12)
!4545 = distinct !DILexicalBlock(scope: !4492, file: !4493, line: 64, column: 7)
!4546 = !DILocalVariable(name: "nullfd", scope: !4547, file: !4493, line: 78, type: !22)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !4493, line: 77, column: 9)
!4548 = distinct !DILexicalBlock(scope: !4543, file: !4493, line: 76, column: 11)
!4549 = !DILocalVariable(name: "err", scope: !4547, file: !4493, line: 79, type: !22)
!4550 = !DILocation(line: 47, column: 26, scope: !4492)
!4551 = !DILocation(line: 47, column: 48, scope: !4492)
!4552 = !DILocation(line: 47, column: 60, scope: !4492)
!4553 = !DILocalVariable(name: "filename", arg: 1, scope: !4554, file: !4493, line: 32, type: !78)
!4554 = distinct !DISubprogram(name: "orig_freopen", scope: !4493, file: !4493, line: 32, type: !4494, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !794, variables: !4555)
!4555 = !{!4553, !4556, !4557}
!4556 = !DILocalVariable(name: "mode", arg: 2, scope: !4554, file: !4493, line: 32, type: !78)
!4557 = !DILocalVariable(name: "stream", arg: 3, scope: !4554, file: !4493, line: 32, type: !4496)
!4558 = !DILocation(line: 32, column: 27, scope: !4554, inlinedAt: !4559)
!4559 = distinct !DILocation(line: 62, column: 12, scope: !4492)
!4560 = !DILocation(line: 32, column: 49, scope: !4554, inlinedAt: !4559)
!4561 = !DILocation(line: 32, column: 61, scope: !4554, inlinedAt: !4559)
!4562 = !DILocation(line: 34, column: 10, scope: !4554, inlinedAt: !4559)
!4563 = !DILocation(line: 49, column: 9, scope: !4492)
!4564 = !DILocation(line: 64, column: 8, scope: !4545)
!4565 = !DILocation(line: 73, column: 12, scope: !4544)
!4566 = !DILocation(line: 64, column: 7, scope: !4492)
!4567 = !DILocation(line: 75, column: 16, scope: !4543)
!4568 = !DILocation(line: 75, column: 11, scope: !4543)
!4569 = !DILocation(line: 76, column: 11, scope: !4548)
!4570 = !DILocation(line: 76, column: 25, scope: !4548)
!4571 = !DILocation(line: 76, column: 29, scope: !4548)
!4572 = !DILocation(line: 76, column: 32, scope: !4573)
!4573 = !DILexicalBlockFile(scope: !4548, file: !4493, discriminator: 1)
!4574 = !DILocation(line: 76, column: 38, scope: !4573)
!4575 = !DILocation(line: 76, column: 11, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4543, file: !4493, discriminator: 1)
!4577 = !DILocation(line: 78, column: 24, scope: !4547)
!4578 = !DILocation(line: 78, column: 15, scope: !4547)
!4579 = !DILocation(line: 79, column: 15, scope: !4547)
!4580 = !DILocation(line: 80, column: 22, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4547, file: !4493, line: 80, column: 15)
!4582 = !DILocation(line: 80, column: 15, scope: !4547)
!4583 = !DILocation(line: 82, column: 19, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !4493, line: 82, column: 19)
!4585 = distinct !DILexicalBlock(scope: !4581, file: !4493, line: 81, column: 13)
!4586 = !DILocation(line: 82, column: 37, scope: !4584)
!4587 = !DILocation(line: 84, column: 15, scope: !4585)
!4588 = !DILocation(line: 32, column: 27, scope: !4554, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 87, column: 22, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4547, file: !4493, line: 86, column: 15)
!4591 = !DILocation(line: 32, column: 49, scope: !4554, inlinedAt: !4589)
!4592 = !DILocation(line: 32, column: 61, scope: !4554, inlinedAt: !4589)
!4593 = !DILocation(line: 34, column: 10, scope: !4554, inlinedAt: !4589)
!4594 = !DILocation(line: 87, column: 13, scope: !4590)
!4595 = !DILocation(line: 91, column: 3, scope: !4492)
!4596 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4597, file: !4597, line: 28, type: !4598, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !796, variables: !4641)
!4597 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!22, !4600, !4640, !22}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !4602)
!4602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !4603)
!4603 = !{!4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4602, file: !19, line: 242, baseType: !22, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4602, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4602, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4602, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4602, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4602, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4602, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4602, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4602, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4602, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4602, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4602, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4602, file: !19, line: 260, baseType: !4617, size: 64, offset: 768)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !4619)
!4619 = !{!4620, !4621, !4623}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4618, file: !19, line: 157, baseType: !4617, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4618, file: !19, line: 158, baseType: !4622, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4618, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4602, file: !19, line: 262, baseType: !4622, size: 64, offset: 832)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4602, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4602, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4602, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4602, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4602, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4602, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4602, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4602, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4602, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4602, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4602, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4602, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4602, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4602, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4602, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !17, line: 91, baseType: !48)
!4641 = !{!4642, !4643, !4644, !4645}
!4642 = !DILocalVariable(name: "fp", arg: 1, scope: !4596, file: !4597, line: 28, type: !4600)
!4643 = !DILocalVariable(name: "offset", arg: 2, scope: !4596, file: !4597, line: 28, type: !4640)
!4644 = !DILocalVariable(name: "whence", arg: 3, scope: !4596, file: !4597, line: 28, type: !22)
!4645 = !DILocalVariable(name: "pos", scope: !4646, file: !4597, line: 116, type: !4640)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !4597, line: 112, column: 5)
!4647 = distinct !DILexicalBlock(scope: !4596, file: !4597, line: 51, column: 7)
!4648 = !DILocation(line: 28, column: 15, scope: !4596)
!4649 = !DILocation(line: 28, column: 25, scope: !4596)
!4650 = !DILocation(line: 28, column: 37, scope: !4596)
!4651 = !DILocation(line: 51, column: 11, scope: !4647)
!4652 = !{!4485, !825, i64 16}
!4653 = !DILocation(line: 51, column: 31, scope: !4647)
!4654 = !{!4485, !825, i64 8}
!4655 = !DILocation(line: 51, column: 24, scope: !4647)
!4656 = !DILocation(line: 52, column: 7, scope: !4647)
!4657 = !DILocation(line: 52, column: 14, scope: !4658)
!4658 = !DILexicalBlockFile(scope: !4647, file: !4597, discriminator: 1)
!4659 = !{!4485, !825, i64 40}
!4660 = !DILocation(line: 52, column: 35, scope: !4658)
!4661 = !{!4485, !825, i64 32}
!4662 = !DILocation(line: 52, column: 28, scope: !4658)
!4663 = !DILocation(line: 53, column: 7, scope: !4647)
!4664 = !DILocation(line: 53, column: 14, scope: !4658)
!4665 = !{!4485, !825, i64 72}
!4666 = !DILocation(line: 53, column: 28, scope: !4658)
!4667 = !DILocation(line: 51, column: 7, scope: !4668)
!4668 = !DILexicalBlockFile(scope: !4596, file: !4597, discriminator: 1)
!4669 = !DILocation(line: 116, column: 26, scope: !4646)
!4670 = !DILocation(line: 116, column: 19, scope: !4671)
!4671 = !DILexicalBlockFile(scope: !4646, file: !4597, discriminator: 1)
!4672 = !DILocation(line: 116, column: 13, scope: !4646)
!4673 = !DILocation(line: 117, column: 15, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4646, file: !4597, line: 117, column: 11)
!4675 = !DILocation(line: 117, column: 11, scope: !4646)
!4676 = !DILocation(line: 127, column: 11, scope: !4646)
!4677 = !DILocation(line: 127, column: 18, scope: !4646)
!4678 = !DILocation(line: 128, column: 11, scope: !4646)
!4679 = !DILocation(line: 128, column: 19, scope: !4646)
!4680 = !{!4485, !1109, i64 144}
!4681 = !DILocation(line: 159, column: 7, scope: !4646)
!4682 = !DILocation(line: 161, column: 10, scope: !4596)
!4683 = !DILocation(line: 161, column: 3, scope: !4596)
!4684 = !DILocation(line: 162, column: 1, scope: !4596)
!4685 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4686, file: !4686, line: 334, type: !4687, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !798, variables: !4701)
!4686 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!70, !4689, !78, !70, !4690}
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2079, line: 107, baseType: !4692)
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2079, line: 95, baseType: !4693)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2079, line: 83, size: 64, elements: !4694)
!4694 = !{!4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4693, file: !2079, line: 85, baseType: !22, size: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4693, file: !2079, line: 94, baseType: !4697, size: 32, offset: 32)
!4697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4693, file: !2079, line: 86, size: 32, elements: !4698)
!4698 = !{!4699, !4700}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4697, file: !2079, line: 89, baseType: !151, size: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4697, file: !2079, line: 93, baseType: !2089, size: 32)
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4708}
!4702 = !DILocalVariable(name: "pwc", arg: 1, scope: !4685, file: !4686, line: 334, type: !4689)
!4703 = !DILocalVariable(name: "s", arg: 2, scope: !4685, file: !4686, line: 334, type: !78)
!4704 = !DILocalVariable(name: "n", arg: 3, scope: !4685, file: !4686, line: 334, type: !70)
!4705 = !DILocalVariable(name: "ps", arg: 4, scope: !4685, file: !4686, line: 334, type: !4690)
!4706 = !DILocalVariable(name: "ret", scope: !4685, file: !4686, line: 336, type: !70)
!4707 = !DILocalVariable(name: "wc", scope: !4685, file: !4686, line: 337, type: !2094)
!4708 = !DILocalVariable(name: "uc", scope: !4709, file: !4686, line: 398, type: !246)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !4686, line: 397, column: 5)
!4710 = distinct !DILexicalBlock(scope: !4685, file: !4686, line: 396, column: 7)
!4711 = !DILocation(line: 334, column: 23, scope: !4685)
!4712 = !DILocation(line: 334, column: 40, scope: !4685)
!4713 = !DILocation(line: 334, column: 50, scope: !4685)
!4714 = !DILocation(line: 334, column: 64, scope: !4685)
!4715 = !DILocation(line: 337, column: 3, scope: !4685)
!4716 = !DILocation(line: 353, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4685, file: !4686, line: 353, column: 7)
!4718 = !DILocation(line: 353, column: 7, scope: !4685)
!4719 = !DILocation(line: 388, column: 9, scope: !4685)
!4720 = !DILocation(line: 336, column: 10, scope: !4685)
!4721 = !DILocation(line: 396, column: 19, scope: !4710)
!4722 = !DILocation(line: 396, column: 31, scope: !4723)
!4723 = !DILexicalBlockFile(scope: !4710, file: !4686, discriminator: 1)
!4724 = !DILocation(line: 396, column: 26, scope: !4710)
!4725 = !DILocation(line: 396, column: 41, scope: !4726)
!4726 = !DILexicalBlockFile(scope: !4710, file: !4686, discriminator: 2)
!4727 = !DILocation(line: 396, column: 7, scope: !4728)
!4728 = !DILexicalBlockFile(scope: !4685, file: !4686, discriminator: 2)
!4729 = !DILocation(line: 398, column: 26, scope: !4709)
!4730 = !DILocation(line: 398, column: 21, scope: !4709)
!4731 = !DILocation(line: 399, column: 14, scope: !4709)
!4732 = !DILocation(line: 399, column: 12, scope: !4709)
!4733 = !DILocation(line: 405, column: 1, scope: !4685)
!4734 = distinct !DISubprogram(name: "print_and_abort", scope: !399, file: !399, line: 330, type: !401, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !395, variables: !310)
!4735 = !DILocation(line: 340, column: 3, scope: !4734)
!4736 = !DILocation(line: 340, column: 3, scope: !4737)
!4737 = !DILexicalBlockFile(scope: !4734, file: !399, discriminator: 1)
!4738 = !DILocation(line: 342, column: 9, scope: !4734)
!4739 = !DILocation(line: 342, column: 3, scope: !4734)
!4740 = distinct !DISubprogram(name: "_obstack_begin", scope: !399, file: !399, line: 150, type: !4741, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !4777)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!22, !4743, !70, !70, !131, !142}
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !105, line: 174, size: 704, elements: !4745)
!4745 = !{!4746, !4747, !4754, !4755, !4756, !4757, !4762, !4763, !4768, !4773, !4774, !4775, !4776}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4744, file: !105, line: 176, baseType: !70, size: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4744, file: !105, line: 177, baseType: !4748, size: 64, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !105, line: 167, size: 128, elements: !4750)
!4750 = !{!4751, !4752, !4753}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4749, file: !105, line: 169, baseType: !24, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4749, file: !105, line: 170, baseType: !4748, size: 64, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4749, file: !105, line: 171, baseType: !115, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4744, file: !105, line: 178, baseType: !24, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4744, file: !105, line: 179, baseType: !24, size: 64, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4744, file: !105, line: 180, baseType: !24, size: 64, offset: 256)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4744, file: !105, line: 185, baseType: !4758, size: 64, offset: 320)
!4758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4744, file: !105, line: 181, size: 64, elements: !4759)
!4759 = !{!4760, !4761}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4758, file: !105, line: 183, baseType: !70, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4758, file: !105, line: 184, baseType: !65, size: 64)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4744, file: !105, line: 186, baseType: !70, size: 64, offset: 384)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4744, file: !105, line: 193, baseType: !4764, size: 64, offset: 448)
!4764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4744, file: !105, line: 189, size: 64, elements: !4765)
!4765 = !{!4766, !4767}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4764, file: !105, line: 191, baseType: !131, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4764, file: !105, line: 192, baseType: !135, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4744, file: !105, line: 198, baseType: !4769, size: 64, offset: 512)
!4769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4744, file: !105, line: 194, size: 64, elements: !4770)
!4770 = !{!4771, !4772}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4769, file: !105, line: 196, baseType: !142, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4769, file: !105, line: 197, baseType: !146, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4744, file: !105, line: 200, baseType: !65, size: 64, offset: 576)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4744, file: !105, line: 201, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4744, file: !105, line: 202, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4744, file: !105, line: 206, baseType: !151, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4777 = !{!4778, !4779, !4780, !4781, !4782}
!4778 = !DILocalVariable(name: "h", arg: 1, scope: !4740, file: !399, line: 150, type: !4743)
!4779 = !DILocalVariable(name: "size", arg: 2, scope: !4740, file: !399, line: 151, type: !70)
!4780 = !DILocalVariable(name: "alignment", arg: 3, scope: !4740, file: !399, line: 151, type: !70)
!4781 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4740, file: !399, line: 152, type: !131)
!4782 = !DILocalVariable(name: "freefun", arg: 5, scope: !4740, file: !399, line: 153, type: !142)
!4783 = !DILocation(line: 150, column: 33, scope: !4740)
!4784 = !DILocation(line: 151, column: 33, scope: !4740)
!4785 = !DILocation(line: 151, column: 55, scope: !4740)
!4786 = !DILocation(line: 152, column: 25, scope: !4740)
!4787 = !DILocation(line: 153, column: 24, scope: !4740)
!4788 = !DILocation(line: 155, column: 15, scope: !4740)
!4789 = !DILocation(line: 155, column: 21, scope: !4740)
!4790 = !DILocation(line: 156, column: 14, scope: !4740)
!4791 = !DILocation(line: 156, column: 20, scope: !4740)
!4792 = !DILocation(line: 157, column: 6, scope: !4740)
!4793 = !DILocation(line: 157, column: 20, scope: !4740)
!4794 = !DILocation(line: 114, column: 17, scope: !4795, inlinedAt: !4807)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !399, line: 114, column: 7)
!4796 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !399, file: !399, line: 109, type: !4797, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !4799)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!22, !4743, !70, !70}
!4799 = !{!4800, !4801, !4802, !4803, !4804}
!4800 = !DILocalVariable(name: "h", arg: 1, scope: !4796, file: !399, line: 109, type: !4743)
!4801 = !DILocalVariable(name: "size", arg: 2, scope: !4796, file: !399, line: 110, type: !70)
!4802 = !DILocalVariable(name: "alignment", arg: 3, scope: !4796, file: !399, line: 110, type: !70)
!4803 = !DILocalVariable(name: "chunk", scope: !4796, file: !399, line: 112, type: !4748)
!4804 = !DILocalVariable(name: "extra", scope: !4805, file: !399, line: 127, type: !22)
!4805 = distinct !DILexicalBlock(scope: !4806, file: !399, line: 118, column: 5)
!4806 = distinct !DILexicalBlock(scope: !4796, file: !399, line: 116, column: 7)
!4807 = distinct !DILocation(line: 158, column: 10, scope: !4740)
!4808 = !DILocation(line: 110, column: 62, scope: !4796, inlinedAt: !4807)
!4809 = !DILocation(line: 114, column: 7, scope: !4796, inlinedAt: !4807)
!4810 = !DILocation(line: 116, column: 12, scope: !4806, inlinedAt: !4807)
!4811 = !DILocation(line: 110, column: 40, scope: !4796, inlinedAt: !4807)
!4812 = !DILocation(line: 116, column: 7, scope: !4796, inlinedAt: !4807)
!4813 = !DILocation(line: 133, column: 6, scope: !4796, inlinedAt: !4807)
!4814 = !DILocation(line: 133, column: 17, scope: !4796, inlinedAt: !4807)
!4815 = !{!1108, !1109, i64 0}
!4816 = !DILocation(line: 134, column: 33, scope: !4796, inlinedAt: !4807)
!4817 = !DILocation(line: 134, column: 6, scope: !4796, inlinedAt: !4807)
!4818 = !DILocation(line: 134, column: 21, scope: !4796, inlinedAt: !4807)
!4819 = !DILocalVariable(name: "h", arg: 1, scope: !4820, file: !399, line: 84, type: !4743)
!4820 = distinct !DISubprogram(name: "call_chunkfun", scope: !399, file: !399, line: 84, type: !4821, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !4823)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!65, !4743, !70}
!4823 = !{!4819, !4824}
!4824 = !DILocalVariable(name: "size", arg: 2, scope: !4820, file: !399, line: 84, type: !70)
!4825 = !DILocation(line: 84, column: 32, scope: !4820, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 136, column: 22, scope: !4796, inlinedAt: !4807)
!4827 = !DILocation(line: 84, column: 42, scope: !4820, inlinedAt: !4826)
!4828 = !DILocation(line: 89, column: 12, scope: !4829, inlinedAt: !4826)
!4829 = distinct !DILexicalBlock(scope: !4820, file: !399, line: 86, column: 7)
!4830 = !DILocation(line: 136, column: 14, scope: !4796, inlinedAt: !4807)
!4831 = !DILocation(line: 136, column: 20, scope: !4796, inlinedAt: !4807)
!4832 = !DILocation(line: 137, column: 8, scope: !4833, inlinedAt: !4807)
!4833 = distinct !DILexicalBlock(scope: !4796, file: !399, line: 137, column: 7)
!4834 = !DILocation(line: 137, column: 7, scope: !4796, inlinedAt: !4807)
!4835 = !DILocation(line: 138, column: 7, scope: !4833, inlinedAt: !4807)
!4836 = !DILocation(line: 138, column: 5, scope: !4833, inlinedAt: !4807)
!4837 = !DILocation(line: 139, column: 35, scope: !4796, inlinedAt: !4807)
!4838 = !DILocation(line: 139, column: 21, scope: !4796, inlinedAt: !4807)
!4839 = !DILocation(line: 139, column: 33, scope: !4796, inlinedAt: !4807)
!4840 = !DILocation(line: 139, column: 6, scope: !4796, inlinedAt: !4807)
!4841 = !DILocation(line: 139, column: 16, scope: !4796, inlinedAt: !4807)
!4842 = !DILocation(line: 141, column: 55, scope: !4796, inlinedAt: !4807)
!4843 = !DILocation(line: 141, column: 50, scope: !4796, inlinedAt: !4807)
!4844 = !DILocation(line: 141, column: 27, scope: !4796, inlinedAt: !4807)
!4845 = !DILocation(line: 141, column: 33, scope: !4796, inlinedAt: !4807)
!4846 = !DILocation(line: 141, column: 6, scope: !4796, inlinedAt: !4807)
!4847 = !DILocation(line: 141, column: 18, scope: !4796, inlinedAt: !4807)
!4848 = !DILocation(line: 142, column: 10, scope: !4796, inlinedAt: !4807)
!4849 = !DILocation(line: 142, column: 15, scope: !4796, inlinedAt: !4807)
!4850 = !DILocation(line: 144, column: 25, scope: !4796, inlinedAt: !4807)
!4851 = !DILocation(line: 145, column: 19, scope: !4796, inlinedAt: !4807)
!4852 = !DILocation(line: 158, column: 3, scope: !4740)
!4853 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !399, file: !399, line: 162, type: !4854, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !4856)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!22, !4743, !70, !70, !135, !146, !65}
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862}
!4857 = !DILocalVariable(name: "h", arg: 1, scope: !4853, file: !399, line: 162, type: !4743)
!4858 = !DILocalVariable(name: "size", arg: 2, scope: !4853, file: !399, line: 163, type: !70)
!4859 = !DILocalVariable(name: "alignment", arg: 3, scope: !4853, file: !399, line: 163, type: !70)
!4860 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4853, file: !399, line: 164, type: !135)
!4861 = !DILocalVariable(name: "freefun", arg: 5, scope: !4853, file: !399, line: 165, type: !146)
!4862 = !DILocalVariable(name: "arg", arg: 6, scope: !4853, file: !399, line: 166, type: !65)
!4863 = !DILocation(line: 162, column: 35, scope: !4853)
!4864 = !DILocation(line: 163, column: 35, scope: !4853)
!4865 = !DILocation(line: 163, column: 57, scope: !4853)
!4866 = !DILocation(line: 164, column: 27, scope: !4853)
!4867 = !DILocation(line: 165, column: 26, scope: !4853)
!4868 = !DILocation(line: 166, column: 25, scope: !4853)
!4869 = !DILocation(line: 168, column: 6, scope: !4853)
!4870 = !DILocation(line: 168, column: 15, scope: !4853)
!4871 = !DILocation(line: 168, column: 21, scope: !4853)
!4872 = !DILocation(line: 169, column: 6, scope: !4853)
!4873 = !DILocation(line: 169, column: 14, scope: !4853)
!4874 = !DILocation(line: 169, column: 20, scope: !4853)
!4875 = !DILocation(line: 170, column: 6, scope: !4853)
!4876 = !DILocation(line: 170, column: 16, scope: !4853)
!4877 = !{!1108, !825, i64 72}
!4878 = !DILocation(line: 171, column: 6, scope: !4853)
!4879 = !DILocation(line: 171, column: 20, scope: !4853)
!4880 = !DILocation(line: 114, column: 17, scope: !4795, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 172, column: 10, scope: !4853)
!4882 = !DILocation(line: 110, column: 62, scope: !4796, inlinedAt: !4881)
!4883 = !DILocation(line: 114, column: 7, scope: !4796, inlinedAt: !4881)
!4884 = !DILocation(line: 116, column: 12, scope: !4806, inlinedAt: !4881)
!4885 = !DILocation(line: 110, column: 40, scope: !4796, inlinedAt: !4881)
!4886 = !DILocation(line: 116, column: 7, scope: !4796, inlinedAt: !4881)
!4887 = !DILocation(line: 133, column: 6, scope: !4796, inlinedAt: !4881)
!4888 = !DILocation(line: 133, column: 17, scope: !4796, inlinedAt: !4881)
!4889 = !DILocation(line: 134, column: 33, scope: !4796, inlinedAt: !4881)
!4890 = !DILocation(line: 134, column: 6, scope: !4796, inlinedAt: !4881)
!4891 = !DILocation(line: 134, column: 21, scope: !4796, inlinedAt: !4881)
!4892 = !DILocation(line: 84, column: 32, scope: !4820, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 136, column: 22, scope: !4796, inlinedAt: !4881)
!4894 = !DILocation(line: 84, column: 42, scope: !4820, inlinedAt: !4893)
!4895 = !DILocation(line: 87, column: 12, scope: !4829, inlinedAt: !4893)
!4896 = !DILocation(line: 136, column: 14, scope: !4796, inlinedAt: !4881)
!4897 = !DILocation(line: 136, column: 20, scope: !4796, inlinedAt: !4881)
!4898 = !DILocation(line: 137, column: 8, scope: !4833, inlinedAt: !4881)
!4899 = !DILocation(line: 137, column: 7, scope: !4796, inlinedAt: !4881)
!4900 = !DILocation(line: 138, column: 7, scope: !4833, inlinedAt: !4881)
!4901 = !DILocation(line: 138, column: 5, scope: !4833, inlinedAt: !4881)
!4902 = !DILocation(line: 139, column: 35, scope: !4796, inlinedAt: !4881)
!4903 = !DILocation(line: 139, column: 21, scope: !4796, inlinedAt: !4881)
!4904 = !DILocation(line: 139, column: 33, scope: !4796, inlinedAt: !4881)
!4905 = !DILocation(line: 139, column: 6, scope: !4796, inlinedAt: !4881)
!4906 = !DILocation(line: 139, column: 16, scope: !4796, inlinedAt: !4881)
!4907 = !DILocation(line: 141, column: 55, scope: !4796, inlinedAt: !4881)
!4908 = !DILocation(line: 141, column: 50, scope: !4796, inlinedAt: !4881)
!4909 = !DILocation(line: 141, column: 27, scope: !4796, inlinedAt: !4881)
!4910 = !DILocation(line: 141, column: 33, scope: !4796, inlinedAt: !4881)
!4911 = !DILocation(line: 141, column: 6, scope: !4796, inlinedAt: !4881)
!4912 = !DILocation(line: 141, column: 18, scope: !4796, inlinedAt: !4881)
!4913 = !DILocation(line: 142, column: 10, scope: !4796, inlinedAt: !4881)
!4914 = !DILocation(line: 142, column: 15, scope: !4796, inlinedAt: !4881)
!4915 = !DILocation(line: 144, column: 25, scope: !4796, inlinedAt: !4881)
!4916 = !DILocation(line: 145, column: 19, scope: !4796, inlinedAt: !4881)
!4917 = !DILocation(line: 172, column: 3, scope: !4853)
!4918 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !399, file: !399, line: 182, type: !4919, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !4921)
!4919 = !DISubroutineType(types: !4920)
!4920 = !{null, !4743, !70}
!4921 = !{!4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930}
!4922 = !DILocalVariable(name: "h", arg: 1, scope: !4918, file: !399, line: 182, type: !4743)
!4923 = !DILocalVariable(name: "length", arg: 2, scope: !4918, file: !399, line: 182, type: !70)
!4924 = !DILocalVariable(name: "old_chunk", scope: !4918, file: !399, line: 184, type: !4748)
!4925 = !DILocalVariable(name: "new_chunk", scope: !4918, file: !399, line: 185, type: !4748)
!4926 = !DILocalVariable(name: "obj_size", scope: !4918, file: !399, line: 186, type: !70)
!4927 = !DILocalVariable(name: "object_base", scope: !4918, file: !399, line: 187, type: !24)
!4928 = !DILocalVariable(name: "sum1", scope: !4918, file: !399, line: 190, type: !70)
!4929 = !DILocalVariable(name: "sum2", scope: !4918, file: !399, line: 191, type: !70)
!4930 = !DILocalVariable(name: "new_size", scope: !4918, file: !399, line: 192, type: !70)
!4931 = !DILocation(line: 182, column: 36, scope: !4918)
!4932 = !DILocation(line: 182, column: 55, scope: !4918)
!4933 = !DILocation(line: 184, column: 41, scope: !4918)
!4934 = !DILocation(line: 184, column: 26, scope: !4918)
!4935 = !DILocation(line: 185, column: 26, scope: !4918)
!4936 = !DILocation(line: 186, column: 24, scope: !4918)
!4937 = !DILocation(line: 186, column: 39, scope: !4918)
!4938 = !DILocation(line: 186, column: 34, scope: !4918)
!4939 = !DILocation(line: 186, column: 10, scope: !4918)
!4940 = !DILocation(line: 190, column: 26, scope: !4918)
!4941 = !DILocation(line: 190, column: 10, scope: !4918)
!4942 = !DILocation(line: 191, column: 27, scope: !4918)
!4943 = !DILocation(line: 191, column: 22, scope: !4918)
!4944 = !DILocation(line: 191, column: 10, scope: !4918)
!4945 = !DILocation(line: 192, column: 38, scope: !4918)
!4946 = !DILocation(line: 192, column: 26, scope: !4918)
!4947 = !DILocation(line: 192, column: 44, scope: !4918)
!4948 = !DILocation(line: 192, column: 10, scope: !4918)
!4949 = !DILocation(line: 193, column: 16, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4918, file: !399, line: 193, column: 7)
!4951 = !DILocation(line: 193, column: 7, scope: !4918)
!4952 = !DILocation(line: 195, column: 21, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4918, file: !399, line: 195, column: 7)
!4954 = !DILocation(line: 195, column: 16, scope: !4953)
!4955 = !DILocation(line: 195, column: 7, scope: !4918)
!4956 = !DILocation(line: 199, column: 16, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4918, file: !399, line: 199, column: 7)
!4958 = !DILocation(line: 199, column: 32, scope: !4959)
!4959 = !DILexicalBlockFile(scope: !4957, file: !399, discriminator: 1)
!4960 = !DILocation(line: 199, column: 24, scope: !4957)
!4961 = !DILocation(line: 84, column: 32, scope: !4820, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 200, column: 17, scope: !4957)
!4963 = !DILocation(line: 84, column: 42, scope: !4820, inlinedAt: !4962)
!4964 = !DILocation(line: 86, column: 10, scope: !4829, inlinedAt: !4962)
!4965 = !DILocation(line: 86, column: 7, scope: !4829, inlinedAt: !4962)
!4966 = !DILocation(line: 86, column: 7, scope: !4820, inlinedAt: !4962)
!4967 = !DILocation(line: 87, column: 24, scope: !4829, inlinedAt: !4962)
!4968 = !DILocation(line: 87, column: 34, scope: !4829, inlinedAt: !4962)
!4969 = !DILocation(line: 87, column: 12, scope: !4829, inlinedAt: !4962)
!4970 = !DILocation(line: 87, column: 5, scope: !4829, inlinedAt: !4962)
!4971 = !DILocation(line: 89, column: 24, scope: !4829, inlinedAt: !4962)
!4972 = !DILocation(line: 89, column: 12, scope: !4829, inlinedAt: !4962)
!4973 = !DILocation(line: 89, column: 5, scope: !4829, inlinedAt: !4962)
!4974 = !DILocation(line: 201, column: 8, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4918, file: !399, line: 201, column: 7)
!4976 = !DILocation(line: 201, column: 7, scope: !4918)
!4977 = !DILocation(line: 202, column: 7, scope: !4975)
!4978 = !DILocation(line: 202, column: 5, scope: !4975)
!4979 = !DILocation(line: 203, column: 12, scope: !4918)
!4980 = !DILocation(line: 204, column: 14, scope: !4918)
!4981 = !DILocation(line: 204, column: 19, scope: !4918)
!4982 = !DILocation(line: 205, column: 58, scope: !4918)
!4983 = !DILocation(line: 205, column: 25, scope: !4918)
!4984 = !DILocation(line: 205, column: 37, scope: !4918)
!4985 = !DILocation(line: 205, column: 14, scope: !4918)
!4986 = !DILocation(line: 205, column: 20, scope: !4918)
!4987 = !DILocation(line: 209, column: 5, scope: !4918)
!4988 = !DILocation(line: 187, column: 9, scope: !4918)
!4989 = !DILocation(line: 212, column: 27, scope: !4918)
!4990 = !DILocation(line: 212, column: 3, scope: !4918)
!4991 = !DILocation(line: 217, column: 11, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4918, file: !399, line: 217, column: 7)
!4993 = !DILocation(line: 217, column: 8, scope: !4992)
!4994 = !DILocation(line: 218, column: 7, scope: !4992)
!4995 = !DILocation(line: 219, column: 14, scope: !4992)
!4996 = !DILocation(line: 219, column: 11, scope: !4992)
!4997 = !DILocation(line: 217, column: 7, scope: !4998)
!4998 = !DILexicalBlockFile(scope: !4918, file: !399, discriminator: 1)
!4999 = !DILocation(line: 222, column: 36, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4992, file: !399, line: 221, column: 5)
!5001 = !DILocation(line: 222, column: 23, scope: !5000)
!5002 = !DILocation(line: 223, column: 24, scope: !5000)
!5003 = !DILocalVariable(name: "h", arg: 1, scope: !5004, file: !399, line: 93, type: !4743)
!5004 = distinct !DISubprogram(name: "call_freefun", scope: !399, file: !399, line: 93, type: !5005, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !4743, !65}
!5007 = !{!5003, !5008}
!5008 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !5004, file: !399, line: 93, type: !65)
!5009 = !DILocation(line: 93, column: 31, scope: !5004, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 223, column: 7, scope: !5000)
!5011 = !DILocation(line: 93, column: 40, scope: !5004, inlinedAt: !5010)
!5012 = !DILocation(line: 95, column: 10, scope: !5013, inlinedAt: !5010)
!5013 = distinct !DILexicalBlock(scope: !5004, file: !399, line: 95, column: 7)
!5014 = !DILocation(line: 95, column: 7, scope: !5013, inlinedAt: !5010)
!5015 = !DILocation(line: 95, column: 7, scope: !5004, inlinedAt: !5010)
!5016 = !DILocation(line: 96, column: 16, scope: !5013, inlinedAt: !5010)
!5017 = !DILocation(line: 96, column: 26, scope: !5013, inlinedAt: !5010)
!5018 = !DILocation(line: 96, column: 5, scope: !5013, inlinedAt: !5010)
!5019 = !DILocation(line: 98, column: 16, scope: !5013, inlinedAt: !5010)
!5020 = !DILocation(line: 98, column: 5, scope: !5013, inlinedAt: !5010)
!5021 = !DILocation(line: 226, column: 18, scope: !4918)
!5022 = !DILocation(line: 227, column: 33, scope: !4918)
!5023 = !DILocation(line: 227, column: 16, scope: !4918)
!5024 = !DILocation(line: 229, column: 25, scope: !4918)
!5025 = !DILocation(line: 230, column: 1, scope: !4918)
!5026 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !399, file: !399, line: 241, type: !5027, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !5029)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!22, !4743, !65}
!5029 = !{!5030, !5031, !5032, !5033}
!5030 = !DILocalVariable(name: "h", arg: 1, scope: !5026, file: !399, line: 241, type: !4743)
!5031 = !DILocalVariable(name: "obj", arg: 2, scope: !5026, file: !399, line: 241, type: !65)
!5032 = !DILocalVariable(name: "lp", scope: !5026, file: !399, line: 243, type: !4748)
!5033 = !DILocalVariable(name: "plp", scope: !5026, file: !399, line: 244, type: !4748)
!5034 = !DILocation(line: 241, column: 39, scope: !5026)
!5035 = !DILocation(line: 241, column: 48, scope: !5026)
!5036 = !DILocation(line: 246, column: 13, scope: !5026)
!5037 = !DILocation(line: 243, column: 26, scope: !5026)
!5038 = !DILocation(line: 250, column: 13, scope: !5039)
!5039 = !DILexicalBlockFile(scope: !5026, file: !399, discriminator: 1)
!5040 = !DILocation(line: 250, column: 18, scope: !5039)
!5041 = !DILocation(line: 250, column: 22, scope: !5042)
!5042 = !DILexicalBlockFile(scope: !5026, file: !399, discriminator: 2)
!5043 = !DILocation(line: 250, column: 34, scope: !5042)
!5044 = !DILocation(line: 250, column: 41, scope: !5042)
!5045 = !DILocation(line: 250, column: 59, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !5026, file: !399, discriminator: 3)
!5047 = !DILocation(line: 250, column: 65, scope: !5046)
!5048 = !DILocation(line: 250, column: 3, scope: !5049)
!5049 = !DILexicalBlockFile(scope: !5026, file: !399, discriminator: 4)
!5050 = !DILocation(line: 252, column: 17, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5026, file: !399, line: 251, column: 5)
!5052 = distinct !{!5052, !5053, !5054}
!5053 = !DILocation(line: 250, column: 3, scope: !5026)
!5054 = !DILocation(line: 254, column: 5, scope: !5026)
!5055 = !DILocation(line: 255, column: 3, scope: !5026)
!5056 = distinct !DISubprogram(name: "_obstack_free", scope: !399, file: !399, line: 262, type: !5005, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !5057)
!5057 = !{!5058, !5059, !5060, !5061}
!5058 = !DILocalVariable(name: "h", arg: 1, scope: !5056, file: !399, line: 262, type: !4743)
!5059 = !DILocalVariable(name: "obj", arg: 2, scope: !5056, file: !399, line: 262, type: !65)
!5060 = !DILocalVariable(name: "lp", scope: !5056, file: !399, line: 264, type: !4748)
!5061 = !DILocalVariable(name: "plp", scope: !5056, file: !399, line: 265, type: !4748)
!5062 = !DILocation(line: 262, column: 32, scope: !5056)
!5063 = !DILocation(line: 262, column: 41, scope: !5056)
!5064 = !DILocation(line: 267, column: 11, scope: !5056)
!5065 = !DILocation(line: 264, column: 26, scope: !5056)
!5066 = !DILocation(line: 271, column: 13, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !5056, file: !399, discriminator: 1)
!5068 = !DILocation(line: 271, column: 18, scope: !5067)
!5069 = !DILocation(line: 271, column: 22, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !5056, file: !399, discriminator: 2)
!5071 = !DILocation(line: 271, column: 34, scope: !5070)
!5072 = !DILocation(line: 271, column: 41, scope: !5070)
!5073 = !DILocation(line: 271, column: 59, scope: !5074)
!5074 = !DILexicalBlockFile(scope: !5056, file: !399, discriminator: 3)
!5075 = !DILocation(line: 271, column: 65, scope: !5074)
!5076 = !DILocation(line: 271, column: 3, scope: !5077)
!5077 = !DILexicalBlockFile(scope: !5056, file: !399, discriminator: 4)
!5078 = !DILocation(line: 273, column: 17, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5056, file: !399, line: 272, column: 5)
!5080 = !DILocation(line: 265, column: 26, scope: !5056)
!5081 = !DILocation(line: 93, column: 31, scope: !5004, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 274, column: 7, scope: !5079)
!5083 = !DILocation(line: 93, column: 40, scope: !5004, inlinedAt: !5082)
!5084 = !DILocation(line: 95, column: 10, scope: !5013, inlinedAt: !5082)
!5085 = !DILocation(line: 95, column: 7, scope: !5013, inlinedAt: !5082)
!5086 = !DILocation(line: 95, column: 7, scope: !5004, inlinedAt: !5082)
!5087 = !DILocation(line: 96, column: 16, scope: !5013, inlinedAt: !5082)
!5088 = !DILocation(line: 96, column: 26, scope: !5013, inlinedAt: !5082)
!5089 = !DILocation(line: 96, column: 5, scope: !5013, inlinedAt: !5082)
!5090 = !DILocation(line: 98, column: 16, scope: !5013, inlinedAt: !5082)
!5091 = !DILocation(line: 98, column: 5, scope: !5013, inlinedAt: !5082)
!5092 = !DILocation(line: 278, column: 29, scope: !5079)
!5093 = distinct !{!5093, !5094, !5095}
!5094 = !DILocation(line: 271, column: 3, scope: !5056)
!5095 = !DILocation(line: 279, column: 5, scope: !5056)
!5096 = !DILocation(line: 282, column: 27, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !399, line: 281, column: 5)
!5098 = distinct !DILexicalBlock(scope: !5056, file: !399, line: 280, column: 7)
!5099 = !DILocation(line: 282, column: 37, scope: !5097)
!5100 = !DILocation(line: 282, column: 10, scope: !5097)
!5101 = !DILocation(line: 282, column: 22, scope: !5097)
!5102 = !DILocation(line: 283, column: 28, scope: !5097)
!5103 = !DILocation(line: 283, column: 10, scope: !5097)
!5104 = !DILocation(line: 283, column: 22, scope: !5097)
!5105 = !DILocation(line: 284, column: 16, scope: !5097)
!5106 = !DILocation(line: 285, column: 5, scope: !5097)
!5107 = !DILocation(line: 286, column: 16, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5098, file: !399, line: 286, column: 12)
!5109 = !DILocation(line: 286, column: 12, scope: !5098)
!5110 = !DILocation(line: 288, column: 5, scope: !5108)
!5111 = !DILocation(line: 289, column: 1, scope: !5056)
!5112 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !399, file: !399, line: 292, type: !5113, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !395, variables: !5115)
!5113 = !DISubroutineType(types: !5114)
!5114 = !{!70, !4743}
!5115 = !{!5116, !5117, !5118}
!5116 = !DILocalVariable(name: "h", arg: 1, scope: !5112, file: !399, line: 292, type: !4743)
!5117 = !DILocalVariable(name: "lp", scope: !5112, file: !399, line: 294, type: !4748)
!5118 = !DILocalVariable(name: "nbytes", scope: !5112, file: !399, line: 295, type: !70)
!5119 = !DILocation(line: 292, column: 39, scope: !5112)
!5120 = !DILocation(line: 295, column: 19, scope: !5112)
!5121 = !DILocation(line: 297, column: 16, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5112, file: !399, line: 297, column: 3)
!5123 = !DILocation(line: 294, column: 26, scope: !5112)
!5124 = !DILocation(line: 297, column: 26, scope: !5125)
!5125 = !DILexicalBlockFile(scope: !5126, file: !399, discriminator: 1)
!5126 = distinct !DILexicalBlock(scope: !5122, file: !399, line: 297, column: 3)
!5127 = !DILocation(line: 297, column: 3, scope: !5128)
!5128 = !DILexicalBlockFile(scope: !5122, file: !399, discriminator: 1)
!5129 = !DILocation(line: 299, column: 21, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5126, file: !399, line: 298, column: 5)
!5131 = !DILocation(line: 299, column: 27, scope: !5130)
!5132 = !DILocation(line: 299, column: 14, scope: !5130)
!5133 = !DILocation(line: 297, column: 41, scope: !5134)
!5134 = !DILexicalBlockFile(scope: !5126, file: !399, discriminator: 2)
!5135 = distinct !{!5135, !5136, !5137}
!5136 = !DILocation(line: 297, column: 3, scope: !5122)
!5137 = !DILocation(line: 300, column: 5, scope: !5122)
!5138 = !DILocation(line: 301, column: 3, scope: !5112)
!5139 = distinct !DISubprogram(name: "close_stream", scope: !5140, file: !5140, line: 56, type: !5141, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !801, variables: !5183)
!5140 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5141 = !DISubroutineType(types: !5142)
!5142 = !{!22, !5143}
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !5145)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !5146)
!5146 = !{!5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5145, file: !19, line: 242, baseType: !22, size: 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5145, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5145, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5145, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5145, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5145, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5145, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5145, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5145, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5145, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5145, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5145, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5145, file: !19, line: 260, baseType: !5160, size: 64, offset: 768)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !5162)
!5162 = !{!5163, !5164, !5166}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5161, file: !19, line: 157, baseType: !5160, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5161, file: !19, line: 158, baseType: !5165, size: 64, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5161, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5145, file: !19, line: 262, baseType: !5165, size: 64, offset: 832)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5145, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5145, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5145, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5145, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5145, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5145, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5145, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5145, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5145, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5145, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5145, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5145, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5145, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5145, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5145, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!5183 = !{!5184, !5185, !5187, !5188}
!5184 = !DILocalVariable(name: "stream", arg: 1, scope: !5139, file: !5140, line: 56, type: !5143)
!5185 = !DILocalVariable(name: "some_pending", scope: !5139, file: !5140, line: 58, type: !5186)
!5186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!5187 = !DILocalVariable(name: "prev_fail", scope: !5139, file: !5140, line: 59, type: !5186)
!5188 = !DILocalVariable(name: "fclose_fail", scope: !5139, file: !5140, line: 60, type: !5186)
!5189 = !DILocation(line: 56, column: 21, scope: !5139)
!5190 = !DILocation(line: 58, column: 30, scope: !5139)
!5191 = !DILocalVariable(name: "__stream", arg: 1, scope: !5192, file: !1167, line: 132, type: !5143)
!5192 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1167, file: !1167, line: 132, type: !5141, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !801, variables: !5193)
!5193 = !{!5191}
!5194 = !DILocation(line: 132, column: 1, scope: !5192, inlinedAt: !5195)
!5195 = distinct !DILocation(line: 59, column: 27, scope: !5139)
!5196 = !DILocation(line: 134, column: 10, scope: !5192, inlinedAt: !5195)
!5197 = !DILocation(line: 59, column: 43, scope: !5139)
!5198 = !DILocation(line: 60, column: 29, scope: !5139)
!5199 = !DILocation(line: 60, column: 45, scope: !5139)
!5200 = !DILocation(line: 70, column: 17, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5139, file: !5140, line: 70, column: 7)
!5202 = !DILocation(line: 70, column: 33, scope: !5203)
!5203 = !DILexicalBlockFile(scope: !5201, file: !5140, discriminator: 1)
!5204 = !DILocation(line: 70, column: 53, scope: !5205)
!5205 = !DILexicalBlockFile(scope: !5201, file: !5140, discriminator: 3)
!5206 = !DILocation(line: 70, column: 7, scope: !5207)
!5207 = !DILexicalBlockFile(scope: !5139, file: !5140, discriminator: 3)
!5208 = !DILocation(line: 72, column: 11, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5201, file: !5140, line: 71, column: 5)
!5210 = !DILocation(line: 73, column: 9, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5209, file: !5140, line: 72, column: 11)
!5212 = !DILocation(line: 73, column: 15, scope: !5211)
!5213 = !DILocation(line: 78, column: 1, scope: !5139)
!5214 = distinct !DISubprogram(name: "hard_locale", scope: !5215, file: !5215, line: 38, type: !1771, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !803, variables: !5216)
!5215 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5216 = !{!5217, !5218, !5219, !5220, !5227, !5228, !5230, !5231, !5233, !5234, !5236}
!5217 = !DILocalVariable(name: "category", arg: 1, scope: !5214, file: !5215, line: 38, type: !22)
!5218 = !DILocalVariable(name: "hard", scope: !5214, file: !5215, line: 40, type: !14)
!5219 = !DILocalVariable(name: "p", scope: !5214, file: !5215, line: 41, type: !78)
!5220 = !DILocalVariable(name: "__s1_len", scope: !5221, file: !5215, line: 47, type: !70)
!5221 = distinct !DILexicalBlock(scope: !5222, file: !5215, line: 47, column: 15)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !5215, line: 47, column: 15)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !5215, line: 46, column: 9)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !5215, line: 45, column: 11)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !5215, line: 44, column: 5)
!5226 = distinct !DILexicalBlock(scope: !5214, file: !5215, line: 43, column: 7)
!5227 = !DILocalVariable(name: "__s2_len", scope: !5221, file: !5215, line: 47, type: !70)
!5228 = !DILocalVariable(name: "__s2", scope: !5229, file: !5215, line: 47, type: !244)
!5229 = distinct !DILexicalBlock(scope: !5221, file: !5215, line: 47, column: 15)
!5230 = !DILocalVariable(name: "__result", scope: !5229, file: !5215, line: 47, type: !22)
!5231 = !DILocalVariable(name: "__s1_len", scope: !5232, file: !5215, line: 47, type: !70)
!5232 = distinct !DILexicalBlock(scope: !5222, file: !5215, line: 47, column: 39)
!5233 = !DILocalVariable(name: "__s2_len", scope: !5232, file: !5215, line: 47, type: !70)
!5234 = !DILocalVariable(name: "__s2", scope: !5235, file: !5215, line: 47, type: !244)
!5235 = distinct !DILexicalBlock(scope: !5232, file: !5215, line: 47, column: 39)
!5236 = !DILocalVariable(name: "__result", scope: !5235, file: !5215, line: 47, type: !22)
!5237 = !DILocation(line: 38, column: 18, scope: !5214)
!5238 = !DILocation(line: 40, column: 8, scope: !5214)
!5239 = !DILocation(line: 41, column: 19, scope: !5214)
!5240 = !DILocation(line: 41, column: 15, scope: !5214)
!5241 = !DILocation(line: 43, column: 7, scope: !5226)
!5242 = !DILocation(line: 43, column: 7, scope: !5214)
!5243 = !DILocation(line: 47, column: 15, scope: !5221)
!5244 = !DILocation(line: 47, column: 15, scope: !5229)
!5245 = !DILocation(line: 47, column: 15, scope: !5246)
!5246 = !DILexicalBlockFile(scope: !5229, file: !5215, discriminator: 2)
!5247 = !DILocation(line: 47, column: 15, scope: !5248)
!5248 = !DILexicalBlockFile(scope: !5249, file: !5215, discriminator: 3)
!5249 = distinct !DILexicalBlock(scope: !5229, file: !5215, line: 47, column: 15)
!5250 = !DILocation(line: 47, column: 15, scope: !5251)
!5251 = !DILexicalBlockFile(scope: !5249, file: !5215, discriminator: 2)
!5252 = !DILocation(line: 47, column: 15, scope: !5253)
!5253 = !DILexicalBlockFile(scope: !5254, file: !5215, discriminator: 4)
!5254 = distinct !DILexicalBlock(scope: !5249, file: !5215, line: 47, column: 15)
!5255 = !DILocation(line: 47, column: 15, scope: !5256)
!5256 = !DILexicalBlockFile(scope: !5221, file: !5215, discriminator: 11)
!5257 = !DILocation(line: 47, column: 36, scope: !5258)
!5258 = !DILexicalBlockFile(scope: !5222, file: !5215, discriminator: 13)
!5259 = !DILocation(line: 47, column: 39, scope: !5232)
!5260 = !DILocation(line: 47, column: 39, scope: !5261)
!5261 = !DILexicalBlockFile(scope: !5232, file: !5215, discriminator: 26)
!5262 = !DILocation(line: 47, column: 59, scope: !5263)
!5263 = !DILexicalBlockFile(scope: !5222, file: !5215, discriminator: 27)
!5264 = !DILocation(line: 47, column: 15, scope: !5265)
!5265 = !DILexicalBlockFile(scope: !5223, file: !5215, discriminator: 27)
!5266 = !DILocation(line: 48, column: 13, scope: !5222)
!5267 = !DILocation(line: 71, column: 3, scope: !5214)
!5268 = distinct !DISubprogram(name: "locale_charset", scope: !749, file: !749, line: 393, type: !5269, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !405, variables: !5271)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!78}
!5271 = !{!5272, !5273, !5274, !5279}
!5272 = !DILocalVariable(name: "codeset", scope: !5268, file: !749, line: 395, type: !78)
!5273 = !DILocalVariable(name: "aliases", scope: !5268, file: !749, line: 396, type: !78)
!5274 = !DILocalVariable(name: "__s1_len", scope: !5275, file: !749, line: 592, type: !70)
!5275 = distinct !DILexicalBlock(scope: !5276, file: !749, line: 592, column: 9)
!5276 = distinct !DILexicalBlock(scope: !5277, file: !749, line: 592, column: 9)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !749, line: 589, column: 3)
!5278 = distinct !DILexicalBlock(scope: !5268, file: !749, line: 589, column: 3)
!5279 = !DILocalVariable(name: "__s2_len", scope: !5275, file: !749, line: 592, type: !70)
!5280 = !DILocalVariable(name: "buf1", scope: !5281, file: !749, line: 196, type: !5348)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !749, line: 194, column: 21)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !749, line: 193, column: 19)
!5283 = distinct !DILexicalBlock(scope: !5284, file: !749, line: 193, column: 19)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !749, line: 188, column: 17)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !749, line: 181, column: 19)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !749, line: 177, column: 13)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !749, line: 173, column: 15)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !749, line: 161, column: 9)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !749, line: 157, column: 11)
!5290 = distinct !DILexicalBlock(scope: !5291, file: !749, line: 130, column: 5)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !749, line: 129, column: 7)
!5292 = distinct !DISubprogram(name: "get_charset_aliases", scope: !749, file: !749, line: 124, type: !5269, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !405, variables: !5293)
!5293 = !{!5294, !5295, !5296, !5297, !5298, !5300, !5301, !5302, !5303, !5344, !5345, !5346, !5280, !5347, !5351, !5352, !5353}
!5294 = !DILocalVariable(name: "cp", scope: !5292, file: !749, line: 126, type: !78)
!5295 = !DILocalVariable(name: "dir", scope: !5290, file: !749, line: 132, type: !78)
!5296 = !DILocalVariable(name: "base", scope: !5290, file: !749, line: 133, type: !78)
!5297 = !DILocalVariable(name: "file_name", scope: !5290, file: !749, line: 134, type: !24)
!5298 = !DILocalVariable(name: "dir_len", scope: !5299, file: !749, line: 144, type: !70)
!5299 = distinct !DILexicalBlock(scope: !5290, file: !749, line: 143, column: 7)
!5300 = !DILocalVariable(name: "base_len", scope: !5299, file: !749, line: 145, type: !70)
!5301 = !DILocalVariable(name: "add_slash", scope: !5299, file: !749, line: 146, type: !22)
!5302 = !DILocalVariable(name: "fd", scope: !5288, file: !749, line: 162, type: !22)
!5303 = !DILocalVariable(name: "fp", scope: !5286, file: !749, line: 178, type: !5304)
!5304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5305, size: 64)
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 49, baseType: !5306)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !19, line: 241, size: 1728, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5306, file: !19, line: 242, baseType: !22, size: 32)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5306, file: !19, line: 247, baseType: !24, size: 64, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5306, file: !19, line: 248, baseType: !24, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5306, file: !19, line: 249, baseType: !24, size: 64, offset: 192)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5306, file: !19, line: 250, baseType: !24, size: 64, offset: 256)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5306, file: !19, line: 251, baseType: !24, size: 64, offset: 320)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5306, file: !19, line: 252, baseType: !24, size: 64, offset: 384)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5306, file: !19, line: 253, baseType: !24, size: 64, offset: 448)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5306, file: !19, line: 254, baseType: !24, size: 64, offset: 512)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5306, file: !19, line: 256, baseType: !24, size: 64, offset: 576)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5306, file: !19, line: 257, baseType: !24, size: 64, offset: 640)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5306, file: !19, line: 258, baseType: !24, size: 64, offset: 704)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5306, file: !19, line: 260, baseType: !5321, size: 64, offset: 768)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !19, line: 156, size: 192, elements: !5323)
!5323 = !{!5324, !5325, !5327}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5322, file: !19, line: 157, baseType: !5321, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5322, file: !19, line: 158, baseType: !5326, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5322, file: !19, line: 162, baseType: !22, size: 32, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5306, file: !19, line: 262, baseType: !5326, size: 64, offset: 832)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5306, file: !19, line: 264, baseType: !22, size: 32, offset: 896)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5306, file: !19, line: 268, baseType: !22, size: 32, offset: 928)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5306, file: !19, line: 270, baseType: !48, size: 64, offset: 960)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5306, file: !19, line: 274, baseType: !52, size: 16, offset: 1024)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5306, file: !19, line: 275, baseType: !54, size: 8, offset: 1040)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5306, file: !19, line: 276, baseType: !56, size: 8, offset: 1048)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5306, file: !19, line: 280, baseType: !60, size: 64, offset: 1088)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5306, file: !19, line: 289, baseType: !63, size: 64, offset: 1152)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5306, file: !19, line: 297, baseType: !65, size: 64, offset: 1216)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5306, file: !19, line: 298, baseType: !65, size: 64, offset: 1280)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5306, file: !19, line: 299, baseType: !65, size: 64, offset: 1344)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5306, file: !19, line: 300, baseType: !65, size: 64, offset: 1408)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5306, file: !19, line: 302, baseType: !70, size: 64, offset: 1472)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5306, file: !19, line: 303, baseType: !22, size: 32, offset: 1536)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5306, file: !19, line: 305, baseType: !75, size: 160, offset: 1568)
!5344 = !DILocalVariable(name: "res_ptr", scope: !5284, file: !749, line: 190, type: !24)
!5345 = !DILocalVariable(name: "res_size", scope: !5284, file: !749, line: 191, type: !70)
!5346 = !DILocalVariable(name: "c", scope: !5281, file: !749, line: 195, type: !22)
!5347 = !DILocalVariable(name: "buf2", scope: !5281, file: !749, line: 197, type: !5348)
!5348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 408, elements: !5349)
!5349 = !{!5350}
!5350 = !DISubrange(count: 51)
!5351 = !DILocalVariable(name: "l1", scope: !5281, file: !749, line: 198, type: !70)
!5352 = !DILocalVariable(name: "l2", scope: !5281, file: !749, line: 198, type: !70)
!5353 = !DILocalVariable(name: "old_res_ptr", scope: !5281, file: !749, line: 199, type: !24)
!5354 = !DILocation(line: 196, column: 28, scope: !5281, inlinedAt: !5355)
!5355 = distinct !DILocation(line: 589, column: 18, scope: !5278)
!5356 = !DILocation(line: 197, column: 28, scope: !5281, inlinedAt: !5355)
!5357 = !DILocation(line: 403, column: 13, scope: !5268)
!5358 = !DILocation(line: 395, column: 15, scope: !5268)
!5359 = !DILocation(line: 584, column: 15, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5268, file: !749, line: 584, column: 7)
!5361 = !DILocation(line: 584, column: 7, scope: !5268)
!5362 = !DILocation(line: 128, column: 8, scope: !5292, inlinedAt: !5355)
!5363 = !DILocation(line: 126, column: 15, scope: !5292, inlinedAt: !5355)
!5364 = !DILocation(line: 129, column: 10, scope: !5291, inlinedAt: !5355)
!5365 = !DILocation(line: 129, column: 7, scope: !5292, inlinedAt: !5355)
!5366 = !DILocation(line: 138, column: 13, scope: !5290, inlinedAt: !5355)
!5367 = !DILocation(line: 132, column: 19, scope: !5290, inlinedAt: !5355)
!5368 = !DILocation(line: 139, column: 15, scope: !5369, inlinedAt: !5355)
!5369 = distinct !DILexicalBlock(scope: !5290, file: !749, line: 139, column: 11)
!5370 = !DILocation(line: 139, column: 23, scope: !5369, inlinedAt: !5355)
!5371 = !DILocation(line: 139, column: 26, scope: !5372, inlinedAt: !5355)
!5372 = !DILexicalBlockFile(scope: !5369, file: !749, discriminator: 1)
!5373 = !DILocation(line: 139, column: 33, scope: !5372, inlinedAt: !5355)
!5374 = !DILocation(line: 139, column: 11, scope: !5375, inlinedAt: !5355)
!5375 = !DILexicalBlockFile(scope: !5290, file: !749, discriminator: 1)
!5376 = !DILocation(line: 140, column: 9, scope: !5369, inlinedAt: !5355)
!5377 = !DILocation(line: 144, column: 26, scope: !5299, inlinedAt: !5355)
!5378 = !DILocation(line: 144, column: 16, scope: !5299, inlinedAt: !5355)
!5379 = !DILocation(line: 145, column: 16, scope: !5299, inlinedAt: !5355)
!5380 = !DILocation(line: 146, column: 34, scope: !5299, inlinedAt: !5355)
!5381 = !DILocation(line: 146, column: 38, scope: !5299, inlinedAt: !5355)
!5382 = !DILocation(line: 146, column: 42, scope: !5383, inlinedAt: !5355)
!5383 = !DILexicalBlockFile(scope: !5299, file: !749, discriminator: 1)
!5384 = !DILocation(line: 146, column: 41, scope: !5383, inlinedAt: !5355)
!5385 = !DILocation(line: 147, column: 48, scope: !5299, inlinedAt: !5355)
!5386 = !DILocation(line: 147, column: 46, scope: !5299, inlinedAt: !5355)
!5387 = !DILocation(line: 147, column: 69, scope: !5299, inlinedAt: !5355)
!5388 = !DILocation(line: 147, column: 30, scope: !5299, inlinedAt: !5355)
!5389 = !DILocation(line: 134, column: 13, scope: !5290, inlinedAt: !5355)
!5390 = !DILocation(line: 148, column: 13, scope: !5299, inlinedAt: !5355)
!5391 = !DILocation(line: 150, column: 13, scope: !5392, inlinedAt: !5355)
!5392 = distinct !DILexicalBlock(scope: !5393, file: !749, line: 149, column: 11)
!5393 = distinct !DILexicalBlock(scope: !5299, file: !749, line: 148, column: 13)
!5394 = !DILocation(line: 151, column: 17, scope: !5392, inlinedAt: !5355)
!5395 = !DILocation(line: 152, column: 34, scope: !5396, inlinedAt: !5355)
!5396 = distinct !DILexicalBlock(scope: !5392, file: !749, line: 151, column: 17)
!5397 = !DILocation(line: 153, column: 41, scope: !5392, inlinedAt: !5355)
!5398 = !DILocation(line: 153, column: 13, scope: !5392, inlinedAt: !5355)
!5399 = !DILocation(line: 157, column: 11, scope: !5290, inlinedAt: !5355)
!5400 = !DILocation(line: 171, column: 16, scope: !5288, inlinedAt: !5355)
!5401 = !DILocation(line: 162, column: 15, scope: !5288, inlinedAt: !5355)
!5402 = !DILocation(line: 173, column: 18, scope: !5287, inlinedAt: !5355)
!5403 = !DILocation(line: 173, column: 15, scope: !5288, inlinedAt: !5355)
!5404 = !DILocation(line: 180, column: 20, scope: !5286, inlinedAt: !5355)
!5405 = !DILocation(line: 178, column: 21, scope: !5286, inlinedAt: !5355)
!5406 = !DILocation(line: 181, column: 22, scope: !5285, inlinedAt: !5355)
!5407 = !DILocation(line: 181, column: 19, scope: !5286, inlinedAt: !5355)
!5408 = !DILocation(line: 190, column: 25, scope: !5284, inlinedAt: !5355)
!5409 = !DILocation(line: 184, column: 19, scope: !5410, inlinedAt: !5355)
!5410 = distinct !DILexicalBlock(scope: !5285, file: !749, line: 182, column: 17)
!5411 = !DILocation(line: 186, column: 17, scope: !5410, inlinedAt: !5355)
!5412 = !DILocation(line: 191, column: 26, scope: !5284, inlinedAt: !5355)
!5413 = !DILocation(line: 196, column: 23, scope: !5281, inlinedAt: !5355)
!5414 = !DILocation(line: 197, column: 23, scope: !5281, inlinedAt: !5355)
!5415 = !DILocalVariable(name: "__fp", arg: 1, scope: !5416, file: !1167, line: 63, type: !5304)
!5416 = distinct !DISubprogram(name: "getc_unlocked", scope: !1167, file: !1167, line: 63, type: !5417, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !405, variables: !5419)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!22, !5304}
!5419 = !{!5415}
!5420 = !DILocation(line: 63, column: 22, scope: !5416, inlinedAt: !5421)
!5421 = distinct !DILocation(line: 201, column: 27, scope: !5281, inlinedAt: !5355)
!5422 = !DILocation(line: 65, column: 10, scope: !5416, inlinedAt: !5421)
!5423 = !{!"branch_weights", i32 2000, i32 1}
!5424 = !DILocation(line: 65, column: 10, scope: !5425, inlinedAt: !5421)
!5425 = !DILexicalBlockFile(scope: !5416, file: !1167, discriminator: 1)
!5426 = !DILocation(line: 65, column: 10, scope: !5427, inlinedAt: !5421)
!5427 = !DILexicalBlockFile(scope: !5416, file: !1167, discriminator: 2)
!5428 = !DILocation(line: 65, column: 10, scope: !5429, inlinedAt: !5421)
!5429 = !DILexicalBlockFile(scope: !5416, file: !1167, discriminator: 3)
!5430 = !DILocation(line: 195, column: 27, scope: !5281, inlinedAt: !5355)
!5431 = !DILocation(line: 202, column: 27, scope: !5281, inlinedAt: !5355)
!5432 = !DILocation(line: 63, column: 22, scope: !5416, inlinedAt: !5433)
!5433 = distinct !DILocation(line: 210, column: 33, scope: !5434, inlinedAt: !5355)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !749, line: 207, column: 25)
!5435 = distinct !DILexicalBlock(scope: !5281, file: !749, line: 206, column: 27)
!5436 = !DILocation(line: 65, column: 10, scope: !5416, inlinedAt: !5433)
!5437 = !DILocation(line: 65, column: 10, scope: !5425, inlinedAt: !5433)
!5438 = !DILocation(line: 65, column: 10, scope: !5427, inlinedAt: !5433)
!5439 = !DILocation(line: 65, column: 10, scope: !5429, inlinedAt: !5433)
!5440 = !DILocation(line: 210, column: 29, scope: !5441, inlinedAt: !5355)
!5441 = !DILexicalBlockFile(scope: !5434, file: !749, discriminator: 1)
!5442 = distinct !{!5442, !5443, !5444}
!5443 = !DILocation(line: 193, column: 19, scope: !5283)
!5444 = !DILocation(line: 241, column: 21, scope: !5283)
!5445 = !DILocation(line: 216, column: 23, scope: !5281, inlinedAt: !5355)
!5446 = !DILocation(line: 217, column: 27, scope: !5447, inlinedAt: !5355)
!5447 = distinct !DILexicalBlock(scope: !5281, file: !749, line: 217, column: 27)
!5448 = !DILocation(line: 217, column: 64, scope: !5447, inlinedAt: !5355)
!5449 = !DILocation(line: 217, column: 27, scope: !5281, inlinedAt: !5355)
!5450 = !DILocation(line: 219, column: 28, scope: !5281, inlinedAt: !5355)
!5451 = !DILocation(line: 198, column: 30, scope: !5281, inlinedAt: !5355)
!5452 = !DILocation(line: 220, column: 28, scope: !5281, inlinedAt: !5355)
!5453 = !DILocation(line: 198, column: 34, scope: !5281, inlinedAt: !5355)
!5454 = !DILocation(line: 199, column: 29, scope: !5281, inlinedAt: !5355)
!5455 = !DILocation(line: 222, column: 36, scope: !5456, inlinedAt: !5355)
!5456 = distinct !DILexicalBlock(scope: !5281, file: !749, line: 222, column: 27)
!5457 = !DILocation(line: 222, column: 27, scope: !5281, inlinedAt: !5355)
!5458 = !DILocation(line: 225, column: 63, scope: !5459, inlinedAt: !5355)
!5459 = distinct !DILexicalBlock(scope: !5456, file: !749, line: 223, column: 25)
!5460 = !DILocation(line: 225, column: 46, scope: !5459, inlinedAt: !5355)
!5461 = !DILocation(line: 226, column: 25, scope: !5459, inlinedAt: !5355)
!5462 = !DILocation(line: 229, column: 36, scope: !5463, inlinedAt: !5355)
!5463 = distinct !DILexicalBlock(scope: !5456, file: !749, line: 228, column: 25)
!5464 = !DILocation(line: 230, column: 73, scope: !5463, inlinedAt: !5355)
!5465 = !DILocation(line: 230, column: 46, scope: !5463, inlinedAt: !5355)
!5466 = !DILocation(line: 232, column: 35, scope: !5467, inlinedAt: !5355)
!5467 = distinct !DILexicalBlock(scope: !5281, file: !749, line: 232, column: 27)
!5468 = !DILocation(line: 232, column: 27, scope: !5281, inlinedAt: !5355)
!5469 = !DILocation(line: 236, column: 27, scope: !5470, inlinedAt: !5355)
!5470 = distinct !DILexicalBlock(scope: !5467, file: !749, line: 233, column: 25)
!5471 = !DILocation(line: 237, column: 27, scope: !5470, inlinedAt: !5355)
!5472 = !DILocation(line: 239, column: 39, scope: !5281, inlinedAt: !5355)
!5473 = !DILocation(line: 239, column: 50, scope: !5281, inlinedAt: !5355)
!5474 = !DILocation(line: 239, column: 61, scope: !5281, inlinedAt: !5355)
!5475 = !DILocalVariable(name: "__dest", arg: 1, scope: !5476, file: !5477, line: 107, type: !5480)
!5476 = distinct !DISubprogram(name: "strcpy", scope: !5477, file: !5477, line: 107, type: !5478, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !405, variables: !5482)
!5477 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!24, !5480, !5481}
!5480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!5481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!5482 = !{!5475, !5483}
!5483 = !DILocalVariable(name: "__src", arg: 2, scope: !5476, file: !5477, line: 107, type: !5481)
!5484 = !DILocation(line: 107, column: 1, scope: !5476, inlinedAt: !5485)
!5485 = distinct !DILocation(line: 239, column: 23, scope: !5281, inlinedAt: !5355)
!5486 = !DILocation(line: 109, column: 49, scope: !5476, inlinedAt: !5485)
!5487 = !DILocation(line: 109, column: 10, scope: !5476, inlinedAt: !5485)
!5488 = !DILocation(line: 107, column: 1, scope: !5476, inlinedAt: !5489)
!5489 = distinct !DILocation(line: 240, column: 23, scope: !5281, inlinedAt: !5355)
!5490 = !DILocation(line: 109, column: 49, scope: !5476, inlinedAt: !5489)
!5491 = !DILocation(line: 109, column: 10, scope: !5476, inlinedAt: !5489)
!5492 = !DILocation(line: 241, column: 21, scope: !5282, inlinedAt: !5355)
!5493 = !DILocation(line: 242, column: 19, scope: !5284, inlinedAt: !5355)
!5494 = !DILocation(line: 243, column: 32, scope: !5495, inlinedAt: !5355)
!5495 = distinct !DILexicalBlock(scope: !5284, file: !749, line: 243, column: 23)
!5496 = !DILocation(line: 243, column: 23, scope: !5284, inlinedAt: !5355)
!5497 = !DILocation(line: 247, column: 33, scope: !5498, inlinedAt: !5355)
!5498 = distinct !DILexicalBlock(scope: !5495, file: !749, line: 246, column: 21)
!5499 = !DILocation(line: 247, column: 45, scope: !5498, inlinedAt: !5355)
!5500 = !DILocation(line: 253, column: 11, scope: !5288, inlinedAt: !5355)
!5501 = !DILocation(line: 377, column: 23, scope: !5290, inlinedAt: !5355)
!5502 = !DILocation(line: 378, column: 5, scope: !5290, inlinedAt: !5355)
!5503 = !DILocation(line: 396, column: 15, scope: !5268)
!5504 = !DILocation(line: 590, column: 8, scope: !5277)
!5505 = !DILocation(line: 590, column: 17, scope: !5277)
!5506 = !DILocation(line: 589, column: 3, scope: !5507)
!5507 = !DILexicalBlockFile(scope: !5278, file: !749, discriminator: 1)
!5508 = !DILocation(line: 592, column: 9, scope: !5275)
!5509 = !DILocation(line: 592, column: 35, scope: !5276)
!5510 = !DILocation(line: 593, column: 9, scope: !5276)
!5511 = !DILocation(line: 593, column: 24, scope: !5512)
!5512 = !DILexicalBlockFile(scope: !5276, file: !749, discriminator: 1)
!5513 = !DILocation(line: 593, column: 31, scope: !5512)
!5514 = !DILocation(line: 593, column: 34, scope: !5515)
!5515 = !DILexicalBlockFile(scope: !5276, file: !749, discriminator: 2)
!5516 = !DILocation(line: 593, column: 45, scope: !5515)
!5517 = !DILocation(line: 592, column: 9, scope: !5518)
!5518 = !DILexicalBlockFile(scope: !5277, file: !749, discriminator: 1)
!5519 = !DILocation(line: 595, column: 29, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5276, file: !749, line: 594, column: 7)
!5521 = !DILocation(line: 595, column: 27, scope: !5520)
!5522 = !DILocation(line: 595, column: 46, scope: !5520)
!5523 = !DILocation(line: 596, column: 9, scope: !5520)
!5524 = !DILocation(line: 591, column: 19, scope: !5277)
!5525 = !DILocation(line: 591, column: 36, scope: !5277)
!5526 = !DILocation(line: 591, column: 16, scope: !5277)
!5527 = !DILocation(line: 591, column: 52, scope: !5518)
!5528 = !DILocation(line: 591, column: 69, scope: !5277)
!5529 = !DILocation(line: 591, column: 49, scope: !5277)
!5530 = distinct !{!5530, !5531, !5532}
!5531 = !DILocation(line: 589, column: 3, scope: !5278)
!5532 = !DILocation(line: 597, column: 7, scope: !5278)
!5533 = !DILocation(line: 602, column: 7, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5268, file: !749, line: 602, column: 7)
!5535 = !DILocation(line: 602, column: 18, scope: !5534)
!5536 = !DILocation(line: 602, column: 7, scope: !5268)
!5537 = !DILocation(line: 612, column: 3, scope: !5268)
