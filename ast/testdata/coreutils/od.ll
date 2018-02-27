; ModuleID = 'coreutils-8.27/src/od.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.tspec = type { i32, i32, void (i64, i64, i8*, i8*, i32, i32)*, [8 x i8], i8, i32, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.2 = type { i16 }
%union.anon.5 = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.6 = type { float }
%union.anon.7 = type { double }
%union.anon.8 = type { x86_fp80 }
%struct.__mbstate_t = type { i32, %union.anon.3 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [163 x i8] c"Usage: %s [OPTION]... [FILE]...\0A  or:  %s [-abcdfilosx]... [FILE] [[+]OFFSET[.][b]]\0A  or:  %s --traditional [OPTION]... [FILE] [[+]OFFSET[.][b] [+][LABEL][.][b]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [182 x i8] c"\0AWrite an unambiguous representation, octal bytes by default,\0Aof FILE to standard output.  With more than one FILE argument,\0Aconcatenate them in the listed order to form the input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.46 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.3 = private unnamed_addr constant [391 x i8] c"\0AIf first and second call formats both apply, the second format is assumed\0Aif the last operand begins with + or (if there are 2 operands) a digit.\0AAn OFFSET operand means -j OFFSET.  LABEL is the pseudo-address\0Aat first byte printed, incremented when dump is progressing.\0AFor OFFSET and LABEL, a 0x or 0X prefix indicates hexadecimal;\0Asuffixes may be . for octal and b for multiply by 512.\0A\00", align 1
@.str.47 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.4 = private unnamed_addr constant [287 x i8] c"  -A, --address-radix=RADIX   output format for file offsets; RADIX is one\0A                                of [doxn], for Decimal, Octal, Hex or None\0A      --endian={big|little}   swap input bytes according the specified order\0A  -j, --skip-bytes=BYTES      skip BYTES input bytes first\0A\00", align 1
@.str.5 = private unnamed_addr constant [552 x i8] c"  -N, --read-bytes=BYTES      limit dump to BYTES input bytes\0A  -S BYTES, --strings[=BYTES]  output strings of at least BYTES graphic chars;\0A                                3 is implied when BYTES is not specified\0A  -t, --format=TYPE           select output format or formats\0A  -v, --output-duplicates     do not use * to mark line suppression\0A  -w[BYTES], --width[=BYTES]  output BYTES bytes per output line;\0A                                32 is implied when BYTES is not specified\0A      --traditional           accept arguments in third form above\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [315 x i8] c"\0A\0ATraditional format specifications may be intermixed; they accumulate:\0A  -a   same as -t a,  select named characters, ignoring high-order bit\0A  -b   same as -t o1, select octal bytes\0A  -c   same as -t c,  select printable characters or backslash escapes\0A  -d   same as -t u2, select unsigned decimal 2-byte units\0A\00", align 1
@.str.9 = private unnamed_addr constant [274 x i8] c"  -f   same as -t fF, select floats\0A  -i   same as -t dI, select decimal ints\0A  -l   same as -t dL, select decimal longs\0A  -o   same as -t o2, select octal 2-byte units\0A  -s   same as -t d2, select decimal 2-byte units\0A  -x   same as -t x2, select hexadecimal 2-byte units\0A\00", align 1
@.str.10 = private unnamed_addr constant [166 x i8] c"\0A\0ATYPE is made up of one or more of these specifications:\0A  a          named character, ignoring high-order bit\0A  c          printable character or backslash escape\0A\00", align 1
@.str.11 = private unnamed_addr constant [249 x i8] c"  d[SIZE]    signed decimal, SIZE bytes per integer\0A  f[SIZE]    floating point, SIZE bytes per float\0A  o[SIZE]    octal, SIZE bytes per integer\0A  u[SIZE]    unsigned decimal, SIZE bytes per integer\0A  x[SIZE]    hexadecimal, SIZE bytes per integer\0A\00", align 1
@.str.12 = private unnamed_addr constant [244 x i8] c"\0ASIZE is a number.  For TYPE in [doux], SIZE may also be C for\0Asizeof(char), S for sizeof(short), I for sizeof(int) or L for\0Asizeof(long).  If TYPE is f, SIZE may also be F for sizeof(float), D\0Afor sizeof(double) or L for sizeof(long double).\0A\00", align 1
@.str.13 = private unnamed_addr constant [94 x i8] c"\0AAdding a z suffix to any type displays printable characters at the end of\0Aeach output line.\0A\00", align 1
@.str.14 = private unnamed_addr constant [173 x i8] c"\0A\0ABYTES is hex with 0x or 0X prefix, and may have a multiplier suffix:\0A  b    512\0A  KB   1000\0A  K    1024\0A  MB   1000*1000\0A  M    1024*1024\0Aand so on for G, T, P, E, Z, Y.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"od\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@integral_type_size = internal unnamed_addr global [9 x i32] zeroinitializer, align 16
@fp_type_size = internal unnamed_addr global [17 x i32] zeroinitializer, align 16
@n_specs = internal unnamed_addr global i64 0, align 8
@n_specs_allocated = internal global i64 0, align 8
@spec = internal unnamed_addr global %struct.tspec* null, align 8
@format_address = internal unnamed_addr global void (i64, i8)* null, align 8
@address_base = internal unnamed_addr global i32 0, align 4
@address_pad_len = internal unnamed_addr global i32 0, align 4
@flag_dump_strings = internal unnamed_addr global i1 false, align 1
@short_options = internal constant [35 x i8] c"A:aBbcDdeFfHhIij:LlN:OoS:st:vw::Xx\00", align 16
@long_options = internal constant [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 106 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i32 1, i32* null, i32 65 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i32 1, i32* null, i32 78 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 2, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 2, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@.str.19 = private unnamed_addr constant [72 x i8] c"invalid output address radix '%c'; it must be one character from [doxn]\00", align 1
@n_bytes_to_skip = internal global i64 0, align 8
@main.multipliers = internal constant [13 x i8] c"bEGKkMmPTYZ0\00", align 1
@limit_bytes_to_format = internal unnamed_addr global i1 false, align 1
@max_bytes_to_format = internal global i64 0, align 8
@string_min = internal unnamed_addr global i64 0, align 8
@abbreviate_duplicate_blocks = internal unnamed_addr global i1 false, align 1
@traditional = internal unnamed_addr global i1 false, align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"--endian\00", align 1
@endian_args = internal constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0), i8* null], align 16
@endian_types = internal constant [2 x i32] [i32 0, i32 1], align 4
@input_swap = internal unnamed_addr global i8 0, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"o1\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"u4\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"u2\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"fD\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"fF\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"x4\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"dI\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"dL\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"o4\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"o2\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"no type may be specified when dumping strings\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.108 = private unnamed_addr constant [3 x i8] c"Bb\00", align 1
@flag_pseudo_start = internal unnamed_addr global i1 false, align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.41 = private unnamed_addr constant [45 x i8] c"compatibility mode supports at most one file\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@end_offset = internal unnamed_addr global i64 0, align 8
@.str.42 = private unnamed_addr constant [37 x i8] c"skip-bytes + read-bytes is too large\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"oS\00", align 1
@default_file_list = internal constant [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8* null], align 16
@file_list = internal unnamed_addr global i8** null, align 8
@in_stream = internal unnamed_addr global %struct._IO_FILE* null, align 8
@input_filename = internal unnamed_addr global i8* null, align 8
@.str.111 = private unnamed_addr constant [39 x i8] c"cannot skip past end of combined input\00", align 1
@pseudo_offset = internal unnamed_addr global i64 0, align 8
@width_bytes = internal unnamed_addr constant [9 x i32] [i32 -1, i32 1, i32 2, i32 4, i32 8, i32 8, i32 4, i32 8, i32 16], align 16
@.str.44 = private unnamed_addr constant [45 x i8] c"warning: invalid width %lu; using %d instead\00", align 1
@bytes_per_block = internal unnamed_addr global i64 0, align 8
@.str.97 = private unnamed_addr constant [3 x i8] c"\5Ca\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"\5Cv\00", align 1
@.str.114 = private unnamed_addr constant [32 x i8] c"n_bytes_read == bytes_per_block\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"src/od.c\00", align 1
@__PRETTY_FUNCTION__.dump = private unnamed_addr constant [17 x i8] c"_Bool dump(void)\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@write_block.first = internal unnamed_addr global i1 false, align 1
@write_block.prev_pair_equal = internal unnamed_addr global i1 false, align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"  >\00", align 1
@.str.115 = private unnamed_addr constant [30 x i8] c"0 < n && n <= bytes_per_block\00", align 1
@__PRETTY_FUNCTION__.read_block = private unnamed_addr constant [43 x i8] c"_Bool read_block(size_t, char *, size_t *)\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"s != NULL\00", align 1
@__PRETTY_FUNCTION__.decode_format_string = private unnamed_addr constant [41 x i8] c"_Bool decode_format_string(const char *)\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"tspec != NULL\00", align 1
@__PRETTY_FUNCTION__.decode_one_format = private unnamed_addr constant [83 x i8] c"_Bool decode_one_format(const char *, const char *, const char **, struct tspec *)\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"invalid type string %s\00", align 1
@.str.80 = private unnamed_addr constant [77 x i8] c"invalid type string %s;\0Athis system doesn't provide a %lu-byte integral type\00", align 1
@bytes_to_signed_dec_digits = internal unnamed_addr constant [17 x i32] [i32 1, i32 4, i32 6, i32 8, i32 11, i32 13, i32 16, i32 18, i32 20, i32 23, i32 25, i32 28, i32 30, i32 33, i32 35, i32 37, i32 40], align 16
@.str.82 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"%%*%s\00", align 1
@bytes_to_oct_digits = internal unnamed_addr constant [17 x i32] [i32 0, i32 3, i32 6, i32 8, i32 11, i32 14, i32 16, i32 19, i32 22, i32 25, i32 27, i32 30, i32 32, i32 35, i32 38, i32 41, i32 43], align 16
@.str.85 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"%%*.%d%s\00", align 1
@bytes_to_unsigned_dec_digits = internal unnamed_addr constant [17 x i32] [i32 0, i32 3, i32 5, i32 8, i32 10, i32 13, i32 15, i32 17, i32 20, i32 22, i32 25, i32 27, i32 29, i32 32, i32 34, i32 37, i32 39], align 16
@.str.87 = private unnamed_addr constant [3 x i8] c"lu\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@bytes_to_hex_digits = internal unnamed_addr constant [17 x i32] [i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32], align 16
@.str.89 = private unnamed_addr constant [3 x i8] c"lx\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.91 = private unnamed_addr constant [49 x i8] c"strlen (tspec->fmt_string) < FMT_BYTES_ALLOCATED\00", align 1
@.str.92 = private unnamed_addr constant [83 x i8] c"invalid type string %s;\0Athis system doesn't provide a %lu-byte floating point type\00", align 1
@switch.table = private unnamed_addr constant [3 x i64] [i64 14, i64 23, i64 28]
@switch.table.118 = private unnamed_addr constant [3 x void (i64, i64, i8*, i8*, i32, i32)*] [void (i64, i64, i8*, i8*, i32, i32)* @print_float, void (i64, i64, i8*, i8*, i32, i32)* @print_double, void (i64, i64, i8*, i8*, i32, i32)* @print_long_double]
@.str.93 = private unnamed_addr constant [41 x i8] c"invalid character '%c' in type string %s\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"s != next\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"%03o\00", align 1
@switch.table.119 = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0)]
@.str.96 = private unnamed_addr constant [3 x i8] c"\5C0\00", align 1
@charname = internal constant [33 x [4 x i8]] [[4 x i8] c"nul\00", [4 x i8] c"soh\00", [4 x i8] c"stx\00", [4 x i8] c"etx\00", [4 x i8] c"eot\00", [4 x i8] c"enq\00", [4 x i8] c"ack\00", [4 x i8] c"bel\00", [4 x i8] c"bs\00\00", [4 x i8] c"ht\00\00", [4 x i8] c"nl\00\00", [4 x i8] c"vt\00\00", [4 x i8] c"ff\00\00", [4 x i8] c"cr\00\00", [4 x i8] c"so\00\00", [4 x i8] c"si\00\00", [4 x i8] c"dle\00", [4 x i8] c"dc1\00", [4 x i8] c"dc2\00", [4 x i8] c"dc3\00", [4 x i8] c"dc4\00", [4 x i8] c"nak\00", [4 x i8] c"syn\00", [4 x i8] c"etb\00", [4 x i8] c"can\00", [4 x i8] c"em\00\00", [4 x i8] c"sub\00", [4 x i8] c"esc\00", [4 x i8] c"fs\00\00", [4 x i8] c"gs\00\00", [4 x i8] c"rs\00\00", [4 x i8] c"us\00\00", [4 x i8] c"sp\00\00"], align 16
@.str.95 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"skip-bytes\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"address-radix\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"read-bytes\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"output-duplicates\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"endian\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.48 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.49 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.50 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.51 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.52 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.133 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.134 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.135 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.137, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.138, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.139, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.140, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.141, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.142, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.144, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.145, i32 0, i32 0), i8* null], align 16
@.str.136 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.137 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.138 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.139 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.140 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.141 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.142 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.143 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.144 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.145 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.146 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.147 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.148 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.149 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.150 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.151 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.152 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.163 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.164 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.165 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.166 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.167 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.168 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.169 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.170 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.171 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.172 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.173 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.174 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.175 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.176 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.179 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.180 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.181 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.182 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.183 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.184 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.1.197 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.201 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@switch.table.204 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.206, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.207, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.207, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.208, i64 0, i64 0)]
@.str.205 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3.206 = private unnamed_addr constant [29 x i8] c"%s%s argument '%s' too large\00", align 1
@.str.2.207 = private unnamed_addr constant [37 x i8] c"invalid suffix in %s%s argument '%s'\00", align 1
@.str.1.208 = private unnamed_addr constant [27 x i8] c"invalid %s%s argument '%s'\00", align 1
@.str.211 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.212 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.1.227 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.230 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.231 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.232 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.233 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.234 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.235 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.236 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #12
  br label %72

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.1, i64 0, i64 0), i32 5) #12
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #12
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.2, i64 0, i64 0), i32 5) #12
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i32 5) #12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #12
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([391 x i8], [391 x i8]* @.str.3, i64 0, i64 0), i32 5) #12
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #12
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.47, i64 0, i64 0), i32 5) #12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([287 x i8], [287 x i8]* @.str.4, i64 0, i64 0), i32 5) #12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #12
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([552 x i8], [552 x i8]* @.str.5, i64 0, i64 0), i32 5) #12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #12
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #12
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([315 x i8], [315 x i8]* @.str.8, i64 0, i64 0), i32 5) #12
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #12
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.9, i64 0, i64 0), i32 5) #12
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #12
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([166 x i8], [166 x i8]* @.str.10, i64 0, i64 0), i32 5) #12
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #12
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.11, i64 0, i64 0), i32 5) #12
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([244 x i8], [244 x i8]* @.str.12, i64 0, i64 0), i32 5) #12
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.13, i64 0, i64 0), i32 5) #12
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #12
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.14, i64 0, i64 0), i32 5) #12
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = tail call i32 @fputs_unlocked(i8* %54, %struct._IO_FILE* %55) #12
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i32 5) #12
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0)) #12
  %59 = tail call i8* @setlocale(i32 5, i8* null) #12
  %60 = icmp eq i8* %59, null
  br i1 %60, label %67, label %61

; <label>:61:                                     ; preds = %8
  %62 = tail call i32 @strncmp(i8* nonnull %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #14
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

; <label>:64:                                     ; preds = %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.59, i64 0, i64 0), i32 5) #12
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #12
  br label %67

; <label>:67:                                     ; preds = %8, %61, %64
  %68 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i32 5) #12
  %69 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %68, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #12
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0), i32 5) #12
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0)) #12
  br label %72

; <label>:72:                                     ; preds = %67, %3
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
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %13) #12
  %14 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #12
  %15 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #12
  %16 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #12
  %17 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12
  call void @llvm.memset.p0i8.i64(i8* bitcast ([9 x i32]* @integral_type_size to i8*), i8 0, i64 32, i32 16, i1 false)
  store i32 1, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 1), align 4
  store i32 2, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 2), align 8
  store i32 3, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 4), align 16
  store i32 5, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 8), align 16
  call void @llvm.memset.p0i8.i64(i8* bitcast ([17 x i32]* @fp_type_size to i8*), i8 0, i64 64, i32 16, i1 false)
  store i32 6, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @fp_type_size, i64 0, i64 4), align 16
  store i32 8, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @fp_type_size, i64 0, i64 16), align 16
  store i32 7, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @fp_type_size, i64 0, i64 8), align 16
  store i64 0, i64* @n_specs, align 8
  store i64 0, i64* @n_specs_allocated, align 8
  store %struct.tspec* null, %struct.tspec** @spec, align 8
  store void (i64, i8)* @format_address_std, void (i64, i8)** @format_address, align 8
  store i32 8, i32* @address_base, align 4
  store i32 7, i32* @address_pad_len, align 4
  store i1 false, i1* @flag_dump_strings, align 1
  %18 = bitcast i64* %8 to i8*
  %19 = bitcast i32* %9 to i8*
  %20 = bitcast i64* %10 to i8*
  br label %21

; <label>:21:                                     ; preds = %157, %2
  %22 = phi i8 [ 0, %2 ], [ %158, %157 ]
  %23 = phi i8 [ 0, %2 ], [ %159, %157 ]
  %24 = phi i8 [ 1, %2 ], [ %160, %157 ]
  %25 = phi i64 [ undef, %2 ], [ %161, %157 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #12
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #12
  store i32 -1, i32* %9, align 4
  %26 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i32* nonnull %9) #12
  switch i32 %26, label %156 [
    i32 -1, label %162
    i32 65, label %27
    i32 106, label %42
    i32 78, label %49
    i32 83, label %56
    i32 116, label %69
    i32 118, label %74
    i32 128, label %75
    i32 129, label %76
    i32 97, label %85
    i32 98, label %89
    i32 99, label %93
    i32 68, label %97
    i32 100, label %101
    i32 70, label %105
    i32 101, label %105
    i32 102, label %109
    i32 88, label %113
    i32 72, label %113
    i32 105, label %117
    i32 73, label %121
    i32 76, label %121
    i32 108, label %121
    i32 79, label %125
    i32 66, label %129
    i32 111, label %129
    i32 115, label %133
    i32 104, label %137
    i32 120, label %137
    i32 119, label %141
    i32 -130, label %152
    i32 -131, label %153
  ]

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** @optarg, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %35 [
    i32 100, label %31
    i32 111, label %32
    i32 120, label %33
    i32 110, label %34
  ]

; <label>:31:                                     ; preds = %27
  store void (i64, i8)* @format_address_std, void (i64, i8)** @format_address, align 8
  store i32 10, i32* @address_base, align 4
  br label %40

; <label>:32:                                     ; preds = %27
  store void (i64, i8)* @format_address_std, void (i64, i8)** @format_address, align 8
  store i32 8, i32* @address_base, align 4
  br label %40

; <label>:33:                                     ; preds = %27
  store void (i64, i8)* @format_address_std, void (i64, i8)** @format_address, align 8
  store i32 16, i32* @address_base, align 4
  br label %40

; <label>:34:                                     ; preds = %27
  store void (i64, i8)* @format_address_none, void (i64, i8)** @format_address, align 8
  br label %40

; <label>:35:                                     ; preds = %27
  %36 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i32 5) #12
  %37 = load i8*, i8** @optarg, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %36, i32 %39) #12
  unreachable

; <label>:40:                                     ; preds = %34, %33, %32, %31
  %41 = phi i32 [ 0, %34 ], [ 6, %33 ], [ 7, %32 ], [ 7, %31 ]
  store i32 %41, i32* @address_pad_len, align 4
  br label %157

; <label>:42:                                     ; preds = %21
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i32 @xstrtoumax(i8* %43, i8** null, i32 0, i64* nonnull @n_bytes_to_skip, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0)) #12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %157, label %46

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %44, i32 %47, i8 signext 106, %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i8* %48) #15
  unreachable

; <label>:49:                                     ; preds = %21
  store i1 true, i1* @limit_bytes_to_format, align 1
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @xstrtoumax(i8* %50, i8** null, i32 0, i64* nonnull @max_bytes_to_format, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0)) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %157, label %53

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %51, i32 %54, i8 signext 78, %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i8* %55) #15
  unreachable

