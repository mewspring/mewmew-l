; ModuleID = 'coreutils-8.27/src/dd.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.symbol_value = type { [12 x i8], i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.mtget = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.__mbstate_t = type { i32, %union.anon.12 }
%union.anon.12 = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Usage: %s [OPERAND]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [360 x i8] c"Copy a file, converting and formatting according to the operands.\0A\0A  bs=BYTES        read and write up to BYTES bytes at a time\0A  cbs=BYTES       convert BYTES bytes at a time\0A  conv=CONVS      convert the file as per the comma separated symbol list\0A  count=N         copy only N input blocks\0A  ibs=BYTES       read up to BYTES bytes at a time (default: 512)\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [671 x i8] c"  if=FILE         read from FILE instead of stdin\0A  iflag=FLAGS     read as per the comma separated symbol list\0A  obs=BYTES       write BYTES bytes at a time (default: 512)\0A  of=FILE         write to FILE instead of stdout\0A  oflag=FLAGS     write as per the comma separated symbol list\0A  seek=N          skip N obs-sized blocks at start of output\0A  skip=N          skip N ibs-sized blocks at start of input\0A  status=LEVEL    The LEVEL of information to print to stderr;\0A                  'none' suppresses everything but error messages,\0A                  'noxfer' suppresses the final transfer statistics,\0A                  'progress' shows periodic transfer statistics\0A\00", align 1
@.str.4 = private unnamed_addr constant [242 x i8] c"\0AN and BYTES may be followed by the following multiplicative suffixes:\0Ac =1, w =2, b =512, kB =1000, K =1024, MB =1000*1000, M =1024*1024, xM =M,\0AGB =1000*1000*1000, G =1024*1024*1024, and so on for T, P, E, Z, Y.\0A\0AEach CONV symbol may be:\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [586 x i8] c"  ascii     from EBCDIC to ASCII\0A  ebcdic    from ASCII to EBCDIC\0A  ibm       from ASCII to alternate EBCDIC\0A  block     pad newline-terminated records with spaces to cbs-size\0A  unblock   replace trailing spaces in cbs-size records with newline\0A  lcase     change upper case to lower case\0A  ucase     change lower case to upper case\0A  sparse    try to seek rather than write the output for NUL input blocks\0A  swab      swap every pair of input bytes\0A  sync      pad every input block with NULs to ibs-size; when used\0A            with block or unblock, pad with spaces rather than NULs\0A\00", align 1
@.str.6 = private unnamed_addr constant [287 x i8] c"  excl      fail if the output file already exists\0A  nocreat   do not create the output file\0A  notrunc   do not truncate the output file\0A  noerror   continue after read errors\0A  fdatasync  physically write output file data before finishing\0A  fsync     likewise, but also write metadata\0A\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"\0AEach FLAG symbol may be:\0A\0A  append    append mode (makes sense only for output; conv=notrunc suggested)\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"  direct    use direct I/O for data\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"  directory  fail unless a directory\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"  dsync     use synchronized I/O for data\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"  sync      likewise, but also for metadata\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"  fullblock  accumulate full blocks of input (iflag only)\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"  nonblock  use non-blocking I/O\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"  noatime   do not update access time\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"  nocache   Request to drop cache.  See also oflag=sync\0A\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"  noctty    do not assign controlling terminal from file\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"  nofollow  do not follow symlinks\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"  count_bytes  treat 'count=N' as a byte count (iflag only)\0A\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"  skip_bytes  treat 'skip=N' as a byte count (iflag only)\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"  seek_bytes  treat 'seek=N' as a byte count (oflag only)\0A\00", align 1
@.str.21 = private unnamed_addr constant [136 x i8] c"\0ASending a %s signal to a running 'dd' process makes it\0Aprint I/O statistics to standard error and then resume copying.\0A\0AOptions are:\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"USR1\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@caught_signals = internal global %struct.__sigset_t zeroinitializer, align 8
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@page_size = internal unnamed_addr global i64 0, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"Paul Rubin\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"Stuart Kemp\00", align 1
@close_stdout_required = internal unnamed_addr global i1 false, align 1
@trans_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@optind = external local_unnamed_addr global i32, align 4
@.str.56 = private unnamed_addr constant [24 x i8] c"unrecognized operand %s\00", align 1
@input_file = internal unnamed_addr global i8* null, align 8
@output_file = internal unnamed_addr global i8* null, align 8
@conversions = internal constant [17 x %struct.symbol_value] [%struct.symbol_value { [12 x i8] c"ascii\00\00\00\00\00\00\00", i32 2065 }, %struct.symbol_value { [12 x i8] c"ebcdic\00\00\00\00\00\00", i32 2058 }, %struct.symbol_value { [12 x i8] c"ibm\00\00\00\00\00\00\00\00\00", i32 2060 }, %struct.symbol_value { [12 x i8] c"block\00\00\00\00\00\00\00", i32 2056 }, %struct.symbol_value { [12 x i8] c"unblock\00\00\00\00\00", i32 2064 }, %struct.symbol_value { [12 x i8] c"lcase\00\00\00\00\00\00\00", i32 2080 }, %struct.symbol_value { [12 x i8] c"ucase\00\00\00\00\00\00\00", i32 2112 }, %struct.symbol_value { [12 x i8] c"sparse\00\00\00\00\00\00", i32 65536 }, %struct.symbol_value { [12 x i8] c"swab\00\00\00\00\00\00\00\00", i32 2176 }, %struct.symbol_value { [12 x i8] c"noerror\00\00\00\00\00", i32 256 }, %struct.symbol_value { [12 x i8] c"nocreat\00\00\00\00\00", i32 4096 }, %struct.symbol_value { [12 x i8] c"excl\00\00\00\00\00\00\00\00", i32 8192 }, %struct.symbol_value { [12 x i8] c"notrunc\00\00\00\00\00", i32 512 }, %struct.symbol_value { [12 x i8] c"sync\00\00\00\00\00\00\00\00", i32 1024 }, %struct.symbol_value { [12 x i8] c"fdatasync\00\00\00", i32 16384 }, %struct.symbol_value { [12 x i8] c"fsync\00\00\00\00\00\00\00", i32 32768 }, %struct.symbol_value zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [19 x i8] c"invalid conversion\00", align 1
@conversions_mask = internal unnamed_addr global i32 0, align 4
@flags = internal constant [19 x %struct.symbol_value] [%struct.symbol_value { [12 x i8] c"append\00\00\00\00\00\00", i32 1024 }, %struct.symbol_value { [12 x i8] c"binary\00\00\00\00\00\00", i32 0 }, %struct.symbol_value { [12 x i8] c"cio\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.symbol_value { [12 x i8] c"direct\00\00\00\00\00\00", i32 16384 }, %struct.symbol_value { [12 x i8] c"directory\00\00\00", i32 65536 }, %struct.symbol_value { [12 x i8] c"dsync\00\00\00\00\00\00\00", i32 4096 }, %struct.symbol_value { [12 x i8] c"noatime\00\00\00\00\00", i32 262144 }, %struct.symbol_value { [12 x i8] c"nocache\00\00\00\00\00", i32 2 }, %struct.symbol_value { [12 x i8] c"noctty\00\00\00\00\00\00", i32 256 }, %struct.symbol_value { [12 x i8] c"nofollow\00\00\00\00", i32 131072 }, %struct.symbol_value { [12 x i8] c"nolinks\00\00\00\00\00", i32 0 }, %struct.symbol_value { [12 x i8] c"nonblock\00\00\00\00", i32 2048 }, %struct.symbol_value { [12 x i8] c"sync\00\00\00\00\00\00\00\00", i32 1052672 }, %struct.symbol_value { [12 x i8] c"text\00\00\00\00\00\00\00\00", i32 0 }, %struct.symbol_value { [12 x i8] c"fullblock\00\00\00", i32 1 }, %struct.symbol_value { [12 x i8] c"count_bytes\00", i32 4 }, %struct.symbol_value { [12 x i8] c"skip_bytes\00\00", i32 8 }, %struct.symbol_value { [12 x i8] c"seek_bytes\00\00", i32 16 }, %struct.symbol_value zeroinitializer], align 16
@.str.62 = private unnamed_addr constant [19 x i8] c"invalid input flag\00", align 1
@input_flags = internal unnamed_addr global i32 0, align 4
@.str.64 = private unnamed_addr constant [20 x i8] c"invalid output flag\00", align 1
@output_flags = internal unnamed_addr global i32 0, align 4
@statuses = internal constant [4 x %struct.symbol_value] [%struct.symbol_value { [12 x i8] c"none\00\00\00\00\00\00\00\00", i32 1 }, %struct.symbol_value { [12 x i8] c"noxfer\00\00\00\00\00\00", i32 2 }, %struct.symbol_value { [12 x i8] c"progress\00\00\00\00", i32 4 }, %struct.symbol_value zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [21 x i8] c"invalid status level\00", align 1
@status_level = internal unnamed_addr global i32 3, align 4
@input_blocksize = internal unnamed_addr global i64 0, align 8
@output_blocksize = internal unnamed_addr global i64 0, align 8
@conversion_blocksize = internal unnamed_addr global i64 0, align 8
@.str.75 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"fullblock\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"seek_bytes\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"count_bytes\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"skip_bytes\00", align 1
@skip_records = internal unnamed_addr global i64 0, align 8
@skip_bytes = internal global i64 0, align 8
@max_records = internal unnamed_addr global i64 -1, align 8
@max_bytes = internal unnamed_addr global i64 0, align 8
@seek_records = internal unnamed_addr global i64 0, align 8
@seek_bytes = internal unnamed_addr global i64 0, align 8
@warn_partial_read = internal unnamed_addr global i8 0, align 1
@iread_fnc = internal unnamed_addr global i64 (i32, i8*, i64)* null, align 8
@.str.80 = private unnamed_addr constant [45 x i8] c"cannot combine any two of {ascii,ebcdic,ibm}\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"cannot combine block and unblock\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"cannot combine lcase and ucase\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"cannot combine excl and nocreat\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"cannot combine direct and nocache\00", align 1
@i_nocache = internal unnamed_addr global i1 false, align 1
@o_nocache = internal unnamed_addr global i1 false, align 1
@ebcdic_to_ascii = internal constant [256 x i8] c"\00\01\02\03\9C\09\86\7F\97\8D\8E\0B\0C\0D\0E\0F\10\11\12\13\9D\85\08\87\18\19\92\8F\1C\1D\1E\1F\80\81\82\83\84\0A\17\1B\88\89\8A\8B\8C\05\06\07\90\91\16\93\94\95\96\04\98\99\9A\9B\14\15\9E\1A \A0\A1\A2\A3\A4\A5\A6\A7\A8\D5.<(+|&\A9\AA\AB\AC\AD\AE\AF\B0\B1!$*);~-/\B2\B3\B4\B5\B6\B7\B8\B9\CB,%_>?\BA\BB\BC\BD\BE\BF\C0\C1\C2`:#@'=\22\C3abcdefghi\C4\C5\C6\C7\C8\C9\CAjklmnopqr^\CC\CD\CE\CF\D0\D1\E5stuvwxyz\D2\D3\D4[\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4]\E6\E7{ABCDEFGHI\E8\E9\EA\EB\EC\ED}JKLMNOPQR\EE\EF\F0\F1\F2\F3\5C\9FSTUVWXYZ\F4\F5\F6\F7\F8\F90123456789\FA\FB\FC\FD\FE\FF", align 16
@translation_needed = internal unnamed_addr global i1 false, align 1
@ascii_to_ebcdic = internal constant [256 x i8] c"\00\01\02\037-./\16\05%\0B\0C\0D\0E\0F\10\11\12\13<=2&\18\19?'\1C\1D\1E\1F@Z\7F{[lP}M]\5CNk`Ka\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9z^L~no|\C1\C2\C3\C4\C5\C6\C7\C8\C9\D1\D2\D3\D4\D5\D6\D7\D8\D9\E2\E3\E4\E5\E6\E7\E8\E9\AD\E0\BD\9Amy\81\82\83\84\85\86\87\88\89\91\92\93\94\95\96\97\98\99\A2\A3\A4\A5\A6\A7\A8\A9\C0O\D0_\07 !\22#$\15\06\17()*+,\09\0A\1B01\1A3456\0889:;\04\14>\E1ABCDEFGHIQRSTUVWXYbcdefghipqrstuvwx\80\8A\8B\8C\8D\8E\8F\90j\9B\9C\9D\9E\9F\A0\AA\AB\ACJ\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\A1\BE\BF\CA\CB\CC\CD\CE\CF\DA\DB\DC\DD\DE\DF\EA\EB\EC\ED\EE\EF\FA\FB\FC\FD\FE\FF", align 16
@ascii_to_ibm = internal constant [256 x i8] c"\00\01\02\037-./\16\05%\0B\0C\0D\0E\0F\10\11\12\13<=2&\18\19?'\1C\1D\1E\1F@Z\7F{[lP}M]\5CNk`Ka\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9z^L~no|\C1\C2\C3\C4\C5\C6\C7\C8\C9\D1\D2\D3\D4\D5\D6\D7\D8\D9\E2\E3\E4\E5\E6\E7\E8\E9\AD\E0\BD_my\81\82\83\84\85\86\87\88\89\91\92\93\94\95\96\97\98\99\A2\A3\A4\A5\A6\A7\A8\A9\C0O\D0\A1\07 !\22#$\15\06\17()*+,\09\0A\1B01\1A3456\0889:;\04\14>\E1ABCDEFGHIQRSTUVWXYbcdefghipqrstuvwx\80\8A\8B\8C\8D\8E\8F\90\9A\9B\9C\9D\9E\9F\A0\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\CA\CB\CC\CD\CE\CF\DA\DB\DC\DD\DE\DF\EA\EB\EC\ED\EE\EF\FA\FB\FC\FD\FE\FF", align 16
@newline_character = internal unnamed_addr global i8 10, align 1
@space_character = internal unnamed_addr global i8 32, align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@input_seekable = internal unnamed_addr global i8 0, align 1
@input_offset = internal unnamed_addr global i64 0, align 8
@input_seek_errno = internal unnamed_addr global i32 0, align 4
@.str.34 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1
@.str.35 = private unnamed_addr constant [76 x i8] c"offset too large: cannot truncate to a length of seek=%lu (%lu-byte) blocks\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"failed to truncate to %lu bytes in output file %s\00", align 1
@start_time = internal unnamed_addr global i64 0, align 8
@next_time = internal unnamed_addr global i64 0, align 8
@input_offset_overflow = internal unnamed_addr global i8 0, align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"%s: cannot skip to specified offset\00", align 1
@obuf = internal unnamed_addr global i8* null, align 8
@.str.104 = private unnamed_addr constant [14 x i8] c"writing to %s\00", align 1
@r_partial = internal unnamed_addr global i64 0, align 8
@r_full = internal unnamed_addr global i64 0, align 8
@ibuf = internal unnamed_addr global i8* null, align 8
@cache_round.i_pending = internal unnamed_addr global i64 0, align 8
@.str.105 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.116 = private unnamed_addr constant [38 x i8] c"offset overflow while reading file %s\00", align 1
@.str.117 = private unnamed_addr constant [47 x i8] c"warning: invalid file offset after failed read\00", align 1
@.str.118 = private unnamed_addr constant [40 x i8] c"cannot work around kernel bug after all\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"%s: cannot seek\00", align 1
@w_bytes = internal unnamed_addr global i64 0, align 8
@.str.106 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@w_full = internal unnamed_addr global i64 0, align 8
@w_partial = internal unnamed_addr global i64 0, align 8
@char_is_saved = internal unnamed_addr global i1 false, align 1
@saved_char = internal global i8 0, align 1
@oc = internal unnamed_addr global i64 0, align 8
@col = internal unnamed_addr global i64 0, align 8
@final_op_was_seek = internal unnamed_addr global i1 false, align 1
@.str.107 = private unnamed_addr constant [50 x i8] c"failed to truncate to %ld bytes in output file %s\00", align 1
@.str.108 = private unnamed_addr constant [24 x i8] c"fdatasync failed for %s\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"fsync failed for %s\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"failed to discard cache for: %s\00", align 1
@cache_round.o_pending = internal unnamed_addr global i64 0, align 8
@invalidate_cache.output_offset = internal unnamed_addr global i64 -2, align 8
@.str.91 = private unnamed_addr constant [22 x i8] c"closing input file %s\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"closing output file %s\00", align 1
@copy_with_unblock.pending_spaces = internal unnamed_addr global i64 0, align 8
@r_truncate = internal unnamed_addr global i64 0, align 8
@.str.112 = private unnamed_addr constant [117 x i8] c"warning: working around lseek kernel bug for file (%s)\0A  of mt_type=0x%0lx -- see <sys/mtio.h> for the list of types\00", align 1
@progress_len = internal unnamed_addr global i32 0, align 4
@.str.93 = private unnamed_addr constant [40 x i8] c"%lu+%lu records in\0A%lu+%lu records out\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"%lu truncated record\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"%lu truncated records\0A\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"Infinity B\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"%lu byte copied, %g s, %s/s\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"%lu bytes copied, %g s, %s/s\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"%lu bytes (%s) copied, %g s, %s/s\00", align 1
@.str.100 = private unnamed_addr constant [38 x i8] c"%lu bytes (%s, %s) copied, %g s, %s/s\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.115 = private unnamed_addr constant [57 x i8] c"memory exhausted by output buffer of size %lu bytes (%s)\00", align 1
@.str.114 = private unnamed_addr constant [56 x i8] c"memory exhausted by input buffer of size %lu bytes (%s)\00", align 1
@.str.113 = private unnamed_addr constant [32 x i8] c"failed to turn off O_DIRECT: %s\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"%s: cannot skip\00", align 1
@interrupt_signal = internal global i32 0, align 4
@info_signal_count = internal global i32 0, align 4
@.str.102 = private unnamed_addr constant [21 x i8] c"setting flags for %s\00", align 1
@iread.prev_nread = internal unnamed_addr global i64 0, align 8
@.str.89 = private unnamed_addr constant [58 x i8] c"warning: partial read (%lu byte); suggest iflag=fullblock\00", align 1
@.str.90 = private unnamed_addr constant [59 x i8] c"warning: partial read (%lu bytes); suggest iflag=fullblock\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"bcEGkKMPTwYZ0\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.87 = private unnamed_addr constant [61 x i8] c"warning: %s is a zero multiplier; use %s if that is intended\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"00x\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.45 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.57 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.59 = private unnamed_addr constant [6 x i8] c"%.0Lf\00", align 1
@.str.3.60 = private unnamed_addr constant [6 x i8] c"%.1Lf\00", align 1
@power_letter = internal unnamed_addr constant [9 x i8] c"\00KMGTPEZY", align 1
@.str.4.61 = private unnamed_addr constant [11 x i8] c"BLOCK_SIZE\00", align 1
@.str.5.62 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.9.63 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@block_size_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7.65, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8.66, i32 0, i32 0), i8* null], align 16
@block_size_opts = internal constant [2 x i32] [i32 176, i32 144], align 4
@.str.6.64 = private unnamed_addr constant [18 x i8] c"eEgGkKmMpPtTyYzZ0\00", align 1
@.str.7.65 = private unnamed_addr constant [15 x i8] c"human-readable\00", align 1
@.str.8.66 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.70, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.71, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@.str.1.70 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.71 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8
@.str.119 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.120 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.121 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.124, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.125, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.126, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.128, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.129, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.130, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.131, i32 0, i32 0), i8* null], align 16
@.str.122 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.124 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.125 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.126 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.127 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.128 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.129 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.130 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.131 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.132 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.133 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.134 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.135 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.136 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.137 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.138 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.153 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.154 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.156 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.157 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.158 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.159 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.160 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.161 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.162 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.163 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.164 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.165 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.166 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.167 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.168 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.171 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.172 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.173 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.174 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.175 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.176 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.187 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.191 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.192 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.209 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.210 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.211 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.212 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.213 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.1.216 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.219 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.220 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.221 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.222 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.223 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.224 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.225 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #9
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #9
  br label %92

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 5) #9
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10) #9
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([360 x i8], [360 x i8]* @.str.2, i64 0, i64 0), i32 5) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([671 x i8], [671 x i8]* @.str.3, i64 0, i64 0), i32 5) #9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.4, i64 0, i64 0), i32 5) #9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #9
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([586 x i8], [586 x i8]* @.str.5, i64 0, i64 0), i32 5) #9
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #9
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.6, i64 0, i64 0), i32 5) #9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #9
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 5) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #9
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 5) #9
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #9
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 5) #9
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #9
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 5) #9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #9
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 5) #9
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #9
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 5) #9
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #9
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 5) #9
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #9
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 5) #9
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #9
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 5) #9
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #9
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i32 5) #9
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #9
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #9
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = tail call i32 @fputs_unlocked(i8* %57, %struct._IO_FILE* %58) #9
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i64 0, i64 0), i32 5) #9
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %62 = tail call i32 @fputs_unlocked(i8* %60, %struct._IO_FILE* %61) #9
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.19, i64 0, i64 0), i32 5) #9
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = tail call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #9
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i32 5) #9
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = tail call i32 @fputs_unlocked(i8* %66, %struct._IO_FILE* %67) #9
  %69 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.21, i64 0, i64 0), i32 5) #9
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #9
  %71 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i32 5) #9
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %73 = tail call i32 @fputs_unlocked(i8* %71, %struct._IO_FILE* %72) #9
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0), i32 5) #9
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = tail call i32 @fputs_unlocked(i8* %74, %struct._IO_FILE* %75) #9
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i32 5) #9
  %78 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0)) #9
  %79 = tail call i8* @setlocale(i32 5, i8* null) #9
  %80 = icmp eq i8* %79, null
  br i1 %80, label %87, label %81

; <label>:81:                                     ; preds = %8
  %82 = tail call i32 @strncmp(i8* nonnull %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i64 3) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

; <label>:84:                                     ; preds = %81
  %85 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.51, i64 0, i64 0), i32 5) #9
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #9
  br label %87

; <label>:87:                                     ; preds = %8, %81, %84
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i64 0, i64 0), i32 5) #9
  %89 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #9
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.53, i64 0, i64 0), i32 5) #9
  %91 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0)) #9
  br label %92

; <label>:92:                                     ; preds = %87, %3
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
  %4 = alloca %struct.stat, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.stat, align 8
  %8 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i64 0, i64 0)) #9
  %9 = icmp eq i8* %8, null
  %10 = bitcast %struct.sigaction* %6 to i8*
  call void @llvm.lifetime.start(i64 152, i8* nonnull %10) #9
  %11 = tail call i32 @sigemptyset(%struct.__sigset_t* nonnull @caught_signals) #9
  br i1 %9, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = tail call i32 @sigaddset(%struct.__sigset_t* nonnull @caught_signals, i32 10) #9
  br label %14

; <label>:14:                                     ; preds = %12, %2
  %15 = call i32 @sigaction(i32 2, %struct.sigaction* null, %struct.sigaction* nonnull %6) #9
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 0, i32 0
  %17 = load void (i32)*, void (i32)** %16, align 8
  %18 = icmp eq void (i32)* %17, inttoptr (i64 1 to void (i32)*)
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %14
  %20 = call i32 @sigaddset(%struct.__sigset_t* nonnull @caught_signals, i32 2) #9
  br label %21

; <label>:21:                                     ; preds = %19, %14
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 1
  %23 = bitcast %struct.__sigset_t* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.__sigset_t* @caught_signals to i8*), i64 128, i32 8, i1 false) #9
  %24 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 10) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %21
  store void (i32)* @siginfo_handler, void (i32)** %16, align 8
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = call i32 @sigaction(i32 10, %struct.sigaction* nonnull %6, %struct.sigaction* null) #9
  br label %29

; <label>:29:                                     ; preds = %26, %21
  %30 = call i32 @sigismember(%struct.__sigset_t* nonnull @caught_signals, i32 2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

; <label>:32:                                     ; preds = %29
  store void (i32)* @interrupt_handler, void (i32)** %16, align 8
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i64 0, i32 2
  store i32 -1073741824, i32* %33, align 8
  %34 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %6, %struct.sigaction* null) #9
  br label %35