; <label>:56:                                     ; preds = %21
  %57 = load i8*, i8** @optarg, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %67, label %59

; <label>:59:                                     ; preds = %56
  %60 = call i32 @xstrtoumax(i8* nonnull %57, i8** null, i32 0, i64* nonnull %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @main.multipliers, i64 0, i64 0)) #12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

; <label>:62:                                     ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %60, i32 %63, i8 signext 83, %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i8* %64) #15
  unreachable

; <label>:65:                                     ; preds = %59
  %66 = load i64, i64* %8, align 8
  br label %67

; <label>:67:                                     ; preds = %56, %65
  %68 = phi i64 [ %66, %65 ], [ 3, %56 ]
  store i64 %68, i64* @string_min, align 8
  store i1 true, i1* @flag_dump_strings, align 1
  br label %157

; <label>:69:                                     ; preds = %21
  %70 = load i8*, i8** @optarg, align 8
  %71 = call fastcc zeroext i1 @decode_format_string(i8* %70)
  %72 = zext i1 %71 to i8
  %73 = and i8 %72, %24
  br label %157

; <label>:74:                                     ; preds = %21
  store i1 true, i1* @abbreviate_duplicate_blocks, align 1
  br label %157

; <label>:75:                                     ; preds = %21
  store i1 true, i1* @traditional, align 1
  br label %157

; <label>:76:                                     ; preds = %21
  %77 = load i8*, i8** @optarg, align 8
  %78 = load void ()*, void ()** @argmatch_die, align 8
  %79 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* %77, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @endian_args, i64 0, i64 0), i8* bitcast ([2 x i32]* @endian_types to i8*), i64 4, void ()* %78) #12
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* @endian_types, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %157 [
    i32 1, label %82
    i32 0, label %83
  ]

; <label>:82:                                     ; preds = %76
  br label %83

; <label>:83:                                     ; preds = %76, %82
  %84 = phi i8 [ 1, %82 ], [ 0, %76 ]
  store i8 %84, i8* @input_swap, align 1
  br label %157

; <label>:85:                                     ; preds = %21
  %86 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %87 = zext i1 %86 to i8
  %88 = and i8 %87, %24
  br label %157

; <label>:89:                                     ; preds = %21
  %90 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %91 = zext i1 %90 to i8
  %92 = and i8 %91, %24
  br label %157

; <label>:93:                                     ; preds = %21
  %94 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %95 = zext i1 %94 to i8
  %96 = and i8 %95, %24
  br label %157

; <label>:97:                                     ; preds = %21
  %98 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  %99 = zext i1 %98 to i8
  %100 = and i8 %99, %24
  br label %157

; <label>:101:                                    ; preds = %21
  %102 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  %103 = zext i1 %102 to i8
  %104 = and i8 %103, %24
  br label %157

; <label>:105:                                    ; preds = %21, %21
  %106 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %107 = zext i1 %106 to i8
  %108 = and i8 %107, %24
  br label %157

; <label>:109:                                    ; preds = %21
  %110 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %111 = zext i1 %110 to i8
  %112 = and i8 %111, %24
  br label %157

; <label>:113:                                    ; preds = %21, %21
  %114 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0))
  %115 = zext i1 %114 to i8
  %116 = and i8 %115, %24
  br label %157

; <label>:117:                                    ; preds = %21
  %118 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %119 = zext i1 %118 to i8
  %120 = and i8 %119, %24
  br label %157

; <label>:121:                                    ; preds = %21, %21, %21
  %122 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0))
  %123 = zext i1 %122 to i8
  %124 = and i8 %123, %24
  br label %157

; <label>:125:                                    ; preds = %21
  %126 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0))
  %127 = zext i1 %126 to i8
  %128 = and i8 %127, %24
  br label %157

; <label>:129:                                    ; preds = %21, %21
  %130 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  %131 = zext i1 %130 to i8
  %132 = and i8 %131, %24
  br label %157

; <label>:133:                                    ; preds = %21
  %134 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %135 = zext i1 %134 to i8
  %136 = and i8 %135, %24
  br label %157

; <label>:137:                                    ; preds = %21, %21
  %138 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  %139 = zext i1 %138 to i8
  %140 = and i8 %139, %24
  br label %157

; <label>:141:                                    ; preds = %21
  %142 = load i8*, i8** @optarg, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %157, label %144

; <label>:144:                                    ; preds = %141
  call void @llvm.lifetime.start(i64 8, i8* nonnull %20) #12
  %145 = call i32 @xstrtoumax(i8* nonnull %142, i8** null, i32 10, i64* nonnull %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

; <label>:147:                                    ; preds = %144
  %148 = load i32, i32* %9, align 4
  %149 = load i8*, i8** @optarg, align 8
  call void @xstrtol_fatal(i32 %145, i32 %148, i8 signext 119, %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @long_options, i64 0, i64 0), i8* %149) #15
  unreachable

; <label>:150:                                    ; preds = %144
  %151 = load i64, i64* %10, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %20) #12
  br label %157

; <label>:152:                                    ; preds = %21
  call void @usage(i32 0) #16
  unreachable

; <label>:153:                                    ; preds = %21
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %155 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* null) #12
  call void @exit(i32 0) #15
  unreachable

; <label>:156:                                    ; preds = %21
  call void @usage(i32 1) #16
  unreachable

; <label>:157:                                    ; preds = %141, %42, %49, %150, %76, %83, %137, %133, %129, %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %75, %74, %69, %67, %40
  %158 = phi i8 [ 1, %141 ], [ 1, %40 ], [ 1, %42 ], [ 1, %49 ], [ 1, %67 ], [ 1, %69 ], [ 1, %74 ], [ %22, %75 ], [ %22, %83 ], [ %22, %76 ], [ %22, %85 ], [ %22, %89 ], [ %22, %93 ], [ %22, %97 ], [ %22, %101 ], [ %22, %105 ], [ %22, %109 ], [ %22, %113 ], [ %22, %117 ], [ %22, %121 ], [ %22, %125 ], [ %22, %129 ], [ %22, %133 ], [ %22, %137 ], [ 1, %150 ]
  %159 = phi i8 [ 1, %141 ], [ %23, %40 ], [ %23, %42 ], [ %23, %49 ], [ %23, %67 ], [ %23, %69 ], [ %23, %74 ], [ %23, %75 ], [ %23, %83 ], [ %23, %76 ], [ %23, %85 ], [ %23, %89 ], [ %23, %93 ], [ %23, %97 ], [ %23, %101 ], [ %23, %105 ], [ %23, %109 ], [ %23, %113 ], [ %23, %117 ], [ %23, %121 ], [ %23, %125 ], [ %23, %129 ], [ %23, %133 ], [ %23, %137 ], [ 1, %150 ]
  %160 = phi i8 [ %24, %141 ], [ %24, %40 ], [ %24, %42 ], [ %24, %49 ], [ %24, %67 ], [ %73, %69 ], [ %24, %74 ], [ %24, %75 ], [ %24, %83 ], [ %24, %76 ], [ %88, %85 ], [ %92, %89 ], [ %96, %93 ], [ %100, %97 ], [ %104, %101 ], [ %108, %105 ], [ %112, %109 ], [ %116, %113 ], [ %120, %117 ], [ %124, %121 ], [ %128, %125 ], [ %132, %129 ], [ %136, %133 ], [ %140, %137 ], [ %24, %150 ]
  %161 = phi i64 [ 32, %141 ], [ %25, %40 ], [ %25, %42 ], [ %25, %49 ], [ %25, %67 ], [ %25, %69 ], [ %25, %74 ], [ %25, %75 ], [ %25, %83 ], [ %25, %76 ], [ %25, %85 ], [ %25, %89 ], [ %25, %93 ], [ %25, %97 ], [ %25, %101 ], [ %25, %105 ], [ %25, %109 ], [ %25, %113 ], [ %25, %117 ], [ %25, %121 ], [ %25, %125 ], [ %25, %129 ], [ %25, %133 ], [ %25, %137 ], [ %151, %150 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12
  br label %21

; <label>:162:                                    ; preds = %21
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #12
  %163 = and i8 %24, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %1036, label %165

; <label>:165:                                    ; preds = %162
  %166 = load i1, i1* @flag_dump_strings, align 1
  %167 = load i64, i64* @n_specs, align 8
  %168 = icmp ne i64 %167, 0
  %169 = and i1 %166, %168
  br i1 %169, label %170, label %172

; <label>:170:                                    ; preds = %165
  %171 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %171) #12
  unreachable

; <label>:172:                                    ; preds = %165
  %173 = load i32, i32* @optind, align 4
  %174 = sub nsw i32 %0, %173
  %175 = and i8 %22, 1
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %179, label %177

; <label>:177:                                    ; preds = %172
  %178 = load i1, i1* @traditional, align 1
  br i1 %178, label %179, label %365

; <label>:179:                                    ; preds = %172, %177
  %180 = bitcast i64* %11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %180) #12
  %181 = bitcast i64* %12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %181) #12
  switch i32 %174, label %347 [
    i32 1, label %182
    i32 2, label %211
    i32 3, label %285
  ]

; <label>:182:                                    ; preds = %179
  %183 = load i1, i1* @traditional, align 1
  %184 = sext i32 %173 to i64
  %185 = getelementptr inbounds i8*, i8** %1, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = load i8, i8* %186, align 1
  br i1 %183, label %190, label %188

; <label>:188:                                    ; preds = %182
  %189 = icmp eq i8 %187, 43
  br i1 %189, label %191, label %361

; <label>:190:                                    ; preds = %182
  switch i8 %187, label %193 [
    i8 0, label %361
    i8 43, label %191
  ]

; <label>:191:                                    ; preds = %188, %190
  %192 = getelementptr inbounds i8, i8* %186, i64 1
  br label %193

; <label>:193:                                    ; preds = %191, %190
  %194 = phi i8* [ %192, %191 ], [ %186, %190 ]
  %195 = call i8* @strchr(i8* %194, i32 46) #12
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %204

; <label>:197:                                    ; preds = %193
  %198 = load i8, i8* %194, align 1
  %199 = icmp eq i8 %198, 48
  br i1 %199, label %200, label %203

; <label>:200:                                    ; preds = %197
  %201 = getelementptr inbounds i8, i8* %194, i64 1
  %202 = load i8, i8* %201, align 1
  switch i8 %202, label %203 [
    i8 120, label %204
    i8 88, label %204
  ]

; <label>:203:                                    ; preds = %200, %197
  br label %204

; <label>:204:                                    ; preds = %193, %200, %200, %203
  %205 = phi i32 [ 8, %203 ], [ 10, %193 ], [ 16, %200 ], [ 16, %200 ]
  %206 = call i32 @xstrtoumax(i8* %194, i8** null, i32 %205, i64* nonnull %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #12
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %361

; <label>:208:                                    ; preds = %204
  %209 = load i64, i64* %11, align 8
  store i64 %209, i64* @n_bytes_to_skip, align 8
  %210 = getelementptr inbounds i8*, i8** %1, i64 1
  br label %361

; <label>:211:                                    ; preds = %179
  %212 = load i1, i1* @traditional, align 1
  %213 = add nsw i32 %173, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %1, i64 %214
  br i1 %212, label %224, label %216

; <label>:216:                                    ; preds = %211
  %217 = load i8*, i8** %215, align 8
  %218 = load i8, i8* %217, align 1
  %219 = icmp eq i8 %218, 43
  br i1 %219, label %224, label %220

; <label>:220:                                    ; preds = %216
  %221 = sext i8 %218 to i32
  %222 = add nsw i32 %221, -48
  %223 = icmp ult i32 %222, 10
  br i1 %223, label %224, label %347

; <label>:224:                                    ; preds = %211, %220, %216
  %225 = load i8*, i8** %215, align 8
  %226 = load i8, i8* %225, align 1
  switch i8 %226, label %229 [
    i8 0, label %347
    i8 43, label %227
  ]

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds i8, i8* %225, i64 1
  br label %229

; <label>:229:                                    ; preds = %227, %224
  %230 = phi i8* [ %228, %227 ], [ %225, %224 ]
  %231 = call i8* @strchr(i8* %230, i32 46) #12
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %240

; <label>:233:                                    ; preds = %229
  %234 = load i8, i8* %230, align 1
  %235 = icmp eq i8 %234, 48
  br i1 %235, label %236, label %239

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %230, i64 1
  %238 = load i8, i8* %237, align 1
  switch i8 %238, label %239 [
    i8 120, label %240
    i8 88, label %240
  ]

; <label>:239:                                    ; preds = %236, %233
  br label %240

; <label>:240:                                    ; preds = %229, %236, %236, %239
  %241 = phi i32 [ 8, %239 ], [ 10, %229 ], [ 16, %236 ], [ 16, %236 ]
  %242 = call i32 @xstrtoumax(i8* %230, i8** null, i32 %241, i64* nonnull %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #12
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %347

; <label>:244:                                    ; preds = %240
  %245 = load i1, i1* @traditional, align 1
  br i1 %245, label %246, label %273

; <label>:246:                                    ; preds = %244
  %247 = load i32, i32* @optind, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %1, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load i8, i8* %250, align 1
  switch i8 %251, label %254 [
    i8 0, label %273
    i8 43, label %252
  ]

; <label>:252:                                    ; preds = %246
  %253 = getelementptr inbounds i8, i8* %250, i64 1
  br label %254

; <label>:254:                                    ; preds = %252, %246
  %255 = phi i8* [ %253, %252 ], [ %250, %246 ]
  %256 = call i8* @strchr(i8* %255, i32 46) #12
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %265

; <label>:258:                                    ; preds = %254
  %259 = load i8, i8* %255, align 1
  %260 = icmp eq i8 %259, 48
  br i1 %260, label %261, label %264

; <label>:261:                                    ; preds = %258
  %262 = getelementptr inbounds i8, i8* %255, i64 1
  %263 = load i8, i8* %262, align 1
  switch i8 %263, label %264 [
    i8 120, label %265
    i8 88, label %265
  ]

; <label>:264:                                    ; preds = %261, %258
  br label %265

; <label>:265:                                    ; preds = %254, %261, %261, %264
  %266 = phi i32 [ 8, %264 ], [ 10, %254 ], [ 16, %261 ], [ 16, %261 ]
  %267 = call i32 @xstrtoumax(i8* %255, i8** null, i32 %266, i64* nonnull %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #12
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273

; <label>:269:                                    ; preds = %265
  %270 = load i64, i64* %11, align 8
  store i64 %270, i64* @n_bytes_to_skip, align 8
  store i1 true, i1* @flag_pseudo_start, align 1
  %271 = load i64, i64* %12, align 8
  %272 = getelementptr inbounds i8*, i8** %1, i64 2
  br label %361

; <label>:273:                                    ; preds = %246, %265, %244
  %274 = load i64, i64* %12, align 8
  store i64 %274, i64* @n_bytes_to_skip, align 8
  %275 = load i32, i32* @optind, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %1, i64 %276
  %278 = bitcast i8** %277 to i64*
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i32 %275, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %1, i64 %281
  %283 = bitcast i8** %282 to i64*
  store i64 %279, i64* %283, align 8
  %284 = getelementptr inbounds i8*, i8** %1, i64 1
  br label %361

; <label>:285:                                    ; preds = %179
  %286 = load i1, i1* @traditional, align 1
  br i1 %286, label %287, label %347

; <label>:287:                                    ; preds = %285
  %288 = add nsw i32 %173, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %1, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = load i8, i8* %291, align 1
  switch i8 %292, label %295 [
    i8 0, label %347
    i8 43, label %293
  ]

; <label>:293:                                    ; preds = %287
  %294 = getelementptr inbounds i8, i8* %291, i64 1
  br label %295

; <label>:295:                                    ; preds = %293, %287
  %296 = phi i8* [ %294, %293 ], [ %291, %287 ]
  %297 = call i8* @strchr(i8* %296, i32 46) #12
  %298 = icmp eq i8* %297, null
  br i1 %298, label %299, label %306

; <label>:299:                                    ; preds = %295
  %300 = load i8, i8* %296, align 1
  %301 = icmp eq i8 %300, 48
  br i1 %301, label %302, label %305

; <label>:302:                                    ; preds = %299
  %303 = getelementptr inbounds i8, i8* %296, i64 1
  %304 = load i8, i8* %303, align 1
  switch i8 %304, label %305 [
    i8 120, label %306
    i8 88, label %306
  ]

; <label>:305:                                    ; preds = %302, %299
  br label %306

; <label>:306:                                    ; preds = %295, %302, %302, %305
  %307 = phi i32 [ 8, %305 ], [ 10, %295 ], [ 16, %302 ], [ 16, %302 ]
  %308 = call i32 @xstrtoumax(i8* %296, i8** null, i32 %307, i64* nonnull %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #12
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %347

; <label>:310:                                    ; preds = %306
  %311 = load i32, i32* @optind, align 4
  %312 = add nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %1, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = load i8, i8* %315, align 1
  switch i8 %316, label %319 [
    i8 0, label %347
    i8 43, label %317
  ]

; <label>:317:                                    ; preds = %310
  %318 = getelementptr inbounds i8, i8* %315, i64 1
  br label %319

; <label>:319:                                    ; preds = %317, %310
  %320 = phi i8* [ %318, %317 ], [ %315, %310 ]
  %321 = call i8* @strchr(i8* %320, i32 46) #12
  %322 = icmp eq i8* %321, null
  br i1 %322, label %323, label %330

; <label>:323:                                    ; preds = %319
  %324 = load i8, i8* %320, align 1
  %325 = icmp eq i8 %324, 48
  br i1 %325, label %326, label %329

; <label>:326:                                    ; preds = %323
  %327 = getelementptr inbounds i8, i8* %320, i64 1
  %328 = load i8, i8* %327, align 1
  switch i8 %328, label %329 [
    i8 120, label %330
    i8 88, label %330
  ]

; <label>:329:                                    ; preds = %326, %323
  br label %330

; <label>:330:                                    ; preds = %319, %326, %326, %329
  %331 = phi i32 [ 8, %329 ], [ 10, %319 ], [ 16, %326 ], [ 16, %326 ]
  %332 = call i32 @xstrtoumax(i8* %320, i8** null, i32 %331, i64* nonnull %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0)) #12
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %347

; <label>:334:                                    ; preds = %330
  %335 = load i64, i64* %11, align 8
  store i64 %335, i64* @n_bytes_to_skip, align 8
  store i1 true, i1* @flag_pseudo_start, align 1
  %336 = load i64, i64* %12, align 8
  %337 = load i32, i32* @optind, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %1, i64 %338
  %340 = bitcast i8** %339 to i64*
  %341 = load i64, i64* %340, align 8
  %342 = add nsw i32 %337, 2
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8*, i8** %1, i64 %343
  %345 = bitcast i8** %344 to i64*
  store i64 %341, i64* %345, align 8
  %346 = getelementptr inbounds i8*, i8** %1, i64 2
  br label %361

; <label>:347:                                    ; preds = %310, %287, %224, %285, %306, %330, %220, %240, %179
  %348 = phi i32 [ %174, %179 ], [ 3, %330 ], [ 3, %306 ], [ 3, %285 ], [ 2, %240 ], [ 2, %220 ], [ 2, %224 ], [ 3, %287 ], [ 3, %310 ]
  %349 = load i1, i1* @traditional, align 1
  %350 = icmp sgt i32 %348, 1
  %351 = and i1 %350, %349
  br i1 %351, label %352, label %361

; <label>:352:                                    ; preds = %347
  %353 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), i32 5) #12
  %354 = load i32, i32* @optind, align 4
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %1, i64 %356
  %358 = load i8*, i8** %357, align 8
  %359 = call i8* @quote(i8* %358) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %353, i8* %359) #12
  %360 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.41, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %360) #12
  call void @usage(i32 1) #16
  unreachable

; <label>:361:                                    ; preds = %204, %208, %273, %269, %334, %190, %188, %347
  %362 = phi i8** [ %1, %347 ], [ %1, %188 ], [ %1, %190 ], [ %1, %204 ], [ %210, %208 ], [ %284, %273 ], [ %272, %269 ], [ %346, %334 ]
  %363 = phi i32 [ %348, %347 ], [ 1, %188 ], [ 1, %190 ], [ 1, %204 ], [ 0, %208 ], [ 1, %273 ], [ 0, %269 ], [ 1, %334 ]
  %364 = phi i64 [ undef, %347 ], [ undef, %188 ], [ undef, %190 ], [ undef, %204 ], [ undef, %208 ], [ undef, %273 ], [ %271, %269 ], [ %336, %334 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %181) #12
  call void @llvm.lifetime.end(i64 8, i8* nonnull %180) #12
  br label %365

; <label>:365:                                    ; preds = %361, %177
  %366 = phi i64 [ %364, %361 ], [ undef, %177 ]
  %367 = phi i32 [ %363, %361 ], [ %174, %177 ]
  %368 = phi i8** [ %362, %361 ], [ %1, %177 ]
  %369 = load i1, i1* @flag_pseudo_start, align 1
  br i1 %369, label %370, label %376

; <label>:370:                                    ; preds = %365
  %371 = load void (i64, i8)*, void (i64, i8)** @format_address, align 8
  %372 = icmp eq void (i64, i8)* %371, @format_address_none
  br i1 %372, label %373, label %374

; <label>:373:                                    ; preds = %370
  store i32 8, i32* @address_base, align 4
  store i32 7, i32* @address_pad_len, align 4
  br label %374

; <label>:374:                                    ; preds = %370, %373
  %375 = phi void (i64, i8)* [ @format_address_paren, %373 ], [ @format_address_label, %370 ]
  store void (i64, i8)* %375, void (i64, i8)** @format_address, align 8
  br label %376

; <label>:376:                                    ; preds = %374, %365
  %377 = load i1, i1* @limit_bytes_to_format, align 1
  br i1 %377, label %378, label %385

; <label>:378:                                    ; preds = %376
  %379 = load i64, i64* @n_bytes_to_skip, align 8
  %380 = load i64, i64* @max_bytes_to_format, align 8
  %381 = add i64 %380, %379
  store i64 %381, i64* @end_offset, align 8
  %382 = icmp ult i64 %381, %379
  br i1 %382, label %383, label %385

; <label>:383:                                    ; preds = %378
  %384 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %384) #12
  unreachable

; <label>:385:                                    ; preds = %378, %376
  %386 = load i64, i64* @n_specs, align 8
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %390

; <label>:388:                                    ; preds = %385
  %389 = call fastcc zeroext i1 @decode_format_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  br label %390

; <label>:390:                                    ; preds = %388, %385
  %391 = icmp sgt i32 %367, 0
  %392 = load i32, i32* @optind, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8*, i8** %368, i64 %393
  %395 = select i1 %391, i8** %394, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @default_file_list, i64 0, i64 0)
  store i8** %395, i8*** @file_list, align 8
  %396 = call fastcc zeroext i1 @open_next_file()
  %397 = zext i1 %396 to i32
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %399 = icmp eq %struct._IO_FILE* %398, null
  br i1 %399, label %1023, label %400

; <label>:400:                                    ; preds = %390
  %401 = load i64, i64* @n_bytes_to_skip, align 8
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %515, label %403

; <label>:403:                                    ; preds = %400
  %404 = bitcast %struct.stat* %6 to i8*
  %405 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 3
  %406 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %407 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 9
  %408 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 8
  br label %409

; <label>:409:                                    ; preds = %486, %403
  %410 = phi %struct._IO_FILE* [ %496, %486 ], [ %398, %403 ]
  %411 = phi i64 [ %487, %486 ], [ %401, %403 ]
  %412 = phi i8 [ %495, %486 ], [ 1, %403 ]
  %413 = phi i32 [ %489, %486 ], [ 0, %403 ]
  call void @llvm.lifetime.start(i64 144, i8* nonnull %404) #12
  %414 = call i32 @fileno(%struct._IO_FILE* nonnull %410) #12
  %415 = call i32 @__fxstat(i32 1, i32 %414, %struct.stat* nonnull %6) #12
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %481

; <label>:417:                                    ; preds = %409
  %418 = load i32, i32* %405, align 8
  %419 = trunc i32 %418 to i16
  %420 = and i16 %419, -4096
  switch i16 %420, label %438 [
    i16 -32768, label %421
    i16 -24576, label %421
  ]

; <label>:421:                                    ; preds = %417, %417
  %422 = load i64, i64* %407, align 8
  %423 = icmp sgt i64 %422, 0
  %424 = icmp ult i64 %422, 2305843009213693953
  %425 = and i1 %423, %424
  %426 = select i1 %425, i64 %422, i64 512
  %427 = load i64, i64* %408, align 8
  %428 = icmp slt i64 %426, %427
  br i1 %428, label %429, label %438

; <label>:429:                                    ; preds = %421
  %430 = icmp ugt i64 %411, %427
  br i1 %430, label %431, label %433

; <label>:431:                                    ; preds = %429
  %432 = sub i64 %411, %427
  br label %476

; <label>:433:                                    ; preds = %429
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %435 = call i32 @rpl_fseeko(%struct._IO_FILE* %434, i64 %411, i32 1) #12
  %436 = icmp eq i32 %435, 0
  %437 = select i1 %436, i8 %412, i8 0
  br label %507

; <label>:438:                                    ; preds = %421, %417
  call void @llvm.lifetime.start(i64 8192, i8* nonnull %406) #12
  %439 = icmp eq i64 %411, 0
  br i1 %439, label %472, label %440

; <label>:440:                                    ; preds = %438
  br label %443

; <label>:441:                                    ; preds = %447
  %442 = icmp eq i64 %454, 0
  br i1 %442, label %471, label %443

; <label>:443:                                    ; preds = %440, %441
  %444 = phi i64 [ %452, %441 ], [ 8192, %440 ]
  %445 = phi i64 [ %454, %441 ], [ %411, %440 ]
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  br label %447

; <label>:447:                                    ; preds = %465, %443
  %448 = phi %struct._IO_FILE* [ %457, %465 ], [ %446, %443 ]
  %449 = phi i64 [ %454, %465 ], [ %445, %443 ]
  %450 = phi i64 [ %452, %465 ], [ %444, %443 ]
  %451 = icmp ult i64 %449, %450
  %452 = select i1 %451, i64 %449, i64 %450
  %453 = call i64 @fread_unlocked(i8* nonnull %406, i64 1, i64 %452, %struct._IO_FILE* %448) #12
  %454 = sub i64 %449, %453
  %455 = icmp eq i64 %453, %452
  br i1 %455, label %441, label %456

; <label>:456:                                    ; preds = %447
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %458 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %457, i64 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = and i32 %459, 32
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %465, label %462

; <label>:462:                                    ; preds = %456
  %463 = tail call i32* @__errno_location() #1
  %464 = load i32, i32* %463, align 4
  br label %472

; <label>:465:                                    ; preds = %456
  %466 = and i32 %459, 16
  %467 = icmp eq i32 %466, 0
  %468 = icmp ne i64 %454, 0
  %469 = and i1 %468, %467
  br i1 %469, label %447, label %470

; <label>:470:                                    ; preds = %465
  br label %472

; <label>:471:                                    ; preds = %441
  br label %472

; <label>:472:                                    ; preds = %471, %470, %462, %438
  %473 = phi i64 [ 0, %462 ], [ 0, %438 ], [ %454, %470 ], [ 0, %471 ]
  %474 = phi i8 [ 0, %462 ], [ %412, %438 ], [ %412, %470 ], [ %412, %471 ]
  %475 = phi i32 [ %464, %462 ], [ %413, %438 ], [ %413, %470 ], [ %413, %471 ]
  call void @llvm.lifetime.end(i64 8192, i8* nonnull %406) #12
  br label %476

; <label>:476:                                    ; preds = %472, %431
  %477 = phi i64 [ %432, %431 ], [ %473, %472 ]
  %478 = phi i8 [ %412, %431 ], [ %474, %472 ]
  %479 = phi i32 [ %413, %431 ], [ %475, %472 ]
  %480 = icmp eq i64 %477, 0
  br i1 %480, label %506, label %486

; <label>:481:                                    ; preds = %409
  %482 = tail call i32* @__errno_location() #1
  %483 = load i32, i32* %482, align 4
  %484 = load i8*, i8** @input_filename, align 8
  %485 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %484) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %485) #12
  br label %486

; <label>:486:                                    ; preds = %481, %476
  %487 = phi i64 [ %477, %476 ], [ %411, %481 ]
  %488 = phi i8 [ %478, %476 ], [ 0, %481 ]
  %489 = phi i32 [ %479, %476 ], [ %413, %481 ]
  %490 = call fastcc zeroext i1 @check_and_close(i32 %489) #12
  %491 = zext i1 %490 to i8
  %492 = and i8 %491, %488
  %493 = call fastcc zeroext i1 @open_next_file() #12
  %494 = zext i1 %493 to i8
  %495 = and i8 %492, %494
  call void @llvm.lifetime.end(i64 144, i8* nonnull %404) #12
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %497 = icmp eq %struct._IO_FILE* %496, null
  br i1 %497, label %498, label %409

; <label>:498:                                    ; preds = %486
  %499 = icmp eq i64 %487, 0
  br i1 %499, label %500, label %504

; <label>:500:                                    ; preds = %498
  %501 = icmp ne i8 %495, 0
  %502 = and i1 %396, %501
  %503 = zext i1 %502 to i32
  br label %1023

; <label>:504:                                    ; preds = %498
  %505 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %505) #12
  unreachable

; <label>:506:                                    ; preds = %476
  br label %507

; <label>:507:                                    ; preds = %506, %433
  %508 = phi i8 [ %437, %433 ], [ %478, %506 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %404) #12
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %510 = and i8 %508, 1
  %511 = icmp ne i8 %510, 0
  %512 = and i1 %396, %511
  %513 = zext i1 %512 to i32
  %514 = icmp eq %struct._IO_FILE* %509, null
  br i1 %514, label %1023, label %515

; <label>:515:                                    ; preds = %400, %507
  %516 = phi i1 [ %512, %507 ], [ %396, %400 ]
  %517 = load i1, i1* @flag_pseudo_start, align 1
  %518 = load i64, i64* @n_bytes_to_skip, align 8
  %519 = sub i64 %366, %518
  %520 = select i1 %517, i64 %519, i64 0
  store i64 %520, i64* @pseudo_offset, align 8
  %521 = load i64, i64* @n_specs, align 8
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %548, label %523

; <label>:523:                                    ; preds = %515
  %524 = load %struct.tspec*, %struct.tspec** @spec, align 8
  br label %525

; <label>:525:                                    ; preds = %541, %523
  %526 = phi i64 [ 1, %523 ], [ %543, %541 ]
  %527 = phi i64 [ 0, %523 ], [ %544, %541 ]
  %528 = shl i64 %526, 32
  %529 = ashr exact i64 %528, 32
  %530 = getelementptr inbounds %struct.tspec, %struct.tspec* %524, i64 %527, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds [9 x i32], [9 x i32]* @width_bytes, i64 0, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  br label %536

; <label>:536:                                    ; preds = %536, %525
  %537 = phi i64 [ %535, %525 ], [ %539, %536 ]
  %538 = phi i64 [ %529, %525 ], [ %537, %536 ]
  %539 = urem i64 %538, %537
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %536

; <label>:541:                                    ; preds = %536
  %542 = udiv i64 %535, %537
  %543 = mul i64 %542, %529
  %544 = add nuw i64 %527, 1
  %545 = icmp eq i64 %544, %521
  br i1 %545, label %546, label %525

; <label>:546:                                    ; preds = %541
  %547 = trunc i64 %543 to i32
  br label %548

; <label>:548:                                    ; preds = %515, %546
  %549 = phi i32 [ 1, %515 ], [ %547, %546 ]
  %550 = and i8 %23, 1
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %561, label %552

; <label>:552:                                    ; preds = %548
  %553 = icmp eq i64 %25, 0
  %554 = sext i32 %549 to i64
  br i1 %553, label %558, label %555

; <label>:555:                                    ; preds = %552
  %556 = urem i64 %25, %554
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %569, label %558

; <label>:558:                                    ; preds = %552, %555
  %559 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %559, i64 %25, i32 %549) #12
  %560 = load i64, i64* @n_specs, align 8
  br label %569

; <label>:561:                                    ; preds = %548
  %562 = icmp slt i32 %549, 16
  br i1 %562, label %563, label %566

; <label>:563:                                    ; preds = %561
  %564 = srem i32 16, %549
  %565 = sub nsw i32 16, %564
  br label %566

; <label>:566:                                    ; preds = %561, %563
  %567 = phi i32 [ %565, %563 ], [ %549, %561 ]
  %568 = sext i32 %567 to i64
  br label %569

; <label>:569:                                    ; preds = %555, %558, %566
  %570 = phi i64 [ %521, %566 ], [ %560, %558 ], [ %521, %555 ]
  %571 = phi i64 [ %568, %566 ], [ %554, %558 ], [ %25, %555 ]
  store i64 %571, i64* @bytes_per_block, align 8
  %572 = icmp eq i64 %570, 0
  br i1 %572, label %617, label %573

; <label>:573:                                    ; preds = %569
  %574 = load %struct.tspec*, %struct.tspec** @spec, align 8
  br label %577

; <label>:575:                                    ; preds = %577
  %576 = load %struct.tspec*, %struct.tspec** @spec, align 8
  br label %597

; <label>:577:                                    ; preds = %573, %577
  %578 = phi i64 [ 0, %573 ], [ %595, %577 ]
  %579 = phi i64 [ 0, %573 ], [ %594, %577 ]
  %580 = getelementptr inbounds %struct.tspec, %struct.tspec* %574, i64 %578, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds [9 x i32], [9 x i32]* @width_bytes, i64 0, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  %586 = udiv i64 %571, %585
  %587 = trunc i64 %586 to i32
  %588 = getelementptr inbounds %struct.tspec, %struct.tspec* %574, i64 %578, i32 5
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %589, 1
  %591 = mul nsw i32 %590, %587
  %592 = sext i32 %591 to i64
  %593 = icmp ult i64 %579, %592
  %594 = select i1 %593, i64 %592, i64 %579
  %595 = add nuw i64 %578, 1
  %596 = icmp ult i64 %595, %570
  br i1 %596, label %577, label %575

; <label>:597:                                    ; preds = %575, %597
  %598 = phi i64 [ 0, %575 ], [ %614, %597 ]
  %599 = getelementptr inbounds %struct.tspec, %struct.tspec* %576, i64 %598, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = zext i32 %600 to i64
  %602 = getelementptr inbounds [9 x i32], [9 x i32]* @width_bytes, i64 0, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  %605 = udiv i64 %571, %604
  %606 = trunc i64 %605 to i32
  %607 = getelementptr inbounds %struct.tspec, %struct.tspec* %576, i64 %598, i32 5
  %608 = load i32, i32* %607, align 4
  %609 = mul nsw i32 %608, %606
  %610 = zext i32 %609 to i64
  %611 = sub i64 %594, %610
  %612 = trunc i64 %611 to i32
  %613 = getelementptr inbounds %struct.tspec, %struct.tspec* %576, i64 %598, i32 6
  store i32 %612, i32* %613, align 8
  %614 = add nuw i64 %598, 1
  %615 = icmp ult i64 %614, %570
  br i1 %615, label %597, label %616

; <label>:616:                                    ; preds = %597
  br label %617

; <label>:617:                                    ; preds = %616, %569
  %618 = load i1, i1* @flag_dump_strings, align 1
  br i1 %618, label %619, label %860

; <label>:619:                                    ; preds = %617
  %620 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %620) #12
  %621 = load i64, i64* @string_min, align 8
  %622 = icmp ugt i64 %621, 100
  %623 = select i1 %622, i64 %621, i64 100
  store i64 %623, i64* %5, align 8
  %624 = call noalias i8* @xmalloc(i64 %623) #12
  %625 = load i64, i64* @n_bytes_to_skip, align 8
  br label %626

; <label>:626:                                    ; preds = %849, %619
  %627 = phi i8* [ %624, %619 ], [ %787, %849 ]
  %628 = phi i64 [ %625, %619 ], [ %788, %849 ]
  %629 = phi i8 [ 1, %619 ], [ %789, %849 ]
  br label %631

; <label>:630:                                    ; preds = %765
  br label %631

; <label>:631:                                    ; preds = %630, %626
  %632 = phi i8* [ %627, %626 ], [ %728, %630 ]
  %633 = phi i64 [ %628, %626 ], [ %758, %630 ]
  %634 = phi i8 [ %629, %626 ], [ %757, %630 ]
  br label %636

; <label>:635:                                    ; preds = %704
  br label %636

; <label>:636:                                    ; preds = %635, %631
  %637 = phi i64 [ %633, %631 ], [ %699, %635 ]
  %638 = phi i8 [ %634, %631 ], [ %698, %635 ]
  %639 = load i1, i1* @limit_bytes_to_format, align 1
  br i1 %639, label %642, label %640

; <label>:640:                                    ; preds = %636
  %641 = load i64, i64* @string_min, align 8
  br label %649

; <label>:642:                                    ; preds = %636
  %643 = load i64, i64* @end_offset, align 8
  %644 = load i64, i64* @string_min, align 8
  %645 = icmp uge i64 %643, %644
  %646 = sub i64 %643, %644
  %647 = icmp ugt i64 %646, %637
  %648 = and i1 %645, %647
  br i1 %648, label %649, label %852

; <label>:649:                                    ; preds = %642, %640
  %650 = phi i64 [ %641, %640 ], [ %644, %642 ]
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %655, label %652

; <label>:652:                                    ; preds = %649
  br label %666

; <label>:653:                                    ; preds = %712
  %654 = load i1, i1* @limit_bytes_to_format, align 1
  br label %656

; <label>:655:                                    ; preds = %649
  br label %656

; <label>:656:                                    ; preds = %655, %653
  %657 = phi i1 [ %654, %653 ], [ %639, %655 ]
  %658 = phi i64 [ %699, %653 ], [ %637, %655 ]
  %659 = phi i8 [ %698, %653 ], [ %638, %655 ]
  %660 = phi i64 [ %715, %653 ], [ 0, %655 ]
  %661 = xor i1 %657, true
  %662 = load i64, i64* @end_offset, align 8
  %663 = icmp ult i64 %658, %662
  %664 = or i1 %663, %661
  br i1 %664, label %665, label %784

; <label>:665:                                    ; preds = %656
  br label %718

; <label>:666:                                    ; preds = %652, %712
  %667 = phi i64 [ %715, %712 ], [ 0, %652 ]
  %668 = phi i8 [ %698, %712 ], [ %638, %652 ]
  %669 = phi i64 [ %699, %712 ], [ %637, %652 ]
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %671 = icmp eq %struct._IO_FILE* %670, null
  br i1 %671, label %688, label %672

; <label>:672:                                    ; preds = %666
  br label %673

; <label>:673:                                    ; preds = %672, %678
  %674 = phi %struct._IO_FILE* [ %685, %678 ], [ %670, %672 ]
  %675 = phi i1 [ %684, %678 ], [ true, %672 ]
  %676 = call i32 @fgetc(%struct._IO_FILE* nonnull %674) #12
  %677 = icmp eq i32 %676, -1
  br i1 %677, label %678, label %694

; <label>:678:                                    ; preds = %673
  %679 = tail call i32* @__errno_location() #1
  %680 = load i32, i32* %679, align 4
  %681 = call fastcc zeroext i1 @check_and_close(i32 %680) #12
  %682 = and i1 %675, %681
  %683 = call fastcc zeroext i1 @open_next_file() #12
  %684 = and i1 %682, %683
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %686 = icmp eq %struct._IO_FILE* %685, null
  br i1 %686, label %687, label %673

; <label>:687:                                    ; preds = %678
  br label %689

; <label>:688:                                    ; preds = %666
  br label %689

; <label>:689:                                    ; preds = %688, %687
  %690 = phi i1 [ %684, %687 ], [ true, %688 ]
  %691 = zext i1 %690 to i32
  %692 = zext i8 %668 to i32
  %693 = and i32 %691, %692
  br label %702

; <label>:694:                                    ; preds = %673
  %695 = zext i1 %675 to i32
  %696 = zext i8 %668 to i32
  %697 = and i32 %695, %696
  %698 = trunc i32 %697 to i8
  %699 = add i64 %669, 1
  %700 = icmp slt i32 %676, 0
  br i1 %700, label %701, label %704

; <label>:701:                                    ; preds = %694
  br label %702

; <label>:702:                                    ; preds = %701, %689
  %703 = phi i32 [ %693, %689 ], [ %697, %701 ]
  call void @free(i8* %632) #12
  br label %857