; <label>:35:                                     ; preds = %29, %32
  call void @llvm.lifetime.end(i64 152, i8* nonnull %10) #9
  %36 = load i8*, i8** %1, align 8
  call void @set_program_name(i8* %36) #9
  %37 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)) #9
  %38 = call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0)) #9
  %39 = call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0)) #9
  %40 = call i32 @atexit(void ()* nonnull @maybe_close_stdout) #9
  %41 = tail call i32 @getpagesize() #1
  %42 = sext i32 %41 to i64
  store i64 %42, i64* @page_size, align 8
  %43 = load i8*, i8** @Version, align 8
  call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* %43, void (i32)* nonnull @usage, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* null) #9
  store i1 true, i1* @close_stdout_required, align 1
  %44 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), %struct.option* null, i32* null) #9
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %35
  br label %47

; <label>:47:                                     ; preds = %46
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>* bitcast ([256 x i8]* @trans_table to <16 x i8>*), align 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 16) to <16 x i8>*), align 16
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 32) to <16 x i8>*), align 16
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 48) to <16 x i8>*), align 16
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 64) to <16 x i8>*), align 16
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 80) to <16 x i8>*), align 16
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 96) to <16 x i8>*), align 16
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 112) to <16 x i8>*), align 16
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 128) to <16 x i8>*), align 16
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 144) to <16 x i8>*), align 16
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 160) to <16 x i8>*), align 16
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 176) to <16 x i8>*), align 16
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 192) to <16 x i8>*), align 16
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 208) to <16 x i8>*), align 16
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 224) to <16 x i8>*), align 16
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <16 x i8>* bitcast (i8* getelementptr inbounds ([256 x i8], [256 x i8]* @trans_table, i64 0, i64 240) to <16 x i8>*), align 16
  %48 = load i32, i32* @optind, align 4
  %49 = icmp slt i32 %48, %0
  br i1 %49, label %51, label %272

; <label>:50:                                     ; preds = %35
  call void @usage(i32 1) #15
  unreachable

; <label>:51:                                     ; preds = %47
  %52 = bitcast i32* %5 to i8*
  %53 = sext i32 %48 to i64
  %54 = sext i32 %0 to i64
  br label %55

; <label>:55:                                     ; preds = %262, %51
  %56 = phi i64 [ %53, %51 ], [ %267, %262 ]
  %57 = phi i64 [ 0, %51 ], [ %266, %262 ]
  %58 = phi i64 [ 0, %51 ], [ %265, %262 ]
  %59 = phi i64 [ 0, %51 ], [ %264, %262 ]
  %60 = phi i64 [ -1, %51 ], [ %263, %262 ]
  %61 = getelementptr inbounds i8*, i8** %1, i64 %56
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strchr(i8* %62, i32 61) #9
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %55
  %66 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i32 5) #9
  %67 = call i8* @quote(i8* %62) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %66, i8* %67) #9
  call void @usage(i32 1) #14
  unreachable

; <label>:68:                                     ; preds = %55
  %69 = getelementptr inbounds i8, i8* %63, i64 1
  br label %70

; <label>:70:                                     ; preds = %68
  br i1 false, label %75, label %71

; <label>:71:                                     ; preds = %70
  %72 = getelementptr inbounds i8, i8* %62, i64 1
  %73 = load i8, i8* %62, align 1
  %74 = icmp eq i8 %73, 105
  br i1 %74, label %1493, label %78

; <label>:75:                                     ; preds = %1497, %1493, %70
  %76 = phi i8* [ %62, %70 ], [ %72, %1493 ], [ %1498, %1497 ]
  %77 = load i8, i8* %76, align 1
  switch i8 %77, label %79 [
    i8 61, label %80
    i8 0, label %80
  ]

; <label>:78:                                     ; preds = %1499, %1494, %71
  br label %79

; <label>:79:                                     ; preds = %78, %75
  br label %81

; <label>:80:                                     ; preds = %75, %75
  store i8* %69, i8** @input_file, align 8
  br label %262

; <label>:81:                                     ; preds = %79
  br i1 false, label %86, label %82

; <label>:82:                                     ; preds = %81
  %83 = getelementptr inbounds i8, i8* %62, i64 1
  %84 = load i8, i8* %62, align 1
  %85 = icmp eq i8 %84, 111
  br i1 %85, label %1500, label %89

; <label>:86:                                     ; preds = %1504, %1500, %81
  %87 = phi i8* [ %62, %81 ], [ %83, %1500 ], [ %1505, %1504 ]
  %88 = load i8, i8* %87, align 1
  switch i8 %88, label %90 [
    i8 61, label %91
    i8 0, label %91
  ]

; <label>:89:                                     ; preds = %1506, %1501, %82
  br label %90

; <label>:90:                                     ; preds = %89, %86
  br label %92

; <label>:91:                                     ; preds = %86, %86
  store i8* %69, i8** @output_file, align 8
  br label %262

; <label>:92:                                     ; preds = %90
  br i1 false, label %97, label %93

; <label>:93:                                     ; preds = %92
  %94 = getelementptr inbounds i8, i8* %62, i64 1
  %95 = load i8, i8* %62, align 1
  %96 = icmp eq i8 %95, 99
  br i1 %96, label %1507, label %100

; <label>:97:                                     ; preds = %1521, %1517, %1512, %1507, %92
  %98 = phi i8* [ %62, %92 ], [ %94, %1507 ], [ %1509, %1512 ], [ %1514, %1517 ], [ %1522, %1521 ]
  %99 = load i8, i8* %98, align 1
  switch i8 %99, label %101 [
    i8 61, label %102
    i8 0, label %102
  ]

; <label>:100:                                    ; preds = %1523, %1518, %1513, %1508, %93
  br label %101

; <label>:101:                                    ; preds = %100, %97
  br label %106

; <label>:102:                                    ; preds = %97, %97
  %103 = call fastcc i32 @parse_symbols(i8* %69, %struct.symbol_value* getelementptr inbounds ([17 x %struct.symbol_value], [17 x %struct.symbol_value]* @conversions, i64 0, i64 0), i1 zeroext false, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i64 0, i64 0)) #9
  %104 = load i32, i32* @conversions_mask, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* @conversions_mask, align 4
  br label %262

; <label>:106:                                    ; preds = %101
  br i1 false, label %111, label %107

; <label>:107:                                    ; preds = %106
  %108 = getelementptr inbounds i8, i8* %62, i64 1
  %109 = load i8, i8* %62, align 1
  %110 = icmp eq i8 %109, 105
  br i1 %110, label %1524, label %114

; <label>:111:                                    ; preds = %1543, %1539, %1534, %1529, %1524, %106
  %112 = phi i8* [ %62, %106 ], [ %108, %1524 ], [ %1526, %1529 ], [ %1531, %1534 ], [ %1536, %1539 ], [ %1544, %1543 ]
  %113 = load i8, i8* %112, align 1
  switch i8 %113, label %115 [
    i8 61, label %116
    i8 0, label %116
  ]

; <label>:114:                                    ; preds = %1545, %1540, %1535, %1530, %1525, %107
  br label %115

; <label>:115:                                    ; preds = %114, %111
  br label %120

; <label>:116:                                    ; preds = %111, %111
  %117 = call fastcc i32 @parse_symbols(i8* %69, %struct.symbol_value* getelementptr inbounds ([19 x %struct.symbol_value], [19 x %struct.symbol_value]* @flags, i64 0, i64 0), i1 zeroext false, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0)) #9
  %118 = load i32, i32* @input_flags, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* @input_flags, align 4
  br label %262

; <label>:120:                                    ; preds = %115
  br i1 false, label %125, label %121

; <label>:121:                                    ; preds = %120
  %122 = getelementptr inbounds i8, i8* %62, i64 1
  %123 = load i8, i8* %62, align 1
  %124 = icmp eq i8 %123, 111
  br i1 %124, label %1546, label %128

; <label>:125:                                    ; preds = %1565, %1561, %1556, %1551, %1546, %120
  %126 = phi i8* [ %62, %120 ], [ %122, %1546 ], [ %1548, %1551 ], [ %1553, %1556 ], [ %1558, %1561 ], [ %1566, %1565 ]
  %127 = load i8, i8* %126, align 1
  switch i8 %127, label %129 [
    i8 61, label %130
    i8 0, label %130
  ]

; <label>:128:                                    ; preds = %1567, %1562, %1557, %1552, %1547, %121
  br label %129

; <label>:129:                                    ; preds = %128, %125
  br label %134

; <label>:130:                                    ; preds = %125, %125
  %131 = call fastcc i32 @parse_symbols(i8* %69, %struct.symbol_value* getelementptr inbounds ([19 x %struct.symbol_value], [19 x %struct.symbol_value]* @flags, i64 0, i64 0), i1 zeroext false, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0)) #9
  %132 = load i32, i32* @output_flags, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* @output_flags, align 4
  br label %262

; <label>:134:                                    ; preds = %129
  br i1 false, label %139, label %135

; <label>:135:                                    ; preds = %134
  %136 = getelementptr inbounds i8, i8* %62, i64 1
  %137 = load i8, i8* %62, align 1
  %138 = icmp eq i8 %137, 115
  br i1 %138, label %1568, label %144

; <label>:139:                                    ; preds = %1592, %1588, %1583, %1578, %1573, %1568, %134
  %140 = phi i8* [ %62, %134 ], [ %136, %1568 ], [ %1570, %1573 ], [ %1575, %1578 ], [ %1580, %1583 ], [ %1585, %1588 ], [ %1593, %1592 ]
  %141 = load i8, i8* %140, align 1
  switch i8 %141, label %145 [
    i8 61, label %142
    i8 0, label %142
  ]

; <label>:142:                                    ; preds = %139, %139
  %143 = call fastcc i32 @parse_symbols(i8* %69, %struct.symbol_value* getelementptr inbounds ([4 x %struct.symbol_value], [4 x %struct.symbol_value]* @statuses, i64 0, i64 0), i1 zeroext true, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0)) #9
  store i32 %143, i32* @status_level, align 4
  br label %262

; <label>:144:                                    ; preds = %1594, %1589, %1584, %1579, %1574, %1569, %135
  br label %145

; <label>:145:                                    ; preds = %144, %139
  call void @llvm.lifetime.start(i64 4, i8* nonnull %52) #9
  store i32 0, i32* %5, align 4
  %146 = call fastcc i64 @parse_integer(i8* %69, i32* nonnull %5) #9
  br label %147

; <label>:147:                                    ; preds = %145
  br i1 false, label %152, label %148

; <label>:148:                                    ; preds = %147
  %149 = getelementptr inbounds i8, i8* %62, i64 1
  %150 = load i8, i8* %62, align 1
  %151 = icmp eq i8 %150, 105
  br i1 %151, label %1595, label %155

; <label>:152:                                    ; preds = %1604, %1600, %1595, %147
  %153 = phi i8* [ %62, %147 ], [ %149, %1595 ], [ %1597, %1600 ], [ %1605, %1604 ]
  %154 = load i8, i8* %153, align 1
  switch i8 %154, label %156 [
    i8 61, label %157
    i8 0, label %157
  ]

; <label>:155:                                    ; preds = %1606, %1601, %1596, %148
  br label %156

; <label>:156:                                    ; preds = %155, %152
  br label %163

; <label>:157:                                    ; preds = %152, %152
  %158 = load i64, i64* @page_size, align 8
  %159 = shl i64 %158, 1
  %160 = sub i64 -4, %159
  %161 = icmp ult i64 %160, 9223372036854775807
  %162 = select i1 %161, i64 %160, i64 9223372036854775807
  store i64 %146, i64* @input_blocksize, align 8
  br label %239

; <label>:163:                                    ; preds = %156
  br i1 false, label %168, label %164

; <label>:164:                                    ; preds = %163
  %165 = getelementptr inbounds i8, i8* %62, i64 1
  %166 = load i8, i8* %62, align 1
  %167 = icmp eq i8 %166, 111
  br i1 %167, label %1607, label %171

; <label>:168:                                    ; preds = %1616, %1612, %1607, %163
  %169 = phi i8* [ %62, %163 ], [ %165, %1607 ], [ %1609, %1612 ], [ %1617, %1616 ]
  %170 = load i8, i8* %169, align 1
  switch i8 %170, label %172 [
    i8 61, label %173
    i8 0, label %173
  ]

; <label>:171:                                    ; preds = %1618, %1613, %1608, %164
  br label %172

; <label>:172:                                    ; preds = %171, %168
  br label %178

; <label>:173:                                    ; preds = %168, %168
  %174 = load i64, i64* @page_size, align 8
  %175 = sub i64 0, %174
  %176 = icmp ult i64 %175, 9223372036854775807
  %177 = select i1 %176, i64 %175, i64 9223372036854775807
  store i64 %146, i64* @output_blocksize, align 8
  br label %239

; <label>:178:                                    ; preds = %172
  br i1 false, label %183, label %179

; <label>:179:                                    ; preds = %178
  %180 = getelementptr inbounds i8, i8* %62, i64 1
  %181 = load i8, i8* %62, align 1
  %182 = icmp eq i8 %181, 98
  br i1 %182, label %1619, label %186

; <label>:183:                                    ; preds = %1623, %1619, %178
  %184 = phi i8* [ %62, %178 ], [ %180, %1619 ], [ %1624, %1623 ]
  %185 = load i8, i8* %184, align 1
  switch i8 %185, label %187 [
    i8 61, label %188
    i8 0, label %188
  ]

; <label>:186:                                    ; preds = %1625, %1620, %179
  br label %187

; <label>:187:                                    ; preds = %186, %183
  br label %194

; <label>:188:                                    ; preds = %183, %183
  %189 = load i64, i64* @page_size, align 8
  %190 = shl i64 %189, 1
  %191 = sub i64 -4, %190
  %192 = icmp ult i64 %191, 9223372036854775807
  %193 = select i1 %192, i64 %191, i64 9223372036854775807
  br label %239

; <label>:194:                                    ; preds = %187
  br i1 false, label %199, label %195

; <label>:195:                                    ; preds = %194
  %196 = getelementptr inbounds i8, i8* %62, i64 1
  %197 = load i8, i8* %62, align 1
  %198 = icmp eq i8 %197, 99
  br i1 %198, label %1626, label %202

; <label>:199:                                    ; preds = %1635, %1631, %1626, %194
  %200 = phi i8* [ %62, %194 ], [ %196, %1626 ], [ %1628, %1631 ], [ %1636, %1635 ]
  %201 = load i8, i8* %200, align 1
  switch i8 %201, label %203 [
    i8 61, label %204
    i8 0, label %204
  ]

; <label>:202:                                    ; preds = %1637, %1632, %1627, %195
  br label %203

; <label>:203:                                    ; preds = %202, %199
  br label %205

; <label>:204:                                    ; preds = %199, %199
  store i64 %146, i64* @conversion_blocksize, align 8
  br label %239

; <label>:205:                                    ; preds = %203
  br i1 false, label %210, label %206

; <label>:206:                                    ; preds = %205
  %207 = getelementptr inbounds i8, i8* %62, i64 1
  %208 = load i8, i8* %62, align 1
  %209 = icmp eq i8 %208, 115
  br i1 %209, label %1638, label %213

; <label>:210:                                    ; preds = %1652, %1648, %1643, %1638, %205
  %211 = phi i8* [ %62, %205 ], [ %207, %1638 ], [ %1640, %1643 ], [ %1645, %1648 ], [ %1653, %1652 ]
  %212 = load i8, i8* %211, align 1
  switch i8 %212, label %214 [
    i8 61, label %239
    i8 0, label %239
  ]

; <label>:213:                                    ; preds = %1654, %1649, %1644, %1639, %206
  br label %214

; <label>:214:                                    ; preds = %213, %210
  br label %215

; <label>:215:                                    ; preds = %214
  br i1 false, label %220, label %216

; <label>:216:                                    ; preds = %215
  %217 = getelementptr inbounds i8, i8* %62, i64 1
  %218 = load i8, i8* %62, align 1
  %219 = icmp eq i8 %218, 115
  br i1 %219, label %1655, label %223

; <label>:220:                                    ; preds = %1669, %1665, %1660, %1655, %215
  %221 = phi i8* [ %62, %215 ], [ %217, %1655 ], [ %1657, %1660 ], [ %1662, %1665 ], [ %1670, %1669 ]
  %222 = load i8, i8* %221, align 1
  switch i8 %222, label %224 [
    i8 61, label %239
    i8 0, label %239
  ]

; <label>:223:                                    ; preds = %1671, %1666, %1661, %1656, %216
  br label %224

; <label>:224:                                    ; preds = %223, %220
  br label %225

; <label>:225:                                    ; preds = %224
  br i1 false, label %230, label %226

; <label>:226:                                    ; preds = %225
  %227 = getelementptr inbounds i8, i8* %62, i64 1
  %228 = load i8, i8* %62, align 1
  %229 = icmp eq i8 %228, 99
  br i1 %229, label %1672, label %233

; <label>:230:                                    ; preds = %1691, %1687, %1682, %1677, %1672, %225
  %231 = phi i8* [ %62, %225 ], [ %227, %1672 ], [ %1674, %1677 ], [ %1679, %1682 ], [ %1684, %1687 ], [ %1692, %1691 ]
  %232 = load i8, i8* %231, align 1
  switch i8 %232, label %235 [
    i8 61, label %239
    i8 0, label %239
  ]

; <label>:233:                                    ; preds = %226, %1673, %1678, %1683, %1688
  br label %234

; <label>:234:                                    ; preds = %233, %1693
  br label %236

; <label>:235:                                    ; preds = %230
  br label %236

; <label>:236:                                    ; preds = %235, %234
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.56, i64 0, i64 0), i32 5) #9
  %238 = call i8* @quote(i8* %62) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %237, i8* %238) #9
  call void @usage(i32 1) #14
  unreachable

; <label>:239:                                    ; preds = %230, %230, %220, %220, %210, %210, %204, %188, %173, %157
  %240 = phi i64 [ %60, %157 ], [ %60, %173 ], [ %60, %188 ], [ %60, %204 ], [ %60, %210 ], [ %60, %220 ], [ %146, %230 ], [ %60, %210 ], [ %60, %220 ], [ %146, %230 ]
  %241 = phi i64 [ %59, %157 ], [ %59, %173 ], [ %59, %188 ], [ %59, %204 ], [ %146, %210 ], [ %59, %220 ], [ %59, %230 ], [ %146, %210 ], [ %59, %220 ], [ %59, %230 ]
  %242 = phi i64 [ %58, %157 ], [ %58, %173 ], [ %58, %188 ], [ %58, %204 ], [ %58, %210 ], [ %146, %220 ], [ %58, %230 ], [ %58, %210 ], [ %146, %220 ], [ %58, %230 ]
  %243 = phi i64 [ %57, %157 ], [ %57, %173 ], [ %146, %188 ], [ %57, %204 ], [ %57, %210 ], [ %57, %220 ], [ %57, %230 ], [ %57, %210 ], [ %57, %220 ], [ %57, %230 ]
  %244 = phi i64 [ 1, %157 ], [ 1, %173 ], [ 1, %188 ], [ 1, %204 ], [ 0, %210 ], [ 0, %220 ], [ 0, %230 ], [ 0, %210 ], [ 0, %220 ], [ 0, %230 ]
  %245 = phi i64 [ %162, %157 ], [ %177, %173 ], [ %193, %188 ], [ -1, %204 ], [ -1, %210 ], [ -1, %220 ], [ -1, %230 ], [ -1, %210 ], [ -1, %220 ], [ -1, %230 ]
  %246 = icmp ult i64 %146, %244
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %239
  store i32 4, i32* %5, align 4
  br label %257

; <label>:248:                                    ; preds = %239
  %249 = icmp ult i64 %245, %146
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %248
  store i32 1, i32* %5, align 4
  br label %257

; <label>:251:                                    ; preds = %248
  %252 = load i32, i32* %5, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %261, label %254

; <label>:254:                                    ; preds = %251
  %255 = icmp eq i32 %252, 1
  %256 = select i1 %255, i32 75, i32 0
  br label %257

; <label>:257:                                    ; preds = %254, %250, %247
  %258 = phi i32 [ 0, %247 ], [ 75, %250 ], [ %256, %254 ]
  %259 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i32 5) #9
  %260 = call i8* @quote(i8* %69) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* %259, i8* %260) #9
  unreachable

; <label>:261:                                    ; preds = %251
  call void @llvm.lifetime.end(i64 4, i8* nonnull %52) #9
  br label %262

; <label>:262:                                    ; preds = %261, %142, %130, %116, %102, %91, %80
  %263 = phi i64 [ %60, %80 ], [ %60, %91 ], [ %60, %102 ], [ %60, %116 ], [ %60, %130 ], [ %60, %142 ], [ %240, %261 ]
  %264 = phi i64 [ %59, %80 ], [ %59, %91 ], [ %59, %102 ], [ %59, %116 ], [ %59, %130 ], [ %59, %142 ], [ %241, %261 ]
  %265 = phi i64 [ %58, %80 ], [ %58, %91 ], [ %58, %102 ], [ %58, %116 ], [ %58, %130 ], [ %58, %142 ], [ %242, %261 ]
  %266 = phi i64 [ %57, %80 ], [ %57, %91 ], [ %57, %102 ], [ %57, %116 ], [ %57, %130 ], [ %57, %142 ], [ %243, %261 ]
  %267 = add nsw i64 %56, 1
  %268 = icmp slt i64 %267, %54
  br i1 %268, label %55, label %269

; <label>:269:                                    ; preds = %262
  %270 = icmp eq i64 %266, 0
  br i1 %270, label %272, label %271

; <label>:271:                                    ; preds = %269
  store i64 %266, i64* @output_blocksize, align 8
  store i64 %266, i64* @input_blocksize, align 8
  br label %286

; <label>:272:                                    ; preds = %269, %47
  %273 = phi i64 [ %265, %269 ], [ 0, %47 ]
  %274 = phi i64 [ %264, %269 ], [ 0, %47 ]
  %275 = phi i64 [ %263, %269 ], [ -1, %47 ]
  %276 = load i32, i32* @conversions_mask, align 4
  %277 = or i32 %276, 2048
  store i32 %277, i32* @conversions_mask, align 4
  %278 = load i64, i64* @input_blocksize, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %281

; <label>:280:                                    ; preds = %272
  store i64 512, i64* @input_blocksize, align 8
  br label %281

; <label>:281:                                    ; preds = %280, %272
  %282 = phi i64 [ 512, %280 ], [ %278, %272 ]
  %283 = load i64, i64* @output_blocksize, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

; <label>:285:                                    ; preds = %281
  store i64 512, i64* @output_blocksize, align 8
  br label %286

; <label>:286:                                    ; preds = %285, %281, %271
  %287 = phi i64 [ %265, %271 ], [ %273, %285 ], [ %273, %281 ]
  %288 = phi i64 [ %264, %271 ], [ %274, %285 ], [ %274, %281 ]
  %289 = phi i64 [ %263, %271 ], [ %275, %285 ], [ %275, %281 ]
  %290 = phi i64 [ %266, %271 ], [ 512, %285 ], [ %283, %281 ]
  %291 = phi i64 [ %266, %271 ], [ %282, %285 ], [ %282, %281 ]
  %292 = load i64, i64* @conversion_blocksize, align 8
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %297

; <label>:294:                                    ; preds = %286
  %295 = load i32, i32* @conversions_mask, align 4
  %296 = and i32 %295, -25
  store i32 %296, i32* @conversions_mask, align 4
  br label %297

; <label>:297:                                    ; preds = %294, %286
  %298 = load i32, i32* @input_flags, align 4
  %299 = and i32 %298, 1052672
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %303, label %301

; <label>:301:                                    ; preds = %297
  %302 = or i32 %298, 1052672
  store i32 %302, i32* @input_flags, align 4
  br label %303

; <label>:303:                                    ; preds = %301, %297
  %304 = phi i32 [ %298, %297 ], [ %302, %301 ]
  %305 = load i32, i32* @output_flags, align 4
  %306 = and i32 %305, 1
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308

; <label>:308:                                    ; preds = %303
  %309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), i32 5) #9
  %310 = call i8* @quote(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* %309, i8* %310) #9
  call void @usage(i32 1) #14
  unreachable

; <label>:311:                                    ; preds = %303
  %312 = and i32 %304, 16
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %317, label %314

; <label>:314:                                    ; preds = %311
  %315 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0), i32 5) #9
  %316 = call i8* @quote(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* %315, i8* %316) #9
  call void @usage(i32 1) #14
  unreachable