; <label>:704:                                    ; preds = %694
  %705 = tail call i16** @__ctype_b_loc() #1
  %706 = load i16*, i16** %705, align 8
  %707 = sext i32 %676 to i64
  %708 = getelementptr inbounds i16, i16* %706, i64 %707
  %709 = load i16, i16* %708, align 2
  %710 = and i16 %709, 16384
  %711 = icmp eq i16 %710, 0
  br i1 %711, label %635, label %712

; <label>:712:                                    ; preds = %704
  %713 = trunc i32 %676 to i8
  %714 = getelementptr inbounds i8, i8* %632, i64 %667
  store i8 %713, i8* %714, align 1
  %715 = add i64 %667, 1
  %716 = load i64, i64* @string_min, align 8
  %717 = icmp ult i64 %715, %716
  br i1 %717, label %666, label %653

; <label>:718:                                    ; preds = %665, %773
  %719 = phi i64 [ %775, %773 ], [ %660, %665 ]
  %720 = phi i8 [ %757, %773 ], [ %659, %665 ]
  %721 = phi i64 [ %758, %773 ], [ %658, %665 ]
  %722 = phi i8* [ %728, %773 ], [ %632, %665 ]
  %723 = load i64, i64* %5, align 8
  %724 = icmp eq i64 %719, %723
  br i1 %724, label %725, label %727

; <label>:725:                                    ; preds = %718
  %726 = call i8* @x2realloc(i8* %722, i64* nonnull %5) #12
  br label %727

; <label>:727:                                    ; preds = %725, %718
  %728 = phi i8* [ %726, %725 ], [ %722, %718 ]
  %729 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %730 = icmp eq %struct._IO_FILE* %729, null
  br i1 %730, label %747, label %731

; <label>:731:                                    ; preds = %727
  br label %732

; <label>:732:                                    ; preds = %731, %737
  %733 = phi %struct._IO_FILE* [ %744, %737 ], [ %729, %731 ]
  %734 = phi i1 [ %743, %737 ], [ true, %731 ]
  %735 = call i32 @fgetc(%struct._IO_FILE* nonnull %733) #12
  %736 = icmp eq i32 %735, -1
  br i1 %736, label %737, label %753

; <label>:737:                                    ; preds = %732
  %738 = tail call i32* @__errno_location() #1
  %739 = load i32, i32* %738, align 4
  %740 = call fastcc zeroext i1 @check_and_close(i32 %739) #12
  %741 = and i1 %734, %740
  %742 = call fastcc zeroext i1 @open_next_file() #12
  %743 = and i1 %741, %742
  %744 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %745 = icmp eq %struct._IO_FILE* %744, null
  br i1 %745, label %746, label %732

; <label>:746:                                    ; preds = %737
  br label %748

; <label>:747:                                    ; preds = %727
  br label %748

; <label>:748:                                    ; preds = %747, %746
  %749 = phi i1 [ %743, %746 ], [ true, %747 ]
  %750 = zext i1 %749 to i32
  %751 = zext i8 %720 to i32
  %752 = and i32 %750, %751
  br label %761

; <label>:753:                                    ; preds = %732
  %754 = zext i1 %734 to i32
  %755 = zext i8 %720 to i32
  %756 = and i32 %754, %755
  %757 = trunc i32 %756 to i8
  %758 = add i64 %721, 1
  %759 = icmp slt i32 %735, 0
  br i1 %759, label %760, label %763

; <label>:760:                                    ; preds = %753
  br label %761

; <label>:761:                                    ; preds = %760, %748
  %762 = phi i32 [ %752, %748 ], [ %756, %760 ]
  call void @free(i8* %728) #12
  br label %857

; <label>:763:                                    ; preds = %753
  %764 = icmp eq i32 %735, 0
  br i1 %764, label %782, label %765

; <label>:765:                                    ; preds = %763
  %766 = tail call i16** @__ctype_b_loc() #1
  %767 = load i16*, i16** %766, align 8
  %768 = sext i32 %735 to i64
  %769 = getelementptr inbounds i16, i16* %767, i64 %768
  %770 = load i16, i16* %769, align 2
  %771 = and i16 %770, 16384
  %772 = icmp eq i16 %771, 0
  br i1 %772, label %630, label %773

; <label>:773:                                    ; preds = %765
  %774 = trunc i32 %735 to i8
  %775 = add i64 %719, 1
  %776 = getelementptr inbounds i8, i8* %728, i64 %719
  store i8 %774, i8* %776, align 1
  %777 = load i1, i1* @limit_bytes_to_format, align 1
  %778 = xor i1 %777, true
  %779 = load i64, i64* @end_offset, align 8
  %780 = icmp ult i64 %758, %779
  %781 = or i1 %780, %778
  br i1 %781, label %718, label %782

; <label>:782:                                    ; preds = %763, %773
  %783 = phi i64 [ %719, %763 ], [ %775, %773 ]
  br label %785

; <label>:784:                                    ; preds = %656
  br label %785

; <label>:785:                                    ; preds = %784, %782
  %786 = phi i64 [ %783, %782 ], [ %660, %784 ]
  %787 = phi i8* [ %728, %782 ], [ %632, %784 ]
  %788 = phi i64 [ %758, %782 ], [ %658, %784 ]
  %789 = phi i8 [ %757, %782 ], [ %659, %784 ]
  %790 = getelementptr inbounds i8, i8* %787, i64 %786
  store i8 0, i8* %790, align 1
  %791 = load void (i64, i8)*, void (i64, i8)** @format_address, align 8
  %792 = xor i64 %786, -1
  %793 = add i64 %788, %792
  call void %791(i64 %793, i8 signext 32) #12
  %794 = load i8, i8* %787, align 1
  %795 = icmp eq i8 %794, 0
  br i1 %795, label %840, label %796

; <label>:796:                                    ; preds = %785
  br label %797

; <label>:797:                                    ; preds = %796, %834
  %798 = phi i8 [ %837, %834 ], [ %794, %796 ]
  %799 = phi i64 [ %835, %834 ], [ 0, %796 ]
  %800 = sext i8 %798 to i32
  switch i32 %800, label %822 [
    i32 7, label %801
    i32 8, label %804
    i32 12, label %807
    i32 10, label %810
    i32 13, label %813
    i32 9, label %816
    i32 11, label %819
  ]

; <label>:801:                                    ; preds = %797
  %802 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %803 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), %struct._IO_FILE* %802) #12
  br label %834

; <label>:804:                                    ; preds = %797
  %805 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %806 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i64 0, i64 0), %struct._IO_FILE* %805) #12
  br label %834

; <label>:807:                                    ; preds = %797
  %808 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %809 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i64 0, i64 0), %struct._IO_FILE* %808) #12
  br label %834

; <label>:810:                                    ; preds = %797
  %811 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %812 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i64 0, i64 0), %struct._IO_FILE* %811) #12
  br label %834

; <label>:813:                                    ; preds = %797
  %814 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %815 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i64 0, i64 0), %struct._IO_FILE* %814) #12
  br label %834

; <label>:816:                                    ; preds = %797
  %817 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %818 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), %struct._IO_FILE* %817) #12
  br label %834

; <label>:819:                                    ; preds = %797
  %820 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %821 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), %struct._IO_FILE* %820) #12
  br label %834

; <label>:822:                                    ; preds = %797
  %823 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %824 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %823, i64 0, i32 5
  %825 = load i8*, i8** %824, align 8
  %826 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %823, i64 0, i32 6
  %827 = load i8*, i8** %826, align 8
  %828 = icmp ult i8* %825, %827
  br i1 %828, label %832, label %829

; <label>:829:                                    ; preds = %822
  %830 = and i32 %800, 255
  %831 = call i32 @__overflow(%struct._IO_FILE* nonnull %823, i32 %830) #12
  br label %834

; <label>:832:                                    ; preds = %822
  %833 = getelementptr inbounds i8, i8* %825, i64 1
  store i8* %833, i8** %824, align 8
  store i8 %798, i8* %825, align 1
  br label %834

; <label>:834:                                    ; preds = %832, %829, %819, %816, %813, %810, %807, %804, %801
  %835 = add i64 %799, 1
  %836 = getelementptr inbounds i8, i8* %787, i64 %835
  %837 = load i8, i8* %836, align 1
  %838 = icmp eq i8 %837, 0
  br i1 %838, label %839, label %797

; <label>:839:                                    ; preds = %834
  br label %840

; <label>:840:                                    ; preds = %839, %785
  %841 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %842 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %841, i64 0, i32 5
  %843 = load i8*, i8** %842, align 8
  %844 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %841, i64 0, i32 6
  %845 = load i8*, i8** %844, align 8
  %846 = icmp ult i8* %843, %845
  br i1 %846, label %850, label %847

; <label>:847:                                    ; preds = %840
  %848 = call i32 @__overflow(%struct._IO_FILE* %841, i32 10) #12
  br label %849

; <label>:849:                                    ; preds = %847, %850
  br label %626

; <label>:850:                                    ; preds = %840
  %851 = getelementptr inbounds i8, i8* %843, i64 1
  store i8* %851, i8** %842, align 8
  store i8 10, i8* %843, align 1
  br label %849

; <label>:852:                                    ; preds = %642
  call void @free(i8* %632) #12
  %853 = call fastcc zeroext i1 @check_and_close(i32 0) #12
  %854 = zext i1 %853 to i32
  %855 = zext i8 %638 to i32
  %856 = and i32 %854, %855
  br label %857

; <label>:857:                                    ; preds = %702, %761, %852
  %858 = phi i32 [ %856, %852 ], [ %762, %761 ], [ %703, %702 ]
  %859 = icmp ne i32 %858, 0
  call void @llvm.lifetime.end(i64 8, i8* nonnull %620) #12
  br label %1019

; <label>:860:                                    ; preds = %617
  %861 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %861) #12
  %862 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %862) #12
  %863 = icmp ugt i64 %571, 4611686018427387903
  br i1 %863, label %864, label %865

; <label>:864:                                    ; preds = %860
  call void @xalloc_die() #15
  unreachable

; <label>:865:                                    ; preds = %860
  %866 = shl i64 %571, 1
  %867 = call noalias i8* @xmalloc(i64 %866) #12
  %868 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8* %867, i8** %868, align 16
  %869 = load i64, i64* @bytes_per_block, align 8
  %870 = getelementptr inbounds i8, i8* %867, i64 %869
  %871 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  store i8* %870, i8** %871, align 8
  %872 = load i64, i64* @n_bytes_to_skip, align 8
  %873 = load i1, i1* @limit_bytes_to_format, align 1
  br i1 %873, label %881, label %874

; <label>:874:                                    ; preds = %865
  %875 = call fastcc zeroext i1 @read_block(i64 %869, i8* %867, i64* nonnull %4) #12
  %876 = zext i1 %875 to i8
  %877 = load i64, i64* %4, align 8
  %878 = load i64, i64* @bytes_per_block, align 8
  %879 = icmp ult i64 %877, %878
  br i1 %879, label %950, label %880

; <label>:880:                                    ; preds = %874
  br label %926

; <label>:881:                                    ; preds = %865
  %882 = load i64, i64* @end_offset, align 8
  %883 = icmp ugt i64 %882, %872
  br i1 %883, label %884, label %895

; <label>:884:                                    ; preds = %881
  %885 = sub i64 %882, %872
  %886 = icmp ult i64 %885, %869
  %887 = select i1 %886, i64 %885, i64 %869
  %888 = call fastcc zeroext i1 @read_block(i64 %887, i8* %867, i64* nonnull %4) #12
  %889 = zext i1 %888 to i8
  %890 = load i64, i64* %4, align 8
  %891 = load i64, i64* @bytes_per_block, align 8
  %892 = icmp ult i64 %890, %891
  br i1 %892, label %950, label %893

; <label>:893:                                    ; preds = %884
  br label %898

; <label>:894:                                    ; preds = %907
  br label %895

; <label>:895:                                    ; preds = %894, %881
  %896 = phi i8 [ 1, %881 ], [ %901, %894 ]
  %897 = phi i64 [ %872, %881 ], [ %912, %894 ]
  store i64 0, i64* %4, align 8
  br label %1002

; <label>:898:                                    ; preds = %893, %915
  %899 = phi i64 [ %924, %915 ], [ %891, %893 ]
  %900 = phi i64 [ %923, %915 ], [ %890, %893 ]
  %901 = phi i8 [ %922, %915 ], [ %889, %893 ]
  %902 = phi i8* [ %911, %915 ], [ %867, %893 ]
  %903 = phi i8 [ %908, %915 ], [ 0, %893 ]
  %904 = phi i64 [ %912, %915 ], [ %872, %893 ]
  %905 = icmp eq i64 %900, %899
  br i1 %905, label %907, label %906

; <label>:906:                                    ; preds = %898
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 1401, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__PRETTY_FUNCTION__.dump, i64 0, i64 0)) #15
  unreachable

; <label>:907:                                    ; preds = %898
  %908 = xor i8 %903, 1
  %909 = zext i8 %908 to i64
  %910 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %909
  %911 = load i8*, i8** %910, align 8
  call fastcc void @write_block(i64 %904, i64 %899, i8* %911, i8* %902) #12
  %912 = add i64 %899, %904
  %913 = load i64, i64* @end_offset, align 8
  %914 = icmp ugt i64 %913, %912
  br i1 %914, label %915, label %894

; <label>:915:                                    ; preds = %907
  %916 = load i64, i64* @bytes_per_block, align 8
  %917 = sub i64 %913, %912
  %918 = icmp ult i64 %917, %916
  %919 = select i1 %918, i64 %917, i64 %916
  %920 = call fastcc zeroext i1 @read_block(i64 %919, i8* %911, i64* nonnull %4) #12
  %921 = zext i1 %920 to i8
  %922 = and i8 %921, %901
  %923 = load i64, i64* %4, align 8
  %924 = load i64, i64* @bytes_per_block, align 8
  %925 = icmp ult i64 %923, %924
  br i1 %925, label %948, label %898

; <label>:926:                                    ; preds = %880, %935
  %927 = phi i8* [ %939, %935 ], [ %867, %880 ]
  %928 = phi i64 [ %946, %935 ], [ %878, %880 ]
  %929 = phi i64 [ %945, %935 ], [ %877, %880 ]
  %930 = phi i8 [ %944, %935 ], [ %876, %880 ]
  %931 = phi i64 [ %940, %935 ], [ %872, %880 ]
  %932 = phi i8 [ %936, %935 ], [ 0, %880 ]
  %933 = icmp eq i64 %929, %928
  br i1 %933, label %935, label %934

; <label>:934:                                    ; preds = %926
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 1415, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__PRETTY_FUNCTION__.dump, i64 0, i64 0)) #15
  unreachable

; <label>:935:                                    ; preds = %926
  %936 = xor i8 %932, 1
  %937 = zext i8 %936 to i64
  %938 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %937
  %939 = load i8*, i8** %938, align 8
  call fastcc void @write_block(i64 %931, i64 %928, i8* %939, i8* %927) #12
  %940 = add i64 %931, %928
  %941 = load i64, i64* @bytes_per_block, align 8
  %942 = call fastcc zeroext i1 @read_block(i64 %941, i8* %939, i64* nonnull %4) #12
  %943 = zext i1 %942 to i8
  %944 = and i8 %943, %930
  %945 = load i64, i64* %4, align 8
  %946 = load i64, i64* @bytes_per_block, align 8
  %947 = icmp ult i64 %945, %946
  br i1 %947, label %949, label %926

; <label>:948:                                    ; preds = %915
  br label %950

; <label>:949:                                    ; preds = %935
  br label %950

; <label>:950:                                    ; preds = %949, %948, %884, %874
  %951 = phi i64 [ %877, %874 ], [ %890, %884 ], [ %923, %948 ], [ %945, %949 ]
  %952 = phi i8 [ %876, %874 ], [ %889, %884 ], [ %922, %948 ], [ %944, %949 ]
  %953 = phi i8 [ 0, %874 ], [ 0, %884 ], [ %908, %948 ], [ %936, %949 ]
  %954 = phi i64 [ %872, %874 ], [ %872, %884 ], [ %912, %948 ], [ %940, %949 ]
  %955 = icmp eq i64 %951, 0
  br i1 %955, label %1002, label %956

; <label>:956:                                    ; preds = %950
  %957 = load i64, i64* @n_specs, align 8
  %958 = icmp eq i64 %957, 0
  br i1 %958, label %985, label %959

; <label>:959:                                    ; preds = %956
  %960 = load %struct.tspec*, %struct.tspec** @spec, align 8
  br label %961

; <label>:961:                                    ; preds = %977, %959
  %962 = phi i64 [ 1, %959 ], [ %979, %977 ]
  %963 = phi i64 [ 0, %959 ], [ %980, %977 ]
  %964 = shl i64 %962, 32
  %965 = ashr exact i64 %964, 32
  %966 = getelementptr inbounds %struct.tspec, %struct.tspec* %960, i64 %963, i32 1
  %967 = load i32, i32* %966, align 4
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds [9 x i32], [9 x i32]* @width_bytes, i64 0, i64 %968
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  br label %972

; <label>:972:                                    ; preds = %972, %961
  %973 = phi i64 [ %971, %961 ], [ %975, %972 ]
  %974 = phi i64 [ %965, %961 ], [ %973, %972 ]
  %975 = urem i64 %974, %973
  %976 = icmp eq i64 %975, 0
  br i1 %976, label %977, label %972

; <label>:977:                                    ; preds = %972
  %978 = udiv i64 %971, %973
  %979 = mul i64 %978, %965
  %980 = add nuw i64 %963, 1
  %981 = icmp eq i64 %980, %957
  br i1 %981, label %982, label %961

; <label>:982:                                    ; preds = %977
  %983 = shl i64 %979, 32
  %984 = ashr exact i64 %983, 32
  br label %985

; <label>:985:                                    ; preds = %982, %956
  %986 = phi i64 [ 1, %956 ], [ %984, %982 ]
  %987 = add i64 %951, -1
  %988 = add i64 %987, %986
  %989 = urem i64 %988, %986
  %990 = and i8 %953, 1
  %991 = zext i8 %990 to i64
  %992 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %991
  %993 = load i8*, i8** %992, align 8
  %994 = getelementptr inbounds i8, i8* %993, i64 %951
  %995 = add i64 %989, %951
  %996 = sub i64 %988, %995
  call void @llvm.memset.p0i8.i64(i8* %994, i8 0, i64 %996, i32 1, i1 false) #12
  %997 = xor i8 %990, 1
  %998 = zext i8 %997 to i64
  %999 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 %998
  %1000 = load i8*, i8** %999, align 8
  call fastcc void @write_block(i64 %954, i64 %951, i8* %1000, i8* %993) #12
  %1001 = add i64 %954, %951
  br label %1002

; <label>:1002:                                   ; preds = %985, %950, %895
  %1003 = phi i8 [ %952, %985 ], [ %952, %950 ], [ %896, %895 ]
  %1004 = phi i64 [ %1001, %985 ], [ %954, %950 ], [ %897, %895 ]
  %1005 = load void (i64, i8)*, void (i64, i8)** @format_address, align 8
  call void %1005(i64 %1004, i8 signext 10) #12
  %1006 = load i1, i1* @limit_bytes_to_format, align 1
  %1007 = xor i1 %1006, true
  %1008 = load i64, i64* @end_offset, align 8
  %1009 = icmp ult i64 %1004, %1008
  %1010 = or i1 %1009, %1007
  br i1 %1010, label %1015, label %1011

; <label>:1011:                                   ; preds = %1002
  %1012 = call fastcc zeroext i1 @check_and_close(i32 0) #12
  %1013 = zext i1 %1012 to i8
  %1014 = and i8 %1013, %1003
  br label %1015

; <label>:1015:                                   ; preds = %1002, %1011
  %1016 = phi i8 [ %1014, %1011 ], [ %1003, %1002 ]
  call void @free(i8* %867) #12
  %1017 = and i8 %1016, 1
  %1018 = icmp ne i8 %1017, 0
  call void @llvm.lifetime.end(i64 8, i8* nonnull %862) #12
  call void @llvm.lifetime.end(i64 16, i8* nonnull %861) #12
  br label %1019

; <label>:1019:                                   ; preds = %1015, %857
  %1020 = phi i1 [ %1018, %1015 ], [ %859, %857 ]
  %1021 = and i1 %516, %1020
  %1022 = zext i1 %1021 to i32
  br label %1023

; <label>:1023:                                   ; preds = %500, %507, %390, %1019
  %1024 = phi i32 [ %397, %390 ], [ %513, %507 ], [ %1022, %1019 ], [ %503, %500 ]
  %1025 = load i1, i1* @have_read_stdin, align 1
  br i1 %1025, label %1026, label %1034

; <label>:1026:                                   ; preds = %1023
  %1027 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %1028 = call i32 @rpl_fclose(%struct._IO_FILE* %1027) #12
  %1029 = icmp eq i32 %1028, -1
  br i1 %1029, label %1030, label %1034

; <label>:1030:                                   ; preds = %1026
  %1031 = tail call i32* @__errno_location() #1
  %1032 = load i32, i32* %1031, align 4
  %1033 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %1032, i8* %1033) #12
  unreachable

; <label>:1034:                                   ; preds = %1026, %1023
  %1035 = xor i32 %1024, 1
  br label %1036

; <label>:1036:                                   ; preds = %162, %1034
  %1037 = phi i32 [ %1035, %1034 ], [ 1, %162 ]
  ret i32 %1037
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
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @format_address_std(i64, i8 signext) #6 {
  %3 = alloca [25 x i8], align 16
  %4 = ptrtoint [25 x i8]* %3 to i64
  %5 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* nonnull %5) #12
  %6 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 24
  store i8 0, i8* %6, align 8
  %7 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 23
  store i8 %1, i8* %7, align 1
  %8 = load i32, i32* @address_pad_len, align 4
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  %12 = load i32, i32* @address_base, align 4
  switch i32 %12, label %46 [
    i32 8, label %15
    i32 10, label %14
    i32 16, label %13
  ]

; <label>:13:                                     ; preds = %2
  br label %34

; <label>:14:                                     ; preds = %2
  br label %25

; <label>:15:                                     ; preds = %2
  br label %16

; <label>:16:                                     ; preds = %15, %16
  %17 = phi i8* [ %22, %16 ], [ %7, %15 ]
  %18 = phi i64 [ %23, %16 ], [ %0, %15 ]
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 7
  %21 = or i8 %20, 48
  %22 = getelementptr inbounds i8, i8* %17, i64 -1
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %18, 3
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %43, label %16

; <label>:25:                                     ; preds = %14, %25
  %26 = phi i8* [ %31, %25 ], [ %7, %14 ]
  %27 = phi i64 [ %32, %25 ], [ %0, %14 ]
  %28 = urem i64 %27, 10
  %29 = trunc i64 %28 to i8
  %30 = or i8 %29, 48
  %31 = getelementptr inbounds i8, i8* %26, i64 -1
  store i8 %30, i8* %31, align 1
  %32 = udiv i64 %27, 10
  %33 = icmp ugt i64 %27, 9
  br i1 %33, label %25, label %44

; <label>:34:                                     ; preds = %13, %34
  %35 = phi i8* [ %40, %34 ], [ %7, %13 ]
  %36 = phi i64 [ %41, %34 ], [ %0, %13 ]
  %37 = and i64 %36, 15
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.63, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = getelementptr inbounds i8, i8* %35, i64 -1
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %36, 4
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %34

; <label>:43:                                     ; preds = %16
  br label %46

; <label>:44:                                     ; preds = %25
  br label %46

; <label>:45:                                     ; preds = %34
  br label %46

; <label>:46:                                     ; preds = %45, %44, %43, %2
  %47 = phi i8* [ %7, %2 ], [ %22, %43 ], [ %31, %44 ], [ %40, %45 ]
  %48 = icmp ult i8* %11, %47
  br i1 %48, label %49, label %61

; <label>:49:                                     ; preds = %46
  %50 = sub nsw i64 23, %9
  %51 = getelementptr [25 x i8], [25 x i8]* %3, i64 0, i64 %50
  %52 = add nsw i64 %9, -23
  %53 = sub i64 %52, %4
  %54 = getelementptr i8, i8* %47, i64 %53
  %55 = ptrtoint i8* %54 to i64
  call void @llvm.memset.p0i8.i64(i8* %51, i8 48, i64 %55, i32 1, i1 false)
  br label %56

; <label>:56:                                     ; preds = %49, %56
  %57 = phi i8* [ %58, %56 ], [ %47, %49 ]
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = icmp ult i8* %11, %58
  br i1 %59, label %56, label %60

; <label>:60:                                     ; preds = %56
  br label %61

; <label>:61:                                     ; preds = %60, %46
  %62 = phi i8* [ %47, %46 ], [ %58, %60 ]
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = call i32 @fputs_unlocked(i8* %62, %struct._IO_FILE* %63) #12
  call void @llvm.lifetime.end(i64 25, i8* nonnull %5) #12
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define internal void @format_address_none(i64, i8 signext) #8 {
  ret void
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @decode_format_string(i8*) unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load i8, i8* %0, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %247, label %6

; <label>:6:                                      ; preds = %3
  %7 = load i64, i64* @n_specs, align 8
  br label %9

; <label>:8:                                      ; preds = %1
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 984, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.decode_format_string, i64 0, i64 0)) #15
  unreachable

; <label>:9:                                      ; preds = %6, %241
  %10 = phi i64 [ %243, %241 ], [ %7, %6 ]
  %11 = phi i8* [ %238, %241 ], [ %0, %6 ]
  %12 = load i64, i64* @n_specs_allocated, align 8
  %13 = icmp ugt i64 %12, %10
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %9
  %15 = load %struct.tspec*, %struct.tspec** @spec, align 8
  br label %35

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** bitcast (%struct.tspec** @spec to i8**), align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %16
  %20 = icmp eq i64 %12, 0
  %21 = select i1 %20, i64 3, i64 %12
  br label %29

; <label>:22:                                     ; preds = %16
  %23 = icmp ult i64 %12, 153722867280912930
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %22
  tail call void @xalloc_die() #15
  unreachable

; <label>:25:                                     ; preds = %22
  %26 = lshr i64 %12, 1
  %27 = add i64 %12, 1
  %28 = add i64 %27, %26
  br label %29

; <label>:29:                                     ; preds = %19, %25
  %30 = phi i64 [ %28, %25 ], [ %21, %19 ]
  store i64 %30, i64* @n_specs_allocated, align 8
  %31 = mul i64 %30, 40
  %32 = tail call i8* @xrealloc(i8* %17, i64 %31) #12
  store i8* %32, i8** bitcast (%struct.tspec** @spec to i8**), align 8
  %33 = bitcast i8* %32 to %struct.tspec*
  %34 = load i64, i64* @n_specs, align 8
  br label %35

; <label>:35:                                     ; preds = %14, %29
  %36 = phi i64 [ %10, %14 ], [ %34, %29 ]
  %37 = phi %struct.tspec* [ %15, %14 ], [ %33, %29 ]
  %38 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36
  %39 = icmp eq %struct.tspec* %38, null
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  tail call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 646, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.decode_one_format, i64 0, i64 0)) #15
  unreachable

; <label>:41:                                     ; preds = %35
  %42 = load i8, i8* %11, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %218 [
    i32 100, label %44
    i32 111, label %44
    i32 117, label %44
    i32 120, label %44
    i32 102, label %145
    i32 97, label %214
    i32 99, label %216
  ]

; <label>:44:                                     ; preds = %41, %41, %41, %41
  %45 = getelementptr inbounds i8, i8* %11, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %48 [
    i32 67, label %52
    i32 83, label %54
    i32 73, label %56
    i32 76, label %58
  ]

; <label>:48:                                     ; preds = %44
  %49 = add nsw i32 %47, -48
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %90

; <label>:51:                                     ; preds = %48
  br label %60

; <label>:52:                                     ; preds = %44
  %53 = getelementptr inbounds i8, i8* %11, i64 2
  br label %90

; <label>:54:                                     ; preds = %44
  %55 = getelementptr inbounds i8, i8* %11, i64 2
  br label %90

; <label>:56:                                     ; preds = %44
  %57 = getelementptr inbounds i8, i8* %11, i64 2
  br label %90

; <label>:58:                                     ; preds = %44
  %59 = getelementptr inbounds i8, i8* %11, i64 2
  br label %90

; <label>:60:                                     ; preds = %51, %69
  %61 = phi i32 [ %75, %69 ], [ %49, %51 ]
  %62 = phi i64 [ %71, %69 ], [ 0, %51 ]
  %63 = phi i64 [ %64, %69 ], [ 1, %51 ]
  %64 = add nuw nsw i64 %63, 1
  %65 = sext i32 %61 to i64
  %66 = xor i64 %65, -1
  %67 = udiv i64 %66, 10
  %68 = icmp ugt i64 %62, %67
  br i1 %68, label %77, label %69

; <label>:69:                                     ; preds = %60
  %70 = mul i64 %62, 10
  %71 = add i64 %65, %70
  %72 = getelementptr inbounds i8, i8* %11, i64 %64
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, -48
  %76 = icmp ult i32 %75, 10
  br i1 %76, label %60, label %80

; <label>:77:                                     ; preds = %60
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0), i32 5) #12
  %79 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %78, i8* %79) #12
  br label %247

; <label>:80:                                     ; preds = %69
  %81 = icmp ugt i64 %71, 8
  br i1 %81, label %87, label %82

; <label>:82:                                     ; preds = %80
  %83 = getelementptr inbounds i8, i8* %11, i64 %64
  %84 = getelementptr inbounds [9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 %71
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %82, %80
  %88 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.80, i64 0, i64 0), i32 5) #12
  %89 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %88, i8* %89, i64 %71) #12
  br label %247

; <label>:90:                                     ; preds = %48, %82, %58, %56, %54, %52
  %91 = phi i64 [ %71, %82 ], [ 8, %58 ], [ 4, %56 ], [ 2, %54 ], [ 1, %52 ], [ 4, %48 ]
  %92 = phi i8* [ %83, %82 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %45, %48 ]
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* @integral_type_size, i64 0, i64 %91
  %94 = load i32, i32* %93, align 4
  switch i32 %43, label %127 [
    i32 100, label %95
    i32 111, label %103
    i32 117, label %111
    i32 120, label %119
  ]

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds [17 x i32], [17 x i32]* @bytes_to_signed_dec_digits, i64 0, i64 %91
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 3, i64 0
  %99 = or i32 %94, 1
  %100 = icmp eq i32 %99, 5
  %101 = select i1 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0)
  %102 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %98, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* %101) #12
  br label %128

; <label>:103:                                    ; preds = %90
  %104 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 3, i64 0
  %105 = getelementptr inbounds [17 x i32], [17 x i32]* @bytes_to_oct_digits, i64 0, i64 %91
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %94, 1
  %108 = icmp eq i32 %107, 5
  %109 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i64 0, i64 0)
  %110 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %104, i32 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i32 %106, i8* %109) #12
  br label %128

; <label>:111:                                    ; preds = %90
  %112 = getelementptr inbounds [17 x i32], [17 x i32]* @bytes_to_unsigned_dec_digits, i64 0, i64 %91
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 3, i64 0
  %115 = or i32 %94, 1
  %116 = icmp eq i32 %115, 5
  %117 = select i1 %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0)
  %118 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %114, i32 1, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i8* %117) #12
  br label %128

; <label>:119:                                    ; preds = %90
  %120 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 3, i64 0
  %121 = getelementptr inbounds [17 x i32], [17 x i32]* @bytes_to_hex_digits, i64 0, i64 %91
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %94, 1
  %124 = icmp eq i32 %123, 5
  %125 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i64 0, i64 0)
  %126 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* %120, i32 1, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.84, i64 0, i64 0), i32 %122, i8* %125) #12
  br label %128

; <label>:127:                                    ; preds = %90
  tail call void @abort() #15
  unreachable

; <label>:128:                                    ; preds = %119, %111, %103, %95
  %129 = phi i8* [ %120, %119 ], [ %114, %111 ], [ %104, %103 ], [ %98, %95 ]
  %130 = phi i32 [ 3, %119 ], [ 1, %111 ], [ 2, %103 ], [ 0, %95 ]
  %131 = phi i32 [ %122, %119 ], [ %113, %111 ], [ %106, %103 ], [ %97, %95 ]
  %132 = tail call i64 @strlen(i8* %129) #14
  %133 = icmp ult i64 %132, 8
  br i1 %133, label %135, label %134

; <label>:134:                                    ; preds = %128
  tail call void @__assert_fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 745, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__PRETTY_FUNCTION__.decode_one_format, i64 0, i64 0)) #15
  unreachable

; <label>:135:                                    ; preds = %128
  switch i32 %94, label %144 [
    i32 1, label %136
    i32 2, label %139
    i32 3, label %223
    i32 4, label %142
    i32 5, label %143
  ]

; <label>:136:                                    ; preds = %135
  %137 = icmp eq i32 %130, 0
  %138 = select i1 %137, void (i64, i64, i8*, i8*, i32, i32)* @print_s_char, void (i64, i64, i8*, i8*, i32, i32)* @print_char
  br label %223

; <label>:139:                                    ; preds = %135
  %140 = icmp eq i32 %130, 0
  %141 = select i1 %140, void (i64, i64, i8*, i8*, i32, i32)* @print_s_short, void (i64, i64, i8*, i8*, i32, i32)* @print_short
  br label %223

; <label>:142:                                    ; preds = %135
  br label %223

; <label>:143:                                    ; preds = %135
  br label %223

; <label>:144:                                    ; preds = %135
  tail call void @abort() #15
  unreachable

; <label>:145:                                    ; preds = %41
  %146 = getelementptr inbounds i8, i8* %11, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  switch i32 %148, label %149 [
    i32 70, label %153
    i32 68, label %155
    i32 76, label %157
  ]

; <label>:149:                                    ; preds = %145
  %150 = add nsw i32 %148, -48
  %151 = icmp ult i32 %150, 10
  br i1 %151, label %152, label %189

; <label>:152:                                    ; preds = %149
  br label %159

; <label>:153:                                    ; preds = %145
  %154 = getelementptr inbounds i8, i8* %11, i64 2
  br label %189

; <label>:155:                                    ; preds = %145
  %156 = getelementptr inbounds i8, i8* %11, i64 2
  br label %189

; <label>:157:                                    ; preds = %145
  %158 = getelementptr inbounds i8, i8* %11, i64 2
  br label %189

; <label>:159:                                    ; preds = %152, %168
  %160 = phi i32 [ %174, %168 ], [ %150, %152 ]
  %161 = phi i64 [ %170, %168 ], [ 0, %152 ]
  %162 = phi i64 [ %163, %168 ], [ 1, %152 ]
  %163 = add nuw nsw i64 %162, 1
  %164 = sext i32 %160 to i64
  %165 = xor i64 %164, -1
  %166 = udiv i64 %165, 10
  %167 = icmp ugt i64 %161, %166
  br i1 %167, label %176, label %168

; <label>:168:                                    ; preds = %159
  %169 = mul i64 %161, 10
  %170 = add i64 %164, %169
  %171 = getelementptr inbounds i8, i8* %11, i64 %163
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = add nsw i32 %173, -48
  %175 = icmp ult i32 %174, 10
  br i1 %175, label %159, label %179

; <label>:176:                                    ; preds = %159
  %177 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i64 0, i64 0), i32 5) #12
  %178 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %177, i8* %178) #12
  br label %247

; <label>:179:                                    ; preds = %168
  %180 = icmp ugt i64 %170, 16
  br i1 %180, label %186, label %181

; <label>:181:                                    ; preds = %179
  %182 = getelementptr inbounds i8, i8* %11, i64 %163
  %183 = getelementptr inbounds [17 x i32], [17 x i32]* @fp_type_size, i64 0, i64 %170
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

; <label>:186:                                    ; preds = %181, %179
  %187 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.92, i64 0, i64 0), i32 5) #12
  %188 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %187, i8* %188, i64 %170) #12
  br label %247

; <label>:189:                                    ; preds = %149, %181, %157, %155, %153
  %190 = phi i64 [ %170, %181 ], [ 16, %157 ], [ 8, %155 ], [ 4, %153 ], [ 8, %149 ]
  %191 = phi i8* [ %182, %181 ], [ %158, %157 ], [ %156, %155 ], [ %154, %153 ], [ %146, %149 ]
  %192 = getelementptr inbounds [17 x i32], [17 x i32]* @fp_type_size, i64 0, i64 %190
  %193 = load i32, i32* %192, align 4
  %194 = tail call %struct.lconv* @localeconv() #12
  %195 = getelementptr inbounds %struct.lconv, %struct.lconv* %194, i64 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8, i8* %196, align 1
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %201, label %199

; <label>:199:                                    ; preds = %189
  %200 = tail call i64 @strlen(i8* %196) #14
  br label %201

; <label>:201:                                    ; preds = %199, %189
  %202 = phi i64 [ %200, %199 ], [ 1, %189 ]
  %203 = add i32 %193, -6
  %204 = icmp ult i32 %203, 3
  br i1 %204, label %206, label %205

; <label>:205:                                    ; preds = %201
  tail call void @abort() #15
  unreachable

; <label>:206:                                    ; preds = %201
  %207 = sext i32 %203 to i64
  %208 = getelementptr inbounds [3 x i64], [3 x i64]* @switch.table, i64 0, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds [3 x void (i64, i64, i8*, i8*, i32, i32)*], [3 x void (i64, i64, i8*, i8*, i32, i32)*]* @switch.table.118, i64 0, i64 %207
  %211 = load void (i64, i64, i8*, i8*, i32, i32)*, void (i64, i64, i8*, i8*, i32, i32)** %210, align 8
  %212 = add i64 %209, %202
  %213 = trunc i64 %212 to i32
  br label %223

; <label>:214:                                    ; preds = %41
  %215 = getelementptr inbounds i8, i8* %11, i64 1
  br label %223

; <label>:216:                                    ; preds = %41
  %217 = getelementptr inbounds i8, i8* %11, i64 1
  br label %223

; <label>:218:                                    ; preds = %41
  %219 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.93, i64 0, i64 0), i32 5) #12
  %220 = load i8, i8* %11, align 1
  %221 = sext i8 %220 to i32
  %222 = tail call i8* @quote(i8* nonnull %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %219, i32 %221, i8* %222) #12
  br label %247

; <label>:223:                                    ; preds = %216, %214, %206, %143, %142, %139, %136, %135
  %224 = phi i32 [ 6, %216 ], [ 5, %214 ], [ 4, %206 ], [ %130, %143 ], [ %130, %142 ], [ %130, %139 ], [ %130, %136 ], [ %130, %135 ]
  %225 = phi void (i64, i64, i8*, i8*, i32, i32)* [ @print_ascii, %216 ], [ @print_named_ascii, %214 ], [ %211, %206 ], [ @print_long_long, %143 ], [ @print_long, %142 ], [ %141, %139 ], [ %138, %136 ], [ @print_int, %135 ]
  %226 = phi i32 [ 1, %216 ], [ 1, %214 ], [ %193, %206 ], [ %94, %143 ], [ %94, %142 ], [ 2, %139 ], [ 1, %136 ], [ 3, %135 ]
  %227 = phi i32 [ 3, %216 ], [ 3, %214 ], [ %213, %206 ], [ %131, %143 ], [ %131, %142 ], [ %131, %139 ], [ %131, %136 ], [ %131, %135 ]
  %228 = phi i8* [ %217, %216 ], [ %215, %214 ], [ %191, %206 ], [ %92, %143 ], [ %92, %142 ], [ %92, %139 ], [ %92, %136 ], [ %92, %135 ]
  %229 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 1
  store i32 %226, i32* %229, align 4
  %230 = getelementptr inbounds %struct.tspec, %struct.tspec* %38, i64 0, i32 0
  store i32 %224, i32* %230, align 8
  %231 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 2
  store void (i64, i64, i8*, i8*, i32, i32)* %225, void (i64, i64, i8*, i8*, i32, i32)** %231, align 8
  %232 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 5
  store i32 %227, i32* %232, align 4
  %233 = load i8, i8* %228, align 1
  %234 = icmp eq i8 %233, 122
  %235 = getelementptr inbounds %struct.tspec, %struct.tspec* %37, i64 %36, i32 4
  %236 = zext i1 %234 to i8
  store i8 %236, i8* %235, align 8
  %237 = getelementptr inbounds i8, i8* %228, i64 1
  %238 = select i1 %234, i8* %237, i8* %228
  %239 = icmp eq i8* %11, %238
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %223
  tail call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 996, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.decode_format_string, i64 0, i64 0)) #15
  unreachable