; <label>:317:                                    ; preds = %311
  %318 = and i32 %305, 12
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %327, label %320

; <label>:320:                                    ; preds = %317
  %321 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), i32 5) #9
  %322 = load i32, i32* @output_flags, align 4
  %323 = and i32 %322, 4
  %324 = icmp ne i32 %323, 0
  %325 = select i1 %324, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)
  %326 = call i8* @quote(i8* %325) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* %321, i8* %326) #9
  call void @usage(i32 1) #14
  unreachable

; <label>:327:                                    ; preds = %317
  %328 = and i32 %304, 8
  %329 = icmp ne i32 %328, 0
  %330 = icmp ne i64 %288, 0
  %331 = and i1 %330, %329
  br i1 %331, label %332, label %335

; <label>:332:                                    ; preds = %327
  %333 = udiv i64 %288, %291
  store i64 %333, i64* @skip_records, align 8
  %334 = urem i64 %288, %291
  store i64 %334, i64* @skip_bytes, align 8
  br label %337

; <label>:335:                                    ; preds = %327
  br i1 %330, label %336, label %337

; <label>:336:                                    ; preds = %335
  store i64 %288, i64* @skip_records, align 8
  br label %337

; <label>:337:                                    ; preds = %336, %335, %332
  %338 = and i32 %304, 4
  %339 = icmp ne i32 %338, 0
  %340 = icmp ne i64 %289, -1
  %341 = and i1 %340, %339
  br i1 %341, label %342, label %345

; <label>:342:                                    ; preds = %337
  %343 = udiv i64 %289, %291
  store i64 %343, i64* @max_records, align 8
  %344 = urem i64 %289, %291
  store i64 %344, i64* @max_bytes, align 8
  br label %347

; <label>:345:                                    ; preds = %337
  br i1 %340, label %346, label %347

; <label>:346:                                    ; preds = %345
  store i64 %289, i64* @max_records, align 8
  br label %347

; <label>:347:                                    ; preds = %346, %345, %342
  %348 = and i32 %305, 16
  %349 = icmp ne i32 %348, 0
  %350 = icmp ne i64 %287, 0
  %351 = and i1 %350, %349
  br i1 %351, label %352, label %355

; <label>:352:                                    ; preds = %347
  %353 = udiv i64 %287, %290
  store i64 %353, i64* @seek_records, align 8
  %354 = urem i64 %287, %290
  store i64 %354, i64* @seek_bytes, align 8
  br label %357

; <label>:355:                                    ; preds = %347
  br i1 %350, label %356, label %357

; <label>:356:                                    ; preds = %355
  store i64 %287, i64* @seek_records, align 8
  br label %357

; <label>:357:                                    ; preds = %356, %355, %352
  %358 = load i32, i32* @conversions_mask, align 4
  %359 = and i32 %358, 2048
  %360 = icmp eq i32 %359, 0
  %361 = and i32 %304, 1
  br i1 %360, label %362, label %375

; <label>:362:                                    ; preds = %357
  %363 = icmp eq i32 %361, 0
  br i1 %363, label %364, label %375

; <label>:364:                                    ; preds = %362
  %365 = load i64, i64* @skip_records, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %375

; <label>:367:                                    ; preds = %364
  %368 = load i64, i64* @max_records, align 8
  %369 = add i64 %368, 1
  %370 = icmp ugt i64 %369, 1
  br i1 %370, label %375, label %371

; <label>:371:                                    ; preds = %367
  %372 = or i32 %305, %304
  %373 = and i32 %372, 16384
  %374 = icmp ne i32 %373, 0
  br label %375

; <label>:375:                                    ; preds = %371, %367, %364, %362, %357
  %376 = phi i32 [ 0, %364 ], [ 1, %362 ], [ 0, %371 ], [ 0, %367 ], [ %361, %357 ]
  %377 = phi i1 [ true, %364 ], [ false, %362 ], [ %374, %371 ], [ true, %367 ], [ false, %357 ]
  %378 = zext i1 %377 to i8
  store i8 %378, i8* @warn_partial_read, align 1
  %379 = icmp ne i32 %376, 0
  %380 = select i1 %379, i64 (i32, i8*, i64)* @iread_fullblock, i64 (i32, i8*, i64)* @iread
  store i64 (i32, i8*, i64)* %380, i64 (i32, i8*, i64)** @iread_fnc, align 8
  %381 = and i32 %304, -2
  store i32 %381, i32* @input_flags, align 4
  %382 = and i32 %358, 7
  %383 = add i32 %358, 7
  %384 = and i32 %382, %383
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %388, label %386

; <label>:386:                                    ; preds = %375
  %387 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.80, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %387) #9
  unreachable

; <label>:388:                                    ; preds = %375
  %389 = and i32 %358, 24
  %390 = add nuw nsw i32 %389, 31
  %391 = and i32 %390, %389
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

; <label>:393:                                    ; preds = %388
  %394 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.81, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %394) #9
  unreachable

; <label>:395:                                    ; preds = %388
  %396 = and i32 %358, 96
  %397 = add nuw nsw i32 %396, 127
  %398 = and i32 %397, %396
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %402, label %400

; <label>:400:                                    ; preds = %395
  %401 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.82, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %401) #9
  unreachable

; <label>:402:                                    ; preds = %395
  %403 = and i32 %358, 12288
  %404 = add nuw nsw i32 %403, 16383
  %405 = and i32 %404, %403
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %409, label %407

; <label>:407:                                    ; preds = %402
  %408 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %408) #9
  unreachable

; <label>:409:                                    ; preds = %402
  %410 = and i32 %304, 16386
  %411 = add nuw nsw i32 %410, 32767
  %412 = and i32 %411, %410
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %419

; <label>:414:                                    ; preds = %409
  %415 = and i32 %305, 16386
  %416 = add nuw nsw i32 %415, 32767
  %417 = and i32 %416, %415
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %421, label %419

; <label>:419:                                    ; preds = %414, %409
  %420 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %420) #9
  unreachable

; <label>:421:                                    ; preds = %414
  %422 = and i32 %304, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424

; <label>:424:                                    ; preds = %421
  store i1 true, i1* @i_nocache, align 1
  %425 = and i32 %304, -4
  store i32 %425, i32* @input_flags, align 4
  br label %426

; <label>:426:                                    ; preds = %424, %421
  %427 = phi i32 [ %425, %424 ], [ %381, %421 ]
  %428 = and i32 %305, 2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %432, label %430

; <label>:430:                                    ; preds = %426
  store i1 true, i1* @o_nocache, align 1
  %431 = and i32 %305, -3
  store i32 %431, i32* @output_flags, align 4
  br label %432

; <label>:432:                                    ; preds = %426, %430
  %433 = and i32 %358, 1
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %464, label %435

; <label>:435:                                    ; preds = %432
  br label %436

; <label>:436:                                    ; preds = %436, %435
  %437 = phi i64 [ 0, %435 ], [ %461, %436 ]
  %438 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %437
  %439 = load i8, i8* %438, align 4
  %440 = zext i8 %439 to i64
  %441 = getelementptr inbounds [256 x i8], [256 x i8]* @ebcdic_to_ascii, i64 0, i64 %440
  %442 = load i8, i8* %441, align 1
  store i8 %442, i8* %438, align 4
  %443 = or i64 %437, 1
  %444 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i64
  %447 = getelementptr inbounds [256 x i8], [256 x i8]* @ebcdic_to_ascii, i64 0, i64 %446
  %448 = load i8, i8* %447, align 1
  store i8 %448, i8* %444, align 1
  %449 = or i64 %437, 2
  %450 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %449
  %451 = load i8, i8* %450, align 2
  %452 = zext i8 %451 to i64
  %453 = getelementptr inbounds [256 x i8], [256 x i8]* @ebcdic_to_ascii, i64 0, i64 %452
  %454 = load i8, i8* %453, align 1
  store i8 %454, i8* %450, align 2
  %455 = or i64 %437, 3
  %456 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %455
  %457 = load i8, i8* %456, align 1
  %458 = zext i8 %457 to i64
  %459 = getelementptr inbounds [256 x i8], [256 x i8]* @ebcdic_to_ascii, i64 0, i64 %458
  %460 = load i8, i8* %459, align 1
  store i8 %460, i8* %456, align 1
  %461 = add nsw i64 %437, 4
  %462 = icmp eq i64 %461, 256
  br i1 %462, label %463, label %436

; <label>:463:                                    ; preds = %436
  store i1 true, i1* @translation_needed, align 1
  br label %464

; <label>:464:                                    ; preds = %463, %432
  %465 = and i32 %358, 64
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %501, label %467

; <label>:467:                                    ; preds = %464
  %468 = tail call i32** @__ctype_toupper_loc() #1
  %469 = load i32*, i32** %468, align 8
  br label %470

; <label>:470:                                    ; preds = %470, %467
  %471 = phi i64 [ 0, %467 ], [ %499, %470 ]
  %472 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %471
  %473 = load i8, i8* %472, align 4
  %474 = zext i8 %473 to i64
  %475 = getelementptr inbounds i32, i32* %469, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %472, align 4
  %478 = or i64 %471, 1
  %479 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i64
  %482 = getelementptr inbounds i32, i32* %469, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %479, align 1
  %485 = or i64 %471, 2
  %486 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %485
  %487 = load i8, i8* %486, align 2
  %488 = zext i8 %487 to i64
  %489 = getelementptr inbounds i32, i32* %469, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %486, align 2
  %492 = or i64 %471, 3
  %493 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %492
  %494 = load i8, i8* %493, align 1
  %495 = zext i8 %494 to i64
  %496 = getelementptr inbounds i32, i32* %469, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %493, align 1
  %499 = add nsw i64 %471, 4
  %500 = icmp eq i64 %499, 256
  br i1 %500, label %539, label %470

; <label>:501:                                    ; preds = %464
  %502 = and i32 %358, 32
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %541, label %504

; <label>:504:                                    ; preds = %501
  %505 = tail call i32** @__ctype_tolower_loc() #1
  %506 = load i32*, i32** %505, align 8
  br label %507

; <label>:507:                                    ; preds = %507, %504
  %508 = phi i64 [ 0, %504 ], [ %536, %507 ]
  %509 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %508
  %510 = load i8, i8* %509, align 4
  %511 = zext i8 %510 to i64
  %512 = getelementptr inbounds i32, i32* %506, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %509, align 4
  %515 = or i64 %508, 1
  %516 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %515
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i64
  %519 = getelementptr inbounds i32, i32* %506, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %516, align 1
  %522 = or i64 %508, 2
  %523 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %522
  %524 = load i8, i8* %523, align 2
  %525 = zext i8 %524 to i64
  %526 = getelementptr inbounds i32, i32* %506, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = trunc i32 %527 to i8
  store i8 %528, i8* %523, align 2
  %529 = or i64 %508, 3
  %530 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %529
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i64
  %533 = getelementptr inbounds i32, i32* %506, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %530, align 1
  %536 = add nsw i64 %508, 4
  %537 = icmp eq i64 %536, 256
  br i1 %537, label %538, label %507

; <label>:538:                                    ; preds = %507
  br label %540

; <label>:539:                                    ; preds = %470
  br label %540

; <label>:540:                                    ; preds = %539, %538
  store i1 true, i1* @translation_needed, align 1
  br label %541

; <label>:541:                                    ; preds = %540, %501
  %542 = and i32 %358, 2
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %572, label %544

; <label>:544:                                    ; preds = %541
  br label %545

; <label>:545:                                    ; preds = %545, %544
  %546 = phi i64 [ 0, %544 ], [ %570, %545 ]
  %547 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %546
  %548 = load i8, i8* %547, align 4
  %549 = zext i8 %548 to i64
  %550 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 %549
  %551 = load i8, i8* %550, align 1
  store i8 %551, i8* %547, align 4
  %552 = or i64 %546, 1
  %553 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %552
  %554 = load i8, i8* %553, align 1
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 %555
  %557 = load i8, i8* %556, align 1
  store i8 %557, i8* %553, align 1
  %558 = or i64 %546, 2
  %559 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %558
  %560 = load i8, i8* %559, align 2
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 %561
  %563 = load i8, i8* %562, align 1
  store i8 %563, i8* %559, align 2
  %564 = or i64 %546, 3
  %565 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %564
  %566 = load i8, i8* %565, align 1
  %567 = zext i8 %566 to i64
  %568 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 %567
  %569 = load i8, i8* %568, align 1
  store i8 %569, i8* %565, align 1
  %570 = add nsw i64 %546, 4
  %571 = icmp eq i64 %570, 256
  br i1 %571, label %604, label %545

; <label>:572:                                    ; preds = %541
  %573 = and i32 %358, 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %610, label %575

; <label>:575:                                    ; preds = %572
  br label %576

; <label>:576:                                    ; preds = %576, %575
  %577 = phi i64 [ 0, %575 ], [ %601, %576 ]
  %578 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %577
  %579 = load i8, i8* %578, align 4
  %580 = zext i8 %579 to i64
  %581 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 %580
  %582 = load i8, i8* %581, align 1
  store i8 %582, i8* %578, align 4
  %583 = or i64 %577, 1
  %584 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %583
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i64
  %587 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 %586
  %588 = load i8, i8* %587, align 1
  store i8 %588, i8* %584, align 1
  %589 = or i64 %577, 2
  %590 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %589
  %591 = load i8, i8* %590, align 2
  %592 = zext i8 %591 to i64
  %593 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 %592
  %594 = load i8, i8* %593, align 1
  store i8 %594, i8* %590, align 2
  %595 = or i64 %577, 3
  %596 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %595
  %597 = load i8, i8* %596, align 1
  %598 = zext i8 %597 to i64
  %599 = getelementptr inbounds [256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 %598
  %600 = load i8, i8* %599, align 1
  store i8 %600, i8* %596, align 1
  %601 = add nsw i64 %577, 4
  %602 = icmp eq i64 %601, 256
  br i1 %602, label %603, label %576

; <label>:603:                                    ; preds = %576
  br label %605

; <label>:604:                                    ; preds = %545
  br label %605

; <label>:605:                                    ; preds = %604, %603
  %606 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 10), %603 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 10), %604 ]
  %607 = phi i8* [ getelementptr inbounds ([256 x i8], [256 x i8]* @ascii_to_ibm, i64 0, i64 32), %603 ], [ getelementptr inbounds ([256 x i8], [256 x i8]* @ascii_to_ebcdic, i64 0, i64 32), %604 ]
  store i1 true, i1* @translation_needed, align 1
  %608 = load i8, i8* %606, align 2
  store i8 %608, i8* @newline_character, align 1
  %609 = load i8, i8* %607, align 16
  store i8 %609, i8* @space_character, align 1
  br label %610

; <label>:610:                                    ; preds = %572, %605
  %611 = load i8*, i8** @input_file, align 8
  %612 = icmp eq i8* %611, null
  br i1 %612, label %614, label %613

; <label>:613:                                    ; preds = %610
  br label %617

; <label>:614:                                    ; preds = %610
  %615 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 5) #9
  store i8* %615, i8** @input_file, align 8
  %616 = load i32, i32* @input_flags, align 4
  call fastcc void @set_fd_flags(i32 0, i32 %616, i8* %615)
  br label %629

; <label>:617:                                    ; preds = %613, %620
  call fastcc void @process_signals() #9
  %618 = call i32 @fd_reopen(i32 0, i8* nonnull %611, i32 %427, i32 0) #9
  %619 = icmp slt i32 %618, 0
  br i1 %619, label %620, label %628

; <label>:620:                                    ; preds = %617
  %621 = tail call i32* @__errno_location() #1
  %622 = load i32, i32* %621, align 4
  %623 = icmp eq i32 %622, 4
  br i1 %623, label %617, label %624

; <label>:624:                                    ; preds = %620
  %625 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 5) #9
  %626 = load i8*, i8** @input_file, align 8
  %627 = call i8* @quotearg_style(i32 4, i8* %626) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %622, i8* %625, i8* %627)
  unreachable

; <label>:628:                                    ; preds = %617
  br label %629

; <label>:629:                                    ; preds = %628, %614
  %630 = call i64 @lseek(i32 0, i64 0, i32 1) #9
  %631 = lshr i64 %630, 63
  %632 = trunc i64 %631 to i8
  %633 = xor i8 %632, 1
  store i8 %633, i8* @input_seekable, align 1
  %634 = icmp sgt i64 %630, 0
  %635 = select i1 %634, i64 %630, i64 0
  store i64 %635, i64* @input_offset, align 8
  %636 = tail call i32* @__errno_location() #1
  %637 = load i32, i32* %636, align 4
  store i32 %637, i32* @input_seek_errno, align 4
  %638 = load i8*, i8** @output_file, align 8
  %639 = icmp eq i8* %638, null
  br i1 %639, label %640, label %643

; <label>:640:                                    ; preds = %629
  %641 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 5) #9
  store i8* %641, i8** @output_file, align 8
  %642 = load i32, i32* @output_flags, align 4
  call fastcc void @set_fd_flags(i32 1, i32 %642, i8* %641)
  br label %732

; <label>:643:                                    ; preds = %629
  %644 = load i32, i32* @output_flags, align 4
  %645 = load i32, i32* @conversions_mask, align 4
  %646 = lshr i32 %645, 6
  %647 = and i32 %646, 64
  %648 = xor i32 %647, 64
  %649 = and i32 %646, 128
  %650 = load i64, i64* @seek_records, align 8
  %651 = icmp eq i64 %650, 0
  %652 = and i32 %645, 512
  %653 = xor i32 %652, 512
  %654 = select i1 %651, i32 %653, i32 0
  %655 = or i32 %649, %644
  %656 = or i32 %655, %648
  %657 = or i32 %656, %654
  br i1 %651, label %668, label %658

; <label>:658:                                    ; preds = %643
  %659 = or i32 %657, 2
  br label %660

; <label>:660:                                    ; preds = %663, %658
  call fastcc void @process_signals() #9
  %661 = call i32 @fd_reopen(i32 1, i8* nonnull %638, i32 %659, i32 438) #9
  %662 = icmp slt i32 %661, 0
  br i1 %662, label %663, label %682

; <label>:663:                                    ; preds = %660
  %664 = load i32, i32* %636, align 4
  %665 = icmp eq i32 %664, 4
  br i1 %665, label %660, label %666

; <label>:666:                                    ; preds = %663
  %667 = load i8*, i8** @output_file, align 8
  br label %668

; <label>:668:                                    ; preds = %666, %643
  %669 = phi i8* [ %667, %666 ], [ %638, %643 ]
  %670 = or i32 %657, 1
  br label %671

; <label>:671:                                    ; preds = %674, %668
  call fastcc void @process_signals() #9
  %672 = call i32 @fd_reopen(i32 1, i8* %669, i32 %670, i32 438) #9
  %673 = icmp slt i32 %672, 0
  br i1 %673, label %674, label %681

; <label>:674:                                    ; preds = %671
  %675 = load i32, i32* %636, align 4
  %676 = icmp eq i32 %675, 4
  br i1 %676, label %671, label %677

; <label>:677:                                    ; preds = %674
  %678 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 5) #9
  %679 = load i8*, i8** @output_file, align 8
  %680 = call i8* @quotearg_style(i32 4, i8* %679) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %675, i8* %678, i8* %680)
  unreachable

; <label>:681:                                    ; preds = %671
  br label %683

; <label>:682:                                    ; preds = %660
  br label %683

; <label>:683:                                    ; preds = %682, %681
  %684 = load i64, i64* @seek_records, align 8
  %685 = icmp eq i64 %684, 0
  br i1 %685, label %732, label %686

; <label>:686:                                    ; preds = %683
  %687 = load i32, i32* @conversions_mask, align 4
  %688 = and i32 %687, 512
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %732

; <label>:690:                                    ; preds = %686
  %691 = load i64, i64* @output_blocksize, align 8
  %692 = mul i64 %691, %684
  %693 = load i64, i64* @seek_bytes, align 8
  %694 = add i64 %692, %693
  %695 = udiv i64 9223372036854775807, %691
  %696 = icmp ult i64 %695, %684
  br i1 %696, label %698, label %697

; <label>:697:                                    ; preds = %690
  br label %701

; <label>:698:                                    ; preds = %690
  %699 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.35, i64 0, i64 0), i32 5) #9
  %700 = load i64, i64* @seek_records, align 8
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %699, i64 %700, i64 %691)
  unreachable

; <label>:701:                                    ; preds = %697, %704
  call fastcc void @process_signals() #9
  %702 = call i32 @ftruncate(i32 1, i64 %694) #9
  %703 = icmp slt i32 %702, 0
  br i1 %703, label %704, label %707

; <label>:704:                                    ; preds = %701
  %705 = load i32, i32* %636, align 4
  %706 = icmp eq i32 %705, 4
  br i1 %706, label %701, label %711

; <label>:707:                                    ; preds = %701
  %708 = icmp eq i32 %702, 0
  br i1 %708, label %732, label %709

; <label>:709:                                    ; preds = %707
  %710 = load i32, i32* %636, align 4
  br label %712

; <label>:711:                                    ; preds = %704
  br label %712

; <label>:712:                                    ; preds = %711, %709
  %713 = phi i32 [ %710, %709 ], [ %705, %711 ]
  %714 = bitcast %struct.stat* %7 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %714) #9
  %715 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %7) #9
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %722, label %717

; <label>:717:                                    ; preds = %712
  %718 = load i32, i32* %636, align 4
  %719 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 5) #9
  %720 = load i8*, i8** @output_file, align 8
  %721 = call i8* @quotearg_style(i32 4, i8* %720) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %718, i8* %719, i8* %721)
  unreachable

; <label>:722:                                    ; preds = %712
  %723 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  %724 = load i32, i32* %723, align 8
  %725 = trunc i32 %724 to i16
  %726 = and i16 %725, -4096
  switch i16 %726, label %731 [
    i16 -32768, label %727
    i16 16384, label %727
  ]

; <label>:727:                                    ; preds = %722, %722
  %728 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i32 5) #9
  %729 = load i8*, i8** @output_file, align 8
  %730 = call i8* @quotearg_style(i32 4, i8* %729) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %713, i8* %728, i64 %694, i8* %730)
  unreachable

; <label>:731:                                    ; preds = %722
  call void @llvm.lifetime.end(i64 144, i8* nonnull %714) #9
  br label %732

; <label>:732:                                    ; preds = %683, %686, %707, %731, %640
  %733 = call i64 @gethrxtime() #9
  store i64 %733, i64* @start_time, align 8
  %734 = add nsw i64 %733, 1000000000
  store i64 %734, i64* @next_time, align 8
  %735 = load i64, i64* @skip_records, align 8
  %736 = load i64, i64* @skip_bytes, align 8
  %737 = or i64 %736, %735
  %738 = icmp eq i64 %737, 0
  br i1 %738, label %764, label %739

; <label>:739:                                    ; preds = %732
  %740 = load i64, i64* @input_offset, align 8
  %741 = load i64, i64* @input_blocksize, align 8
  %742 = load i8*, i8** @input_file, align 8
  %743 = call fastcc i64 @skip(i32 0, i8* %742, i64 %735, i64 %741, i64* nonnull @skip_bytes) #9
  %744 = icmp eq i64 %743, 0
  br i1 %744, label %745, label %757

; <label>:745:                                    ; preds = %739
  %746 = mul i64 %741, %735
  %747 = add i64 %740, %736
  %748 = add i64 %747, %746
  %749 = load i64, i64* @input_offset, align 8
  %750 = load i8, i8* @input_offset_overflow, align 1
  %751 = icmp eq i8 %750, 0
  %752 = icmp ne i64 %748, %749
  %753 = and i1 %752, %751
  %754 = load i32, i32* @status_level, align 4
  %755 = icmp ne i32 %754, 1
  %756 = and i1 %753, %755
  br i1 %756, label %760, label %764

; <label>:757:                                    ; preds = %739
  %758 = load i32, i32* @status_level, align 4
  %759 = icmp eq i32 %758, 1
  br i1 %759, label %764, label %760

; <label>:760:                                    ; preds = %757, %745
  %761 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i64 0, i64 0), i32 5) #9
  %762 = load i8*, i8** @input_file, align 8
  %763 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %762) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %761, i8* %763) #9
  br label %764