; <label>:241:                                    ; preds = %223
  %242 = load i64, i64* @n_specs, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* @n_specs, align 8
  %244 = load i8, i8* %238, align 1
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %9

; <label>:246:                                    ; preds = %241
  br label %247

; <label>:247:                                    ; preds = %246, %3, %77, %87, %176, %186, %218
  %248 = phi i1 [ false, %218 ], [ false, %186 ], [ false, %176 ], [ false, %87 ], [ false, %77 ], [ true, %3 ], [ true, %246 ]
  ret i1 %248
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @format_address_paren(i64, i8 signext) #6 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 5
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %3, i64 0, i32 6
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ult i8* %5, %7
  br i1 %8, label %11, label %9

; <label>:9:                                      ; preds = %2
  %10 = tail call i32 @__overflow(%struct._IO_FILE* %3, i32 40) #12
  br label %13

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %12, i8** %4, align 8
  store i8 40, i8* %5, align 1
  br label %13

; <label>:13:                                     ; preds = %9, %11
  tail call void @format_address_std(i64 %0, i8 signext 41)
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %27, label %15

; <label>:15:                                     ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %16, i64 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %16, i64 0, i32 6
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ult i8* %18, %20
  br i1 %21, label %25, label %22

; <label>:22:                                     ; preds = %15
  %23 = zext i8 %1 to i32
  %24 = tail call i32 @__overflow(%struct._IO_FILE* %16, i32 %23) #12
  br label %27

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %26, i8** %17, align 8
  store i8 %1, i8* %18, align 1
  br label %27

; <label>:27:                                     ; preds = %25, %22, %13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @format_address_label(i64, i8 signext) #6 {
  %3 = alloca [25 x i8], align 16
  %4 = alloca [25 x i8], align 16
  %5 = ptrtoint [25 x i8]* %4 to i64
  %6 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* nonnull %6) #12
  %7 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i64 0, i64 24
  store i8 0, i8* %7, align 8
  %8 = getelementptr inbounds [25 x i8], [25 x i8]* %4, i64 0, i64 23
  store i8 32, i8* %8, align 1
  %9 = load i32, i32* @address_pad_len, align 4
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i32, i32* @address_base, align 4
  switch i32 %13, label %47 [
    i32 8, label %16
    i32 10, label %15
    i32 16, label %14
  ]

; <label>:14:                                     ; preds = %2
  br label %35

; <label>:15:                                     ; preds = %2
  br label %26

; <label>:16:                                     ; preds = %2
  br label %17

; <label>:17:                                     ; preds = %16, %17
  %18 = phi i8* [ %23, %17 ], [ %8, %16 ]
  %19 = phi i64 [ %24, %17 ], [ %0, %16 ]
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 7
  %22 = or i8 %21, 48
  %23 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %19, 3
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %44, label %17

; <label>:26:                                     ; preds = %15, %26
  %27 = phi i8* [ %32, %26 ], [ %8, %15 ]
  %28 = phi i64 [ %33, %26 ], [ %0, %15 ]
  %29 = urem i64 %28, 10
  %30 = trunc i64 %29 to i8
  %31 = or i8 %30, 48
  %32 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8 %31, i8* %32, align 1
  %33 = udiv i64 %28, 10
  %34 = icmp ugt i64 %28, 9
  br i1 %34, label %26, label %45

; <label>:35:                                     ; preds = %14, %35
  %36 = phi i8* [ %41, %35 ], [ %8, %14 ]
  %37 = phi i64 [ %42, %35 ], [ %0, %14 ]
  %38 = and i64 %37, 15
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.63, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %37, 4
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %46, label %35

; <label>:44:                                     ; preds = %17
  br label %47

; <label>:45:                                     ; preds = %26
  br label %47

; <label>:46:                                     ; preds = %35
  br label %47

; <label>:47:                                     ; preds = %46, %45, %44, %2
  %48 = phi i8* [ %8, %2 ], [ %23, %44 ], [ %32, %45 ], [ %41, %46 ]
  %49 = icmp ult i8* %12, %48
  br i1 %49, label %50, label %62

; <label>:50:                                     ; preds = %47
  %51 = sub nsw i64 23, %10
  %52 = getelementptr [25 x i8], [25 x i8]* %4, i64 0, i64 %51
  %53 = sub i64 -23, %5
  %54 = add i64 %53, %10
  %55 = getelementptr i8, i8* %48, i64 %54
  %56 = ptrtoint i8* %55 to i64
  call void @llvm.memset.p0i8.i64(i8* %52, i8 48, i64 %56, i32 1, i1 false) #12
  br label %57

; <label>:57:                                     ; preds = %57, %50
  %58 = phi i8* [ %59, %57 ], [ %48, %50 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  %60 = icmp ult i8* %12, %59
  br i1 %60, label %57, label %61

; <label>:61:                                     ; preds = %57
  br label %62

; <label>:62:                                     ; preds = %61, %47
  %63 = phi i8* [ %48, %47 ], [ %59, %61 ]
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = call i32 @fputs_unlocked(i8* %63, %struct._IO_FILE* %64) #12
  call void @llvm.lifetime.end(i64 25, i8* nonnull %6) #12
  %66 = load i64, i64* @pseudo_offset, align 8
  %67 = add i64 %66, %0
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 5
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %68, i64 0, i32 6
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ult i8* %70, %72
  br i1 %73, label %76, label %74

; <label>:74:                                     ; preds = %62
  %75 = call i32 @__overflow(%struct._IO_FILE* %68, i32 40) #12
  br label %78

; <label>:76:                                     ; preds = %62
  %77 = getelementptr inbounds i8, i8* %70, i64 1
  store i8* %77, i8** %69, align 8
  store i8 40, i8* %70, align 1
  br label %78

; <label>:78:                                     ; preds = %76, %74
  %79 = ptrtoint [25 x i8]* %3 to i64
  %80 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 25, i8* nonnull %80) #12
  %81 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 24
  store i8 0, i8* %81, align 8
  %82 = getelementptr inbounds [25 x i8], [25 x i8]* %3, i64 0, i64 23
  store i8 41, i8* %82, align 1
  %83 = load i32, i32* @address_pad_len, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i32, i32* @address_base, align 4
  switch i32 %87, label %121 [
    i32 8, label %90
    i32 10, label %89
    i32 16, label %88
  ]

; <label>:88:                                     ; preds = %78
  br label %109

; <label>:89:                                     ; preds = %78
  br label %100

; <label>:90:                                     ; preds = %78
  br label %91

; <label>:91:                                     ; preds = %90, %91
  %92 = phi i8* [ %97, %91 ], [ %82, %90 ]
  %93 = phi i64 [ %98, %91 ], [ %67, %90 ]
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 7
  %96 = or i8 %95, 48
  %97 = getelementptr inbounds i8, i8* %92, i64 -1
  store i8 %96, i8* %97, align 1
  %98 = lshr i64 %93, 3
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %118, label %91

; <label>:100:                                    ; preds = %89, %100
  %101 = phi i8* [ %106, %100 ], [ %82, %89 ]
  %102 = phi i64 [ %107, %100 ], [ %67, %89 ]
  %103 = urem i64 %102, 10
  %104 = trunc i64 %103 to i8
  %105 = or i8 %104, 48
  %106 = getelementptr inbounds i8, i8* %101, i64 -1
  store i8 %105, i8* %106, align 1
  %107 = udiv i64 %102, 10
  %108 = icmp ugt i64 %102, 9
  br i1 %108, label %100, label %119

; <label>:109:                                    ; preds = %88, %109
  %110 = phi i8* [ %115, %109 ], [ %82, %88 ]
  %111 = phi i64 [ %116, %109 ], [ %67, %88 ]
  %112 = and i64 %111, 15
  %113 = getelementptr inbounds [17 x i8], [17 x i8]* @.str.63, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = getelementptr inbounds i8, i8* %110, i64 -1
  store i8 %114, i8* %115, align 1
  %116 = lshr i64 %111, 4
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %120, label %109

; <label>:118:                                    ; preds = %91
  br label %121

; <label>:119:                                    ; preds = %100
  br label %121

; <label>:120:                                    ; preds = %109
  br label %121

; <label>:121:                                    ; preds = %120, %119, %118, %78
  %122 = phi i8* [ %82, %78 ], [ %97, %118 ], [ %106, %119 ], [ %115, %120 ]
  %123 = icmp ult i8* %86, %122
  br i1 %123, label %124, label %136

; <label>:124:                                    ; preds = %121
  %125 = sub nsw i64 23, %84
  %126 = getelementptr [25 x i8], [25 x i8]* %3, i64 0, i64 %125
  %127 = sub i64 -23, %79
  %128 = add i64 %127, %84
  %129 = getelementptr i8, i8* %122, i64 %128
  %130 = ptrtoint i8* %129 to i64
  call void @llvm.memset.p0i8.i64(i8* %126, i8 48, i64 %130, i32 1, i1 false) #12
  br label %131

; <label>:131:                                    ; preds = %131, %124
  %132 = phi i8* [ %133, %131 ], [ %122, %124 ]
  %133 = getelementptr inbounds i8, i8* %132, i64 -1
  %134 = icmp ult i8* %86, %133
  br i1 %134, label %131, label %135

; <label>:135:                                    ; preds = %131
  br label %136

; <label>:136:                                    ; preds = %135, %121
  %137 = phi i8* [ %122, %121 ], [ %133, %135 ]
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %139 = call i32 @fputs_unlocked(i8* %137, %struct._IO_FILE* %138) #12
  call void @llvm.lifetime.end(i64 25, i8* nonnull %80) #12
  %140 = icmp eq i8 %1, 0
  br i1 %140, label %153, label %141

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 5
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %142, i64 0, i32 6
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ult i8* %144, %146
  br i1 %147, label %151, label %148

; <label>:148:                                    ; preds = %141
  %149 = zext i8 %1 to i32
  %150 = call i32 @__overflow(%struct._IO_FILE* %142, i32 %149) #12
  br label %153

; <label>:151:                                    ; preds = %141
  %152 = getelementptr inbounds i8, i8* %144, i64 1
  store i8* %152, i8** %143, align 8
  store i8 %1, i8* %144, align 1
  br label %153

; <label>:153:                                    ; preds = %136, %148, %151
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @open_next_file() unnamed_addr #6 {
  br label %1

; <label>:1:                                      ; preds = %27, %0
  %2 = phi i8 [ 1, %0 ], [ %29, %27 ]
  %3 = load i8**, i8*** @file_list, align 8
  %4 = load i8*, i8** %3, align 8
  store i8* %4, i8** @input_filename, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %39, label %6

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8*, i8** %3, i64 1
  store i8** %7, i8*** @file_list, align 8
  %8 = load i8, i8* %4, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds i8, i8* %4, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %10
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i32 5) #12
  store i8* %15, i8** @input_filename, align 8
  %16 = load i64, i64* bitcast (%struct._IO_FILE** @stdin to i64*), align 8
  store i64 %16, i64* bitcast (%struct._IO_FILE** @in_stream to i64*), align 8
  store i1 true, i1* @have_read_stdin, align 1
  %17 = inttoptr i64 %16 to %struct._IO_FILE*
  br label %27

; <label>:18:                                     ; preds = %6, %10
  %19 = tail call %struct._IO_FILE* @fopen(i8* nonnull %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.110, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** @in_stream, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %31

; <label>:21:                                     ; preds = %18
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** @input_filename, align 8
  %25 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %24) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %25) #12
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  br label %27

; <label>:27:                                     ; preds = %14, %21
  %28 = phi %struct._IO_FILE* [ %17, %14 ], [ %26, %21 ]
  %29 = phi i8 [ %2, %14 ], [ 0, %21 ]
  %30 = icmp eq %struct._IO_FILE* %28, null
  br i1 %30, label %1, label %31

; <label>:31:                                     ; preds = %18, %27
  %32 = phi i8 [ %29, %27 ], [ %2, %18 ]
  %33 = phi %struct._IO_FILE* [ %28, %27 ], [ %19, %18 ]
  %34 = load i1, i1* @limit_bytes_to_format, align 1
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %31
  %36 = load i1, i1* @flag_dump_strings, align 1
  br i1 %36, label %40, label %37

; <label>:37:                                     ; preds = %35
  %38 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %33, i8* null, i32 2, i64 0) #12
  br label %40

; <label>:39:                                     ; preds = %1
  br label %40

; <label>:40:                                     ; preds = %39, %31, %35, %37
  %41 = phi i8 [ %32, %37 ], [ %32, %35 ], [ %32, %31 ], [ %2, %39 ]
  %42 = and i8 %41, 1
  %43 = icmp ne i8 %42, 0
  ret i1 %43
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @check_and_close(i32) unnamed_addr #6 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %45, label %4

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.112, i64 0, i64 0), i32 5) #12
  %11 = load i8*, i8** @input_filename, align 8
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %11) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %0, i8* %10, i8* %12) #12
  %13 = load i8**, i8*** @file_list, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 -1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %22

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds i8, i8* %15, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %43, label %22

; <label>:22:                                     ; preds = %9, %18
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %24 = tail call i32 @rpl_fclose(%struct._IO_FILE* %23) #12
  br label %43

; <label>:25:                                     ; preds = %4
  %26 = load i8**, i8*** @file_list, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 -1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 45
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds i8, i8* %28, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

; <label>:35:                                     ; preds = %25, %31
  %36 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %2) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

; <label>:38:                                     ; preds = %35
  %39 = tail call i32* @__errno_location() #1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** @input_filename, align 8
  %42 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %41) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i8* %42) #12
  br label %43

; <label>:43:                                     ; preds = %18, %22, %35, %31, %38
  %44 = phi i8 [ 1, %31 ], [ 0, %38 ], [ 1, %35 ], [ 0, %22 ], [ 0, %18 ]
  store %struct._IO_FILE* null, %struct._IO_FILE** @in_stream, align 8
  br label %45

; <label>:45:                                     ; preds = %1, %43
  %46 = phi i8 [ %44, %43 ], [ 1, %1 ]
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %47, i64 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

; <label>:52:                                     ; preds = %45
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %53) #12
  br label %54

; <label>:54:                                     ; preds = %45, %52
  %55 = phi i8 [ 0, %52 ], [ %46, %45 ]
  %56 = and i8 %55, 1
  %57 = icmp ne i8 %56, 0
  ret i1 %57
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @read_block(i64, i8*, i64* nocapture) unnamed_addr #6 {
  %4 = load i64, i64* @bytes_per_block, align 8
  %5 = add i64 %0, -1
  %6 = icmp ult i64 %5, %4
  br i1 %6, label %8, label %7

; <label>:7:                                      ; preds = %3
  tail call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0), i32 1290, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.read_block, i64 0, i64 0)) #15
  unreachable

; <label>:8:                                      ; preds = %3
  store i64 0, i64* %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %39, label %11

; <label>:11:                                     ; preds = %8
  %12 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %0, %struct._IO_FILE* nonnull %9) #12
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %13, %12
  store i64 %14, i64* %2, align 8
  %15 = icmp eq i64 %12, %0
  br i1 %15, label %39, label %16

; <label>:16:                                     ; preds = %11
  br label %17

; <label>:17:                                     ; preds = %16, %29
  %18 = phi i8 [ %26, %29 ], [ 1, %16 ]
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call fastcc zeroext i1 @check_and_close(i32 %20)
  %22 = zext i1 %21 to i8
  %23 = and i8 %22, %18
  %24 = tail call fastcc zeroext i1 @open_next_file()
  %25 = zext i1 %24 to i8
  %26 = and i8 %23, %25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @in_stream, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %37, label %29

; <label>:29:                                     ; preds = %17
  %30 = load i64, i64* %2, align 8
  %31 = sub i64 %0, %30
  %32 = getelementptr inbounds i8, i8* %1, i64 %30
  %33 = tail call i64 @fread_unlocked(i8* %32, i64 1, i64 %31, %struct._IO_FILE* nonnull %27) #12
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %2, align 8
  %36 = icmp eq i64 %33, %31
  br i1 %36, label %37, label %17

; <label>:37:                                     ; preds = %17, %29
  %38 = icmp ne i8 %26, 0
  br label %39

; <label>:39:                                     ; preds = %37, %11, %8
  %40 = phi i1 [ true, %8 ], [ true, %11 ], [ %38, %37 ]
  ret i1 %40
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @write_block(i64, i64, i8* nocapture readonly, i8*) unnamed_addr #6 {
  %5 = load i1, i1* @abbreviate_duplicate_blocks, align 1
  br i1 %5, label %18, label %6

; <label>:6:                                      ; preds = %4
  %7 = load i1, i1* @write_block.first, align 1
  %8 = load i64, i64* @bytes_per_block, align 8
  %9 = icmp eq i64 %8, %1
  %10 = and i1 %7, %9
  br i1 %10, label %11, label %18

; <label>:11:                                     ; preds = %6
  %12 = tail call i32 @memcmp(i8* %2, i8* %3, i64 %1) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %11
  %15 = load i1, i1* @write_block.prev_pair_equal, align 1
  br i1 %15, label %130, label %16

; <label>:16:                                     ; preds = %14
  %17 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0)) #12
  store i1 true, i1* @write_block.prev_pair_equal, align 1
  br label %130

; <label>:18:                                     ; preds = %6, %4, %11
  store i1 false, i1* @write_block.prev_pair_equal, align 1
  %19 = load i64, i64* @n_specs, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %130, label %21

; <label>:21:                                     ; preds = %18
  %22 = icmp eq i64 %1, 0
  br label %23

; <label>:23:                                     ; preds = %21, %125
  %24 = phi i64 [ 0, %21 ], [ %126, %125 ]
  %25 = load %struct.tspec*, %struct.tspec** @spec, align 8
  %26 = getelementptr inbounds %struct.tspec, %struct.tspec* %25, i64 %24, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [9 x i32], [9 x i32]* @width_bytes, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @bytes_per_block, align 8
  %32 = sext i32 %30 to i64
  %33 = udiv i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = sub i64 %31, %1
  %36 = udiv i64 %35, %32
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i64 %24, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %23
  %40 = load void (i64, i8)*, void (i64, i8)** @format_address, align 8
  tail call void %40(i64 %0, i8 signext 0) #12
  br label %44

; <label>:41:                                     ; preds = %23
  %42 = load i32, i32* @address_pad_len, align 4
  %43 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #12
  br label %44

; <label>:44:                                     ; preds = %41, %39
  %45 = load %struct.tspec*, %struct.tspec** @spec, align 8
  %46 = getelementptr inbounds %struct.tspec, %struct.tspec* %45, i64 %24, i32 2
  %47 = load void (i64, i64, i8*, i8*, i32, i32)*, void (i64, i64, i8*, i8*, i32, i32)** %46, align 8
  %48 = shl i64 %33, 32
  %49 = ashr exact i64 %48, 32
  %50 = shl i64 %36, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds %struct.tspec, %struct.tspec* %45, i64 %24, i32 3, i64 0
  %53 = getelementptr inbounds %struct.tspec, %struct.tspec* %45, i64 %24, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.tspec, %struct.tspec* %45, i64 %24, i32 6
  %56 = load i32, i32* %55, align 8
  tail call void %47(i64 %49, i64 %51, i8* %3, i8* %52, i32 %54, i32 %56) #12
  %57 = load %struct.tspec*, %struct.tspec** @spec, align 8
  %58 = getelementptr inbounds %struct.tspec, %struct.tspec* %57, i64 %24, i32 4
  %59 = load i8, i8* %58, align 8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %114, label %61

; <label>:61:                                     ; preds = %44
  %62 = getelementptr inbounds %struct.tspec, %struct.tspec* %57, i64 %24, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.tspec, %struct.tspec* %57, i64 %24, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, %37
  %67 = sdiv i32 %66, %34
  %68 = mul nsw i32 %63, %37
  %69 = add nsw i32 %67, %68
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)) #12
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %72 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i64 0, i64 0), %struct._IO_FILE* %71) #12
  br i1 %22, label %103, label %73

; <label>:73:                                     ; preds = %61
  %74 = tail call i16** @__ctype_b_loc() #1
  br label %75

; <label>:75:                                     ; preds = %99, %73
  %76 = phi i8* [ %3, %73 ], [ %78, %99 ]
  %77 = phi i64 [ %1, %73 ], [ %100, %99 ]
  %78 = getelementptr inbounds i8, i8* %76, i64 1
  %79 = load i8, i8* %76, align 1
  %80 = load i16*, i16** %74, align 8
  %81 = zext i8 %79 to i64
  %82 = getelementptr inbounds i16, i16* %80, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = and i16 %83, 16384
  %85 = icmp ne i16 %84, 0
  %86 = zext i8 %79 to i32
  %87 = select i1 %85, i32 %86, i32 46
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %88, i64 0, i32 6
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ult i8* %90, %92
  br i1 %93, label %96, label %94

; <label>:94:                                     ; preds = %75
  %95 = tail call i32 @__overflow(%struct._IO_FILE* %88, i32 %87) #12
  br label %99

; <label>:96:                                     ; preds = %75
  %97 = trunc i32 %87 to i8
  %98 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %98, i8** %89, align 8
  store i8 %97, i8* %90, align 1
  br label %99

; <label>:99:                                     ; preds = %96, %94
  %100 = add i64 %77, -1
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %75

; <label>:102:                                    ; preds = %99
  br label %103

; <label>:103:                                    ; preds = %102, %61
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ult i8* %106, %108
  br i1 %109, label %112, label %110

; <label>:110:                                    ; preds = %103
  %111 = tail call i32 @__overflow(%struct._IO_FILE* %104, i32 60) #12
  br label %114

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1
  store i8* %113, i8** %105, align 8
  store i8 60, i8* %106, align 1
  br label %114

; <label>:114:                                    ; preds = %112, %110, %44
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %115, i64 0, i32 5
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %115, i64 0, i32 6
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ult i8* %117, %119
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %114
  %122 = tail call i32 @__overflow(%struct._IO_FILE* %115, i32 10) #12
  br label %125

; <label>:123:                                    ; preds = %114
  %124 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %124, i8** %116, align 8
  store i8 10, i8* %117, align 1
  br label %125

; <label>:125:                                    ; preds = %121, %123
  %126 = add i64 %24, 1
  %127 = load i64, i64* @n_specs, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %23, label %129

; <label>:129:                                    ; preds = %125
  br label %130

; <label>:130:                                    ; preds = %129, %18, %16, %14
  store i1 true, i1* @write_block.first, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_s_char(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = icmp ugt i64 %0, %1
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %5 to i64
  br label %10

; <label>:10:                                     ; preds = %8, %10
  %11 = phi i8* [ %2, %8 ], [ %21, %10 ]
  %12 = phi i64 [ %0, %8 ], [ %14, %10 ]
  %13 = phi i32 [ %5, %8 ], [ %17, %10 ]
  %14 = add i64 %12, -1
  %15 = mul i64 %14, %9
  %16 = udiv i64 %15, %0
  %17 = trunc i64 %16 to i32
  %18 = add i32 %13, %4
  %19 = sub i32 %18, %17
  %20 = load i8, i8* %11, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 1
  %22 = sext i8 %20 to i32
  %23 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %19, i32 %22) #12
  %24 = icmp ugt i64 %14, %1
  br i1 %24, label %10, label %25

; <label>:25:                                     ; preds = %10
  br label %26

; <label>:26:                                     ; preds = %25, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_char(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = icmp ugt i64 %0, %1
  br i1 %7, label %8, label %26

; <label>:8:                                      ; preds = %6
  %9 = sext i32 %5 to i64
  br label %10

; <label>:10:                                     ; preds = %8, %10
  %11 = phi i8* [ %2, %8 ], [ %21, %10 ]
  %12 = phi i64 [ %0, %8 ], [ %14, %10 ]
  %13 = phi i32 [ %5, %8 ], [ %17, %10 ]
  %14 = add i64 %12, -1
  %15 = mul i64 %14, %9
  %16 = udiv i64 %15, %0
  %17 = trunc i64 %16 to i32
  %18 = add i32 %13, %4
  %19 = sub i32 %18, %17
  %20 = load i8, i8* %11, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 1
  %22 = zext i8 %20 to i32
  %23 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %19, i32 %22) #12
  %24 = icmp ugt i64 %14, %1
  br i1 %24, label %10, label %25

; <label>:25:                                     ; preds = %10
  br label %26

; <label>:26:                                     ; preds = %25, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_s_short(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = alloca %union.anon.2, align 2
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %44

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %2 to i16*
  %11 = sext i32 %5 to i64
  %12 = bitcast %union.anon.2* %7 to i8*
  %13 = bitcast %union.anon.2* %7 to [2 x i8]*
  %14 = getelementptr inbounds %union.anon.2, %union.anon.2* %7, i64 0, i32 0
  %15 = bitcast %union.anon.2* %7 to i8*
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  br label %17

; <label>:17:                                     ; preds = %9, %37
  %18 = phi i16* [ %10, %9 ], [ %39, %37 ]
  %19 = phi i64 [ %0, %9 ], [ %21, %37 ]
  %20 = phi i32 [ %5, %9 ], [ %24, %37 ]
  %21 = add i64 %19, -1
  %22 = mul i64 %21, %11
  %23 = udiv i64 %22, %0
  %24 = trunc i64 %23 to i32
  %25 = add i32 %20, %4
  %26 = sub i32 %25, %24
  %27 = load i8, i8* @input_swap, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

; <label>:29:                                     ; preds = %17
  call void @llvm.lifetime.start(i64 2, i8* nonnull %12) #12
  %30 = bitcast i16* %18 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %15, align 2
  %33 = load i8, i8* %30, align 1
  store i8 %33, i8* %16, align 1
  %34 = load i16, i16* %14, align 2
  call void @llvm.lifetime.end(i64 2, i8* nonnull %12) #12
  br label %37

; <label>:35:                                     ; preds = %17
  %36 = load i16, i16* %18, align 2
  br label %37

; <label>:37:                                     ; preds = %35, %29
  %38 = phi i16 [ %34, %29 ], [ %36, %35 ]
  %39 = getelementptr inbounds i16, i16* %18, i64 1
  %40 = sext i16 %38 to i32
  %41 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %26, i32 %40) #12
  %42 = icmp ugt i64 %21, %1
  br i1 %42, label %17, label %43

; <label>:43:                                     ; preds = %37
  br label %44

; <label>:44:                                     ; preds = %43, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_short(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = alloca %union.anon.2, align 2
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %44

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %2 to i16*
  %11 = sext i32 %5 to i64
  %12 = bitcast %union.anon.2* %7 to i8*
  %13 = bitcast %union.anon.2* %7 to [2 x i8]*
  %14 = getelementptr inbounds %union.anon.2, %union.anon.2* %7, i64 0, i32 0
  %15 = bitcast %union.anon.2* %7 to i8*
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  br label %17

; <label>:17:                                     ; preds = %9, %37
  %18 = phi i16* [ %10, %9 ], [ %39, %37 ]
  %19 = phi i64 [ %0, %9 ], [ %21, %37 ]
  %20 = phi i32 [ %5, %9 ], [ %24, %37 ]
  %21 = add i64 %19, -1
  %22 = mul i64 %21, %11
  %23 = udiv i64 %22, %0
  %24 = trunc i64 %23 to i32
  %25 = add i32 %20, %4
  %26 = sub i32 %25, %24
  %27 = load i8, i8* @input_swap, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

; <label>:29:                                     ; preds = %17
  call void @llvm.lifetime.start(i64 2, i8* nonnull %12) #12
  %30 = bitcast i16* %18 to i8*
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %15, align 2
  %33 = load i8, i8* %30, align 1
  store i8 %33, i8* %16, align 1
  %34 = load i16, i16* %14, align 2
  call void @llvm.lifetime.end(i64 2, i8* nonnull %12) #12
  br label %37

; <label>:35:                                     ; preds = %17
  %36 = load i16, i16* %18, align 2
  br label %37

; <label>:37:                                     ; preds = %35, %29
  %38 = phi i16 [ %34, %29 ], [ %36, %35 ]
  %39 = getelementptr inbounds i16, i16* %18, i64 1
  %40 = zext i16 %38 to i32
  %41 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %26, i32 %40) #12
  %42 = icmp ugt i64 %21, %1
  br i1 %42, label %17, label %43

; <label>:43:                                     ; preds = %37
  br label %44

; <label>:44:                                     ; preds = %43, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_long(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = alloca %union.anon.5, align 8
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %61

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %2 to i64*
  %11 = sext i32 %5 to i64
  %12 = bitcast %union.anon.5* %7 to i8*
  %13 = bitcast %union.anon.5* %7 to [8 x i8]*
  %14 = getelementptr inbounds %union.anon.5, %union.anon.5* %7, i64 0, i32 0
  %15 = bitcast %union.anon.5* %7 to i8*
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 2
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 3
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 5
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 6
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 7
  br label %23

; <label>:23:                                     ; preds = %9, %55
  %24 = phi i64* [ %10, %9 ], [ %57, %55 ]
  %25 = phi i64 [ %0, %9 ], [ %27, %55 ]
  %26 = phi i32 [ %5, %9 ], [ %30, %55 ]
  %27 = add i64 %25, -1
  %28 = mul i64 %27, %11
  %29 = udiv i64 %28, %0
  %30 = trunc i64 %29 to i32
  %31 = add i32 %26, %4
  %32 = sub i32 %31, %30
  %33 = load i8, i8* @input_swap, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %53, label %35

; <label>:35:                                     ; preds = %23
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #12
  %36 = bitcast i64* %24 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %15, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 6
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %16, align 1
  %41 = getelementptr inbounds i8, i8* %36, i64 5
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %17, align 2
  %43 = getelementptr inbounds i8, i8* %36, i64 4
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %18, align 1
  %45 = getelementptr inbounds i8, i8* %36, i64 3
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %19, align 4
  %47 = getelementptr inbounds i8, i8* %36, i64 2
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %20, align 1
  %49 = getelementptr inbounds i8, i8* %36, i64 1
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %21, align 2
  %51 = load i8, i8* %36, align 1
  store i8 %51, i8* %22, align 1
  %52 = load i64, i64* %14, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #12
  br label %55

; <label>:53:                                     ; preds = %23
  %54 = load i64, i64* %24, align 8
  br label %55

; <label>:55:                                     ; preds = %53, %35
  %56 = phi i64 [ %52, %35 ], [ %54, %53 ]
  %57 = getelementptr inbounds i64, i64* %24, i64 1
  %58 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %32, i64 %56) #12
  %59 = icmp ugt i64 %27, %1
  br i1 %59, label %23, label %60

; <label>:60:                                     ; preds = %55
  br label %61

; <label>:61:                                     ; preds = %60, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_long_long(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = alloca %union.anon.5, align 8
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %61

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %2 to i64*
  %11 = sext i32 %5 to i64
  %12 = bitcast %union.anon.5* %7 to i8*
  %13 = bitcast %union.anon.5* %7 to [8 x i8]*
  %14 = getelementptr inbounds %union.anon.5, %union.anon.5* %7, i64 0, i32 0
  %15 = bitcast %union.anon.5* %7 to i8*
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 2
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 3
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 4
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 5
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 6
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 7
  br label %23

; <label>:23:                                     ; preds = %9, %55
  %24 = phi i64* [ %10, %9 ], [ %57, %55 ]
  %25 = phi i64 [ %0, %9 ], [ %27, %55 ]
  %26 = phi i32 [ %5, %9 ], [ %30, %55 ]
  %27 = add i64 %25, -1
  %28 = mul i64 %27, %11
  %29 = udiv i64 %28, %0
  %30 = trunc i64 %29 to i32
  %31 = add i32 %26, %4
  %32 = sub i32 %31, %30
  %33 = load i8, i8* @input_swap, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %53, label %35

; <label>:35:                                     ; preds = %23
  call void @llvm.lifetime.start(i64 8, i8* nonnull %12) #12
  %36 = bitcast i64* %24 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 7
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %15, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 6
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %16, align 1
  %41 = getelementptr inbounds i8, i8* %36, i64 5
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %17, align 2
  %43 = getelementptr inbounds i8, i8* %36, i64 4
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %18, align 1
  %45 = getelementptr inbounds i8, i8* %36, i64 3
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %19, align 4
  %47 = getelementptr inbounds i8, i8* %36, i64 2
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %20, align 1
  %49 = getelementptr inbounds i8, i8* %36, i64 1
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %21, align 2
  %51 = load i8, i8* %36, align 1
  store i8 %51, i8* %22, align 1
  %52 = load i64, i64* %14, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %12) #12
  br label %55

; <label>:53:                                     ; preds = %23
  %54 = load i64, i64* %24, align 8
  br label %55

; <label>:55:                                     ; preds = %53, %35
  %56 = phi i64 [ %52, %35 ], [ %54, %53 ]
  %57 = getelementptr inbounds i64, i64* %24, i64 1
  %58 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %32, i64 %56) #12
  %59 = icmp ugt i64 %27, %1
  br i1 %59, label %23, label %60

; <label>:60:                                     ; preds = %55
  br label %61

; <label>:61:                                     ; preds = %60, %6
  ret void
}

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_named_ascii(i64, i64, i8* nocapture readonly, i8* nocapture readnone, i32, i32) #6 {
  %7 = alloca [2 x i8], align 1
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %38

; <label>:9:                                      ; preds = %6
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  br label %13

; <label>:13:                                     ; preds = %9, %31
  %14 = phi i8* [ %2, %9 ], [ %21, %31 ]
  %15 = phi i64 [ %0, %9 ], [ %17, %31 ]
  %16 = phi i32 [ %5, %9 ], [ %20, %31 ]
  %17 = add i64 %15, -1
  %18 = mul i64 %17, %10
  %19 = udiv i64 %18, %0
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds i8, i8* %14, i64 1
  %22 = load i8, i8* %14, align 1
  %23 = and i8 %22, 127
  call void @llvm.lifetime.start(i64 2, i8* nonnull %11) #12
  %24 = icmp eq i8 %23, 127
  br i1 %24, label %31, label %25

; <label>:25:                                     ; preds = %13
  %26 = icmp ult i8 %23, 33
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %25
  %28 = zext i8 %23 to i64
  %29 = getelementptr inbounds [33 x [4 x i8]], [33 x [4 x i8]]* @charname, i64 0, i64 %28, i64 0
  br label %31

; <label>:30:                                     ; preds = %25
  store i8 %23, i8* %11, align 1
  store i8 0, i8* %12, align 1
  br label %31

; <label>:31:                                     ; preds = %13, %27, %30
  %32 = phi i8* [ %29, %27 ], [ %11, %30 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0), %13 ]
  %33 = add i32 %16, %4
  %34 = sub i32 %33, %20
  %35 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %34, i8* %32) #12
  call void @llvm.lifetime.end(i64 2, i8* nonnull %11) #12
  %36 = icmp ugt i64 %17, %1
  br i1 %36, label %13, label %37

; <label>:37:                                     ; preds = %31
  br label %38

; <label>:38:                                     ; preds = %37, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_ascii(i64, i64, i8* nocapture readonly, i8* nocapture readnone, i32, i32) #6 {
  %7 = alloca [4 x i8], align 1
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %50

; <label>:9:                                      ; preds = %6
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  br label %12

; <label>:12:                                     ; preds = %9, %43
  %13 = phi i8* [ %2, %9 ], [ %20, %43 ]
  %14 = phi i64 [ %0, %9 ], [ %16, %43 ]
  %15 = phi i32 [ %5, %9 ], [ %19, %43 ]
  %16 = add i64 %14, -1
  %17 = mul i64 %16, %10
  %18 = udiv i64 %17, %0
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds i8, i8* %13, i64 1
  %21 = load i8, i8* %13, align 1
  call void @llvm.lifetime.start(i64 4, i8* nonnull %11) #12
  %22 = icmp ult i8 %21, 14
  br i1 %22, label %34, label %23

; <label>:23:                                     ; preds = %34, %12
  %24 = zext i8 %21 to i32
  %25 = tail call i16** @__ctype_b_loc() #1
  %26 = load i16*, i16** %25, align 8
  %27 = zext i8 %21 to i64
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = and i16 %29, 16384
  %31 = icmp ne i16 %30, 0
  %32 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.105, i64 0, i64 0)
  %33 = call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %11, i32 1, i64 4, i8* %32, i32 %24) #12
  br label %43

; <label>:34:                                     ; preds = %12
  %35 = zext i8 %21 to i16
  %36 = lshr i16 16257, %35
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %23, label %39

; <label>:39:                                     ; preds = %34
  %40 = sext i8 %21 to i64
  %41 = getelementptr inbounds [14 x i8*], [14 x i8*]* @switch.table.119, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  br label %43

; <label>:43:                                     ; preds = %39, %23
  %44 = phi i8* [ %11, %23 ], [ %42, %39 ]
  %45 = add i32 %15, %4
  %46 = sub i32 %45, %19
  %47 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %46, i8* %44) #12
  call void @llvm.lifetime.end(i64 4, i8* nonnull %11) #12
  %48 = icmp ugt i64 %16, %1
  br i1 %48, label %12, label %49

; <label>:49:                                     ; preds = %43
  br label %50

; <label>:50:                                     ; preds = %49, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_int(i64, i64, i8* nocapture readonly, i8*, i32, i32) #6 {
  %7 = alloca %union.anon.3, align 4
  %8 = icmp ugt i64 %0, %1
  br i1 %8, label %9, label %49

; <label>:9:                                      ; preds = %6
  %10 = bitcast i8* %2 to i32*
  %11 = sext i32 %5 to i64
  %12 = bitcast %union.anon.3* %7 to i8*
  %13 = bitcast %union.anon.3* %7 to [4 x i8]*
  %14 = getelementptr inbounds %union.anon.3, %union.anon.3* %7, i64 0, i32 0
  %15 = bitcast %union.anon.3* %7 to i8*
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  br label %19

; <label>:19:                                     ; preds = %9, %43
  %20 = phi i32* [ %10, %9 ], [ %45, %43 ]
  %21 = phi i64 [ %0, %9 ], [ %23, %43 ]
  %22 = phi i32 [ %5, %9 ], [ %26, %43 ]
  %23 = add i64 %21, -1
  %24 = mul i64 %23, %11
  %25 = udiv i64 %24, %0
  %26 = trunc i64 %25 to i32
  %27 = add i32 %22, %4
  %28 = sub i32 %27, %26
  %29 = load i8, i8* @input_swap, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

; <label>:31:                                     ; preds = %19
  call void @llvm.lifetime.start(i64 4, i8* nonnull %12) #12
  %32 = bitcast i32* %20 to i8*
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %15, align 4
  %35 = getelementptr inbounds i8, i8* %32, i64 2
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %16, align 1
  %37 = getelementptr inbounds i8, i8* %32, i64 1
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %17, align 2
  %39 = load i8, i8* %32, align 1
  store i8 %39, i8* %18, align 1
  %40 = load i32, i32* %14, align 4
  call void @llvm.lifetime.end(i64 4, i8* nonnull %12) #12
  br label %43

; <label>:41:                                     ; preds = %19
  %42 = load i32, i32* %20, align 4
  br label %43

; <label>:43:                                     ; preds = %41, %31
  %44 = phi i32 [ %40, %31 ], [ %42, %41 ]
  %45 = getelementptr inbounds i32, i32* %20, i64 1
  %46 = tail call i32 (i8*, ...) @xprintf(i8* %3, i32 %28, i32 %44) #12
  %47 = icmp ugt i64 %23, %1
  br i1 %47, label %19, label %48

; <label>:48:                                     ; preds = %43
  br label %49

; <label>:49:                                     ; preds = %48, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_float(i64, i64, i8* nocapture readonly, i8* nocapture readnone, i32, i32) #6 {
  %7 = alloca %union.anon.6, align 4
  %8 = alloca [31 x i8], align 16
  %9 = icmp ugt i64 %0, %1
  br i1 %9, label %10, label %52

; <label>:10:                                     ; preds = %6
  %11 = bitcast i8* %2 to float*
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i64 0, i64 0
  %14 = bitcast %union.anon.6* %7 to i8*
  %15 = bitcast %union.anon.6* %7 to [4 x i8]*
  %16 = getelementptr inbounds %union.anon.6, %union.anon.6* %7, i64 0, i32 0
  %17 = bitcast %union.anon.6* %7 to i8*
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 1
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 2
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 3
  br label %21

; <label>:21:                                     ; preds = %10, %45
  %22 = phi float* [ %11, %10 ], [ %47, %45 ]
  %23 = phi i64 [ %0, %10 ], [ %25, %45 ]
  %24 = phi i32 [ %5, %10 ], [ %28, %45 ]
  %25 = add i64 %23, -1
  %26 = mul i64 %25, %12
  %27 = udiv i64 %26, %0
  %28 = trunc i64 %27 to i32
  %29 = add i32 %24, %4
  %30 = sub i32 %29, %28
  %31 = load i8, i8* @input_swap, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %43, label %33