; <label>:764:                                    ; preds = %760, %757, %745, %732
  %765 = load i64, i64* @seek_records, align 8
  %766 = load i64, i64* @seek_bytes, align 8
  %767 = or i64 %766, %765
  %768 = icmp eq i64 %767, 0
  br i1 %768, label %811, label %769

; <label>:769:                                    ; preds = %764
  %770 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %770) #9
  store i64 %766, i64* %3, align 8
  %771 = load i8*, i8** @output_file, align 8
  %772 = load i64, i64* @output_blocksize, align 8
  %773 = call fastcc i64 @skip(i32 1, i8* %771, i64 %765, i64 %772, i64* nonnull %3) #9
  %774 = load i64, i64* %3, align 8
  %775 = or i64 %774, %773
  %776 = icmp eq i64 %775, 0
  br i1 %776, label %810, label %777

; <label>:777:                                    ; preds = %769
  %778 = icmp ne i64 %773, 0
  %779 = load i8*, i8** @obuf, align 8
  %780 = load i64, i64* @output_blocksize, align 8
  %781 = select i1 %778, i64 %780, i64 %774
  call void @llvm.memset.p0i8.i64(i8* %779, i8 0, i64 %781, i32 1, i1 false) #9
  %782 = call fastcc i64 @iwrite(i8* %779, i64 %781) #9
  %783 = icmp eq i64 %782, %781
  br i1 %783, label %784, label %786

; <label>:784:                                    ; preds = %777
  br label %791

; <label>:785:                                    ; preds = %801
  br label %786

; <label>:786:                                    ; preds = %785, %777
  %787 = load i32, i32* %636, align 4
  %788 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i64 0, i64 0), i32 5) #9
  %789 = load i8*, i8** @output_file, align 8
  %790 = call i8* @quotearg_style(i32 4, i8* %789) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %787, i8* %788, i8* %790) #9
  call fastcc void @quit() #14
  unreachable

; <label>:791:                                    ; preds = %784, %801
  %792 = phi i1 [ %805, %801 ], [ %778, %784 ]
  %793 = phi i64 [ %802, %801 ], [ %773, %784 ]
  %794 = phi i64 [ %796, %801 ], [ %774, %784 ]
  %795 = add i64 %793, -1
  %796 = select i1 %792, i64 %794, i64 0
  %797 = or i64 %795, %794
  %798 = icmp eq i64 %797, 0
  %799 = xor i1 %792, true
  %800 = or i1 %798, %799
  br i1 %800, label %809, label %801

; <label>:801:                                    ; preds = %791
  %802 = select i1 %792, i64 %795, i64 0
  %803 = load i64, i64* @output_blocksize, align 8
  %804 = load i8*, i8** @obuf, align 8
  %805 = icmp ne i64 %802, 0
  %806 = select i1 %805, i64 %803, i64 %796
  %807 = call fastcc i64 @iwrite(i8* %804, i64 %806) #9
  %808 = icmp eq i64 %807, %806
  br i1 %808, label %791, label %785

; <label>:809:                                    ; preds = %791
  store i64 %796, i64* %3, align 8
  br label %810

; <label>:810:                                    ; preds = %809, %769
  call void @llvm.lifetime.end(i64 8, i8* nonnull %770) #9
  br label %811

; <label>:811:                                    ; preds = %810, %764
  %812 = load i64, i64* @max_records, align 8
  %813 = load i64, i64* @max_bytes, align 8
  %814 = or i64 %813, %812
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %1394, label %816

; <label>:816:                                    ; preds = %811
  call fastcc void @alloc_ibuf() #9
  call fastcc void @alloc_obuf() #9
  br label %818

; <label>:817:                                    ; preds = %1215
  br label %1064

; <label>:818:                                    ; preds = %1064, %816
  %819 = phi i32 [ 0, %816 ], [ %1013, %1064 ]
  %820 = phi i64 [ 0, %816 ], [ %1044, %1064 ]
  %821 = icmp ne i64 %820, 0
  br label %822

; <label>:822:                                    ; preds = %1005, %818
  %823 = phi i32 [ %1006, %1005 ], [ %819, %818 ]
  %824 = load i32, i32* @status_level, align 4
  %825 = icmp eq i32 %824, 4
  br i1 %825, label %826, label %833

; <label>:826:                                    ; preds = %822
  %827 = call i64 @gethrxtime() #9
  %828 = load i64, i64* @next_time, align 8
  %829 = icmp sgt i64 %828, %827
  br i1 %829, label %833, label %830

; <label>:830:                                    ; preds = %826
  call fastcc void @print_xfer_stats(i64 %827) #9
  %831 = load i64, i64* @next_time, align 8
  %832 = add nsw i64 %831, 1000000000
  store i64 %832, i64* @next_time, align 8
  br label %833

; <label>:833:                                    ; preds = %830, %826, %822
  %834 = load i64, i64* @r_partial, align 8
  %835 = load i64, i64* @r_full, align 8
  %836 = add i64 %835, %834
  %837 = load i64, i64* @max_records, align 8
  %838 = load i64, i64* @max_bytes, align 8
  %839 = icmp ne i64 %838, 0
  %840 = zext i1 %839 to i64
  %841 = add i64 %840, %837
  %842 = icmp ult i64 %836, %841
  br i1 %842, label %843, label %1219

; <label>:843:                                    ; preds = %833
  %844 = load i32, i32* @conversions_mask, align 4
  %845 = and i32 %844, 1280
  %846 = icmp eq i32 %845, 1280
  %847 = load i8*, i8** @ibuf, align 8
  br i1 %846, label %848, label %854

; <label>:848:                                    ; preds = %843
  %849 = and i32 %844, 24
  %850 = icmp ne i32 %849, 0
  %851 = select i1 %850, i8 32, i8 0
  %852 = load i64, i64* @input_blocksize, align 8
  call void @llvm.memset.p0i8.i64(i8* %847, i8 %851, i64 %852, i32 1, i1 false) #9
  %853 = load i64, i64* @max_bytes, align 8
  br label %854

; <label>:854:                                    ; preds = %848, %843
  %855 = phi i64 [ %853, %848 ], [ %838, %843 ]
  %856 = icmp ult i64 %836, %837
  %857 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** @iread_fnc, align 8
  %858 = load i64, i64* @input_blocksize, align 8
  %859 = select i1 %856, i64 %858, i64 %855
  %860 = call i64 %857(i32 0, i8* %847, i64 %859) #9
  %861 = icmp sgt i64 %860, -1
  br i1 %861, label %862, label %896

; <label>:862:                                    ; preds = %854
  %863 = load i1, i1* @i_nocache, align 1
  br i1 %863, label %864, label %894

; <label>:864:                                    ; preds = %862
  %865 = icmp eq i64 %860, 0
  %866 = load i64, i64* @cache_round.i_pending, align 8
  br i1 %865, label %875, label %867

; <label>:867:                                    ; preds = %864
  %868 = add nsw i64 %866, %860
  %869 = load i64, i64* @page_size, align 8
  %870 = urem i64 %868, %869
  store i64 %870, i64* @cache_round.i_pending, align 8
  %871 = sub i64 %868, %870
  %872 = icmp eq i64 %871, 0
  %873 = icmp ule i64 %868, %870
  %874 = or i1 %873, %872
  br i1 %874, label %1012, label %875

; <label>:875:                                    ; preds = %867, %864
  %876 = phi i64 [ %870, %867 ], [ %866, %864 ]
  %877 = phi i64 [ %871, %867 ], [ %866, %864 ]
  %878 = or i64 %877, %860
  %879 = icmp eq i64 %878, 0
  %880 = load i64, i64* @max_records, align 8
  %881 = icmp ne i64 %880, 0
  %882 = and i1 %879, %881
  br i1 %882, label %894, label %883

; <label>:883:                                    ; preds = %875
  %884 = load i8, i8* @input_seekable, align 1
  %885 = icmp eq i8 %884, 0
  br i1 %885, label %893, label %886

; <label>:886:                                    ; preds = %883
  %887 = load i64, i64* @input_offset, align 8
  %888 = sub i64 0, %876
  %889 = select i1 %865, i64 0, i64 %888
  %890 = sub i64 %889, %877
  %891 = add i64 %890, %887
  %892 = call i32 @posix_fadvise(i32 0, i64 %891, i64 %877, i32 4) #9
  br label %894

; <label>:893:                                    ; preds = %883
  store i32 29, i32* %636, align 4
  br label %894

; <label>:894:                                    ; preds = %893, %886, %875, %862
  %895 = icmp eq i64 %860, 0
  br i1 %895, label %1221, label %1012

; <label>:896:                                    ; preds = %854
  %897 = load i32, i32* @conversions_mask, align 4
  %898 = and i32 %897, 256
  %899 = icmp eq i32 %898, 0
  %900 = load i32, i32* @status_level, align 4
  %901 = icmp ne i32 %900, 1
  %902 = or i1 %899, %901
  br i1 %902, label %903, label %909

; <label>:903:                                    ; preds = %896
  %904 = load i32, i32* %636, align 4
  %905 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i64 0, i64 0), i32 5) #9
  %906 = load i8*, i8** @input_file, align 8
  %907 = call i8* @quotearg_style(i32 4, i8* %906) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %904, i8* %905, i8* %907) #9
  %908 = load i32, i32* @conversions_mask, align 4
  br label %909

; <label>:909:                                    ; preds = %903, %896
  %910 = phi i32 [ %897, %896 ], [ %908, %903 ]
  %911 = and i32 %910, 256
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %1219, label %913

; <label>:913:                                    ; preds = %909
  call fastcc void @print_stats() #9
  %914 = load i64, i64* @input_blocksize, align 8
  %915 = sub i64 %914, %820
  %916 = icmp eq i64 %915, 0
  %917 = load i64, i64* @cache_round.i_pending, align 8
  br i1 %916, label %926, label %918

; <label>:918:                                    ; preds = %913
  %919 = add nsw i64 %917, %915
  %920 = load i64, i64* @page_size, align 8
  %921 = urem i64 %919, %920
  store i64 %921, i64* @cache_round.i_pending, align 8
  %922 = sub i64 %919, %921
  %923 = icmp eq i64 %922, 0
  %924 = icmp ule i64 %919, %921
  %925 = or i1 %924, %923
  br i1 %925, label %945, label %926

; <label>:926:                                    ; preds = %918, %913
  %927 = phi i64 [ %921, %918 ], [ %917, %913 ]
  %928 = phi i64 [ %922, %918 ], [ %917, %913 ]
  %929 = or i64 %928, %915
  %930 = icmp eq i64 %929, 0
  %931 = load i64, i64* @max_records, align 8
  %932 = icmp ne i64 %931, 0
  %933 = and i1 %930, %932
  br i1 %933, label %945, label %934

; <label>:934:                                    ; preds = %926
  %935 = load i8, i8* @input_seekable, align 1
  %936 = icmp eq i8 %935, 0
  br i1 %936, label %944, label %937

; <label>:937:                                    ; preds = %934
  %938 = load i64, i64* @input_offset, align 8
  %939 = sub i64 0, %927
  %940 = select i1 %916, i64 0, i64 %939
  %941 = sub i64 %940, %928
  %942 = add i64 %941, %938
  %943 = call i32 @posix_fadvise(i32 0, i64 %942, i64 %928, i32 4) #9
  br label %945

; <label>:944:                                    ; preds = %934
  store i32 29, i32* %636, align 4
  br label %945

; <label>:945:                                    ; preds = %944, %937, %926, %918
  %946 = load i8, i8* @input_seekable, align 1
  %947 = icmp eq i8 %946, 0
  br i1 %947, label %948, label %952

; <label>:948:                                    ; preds = %945
  %949 = load i32, i32* @input_seek_errno, align 4
  %950 = icmp eq i32 %949, 29
  br i1 %950, label %1005, label %951

; <label>:951:                                    ; preds = %948
  store i32 %949, i32* %636, align 4
  br label %999

; <label>:952:                                    ; preds = %945
  %953 = load i64, i64* @input_offset, align 8
  %954 = add i64 %953, %915
  store i64 %954, i64* @input_offset, align 8
  %955 = icmp ult i64 %954, %915
  br i1 %955, label %959, label %956

; <label>:956:                                    ; preds = %952
  %957 = load i8, i8* @input_offset_overflow, align 1
  %958 = zext i8 %957 to i32
  br label %960

; <label>:959:                                    ; preds = %952
  store i8 1, i8* @input_offset_overflow, align 1
  br label %960

; <label>:960:                                    ; preds = %959, %956
  %961 = phi i32 [ %958, %956 ], [ 1, %959 ]
  %962 = lshr i64 %954, 63
  %963 = trunc i64 %962 to i32
  %964 = or i32 %961, %963
  %965 = icmp eq i32 %964, 0
  %966 = trunc i32 %964 to i8
  store i8 %966, i8* @input_offset_overflow, align 1
  br i1 %965, label %971, label %967

; <label>:967:                                    ; preds = %960
  %968 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.116, i64 0, i64 0), i32 5) #9
  %969 = load i8*, i8** @input_file, align 8
  %970 = call i8* @quotearg_style(i32 4, i8* %969) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %968, i8* %970) #9
  br label %1004

; <label>:971:                                    ; preds = %960
  %972 = call i64 @lseek(i32 0, i64 0, i32 1) #9
  %973 = icmp sgt i64 %972, -1
  br i1 %973, label %974, label %999

; <label>:974:                                    ; preds = %971
  %975 = load i64, i64* @input_offset, align 8
  %976 = icmp eq i64 %975, %972
  br i1 %976, label %1005, label %977

; <label>:977:                                    ; preds = %974
  %978 = sub i64 %975, %972
  %979 = icmp sgt i64 %978, -1
  br i1 %979, label %980, label %985

; <label>:980:                                    ; preds = %977
  %981 = icmp ugt i64 %978, %915
  %982 = load i32, i32* @status_level, align 4
  %983 = icmp ne i32 %982, 1
  %984 = and i1 %981, %983
  br i1 %984, label %988, label %990

; <label>:985:                                    ; preds = %977
  %986 = load i32, i32* @status_level, align 4
  %987 = icmp eq i32 %986, 1
  br i1 %987, label %990, label %988

; <label>:988:                                    ; preds = %985, %980
  %989 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.117, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %989) #9
  br label %990

; <label>:990:                                    ; preds = %988, %985, %980
  %991 = load i8*, i8** @input_file, align 8
  %992 = call fastcc i64 @skip_via_lseek(i8* %991, i32 0, i64 %978, i32 1) #9
  %993 = icmp sgt i64 %992, -1
  br i1 %993, label %1005, label %994

; <label>:994:                                    ; preds = %990
  %995 = load i32, i32* %636, align 4
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %999

; <label>:997:                                    ; preds = %994
  %998 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.118, i64 0, i64 0), i32 5) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %998) #9
  br label %999

; <label>:999:                                    ; preds = %971, %997, %994, %951
  %1000 = load i32, i32* %636, align 4
  %1001 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), i32 5) #9
  %1002 = load i8*, i8** @input_file, align 8
  %1003 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1002) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1000, i8* %1001, i8* %1003) #9
  br label %1004

; <label>:1004:                                   ; preds = %999, %967
  store i8 0, i8* @input_seekable, align 1
  store i32 29, i32* @input_seek_errno, align 4
  br label %1005

; <label>:1005:                                   ; preds = %1004, %990, %974, %948
  %1006 = phi i32 [ 1, %1004 ], [ %823, %948 ], [ %823, %974 ], [ %823, %990 ]
  %1007 = load i32, i32* @conversions_mask, align 4
  %1008 = and i32 %1007, 1024
  %1009 = icmp eq i32 %1008, 0
  %1010 = or i1 %821, %1009
  br i1 %1010, label %822, label %1011

; <label>:1011:                                   ; preds = %1005
  br label %1012

; <label>:1012:                                   ; preds = %1011, %894, %867
  %1013 = phi i32 [ %823, %867 ], [ %823, %894 ], [ %1006, %1011 ]
  %1014 = phi i64 [ %860, %867 ], [ %860, %894 ], [ 0, %1011 ]
  %1015 = load i64, i64* @input_offset, align 8
  %1016 = add i64 %1015, %1014
  store i64 %1016, i64* @input_offset, align 8
  %1017 = icmp ult i64 %1016, %1014
  br i1 %1017, label %1018, label %1019

; <label>:1018:                                   ; preds = %1012
  store i8 1, i8* @input_offset_overflow, align 1
  br label %1019

; <label>:1019:                                   ; preds = %1018, %1012
  %1020 = load i64, i64* @input_blocksize, align 8
  %1021 = icmp ugt i64 %1020, %1014
  br i1 %1021, label %1022, label %1039

; <label>:1022:                                   ; preds = %1019
  %1023 = load i64, i64* @r_partial, align 8
  %1024 = add i64 %1023, 1
  store i64 %1024, i64* @r_partial, align 8
  %1025 = load i32, i32* @conversions_mask, align 4
  %1026 = and i32 %1025, 1024
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1042, label %1028

; <label>:1028:                                   ; preds = %1022
  %1029 = and i32 %1025, 256
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1042

; <label>:1031:                                   ; preds = %1028
  %1032 = load i8*, i8** @ibuf, align 8
  %1033 = getelementptr inbounds i8, i8* %1032, i64 %1014
  %1034 = and i32 %1025, 24
  %1035 = icmp ne i32 %1034, 0
  %1036 = select i1 %1035, i8 32, i8 0
  %1037 = sub i64 %1020, %1014
  call void @llvm.memset.p0i8.i64(i8* %1033, i8 %1036, i64 %1037, i32 1, i1 false) #9
  %1038 = load i64, i64* @input_blocksize, align 8
  br label %1042

; <label>:1039:                                   ; preds = %1019
  %1040 = load i64, i64* @r_full, align 8
  %1041 = add i64 %1040, 1
  store i64 %1041, i64* @r_full, align 8
  br label %1042

; <label>:1042:                                   ; preds = %1039, %1031, %1028, %1022
  %1043 = phi i64 [ %1014, %1022 ], [ %1014, %1039 ], [ %1020, %1028 ], [ %1038, %1031 ]
  %1044 = phi i64 [ %1014, %1022 ], [ 0, %1039 ], [ %1014, %1028 ], [ %1014, %1031 ]
  %1045 = load i8*, i8** @ibuf, align 8
  %1046 = load i8*, i8** @obuf, align 8
  %1047 = icmp eq i8* %1045, %1046
  br i1 %1047, label %1048, label %1065

; <label>:1048:                                   ; preds = %1042
  %1049 = call fastcc i64 @iwrite(i8* %1045, i64 %1043) #9
  %1050 = load i64, i64* @w_bytes, align 8
  %1051 = add i64 %1050, %1049
  store i64 %1051, i64* @w_bytes, align 8
  %1052 = icmp eq i64 %1049, %1043
  br i1 %1052, label %1058, label %1053

; <label>:1053:                                   ; preds = %1048
  %1054 = load i32, i32* %636, align 4
  %1055 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i64 0, i64 0), i32 5) #9
  %1056 = load i8*, i8** @output_file, align 8
  %1057 = call i8* @quotearg_style(i32 4, i8* %1056) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1054, i8* %1055, i8* %1057) #9
  br label %1390

; <label>:1058:                                   ; preds = %1048
  %1059 = load i64, i64* @input_blocksize, align 8
  %1060 = icmp eq i64 %1043, %1059
  %1061 = select i1 %1060, i64* @w_full, i64* @w_partial
  %1062 = load i64, i64* %1061, align 8
  %1063 = add i64 %1062, 1
  store i64 %1063, i64* %1061, align 8
  br label %1064

; <label>:1064:                                   ; preds = %1058, %1194, %1199, %817
  br label %818

; <label>:1065:                                   ; preds = %1042
  %1066 = load i1, i1* @translation_needed, align 1
  %1067 = xor i1 %1066, true
  %1068 = icmp eq i64 %1043, 0
  %1069 = or i1 %1068, %1067
  br i1 %1069, label %1120, label %1070

; <label>:1070:                                   ; preds = %1065
  %1071 = add i64 %1043, -1
  %1072 = and i64 %1043, 3
  %1073 = icmp eq i64 %1072, 0
  br i1 %1073, label %1088, label %1074

; <label>:1074:                                   ; preds = %1070
  br label %1075

; <label>:1075:                                   ; preds = %1075, %1074
  %1076 = phi i64 [ %1083, %1075 ], [ %1043, %1074 ]
  %1077 = phi i8* [ %1084, %1075 ], [ %1045, %1074 ]
  %1078 = phi i64 [ %1085, %1075 ], [ %1072, %1074 ]
  %1079 = load i8, i8* %1077, align 1
  %1080 = zext i8 %1079 to i64
  %1081 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %1080
  %1082 = load i8, i8* %1081, align 1
  store i8 %1082, i8* %1077, align 1
  %1083 = add i64 %1076, -1
  %1084 = getelementptr inbounds i8, i8* %1077, i64 1
  %1085 = add i64 %1078, -1
  %1086 = icmp eq i64 %1085, 0
  br i1 %1086, label %1087, label %1075

; <label>:1087:                                   ; preds = %1075
  br label %1088

; <label>:1088:                                   ; preds = %1070, %1087
  %1089 = phi i64 [ %1043, %1070 ], [ %1083, %1087 ]
  %1090 = phi i8* [ %1045, %1070 ], [ %1084, %1087 ]
  %1091 = icmp ult i64 %1071, 3
  br i1 %1091, label %1119, label %1092

; <label>:1092:                                   ; preds = %1088
  br label %1093

; <label>:1093:                                   ; preds = %1093, %1092
  %1094 = phi i64 [ %1089, %1092 ], [ %1115, %1093 ]
  %1095 = phi i8* [ %1090, %1092 ], [ %1116, %1093 ]
  %1096 = load i8, i8* %1095, align 1
  %1097 = zext i8 %1096 to i64
  %1098 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %1097
  %1099 = load i8, i8* %1098, align 1
  store i8 %1099, i8* %1095, align 1
  %1100 = getelementptr inbounds i8, i8* %1095, i64 1
  %1101 = load i8, i8* %1100, align 1
  %1102 = zext i8 %1101 to i64
  %1103 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %1102
  %1104 = load i8, i8* %1103, align 1
  store i8 %1104, i8* %1100, align 1
  %1105 = getelementptr inbounds i8, i8* %1095, i64 2
  %1106 = load i8, i8* %1105, align 1
  %1107 = zext i8 %1106 to i64
  %1108 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %1107
  %1109 = load i8, i8* %1108, align 1
  store i8 %1109, i8* %1105, align 1
  %1110 = getelementptr inbounds i8, i8* %1095, i64 3
  %1111 = load i8, i8* %1110, align 1
  %1112 = zext i8 %1111 to i64
  %1113 = getelementptr inbounds [256 x i8], [256 x i8]* @trans_table, i64 0, i64 %1112
  %1114 = load i8, i8* %1113, align 1
  store i8 %1114, i8* %1110, align 1
  %1115 = add i64 %1094, -4
  %1116 = getelementptr inbounds i8, i8* %1095, i64 4
  %1117 = icmp eq i64 %1115, 0
  br i1 %1117, label %1118, label %1093

; <label>:1118:                                   ; preds = %1093
  br label %1119

; <label>:1119:                                   ; preds = %1088, %1118
  br label %1120

; <label>:1120:                                   ; preds = %1119, %1065
  %1121 = load i32, i32* @conversions_mask, align 4
  %1122 = trunc i32 %1121 to i8
  %1123 = icmp slt i8 %1122, 0
  br i1 %1123, label %1124, label %1189

; <label>:1124:                                   ; preds = %1120
  %1125 = load i1, i1* @char_is_saved, align 1
  br i1 %1125, label %1126, label %1130

; <label>:1126:                                   ; preds = %1124
  %1127 = load i8, i8* @saved_char, align 1
  %1128 = getelementptr inbounds i8, i8* %1045, i64 -1
  store i8 %1127, i8* %1128, align 1
  %1129 = add i64 %1043, 1
  store i1 false, i1* @char_is_saved, align 1
  br label %1130

; <label>:1130:                                   ; preds = %1126, %1124
  %1131 = phi i64 [ %1129, %1126 ], [ %1043, %1124 ]
  %1132 = phi i8* [ %1128, %1126 ], [ %1045, %1124 ]
  %1133 = and i64 %1131, 1
  %1134 = icmp eq i64 %1133, 0
  br i1 %1134, label %1139, label %1135

; <label>:1135:                                   ; preds = %1130
  %1136 = add i64 %1131, -1
  %1137 = getelementptr inbounds i8, i8* %1132, i64 %1136
  %1138 = load i8, i8* %1137, align 1
  store i8 %1138, i8* @saved_char, align 1
  store i1 true, i1* @char_is_saved, align 1
  br label %1139

; <label>:1139:                                   ; preds = %1135, %1130
  %1140 = phi i64 [ %1131, %1130 ], [ %1136, %1135 ]
  %1141 = lshr i64 %1140, 1
  %1142 = icmp eq i64 %1141, 0
  br i1 %1142, label %1187, label %1143

; <label>:1143:                                   ; preds = %1139
  %1144 = getelementptr inbounds i8, i8* %1132, i64 %1140
  %1145 = add nsw i64 %1141, -1
  %1146 = and i64 %1141, 7
  %1147 = icmp eq i64 %1146, 0
  br i1 %1147, label %1159, label %1148

; <label>:1148:                                   ; preds = %1143
  br label %1149

; <label>:1149:                                   ; preds = %1149, %1148
  %1150 = phi i64 [ %1155, %1149 ], [ %1141, %1148 ]
  %1151 = phi i8* [ %1153, %1149 ], [ %1144, %1148 ]
  %1152 = phi i64 [ %1156, %1149 ], [ %1146, %1148 ]
  %1153 = getelementptr inbounds i8, i8* %1151, i64 -2
  %1154 = load i8, i8* %1153, align 1
  store i8 %1154, i8* %1151, align 1
  %1155 = add nsw i64 %1150, -1
  %1156 = add i64 %1152, -1
  %1157 = icmp eq i64 %1156, 0
  br i1 %1157, label %1158, label %1149

; <label>:1158:                                   ; preds = %1149
  br label %1159

; <label>:1159:                                   ; preds = %1143, %1158
  %1160 = phi i64 [ %1141, %1143 ], [ %1155, %1158 ]
  %1161 = phi i8* [ %1144, %1143 ], [ %1153, %1158 ]
  %1162 = icmp ult i64 %1145, 7
  br i1 %1162, label %1186, label %1163

; <label>:1163:                                   ; preds = %1159
  br label %1164

; <label>:1164:                                   ; preds = %1164, %1163
  %1165 = phi i64 [ %1160, %1163 ], [ %1183, %1164 ]
  %1166 = phi i8* [ %1161, %1163 ], [ %1181, %1164 ]
  %1167 = getelementptr inbounds i8, i8* %1166, i64 -2
  %1168 = load i8, i8* %1167, align 1
  store i8 %1168, i8* %1166, align 1
  %1169 = getelementptr inbounds i8, i8* %1166, i64 -4
  %1170 = load i8, i8* %1169, align 1
  store i8 %1170, i8* %1167, align 1
  %1171 = getelementptr inbounds i8, i8* %1166, i64 -6
  %1172 = load i8, i8* %1171, align 1
  store i8 %1172, i8* %1169, align 1
  %1173 = getelementptr inbounds i8, i8* %1166, i64 -8
  %1174 = load i8, i8* %1173, align 1
  store i8 %1174, i8* %1171, align 1
  %1175 = getelementptr inbounds i8, i8* %1166, i64 -10
  %1176 = load i8, i8* %1175, align 1
  store i8 %1176, i8* %1173, align 1
  %1177 = getelementptr inbounds i8, i8* %1166, i64 -12
  %1178 = load i8, i8* %1177, align 1
  store i8 %1178, i8* %1175, align 1
  %1179 = getelementptr inbounds i8, i8* %1166, i64 -14
  %1180 = load i8, i8* %1179, align 1
  store i8 %1180, i8* %1177, align 1
  %1181 = getelementptr inbounds i8, i8* %1166, i64 -16
  %1182 = load i8, i8* %1181, align 1
  store i8 %1182, i8* %1179, align 1
  %1183 = add nsw i64 %1165, -8
  %1184 = icmp eq i64 %1183, 0
  br i1 %1184, label %1185, label %1164

; <label>:1185:                                   ; preds = %1164
  br label %1186

; <label>:1186:                                   ; preds = %1159, %1185
  br label %1187

; <label>:1187:                                   ; preds = %1186, %1139
  %1188 = getelementptr inbounds i8, i8* %1132, i64 1
  br label %1189

; <label>:1189:                                   ; preds = %1187, %1120
  %1190 = phi i64 [ %1140, %1187 ], [ %1043, %1120 ]
  %1191 = phi i8* [ %1188, %1187 ], [ %1045, %1120 ]
  %1192 = and i32 %1121, 8
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1195, label %1194

; <label>:1194:                                   ; preds = %1189
  call fastcc void @copy_with_block(i8* %1191, i64 %1190) #9
  br label %1064

; <label>:1195:                                   ; preds = %1189
  %1196 = and i32 %1121, 16
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1198, label %1199

; <label>:1198:                                   ; preds = %1195
  br label %1200

; <label>:1199:                                   ; preds = %1195
  call fastcc void @copy_with_unblock(i8* %1191, i64 %1190) #9
  br label %1064

; <label>:1200:                                   ; preds = %1198, %1217
  %1201 = phi i8* [ %1218, %1217 ], [ %1046, %1198 ]
  %1202 = phi i8* [ %1211, %1217 ], [ %1191, %1198 ]
  %1203 = phi i64 [ %1210, %1217 ], [ %1190, %1198 ]
  %1204 = load i64, i64* @output_blocksize, align 8
  %1205 = load i64, i64* @oc, align 8
  %1206 = sub i64 %1204, %1205
  %1207 = icmp ult i64 %1203, %1206
  %1208 = select i1 %1207, i64 %1203, i64 %1206
  %1209 = getelementptr inbounds i8, i8* %1201, i64 %1205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1209, i8* %1202, i64 %1208, i32 1, i1 false) #9
  %1210 = sub i64 %1203, %1208
  %1211 = getelementptr inbounds i8, i8* %1202, i64 %1208
  %1212 = add i64 %1208, %1205
  store i64 %1212, i64* @oc, align 8
  %1213 = icmp ult i64 %1212, %1204
  br i1 %1213, label %1215, label %1214

; <label>:1214:                                   ; preds = %1200
  call fastcc void @write_output() #9
  br label %1215

; <label>:1215:                                   ; preds = %1214, %1200
  %1216 = icmp eq i64 %1210, 0
  br i1 %1216, label %817, label %1217

; <label>:1217:                                   ; preds = %1215
  %1218 = load i8*, i8** @obuf, align 8
  br label %1200

; <label>:1219:                                   ; preds = %833, %909
  %1220 = phi i32 [ %823, %833 ], [ 1, %909 ]
  br label %1222

; <label>:1221:                                   ; preds = %894
  br label %1222

; <label>:1222:                                   ; preds = %1221, %1219
  %1223 = phi i32 [ %1220, %1219 ], [ %823, %1221 ]
  %1224 = load i1, i1* @char_is_saved, align 1
  br i1 %1224, label %1225, label %1243

; <label>:1225:                                   ; preds = %1222
  %1226 = load i32, i32* @conversions_mask, align 4
  %1227 = and i32 %1226, 8
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1230, label %1229

; <label>:1229:                                   ; preds = %1225
  call fastcc void @copy_with_block(i8* nonnull @saved_char, i64 1) #9
  br label %1243

; <label>:1230:                                   ; preds = %1225
  %1231 = and i32 %1226, 16
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1234, label %1233

; <label>:1233:                                   ; preds = %1230
  call fastcc void @copy_with_unblock(i8* nonnull @saved_char, i64 1) #9
  br label %1243

; <label>:1234:                                   ; preds = %1230
  %1235 = load i8, i8* @saved_char, align 1
  %1236 = load i8*, i8** @obuf, align 8
  %1237 = load i64, i64* @oc, align 8
  %1238 = add i64 %1237, 1
  store i64 %1238, i64* @oc, align 8
  %1239 = getelementptr inbounds i8, i8* %1236, i64 %1237
  store i8 %1235, i8* %1239, align 1
  %1240 = load i64, i64* @output_blocksize, align 8
  %1241 = icmp ult i64 %1238, %1240
  br i1 %1241, label %1243, label %1242

; <label>:1242:                                   ; preds = %1234
  call fastcc void @write_output() #9
  br label %1243

; <label>:1243:                                   ; preds = %1242, %1234, %1233, %1229, %1222
  %1244 = load i32, i32* @conversions_mask, align 4
  %1245 = and i32 %1244, 8
  %1246 = icmp ne i32 %1245, 0
  %1247 = load i64, i64* @col, align 8
  %1248 = icmp ne i64 %1247, 0
  %1249 = and i1 %1246, %1248
  br i1 %1249, label %1250, label %1272

; <label>:1250:                                   ; preds = %1243
  %1251 = load i64, i64* @conversion_blocksize, align 8
  %1252 = icmp ult i64 %1247, %1251
  br i1 %1252, label %1253, label %1277

; <label>:1253:                                   ; preds = %1250
  br label %1254

; <label>:1254:                                   ; preds = %1253, %1266
  %1255 = phi i64 [ %1267, %1266 ], [ %1251, %1253 ]
  %1256 = phi i64 [ %1268, %1266 ], [ %1247, %1253 ]
  %1257 = load i8, i8* @space_character, align 1
  %1258 = load i8*, i8** @obuf, align 8
  %1259 = load i64, i64* @oc, align 8
  %1260 = add i64 %1259, 1
  store i64 %1260, i64* @oc, align 8
  %1261 = getelementptr inbounds i8, i8* %1258, i64 %1259
  store i8 %1257, i8* %1261, align 1
  %1262 = load i64, i64* @output_blocksize, align 8
  %1263 = icmp ult i64 %1260, %1262
  br i1 %1263, label %1266, label %1264

; <label>:1264:                                   ; preds = %1254
  call fastcc void @write_output() #9
  %1265 = load i64, i64* @conversion_blocksize, align 8
  br label %1266

; <label>:1266:                                   ; preds = %1264, %1254
  %1267 = phi i64 [ %1255, %1254 ], [ %1265, %1264 ]
  %1268 = add i64 %1256, 1
  %1269 = icmp ult i64 %1268, %1267
  br i1 %1269, label %1254, label %1270

; <label>:1270:                                   ; preds = %1266
  %1271 = load i64, i64* @col, align 8
  br label %1272

; <label>:1272:                                   ; preds = %1270, %1243
  %1273 = phi i64 [ %1247, %1243 ], [ %1271, %1270 ]
  %1274 = icmp eq i64 %1273, 0
  br i1 %1274, label %1290, label %1275

; <label>:1275:                                   ; preds = %1272
  %1276 = load i32, i32* @conversions_mask, align 4
  br label %1277

; <label>:1277:                                   ; preds = %1275, %1250
  %1278 = phi i32 [ %1276, %1275 ], [ %1244, %1250 ]
  %1279 = and i32 %1278, 16
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1290, label %1281

; <label>:1281:                                   ; preds = %1277
  %1282 = load i8, i8* @newline_character, align 1
  %1283 = load i8*, i8** @obuf, align 8
  %1284 = load i64, i64* @oc, align 8
  %1285 = add i64 %1284, 1
  store i64 %1285, i64* @oc, align 8
  %1286 = getelementptr inbounds i8, i8* %1283, i64 %1284
  store i8 %1282, i8* %1286, align 1
  %1287 = load i64, i64* @output_blocksize, align 8
  %1288 = icmp ult i64 %1285, %1287
  br i1 %1288, label %1292, label %1289

; <label>:1289:                                   ; preds = %1281
  call fastcc void @write_output() #9
  br label %1290

; <label>:1290:                                   ; preds = %1289, %1277, %1272
  %1291 = load i64, i64* @oc, align 8
  br label %1292

; <label>:1292:                                   ; preds = %1290, %1281
  %1293 = phi i64 [ %1291, %1290 ], [ %1285, %1281 ]
  %1294 = icmp eq i64 %1293, 0
  br i1 %1294, label %1312, label %1295

; <label>:1295:                                   ; preds = %1292
  %1296 = load i8*, i8** @obuf, align 8
  %1297 = call fastcc i64 @iwrite(i8* %1296, i64 %1293) #9
  %1298 = load i64, i64* @w_bytes, align 8
  %1299 = add i64 %1298, %1297
  store i64 %1299, i64* @w_bytes, align 8
  %1300 = icmp eq i64 %1297, 0
  br i1 %1300, label %1304, label %1301

; <label>:1301:                                   ; preds = %1295
  %1302 = load i64, i64* @w_partial, align 8
  %1303 = add i64 %1302, 1
  store i64 %1303, i64* @w_partial, align 8
  br label %1304

; <label>:1304:                                   ; preds = %1301, %1295
  %1305 = load i64, i64* @oc, align 8
  %1306 = icmp eq i64 %1297, %1305
  br i1 %1306, label %1312, label %1307

; <label>:1307:                                   ; preds = %1304
  %1308 = load i32, i32* %636, align 4
  %1309 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i64 0, i64 0), i32 5) #9
  %1310 = load i8*, i8** @output_file, align 8
  %1311 = call i8* @quotearg_style(i32 4, i8* %1310) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1308, i8* %1309, i8* %1311) #9
  br label %1390

; <label>:1312:                                   ; preds = %1304, %1292
  %1313 = load i1, i1* @final_op_was_seek, align 1
  br i1 %1313, label %1314, label %1354

; <label>:1314:                                   ; preds = %1312
  %1315 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1315) #9
  %1316 = call i32 @__fxstat(i32 1, i32 1, %struct.stat* nonnull %4) #9
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1323, label %1318

; <label>:1318:                                   ; preds = %1314
  %1319 = load i32, i32* %636, align 4
  %1320 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 5) #9
  %1321 = load i8*, i8** @output_file, align 8
  %1322 = call i8* @quotearg_style(i32 4, i8* %1321) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1319, i8* %1320, i8* %1322) #9
  br label %1353

; <label>:1323:                                   ; preds = %1314
  %1324 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3
  %1325 = load i32, i32* %1324, align 8
  %1326 = and i32 %1325, 61440
  %1327 = icmp eq i32 %1326, 32768
  br i1 %1327, label %1328, label %1352

; <label>:1328:                                   ; preds = %1323
  %1329 = call i64 @lseek(i32 1, i64 0, i32 1) #9
  %1330 = icmp sgt i64 %1329, -1
  br i1 %1330, label %1331, label %1352

; <label>:1331:                                   ; preds = %1328
  %1332 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 8
  %1333 = load i64, i64* %1332, align 8
  %1334 = icmp slt i64 %1333, %1329
  br i1 %1334, label %1335, label %1352

; <label>:1335:                                   ; preds = %1331
  br label %1336

; <label>:1336:                                   ; preds = %1335, %1339
  call fastcc void @process_signals() #9
  %1337 = call i32 @ftruncate(i32 1, i64 %1329) #9
  %1338 = icmp slt i32 %1337, 0
  br i1 %1338, label %1339, label %1342

; <label>:1339:                                   ; preds = %1336
  %1340 = load i32, i32* %636, align 4
  %1341 = icmp eq i32 %1340, 4
  br i1 %1341, label %1336, label %1346

; <label>:1342:                                   ; preds = %1336
  %1343 = icmp eq i32 %1337, 0
  br i1 %1343, label %1352, label %1344

; <label>:1344:                                   ; preds = %1342
  %1345 = load i32, i32* %636, align 4
  br label %1347

; <label>:1346:                                   ; preds = %1339
  br label %1347

; <label>:1347:                                   ; preds = %1346, %1344
  %1348 = phi i32 [ %1345, %1344 ], [ %1340, %1346 ]
  %1349 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.107, i64 0, i64 0), i32 5) #9
  %1350 = load i8*, i8** @output_file, align 8
  %1351 = call i8* @quotearg_style(i32 4, i8* %1350) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1348, i8* %1349, i64 %1329, i8* %1351) #9
  br label %1353

; <label>:1352:                                   ; preds = %1342, %1331, %1328, %1323
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1315) #9
  br label %1354

; <label>:1353:                                   ; preds = %1347, %1318
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1315) #9
  br label %1390

; <label>:1354:                                   ; preds = %1352, %1312
  %1355 = load i32, i32* @conversions_mask, align 4
  %1356 = and i32 %1355, 16384
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1373, label %1358

; <label>:1358:                                   ; preds = %1354
  %1359 = call i32 @fdatasync(i32 1) #9
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1361, label %1363

; <label>:1361:                                   ; preds = %1358
  %1362 = load i32, i32* @conversions_mask, align 4
  br label %1373

; <label>:1363:                                   ; preds = %1358
  %1364 = load i32, i32* %636, align 4
  switch i32 %1364, label %1365 [
    i32 38, label %1369
    i32 22, label %1369
  ]

; <label>:1365:                                   ; preds = %1363
  %1366 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.108, i64 0, i64 0), i32 5) #9
  %1367 = load i8*, i8** @output_file, align 8
  %1368 = call i8* @quotearg_style(i32 4, i8* %1367) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1364, i8* %1366, i8* %1368) #9
  br label %1369

; <label>:1369:                                   ; preds = %1365, %1363, %1363
  %1370 = phi i32 [ 1, %1365 ], [ %1223, %1363 ], [ %1223, %1363 ]
  %1371 = load i32, i32* @conversions_mask, align 4
  %1372 = or i32 %1371, 32768
  store i32 %1372, i32* @conversions_mask, align 4
  br label %1373

; <label>:1373:                                   ; preds = %1369, %1361, %1354
  %1374 = phi i32 [ %1372, %1369 ], [ %1362, %1361 ], [ %1355, %1354 ]
  %1375 = phi i32 [ %1370, %1369 ], [ %1223, %1361 ], [ %1223, %1354 ]
  %1376 = trunc i32 %1374 to i16
  %1377 = icmp slt i16 %1376, 0
  br i1 %1377, label %1378, label %1390

; <label>:1378:                                   ; preds = %1373
  br label %1379

; <label>:1379:                                   ; preds = %1378, %1382
  %1380 = call i32 @fsync(i32 1) #9
  %1381 = icmp eq i32 %1380, 0
  br i1 %1381, label %1389, label %1382

; <label>:1382:                                   ; preds = %1379
  %1383 = load i32, i32* %636, align 4
  %1384 = icmp eq i32 %1383, 4
  br i1 %1384, label %1379, label %1385

; <label>:1385:                                   ; preds = %1382
  %1386 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i64 0, i64 0), i32 5) #9
  %1387 = load i8*, i8** @output_file, align 8
  %1388 = call i8* @quotearg_style(i32 4, i8* %1387) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1383, i8* %1386, i8* %1388) #9
  br label %1390

; <label>:1389:                                   ; preds = %1379
  br label %1390

; <label>:1390:                                   ; preds = %1389, %1385, %1373, %1353, %1307, %1053
  %1391 = phi i32 [ %1375, %1373 ], [ 1, %1307 ], [ 1, %1053 ], [ 1, %1353 ], [ 1, %1385 ], [ %1375, %1389 ]
  %1392 = load i64, i64* @max_records, align 8
  %1393 = load i64, i64* @max_bytes, align 8
  br label %1394

; <label>:1394:                                   ; preds = %1390, %811
  %1395 = phi i64 [ %1393, %1390 ], [ %813, %811 ]
  %1396 = phi i64 [ %1392, %1390 ], [ %812, %811 ]
  %1397 = phi i32 [ %1391, %1390 ], [ 0, %811 ]
  %1398 = or i64 %1395, %1396
  %1399 = icmp eq i64 %1398, 0
  br i1 %1399, label %1400, label %1452

; <label>:1400:                                   ; preds = %1394
  %1401 = load i1, i1* @i_nocache, align 1
  br i1 %1401, label %1402, label %1423

; <label>:1402:                                   ; preds = %1400
  %1403 = load i64, i64* @cache_round.i_pending, align 8
  %1404 = icmp eq i64 %1403, 0
  %1405 = icmp ne i64 %1396, 0
  %1406 = and i1 %1405, %1404
  br i1 %1406, label %1423, label %1407

; <label>:1407:                                   ; preds = %1402
  %1408 = load i8, i8* @input_seekable, align 1
  %1409 = icmp eq i8 %1408, 0
  br i1 %1409, label %1410, label %1411

; <label>:1410:                                   ; preds = %1407
  store i32 29, i32* %636, align 4
  br label %1418

; <label>:1411:                                   ; preds = %1407
  %1412 = load i64, i64* @input_offset, align 8
  %1413 = sub i64 %1412, %1403
  %1414 = call i32 @posix_fadvise(i32 0, i64 %1413, i64 %1403, i32 4) #9
  %1415 = icmp eq i32 %1414, -1
  br i1 %1415, label %1416, label %1423

; <label>:1416:                                   ; preds = %1411
  %1417 = load i32, i32* %636, align 4
  br label %1418

; <label>:1418:                                   ; preds = %1416, %1410
  %1419 = phi i32 [ %1417, %1416 ], [ 29, %1410 ]
  %1420 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i32 5) #9
  %1421 = load i8*, i8** @input_file, align 8
  %1422 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1421) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1419, i8* %1420, i8* %1422)
  br label %1423

; <label>:1423:                                   ; preds = %1411, %1402, %1418, %1400
  %1424 = phi i32 [ %1397, %1411 ], [ 1, %1418 ], [ %1397, %1400 ], [ %1397, %1402 ]
  %1425 = load i1, i1* @o_nocache, align 1
  br i1 %1425, label %1426, label %1491

; <label>:1426:                                   ; preds = %1423
  %1427 = load i64, i64* @cache_round.o_pending, align 8
  %1428 = icmp eq i64 %1427, 0
  %1429 = load i64, i64* @max_records, align 8
  %1430 = icmp ne i64 %1429, 0
  %1431 = and i1 %1428, %1430
  br i1 %1431, label %1491, label %1432

; <label>:1432:                                   ; preds = %1426
  %1433 = load i64, i64* @invalidate_cache.output_offset, align 8
  %1434 = icmp eq i64 %1433, -1
  br i1 %1434, label %1447, label %1435

; <label>:1435:                                   ; preds = %1432
  %1436 = icmp slt i64 %1433, 0
  br i1 %1436, label %1437, label %1441

; <label>:1437:                                   ; preds = %1435
  %1438 = call i64 @lseek(i32 1, i64 0, i32 1) #9
  %1439 = sub i64 %1438, %1427
  store i64 %1439, i64* @invalidate_cache.output_offset, align 8
  %1440 = icmp sgt i64 %1439, -1
  br i1 %1440, label %1441, label %1447

; <label>:1441:                                   ; preds = %1435, %1437
  %1442 = phi i64 [ %1439, %1437 ], [ %1433, %1435 ]
  %1443 = call i32 @posix_fadvise(i32 1, i64 %1442, i64 %1427, i32 4) #9
  %1444 = load i64, i64* @invalidate_cache.output_offset, align 8
  %1445 = add nsw i64 %1444, %1427
  store i64 %1445, i64* @invalidate_cache.output_offset, align 8
  %1446 = icmp eq i32 %1443, -1
  br i1 %1446, label %1447, label %1491

; <label>:1447:                                   ; preds = %1441, %1432, %1437
  %1448 = load i32, i32* %636, align 4
  %1449 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i32 5) #9
  %1450 = load i8*, i8** @output_file, align 8
  %1451 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1450) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %1448, i8* %1449, i8* %1451)
  br label %1491

; <label>:1452:                                   ; preds = %1394
  %1453 = icmp eq i64 %1396, -1
  br i1 %1453, label %1491, label %1454

; <label>:1454:                                   ; preds = %1452
  %1455 = load i1, i1* @i_nocache, align 1
  br i1 %1455, label %1456, label %1469

; <label>:1456:                                   ; preds = %1454
  %1457 = load i64, i64* @cache_round.i_pending, align 8
  %1458 = icmp eq i64 %1457, 0
  %1459 = icmp ne i64 %1396, 0
  %1460 = and i1 %1459, %1458
  br i1 %1460, label %1469, label %1461

; <label>:1461:                                   ; preds = %1456
  %1462 = load i8, i8* @input_seekable, align 1
  %1463 = icmp eq i8 %1462, 0
  br i1 %1463, label %1468, label %1464