; <label>:33:                                     ; preds = %21
  call void @llvm.lifetime.start(i64 4, i8* nonnull %14) #12
  %34 = bitcast float* %22 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %17, align 4
  %37 = getelementptr inbounds i8, i8* %34, i64 2
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %18, align 1
  %39 = getelementptr inbounds i8, i8* %34, i64 1
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %19, align 2
  %41 = load i8, i8* %34, align 1
  store i8 %41, i8* %20, align 1
  %42 = load float, float* %16, align 4
  call void @llvm.lifetime.end(i64 4, i8* nonnull %14) #12
  br label %45

; <label>:43:                                     ; preds = %21
  %44 = load float, float* %22, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %33
  %46 = phi float [ %42, %33 ], [ %44, %43 ]
  %47 = getelementptr inbounds float, float* %22, i64 1
  call void @llvm.lifetime.start(i64 31, i8* nonnull %13) #12
  %48 = call i32 @ftoastr(i8* nonnull %13, i64 31, i32 0, i32 0, float %46) #12
  %49 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %30, i8* nonnull %13) #12
  call void @llvm.lifetime.end(i64 31, i8* nonnull %13) #12
  %50 = icmp ugt i64 %25, %1
  br i1 %50, label %21, label %51

; <label>:51:                                     ; preds = %45
  br label %52

; <label>:52:                                     ; preds = %51, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_double(i64, i64, i8* nocapture readonly, i8* nocapture readnone, i32, i32) #6 {
  %7 = alloca %union.anon.7, align 8
  %8 = alloca [40 x i8], align 16
  %9 = icmp ugt i64 %0, %1
  br i1 %9, label %10, label %64

; <label>:10:                                     ; preds = %6
  %11 = bitcast i8* %2 to double*
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %14 = bitcast %union.anon.7* %7 to i8*
  %15 = bitcast %union.anon.7* %7 to [8 x i8]*
  %16 = getelementptr inbounds %union.anon.7, %union.anon.7* %7, i64 0, i32 0
  %17 = bitcast %union.anon.7* %7 to i8*
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 1
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 2
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 3
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 4
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 5
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 6
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 7
  br label %25

; <label>:25:                                     ; preds = %10, %57
  %26 = phi double* [ %11, %10 ], [ %59, %57 ]
  %27 = phi i64 [ %0, %10 ], [ %29, %57 ]
  %28 = phi i32 [ %5, %10 ], [ %32, %57 ]
  %29 = add i64 %27, -1
  %30 = mul i64 %29, %12
  %31 = udiv i64 %30, %0
  %32 = trunc i64 %31 to i32
  %33 = add i32 %28, %4
  %34 = sub i32 %33, %32
  %35 = load i8, i8* @input_swap, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %55, label %37

; <label>:37:                                     ; preds = %25
  call void @llvm.lifetime.start(i64 8, i8* nonnull %14) #12
  %38 = bitcast double* %26 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 7
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %17, align 8
  %41 = getelementptr inbounds i8, i8* %38, i64 6
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %18, align 1
  %43 = getelementptr inbounds i8, i8* %38, i64 5
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %19, align 2
  %45 = getelementptr inbounds i8, i8* %38, i64 4
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %20, align 1
  %47 = getelementptr inbounds i8, i8* %38, i64 3
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %21, align 4
  %49 = getelementptr inbounds i8, i8* %38, i64 2
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %22, align 1
  %51 = getelementptr inbounds i8, i8* %38, i64 1
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %23, align 2
  %53 = load i8, i8* %38, align 1
  store i8 %53, i8* %24, align 1
  %54 = load double, double* %16, align 8
  call void @llvm.lifetime.end(i64 8, i8* nonnull %14) #12
  br label %57

; <label>:55:                                     ; preds = %25
  %56 = load double, double* %26, align 8
  br label %57

; <label>:57:                                     ; preds = %55, %37
  %58 = phi double [ %54, %37 ], [ %56, %55 ]
  %59 = getelementptr inbounds double, double* %26, i64 1
  call void @llvm.lifetime.start(i64 40, i8* nonnull %13) #12
  %60 = call i32 @dtoastr(i8* nonnull %13, i64 40, i32 0, i32 0, double %58) #12
  %61 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %34, i8* nonnull %13) #12
  call void @llvm.lifetime.end(i64 40, i8* nonnull %13) #12
  %62 = icmp ugt i64 %29, %1
  br i1 %62, label %25, label %63

; <label>:63:                                     ; preds = %57
  br label %64

; <label>:64:                                     ; preds = %63, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @print_long_double(i64, i64, i8* nocapture readonly, i8* nocapture readnone, i32, i32) #6 {
  %7 = alloca %union.anon.8, align 16
  %8 = alloca [45 x i8], align 16
  %9 = icmp ugt i64 %0, %1
  br i1 %9, label %10, label %88

; <label>:10:                                     ; preds = %6
  %11 = bitcast i8* %2 to x86_fp80*
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [45 x i8], [45 x i8]* %8, i64 0, i64 0
  %14 = bitcast %union.anon.8* %7 to i8*
  %15 = bitcast %union.anon.8* %7 to [16 x i8]*
  %16 = getelementptr inbounds %union.anon.8, %union.anon.8* %7, i64 0, i32 0
  %17 = bitcast %union.anon.8* %7 to i8*
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 1
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 2
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 3
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 5
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 6
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 7
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 9
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 10
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 11
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 12
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 13
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 14
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 15
  br label %33

; <label>:33:                                     ; preds = %10, %81
  %34 = phi x86_fp80* [ %11, %10 ], [ %83, %81 ]
  %35 = phi i64 [ %0, %10 ], [ %37, %81 ]
  %36 = phi i32 [ %5, %10 ], [ %40, %81 ]
  %37 = add i64 %35, -1
  %38 = mul i64 %37, %12
  %39 = udiv i64 %38, %0
  %40 = trunc i64 %39 to i32
  %41 = add i32 %36, %4
  %42 = sub i32 %41, %40
  %43 = load i8, i8* @input_swap, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %79, label %45

; <label>:45:                                     ; preds = %33
  call void @llvm.lifetime.start(i64 16, i8* nonnull %14) #12
  %46 = bitcast x86_fp80* %34 to i8*
  %47 = getelementptr inbounds i8, i8* %46, i64 15
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %17, align 16
  %49 = getelementptr inbounds i8, i8* %46, i64 14
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %18, align 1
  %51 = getelementptr inbounds i8, i8* %46, i64 13
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %19, align 2
  %53 = getelementptr inbounds i8, i8* %46, i64 12
  %54 = load i8, i8* %53, align 1
  store i8 %54, i8* %20, align 1
  %55 = getelementptr inbounds i8, i8* %46, i64 11
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %21, align 4
  %57 = getelementptr inbounds i8, i8* %46, i64 10
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %22, align 1
  %59 = getelementptr inbounds i8, i8* %46, i64 9
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %23, align 2
  %61 = getelementptr inbounds i8, i8* %46, i64 8
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %24, align 1
  %63 = getelementptr inbounds i8, i8* %46, i64 7
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %25, align 8
  %65 = getelementptr inbounds i8, i8* %46, i64 6
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %26, align 1
  %67 = getelementptr inbounds i8, i8* %46, i64 5
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %27, align 2
  %69 = getelementptr inbounds i8, i8* %46, i64 4
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %28, align 1
  %71 = getelementptr inbounds i8, i8* %46, i64 3
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %29, align 4
  %73 = getelementptr inbounds i8, i8* %46, i64 2
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %30, align 1
  %75 = getelementptr inbounds i8, i8* %46, i64 1
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %31, align 2
  %77 = load i8, i8* %46, align 1
  store i8 %77, i8* %32, align 1
  %78 = load x86_fp80, x86_fp80* %16, align 16
  call void @llvm.lifetime.end(i64 16, i8* nonnull %14) #12
  br label %81

; <label>:79:                                     ; preds = %33
  %80 = load x86_fp80, x86_fp80* %34, align 16
  br label %81

; <label>:81:                                     ; preds = %79, %45
  %82 = phi x86_fp80 [ %78, %45 ], [ %80, %79 ]
  %83 = getelementptr inbounds x86_fp80, x86_fp80* %34, i64 1
  call void @llvm.lifetime.start(i64 45, i8* nonnull %13) #12
  %84 = call i32 @ldtoastr(i8* nonnull %13, i64 45, i32 0, i32 0, x86_fp80 %82) #12
  %85 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i64 0, i64 0), i32 %42, i8* nonnull %13) #12
  call void @llvm.lifetime.end(i64 45, i8* nonnull %13) #12
  %86 = icmp ugt i64 %37, %1
  br i1 %86, label %33, label %87

; <label>:87:                                     ; preds = %81
  br label %88

; <label>:88:                                     ; preds = %87, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #12
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #10 {
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
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.49, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.50, i64 0, i64 0), i32 5) #12
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
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.51, i64 0, i64 0), i8* %22) #12
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #12
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.52, i64 0, i64 0), i8* %26) #12
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
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.49, i64 0, i64 0)
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
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i32 5) #12
  %13 = load i8*, i8** @file_name, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #12
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %17, i8* %12) #12
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.120, i64 0, i64 0), i8* %12) #12
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
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define i32 @dtoastr(i8*, i64, i32, i32, double) local_unnamed_addr #6 {
  %6 = alloca [11 x i8], align 1
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 11, i8* nonnull %7) #12
  %8 = fcmp olt double %4, 0.000000e+00
  %9 = fsub double -0.000000e+00, %4
  %10 = select i1 %8, double %9, double %4
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %7, align 1
  store i8 45, i8* %11, align 1
  %12 = and i32 %2, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 43, i8* %14, align 1
  %15 = lshr i32 %2, 1
  %16 = and i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 32, i8* %18, align 1
  %19 = lshr i32 %2, 2
  %20 = and i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 48, i8* %22, align 1
  %23 = lshr i32 %2, 3
  %24 = and i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 42, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 46, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 42, i8* %28, align 1
  %30 = trunc i32 %2 to i8
  %31 = shl i8 %30, 1
  %32 = and i8 %31, 32
  %33 = xor i8 %32, 103
  %34 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 %33, i8* %29, align 1
  store i8 0, i8* %34, align 1
  %35 = fcmp olt double %10, 0x10000000000000
  %36 = select i1 %35, i32 1, i32 15
  %37 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false)
  %38 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %36, double %4) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %57, label %40

; <label>:40:                                     ; preds = %5
  br label %41

; <label>:41:                                     ; preds = %40, %49
  %42 = phi i32 [ %51, %49 ], [ %38, %40 ]
  %43 = phi i32 [ %50, %49 ], [ %36, %40 ]
  %44 = sext i32 %42 to i64
  %45 = icmp ult i64 %44, %1
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %41
  %47 = call double @strtod(i8* nocapture %0, i8** null) #12
  %48 = fcmp oeq double %47, %4
  br i1 %48, label %55, label %49

; <label>:49:                                     ; preds = %46, %41
  %50 = add nuw nsw i32 %43, 1
  %51 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %37, i8* nonnull %7, i32 %3, i32 %50, double %4) #12
  %52 = icmp slt i32 %51, 0
  %53 = icmp sgt i32 %43, 15
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %41

; <label>:55:                                     ; preds = %46, %49
  %56 = phi i32 [ %42, %46 ], [ %51, %49 ]
  br label %57

; <label>:57:                                     ; preds = %55, %5
  %58 = phi i32 [ %38, %5 ], [ %56, %55 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %7) #12
  ret i32 %58
}

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ftoastr(i8*, i64, i32, i32, float) local_unnamed_addr #6 {
  %6 = alloca [11 x i8], align 1
  %7 = fpext float %4 to double
  %8 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 11, i8* nonnull %8) #12
  %9 = fcmp olt float %4, 0.000000e+00
  %10 = fsub float -0.000000e+00, %4
  %11 = select i1 %9, float %10, float %4
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %8, align 1
  store i8 45, i8* %12, align 1
  %13 = and i32 %2, 1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8 43, i8* %15, align 1
  %16 = lshr i32 %2, 1
  %17 = and i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 32, i8* %19, align 1
  %20 = lshr i32 %2, 2
  %21 = and i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 48, i8* %23, align 1
  %24 = lshr i32 %2, 3
  %25 = and i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 42, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 46, i8* %28, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 42, i8* %29, align 1
  %31 = trunc i32 %2 to i8
  %32 = shl i8 %31, 1
  %33 = and i8 %32, 32
  %34 = xor i8 %33, 103
  %35 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %34, i8* %30, align 1
  store i8 0, i8* %35, align 1
  %36 = fcmp olt float %11, 0x3810000000000000
  %37 = select i1 %36, i32 1, i32 6
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false)
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %37, double %7) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %58, label %41

; <label>:41:                                     ; preds = %5
  br label %42

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  %45 = sext i32 %43 to i64
  %46 = icmp ult i64 %45, %1
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %42
  %48 = call float @strtof(i8* nocapture %0, i8** null) #12
  %49 = fcmp oeq float %48, %4
  br i1 %49, label %56, label %50

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %8, i32 %3, i32 %51, double %7) #12
  %53 = icmp slt i32 %52, 0
  %54 = icmp sgt i32 %44, 7
  %55 = or i1 %54, %53
  br i1 %55, label %56, label %42

; <label>:56:                                     ; preds = %47, %50
  %57 = phi i32 [ %43, %47 ], [ %52, %50 ]
  br label %58

; <label>:58:                                     ; preds = %56, %5
  %59 = phi i32 [ %39, %5 ], [ %57, %56 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %8) #12
  ret i32 %59
}

; Function Attrs: nounwind
declare float @strtof(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @ldtoastr(i8*, i64, i32, i32, x86_fp80) local_unnamed_addr #6 {
  %6 = alloca [11 x i8], align 1
  %7 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  call void @llvm.lifetime.start(i64 11, i8* nonnull %7) #12
  %8 = fcmp olt x86_fp80 %4, 0xK00000000000000000000
  %9 = fsub x86_fp80 0xK80000000000000000000, %4
  %10 = select i1 %8, x86_fp80 %9, x86_fp80 %4
  %11 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 1
  store i8 37, i8* %7, align 1
  store i8 45, i8* %11, align 1
  %12 = and i32 %2, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 43, i8* %14, align 1
  %15 = lshr i32 %2, 1
  %16 = and i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %14, i64 %17
  store i8 32, i8* %18, align 1
  %19 = lshr i32 %2, 2
  %20 = and i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 48, i8* %22, align 1
  %23 = lshr i32 %2, 3
  %24 = and i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 42, i8* %26, align 1
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 46, i8* %27, align 1
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 42, i8* %28, align 1
  store i8 76, i8* %29, align 1
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = trunc i32 %2 to i8
  %32 = shl i8 %31, 1
  %33 = and i8 %32, 32
  %34 = xor i8 %33, 103
  %35 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %34, i8* %30, align 1
  store i8 0, i8* %35, align 1
  %36 = fcmp olt x86_fp80 %10, 0xK00018000000000000000
  %37 = select i1 %36, i32 1, i32 18
  %38 = call i64 @llvm.objectsize.i64.p0i8(i8* %0, i1 false)
  %39 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %37, x86_fp80 %4) #12
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %58, label %41

; <label>:41:                                     ; preds = %5
  br label %42

; <label>:42:                                     ; preds = %41, %50
  %43 = phi i32 [ %52, %50 ], [ %39, %41 ]
  %44 = phi i32 [ %51, %50 ], [ %37, %41 ]
  %45 = sext i32 %43 to i64
  %46 = icmp ult i64 %45, %1
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %42
  %48 = call x86_fp80 @strtold(i8* nocapture %0, i8** null) #12
  %49 = fcmp oeq x86_fp80 %48, %4
  br i1 %49, label %56, label %50

; <label>:50:                                     ; preds = %47, %42
  %51 = add nuw nsw i32 %44, 1
  %52 = call i32 (i8*, i64, i32, i64, i8*, ...) @__snprintf_chk(i8* %0, i64 %1, i32 1, i64 %38, i8* nonnull %7, i32 %3, i32 %51, x86_fp80 %4) #12
  %53 = icmp slt i32 %52, 0
  %54 = icmp sgt i32 %44, 19
  %55 = or i1 %54, %53
  br i1 %55, label %56, label %42

; <label>:56:                                     ; preds = %47, %50
  %57 = phi i32 [ %43, %47 ], [ %52, %50 ]
  br label %58

; <label>:58:                                     ; preds = %56, %5
  %59 = phi i32 [ %39, %5 ], [ %57, %56 ]
  call void @llvm.lifetime.end(i64 11, i8* nonnull %7) #12
  ret i32 %59
}

; Function Attrs: nounwind
declare x86_fp80 @strtold(i8* readonly, i8** nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.133, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
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
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.134, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.135, i64 0, i64 0), i64 3) #14
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
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.146, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.147, i64 0, i64 0), i32 %28)
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
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.147, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.147, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.147, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), %41 ]
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
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.149, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.150, i64 0, i64 0)
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
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.151, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.152, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.148, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.147, i64 0, i64 0)
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

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
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.164, i64 0, i64 0), i8* %2, i8* %3) #12
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.165, i64 0, i64 0), i32 5) #12
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #12
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.166, i64 0, i64 0), i32 5) #12
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
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.167, i64 0, i64 0), i32 5) #12
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.168, i64 0, i64 0), i32 5) #12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.169, i64 0, i64 0), i32 5) #12
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.170, i64 0, i64 0), i32 5) #12
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
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.171, i64 0, i64 0), i32 5) #12
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
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.172, i64 0, i64 0), i32 5) #12
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
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.173, i64 0, i64 0), i32 5) #12
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
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.174, i64 0, i64 0), i32 5) #12
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
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.175, i64 0, i64 0), i32 5) #12
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
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.176, i64 0, i64 0), i32 5) #12
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
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.179, i64 0, i64 0), i32 5) #12
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.180, i64 0, i64 0)) #12
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.181, i64 0, i64 0), i32 5) #12
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.182, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.183, i64 0, i64 0)) #12
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.184, i64 0, i64 0), i32 5) #12
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

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

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
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.197, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.198, i64 0, i64 0), i8* %2) #12
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xprintf(i8* noalias, ...) local_unnamed_addr #6 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %3) #12
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.201, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #12
  br label %17

; <label>:17:                                     ; preds = %1, %8, %12
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %3) #12
  ret i32 %6
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvprintf(i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

; <label>:10:                                     ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.201, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #12
  br label %15

; <label>:15:                                     ; preds = %6, %10, %2
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xfprintf(%struct._IO_FILE* noalias, i8* noalias, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #12
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %4)
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #12
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

; <label>:11:                                     ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4
  %13 = tail call i32* @__errno_location() #1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.201, i64 0, i64 0), i32 5) #12
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #12
  br label %16

; <label>:16:                                     ; preds = %2, %8, %11
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #12
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xvfprintf(%struct._IO_FILE* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %14

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9:                                      ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.201, i64 0, i64 0), i32 5) #12
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #12
  br label %14

; <label>:14:                                     ; preds = %6, %9, %3
  ret i32 %4
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
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.204, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp slt i32 %1, 0
  %17 = sext i32 %1 to i64
  br i1 %16, label %18, label %22

; <label>:18:                                     ; preds = %12
  %19 = sub nsw i64 0, %17
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.205, i64 0, i64 %19
  store i8 %2, i8* %8, align 1
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 0, i8* %21, align 1
  br label %25

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.option, %struct.option* %3, i64 %17, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

; <label>:25:                                     ; preds = %18, %22
  %26 = phi i8* [ %20, %18 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.205, i64 0, i64 0), %22 ]
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
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.211, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.212, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #15
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
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.227, i64 0, i64 0)) #12
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
  %3 = tail call i8* @nl_langinfo(i32 14) #12
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.231, i64 0, i64 0)) #12
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.232, i64 0, i64 0), %14 ], [ %9, %11 ]
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.233, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.233, i64 0, i64 0), i64 14, i32 1, i1 false) #12
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #12
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.234, i64 0, i64 0)) #12
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
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.235, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #12
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
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #12
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.230, i64 0, i64 0), %24 ]
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
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.236, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @close(i32) local_unnamed_addr #3

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
attributes #8 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