; <label>:1464:                                   ; preds = %1461
  %1465 = load i64, i64* @input_offset, align 8
  %1466 = sub i64 %1465, %1457
  %1467 = call i32 @posix_fadvise(i32 0, i64 %1466, i64 %1457, i32 4) #9
  br label %1469

; <label>:1468:                                   ; preds = %1461
  store i32 29, i32* %636, align 4
  br label %1469

; <label>:1469:                                   ; preds = %1456, %1468, %1464, %1454
  %1470 = load i1, i1* @o_nocache, align 1
  br i1 %1470, label %1471, label %1491

; <label>:1471:                                   ; preds = %1469
  %1472 = load i64, i64* @cache_round.o_pending, align 8
  %1473 = icmp eq i64 %1472, 0
  %1474 = load i64, i64* @max_records, align 8
  %1475 = icmp ne i64 %1474, 0
  %1476 = and i1 %1473, %1475
  br i1 %1476, label %1491, label %1477

; <label>:1477:                                   ; preds = %1471
  %1478 = load i64, i64* @invalidate_cache.output_offset, align 8
  %1479 = icmp eq i64 %1478, -1
  br i1 %1479, label %1491, label %1480

; <label>:1480:                                   ; preds = %1477
  %1481 = icmp slt i64 %1478, 0
  br i1 %1481, label %1482, label %1486

; <label>:1482:                                   ; preds = %1480
  %1483 = call i64 @lseek(i32 1, i64 0, i32 1) #9
  %1484 = sub i64 %1483, %1472
  store i64 %1484, i64* @invalidate_cache.output_offset, align 8
  %1485 = icmp sgt i64 %1484, -1
  br i1 %1485, label %1486, label %1491

; <label>:1486:                                   ; preds = %1482, %1480
  %1487 = phi i64 [ %1484, %1482 ], [ %1478, %1480 ]
  %1488 = call i32 @posix_fadvise(i32 1, i64 %1487, i64 %1472, i32 4) #9
  %1489 = load i64, i64* @invalidate_cache.output_offset, align 8
  %1490 = add nsw i64 %1489, %1472
  store i64 %1490, i64* @invalidate_cache.output_offset, align 8
  br label %1491

; <label>:1491:                                   ; preds = %1441, %1477, %1426, %1471, %1486, %1482, %1452, %1469, %1423, %1447
  %1492 = phi i32 [ %1424, %1441 ], [ 1, %1447 ], [ %1424, %1423 ], [ %1397, %1469 ], [ %1397, %1452 ], [ %1397, %1477 ], [ %1397, %1482 ], [ %1397, %1486 ], [ %1397, %1471 ], [ %1424, %1426 ]
  call fastcc void @cleanup() #9
  call fastcc void @print_stats() #9
  call fastcc void @process_signals() #9
  ret i32 %1492

; <label>:1493:                                   ; preds = %71
  br i1 false, label %75, label %1494

; <label>:1494:                                   ; preds = %1493
  %1495 = load i8, i8* %72, align 1
  %1496 = icmp eq i8 %1495, 102
  br i1 %1496, label %1497, label %78

; <label>:1497:                                   ; preds = %1494
  %1498 = getelementptr inbounds i8, i8* %62, i64 2
  br i1 true, label %75, label %1499

; <label>:1499:                                   ; preds = %1497
  br label %78

; <label>:1500:                                   ; preds = %82
  br i1 false, label %86, label %1501

; <label>:1501:                                   ; preds = %1500
  %1502 = load i8, i8* %83, align 1
  %1503 = icmp eq i8 %1502, 102
  br i1 %1503, label %1504, label %89

; <label>:1504:                                   ; preds = %1501
  %1505 = getelementptr inbounds i8, i8* %62, i64 2
  br i1 true, label %86, label %1506

; <label>:1506:                                   ; preds = %1504
  br label %89

; <label>:1507:                                   ; preds = %93
  br i1 false, label %97, label %1508

; <label>:1508:                                   ; preds = %1507
  %1509 = getelementptr inbounds i8, i8* %62, i64 2
  %1510 = load i8, i8* %94, align 1
  %1511 = icmp eq i8 %1510, 111
  br i1 %1511, label %1512, label %100

; <label>:1512:                                   ; preds = %1508
  br i1 false, label %97, label %1513

; <label>:1513:                                   ; preds = %1512
  %1514 = getelementptr inbounds i8, i8* %62, i64 3
  %1515 = load i8, i8* %1509, align 1
  %1516 = icmp eq i8 %1515, 110
  br i1 %1516, label %1517, label %100

; <label>:1517:                                   ; preds = %1513
  br i1 false, label %97, label %1518

; <label>:1518:                                   ; preds = %1517
  %1519 = load i8, i8* %1514, align 1
  %1520 = icmp eq i8 %1519, 118
  br i1 %1520, label %1521, label %100

; <label>:1521:                                   ; preds = %1518
  %1522 = getelementptr inbounds i8, i8* %62, i64 4
  br i1 true, label %97, label %1523

; <label>:1523:                                   ; preds = %1521
  br label %100

; <label>:1524:                                   ; preds = %107
  br i1 false, label %111, label %1525

; <label>:1525:                                   ; preds = %1524
  %1526 = getelementptr inbounds i8, i8* %62, i64 2
  %1527 = load i8, i8* %108, align 1
  %1528 = icmp eq i8 %1527, 102
  br i1 %1528, label %1529, label %114

; <label>:1529:                                   ; preds = %1525
  br i1 false, label %111, label %1530

; <label>:1530:                                   ; preds = %1529
  %1531 = getelementptr inbounds i8, i8* %62, i64 3
  %1532 = load i8, i8* %1526, align 1
  %1533 = icmp eq i8 %1532, 108
  br i1 %1533, label %1534, label %114

; <label>:1534:                                   ; preds = %1530
  br i1 false, label %111, label %1535

; <label>:1535:                                   ; preds = %1534
  %1536 = getelementptr inbounds i8, i8* %62, i64 4
  %1537 = load i8, i8* %1531, align 1
  %1538 = icmp eq i8 %1537, 97
  br i1 %1538, label %1539, label %114

; <label>:1539:                                   ; preds = %1535
  br i1 false, label %111, label %1540

; <label>:1540:                                   ; preds = %1539
  %1541 = load i8, i8* %1536, align 1
  %1542 = icmp eq i8 %1541, 103
  br i1 %1542, label %1543, label %114

; <label>:1543:                                   ; preds = %1540
  %1544 = getelementptr inbounds i8, i8* %62, i64 5
  br i1 true, label %111, label %1545

; <label>:1545:                                   ; preds = %1543
  br label %114

; <label>:1546:                                   ; preds = %121
  br i1 false, label %125, label %1547

; <label>:1547:                                   ; preds = %1546
  %1548 = getelementptr inbounds i8, i8* %62, i64 2
  %1549 = load i8, i8* %122, align 1
  %1550 = icmp eq i8 %1549, 102
  br i1 %1550, label %1551, label %128

; <label>:1551:                                   ; preds = %1547
  br i1 false, label %125, label %1552

; <label>:1552:                                   ; preds = %1551
  %1553 = getelementptr inbounds i8, i8* %62, i64 3
  %1554 = load i8, i8* %1548, align 1
  %1555 = icmp eq i8 %1554, 108
  br i1 %1555, label %1556, label %128

; <label>:1556:                                   ; preds = %1552
  br i1 false, label %125, label %1557

; <label>:1557:                                   ; preds = %1556
  %1558 = getelementptr inbounds i8, i8* %62, i64 4
  %1559 = load i8, i8* %1553, align 1
  %1560 = icmp eq i8 %1559, 97
  br i1 %1560, label %1561, label %128

; <label>:1561:                                   ; preds = %1557
  br i1 false, label %125, label %1562

; <label>:1562:                                   ; preds = %1561
  %1563 = load i8, i8* %1558, align 1
  %1564 = icmp eq i8 %1563, 103
  br i1 %1564, label %1565, label %128

; <label>:1565:                                   ; preds = %1562
  %1566 = getelementptr inbounds i8, i8* %62, i64 5
  br i1 true, label %125, label %1567

; <label>:1567:                                   ; preds = %1565
  br label %128

; <label>:1568:                                   ; preds = %135
  br i1 false, label %139, label %1569

; <label>:1569:                                   ; preds = %1568
  %1570 = getelementptr inbounds i8, i8* %62, i64 2
  %1571 = load i8, i8* %136, align 1
  %1572 = icmp eq i8 %1571, 116
  br i1 %1572, label %1573, label %144

; <label>:1573:                                   ; preds = %1569
  br i1 false, label %139, label %1574

; <label>:1574:                                   ; preds = %1573
  %1575 = getelementptr inbounds i8, i8* %62, i64 3
  %1576 = load i8, i8* %1570, align 1
  %1577 = icmp eq i8 %1576, 97
  br i1 %1577, label %1578, label %144

; <label>:1578:                                   ; preds = %1574
  br i1 false, label %139, label %1579

; <label>:1579:                                   ; preds = %1578
  %1580 = getelementptr inbounds i8, i8* %62, i64 4
  %1581 = load i8, i8* %1575, align 1
  %1582 = icmp eq i8 %1581, 116
  br i1 %1582, label %1583, label %144

; <label>:1583:                                   ; preds = %1579
  br i1 false, label %139, label %1584

; <label>:1584:                                   ; preds = %1583
  %1585 = getelementptr inbounds i8, i8* %62, i64 5
  %1586 = load i8, i8* %1580, align 1
  %1587 = icmp eq i8 %1586, 117
  br i1 %1587, label %1588, label %144

; <label>:1588:                                   ; preds = %1584
  br i1 false, label %139, label %1589

; <label>:1589:                                   ; preds = %1588
  %1590 = load i8, i8* %1585, align 1
  %1591 = icmp eq i8 %1590, 115
  br i1 %1591, label %1592, label %144

; <label>:1592:                                   ; preds = %1589
  %1593 = getelementptr inbounds i8, i8* %62, i64 6
  br i1 true, label %139, label %1594

; <label>:1594:                                   ; preds = %1592
  br label %144

; <label>:1595:                                   ; preds = %148
  br i1 false, label %152, label %1596

; <label>:1596:                                   ; preds = %1595
  %1597 = getelementptr inbounds i8, i8* %62, i64 2
  %1598 = load i8, i8* %149, align 1
  %1599 = icmp eq i8 %1598, 98
  br i1 %1599, label %1600, label %155

; <label>:1600:                                   ; preds = %1596
  br i1 false, label %152, label %1601

; <label>:1601:                                   ; preds = %1600
  %1602 = load i8, i8* %1597, align 1
  %1603 = icmp eq i8 %1602, 115
  br i1 %1603, label %1604, label %155

; <label>:1604:                                   ; preds = %1601
  %1605 = getelementptr inbounds i8, i8* %62, i64 3
  br i1 true, label %152, label %1606

; <label>:1606:                                   ; preds = %1604
  br label %155

; <label>:1607:                                   ; preds = %164
  br i1 false, label %168, label %1608

; <label>:1608:                                   ; preds = %1607
  %1609 = getelementptr inbounds i8, i8* %62, i64 2
  %1610 = load i8, i8* %165, align 1
  %1611 = icmp eq i8 %1610, 98
  br i1 %1611, label %1612, label %171

; <label>:1612:                                   ; preds = %1608
  br i1 false, label %168, label %1613

; <label>:1613:                                   ; preds = %1612
  %1614 = load i8, i8* %1609, align 1
  %1615 = icmp eq i8 %1614, 115
  br i1 %1615, label %1616, label %171

; <label>:1616:                                   ; preds = %1613
  %1617 = getelementptr inbounds i8, i8* %62, i64 3
  br i1 true, label %168, label %1618

; <label>:1618:                                   ; preds = %1616
  br label %171

; <label>:1619:                                   ; preds = %179
  br i1 false, label %183, label %1620

; <label>:1620:                                   ; preds = %1619
  %1621 = load i8, i8* %180, align 1
  %1622 = icmp eq i8 %1621, 115
  br i1 %1622, label %1623, label %186

; <label>:1623:                                   ; preds = %1620
  %1624 = getelementptr inbounds i8, i8* %62, i64 2
  br i1 true, label %183, label %1625

; <label>:1625:                                   ; preds = %1623
  br label %186

; <label>:1626:                                   ; preds = %195
  br i1 false, label %199, label %1627

; <label>:1627:                                   ; preds = %1626
  %1628 = getelementptr inbounds i8, i8* %62, i64 2
  %1629 = load i8, i8* %196, align 1
  %1630 = icmp eq i8 %1629, 98
  br i1 %1630, label %1631, label %202

; <label>:1631:                                   ; preds = %1627
  br i1 false, label %199, label %1632

; <label>:1632:                                   ; preds = %1631
  %1633 = load i8, i8* %1628, align 1
  %1634 = icmp eq i8 %1633, 115
  br i1 %1634, label %1635, label %202

; <label>:1635:                                   ; preds = %1632
  %1636 = getelementptr inbounds i8, i8* %62, i64 3
  br i1 true, label %199, label %1637

; <label>:1637:                                   ; preds = %1635
  br label %202

; <label>:1638:                                   ; preds = %206
  br i1 false, label %210, label %1639

; <label>:1639:                                   ; preds = %1638
  %1640 = getelementptr inbounds i8, i8* %62, i64 2
  %1641 = load i8, i8* %207, align 1
  %1642 = icmp eq i8 %1641, 107
  br i1 %1642, label %1643, label %213

; <label>:1643:                                   ; preds = %1639
  br i1 false, label %210, label %1644

; <label>:1644:                                   ; preds = %1643
  %1645 = getelementptr inbounds i8, i8* %62, i64 3
  %1646 = load i8, i8* %1640, align 1
  %1647 = icmp eq i8 %1646, 105
  br i1 %1647, label %1648, label %213

; <label>:1648:                                   ; preds = %1644
  br i1 false, label %210, label %1649

; <label>:1649:                                   ; preds = %1648
  %1650 = load i8, i8* %1645, align 1
  %1651 = icmp eq i8 %1650, 112
  br i1 %1651, label %1652, label %213

; <label>:1652:                                   ; preds = %1649
  %1653 = getelementptr inbounds i8, i8* %62, i64 4
  br i1 true, label %210, label %1654

; <label>:1654:                                   ; preds = %1652
  br label %213

; <label>:1655:                                   ; preds = %216
  br i1 false, label %220, label %1656

; <label>:1656:                                   ; preds = %1655
  %1657 = getelementptr inbounds i8, i8* %62, i64 2
  %1658 = load i8, i8* %217, align 1
  %1659 = icmp eq i8 %1658, 101
  br i1 %1659, label %1660, label %223

; <label>:1660:                                   ; preds = %1656
  br i1 false, label %220, label %1661

; <label>:1661:                                   ; preds = %1660
  %1662 = getelementptr inbounds i8, i8* %62, i64 3
  %1663 = load i8, i8* %1657, align 1
  %1664 = icmp eq i8 %1663, 101
  br i1 %1664, label %1665, label %223

; <label>:1665:                                   ; preds = %1661
  br i1 false, label %220, label %1666

; <label>:1666:                                   ; preds = %1665
  %1667 = load i8, i8* %1662, align 1
  %1668 = icmp eq i8 %1667, 107
  br i1 %1668, label %1669, label %223

; <label>:1669:                                   ; preds = %1666
  %1670 = getelementptr inbounds i8, i8* %62, i64 4
  br i1 true, label %220, label %1671

; <label>:1671:                                   ; preds = %1669
  br label %223

; <label>:1672:                                   ; preds = %226
  br i1 false, label %230, label %1673

; <label>:1673:                                   ; preds = %1672
  %1674 = getelementptr inbounds i8, i8* %62, i64 2
  %1675 = load i8, i8* %227, align 1
  %1676 = icmp eq i8 %1675, 111
  br i1 %1676, label %1677, label %233

; <label>:1677:                                   ; preds = %1673
  br i1 false, label %230, label %1678

; <label>:1678:                                   ; preds = %1677
  %1679 = getelementptr inbounds i8, i8* %62, i64 3
  %1680 = load i8, i8* %1674, align 1
  %1681 = icmp eq i8 %1680, 117
  br i1 %1681, label %1682, label %233

; <label>:1682:                                   ; preds = %1678
  br i1 false, label %230, label %1683

; <label>:1683:                                   ; preds = %1682
  %1684 = getelementptr inbounds i8, i8* %62, i64 4
  %1685 = load i8, i8* %1679, align 1
  %1686 = icmp eq i8 %1685, 110
  br i1 %1686, label %1687, label %233

; <label>:1687:                                   ; preds = %1683
  br i1 false, label %230, label %1688

; <label>:1688:                                   ; preds = %1687
  %1689 = load i8, i8* %1684, align 1
  %1690 = icmp eq i8 %1689, 116
  br i1 %1690, label %1691, label %233

; <label>:1691:                                   ; preds = %1688
  %1692 = getelementptr inbounds i8, i8* %62, i64 5
  br i1 true, label %230, label %1693

; <label>:1693:                                   ; preds = %1691
  br label %234
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @sigemptyset(%struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaddset(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @sigismember(%struct.__sigset_t*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @siginfo_handler(i32) #6 {
  %2 = load volatile i32, i32* @info_signal_count, align 4
  %3 = add nsw i32 %2, 1
  store volatile i32 %3, i32* @info_signal_count, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @interrupt_handler(i32) #6 {
  store volatile i32 %0, i32* @interrupt_signal, align 4
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @maybe_close_stdout() #6 {
  %1 = load i1, i1* @close_stdout_required, align 1
  br i1 %1, label %3, label %2

; <label>:2:                                      ; preds = %0
  tail call void @close_stdout() #9
  br label %8

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i32 @close_stream(%struct._IO_FILE* %4) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @_exit(i32 1) #14
  unreachable

; <label>:8:                                      ; preds = %3, %2
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @nl_error(i32, i32, i8*, ...) unnamed_addr #6 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = load i32, i32* @progress_len, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %19

; <label>:7:                                      ; preds = %3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 5
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i64 0, i32 6
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ult i8* %10, %12
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %7
  %15 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %8, i32 10) #9
  br label %18

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %17, i8** %9, align 8
  store i8 10, i8* %10, align 1
  br label %18

; <label>:18:                                     ; preds = %14, %16
  store i32 0, i32* @progress_len, align 4
  br label %19

; <label>:19:                                     ; preds = %18, %3
  %20 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %20) #9
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %20)
  call void @verror(i32 %0, i32 %1, i8* %2, %struct.__va_list_tag* nonnull %21) #9
  call void @llvm.va_end(i8* nonnull %20)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %20) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @parse_symbols(i8*, %struct.symbol_value* nocapture readonly, i1 zeroext, i8*) unnamed_addr #6 {
  br label %5

; <label>:5:                                      ; preds = %45, %4
  %6 = phi i32 [ 0, %4 ], [ %47, %45 ]
  %7 = phi i8* [ %0, %4 ], [ %49, %45 ]
  %8 = tail call i8* @strchr(i8* %7, i32 44) #9
  br label %9

; <label>:9:                                      ; preds = %29, %5
  %10 = phi %struct.symbol_value* [ %1, %5 ], [ %32, %29 ]
  %11 = getelementptr inbounds %struct.symbol_value, %struct.symbol_value* %10, i64 0, i32 0, i64 0
  br label %12

; <label>:12:                                     ; preds = %17, %9
  %13 = phi i8* [ %7, %9 ], [ %18, %17 ]
  %14 = phi i8* [ %11, %9 ], [ %20, %17 ]
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds i8, i8* %13, i64 1
  %19 = load i8, i8* %13, align 1
  %20 = getelementptr inbounds i8, i8* %14, i64 1
  %21 = icmp eq i8 %19, %15
  br i1 %21, label %12, label %28

; <label>:22:                                     ; preds = %12
  %23 = load i8, i8* %13, align 1
  switch i8 %23, label %29 [
    i8 44, label %24
    i8 0, label %24
  ]

; <label>:24:                                     ; preds = %22, %22
  %25 = getelementptr inbounds %struct.symbol_value, %struct.symbol_value* %10, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %45

; <label>:28:                                     ; preds = %17
  br label %29

; <label>:29:                                     ; preds = %28, %24, %22
  %30 = load i8, i8* %11, align 4
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.symbol_value, %struct.symbol_value* %10, i64 1
  br i1 %31, label %33, label %9

; <label>:33:                                     ; preds = %29
  %34 = icmp eq i8* %8, null
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = ptrtoint i8* %8 to i64
  %37 = ptrtoint i8* %7 to i64
  %38 = sub i64 %36, %37
  br label %41

; <label>:39:                                     ; preds = %33
  %40 = tail call i64 @strlen(i8* %7) #13
  br label %41

; <label>:41:                                     ; preds = %39, %35
  %42 = phi i64 [ %38, %35 ], [ %40, %39 ]
  %43 = tail call i8* @dcgettext(i8* null, i8* %3, i32 5) #9
  %44 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %7, i64 %42) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i8* %43, i8* %44)
  tail call void @usage(i32 1) #15
  unreachable

; <label>:45:                                     ; preds = %24
  %46 = select i1 %2, i32 0, i32 %6
  %47 = or i32 %26, %46
  %48 = icmp eq i8* %8, null
  %49 = getelementptr inbounds i8, i8* %8, i64 1
  br i1 %48, label %50, label %5

; <label>:50:                                     ; preds = %45
  ret i32 %47
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @parse_integer(i8*, i32* nocapture) unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #9
  %6 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %6) #9
  %7 = call i32 @xstrtoumax(i8* %0, i8** nonnull %4, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i64 0, i64 0)) #9
  switch i32 %7, label %37 [
    i32 2, label %10
    i32 0, label %8
  ]

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* %3, align 8
  br label %38

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 120
  br i1 %13, label %14, label %37

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds i8, i8* %11, i64 1
  %16 = call fastcc i64 @parse_integer(i8* %15, i32* %1)
  %17 = icmp eq i64 %16, 0
  %18 = load i64, i64* %3, align 8
  br i1 %17, label %24, label %19

; <label>:19:                                     ; preds = %14
  %20 = mul i64 %18, %16
  %21 = udiv i64 %20, %16
  %22 = icmp eq i64 %21, %18
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %19
  store i32 1, i32* %1, align 4
  br label %38

; <label>:24:                                     ; preds = %14, %19
  %25 = icmp eq i64 %18, 0
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %24
  %27 = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0), i64 2) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

; <label>:29:                                     ; preds = %26
  %30 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.87, i64 0, i64 0), i32 5) #9
  %31 = call i8* @quote_n(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i64 0, i64 0)) #9
  %32 = call i8* @quote_n(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.88, i64 0, i64 0)) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %30, i8* %31, i8* %32)
  %33 = load i64, i64* %3, align 8
  br label %34

; <label>:34:                                     ; preds = %29, %26, %24
  %35 = phi i64 [ %33, %29 ], [ 0, %26 ], [ %18, %24 ]
  %36 = mul i64 %35, %16
  store i64 %36, i64* %3, align 8
  br label %38

; <label>:37:                                     ; preds = %10, %2
  store i32 %7, i32* %1, align 4
  br label %38

; <label>:38:                                     ; preds = %34, %8, %23, %37
  %39 = phi i64 [ 0, %37 ], [ 0, %23 ], [ %9, %8 ], [ %36, %34 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %6) #9
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #9
  ret i64 %39
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iread_fullblock(i32, i8* nocapture, i64) #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %21, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %14
  %7 = phi i64 [ %15, %14 ], [ 0, %5 ]
  %8 = phi i64 [ %17, %14 ], [ %2, %5 ]
  %9 = phi i8* [ %16, %14 ], [ %1, %5 ]
  %10 = tail call i64 @iread(i32 %0, i8* %9, i64 %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %19, label %12

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %19, label %14

; <label>:14:                                     ; preds = %12
  %15 = add nsw i64 %10, %7
  %16 = getelementptr inbounds i8, i8* %9, i64 %10
  %17 = sub i64 %8, %10
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %6

; <label>:19:                                     ; preds = %6, %14, %12
  %20 = phi i64 [ %10, %6 ], [ %15, %14 ], [ %7, %12 ]
  br label %21

; <label>:21:                                     ; preds = %19, %3
  %22 = phi i64 [ 0, %3 ], [ %20, %19 ]
  ret i64 %22
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @iread(i32, i8* nocapture, i64) #6 {
  br label %4

; <label>:4:                                      ; preds = %7, %3
  tail call fastcc void @process_signals()
  %5 = tail call i64 @read(i32 %0, i8* %1, i64 %2) #9
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %4, label %34

; <label>:11:                                     ; preds = %4
  %12 = icmp ne i64 %5, 0
  %13 = icmp ult i64 %5, %2
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %11
  tail call fastcc void @process_signals()
  br label %16

; <label>:16:                                     ; preds = %15, %11
  %17 = phi i1 [ true, %15 ], [ %12, %11 ]
  %18 = xor i1 %17, true
  %19 = load i8, i8* @warn_partial_read, align 1
  %20 = icmp eq i8 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %35, label %22

; <label>:22:                                     ; preds = %16
  %23 = load i64, i64* @iread.prev_nread, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = icmp ult i64 %23, %2
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %33

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* @status_level, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.90, i64 0, i64 0), i64 %23, i32 5) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %31, i64 %23)
  br label %32

; <label>:32:                                     ; preds = %27, %30
  store i8 0, i8* @warn_partial_read, align 1
  br label %33

; <label>:33:                                     ; preds = %32, %22
  store i64 %5, i64* @iread.prev_nread, align 8
  br label %35

; <label>:34:                                     ; preds = %7
  br label %35

; <label>:35:                                     ; preds = %34, %16, %33
  ret i64 %5
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_fd_flags(i32, i32, i8*) unnamed_addr #6 {
  %4 = alloca %struct.stat, align 8
  %5 = and i32 %1, -131329
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 3) #9
  %9 = or i32 %8, %5
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %45, label %11

; <label>:11:                                     ; preds = %7
  %12 = icmp eq i32 %8, %9
  br i1 %12, label %50, label %13

; <label>:13:                                     ; preds = %11
  %14 = and i32 %9, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %30, label %16

; <label>:16:                                     ; preds = %13
  %17 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %17) #9
  %18 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %4) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 16384
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %20
  %26 = tail call i32* @__errno_location() #1
  store i32 20, i32* %26, align 4
  br label %27

; <label>:27:                                     ; preds = %20, %16, %25
  %28 = phi i8 [ 0, %25 ], [ 0, %16 ], [ 1, %20 ]
  %29 = and i32 %9, -65537
  call void @llvm.lifetime.end(i64 144, i8* nonnull %17) #9
  br label %30

; <label>:30:                                     ; preds = %13, %27
  %31 = phi i32 [ %29, %27 ], [ %9, %13 ]
  %32 = phi i8 [ %28, %27 ], [ 1, %13 ]
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  %35 = icmp eq i32 %8, %31
  %36 = or i1 %35, %34
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %30
  %38 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 4, i32 %31) #9
  %39 = icmp eq i32 %38, -1
  %40 = select i1 %39, i8 0, i8 %32
  br label %41

; <label>:41:                                     ; preds = %37, %30
  %42 = phi i8 [ %32, %30 ], [ %40, %37 ]
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %7, %41
  %46 = tail call i32* @__errno_location() #1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.102, i64 0, i64 0), i32 5) #9
  %49 = call i8* @quotearg_style(i32 4, i8* %2) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %47, i8* %48, i8* %49)
  unreachable

; <label>:50:                                     ; preds = %11, %41, %3
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @process_signals() unnamed_addr #6 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = bitcast %struct.__sigset_t* %1 to i8*
  br label %3

; <label>:3:                                      ; preds = %22, %0
  %4 = load volatile i32, i32* @interrupt_signal, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6:                                      ; preds = %3
  %7 = load volatile i32, i32* @info_signal_count, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

; <label>:9:                                      ; preds = %6, %3
  call void @llvm.lifetime.start(i64 128, i8* nonnull %2) #9
  %10 = call i32 @sigprocmask(i32 0, %struct.__sigset_t* nonnull @caught_signals, %struct.__sigset_t* nonnull %1) #9
  %11 = load volatile i32, i32* @interrupt_signal, align 4
  %12 = load volatile i32, i32* @info_signal_count, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %9
  %15 = add nsw i32 %12, -1
  store volatile i32 %15, i32* @info_signal_count, align 4
  br label %16

; <label>:16:                                     ; preds = %9, %14
  %17 = call i32 @sigprocmask(i32 2, %struct.__sigset_t* nonnull %1, %struct.__sigset_t* null) #9
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %16
  call fastcc void @cleanup()
  call fastcc void @print_stats()
  %20 = call i32 @raise(i32 %11) #9
  br label %22

; <label>:21:                                     ; preds = %16
  call fastcc void @print_stats()
  br label %22

; <label>:22:                                     ; preds = %21, %19
  call void @llvm.lifetime.end(i64 128, i8* nonnull %2) #9
  br label %3

; <label>:23:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @skip(i32, i8*, i64, i64, i64* nocapture) unnamed_addr #6 {
  %6 = alloca %struct.stat, align 8
  %7 = mul i64 %3, %2
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %8, %7
  %10 = tail call i32* @__errno_location() #1
  store i32 0, i32* %10, align 4
  %11 = udiv i64 9223372036854775807, %3
  %12 = icmp ult i64 %11, %2
  br i1 %12, label %54, label %13

; <label>:13:                                     ; preds = %5
  %14 = tail call fastcc i64 @skip_via_lseek(i8* %1, i32 %0, i64 %9, i32 1)
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %18, label %16

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %10, align 4
  br label %54

; <label>:18:                                     ; preds = %13
  %19 = icmp eq i32 %0, 0
  br i1 %19, label %20, label %53

; <label>:20:                                     ; preds = %18
  %21 = bitcast %struct.stat* %6 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %21) #9
  %22 = call i32 @__fxstat(i32 1, i32 0, %struct.stat* nonnull %6) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 5) #9
  %27 = call i8* @quotearg_style(i32 4, i8* %1) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %25, i8* %26, i8* %27)
  unreachable

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = trunc i32 %30 to i16
  %32 = and i16 %31, -4096
  switch i16 %32, label %33 [
    i16 -32768, label %35
    i16 -24576, label %35
  ]

; <label>:33:                                     ; preds = %28
  %34 = load i64, i64* @input_offset, align 8
  br label %45

; <label>:35:                                     ; preds = %28, %28
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @input_offset, align 8
  %39 = add i64 %38, %9
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %35
  %42 = sub i64 %9, %37
  %43 = udiv i64 %42, %3
  %44 = sub i64 %37, %38
  br label %45

; <label>:45:                                     ; preds = %33, %35, %41
  %46 = phi i64 [ %38, %41 ], [ %38, %35 ], [ %34, %33 ]
  %47 = phi i64 [ %43, %41 ], [ 0, %35 ], [ 0, %33 ]
  %48 = phi i64 [ %44, %41 ], [ %9, %35 ], [ %9, %33 ]
  %49 = add i64 %46, %48
  store i64 %49, i64* @input_offset, align 8
  %50 = icmp ult i64 %49, %48
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %45
  store i8 1, i8* @input_offset_overflow, align 1
  br label %52

; <label>:52:                                     ; preds = %45, %51
  call void @llvm.lifetime.end(i64 144, i8* nonnull %21) #9
  br label %119

; <label>:53:                                     ; preds = %18
  store i64 0, i64* %4, align 8
  br label %119

; <label>:54:                                     ; preds = %16, %5
  %55 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %56 = tail call fastcc i64 @skip_via_lseek(i8* %1, i32 %0, i64 0, i32 2)
  %57 = icmp sgt i64 %56, -1
  br i1 %57, label %58, label %69

; <label>:58:                                     ; preds = %54
  %59 = icmp eq i32 %55, 0
  %60 = select i1 %59, i32 75, i32 %55
  %61 = icmp eq i32 %0, 0
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.110, i64 0, i64 0), i32 5) #9
  %64 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %60, i8* %63, i8* %64)
  br label %68

; <label>:65:                                     ; preds = %58
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), i32 5) #9
  %67 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %60, i8* %66, i8* %67)
  br label %68

; <label>:68:                                     ; preds = %65, %62
  tail call fastcc void @quit() #15
  unreachable

; <label>:69:                                     ; preds = %54
  %70 = icmp eq i32 %0, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %69
  tail call fastcc void @alloc_ibuf()
  br label %73

; <label>:72:                                     ; preds = %69
  tail call fastcc void @alloc_obuf()
  br label %73

; <label>:73:                                     ; preds = %72, %71
  %74 = phi i8** [ @obuf, %72 ], [ @ibuf, %71 ]
  %75 = load i8*, i8** %74, align 8
  br label %76

; <label>:76:                                     ; preds = %112, %73
  %77 = phi i64 [ %2, %73 ], [ %113, %112 ]
  %78 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** @iread_fnc, align 8
  %79 = icmp ne i64 %77, 0
  br i1 %79, label %82, label %80

; <label>:80:                                     ; preds = %76
  %81 = load i64, i64* %4, align 8
  br label %82

; <label>:82:                                     ; preds = %76, %80
  %83 = phi i64 [ %81, %80 ], [ %3, %76 ]
  %84 = tail call i64 %78(i32 %0, i8* %75, i64 %83) #9
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %99

; <label>:86:                                     ; preds = %82
  br i1 %70, label %87, label %95

; <label>:87:                                     ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.105, i64 0, i64 0), i32 5) #9
  %90 = tail call i8* @quotearg_style(i32 4, i8* %1) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %88, i8* %89, i8* %90)
  %91 = load i32, i32* @conversions_mask, align 4
  %92 = and i32 %91, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %98, label %94

; <label>:94:                                     ; preds = %87
  tail call fastcc void @print_stats()
  br label %98

; <label>:95:                                     ; preds = %86
  %96 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i64 0, i64 0), i32 5) #9
  %97 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %55, i8* %96, i8* %97)
  br label %98

; <label>:98:                                     ; preds = %87, %94, %95
  tail call fastcc void @quit() #15
  unreachable

; <label>:99:                                     ; preds = %82
  %100 = icmp eq i64 %84, 0
  br i1 %100, label %117, label %101

; <label>:101:                                    ; preds = %99
  br i1 %70, label %102, label %107

; <label>:102:                                    ; preds = %101
  %103 = load i64, i64* @input_offset, align 8
  %104 = add i64 %103, %84
  store i64 %104, i64* @input_offset, align 8
  %105 = icmp ult i64 %104, %84
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %102
  store i8 1, i8* @input_offset_overflow, align 1
  br label %107

; <label>:107:                                    ; preds = %106, %102, %101
  br i1 %79, label %109, label %108

; <label>:108:                                    ; preds = %107
  store i64 0, i64* %4, align 8
  br label %119

; <label>:109:                                    ; preds = %107
  %110 = add i64 %77, -1
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %114, label %112

; <label>:112:                                    ; preds = %109, %114
  %113 = phi i64 [ %110, %109 ], [ 0, %114 ]
  br label %76

; <label>:114:                                    ; preds = %109
  %115 = load i64, i64* %4, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %112

; <label>:117:                                    ; preds = %114, %99
  %118 = phi i64 [ %77, %99 ], [ 0, %114 ]
  br label %119

; <label>:119:                                    ; preds = %117, %108, %52, %53
  %120 = phi i64 [ %47, %52 ], [ 0, %53 ], [ 0, %108 ], [ %118, %117 ]
  ret i64 %120
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @iwrite(i8* nocapture readonly, i64) unnamed_addr #6 {
  %3 = load i32, i32* @output_flags, align 4
  %4 = and i32 %3, 16384
  %5 = icmp ne i32 %4, 0
  %6 = load i64, i64* @output_blocksize, align 8
  %7 = icmp ugt i64 %6, %1
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %46

; <label>:9:                                      ; preds = %2
  %10 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 1, i32 3) #9
  %11 = and i32 %10, -16385
  %12 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 1, i32 4, i32 %11) #9
  %13 = icmp ne i32 %12, 0
  %14 = load i32, i32* @status_level, align 4
  %15 = icmp ne i32 %14, 1
  %16 = and i1 %13, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %9
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.113, i64 0, i64 0), i32 5) #9
  %21 = load i8*, i8** @output_file, align 8
  %22 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %21) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %19, i8* %20, i8* %22)
  br label %23

; <label>:23:                                     ; preds = %17, %9
  %24 = load i64, i64* @cache_round.o_pending, align 8
  %25 = icmp eq i64 %24, 0
  %26 = load i64, i64* @max_records, align 8
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %43, label %29

; <label>:29:                                     ; preds = %23
  %30 = load i64, i64* @invalidate_cache.output_offset, align 8
  %31 = icmp eq i64 %30, -1
  br i1 %31, label %43, label %32

; <label>:32:                                     ; preds = %29
  %33 = icmp slt i64 %30, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %32
  %35 = tail call i64 @lseek(i32 1, i64 0, i32 1) #9
  %36 = sub i64 %35, %24
  store i64 %36, i64* @invalidate_cache.output_offset, align 8
  %37 = icmp sgt i64 %36, -1
  br i1 %37, label %38, label %43

; <label>:38:                                     ; preds = %34, %32
  %39 = phi i64 [ %36, %34 ], [ %30, %32 ]
  %40 = tail call i32 @posix_fadvise(i32 1, i64 %39, i64 %24, i32 4) #9
  %41 = load i64, i64* @invalidate_cache.output_offset, align 8
  %42 = add nsw i64 %41, %24
  store i64 %42, i64* @invalidate_cache.output_offset, align 8
  br label %43

; <label>:43:                                     ; preds = %29, %34, %38, %23
  %44 = load i32, i32* @conversions_mask, align 4
  %45 = or i32 %44, 32768
  store i32 %45, i32* @conversions_mask, align 4
  br label %46

; <label>:46:                                     ; preds = %43, %2
  %47 = icmp eq i64 %1, 0
  br label %48

; <label>:48:                                     ; preds = %92, %46
  %49 = phi i64 [ 0, %46 ], [ %94, %92 ]
  %50 = icmp ult i64 %49, %1
  %51 = getelementptr inbounds i8, i8* %0, i64 %49
  %52 = sub i64 %1, %49
  br i1 %50, label %53, label %98

; <label>:53:                                     ; preds = %48
  br label %54

; <label>:54:                                     ; preds = %53, %88
  tail call fastcc void @process_signals()
  store i1 false, i1* @final_op_was_seek, align 1
  %55 = load i32, i32* @conversions_mask, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %83, label %58

; <label>:58:                                     ; preds = %54
  br label %59

; <label>:59:                                     ; preds = %58, %68
  %60 = phi i64 [ %66, %68 ], [ %1, %58 ]
  %61 = phi i8* [ %65, %68 ], [ %0, %58 ]
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %82

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %61, i64 1
  %66 = add i64 %60, -1
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %74, label %68

; <label>:68:                                     ; preds = %64
  %69 = and i64 %66, 15
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %59

; <label>:71:                                     ; preds = %68
  %72 = tail call i32 @memcmp(i8* %0, i8* %65, i64 %66) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %83

; <label>:74:                                     ; preds = %64
  br label %75

; <label>:75:                                     ; preds = %74, %71
  %76 = tail call i64 @lseek(i32 1, i64 %1, i32 1) #9
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* @conversions_mask, align 4
  %80 = and i32 %79, -65537
  store i32 %80, i32* @conversions_mask, align 4
  br label %83

; <label>:81:                                     ; preds = %75
  store i1 true, i1* @final_op_was_seek, align 1
  br i1 %47, label %83, label %85

; <label>:82:                                     ; preds = %59
  br label %83

; <label>:83:                                     ; preds = %82, %54, %71, %78, %81
  %84 = tail call i64 @write(i32 1, i8* %51, i64 %52) #9
  br label %85

; <label>:85:                                     ; preds = %81, %83
  %86 = phi i64 [ %1, %81 ], [ %84, %83 ]
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %85
  %89 = tail call i32* @__errno_location() #1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %54, label %97

; <label>:92:                                     ; preds = %85
  %93 = icmp eq i64 %86, 0
  %94 = add i64 %86, %49
  br i1 %93, label %95, label %48

; <label>:95:                                     ; preds = %92
  %96 = tail call i32* @__errno_location() #1
  store i32 28, i32* %96, align 4
  br label %99

; <label>:97:                                     ; preds = %88
  br label %99

; <label>:98:                                     ; preds = %48
  br label %99

; <label>:99:                                     ; preds = %98, %97, %95
  %100 = load i1, i1* @o_nocache, align 1
  %101 = icmp ne i64 %49, 0
  %102 = and i1 %101, %100
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %99
  %104 = tail call fastcc zeroext i1 @invalidate_cache(i32 1, i64 %49)
  br label %105

; <label>:105:                                    ; preds = %103, %99
  ret i64 %49
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @quit() unnamed_addr #0 {
  tail call fastcc void @finish_up()
  tail call void @exit(i32 1) #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @alloc_ibuf() unnamed_addr #6 {
  %1 = alloca [652 x i8], align 16
  %2 = load i8*, i8** @ibuf, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %25

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* @input_blocksize, align 8
  %6 = load i64, i64* @page_size, align 8
  %7 = shl i64 %6, 1
  %8 = add i64 %5, 3
  %9 = add i64 %8, %7
  %10 = tail call noalias i8* @malloc(i64 %9) #9
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds [652 x i8], [652 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 652, i8* nonnull %13) #9
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.114, i64 0, i64 0), i32 5) #9
  %15 = load i64, i64* @input_blocksize, align 8
  %16 = call i8* @human_readable(i64 %15, i8* nonnull %13, i32 497, i64 1, i64 1) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %14, i64 %5, i8* %16)
  unreachable

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds i8, i8* %10, i64 2
  %19 = getelementptr inbounds i8, i8* %18, i64 %6
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  %21 = ptrtoint i8* %20 to i64
  %22 = urem i64 %21, %6
  %23 = sub i64 0, %22
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** @ibuf, align 8
  br label %25

; <label>:25:                                     ; preds = %0, %17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @alloc_obuf() unnamed_addr #6 {
  %1 = alloca [652 x i8], align 16
  %2 = load i8*, i8** @obuf, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %29

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @conversions_mask, align 4
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i64, i64* @output_blocksize, align 8
  %10 = load i64, i64* @page_size, align 8
  %11 = add i64 %9, -1
  %12 = add i64 %11, %10
  %13 = tail call noalias i8* @malloc(i64 %12) #9
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %20

; <label>:15:                                     ; preds = %8
  %16 = getelementptr inbounds [652 x i8], [652 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start(i64 652, i8* nonnull %16) #9
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.115, i64 0, i64 0), i32 5) #9
  %18 = load i64, i64* @output_blocksize, align 8
  %19 = call i8* @human_readable(i64 %18, i8* nonnull %16, i32 497, i64 1, i64 1) #9
  call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 0, i8* %17, i64 %9, i8* %19)
  unreachable

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %13, i64 %10
  %22 = getelementptr inbounds i8, i8* %21, i64 -1
  %23 = ptrtoint i8* %22 to i64
  %24 = urem i64 %23, %10
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** @obuf, align 8
  br label %29

; <label>:27:                                     ; preds = %4
  tail call fastcc void @alloc_ibuf()
  %28 = load i64, i64* bitcast (i8** @ibuf to i64*), align 8
  store i64 %28, i64* bitcast (i8** @obuf to i64*), align 8
  br label %29

; <label>:29:                                     ; preds = %0, %27, %20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_xfer_stats(i64) unnamed_addr #6 {
  %2 = alloca [3 x [652 x i8]], align 16
  %3 = icmp ne i64 %0, 0
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @gethrxtime() #9
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i64 [ %5, %4 ], [ %0, %1 ]
  %8 = getelementptr inbounds [3 x [652 x i8]], [3 x [652 x i8]]* %2, i64 0, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1956, i8* nonnull %8) #9
  %9 = load i64, i64* @w_bytes, align 8
  %10 = call i8* @human_readable(i64 %9, i8* nonnull %8, i32 465, i64 1, i64 1) #9
  %11 = load i64, i64* @w_bytes, align 8
  %12 = getelementptr inbounds [3 x [652 x i8]], [3 x [652 x i8]]* %2, i64 0, i64 1, i64 0
  %13 = call i8* @human_readable(i64 %11, i8* %12, i32 497, i64 1, i64 1) #9
  %14 = load i64, i64* @start_time, align 8
  %15 = icmp sgt i64 %7, %14
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %6
  %17 = sub i64 %7, %14
  %18 = uitofp i64 %17 to double
  %19 = fdiv double %18, 1.000000e+09
  %20 = load i64, i64* @w_bytes, align 8
  %21 = getelementptr inbounds [3 x [652 x i8]], [3 x [652 x i8]]* %2, i64 0, i64 2, i64 0
  %22 = call i8* @human_readable(i64 %20, i8* %21, i32 465, i64 1000000000, i64 %17) #9
  br label %25

; <label>:23:                                     ; preds = %6
  %24 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i64 0, i64 0), i32 5) #9
  br label %25

; <label>:25:                                     ; preds = %23, %16
  %26 = phi i8* [ %22, %16 ], [ %24, %23 ]
  %27 = phi double [ %19, %16 ], [ 0.000000e+00, %23 ]
  br i1 %3, label %28, label %39

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %29, i64 0, i32 6
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %31, %33
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %28
  %36 = call i32 @__overflow(%struct._IO_FILE* nonnull %29, i32 13) #9
  br label %39

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %38, i8** %30, align 8
  store i8 13, i8* %31, align 1
  br label %39

; <label>:39:                                     ; preds = %37, %35, %25
  %40 = call i64 @strlen(i8* %10) #13
  %41 = add i64 %40, -2
  %42 = getelementptr inbounds i8, i8* %10, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = icmp eq i8 %43, 32
  br i1 %44, label %45, label %51

; <label>:45:                                     ; preds = %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i64, i64* @w_bytes, align 8
  %48 = call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i64 0, i64 0), i64 %47, i32 5) #9
  %49 = load i64, i64* @w_bytes, align 8
  %50 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %46, i32 1, i8* %48, i64 %49, double %27, i8* %26) #9
  br label %66

; <label>:51:                                     ; preds = %39
  %52 = call i64 @strlen(i8* %13) #13
  %53 = add i64 %52, -2
  %54 = getelementptr inbounds i8, i8* %13, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = icmp eq i8 %55, 32
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  br i1 %56, label %58, label %62

; <label>:58:                                     ; preds = %51
  %59 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.99, i64 0, i64 0), i32 5) #9
  %60 = load i64, i64* @w_bytes, align 8
  %61 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %57, i32 1, i8* %59, i64 %60, i8* nonnull %10, double %27, i8* %26) #9
  br label %66

; <label>:62:                                     ; preds = %51
  %63 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.100, i64 0, i64 0), i32 5) #9
  %64 = load i64, i64* @w_bytes, align 8
  %65 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %57, i32 1, i8* %63, i64 %64, i8* nonnull %10, i8* nonnull %13, double %27, i8* %26) #9
  br label %66

; <label>:66:                                     ; preds = %58, %62, %45
  %67 = phi i32 [ %50, %45 ], [ %61, %58 ], [ %65, %62 ]
  br i1 %3, label %68, label %78

; <label>:68:                                     ; preds = %66
  %69 = icmp sgt i32 %67, -1
  br i1 %69, label %70, label %77

; <label>:70:                                     ; preds = %68
  %71 = load i32, i32* @progress_len, align 4
  %72 = icmp sgt i32 %71, %67
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %70
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = sub nsw i32 %71, %67
  %76 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %74, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i64 0, i64 0), i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)) #9
  br label %77

; <label>:77:                                     ; preds = %73, %70, %68
  store i32 %67, i32* @progress_len, align 4
  br label %89

; <label>:78:                                     ; preds = %66
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %80 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %79, i64 0, i32 6
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ult i8* %81, %83
  br i1 %84, label %87, label %85

; <label>:85:                                     ; preds = %78
  %86 = call i32 @__overflow(%struct._IO_FILE* nonnull %79, i32 10) #9
  br label %89

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %88, i8** %80, align 8
  store i8 10, i8* %81, align 1
  br label %89

; <label>:89:                                     ; preds = %87, %85, %77
  call void @llvm.lifetime.end(i64 1956, i8* nonnull %8) #9
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @print_stats() unnamed_addr #6 {
  %1 = load i32, i32* @status_level, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %37, label %3

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @progress_len, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %18

; <label>:6:                                      ; preds = %3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i64 0, i32 5
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %7, i64 0, i32 6
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ult i8* %9, %11
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %6
  %14 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %7, i32 10) #9
  br label %17

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %16, i8** %8, align 8
  store i8 10, i8* %9, align 1
  br label %17

; <label>:17:                                     ; preds = %13, %15
  store i32 0, i32* @progress_len, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.93, i64 0, i64 0), i32 5) #9
  %21 = load i64, i64* @r_full, align 8
  %22 = load i64, i64* @r_partial, align 8
  %23 = load i64, i64* @w_full, align 8
  %24 = load i64, i64* @w_partial, align 8
  %25 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %19, i32 1, i8* %20, i64 %21, i64 %22, i64 %23, i64 %24) #9
  %26 = load i64, i64* @r_truncate, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %33, label %28

; <label>:28:                                     ; preds = %18
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = tail call i8* @dcngettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.95, i64 0, i64 0), i64 %26, i32 5) #9
  %31 = load i64, i64* @r_truncate, align 8
  %32 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %29, i32 1, i8* %30, i64 %31) #9
  br label %33

; <label>:33:                                     ; preds = %18, %28
  %34 = load i32, i32* @status_level, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %33
  tail call fastcc void @print_xfer_stats(i64 0)
  br label %37

; <label>:37:                                     ; preds = %33, %0, %36
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @skip_via_lseek(i8*, i32, i64, i32) unnamed_addr #6 {
  %5 = alloca %struct.mtget, align 8
  %6 = alloca %struct.mtget, align 8
  %7 = bitcast %struct.mtget* %5 to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %7) #9
  %8 = bitcast %struct.mtget* %6 to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %8) #9
  %9 = call i32 (i32, i64, ...) @ioctl(i32 %1, i64 2150657282, %struct.mtget* nonnull %5) #9
  %10 = call i64 @lseek(i32 %1, i64 %2, i32 %3) #9
  %11 = icmp sgt i64 %10, -1
  %12 = icmp eq i32 %9, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %44

; <label>:14:                                     ; preds = %4
  %15 = call i32 (i32, i64, ...) @ioctl(i32 %1, i64 2150657282, %struct.mtget* nonnull %6) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.mtget, %struct.mtget* %5, i64 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.mtget, %struct.mtget* %6, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %44

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.mtget, %struct.mtget* %5, i64 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.mtget, %struct.mtget* %6, i64 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %44

; <label>:29:                                     ; preds = %23
  %30 = getelementptr inbounds %struct.mtget, %struct.mtget* %5, i64 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mtget, %struct.mtget* %6, i64 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %44

; <label>:35:                                     ; preds = %29
  %36 = load i32, i32* @status_level, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %35
  %39 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.112, i64 0, i64 0), i32 5) #9
  %40 = getelementptr inbounds %struct.mtget, %struct.mtget* %6, i64 0, i32 0
  %41 = load i64, i64* %40, align 8
  call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 0, i8* %39, i8* %0, i64 %41)
  br label %42

; <label>:42:                                     ; preds = %35, %38
  %43 = tail call i32* @__errno_location() #1
  store i32 0, i32* %43, align 4
  br label %44

; <label>:44:                                     ; preds = %42, %29, %23, %17, %14, %4
  %45 = phi i64 [ -1, %42 ], [ %10, %29 ], [ %10, %23 ], [ %10, %17 ], [ %10, %14 ], [ %10, %4 ]
  call void @llvm.lifetime.end(i64 48, i8* nonnull %8) #9
  call void @llvm.lifetime.end(i64 48, i8* nonnull %7) #9
  ret i64 %45
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @copy_with_block(i8* nocapture readonly, i64) unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %59, label %4

; <label>:4:                                      ; preds = %2
  %5 = load i64, i64* @col, align 8
  br label %6

; <label>:6:                                      ; preds = %4, %53
  %7 = phi i64 [ %54, %53 ], [ %5, %4 ]
  %8 = phi i64 [ %55, %53 ], [ %1, %4 ]
  %9 = phi i8* [ %56, %53 ], [ %0, %4 ]
  %10 = load i8, i8* %9, align 1
  %11 = load i8, i8* @newline_character, align 1
  %12 = icmp eq i8 %10, %11
  %13 = load i64, i64* @conversion_blocksize, align 8
  br i1 %12, label %14, label %33

; <label>:14:                                     ; preds = %6
  %15 = icmp ult i64 %7, %13
  br i1 %15, label %16, label %53

; <label>:16:                                     ; preds = %14
  br label %17

; <label>:17:                                     ; preds = %16, %29
  %18 = phi i64 [ %30, %29 ], [ %13, %16 ]
  %19 = phi i64 [ %31, %29 ], [ %7, %16 ]
  %20 = load i8, i8* @space_character, align 1
  %21 = load i8*, i8** @obuf, align 8
  %22 = load i64, i64* @oc, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @oc, align 8
  %24 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %20, i8* %24, align 1
  %25 = load i64, i64* @output_blocksize, align 8
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %17
  tail call fastcc void @write_output()
  %28 = load i64, i64* @conversion_blocksize, align 8
  br label %29

; <label>:29:                                     ; preds = %17, %27
  %30 = phi i64 [ %18, %17 ], [ %28, %27 ]
  %31 = add i64 %19, 1
  %32 = icmp ult i64 %31, %30
  br i1 %32, label %17, label %52

; <label>:33:                                     ; preds = %6
  %34 = icmp eq i64 %7, %13
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %33
  %36 = load i64, i64* @r_truncate, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @r_truncate, align 8
  br label %49

; <label>:38:                                     ; preds = %33
  %39 = icmp ult i64 %7, %13
  br i1 %39, label %40, label %49

; <label>:40:                                     ; preds = %38
  %41 = load i8*, i8** @obuf, align 8
  %42 = load i64, i64* @oc, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* @oc, align 8
  %44 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %10, i8* %44, align 1
  %45 = load i64, i64* @output_blocksize, align 8
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %40
  tail call fastcc void @write_output()
  %48 = load i64, i64* @col, align 8
  br label %49

; <label>:49:                                     ; preds = %40, %38, %47, %35
  %50 = phi i64 [ %7, %40 ], [ %7, %38 ], [ %48, %47 ], [ %7, %35 ]
  %51 = add i64 %50, 1
  br label %53

; <label>:52:                                     ; preds = %29
  br label %53

; <label>:53:                                     ; preds = %52, %14, %49
  %54 = phi i64 [ %51, %49 ], [ 0, %14 ], [ 0, %52 ]
  store i64 %54, i64* @col, align 8
  %55 = add i64 %8, -1
  %56 = getelementptr inbounds i8, i8* %9, i64 1
  %57 = icmp eq i64 %55, 0
  br i1 %57, label %58, label %6

; <label>:58:                                     ; preds = %53
  br label %59

; <label>:59:                                     ; preds = %58, %2
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @copy_with_unblock(i8* nocapture readonly, i64) unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %63, label %4

; <label>:4:                                      ; preds = %2
  br label %5

; <label>:5:                                      ; preds = %4, %58
  %6 = phi i64 [ %60, %58 ], [ 0, %4 ]
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = load i64, i64* @col, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* @col, align 8
  %11 = load i64, i64* @conversion_blocksize, align 8
  %12 = icmp ult i64 %9, %11
  br i1 %12, label %23, label %13

; <label>:13:                                     ; preds = %5
  store i64 0, i64* @copy_with_unblock.pending_spaces, align 8
  store i64 0, i64* @col, align 8
  %14 = add i64 %6, -1
  %15 = load i8, i8* @newline_character, align 1
  %16 = load i8*, i8** @obuf, align 8
  %17 = load i64, i64* @oc, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* @oc, align 8
  %19 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8 %15, i8* %19, align 1
  %20 = load i64, i64* @output_blocksize, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %58, label %22

; <label>:22:                                     ; preds = %13
  tail call fastcc void @write_output()
  br label %58

; <label>:23:                                     ; preds = %5
  %24 = load i8, i8* @space_character, align 1
  %25 = icmp eq i8 %8, %24
  %26 = load i64, i64* @copy_with_unblock.pending_spaces, align 8
  br i1 %25, label %30, label %27

; <label>:27:                                     ; preds = %23
  %28 = icmp eq i64 %26, 0
  br i1 %28, label %50, label %29

; <label>:29:                                     ; preds = %27
  br label %32

; <label>:30:                                     ; preds = %23
  %31 = add i64 %26, 1
  store i64 %31, i64* @copy_with_unblock.pending_spaces, align 8
  br label %58

; <label>:32:                                     ; preds = %29, %47
  %33 = phi i64 [ %45, %47 ], [ %26, %29 ]
  %34 = phi i8 [ %48, %47 ], [ %24, %29 ]
  %35 = load i8*, i8** @obuf, align 8
  %36 = load i64, i64* @oc, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @oc, align 8
  %38 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8 %34, i8* %38, align 1
  %39 = load i64, i64* @output_blocksize, align 8
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %32
  tail call fastcc void @write_output()
  %42 = load i64, i64* @copy_with_unblock.pending_spaces, align 8
  br label %43

; <label>:43:                                     ; preds = %32, %41
  %44 = phi i64 [ %33, %32 ], [ %42, %41 ]
  %45 = add i64 %44, -1
  store i64 %45, i64* @copy_with_unblock.pending_spaces, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %47

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* @space_character, align 1
  br label %32

; <label>:49:                                     ; preds = %43
  br label %50

; <label>:50:                                     ; preds = %49, %27
  %51 = load i8*, i8** @obuf, align 8
  %52 = load i64, i64* @oc, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* @oc, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %8, i8* %54, align 1
  %55 = load i64, i64* @output_blocksize, align 8
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %50
  tail call fastcc void @write_output()
  br label %58

; <label>:58:                                     ; preds = %13, %50, %22, %57, %30
  %59 = phi i64 [ %14, %22 ], [ %14, %13 ], [ %6, %30 ], [ %6, %57 ], [ %6, %50 ]
  %60 = add i64 %59, 1
  %61 = icmp ult i64 %60, %1
  br i1 %61, label %5, label %62

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %62, %2
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_output() unnamed_addr #6 {
  %1 = load i8*, i8** @obuf, align 8
  %2 = load i64, i64* @output_blocksize, align 8
  %3 = tail call fastcc i64 @iwrite(i8* %1, i64 %2)
  %4 = load i64, i64* @w_bytes, align 8
  %5 = add i64 %4, %3
  store i64 %5, i64* @w_bytes, align 8
  %6 = load i64, i64* @output_blocksize, align 8
  %7 = icmp eq i64 %3, %6
  br i1 %7, label %19, label %8

; <label>:8:                                      ; preds = %0
  %9 = tail call i32* @__errno_location() #1
  %10 = load i32, i32* %9, align 4
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i64 0, i64 0), i32 5) #9
  %12 = load i8*, i8** @output_file, align 8
  %13 = tail call i8* @quotearg_style(i32 4, i8* %12) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 0, i32 %10, i8* %11, i8* %13)
  %14 = icmp eq i64 %3, 0
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %8
  %16 = load i64, i64* @w_partial, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @w_partial, align 8
  br label %18

; <label>:18:                                     ; preds = %8, %15
  tail call fastcc void @quit() #15
  unreachable

; <label>:19:                                     ; preds = %0
  %20 = load i64, i64* @w_full, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* @w_full, align 8
  store i64 0, i64* @oc, align 8
  ret void
}

declare i32 @fdatasync(i32) local_unnamed_addr #3

declare i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cleanup() unnamed_addr #6 {
  %1 = tail call i32 @close(i32 0) #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %9

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #1
  %5 = load i32, i32* %4, align 4
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i64 0, i64 0), i32 5) #9
  %7 = load i8*, i8** @input_file, align 8
  %8 = tail call i8* @quotearg_style(i32 4, i8* %7) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %5, i8* %6, i8* %8)
  unreachable

; <label>:9:                                      ; preds = %0
  %10 = tail call i32 @close(i32 1) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %9
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.92, i64 0, i64 0), i32 5) #9
  %16 = load i8*, i8** @output_file, align 8
  %17 = tail call i8* @quotearg_style(i32 4, i8* %16) #9
  tail call void (i32, i32, i8*, ...) @nl_error(i32 1, i32 %14, i8* %15, i8* %17)
  unreachable

; <label>:18:                                     ; preds = %9
  ret void
}

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @dcngettext(i8*, i8*, i8*, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @finish_up() unnamed_addr #6 {
  tail call fastcc void @cleanup()
  tail call fastcc void @print_stats()
  tail call fastcc void @process_signals()
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @invalidate_cache(i32, i64) unnamed_addr #6 {
  %3 = icmp eq i32 %0, 0
  %4 = select i1 %3, i64* @cache_round.i_pending, i64* @cache_round.o_pending
  %5 = icmp eq i64 %1, 0
  %6 = load i64, i64* %4, align 8
  br i1 %5, label %15, label %7

; <label>:7:                                      ; preds = %2
  %8 = add nsw i64 %6, %1
  %9 = load i64, i64* @page_size, align 8
  %10 = urem i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = sub i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = icmp ule i64 %8, %10
  %14 = or i1 %12, %13
  br i1 %14, label %56, label %15

; <label>:15:                                     ; preds = %7, %2
  %16 = phi i64 [ %10, %7 ], [ %6, %2 ]
  %17 = phi i64 [ %11, %7 ], [ %6, %2 ]
  %18 = or i64 %17, %1
  %19 = icmp eq i64 %18, 0
  %20 = load i64, i64* @max_records, align 8
  %21 = icmp ne i64 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %56, label %23

; <label>:23:                                     ; preds = %15
  %24 = select i1 %5, i64 0, i64 %16
  br i1 %3, label %25, label %35

; <label>:25:                                     ; preds = %23
  %26 = load i8, i8* @input_seekable, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i64, i64* @input_offset, align 8
  %30 = add i64 %24, %17
  %31 = sub i64 %29, %30
  %32 = tail call i32 @posix_fadvise(i32 0, i64 %31, i64 %17, i32 4) #9
  br label %53

; <label>:33:                                     ; preds = %25
  %34 = tail call i32* @__errno_location() #1
  store i32 29, i32* %34, align 4
  br label %53

; <label>:35:                                     ; preds = %23
  %36 = icmp eq i32 %0, 1
  %37 = load i64, i64* @invalidate_cache.output_offset, align 8
  %38 = icmp ne i64 %37, -1
  %39 = and i1 %36, %38
  br i1 %39, label %40, label %53

; <label>:40:                                     ; preds = %35
  %41 = icmp slt i64 %37, 0
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %40
  %43 = tail call i64 @lseek(i32 1, i64 0, i32 1) #9
  %44 = add i64 %24, %17
  %45 = sub i64 %43, %44
  store i64 %45, i64* @invalidate_cache.output_offset, align 8
  %46 = icmp sgt i64 %45, -1
  br i1 %46, label %47, label %53

; <label>:47:                                     ; preds = %40, %42
  %48 = phi i64 [ %45, %42 ], [ %37, %40 ]
  %49 = tail call i32 @posix_fadvise(i32 1, i64 %48, i64 %17, i32 4) #9
  %50 = add nsw i64 %24, %17
  %51 = load i64, i64* @invalidate_cache.output_offset, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* @invalidate_cache.output_offset, align 8
  br label %53

; <label>:53:                                     ; preds = %35, %42, %47, %28, %33
  %54 = phi i32 [ %32, %28 ], [ -1, %33 ], [ %49, %47 ], [ -1, %42 ], [ -1, %35 ]
  %55 = icmp ne i32 %54, -1
  br label %56

; <label>:56:                                     ; preds = %7, %15, %53
  %57 = phi i1 [ %55, %53 ], [ true, %7 ], [ true, %15 ]
  ret i1 %57
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32, %struct.__sigset_t*, %struct.__sigset_t*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @raise(i32) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #9

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #9

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 5) #9
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.45, i64 0, i64 0), i8* %17, i8* %12) #9
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.46, i64 0, i64 0), i8* %12) #9
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

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_reopen(i32, i8* nocapture readonly, i32, i32) local_unnamed_addr #6 {
  %5 = tail call i32 (i8*, i32, ...) @open(i8* %1, i32 %2, i32 %3) #9
  %6 = icmp eq i32 %5, %0
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @dup2(i32 %5, i32 %0) #9
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = tail call i32 @close(i32 %5) #9
  store i32 %12, i32* %11, align 4
  br label %14

; <label>:14:                                     ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ]
  ret i32 %15
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @gethrxtime() local_unnamed_addr #6 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca %struct.timespec, align 8
  %3 = bitcast %struct.timespec* %1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %3) #9
  %4 = call i32 @clock_gettime(i32 1, %struct.timespec* nonnull %1) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = mul nsw i64 %8, 1000000000
  %12 = add nsw i64 %11, %10
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #9
  br label %21

; <label>:13:                                     ; preds = %0
  call void @llvm.lifetime.end(i64 16, i8* nonnull %3) #9
  %14 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %14) #9
  call void @gettime(%struct.timespec* nonnull %2) #9
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = mul nsw i64 %16, 1000000000
  %20 = add nsw i64 %19, %18
  call void @llvm.lifetime.end(i64 16, i8* nonnull %14) #9
  br label %21

; <label>:21:                                     ; preds = %6, %13
  %22 = phi i64 [ %20, %13 ], [ %12, %6 ]
  ret i64 %22
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @gettime(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.timespec, align 8
  %3 = tail call i32 @clock_gettime(i32 0, %struct.timespec* %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #9
  %7 = call i32 @gettimeofday(%struct.timespec* nonnull %2, %struct.timezone* null) #9
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %12, 1000
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %13, i64* %14, align 8
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #9
  br label %15

; <label>:15:                                     ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @human_readable(i64, i8*, i32, i64, i64) local_unnamed_addr #6 {
  %6 = alloca [41 x i8], align 16
  %7 = and i32 %2, 3
  %8 = and i32 %2, 32
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %9, i32 1024, i32 1000
  %11 = tail call %struct.lconv* @localeconv() #9
  %12 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = tail call i64 @strlen(i8* %13) #13
  %15 = add i64 %14, -1
  %16 = icmp ult i64 %15, 16
  %17 = select i1 %16, i64 %14, i64 1
  %18 = select i1 %16, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0)
  %19 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.lconv, %struct.lconv* %11, i64 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i64 @strlen(i8* %22) #13
  %24 = icmp ult i64 %23, 17
  %25 = select i1 %24, i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.58, i64 0, i64 0)
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
  %82 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.59, i64 0, i64 0), x86_fp80 %81) #9
  %83 = tail call i64 @strlen(i8* %1) #13
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
  %106 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.60, i64 0, i64 0), x86_fp80 %105) #9
  %107 = tail call i64 @strlen(i8* %1) #13
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
  %138 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %1, i32 1, i64 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.59, i64 0, i64 0), x86_fp80 %137) #9
  %139 = tail call i64 @strlen(i8* %1) #13
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
  %279 = tail call i64 @strlen(i8* %25) #13
  %280 = getelementptr inbounds [41 x i8], [41 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 41, i8* nonnull %280) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %280, i8* %271, i64 %278, i32 1, i1 false) #9
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %300, i8* %302, i64 %298, i32 1, i1 false) #9
  %303 = icmp eq i64 %301, 0
  br i1 %303, label %306, label %304

; <label>:304:                                    ; preds = %294
  %305 = getelementptr inbounds i8, i8* %300, i64 %281
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %305, i8* %25, i64 %279, i32 1, i1 false) #9
  br label %282

; <label>:306:                                    ; preds = %294
  call void @llvm.lifetime.end(i64 41, i8* nonnull %280) #9
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i32 @human_options(i8*, i32* nocapture, i64*) local_unnamed_addr #6 {
  %4 = alloca i8*, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %16

; <label>:6:                                      ; preds = %3
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.61, i64 0, i64 0)) #9
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %16

; <label>:9:                                      ; preds = %6
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5.62, i64 0, i64 0)) #9
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %16

; <label>:12:                                     ; preds = %9
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.63, i64 0, i64 0)) #9
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
  %23 = tail call i64 @argmatch(i8* %21, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @block_size_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @block_size_opts to i8*), i64 4) #13
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
  call void @llvm.lifetime.start(i64 8, i8* nonnull %33) #9
  %34 = call i32 @xstrtoumax(i8* %21, i8** nonnull %4, i32 0, i64* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.64, i64 0, i64 0)) #9
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #9
  br label %70

; <label>:66:                                     ; preds = %32
  store i32 0, i32* %1, align 4
  call void @llvm.lifetime.end(i64 8, i8* nonnull %33) #9
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
  %77 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9.63, i64 0, i64 0)) #9
  %78 = icmp ne i8* %77, null
  %79 = select i1 %78, i64 512, i64 1024
  store i64 %79, i64* %2, align 8
  br label %80

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ 4, %76 ], [ %73, %72 ]
  ret i32 %81
}

; Function Attrs: nounwind sspstrong uwtable
define void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #6 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = load i32, i32* @opterr, align 4
  store i32 0, i32* @opterr, align 4
  %9 = icmp eq i32 %0, 2
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #9
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ]

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #9
  br label %17

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %14) #9
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #9
  call void @exit(i32 0) #14
  unreachable

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4
  store i32 0, i32* @optind, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.119, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.120, i64 0, i64 0), i64 7) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.121, i64 0, i64 0), i64 3) #13
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.132, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.133, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.134, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.134, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.134, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.133, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.133, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.133, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.134, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.135, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.136, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.137, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.138, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.134, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.133, i64 0, i64 0)
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

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

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
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #9
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i64 0, i64 0), i8* nonnull %7) #9
  br label %17

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i64 0, i64 0), i8* nonnull %7) #9
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.154, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #9
  tail call void @abort() #14
  unreachable

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #9
  ret void
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.155, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #9
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.156, i64 0, i64 0), i8* %2, i8* %3) #9
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.157, i64 0, i64 0), i32 5) #9
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #9
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.158, i64 0, i64 0), i32 5) #9
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.159, i64 0, i64 0), i32 5) #9
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #9
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.160, i64 0, i64 0), i32 5) #9
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #9
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.161, i64 0, i64 0), i32 5) #9
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #9
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.162, i64 0, i64 0), i32 5) #9
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.163, i64 0, i64 0), i32 5) #9
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.164, i64 0, i64 0), i32 5) #9
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.165, i64 0, i64 0), i32 5) #9
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.166, i64 0, i64 0), i32 5) #9
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.167, i64 0, i64 0), i32 5) #9
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.168, i64 0, i64 0), i32 5) #9
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

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.171, i64 0, i64 0), i32 5) #9
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.172, i64 0, i64 0)) #9
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.173, i64 0, i64 0), i32 5) #9
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.174, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.175, i64 0, i64 0)) #9
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.176, i64 0, i64 0), i32 5) #9
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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.187, i64 0, i64 0), i32 5) #9
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.188, i64 0, i64 0), i8* %2) #9
  tail call void @abort() #14
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoumax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #9
  %8 = icmp ult i32 %2, 37
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.192, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #14
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
  %28 = call i64 @__strtoul_internal(i8* %0, i8** %25, i32 %2, i32 0) #9
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
  %38 = call i8* @strchr(i8* nonnull %4, i32 %37) #9
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
  %54 = call i8* @strchr(i8* nonnull %4, i32 %53) #9
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
  %60 = call i8* @strchr(i8* nonnull %4, i32 48) #9
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
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #9
  ret i32 %266
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

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
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #9
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #11 {
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

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.209, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.210, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #9
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #9
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #9
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.211, i64 0, i64 0), i32 5) #9
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
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.212, i64 0, i64 0), i8* %22) #9
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #9
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.213, i64 0, i64 0), i8* %26) #9
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
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.209, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.210, i64 0, i64 0)
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
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #11 {
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.216, i64 0, i64 0)) #9
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

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #9
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.220, i64 0, i64 0)) #9
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.221, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.222, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.222, i64 0, i64 0), i64 14, i32 1, i1 false) #9
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #9
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.223, i64 0, i64 0)) #9
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.224, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #9
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #9
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.219, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.225, i64 0, i64 0), i8* %158
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
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }
