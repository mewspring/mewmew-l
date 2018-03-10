; ModuleID = 'coreutils-8.27/src/uniq.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [173 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines, one for each group\0A\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"  -D                    print all duplicate lines\0A      --all-repeated[=METHOD]  like -D, but allow separating groups\0A                                 with an empty line;\0A                                 METHOD={none(default),prepend,separate}\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --skip-fields=N   avoid comparing the first N fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"      --group[=METHOD]  show all items, separating groups with an empty line;\0A                          METHOD={separate(default),prepend,append,both}\0A\00", align 1
@.str.7 = private unnamed_addr constant [178 x i8] c"  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.13 = private unnamed_addr constant [204 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0AAlso, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@skip_chars = internal unnamed_addr global i64 0, align 8, !dbg !92
@skip_fields = internal unnamed_addr global i64 0, align 8, !dbg !90
@check_chars = internal unnamed_addr global i64 0, align 8, !dbg !94
@output_first_repeated = internal unnamed_addr global i1 false, align 1
@output_unique = internal unnamed_addr global i1 false, align 1
@output_later_repeated = internal unnamed_addr global i1 false, align 1
@countmode = internal unnamed_addr global i1 false, align 4
@delimit_groups = internal unnamed_addr global i32 0, align 4, !dbg !107
@.str.20 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !139
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16, !dbg !159
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !153
@.str.23 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16, !dbg !171
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !167
@grouping = internal unnamed_addr global i32 0, align 4, !dbg !165
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"--group is mutually exclusive with -c/-d/-D/-u\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"grouping and printing repeat counts is meaningless\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !176
@.str.34 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !182
@.str.37 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.38 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.39 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.40 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.41 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !195
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !200
@.str.72 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4, !dbg !203
@.str.81 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1.84 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = local_unnamed_addr global i8* null, align 8, !dbg !210
@.str.98 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.99 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.100 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.104, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.110, i32 0, i32 0), i8* null], align 16, !dbg !217
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !229
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !236
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !249
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.114 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.115 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.116 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.117 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !256
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !263
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !251
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !265
@.str.130 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.131 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.132 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.133 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.134 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.135 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.136 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.137 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.138 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.139 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.140 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.141 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.142 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.143 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.146 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.147 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.148 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.149 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.150 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.151 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !270
@.str.1.164 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.168 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.169 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.170 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.173 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.174 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.192 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8, !dbg !279
@.str.3.193 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.194 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.195 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.196 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.197 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.198 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 !dbg !697 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !701, metadata !702), !dbg !703
  %2 = icmp eq i32 %0, 0, !dbg !704
  br i1 %2, label %8, label %3, !dbg !706

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !707, !tbaa !710
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !707
  %6 = load i8*, i8** @program_name, align 8, !dbg !707, !tbaa !710
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11, !dbg !714
  br label %66, !dbg !716

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !718
  %10 = load i8*, i8** @program_name, align 8, !dbg !718, !tbaa !710
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11, !dbg !720
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !722
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !722, !tbaa !710
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11, !dbg !723
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !724
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !724, !tbaa !710
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11, !dbg !727
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !729
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !729, !tbaa !710
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11, !dbg !730
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !731
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !731, !tbaa !710
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11, !dbg !732
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !733
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !733, !tbaa !710
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11, !dbg !734
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !735
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !710
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11, !dbg !736
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !737
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !710
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11, !dbg !738
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !739
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !710
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11, !dbg !740
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !741
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !741, !tbaa !710
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11, !dbg !742
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !743
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !743, !tbaa !710
  %41 = tail call i32 @fputs_unlocked(i8* %39, %struct._IO_FILE* %40) #11, !dbg !744
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #11, !dbg !745
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !710
  %44 = tail call i32 @fputs_unlocked(i8* %42, %struct._IO_FILE* %43) #11, !dbg !746
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i32 5) #11, !dbg !747
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !710
  %47 = tail call i32 @fputs_unlocked(i8* %45, %struct._IO_FILE* %46) #11, !dbg !748
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.13, i64 0, i64 0), i32 5) #11, !dbg !749
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !710
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #11, !dbg !750
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !117, metadata !702) #11, !dbg !751
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i64 0, metadata !117, metadata !702) #11, !dbg !751
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !753
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !754
  %53 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !756
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !128, metadata !702) #11, !dbg !757
  %54 = icmp eq i8* %53, null, !dbg !758
  br i1 %54, label %61, label %55, !dbg !759

; <label>:55:                                     ; preds = %8
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #13, !dbg !760
  %57 = icmp eq i32 %56, 0, !dbg !760
  br i1 %57, label %61, label %58, !dbg !762

; <label>:58:                                     ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !764
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !766
  br label %61, !dbg !768

; <label>:61:                                     ; preds = %8, %55, %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !769
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !770
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #11, !dbg !771
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0)) #11, !dbg !772
  br label %66

; <label>:66:                                     ; preds = %61, %3
  tail call void @exit(i32 %0) #14, !dbg !773
  unreachable, !dbg !773
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
define i32 @main(i32, i8**) local_unnamed_addr #6 !dbg !774 {
  %3 = alloca %struct.linebuffer, align 8
  %4 = alloca %struct.linebuffer, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca <2 x i8*>, align 16
  %9 = bitcast <2 x i8*>* %8 to [2 x i8*]*
  %10 = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !779, metadata !702), !dbg !796
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !780, metadata !702), !dbg !797
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !781, metadata !702), !dbg !798
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #11, !dbg !799
  %12 = icmp ne i8* %11, null, !dbg !800
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !783, metadata !702), !dbg !801
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !784, metadata !702), !dbg !802
  %13 = bitcast <2 x i8*>* %8 to i8*, !dbg !803
  call void @llvm.lifetime.start(i64 16, i8* nonnull %13) #11, !dbg !803
  tail call void @llvm.dbg.declare(metadata [2 x i8*]* %9, metadata !785, metadata !702), !dbg !804
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !789, metadata !702), !dbg !805
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !790, metadata !702), !dbg !806
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1, !dbg !807
  %15 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 0, !dbg !808
  store <2 x i8*> <i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)>, <2 x i8*>* %8, align 16, !dbg !809, !tbaa !710
  %16 = load i8*, i8** %1, align 8, !dbg !810, !tbaa !710
  tail call void @set_program_name(i8* %16) #11, !dbg !811
  %17 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !812
  %18 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #11, !dbg !813
  %19 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #11, !dbg !814
  %20 = tail call zeroext i1 @hard_locale(i32 3) #11, !dbg !815
  %21 = zext i1 %20 to i8, !dbg !816
  store i8 %21, i8* @hard_LC_COLLATE, align 1, !dbg !816, !tbaa !817
  %22 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !819
  store i64 0, i64* @skip_chars, align 8, !dbg !820, !tbaa !821
  store i64 0, i64* @skip_fields, align 8, !dbg !823, !tbaa !821
  store i64 -1, i64* @check_chars, align 8, !dbg !824, !tbaa !821
  store i1 true, i1* @output_first_repeated, align 1
  store i1 true, i1* @output_unique, align 1
  store i1 false, i1* @output_later_repeated, align 1
  store i1 true, i1* @countmode, align 4
  store i32 0, i32* @delimit_groups, align 4, !dbg !825, !tbaa !826
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i64* %7 to i8*
  %25 = bitcast i64* %6 to i8*
  %26 = bitcast i64* %5 to i8*
  br label %27, !dbg !827

; <label>:27:                                     ; preds = %90, %2
  %28 = phi i32 [ 0, %2 ], [ %91, %90 ]
  %29 = phi i32 [ 0, %2 ], [ %92, %90 ]
  %30 = phi i32 [ 0, %2 ], [ %93, %90 ]
  %31 = phi i8 [ 10, %2 ], [ %94, %90 ]
  %32 = phi i8 [ 0, %2 ], [ %95, %90 ]
  call void @llvm.dbg.value(metadata i8 %32, i64 0, metadata !790, metadata !702), !dbg !806
  call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !789, metadata !702), !dbg !805
  call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !784, metadata !702), !dbg !802
  call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !783, metadata !702), !dbg !801
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !781, metadata !702), !dbg !798
  %33 = icmp eq i32 %28, -1, !dbg !828
  %34 = icmp ne i32 %30, 0, !dbg !829
  %35 = and i1 %12, %34, !dbg !831
  %36 = or i1 %33, %35, !dbg !833
  br i1 %36, label %39, label %37, !dbg !833

; <label>:37:                                     ; preds = %27
  %38 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !834
  call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !781, metadata !702), !dbg !798
  switch i32 %38, label %163 [
    i32 -1, label %39
    i32 1, label %62
    i32 48, label %96
    i32 49, label %96
    i32 50, label %96
    i32 51, label %96
    i32 52, label %96
    i32 53, label %96
    i32 54, label %96
    i32 55, label %96
    i32 56, label %96
    i32 57, label %96
    i32 99, label %111
    i32 100, label %112
    i32 68, label %113
    i32 128, label %123
    i32 102, label %133
    i32 105, label %141
    i32 115, label %142
    i32 117, label %150
    i32 119, label %151
    i32 122, label %90
    i32 -130, label %159
    i32 -131, label %160
  ], !dbg !835

; <label>:39:                                     ; preds = %37, %27
  %40 = phi i32 [ %28, %27 ], [ -1, %37 ]
  call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !781, metadata !702), !dbg !798
  %41 = load i32, i32* @optind, align 4, !dbg !837, !tbaa !840
  %42 = icmp slt i32 %41, %0, !dbg !842
  br i1 %42, label %43, label %164, !dbg !843

; <label>:43:                                     ; preds = %39
  %44 = icmp eq i32 %30, 2, !dbg !844
  br i1 %44, label %45, label %52, !dbg !846

; <label>:45:                                     ; preds = %43
  %46 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !847
  %47 = load i32, i32* @optind, align 4, !dbg !849, !tbaa !840
  %48 = sext i32 %47 to i64, !dbg !850
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !850
  %50 = load i8*, i8** %49, align 8, !dbg !850, !tbaa !710
  %51 = call i8* @quote(i8* %50) #11, !dbg !851
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %46, i8* %51) #11, !dbg !853
  call void @usage(i32 1) #15, !dbg !855
  unreachable, !dbg !855

; <label>:52:                                     ; preds = %43
  %53 = add nsw i32 %41, 1, !dbg !856
  store i32 %53, i32* @optind, align 4, !dbg !856, !tbaa !840
  %54 = sext i32 %41 to i64, !dbg !857
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !857
  %56 = bitcast i8** %55 to i64*, !dbg !857
  %57 = load i64, i64* %56, align 8, !dbg !857, !tbaa !710
  %58 = add i32 %30, 1, !dbg !858
  call void @llvm.dbg.value(metadata i32 %58, i64 0, metadata !784, metadata !702), !dbg !802
  %59 = zext i32 %30 to i64, !dbg !859
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %59, !dbg !859
  %61 = bitcast i8** %60 to i64*, !dbg !860
  store i64 %57, i64* %61, align 8, !dbg !860, !tbaa !710
  br label %90, !dbg !861

; <label>:62:                                     ; preds = %37
  call void @llvm.lifetime.start(i64 8, i8* nonnull %23) #11, !dbg !862
  %63 = load i8*, i8** @optarg, align 8, !dbg !863, !tbaa !710
  %64 = load i8, i8* %63, align 1, !dbg !863, !tbaa !826
  %65 = icmp eq i8 %64, 43, !dbg !865
  br i1 %65, label %66, label %76, !dbg !866

; <label>:66:                                     ; preds = %62
  %67 = call i32 @posix2_version() #11, !dbg !867
  call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !872, metadata !702) #11, !dbg !875
  %68 = add i32 %67, -200112, !dbg !876
  %69 = icmp ult i32 %68, 697, !dbg !876
  br i1 %69, label %76, label %70, !dbg !877

; <label>:70:                                     ; preds = %66
  %71 = load i8*, i8** @optarg, align 8, !dbg !878, !tbaa !710
  call void @llvm.dbg.value(metadata i64* %10, i64 0, metadata !791, metadata !879), !dbg !880
  %72 = call i32 @xstrtoul(i8* %71, i8** null, i32 10, i64* nonnull %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !881
  %73 = icmp eq i32 %72, 0, !dbg !882
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !791, metadata !702), !dbg !880
  br i1 %73, label %74, label %76, !dbg !883

; <label>:74:                                     ; preds = %70
  %75 = load i64, i64* %10, align 8, !dbg !884
  store i64 %75, i64* @skip_chars, align 8, !dbg !885, !tbaa !821
  br label %88, !dbg !886

; <label>:76:                                     ; preds = %70, %66, %62
  %77 = icmp eq i32 %30, 2, !dbg !887
  br i1 %77, label %78, label %82, !dbg !889

; <label>:78:                                     ; preds = %76
  %79 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !890
  %80 = load i8*, i8** @optarg, align 8, !dbg !892, !tbaa !710
  %81 = call i8* @quote(i8* %80) #11, !dbg !893
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %79, i8* %81) #11, !dbg !895
  call void @usage(i32 1) #15, !dbg !897
  unreachable, !dbg !897

; <label>:82:                                     ; preds = %76
  %83 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !898, !tbaa !710
  %84 = add i32 %30, 1, !dbg !899
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !784, metadata !702), !dbg !802
  %85 = zext i32 %30 to i64, !dbg !900
  %86 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %85, !dbg !900
  %87 = bitcast i8** %86 to i64*, !dbg !901
  store i64 %83, i64* %87, align 8, !dbg !901, !tbaa !710
  br label %88

; <label>:88:                                     ; preds = %82, %74
  %89 = phi i32 [ %84, %82 ], [ %30, %74 ]
  call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !784, metadata !702), !dbg !802
  call void @llvm.lifetime.end(i64 8, i8* nonnull %23) #11, !dbg !902
  br label %90, !dbg !903

; <label>:90:                                     ; preds = %88, %111, %112, %121, %131, %139, %141, %148, %150, %157, %52, %109, %110, %37
  %91 = phi i32 [ %40, %52 ], [ 119, %157 ], [ 117, %150 ], [ 115, %148 ], [ 105, %141 ], [ 102, %139 ], [ 128, %131 ], [ 68, %121 ], [ 100, %112 ], [ 99, %111 ], [ 1, %88 ], [ %38, %109 ], [ %38, %110 ], [ 122, %37 ]
  %92 = phi i32 [ %29, %52 ], [ %29, %157 ], [ %29, %150 ], [ %29, %148 ], [ %29, %141 ], [ 2, %139 ], [ %29, %131 ], [ %29, %121 ], [ %29, %112 ], [ %29, %111 ], [ %29, %88 ], [ 1, %109 ], [ 1, %110 ], [ %29, %37 ]
  %93 = phi i32 [ %58, %52 ], [ %30, %157 ], [ %30, %150 ], [ %30, %148 ], [ %30, %141 ], [ %30, %139 ], [ %30, %131 ], [ %30, %121 ], [ %30, %112 ], [ %30, %111 ], [ %89, %88 ], [ %30, %109 ], [ %30, %110 ], [ %30, %37 ]
  %94 = phi i8 [ %31, %52 ], [ %31, %157 ], [ %31, %150 ], [ %31, %148 ], [ %31, %141 ], [ %31, %139 ], [ %31, %131 ], [ %31, %121 ], [ %31, %112 ], [ %31, %111 ], [ %31, %88 ], [ %31, %109 ], [ %31, %110 ], [ 0, %37 ]
  %95 = phi i8 [ %32, %52 ], [ %32, %157 ], [ 1, %150 ], [ %32, %148 ], [ %32, %141 ], [ %32, %139 ], [ %32, %131 ], [ 1, %121 ], [ 1, %112 ], [ 1, %111 ], [ %32, %88 ], [ %32, %109 ], [ %32, %110 ], [ %32, %37 ]
  br label %27, !dbg !806, !llvm.loop !904

; <label>:96:                                     ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %97 = icmp eq i32 %29, 2, !dbg !906
  br i1 %97, label %98, label %99, !dbg !909

; <label>:98:                                     ; preds = %96
  store i64 0, i64* @skip_fields, align 8, !dbg !910, !tbaa !821
  br label %102, !dbg !911

; <label>:99:                                     ; preds = %96
  %100 = load i64, i64* @skip_fields, align 8, !dbg !911, !tbaa !821
  %101 = icmp ugt i64 %100, 1844674407370955161, !dbg !911
  br i1 %101, label %110, label %102, !dbg !911

; <label>:102:                                    ; preds = %98, %99
  %103 = phi i64 [ 0, %98 ], [ %100, %99 ]
  %104 = mul i64 %103, 10, !dbg !913
  %105 = add nsw i32 %38, -48, !dbg !913
  %106 = sext i32 %105 to i64, !dbg !913
  %107 = add i64 %104, %106, !dbg !913
  %108 = icmp ult i64 %107, %103, !dbg !913
  br i1 %108, label %110, label %109, !dbg !913

; <label>:109:                                    ; preds = %102
  store i64 %107, i64* @skip_fields, align 8, !dbg !915, !tbaa !821
  br label %90

; <label>:110:                                    ; preds = %102, %99
  store i64 -1, i64* @skip_fields, align 8, !dbg !917, !tbaa !821
  br label %90, !dbg !918

; <label>:111:                                    ; preds = %37
  store i1 false, i1* @countmode, align 4
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !790, metadata !702), !dbg !806
  br label %90, !dbg !919

; <label>:112:                                    ; preds = %37
  store i1 false, i1* @output_unique, align 1
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !790, metadata !702), !dbg !806
  br label %90, !dbg !920

; <label>:113:                                    ; preds = %37
  store i1 false, i1* @output_unique, align 1
  store i1 true, i1* @output_later_repeated, align 1
  %114 = load i8*, i8** @optarg, align 8, !dbg !921, !tbaa !710
  %115 = icmp eq i8* %114, null, !dbg !923
  br i1 %115, label %121, label %116, !dbg !924

; <label>:116:                                    ; preds = %113
  %117 = load void ()*, void ()** @argmatch_die, align 8, !dbg !925, !tbaa !710
  %118 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %114, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %117) #11, !dbg !925
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %118, !dbg !925
  %120 = load i32, i32* %119, align 4, !dbg !925, !tbaa !826
  br label %121

; <label>:121:                                    ; preds = %113, %116
  %122 = phi i32 [ %120, %116 ], [ 0, %113 ]
  store i32 %122, i32* @delimit_groups, align 4, !tbaa !826
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !790, metadata !702), !dbg !806
  br label %90, !dbg !926

; <label>:123:                                    ; preds = %37
  %124 = load i8*, i8** @optarg, align 8, !dbg !927, !tbaa !710
  %125 = icmp eq i8* %124, null, !dbg !929
  br i1 %125, label %131, label %126, !dbg !930

; <label>:126:                                    ; preds = %123
  %127 = load void ()*, void ()** @argmatch_die, align 8, !dbg !931, !tbaa !710
  %128 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %124, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %127) #11, !dbg !931
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %128, !dbg !931
  %130 = load i32, i32* %129, align 4, !dbg !931, !tbaa !826
  br label %131

; <label>:131:                                    ; preds = %123, %126
  %132 = phi i32 [ %130, %126 ], [ 3, %123 ]
  store i32 %132, i32* @grouping, align 4, !tbaa !826
  br label %90, !dbg !932

; <label>:133:                                    ; preds = %37
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !783, metadata !702), !dbg !801
  %134 = load i8*, i8** @optarg, align 8, !dbg !933, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %134, i64 0, metadata !934, metadata !702) #11, !dbg !941
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i64 0, metadata !939, metadata !702) #11, !dbg !943
  call void @llvm.lifetime.start(i64 8, i8* nonnull %24) #11, !dbg !944
  call void @llvm.dbg.value(metadata i64* %7, i64 0, metadata !940, metadata !879) #11, !dbg !945
  %135 = call i32 @xstrtoul(i8* %134, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !946
  %136 = icmp ult i32 %135, 2, !dbg !947
  br i1 %136, label %139, label %137, !dbg !947

; <label>:137:                                    ; preds = %133
  %138 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 5) #11, !dbg !948
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %134, i8* %138) #11, !dbg !950
  unreachable, !dbg !948

; <label>:139:                                    ; preds = %133
  %140 = load i64, i64* %7, align 8, !dbg !952, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %140, i64 0, metadata !940, metadata !702) #11, !dbg !945
  call void @llvm.lifetime.end(i64 8, i8* nonnull %24) #11, !dbg !953
  store i64 %140, i64* @skip_fields, align 8, !dbg !954, !tbaa !821
  br label %90, !dbg !955

; <label>:141:                                    ; preds = %37
  store i1 true, i1* @ignore_case, align 1
  br label %90, !dbg !956

; <label>:142:                                    ; preds = %37
  %143 = load i8*, i8** @optarg, align 8, !dbg !957, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %143, i64 0, metadata !934, metadata !702) #11, !dbg !958
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i64 0, metadata !939, metadata !702) #11, !dbg !960
  call void @llvm.lifetime.start(i64 8, i8* nonnull %25) #11, !dbg !961
  call void @llvm.dbg.value(metadata i64* %6, i64 0, metadata !940, metadata !879) #11, !dbg !962
  %144 = call i32 @xstrtoul(i8* %143, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !963
  %145 = icmp ult i32 %144, 2, !dbg !964
  br i1 %145, label %148, label %146, !dbg !964

; <label>:146:                                    ; preds = %142
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !965
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %143, i8* %147) #11, !dbg !966
  unreachable, !dbg !965

; <label>:148:                                    ; preds = %142
  %149 = load i64, i64* %6, align 8, !dbg !967, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %149, i64 0, metadata !940, metadata !702) #11, !dbg !962
  call void @llvm.lifetime.end(i64 8, i8* nonnull %25) #11, !dbg !968
  store i64 %149, i64* @skip_chars, align 8, !dbg !969, !tbaa !821
  br label %90, !dbg !970

; <label>:150:                                    ; preds = %37
  store i1 false, i1* @output_first_repeated, align 1
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !790, metadata !702), !dbg !806
  br label %90, !dbg !971

; <label>:151:                                    ; preds = %37
  %152 = load i8*, i8** @optarg, align 8, !dbg !972, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %152, i64 0, metadata !934, metadata !702) #11, !dbg !973
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i64 0, metadata !939, metadata !702) #11, !dbg !975
  call void @llvm.lifetime.start(i64 8, i8* nonnull %26) #11, !dbg !976
  call void @llvm.dbg.value(metadata i64* %5, i64 0, metadata !940, metadata !879) #11, !dbg !977
  %153 = call i32 @xstrtoul(i8* %152, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #11, !dbg !978
  %154 = icmp ult i32 %153, 2, !dbg !979
  br i1 %154, label %157, label %155, !dbg !979

; <label>:155:                                    ; preds = %151
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !980
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %152, i8* %156) #11, !dbg !981
  unreachable, !dbg !980

; <label>:157:                                    ; preds = %151
  %158 = load i64, i64* %5, align 8, !dbg !982, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %158, i64 0, metadata !940, metadata !702) #11, !dbg !977
  call void @llvm.lifetime.end(i64 8, i8* nonnull %26) #11, !dbg !983
  store i64 %158, i64* @check_chars, align 8, !dbg !984, !tbaa !821
  br label %90, !dbg !985

; <label>:159:                                    ; preds = %37
  call void @usage(i32 0) #15, !dbg !986
  unreachable, !dbg !986

; <label>:160:                                    ; preds = %37
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !710
  %162 = load i8*, i8** @Version, align 8, !dbg !987, !tbaa !710
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #11, !dbg !987
  call void @exit(i32 0) #14, !dbg !988
  unreachable, !dbg !987

; <label>:163:                                    ; preds = %37
  call void @usage(i32 1) #15, !dbg !990
  unreachable, !dbg !990

; <label>:164:                                    ; preds = %39
  %165 = load i32, i32* @grouping, align 4, !dbg !991, !tbaa !826
  %166 = icmp eq i32 %165, 0, !dbg !993
  %167 = icmp eq i8 %32, 0, !dbg !994
  %168 = or i1 %167, %166, !dbg !996
  br i1 %168, label %171, label %169, !dbg !996

; <label>:169:                                    ; preds = %164
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !997
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %170) #11, !dbg !999
  call void @usage(i32 1) #15, !dbg !1001
  unreachable, !dbg !1001

; <label>:171:                                    ; preds = %164
  %172 = icmp ne i32 %165, 0, !dbg !1002
  %173 = load i1, i1* @countmode, align 4
  %174 = xor i1 %173, true, !dbg !1004
  %175 = and i1 %172, %174, !dbg !1006
  br i1 %175, label %176, label %178, !dbg !1006

; <label>:176:                                    ; preds = %171
  %177 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !1007
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %177) #11, !dbg !1009
  call void @usage(i32 1) #15, !dbg !1010
  unreachable, !dbg !1010

; <label>:178:                                    ; preds = %171
  br i1 %173, label %183, label %179, !dbg !1011

; <label>:179:                                    ; preds = %178
  %180 = load i1, i1* @output_later_repeated, align 1
  br i1 %180, label %181, label %183, !dbg !1013

; <label>:181:                                    ; preds = %179
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !1015
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %182) #11, !dbg !1017
  call void @usage(i32 1) #15, !dbg !1018
  unreachable, !dbg !1018

; <label>:183:                                    ; preds = %178, %179
  %184 = load i8*, i8** %15, align 16, !dbg !1019, !tbaa !710
  %185 = load i8*, i8** %14, align 8, !dbg !1020, !tbaa !710
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1021, metadata !702) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !1026, metadata !702) #11, !dbg !1085
  call void @llvm.dbg.value(metadata i8 %31, i64 0, metadata !1027, metadata !702) #11, !dbg !1086
  %186 = bitcast %struct.linebuffer* %3 to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 24, i8* nonnull %186) #11, !dbg !1087
  %187 = bitcast %struct.linebuffer* %4 to i8*, !dbg !1087
  call void @llvm.lifetime.start(i64 24, i8* nonnull %187) #11, !dbg !1087
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1042, metadata !702) #11, !dbg !1088
  call void @llvm.dbg.value(metadata i8* %184, i64 0, metadata !1043, metadata !702) #11, !dbg !1089
  %188 = load i8, i8* %184, align 1, !dbg !1090, !tbaa !826
  %189 = icmp eq i8 %188, 45, !dbg !1092
  br i1 %189, label %190, label %194, !dbg !1095

; <label>:190:                                    ; preds = %183
  %191 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1097
  %192 = load i8, i8* %191, align 1, !dbg !1097, !tbaa !826
  %193 = icmp eq i8 %192, 0, !dbg !1100
  br i1 %193, label %202, label %194, !dbg !1102

; <label>:194:                                    ; preds = %190, %183
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1103, !tbaa !710
  %196 = call %struct._IO_FILE* @freopen_safer(i8* nonnull %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* %195) #11, !dbg !1105
  %197 = icmp eq %struct._IO_FILE* %196, null, !dbg !1105
  br i1 %197, label %198, label %202, !dbg !1106

; <label>:198:                                    ; preds = %194
  %199 = tail call i32* @__errno_location() #1, !dbg !1108
  %200 = load i32, i32* %199, align 4, !dbg !1108, !tbaa !840
  %201 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %184) #11, !dbg !1109
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %201) #11, !dbg !1111
  unreachable, !dbg !1108

; <label>:202:                                    ; preds = %194, %190
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !1049, metadata !702) #11, !dbg !1113
  call void @llvm.dbg.value(metadata i8* %185, i64 0, metadata !1050, metadata !702) #11, !dbg !1114
  %203 = load i8, i8* %185, align 1, !dbg !1115, !tbaa !826
  %204 = icmp eq i8 %203, 45, !dbg !1117
  br i1 %204, label %205, label %209, !dbg !1120

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1122
  %207 = load i8, i8* %206, align 1, !dbg !1122, !tbaa !826
  %208 = icmp eq i8 %207, 0, !dbg !1125
  br i1 %208, label %217, label %209, !dbg !1127

; <label>:209:                                    ; preds = %205, %202
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1128, !tbaa !710
  %211 = call %struct._IO_FILE* @freopen_safer(i8* nonnull %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* %210) #11, !dbg !1130
  %212 = icmp eq %struct._IO_FILE* %211, null, !dbg !1130
  br i1 %212, label %213, label %217, !dbg !1131

; <label>:213:                                    ; preds = %209
  %214 = tail call i32* @__errno_location() #1, !dbg !1132
  %215 = load i32, i32* %214, align 4, !dbg !1132, !tbaa !840
  %216 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %185) #11, !dbg !1133
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %216) #11, !dbg !1135
  unreachable, !dbg !1132

; <label>:217:                                    ; preds = %209, %205
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1137, !tbaa !710
  call void @fadvise(%struct._IO_FILE* %218, i32 2) #11, !dbg !1138
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, i64 0, metadata !1028, metadata !879) #11, !dbg !1141
  call void @initbuffer(%struct.linebuffer* nonnull %3) #11, !dbg !1142
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !1035, metadata !879) #11, !dbg !1143
  call void @initbuffer(%struct.linebuffer* nonnull %4) #11, !dbg !1144
  %219 = load i1, i1* @output_unique, align 1
  br i1 %219, label %220, label %326, !dbg !1145

; <label>:220:                                    ; preds = %217
  %221 = load i1, i1* @output_first_repeated, align 1
  %222 = load i1, i1* @countmode, align 4
  %223 = and i1 %221, %222, !dbg !1146
  br i1 %223, label %224, label %326, !dbg !1146

; <label>:224:                                    ; preds = %220
  %225 = zext i8 %31 to i32
  br label %226, !dbg !1139

; <label>:226:                                    ; preds = %306, %224
  %227 = phi i8 [ 0, %224 ], [ 1, %306 ]
  %228 = phi i64 [ undef, %224 ], [ %253, %306 ]
  %229 = phi i8* [ undef, %224 ], [ %247, %306 ]
  %230 = phi %struct.linebuffer* [ %4, %224 ], [ %231, %306 ]
  %231 = phi %struct.linebuffer* [ %3, %224 ], [ %230, %306 ]
  %232 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %231, i64 0, i32 1
  %233 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %231, i64 0, i32 2
  %234 = bitcast i8** %233 to i64*
  %235 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %230, i64 0, i32 1
  %236 = icmp ne i8 %227, 0
  br label %237, !dbg !1139

; <label>:237:                                    ; preds = %301, %226
  call void @llvm.dbg.value(metadata %struct.linebuffer* %231, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.linebuffer* %230, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i8* %229, i64 0, metadata !1053, metadata !702) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !1056, metadata !702) #11, !dbg !1149
  call void @llvm.dbg.value(metadata i8 %227, i64 0, metadata !1057, metadata !702) #11, !dbg !1150
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1151, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %238, i64 0, metadata !1153, metadata !702) #11, !dbg !1213
  %239 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %238, i64 0, i32 0, !dbg !1215
  %240 = load i32, i32* %239, align 8, !dbg !1215, !tbaa !1216
  %241 = and i32 %240, 16, !dbg !1215
  %242 = icmp eq i32 %241, 0, !dbg !1219
  br i1 %242, label %243, label %311, !dbg !1220

; <label>:243:                                    ; preds = %237
  %244 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %231, %struct._IO_FILE* %238, i8 signext %31) #11, !dbg !1221
  %245 = icmp eq %struct.linebuffer* %244, null, !dbg !1223
  br i1 %245, label %311, label %246, !dbg !1224

; <label>:246:                                    ; preds = %243
  %247 = call fastcc i8* @find_field(%struct.linebuffer* %231) #13, !dbg !1225
  call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !1058, metadata !702) #11, !dbg !1226
  %248 = load i64, i64* %232, align 8, !dbg !1227, !tbaa !1228
  %249 = add i64 %248, -1, !dbg !1230
  %250 = load i64, i64* %234, align 8, !dbg !1231, !tbaa !1232
  %251 = ptrtoint i8* %247 to i64, !dbg !1233
  %252 = sub i64 %250, %251, !dbg !1234
  %253 = add i64 %249, %252, !dbg !1234
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1060, metadata !702) #11, !dbg !1235
  %254 = load i64, i64* %235, align 8, !dbg !1236, !tbaa !1228
  %255 = icmp eq i64 %254, 0, !dbg !1237
  br i1 %255, label %279, label %256, !dbg !1238

; <label>:256:                                    ; preds = %246
  call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !1239, metadata !702) #11, !dbg !1247
  call void @llvm.dbg.value(metadata i8* %229, i64 0, metadata !1244, metadata !702) #11, !dbg !1250
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1245, metadata !702) #11, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %228, i64 0, metadata !1246, metadata !702) #11, !dbg !1252
  %257 = load i64, i64* @check_chars, align 8, !dbg !1253, !tbaa !821
  %258 = icmp ult i64 %257, %253, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1245, metadata !702) #11, !dbg !1251
  %259 = select i1 %258, i64 %257, i64 %253, !dbg !1256
  call void @llvm.dbg.value(metadata i64 %259, i64 0, metadata !1245, metadata !702) #11, !dbg !1251
  %260 = icmp ult i64 %257, %228, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %257, i64 0, metadata !1246, metadata !702) #11, !dbg !1252
  %261 = select i1 %260, i64 %257, i64 %228, !dbg !1259
  call void @llvm.dbg.value(metadata i64 %261, i64 0, metadata !1246, metadata !702) #11, !dbg !1252
  %262 = load i1, i1* @ignore_case, align 1
  br i1 %262, label %263, label %268, !dbg !1260

; <label>:263:                                    ; preds = %256
  %264 = icmp eq i64 %259, %261, !dbg !1261
  br i1 %264, label %265, label %279, !dbg !1264

; <label>:265:                                    ; preds = %263
  %266 = call i32 @memcasecmp(i8* %247, i8* %229, i64 %259) #13, !dbg !1265
  %267 = icmp ne i32 %266, 0, !dbg !1267
  br label %279, !dbg !1267

; <label>:268:                                    ; preds = %256
  %269 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1268, !tbaa !817, !range !1270
  %270 = icmp eq i8 %269, 0, !dbg !1268
  br i1 %270, label %274, label %271, !dbg !1271

; <label>:271:                                    ; preds = %268
  %272 = call i32 @xmemcoll(i8* %247, i64 %259, i8* %229, i64 %261) #11, !dbg !1272
  %273 = icmp ne i32 %272, 0, !dbg !1273
  br label %279, !dbg !1274

; <label>:274:                                    ; preds = %268
  %275 = icmp eq i64 %259, %261, !dbg !1275
  br i1 %275, label %276, label %279, !dbg !1276

; <label>:276:                                    ; preds = %274
  %277 = call i32 @memcmp(i8* %247, i8* %229, i64 %259) #13, !dbg !1277
  %278 = icmp ne i32 %277, 0, !dbg !1279
  br label %279, !dbg !1279

; <label>:279:                                    ; preds = %276, %274, %271, %265, %263, %246
  %280 = phi i1 [ true, %246 ], [ %273, %271 ], [ true, %263 ], [ %267, %265 ], [ true, %274 ], [ %278, %276 ]
  %281 = load i32, i32* @grouping, align 4, !dbg !1280
  %282 = icmp ne i32 %281, 0, !dbg !1283
  %283 = and i1 %280, %282, !dbg !1284
  br i1 %283, label %284, label %301, !dbg !1284

; <label>:284:                                    ; preds = %279
  switch i32 %281, label %285 [
    i32 4, label %289
    i32 1, label %289
  ], !dbg !1285

; <label>:285:                                    ; preds = %284
  %286 = or i32 %281, 1, !dbg !1286
  %287 = icmp eq i32 %286, 3, !dbg !1286
  %288 = and i1 %236, %287, !dbg !1287
  br i1 %288, label %289, label %305, !dbg !1287

; <label>:289:                                    ; preds = %285, %284, %284
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1288, !tbaa !710
  %291 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %290, i64 0, i32 5, !dbg !1288
  %292 = load i8*, i8** %291, align 8, !dbg !1288, !tbaa !1295
  %293 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %290, i64 0, i32 6, !dbg !1288
  %294 = load i8*, i8** %293, align 8, !dbg !1288, !tbaa !1296
  %295 = icmp ult i8* %292, %294, !dbg !1288
  br i1 %295, label %299, label %296, !dbg !1288, !prof !1297

; <label>:296:                                    ; preds = %289
  %297 = call i32 @__overflow(%struct._IO_FILE* %290, i32 %225) #11, !dbg !1298
  %298 = load i32, i32* @grouping, align 4
  br label %301, !dbg !1298

; <label>:299:                                    ; preds = %289
  %300 = getelementptr inbounds i8, i8* %292, i64 1, !dbg !1300
  store i8* %300, i8** %291, align 8, !dbg !1300, !tbaa !1295
  store i8 %31, i8* %292, align 1, !dbg !1300, !tbaa !826
  br label %306, !dbg !1300

; <label>:301:                                    ; preds = %296, %279
  %302 = phi i32 [ %298, %296 ], [ %281, %279 ], !dbg !1302
  %303 = icmp ne i32 %302, 0, !dbg !1304
  %304 = or i1 %280, %303, !dbg !1305
  br i1 %304, label %305, label %237, !dbg !1305

; <label>:305:                                    ; preds = %285, %301
  br label %306, !dbg !1306

; <label>:306:                                    ; preds = %305, %299
  %307 = load i8*, i8** %233, align 8, !dbg !1306, !tbaa !1232
  %308 = load i64, i64* %232, align 8, !dbg !1306, !tbaa !1228
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1306, !tbaa !710
  %310 = call i64 @fwrite_unlocked(i8* %307, i64 1, i64 %308, %struct._IO_FILE* %309) #11, !dbg !1306
  call void @llvm.dbg.value(metadata %struct.linebuffer* %231, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata %struct.linebuffer* %230, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %247, i64 0, metadata !1053, metadata !702) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %253, i64 0, metadata !1056, metadata !702) #11, !dbg !1149
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1057, metadata !702) #11, !dbg !1150
  br label %226, !dbg !1307

; <label>:311:                                    ; preds = %243, %237
  call void @llvm.dbg.value(metadata i8 %227, i64 0, metadata !1057, metadata !702) #11, !dbg !1150
  %312 = load i32, i32* @grouping, align 4, !dbg !1308, !tbaa !826
  switch i32 %312, label %478 [
    i32 4, label %313
    i32 2, label %313
  ], !dbg !1310

; <label>:313:                                    ; preds = %311, %311
  %314 = icmp eq i8 %227, 0, !dbg !1311
  br i1 %314, label %478, label %315, !dbg !1313

; <label>:315:                                    ; preds = %313
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1315, !tbaa !710
  %317 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %316, i64 0, i32 5, !dbg !1315
  %318 = load i8*, i8** %317, align 8, !dbg !1315, !tbaa !1295
  %319 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %316, i64 0, i32 6, !dbg !1315
  %320 = load i8*, i8** %319, align 8, !dbg !1315, !tbaa !1296
  %321 = icmp ult i8* %318, %320, !dbg !1315
  br i1 %321, label %324, label %322, !dbg !1315, !prof !1297

; <label>:322:                                    ; preds = %315
  %323 = call i32 @__overflow(%struct._IO_FILE* %316, i32 %225) #11, !dbg !1317
  br label %478, !dbg !1317

; <label>:324:                                    ; preds = %315
  %325 = getelementptr inbounds i8, i8* %318, i64 1, !dbg !1318
  store i8* %325, i8** %317, align 8, !dbg !1318, !tbaa !1295
  store i8 %31, i8* %318, align 1, !dbg !1318, !tbaa !826
  br label %478, !dbg !1318

; <label>:326:                                    ; preds = %220, %217
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1321, !tbaa !710
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !1035, metadata !879) #11, !dbg !1143
  %328 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %4, %struct._IO_FILE* %327, i8 signext %31) #11, !dbg !1323
  %329 = icmp eq %struct.linebuffer* %328, null, !dbg !1324
  br i1 %329, label %478, label %330, !dbg !1325

; <label>:330:                                    ; preds = %326
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, i64 0, metadata !1035, metadata !879) #11, !dbg !1143
  %331 = call fastcc i8* @find_field(%struct.linebuffer* nonnull %4) #13, !dbg !1326
  call void @llvm.dbg.value(metadata i8* %331, i64 0, metadata !1066, metadata !702) #11, !dbg !1327
  %332 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 1, !dbg !1328
  %333 = load i64, i64* %332, align 8, !dbg !1328, !tbaa !1228
  %334 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1329
  %335 = bitcast i8** %334 to i64*, !dbg !1329
  %336 = load i64, i64* %335, align 8, !dbg !1329, !tbaa !1232
  %337 = ptrtoint i8* %331 to i64, !dbg !1330
  %338 = add i64 %333, -1, !dbg !1331
  %339 = sub i64 %338, %337, !dbg !1332
  %340 = add i64 %339, %336, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %340, i64 0, metadata !1068, metadata !702) #11, !dbg !1333
  %341 = zext i8 %31 to i32
  br label %342, !dbg !1334

; <label>:342:                                    ; preds = %451, %330
  %343 = phi i8* [ %365, %451 ], [ %331, %330 ]
  %344 = phi i64 [ %371, %451 ], [ %340, %330 ]
  %345 = phi i64 [ %452, %451 ], [ 0, %330 ]
  %346 = phi i8 [ %430, %451 ], [ 1, %330 ]
  %347 = phi %struct.linebuffer* [ %348, %451 ], [ %4, %330 ]
  %348 = phi %struct.linebuffer* [ %347, %451 ], [ %3, %330 ]
  %349 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %348, i64 0, i32 1
  %350 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %348, i64 0, i32 2
  %351 = bitcast i8** %350 to i64*
  %352 = and i8 %346, 1
  %353 = icmp eq i8 %352, 0
  br label %354, !dbg !1139

; <label>:354:                                    ; preds = %424, %342
  %355 = phi i64 [ %401, %424 ], [ %345, %342 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i8 %346, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1068, metadata !702) #11, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1066, metadata !702) #11, !dbg !1327
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1335, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %356, i64 0, metadata !1153, metadata !702) #11, !dbg !1337
  %357 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %356, i64 0, i32 0, !dbg !1339
  %358 = load i32, i32* %357, align 8, !dbg !1339, !tbaa !1216
  %359 = and i32 %358, 16, !dbg !1339
  %360 = icmp eq i32 %359, 0, !dbg !1340
  br i1 %360, label %361, label %459, !dbg !1341

; <label>:361:                                    ; preds = %354
  %362 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %348, %struct._IO_FILE* %356, i8 signext %31) #11, !dbg !1342
  %363 = icmp eq %struct.linebuffer* %362, null, !dbg !1344
  br i1 %363, label %453, label %364, !dbg !1345

; <label>:364:                                    ; preds = %361
  %365 = call fastcc i8* @find_field(%struct.linebuffer* %348) #13, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !1077, metadata !702) #11, !dbg !1347
  %366 = load i64, i64* %349, align 8, !dbg !1348, !tbaa !1228
  %367 = add i64 %366, -1, !dbg !1349
  %368 = load i64, i64* %351, align 8, !dbg !1350, !tbaa !1232
  %369 = ptrtoint i8* %365 to i64, !dbg !1351
  %370 = sub i64 %368, %369, !dbg !1352
  %371 = add i64 %367, %370, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1078, metadata !702) #11, !dbg !1353
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !1239, metadata !702) #11, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1244, metadata !702) #11, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1245, metadata !702) #11, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1246, metadata !702) #11, !dbg !1358
  %372 = load i64, i64* @check_chars, align 8, !dbg !1359, !tbaa !821
  %373 = icmp ult i64 %372, %371, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1245, metadata !702) #11, !dbg !1357
  %374 = select i1 %373, i64 %372, i64 %371, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %374, i64 0, metadata !1245, metadata !702) #11, !dbg !1357
  %375 = icmp ult i64 %372, %344, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %372, i64 0, metadata !1246, metadata !702) #11, !dbg !1358
  %376 = select i1 %375, i64 %372, i64 %344, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %376, i64 0, metadata !1246, metadata !702) #11, !dbg !1358
  %377 = load i1, i1* @ignore_case, align 1
  br i1 %377, label %378, label %383, !dbg !1364

; <label>:378:                                    ; preds = %364
  %379 = icmp eq i64 %374, %376, !dbg !1365
  br i1 %379, label %380, label %394, !dbg !1366

; <label>:380:                                    ; preds = %378
  %381 = call i32 @memcasecmp(i8* %365, i8* %343, i64 %374) #13, !dbg !1367
  %382 = icmp ne i32 %381, 0, !dbg !1368
  br label %394, !dbg !1368

; <label>:383:                                    ; preds = %364
  %384 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1369, !tbaa !817, !range !1270
  %385 = icmp eq i8 %384, 0, !dbg !1369
  br i1 %385, label %389, label %386, !dbg !1370

; <label>:386:                                    ; preds = %383
  %387 = call i32 @xmemcoll(i8* %365, i64 %374, i8* %343, i64 %376) #11, !dbg !1371
  %388 = icmp ne i32 %387, 0, !dbg !1372
  br label %394, !dbg !1373

; <label>:389:                                    ; preds = %383
  %390 = icmp eq i64 %374, %376, !dbg !1374
  br i1 %390, label %391, label %394, !dbg !1375

; <label>:391:                                    ; preds = %389
  %392 = call i32 @memcmp(i8* %365, i8* %343, i64 %374) #13, !dbg !1376
  %393 = icmp ne i32 %392, 0, !dbg !1377
  br label %394, !dbg !1377

; <label>:394:                                    ; preds = %391, %389, %386, %380, %378
  %395 = phi i1 [ %388, %386 ], [ true, %378 ], [ %382, %380 ], [ true, %389 ], [ %393, %391 ]
  %396 = xor i1 %395, true, !dbg !1378
  %397 = zext i1 %396 to i64, !dbg !1379
  %398 = add i64 %397, %355, !dbg !1380
  call void @llvm.dbg.value(metadata i64 %398, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  %399 = icmp eq i64 %398, -1, !dbg !1381
  %400 = sext i1 %399 to i64, !dbg !1383
  %401 = add i64 %400, %398, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  %402 = load i32, i32* @delimit_groups, align 4, !dbg !1384, !tbaa !826
  %403 = icmp eq i32 %402, 0, !dbg !1386
  br i1 %403, label %423, label %404, !dbg !1387

; <label>:404:                                    ; preds = %394
  br i1 %395, label %405, label %408, !dbg !1388

; <label>:405:                                    ; preds = %404
  %406 = icmp eq i64 %401, 0, !dbg !1390
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  %407 = select i1 %406, i8 %346, i8 0, !dbg !1394
  call void @llvm.dbg.value(metadata i8 %346, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  br label %428, !dbg !1395

; <label>:408:                                    ; preds = %404
  %409 = icmp eq i64 %401, 1, !dbg !1396
  br i1 %409, label %410, label %424, !dbg !1398

; <label>:410:                                    ; preds = %408
  switch i32 %402, label %424 [
    i32 1, label %412
    i32 2, label %411
  ], !dbg !1399

; <label>:411:                                    ; preds = %410
  br i1 %353, label %412, label %424, !dbg !1402

; <label>:412:                                    ; preds = %411, %410
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1404, !tbaa !710
  %414 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %413, i64 0, i32 5, !dbg !1404
  %415 = load i8*, i8** %414, align 8, !dbg !1404, !tbaa !1295
  %416 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %413, i64 0, i32 6, !dbg !1404
  %417 = load i8*, i8** %416, align 8, !dbg !1404, !tbaa !1296
  %418 = icmp ult i8* %415, %417, !dbg !1404
  br i1 %418, label %421, label %419, !dbg !1404, !prof !1297

; <label>:419:                                    ; preds = %412
  %420 = call i32 @__overflow(%struct._IO_FILE* %413, i32 %341) #11, !dbg !1406
  br label %424, !dbg !1406

; <label>:421:                                    ; preds = %412
  %422 = getelementptr inbounds i8, i8* %415, i64 1, !dbg !1407
  store i8* %422, i8** %414, align 8, !dbg !1407, !tbaa !1295
  store i8 %31, i8* %415, align 1, !dbg !1407, !tbaa !826
  br label %424, !dbg !1407

; <label>:423:                                    ; preds = %394
  call void @llvm.dbg.value(metadata i8 %346, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  br i1 %395, label %426, label %424, !dbg !1395

; <label>:424:                                    ; preds = %411, %419, %421, %423, %410, %408
  %425 = load i1, i1* @output_later_repeated, align 1
  br i1 %425, label %426, label %354, !dbg !1408

; <label>:426:                                    ; preds = %423, %424
  %427 = phi i1 [ false, %424 ], [ true, %423 ]
  br label %428, !dbg !1410

; <label>:428:                                    ; preds = %426, %405
  %429 = phi i1 [ true, %405 ], [ %427, %426 ]
  %430 = phi i8 [ %407, %405 ], [ %346, %426 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1417, metadata !702) #11, !dbg !1410
  call void @llvm.dbg.value(metadata i1 %396, i64 0, metadata !1418, metadata !1421) #11, !dbg !1422
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !1419, metadata !702) #11, !dbg !1423
  %431 = icmp eq i64 %401, 0, !dbg !1424
  br i1 %431, label %432, label %434, !dbg !1426

; <label>:432:                                    ; preds = %428
  %433 = load i1, i1* @output_unique, align 1
  br i1 %433, label %439, label %451, !dbg !1427

; <label>:434:                                    ; preds = %428
  br i1 %429, label %435, label %437, !dbg !1429

; <label>:435:                                    ; preds = %434
  %436 = load i1, i1* @output_first_repeated, align 1
  br i1 %436, label %439, label %451, !dbg !1431

; <label>:437:                                    ; preds = %434
  %438 = load i1, i1* @output_later_repeated, align 1
  br i1 %438, label %439, label %451, !dbg !1432

; <label>:439:                                    ; preds = %437, %435, %432
  %440 = load i1, i1* @countmode, align 4
  br i1 %440, label %444, label %441, !dbg !1434

; <label>:441:                                    ; preds = %439
  %442 = add i64 %401, 1, !dbg !1435
  %443 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %442) #11, !dbg !1435
  br label %444, !dbg !1435

; <label>:444:                                    ; preds = %441, %439
  %445 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 2, !dbg !1437
  %446 = load i8*, i8** %445, align 8, !dbg !1437, !tbaa !1232
  %447 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 1, !dbg !1437
  %448 = load i64, i64* %447, align 8, !dbg !1437, !tbaa !1228
  %449 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1437, !tbaa !710
  %450 = call i64 @fwrite_unlocked(i8* %446, i64 1, i64 %448, %struct._IO_FILE* %449) #11, !dbg !1437
  br label %451, !dbg !1438

; <label>:451:                                    ; preds = %444, %437, %435, %432
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata i8* %365, i64 0, metadata !1066, metadata !702) #11, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %371, i64 0, metadata !1068, metadata !702) #11, !dbg !1333
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  %452 = select i1 %429, i64 0, i64 %401, !dbg !1439
  br label %342, !dbg !1439

; <label>:453:                                    ; preds = %361
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1440, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %454, i64 0, metadata !1443, metadata !702) #11, !dbg !1446
  %455 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %454, i64 0, i32 0, !dbg !1448
  %456 = load i32, i32* %455, align 8, !dbg !1448, !tbaa !1216
  %457 = and i32 %456, 32, !dbg !1448
  %458 = icmp eq i32 %457, 0, !dbg !1440
  call void @llvm.dbg.value(metadata %struct.linebuffer* %348, i64 0, metadata !1036, metadata !702) #11, !dbg !1139
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i8 %346, i64 0, metadata !1074, metadata !702) #11, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %344, i64 0, metadata !1068, metadata !702) #11, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %343, i64 0, metadata !1066, metadata !702) #11, !dbg !1327
  br i1 %458, label %460, label %478

; <label>:459:                                    ; preds = %354
  br label %460, !dbg !1140

; <label>:460:                                    ; preds = %459, %453
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1038, metadata !702) #11, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1069, metadata !702) #11, !dbg !1319
  call void @llvm.dbg.value(metadata %struct.linebuffer* %347, i64 0, metadata !1417, metadata !702) #11, !dbg !1449
  call void @llvm.dbg.value(metadata i1 false, i64 0, metadata !1418, metadata !1421) #11, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %355, i64 0, metadata !1419, metadata !702) #11, !dbg !1452
  %461 = icmp eq i64 %355, 0, !dbg !1453
  br i1 %461, label %462, label %464, !dbg !1454

; <label>:462:                                    ; preds = %460
  %463 = load i1, i1* @output_unique, align 1
  br i1 %463, label %466, label %478, !dbg !1455

; <label>:464:                                    ; preds = %460
  %465 = load i1, i1* @output_first_repeated, align 1
  br i1 %465, label %466, label %478, !dbg !1456

; <label>:466:                                    ; preds = %464, %462
  %467 = load i1, i1* @countmode, align 4
  br i1 %467, label %471, label %468, !dbg !1457

; <label>:468:                                    ; preds = %466
  %469 = add i64 %355, 1, !dbg !1458
  %470 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %469) #11, !dbg !1458
  br label %471, !dbg !1458

; <label>:471:                                    ; preds = %468, %466
  %472 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 2, !dbg !1459
  %473 = load i8*, i8** %472, align 8, !dbg !1459, !tbaa !1232
  %474 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %347, i64 0, i32 1, !dbg !1459
  %475 = load i64, i64* %474, align 8, !dbg !1459, !tbaa !1228
  %476 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1459, !tbaa !710
  %477 = call i64 @fwrite_unlocked(i8* %473, i64 1, i64 %475, %struct._IO_FILE* %476) #11, !dbg !1459
  br label %478, !dbg !1460

; <label>:478:                                    ; preds = %471, %464, %462, %453, %326, %324, %322, %313, %311
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1461, !tbaa !710
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %479, i64 0, metadata !1443, metadata !702) #11, !dbg !1463
  %480 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %479, i64 0, i32 0, !dbg !1465
  %481 = load i32, i32* %480, align 8, !dbg !1465, !tbaa !1216
  %482 = and i32 %481, 32, !dbg !1465
  %483 = icmp eq i32 %482, 0, !dbg !1461
  br i1 %483, label %484, label %487, !dbg !1466

; <label>:484:                                    ; preds = %478
  %485 = call i32 @rpl_fclose(%struct._IO_FILE* %479) #11, !dbg !1467
  %486 = icmp eq i32 %485, 0, !dbg !1469
  br i1 %486, label %490, label %487, !dbg !1470

; <label>:487:                                    ; preds = %484, %478
  %488 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #11, !dbg !1472
  %489 = call i8* @quotearg_style(i32 4, i8* %184) #11, !dbg !1473
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %488, i8* %489) #11, !dbg !1474
  unreachable, !dbg !1472

; <label>:490:                                    ; preds = %484
  %491 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i64 0, i32 2, !dbg !1476
  %492 = load i8*, i8** %491, align 8, !dbg !1476, !tbaa !1232
  call void @free(i8* %492) #11, !dbg !1477
  %493 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1478
  %494 = load i8*, i8** %493, align 8, !dbg !1478, !tbaa !1232
  call void @free(i8* %494) #11, !dbg !1479
  call void @llvm.lifetime.end(i64 24, i8* nonnull %187) #11, !dbg !1480
  call void @llvm.lifetime.end(i64 24, i8* nonnull %186) #11, !dbg !1480
  call void @llvm.lifetime.end(i64 16, i8* nonnull %13) #11, !dbg !1481
  ret i32 0, !dbg !1481
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @find_field(%struct.linebuffer* nocapture readonly) unnamed_addr #9 !dbg !1482 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !1486, metadata !702), !dbg !1491
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1492
  %3 = load i8*, i8** %2, align 8, !dbg !1492, !tbaa !1232
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1488, metadata !702), !dbg !1493
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1494
  %5 = load i64, i64* %4, align 8, !dbg !1494, !tbaa !1228
  %6 = add i64 %5, -1, !dbg !1495
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !1489, metadata !702), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1490, metadata !702), !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !702), !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1490, metadata !702), !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1487, metadata !702), !dbg !1498
  %7 = load i64, i64* @skip_fields, align 8, !dbg !1499, !tbaa !821
  %8 = icmp ne i64 %7, 0, !dbg !1503
  %9 = icmp ne i64 %6, 0, !dbg !1504
  %10 = and i1 %9, %8, !dbg !1506
  br i1 %10, label %11, label %64, !dbg !1506

; <label>:11:                                     ; preds = %1
  br label %12, !dbg !1497

; <label>:12:                                     ; preds = %11, %57
  %13 = phi i64 [ %58, %57 ], [ 0, %11 ]
  %14 = phi i64 [ %59, %57 ], [ 0, %11 ]
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !1490, metadata !702), !dbg !1497
  %15 = icmp ult i64 %13, %6, !dbg !1507
  br i1 %15, label %16, label %32, !dbg !1510

; <label>:16:                                     ; preds = %12
  %17 = tail call i16** @__ctype_b_loc() #1, !dbg !1511
  %18 = load i16*, i16** %17, align 8, !tbaa !710
  br label %19, !dbg !1510

; <label>:19:                                     ; preds = %16, %38
  %20 = phi i64 [ %13, %16 ], [ %39, %38 ]
  %21 = getelementptr inbounds i8, i8* %3, i64 %20, !dbg !1519
  %22 = load i8, i8* %21, align 1, !dbg !1519, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %22, i64 0, metadata !1516, metadata !702) #11, !dbg !1520
  %23 = zext i8 %22 to i64, !dbg !1511
  %24 = getelementptr inbounds i16, i16* %18, i64 %23, !dbg !1511
  %25 = load i16, i16* %24, align 2, !dbg !1511, !tbaa !1521
  %26 = and i16 %25, 1, !dbg !1511
  %27 = icmp eq i8 %22, 10, !dbg !1522
  %28 = icmp ne i16 %26, 0, !dbg !1524
  %29 = or i1 %27, %28, !dbg !1524
  br i1 %29, label %38, label %30, !dbg !1525

; <label>:30:                                     ; preds = %38, %19
  %31 = phi i64 [ %39, %38 ], [ %20, %19 ]
  br label %32, !dbg !1497

; <label>:32:                                     ; preds = %30, %12
  %33 = phi i64 [ %13, %12 ], [ %31, %30 ]
  tail call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !1490, metadata !702), !dbg !1497
  %34 = icmp ult i64 %33, %6, !dbg !1527
  br i1 %34, label %35, label %57, !dbg !1528

; <label>:35:                                     ; preds = %32
  %36 = tail call i16** @__ctype_b_loc() #1, !dbg !1529
  %37 = load i16*, i16** %36, align 8, !tbaa !710
  br label %41, !dbg !1528

; <label>:38:                                     ; preds = %19
  %39 = add nuw i64 %20, 1, !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1490, metadata !702), !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !1490, metadata !702), !dbg !1497
  %40 = icmp ult i64 %39, %6, !dbg !1507
  br i1 %40, label %19, label %30, !dbg !1510, !llvm.loop !1532

; <label>:41:                                     ; preds = %35, %52
  %42 = phi i64 [ %33, %35 ], [ %53, %52 ]
  %43 = getelementptr inbounds i8, i8* %3, i64 %42, !dbg !1534
  %44 = load i8, i8* %43, align 1, !dbg !1534, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %44, i64 0, metadata !1516, metadata !702) #11, !dbg !1535
  %45 = zext i8 %44 to i64, !dbg !1529
  %46 = getelementptr inbounds i16, i16* %37, i64 %45, !dbg !1529
  %47 = load i16, i16* %46, align 2, !dbg !1529, !tbaa !1521
  %48 = and i16 %47, 1, !dbg !1529
  %49 = icmp eq i8 %44, 10, !dbg !1536
  %50 = icmp ne i16 %48, 0, !dbg !1537
  %51 = or i1 %49, %50, !dbg !1537
  br i1 %51, label %55, label %52, !dbg !1538

; <label>:52:                                     ; preds = %41
  %53 = add nuw i64 %42, 1, !dbg !1539
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !1490, metadata !702), !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 %53, i64 0, metadata !1490, metadata !702), !dbg !1497
  %54 = icmp ult i64 %53, %6, !dbg !1527
  br i1 %54, label %41, label %55, !dbg !1528, !llvm.loop !1540

; <label>:55:                                     ; preds = %41, %52
  %56 = phi i64 [ %42, %41 ], [ %53, %52 ]
  br label %57, !dbg !1542

; <label>:57:                                     ; preds = %55, %32
  %58 = phi i64 [ %33, %32 ], [ %56, %55 ]
  %59 = add nuw i64 %14, 1, !dbg !1542
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1487, metadata !702), !dbg !1498
  tail call void @llvm.dbg.value(metadata i64 %58, i64 0, metadata !1490, metadata !702), !dbg !1497
  tail call void @llvm.dbg.value(metadata i64 %59, i64 0, metadata !1487, metadata !702), !dbg !1498
  %60 = icmp ult i64 %59, %7, !dbg !1503
  %61 = icmp ugt i64 %6, %58, !dbg !1504
  %62 = and i1 %61, %60, !dbg !1506
  br i1 %62, label %12, label %63, !dbg !1506, !llvm.loop !1544

; <label>:63:                                     ; preds = %57
  br label %64, !dbg !1547

; <label>:64:                                     ; preds = %63, %1
  %65 = phi i64 [ 0, %1 ], [ %58, %63 ]
  %66 = load i64, i64* @skip_chars, align 8, !dbg !1547, !tbaa !821
  %67 = sub i64 %6, %65, !dbg !1547
  %68 = icmp ult i64 %66, %67, !dbg !1547
  %69 = select i1 %68, i64 %66, i64 %67, !dbg !1548
  %70 = add i64 %69, %65, !dbg !1550
  tail call void @llvm.dbg.value(metadata i64 %70, i64 0, metadata !1490, metadata !702), !dbg !1497
  %71 = getelementptr inbounds i8, i8* %3, i64 %70, !dbg !1552
  ret i8* %71, !dbg !1553
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 !dbg !1554 {
  tail call void @usage(i32 1) #11, !dbg !1555
  ret void, !dbg !1556
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !1557 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1563, metadata !702), !dbg !1578
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1564, metadata !702), !dbg !1579
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1565, metadata !702), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1566, metadata !702), !dbg !1581
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1569, metadata !702), !dbg !1582
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1570, metadata !702), !dbg !1583
  %5 = tail call i64 @strlen(i8* %0) #13, !dbg !1584
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !1568, metadata !702), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !702), !dbg !1586
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1570, metadata !702), !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !1569, metadata !702), !dbg !1582
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1567, metadata !702), !dbg !1586
  %6 = load i8*, i8** %1, align 8, !dbg !1587, !tbaa !710
  %7 = icmp eq i8* %6, null, !dbg !1589
  br i1 %7, label %39, label %8, !dbg !1589

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1589

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #13, !dbg !1591
  %16 = icmp eq i32 %15, 0, !dbg !1591
  br i1 %16, label %17, label %31, !dbg !1593

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #13, !dbg !1595
  %19 = icmp eq i64 %18, %5, !dbg !1598
  br i1 %19, label %45, label %20, !dbg !1599

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1600
  br i1 %21, label %31, label %22, !dbg !1602

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1603

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1606
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1608
  %26 = mul i64 %14, %3, !dbg !1609
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1610
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #13, !dbg !1611
  %29 = icmp eq i32 %28, 0, !dbg !1611
  br i1 %29, label %31, label %30, !dbg !1612

; <label>:30:                                     ; preds = %23, %22
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1570, metadata !702), !dbg !1583
  br label %31, !dbg !1614

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1570, metadata !702), !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1569, metadata !702), !dbg !1582
  %34 = add i64 %14, 1, !dbg !1616
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1567, metadata !702), !dbg !1586
  tail call void @llvm.dbg.value(metadata i8 %33, i64 0, metadata !1570, metadata !702), !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !1569, metadata !702), !dbg !1582
  tail call void @llvm.dbg.value(metadata i64 %34, i64 0, metadata !1567, metadata !702), !dbg !1586
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1587
  %36 = load i8*, i8** %35, align 8, !dbg !1587, !tbaa !710
  %37 = icmp eq i8* %36, null, !dbg !1589
  br i1 %37, label %38, label %10, !dbg !1589, !llvm.loop !1618

; <label>:38:                                     ; preds = %31
  br label %39, !dbg !1621

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1, !dbg !1621
  %43 = icmp eq i8 %42, 0, !dbg !1621
  %44 = select i1 %43, i64 %40, i64 -2, !dbg !1623
  br label %46, !dbg !1623

; <label>:45:                                     ; preds = %17
  br label %46, !dbg !1624

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47, !dbg !1624
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 !dbg !1625 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1629, metadata !702), !dbg !1633
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1630, metadata !702), !dbg !1634
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1631, metadata !702), !dbg !1635
  %4 = icmp eq i64 %2, -1, !dbg !1636
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.38, i64 0, i64 0), !dbg !1637
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11, !dbg !1638
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !1632, metadata !702), !dbg !1639
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !1640
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !1641
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11, !dbg !1642
  ret void, !dbg !1644
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !1645 {
  tail call void @llvm.dbg.value(metadata i8** %0, i64 0, metadata !1649, metadata !702), !dbg !1654
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1650, metadata !702), !dbg !1655
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1651, metadata !702), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1653, metadata !702), !dbg !1657
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.39, i64 0, i64 0), i32 5) #11, !dbg !1658
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1658, !tbaa !710
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11, !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1652, metadata !702), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !1653, metadata !702), !dbg !1657
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1652, metadata !702), !dbg !1661
  %7 = load i8*, i8** %0, align 8, !dbg !1662, !tbaa !710
  %8 = icmp eq i8* %7, null, !dbg !1666
  br i1 %8, label %35, label %9, !dbg !1666

; <label>:9:                                      ; preds = %3
  br label %10, !dbg !1668

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ], !dbg !1670
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0, !dbg !1668
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17, !dbg !1672

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #13, !dbg !1673
  %19 = icmp eq i32 %18, 0, !dbg !1673
  br i1 %19, label %24, label %20, !dbg !1675

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1670, !tbaa !710
  %22 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !1670
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.40, i64 0, i64 0), i8* %22) #11, !dbg !1676
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !1653, metadata !702), !dbg !1657
  br label %28, !dbg !1678

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1679, !tbaa !710
  %26 = tail call i8* @quote(i8* nonnull %11) #11, !dbg !1679
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.41, i64 0, i64 0), i8* %26) #11, !dbg !1681
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1653, metadata !702), !dbg !1657
  %30 = add i64 %13, 1, !dbg !1683
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1652, metadata !702), !dbg !1661
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !1653, metadata !702), !dbg !1657
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !1652, metadata !702), !dbg !1661
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30, !dbg !1662
  %32 = load i8*, i8** %31, align 8, !dbg !1662, !tbaa !710
  %33 = icmp eq i8* %32, null, !dbg !1666
  br i1 %33, label %34, label %10, !dbg !1666, !llvm.loop !1685

; <label>:34:                                     ; preds = %28
  br label %35, !dbg !1688

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1688, !tbaa !710
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !1689, metadata !702) #11, !dbg !1735
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %36, i64 0, metadata !1734, metadata !702) #11, !dbg !1737
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5, !dbg !1738
  %38 = load i8*, i8** %37, align 8, !dbg !1738, !tbaa !1295
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6, !dbg !1738
  %40 = load i8*, i8** %39, align 8, !dbg !1738, !tbaa !1296
  %41 = icmp ult i8* %38, %40, !dbg !1738
  br i1 %41, label %44, label %42, !dbg !1738, !prof !1297

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11, !dbg !1739
  br label %46, !dbg !1739

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !1741
  store i8* %45, i8** %37, align 8, !dbg !1741, !tbaa !1295
  store i8 10, i8* %38, align 1, !dbg !1741, !tbaa !826
  br label %46, !dbg !1741

; <label>:46:                                     ; preds = %42, %44
  ret void, !dbg !1743
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 !dbg !1744 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1748, metadata !702), !dbg !1755
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1749, metadata !702), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8** %2, i64 0, metadata !1750, metadata !702), !dbg !1757
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !1751, metadata !702), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !1752, metadata !702), !dbg !1759
  tail call void @llvm.dbg.value(metadata void ()* %5, i64 0, metadata !1753, metadata !702), !dbg !1760
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #13, !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1754, metadata !702), !dbg !1762
  %8 = icmp sgt i64 %7, -1, !dbg !1763
  br i1 %8, label %15, label %9, !dbg !1765

; <label>:9:                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1629, metadata !702) #11, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1630, metadata !702) #11, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !1631, metadata !702) #11, !dbg !1769
  %10 = icmp eq i64 %7, -1, !dbg !1770
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.38, i64 0, i64 0), !dbg !1771
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11, !dbg !1772
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1632, metadata !702) #11, !dbg !1773
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11, !dbg !1774
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11, !dbg !1775
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11, !dbg !1776
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4), !dbg !1777
  tail call void %5() #11, !dbg !1778
  br label %15, !dbg !1779

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16, !dbg !1780
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1781 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1785, metadata !702), !dbg !1790
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !1786, metadata !702), !dbg !1791
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !1787, metadata !702), !dbg !1792
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !1788, metadata !702), !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1789, metadata !702), !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1789, metadata !702), !dbg !1794
  %5 = load i8*, i8** %1, align 8, !dbg !1795, !tbaa !710
  %6 = icmp eq i8* %5, null, !dbg !1799
  br i1 %6, label %22, label %7, !dbg !1799

; <label>:7:                                      ; preds = %4
  br label %12, !dbg !1801

; <label>:8:                                      ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1789, metadata !702), !dbg !1794
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19, !dbg !1795
  %10 = load i8*, i8** %9, align 8, !dbg !1795, !tbaa !710
  %11 = icmp eq i8* %10, null, !dbg !1799
  br i1 %11, label %20, label %12, !dbg !1799, !llvm.loop !1803

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3, !dbg !1801
  %16 = getelementptr inbounds i8, i8* %2, i64 %15, !dbg !1806
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #13, !dbg !1807
  %18 = icmp eq i32 %17, 0, !dbg !1807
  %19 = add i64 %14, 1, !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !1789, metadata !702), !dbg !1794
  br i1 %18, label %20, label %8, !dbg !1810

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22, !dbg !1811

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23, !dbg !1811
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 !dbg !1812 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1814, metadata !702), !dbg !1815
  store i8* %0, i8** @file_name, align 8, !dbg !1816, !tbaa !710
  ret void, !dbg !1817
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 !dbg !1818 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i1 %0, i64 0, metadata !1822, metadata !1421), !dbg !1823
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1824, !tbaa !817
  ret void, !dbg !1825
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() #6 !dbg !1826 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1831, !tbaa !710
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1832
  %3 = icmp eq i32 %2, 0, !dbg !1833
  br i1 %3, label %21, label %4, !dbg !1834

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1835, !tbaa !817, !range !1270
  %6 = icmp eq i8 %5, 0, !dbg !1835
  %7 = tail call i32* @__errno_location() #1, !dbg !1837
  br i1 %6, label %11, label %8, !dbg !1839

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4, !dbg !1840, !tbaa !840
  %10 = icmp eq i32 %9, 32, !dbg !1842
  br i1 %10, label %21, label %11, !dbg !1843

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.72, i64 0, i64 0), i32 5) #11, !dbg !1845
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !1828, metadata !702), !dbg !1846
  %13 = load i8*, i8** @file_name, align 8, !dbg !1847, !tbaa !710
  %14 = icmp eq i8* %13, null, !dbg !1847
  %15 = load i32, i32* %7, align 4, !tbaa !840
  br i1 %14, label %18, label %16, !dbg !1848

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1849
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.73, i64 0, i64 0), i8* %17, i8* %12) #11, !dbg !1851
  br label %19, !dbg !1853

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.74, i64 0, i64 0), i8* %12) #11, !dbg !1854
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4, !dbg !1855, !tbaa !840
  tail call void @_exit(i32 %20) #14, !dbg !1856
  unreachable, !dbg !1856

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1857, !tbaa !710
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11, !dbg !1859
  %24 = icmp eq i32 %23, 0, !dbg !1860
  br i1 %24, label %27, label %25, !dbg !1861

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4, !dbg !1862, !tbaa !840
  tail call void @_exit(i32 %26) #14, !dbg !1863
  unreachable, !dbg !1863

; <label>:27:                                     ; preds = %21
  ret void, !dbg !1864
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 !dbg !1865 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !1872, metadata !702), !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !1873, metadata !702), !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !1874, metadata !702), !dbg !1880
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !1875, metadata !702), !dbg !1881
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1876, metadata !702), !dbg !1882
  ret void, !dbg !1883
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 !dbg !1884 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !1928, metadata !702), !dbg !1930
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1929, metadata !702), !dbg !1931
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1932
  br i1 %3, label %7, label %4, !dbg !1934

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1935
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !1872, metadata !702) #11, !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1873, metadata !702) #11, !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1874, metadata !702) #11, !dbg !1940
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !1875, metadata !702) #11, !dbg !1941
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1942
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !1876, metadata !702) #11, !dbg !1942
  br label %7, !dbg !1943

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1944
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !1945 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1990, metadata !702), !dbg !1997
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !1991, metadata !702), !dbg !1998
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !1992, metadata !702), !dbg !1999
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1993, metadata !702), !dbg !2000
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1994, metadata !702), !dbg !2001
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1995, metadata !702), !dbg !2002
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #11, !dbg !2003
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !2004

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #11, !dbg !2005
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1995, metadata !702), !dbg !2002
  %7 = icmp ne i32 %6, 2, !dbg !2008
  %8 = zext i1 %7 to i8, !dbg !2008
  br label %9, !dbg !2008

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ]
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !1995, metadata !702), !dbg !2002
  %11 = tail call i32 @dup2(i32 1, i32 1) #11, !dbg !2009
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1994, metadata !702), !dbg !2001
  %12 = icmp ne i32 %11, 1, !dbg !2011
  %13 = zext i1 %12 to i8, !dbg !2011
  br label %14, !dbg !2011

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ]
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ]
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1995, metadata !702), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1994, metadata !702), !dbg !2001
  %17 = tail call i32 @dup2(i32 0, i32 0) #11, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !1993, metadata !702), !dbg !2000
  %18 = icmp eq i32 %17, 0, !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !1995, metadata !702), !dbg !2002
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !1994, metadata !702), !dbg !2001
  br i1 %18, label %27, label %19, !dbg !2015

; <label>:19:                                     ; preds = %14
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2017, metadata !702) #11, !dbg !2023
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #11, !dbg !2026
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !2022, metadata !702) #11, !dbg !2027
  %21 = icmp eq i32 %20, 0, !dbg !2028
  br i1 %21, label %27, label %22, !dbg !2030

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !2031
  br i1 %23, label %24, label %54, !dbg !2034

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #11, !dbg !2035
  %26 = tail call i32* @__errno_location() #1, !dbg !2037
  store i32 9, i32* %26, align 4, !dbg !2038, !tbaa !840
  br label %54, !dbg !2039

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !2040
  br i1 %29, label %38, label %30, !dbg !2042

; <label>:30:                                     ; preds = %27
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2017, metadata !702) #11, !dbg !2043
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #11, !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !2022, metadata !702) #11, !dbg !2047
  %32 = icmp eq i32 %31, 1, !dbg !2048
  br i1 %32, label %38, label %33, !dbg !2049

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !2050
  br i1 %34, label %35, label %54, !dbg !2051

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #11, !dbg !2052
  %37 = tail call i32* @__errno_location() #1, !dbg !2053
  store i32 9, i32* %37, align 4, !dbg !2054, !tbaa !840
  br label %54, !dbg !2055

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !2056
  %40 = icmp eq i8 %39, 0, !dbg !2056
  br i1 %40, label %49, label %41, !dbg !2058

; <label>:41:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2017, metadata !702) #11, !dbg !2059
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 0) #11, !dbg !2062
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !2022, metadata !702) #11, !dbg !2063
  %43 = icmp eq i32 %42, 2, !dbg !2064
  br i1 %43, label %49, label %44, !dbg !2065

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !2066
  br i1 %45, label %46, label %54, !dbg !2067

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #11, !dbg !2068
  %48 = tail call i32* @__errno_location() #1, !dbg !2069
  store i32 9, i32* %48, align 4, !dbg !2070, !tbaa !840
  br label %54, !dbg !2071

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @rpl_freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #11, !dbg !2072
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, i64 0, metadata !1992, metadata !702), !dbg !1999
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, i64 0, metadata !1992, metadata !702), !dbg !1999
  %59 = tail call i32* @__errno_location() #1, !dbg !2073
  %60 = load i32, i32* %59, align 4, !dbg !2073, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %60, i64 0, metadata !1996, metadata !702), !dbg !2074
  %61 = and i8 %55, 1, !dbg !2075
  %62 = icmp eq i8 %61, 0, !dbg !2075
  br i1 %62, label %65, label %63, !dbg !2077

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #11, !dbg !2078
  br label %65, !dbg !2078

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !2079
  %67 = icmp eq i8 %66, 0, !dbg !2079
  br i1 %67, label %70, label %68, !dbg !2081

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #11, !dbg !2082
  br label %70, !dbg !2082

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !2083

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #11, !dbg !2084
  br label %73, !dbg !2084

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !2086
  br i1 %74, label %75, label %76, !dbg !2088

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !2089, !tbaa !840
  br label %76, !dbg !2090

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !2091
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 !dbg !2092 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !2095, metadata !702), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2096, metadata !702), !dbg !2116
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !2117
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2097, metadata !702), !dbg !2118
  %3 = icmp eq i8* %2, null, !dbg !2119
  br i1 %3, label %15, label %4, !dbg !2120

; <label>:4:                                      ; preds = %1
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2105, metadata !702), !dbg !2121
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2106, metadata !702), !dbg !2122
  %5 = load i8, i8* %2, align 1, !dbg !2123, !tbaa !826
  %6 = icmp eq i8 %5, 67, !dbg !2125
  br i1 %6, label %7, label %11, !dbg !2128

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2130
  %9 = load i8, i8* %8, align 1, !dbg !2130, !tbaa !826
  %10 = icmp eq i8 %9, 0, !dbg !2133
  br i1 %10, label %14, label %11, !dbg !2135

; <label>:11:                                     ; preds = %4, %7
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !2111, metadata !702), !dbg !2137
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i64 0, i64 0)) #11, !dbg !2138
  %13 = icmp eq i32 %12, 0, !dbg !2140
  br i1 %13, label %14, label %15, !dbg !2142

; <label>:14:                                     ; preds = %11, %7
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2096, metadata !702), !dbg !2116
  br label %15, !dbg !2144

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16, !dbg !2145
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #6 !dbg !2146 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2157, metadata !702), !dbg !2158
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !2159
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !2159
  ret void, !dbg !2160
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #6 !dbg !2161 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2205, metadata !702), !dbg !2207
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2206, metadata !702), !dbg !2208
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2209, metadata !702) #11, !dbg !2224
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2214, metadata !702) #11, !dbg !2226
  tail call void @llvm.dbg.value(metadata i8 10, i64 0, metadata !2215, metadata !702) #11, !dbg !2227
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2228
  %4 = load i8*, i8** %3, align 8, !dbg !2228, !tbaa !1232
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2217, metadata !702) #11, !dbg !2229
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2231
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2232, metadata !702) #11, !dbg !2237
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2240
  %7 = load i32, i32* %6, align 8, !dbg !2240, !tbaa !1216
  %8 = and i32 %7, 16, !dbg !2240
  %9 = icmp eq i32 %8, 0, !dbg !2241
  br i1 %9, label %10, label %63, !dbg !2242, !llvm.loop !2243

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !2231, !tbaa !2246
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2247
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !2248

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ]
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ]
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ]
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2219, metadata !702) #11, !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !2217, metadata !702) #11, !dbg !2229
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2249, metadata !702) #11, !dbg !2252
  %19 = load i8*, i8** %13, align 8, !dbg !2254, !tbaa !2255
  %20 = load i8*, i8** %14, align 8, !dbg !2254, !tbaa !2256
  %21 = icmp ult i8* %19, %20, !dbg !2254
  br i1 %21, label %22, label %26, !dbg !2254, !prof !1297

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2257
  store i8* %23, i8** %13, align 8, !dbg !2257, !tbaa !2255
  %24 = load i8, i8* %19, align 1, !dbg !2257, !tbaa !826
  %25 = zext i8 %24 to i32, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !2216, metadata !702) #11, !dbg !2259
  br label %39, !dbg !2260

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !2216, metadata !702) #11, !dbg !2259
  %28 = icmp eq i32 %27, -1, !dbg !2263
  br i1 %28, label %29, label %39, !dbg !2260

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2265
  br i1 %30, label %62, label %31, !dbg !2268

; <label>:31:                                     ; preds = %29
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2269, metadata !702) #11, !dbg !2272
  %32 = load i32, i32* %6, align 8, !dbg !2275, !tbaa !1216
  %33 = and i32 %32, 32, !dbg !2275
  %34 = icmp eq i32 %33, 0, !dbg !2276
  br i1 %34, label %35, label %62, !dbg !2277

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2279
  %37 = load i8, i8* %36, align 1, !dbg !2279, !tbaa !826
  %38 = icmp eq i8 %37, 10, !dbg !2281
  br i1 %38, label %55, label %39, !dbg !2282

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ]
  tail call void @llvm.dbg.value(metadata i32 %40, i64 0, metadata !2216, metadata !702) #11, !dbg !2259
  %41 = icmp eq i8* %17, %18, !dbg !2283
  br i1 %41, label %42, label %48, !dbg !2284

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2285, !tbaa !2246
  tail call void @llvm.dbg.value(metadata i64 %43, i64 0, metadata !2220, metadata !702) #11, !dbg !2286
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11, !dbg !2287
  tail call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !2217, metadata !702) #11, !dbg !2229
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2288
  tail call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  store i8* %44, i8** %3, align 8, !dbg !2289, !tbaa !1232
  %46 = load i64, i64* %5, align 8, !dbg !2290, !tbaa !2246
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2291
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !2219, metadata !702) #11, !dbg !2248
  br label %48, !dbg !2292

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ]
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ]
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ]
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2219, metadata !702) #11, !dbg !2248
  tail call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2217, metadata !702) #11, !dbg !2229
  %52 = trunc i32 %40 to i8, !dbg !2293
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2294
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  store i8 %52, i8* %50, align 1, !dbg !2295, !tbaa !826
  %54 = icmp eq i32 %40, 10, !dbg !2296
  br i1 %54, label %55, label %15, !dbg !2297, !llvm.loop !2243

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ]
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ]
  tail call void @llvm.dbg.value(metadata i8* %57, i64 0, metadata !2218, metadata !702) #11, !dbg !2230
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !2217, metadata !702) #11, !dbg !2229
  %58 = ptrtoint i8* %57 to i64, !dbg !2299
  %59 = ptrtoint i8* %56 to i64, !dbg !2299
  %60 = sub i64 %58, %59, !dbg !2299
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2300
  store i64 %60, i64* %61, align 8, !dbg !2301, !tbaa !1228
  br label %63, !dbg !2302

; <label>:62:                                     ; preds = %31, %29
  br label %63, !dbg !2303

; <label>:63:                                     ; preds = %62, %2, %55
  %64 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %62 ]
  ret %struct.linebuffer* %64, !dbg !2303
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #6 !dbg !2210 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2209, metadata !702), !dbg !2304
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2214, metadata !702), !dbg !2305
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2215, metadata !702), !dbg !2306
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2307
  %5 = load i8*, i8** %4, align 8, !dbg !2307, !tbaa !1232
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2217, metadata !702), !dbg !2308
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !2218, metadata !702), !dbg !2309
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2310
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !2219, metadata !702), !dbg !2311
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2232, metadata !702), !dbg !2312
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2314
  %8 = load i32, i32* %7, align 8, !dbg !2314, !tbaa !1216
  %9 = and i32 %8, 16, !dbg !2314
  %10 = icmp eq i32 %9, 0, !dbg !2315
  br i1 %10, label %11, label %65, !dbg !2316, !llvm.loop !2243

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2310, !tbaa !2246
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2317
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !2311

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ]
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ]
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !2219, metadata !702), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !2218, metadata !702), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %18, i64 0, metadata !2217, metadata !702), !dbg !2308
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2249, metadata !702) #11, !dbg !2318
  %21 = load i8*, i8** %14, align 8, !dbg !2320, !tbaa !2255
  %22 = load i8*, i8** %15, align 8, !dbg !2320, !tbaa !2256
  %23 = icmp ult i8* %21, %22, !dbg !2320
  br i1 %23, label %24, label %28, !dbg !2320, !prof !1297

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2321
  store i8* %25, i8** %14, align 8, !dbg !2321, !tbaa !2255
  %26 = load i8, i8* %21, align 1, !dbg !2321, !tbaa !826
  %27 = zext i8 %26 to i32, !dbg !2321
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !2216, metadata !702), !dbg !2322
  br label %41, !dbg !2323

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !2324
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !2216, metadata !702), !dbg !2322
  %30 = icmp eq i32 %29, -1, !dbg !2325
  br i1 %30, label %31, label %41, !dbg !2323

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2326
  br i1 %32, label %64, label %33, !dbg !2327

; <label>:33:                                     ; preds = %31
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, i64 0, metadata !2269, metadata !702), !dbg !2328
  %34 = load i32, i32* %7, align 8, !dbg !2330, !tbaa !1216
  %35 = and i32 %34, 32, !dbg !2330
  %36 = icmp eq i32 %35, 0, !dbg !2331
  br i1 %36, label %37, label %64, !dbg !2332

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2333
  %39 = load i8, i8* %38, align 1, !dbg !2333, !tbaa !826
  %40 = icmp eq i8 %39, %2, !dbg !2334
  br i1 %40, label %57, label %41, !dbg !2335

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ]
  tail call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !2216, metadata !702), !dbg !2322
  %43 = icmp eq i8* %19, %20, !dbg !2336
  br i1 %43, label %44, label %50, !dbg !2337

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2338, !tbaa !2246
  tail call void @llvm.dbg.value(metadata i64 %45, i64 0, metadata !2220, metadata !702), !dbg !2339
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11, !dbg !2340
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !2217, metadata !702), !dbg !2308
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2341
  tail call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !2218, metadata !702), !dbg !2309
  store i8* %46, i8** %4, align 8, !dbg !2342, !tbaa !1232
  %48 = load i64, i64* %6, align 8, !dbg !2343, !tbaa !2246
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2344
  tail call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2219, metadata !702), !dbg !2311
  br label %50, !dbg !2345

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ]
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ]
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ]
  tail call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2219, metadata !702), !dbg !2311
  tail call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2218, metadata !702), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %51, i64 0, metadata !2217, metadata !702), !dbg !2308
  %54 = trunc i32 %42 to i8, !dbg !2346
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2347
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !2218, metadata !702), !dbg !2309
  store i8 %54, i8* %52, align 1, !dbg !2348, !tbaa !826
  %56 = icmp eq i32 %42, %16, !dbg !2349
  br i1 %56, label %57, label %17, !dbg !2350, !llvm.loop !2243

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ]
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ]
  tail call void @llvm.dbg.value(metadata i8* %59, i64 0, metadata !2218, metadata !702), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !2217, metadata !702), !dbg !2308
  %60 = ptrtoint i8* %59 to i64, !dbg !2351
  %61 = ptrtoint i8* %58 to i64, !dbg !2351
  %62 = sub i64 %60, %61, !dbg !2351
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2352
  store i64 %62, i64* %63, align 8, !dbg !2353, !tbaa !1228
  br label %65, !dbg !2354

; <label>:64:                                     ; preds = %33, %31
  br label %65, !dbg !2355

; <label>:65:                                     ; preds = %64, %3, %57
  %66 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %64 ]
  ret %struct.linebuffer* %66, !dbg !2355
}

; Function Attrs: nounwind sspstrong uwtable
define void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #6 !dbg !2356 {
  tail call void @llvm.dbg.value(metadata %struct.linebuffer* %0, i64 0, metadata !2358, metadata !702), !dbg !2359
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2360
  %3 = load i8*, i8** %2, align 8, !dbg !2360, !tbaa !1232
  tail call void @free(i8* %3) #11, !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @memcasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2368, metadata !702), !dbg !2386
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2369, metadata !702), !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !2370, metadata !702), !dbg !2388
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2372, metadata !702), !dbg !2389
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2373, metadata !702), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2371, metadata !702), !dbg !2391
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2371, metadata !702), !dbg !2391
  %4 = icmp eq i64 %2, 0, !dbg !2392
  br i1 %4, label %27, label %5, !dbg !2394

; <label>:5:                                      ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #1, !dbg !2396
  %7 = load i32*, i32** %6, align 8, !tbaa !710
  br label %10, !dbg !2394

; <label>:8:                                      ; preds = %10
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2371, metadata !702), !dbg !2391
  %9 = icmp ult i64 %24, %2, !dbg !2392
  br i1 %9, label %10, label %25, !dbg !2394, !llvm.loop !2398

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2401
  %13 = load i8, i8* %12, align 1, !dbg !2401, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !2374, metadata !702), !dbg !2402
  %14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !2403
  %15 = load i8, i8* %14, align 1, !dbg !2403, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !2378, metadata !702), !dbg !2404
  %16 = zext i8 %13 to i64, !dbg !2396
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !2396
  %18 = load i32, i32* %17, align 4, !dbg !2396, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2380, metadata !702), !dbg !2405
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !2379, metadata !702), !dbg !2406
  %19 = zext i8 %15 to i64, !dbg !2407
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !2407
  %21 = load i32, i32* %20, align 4, !dbg !2407, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !2383, metadata !702), !dbg !2409
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !2382, metadata !702), !dbg !2410
  %22 = sub nsw i32 %18, %21, !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !2385, metadata !702), !dbg !2412
  %23 = icmp eq i32 %22, 0, !dbg !2413
  %24 = add nuw i64 %11, 1, !dbg !2415
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !2371, metadata !702), !dbg !2391
  br i1 %23, label %8, label %25

; <label>:25:                                     ; preds = %8, %10
  %26 = phi i32 [ 0, %8 ], [ %22, %10 ]
  br label %27, !dbg !2417

; <label>:27:                                     ; preds = %25, %3
  %28 = phi i32 [ 0, %3 ], [ %26, %25 ]
  ret i32 %28, !dbg !2417
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define i32 @posix2_version() local_unnamed_addr #6 !dbg !2418 {
  %1 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i64 200809, i64 0, metadata !2422, metadata !702), !dbg !2428
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i64 0, i64 0)) #11, !dbg !2429
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2423, metadata !702), !dbg !2430
  %3 = icmp eq i8* %2, null, !dbg !2431
  br i1 %3, label %14, label %4, !dbg !2432

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* %2, align 1, !dbg !2433, !tbaa !826
  %6 = icmp eq i8 %5, 0, !dbg !2433
  br i1 %6, label %14, label %7, !dbg !2435

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8** %1 to i8*, !dbg !2437
  call void @llvm.lifetime.start(i64 8, i8* nonnull %8) #11, !dbg !2437
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !2424, metadata !879), !dbg !2438
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #11, !dbg !2439
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2427, metadata !702), !dbg !2440
  %10 = load i8*, i8** %1, align 8, !dbg !2441, !tbaa !710
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2424, metadata !702), !dbg !2438
  %11 = load i8, i8* %10, align 1, !dbg !2443, !tbaa !826
  %12 = icmp eq i8 %11, 0, !dbg !2443
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !2422, metadata !702), !dbg !2428
  %13 = select i1 %12, i64 %9, i64 200809, !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !2422, metadata !702), !dbg !2428
  call void @llvm.lifetime.end(i64 8, i8* nonnull %8) #11, !dbg !2445
  br label %14, !dbg !2446

; <label>:14:                                     ; preds = %4, %0, %7
  %15 = phi i64 [ %13, %7 ], [ 200809, %4 ], [ 200809, %0 ]
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !2422, metadata !702), !dbg !2428
  %16 = icmp slt i64 %15, -2147483648, !dbg !2447
  %17 = icmp slt i64 %15, 2147483647, !dbg !2448
  %18 = select i1 %17, i64 %15, i64 2147483647, !dbg !2450
  %19 = trunc i64 %18 to i32, !dbg !2450
  %20 = select i1 %16, i32 -2147483648, i32 %19, !dbg !2451
  ret i32 %20, !dbg !2452
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 !dbg !2454 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2456, metadata !702), !dbg !2459
  %2 = icmp eq i8* %0, null, !dbg !2460
  br i1 %2, label %3, label %6, !dbg !2462

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2463, !tbaa !710
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.98, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #16, !dbg !2465
  tail call void @abort() #14, !dbg !2466
  unreachable, !dbg !2466

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #13, !dbg !2467
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2457, metadata !702), !dbg !2468
  %8 = icmp ne i8* %7, null, !dbg !2469
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2470
  %10 = select i1 %8, i8* %9, i8* %0, !dbg !2472
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2458, metadata !702), !dbg !2473
  %11 = ptrtoint i8* %10 to i64, !dbg !2474
  %12 = ptrtoint i8* %0 to i64, !dbg !2474
  %13 = sub i64 %11, %12, !dbg !2474
  %14 = icmp sgt i64 %13, 6, !dbg !2476
  br i1 %14, label %15, label %24, !dbg !2477

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2478
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.99, i64 0, i64 0), i64 7) #13, !dbg !2478
  %18 = icmp eq i32 %17, 0, !dbg !2480
  br i1 %18, label %19, label %24, !dbg !2481

; <label>:19:                                     ; preds = %15
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !2456, metadata !702), !dbg !2459
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.100, i64 0, i64 0), i64 3) #13, !dbg !2482
  %21 = icmp eq i32 %20, 0, !dbg !2485
  br i1 %21, label %22, label %24, !dbg !2486

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2487
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !2456, metadata !702), !dbg !2459
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2489, !tbaa !710
  br label %24, !dbg !2490

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i8* %25, i64 0, metadata !2456, metadata !702), !dbg !2459
  store i8* %25, i8** @program_name, align 8, !dbg !2491, !tbaa !710
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2492, !tbaa !710
  ret void, !dbg !2493
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 !dbg !2494 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2499, metadata !702), !dbg !2502
  %2 = tail call i32* @__errno_location() #1, !dbg !2503
  %3 = load i32, i32* %2, align 4, !dbg !2503, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !2500, metadata !702), !dbg !2504
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2505
  %5 = bitcast %struct.quoting_options* %0 to i8*, !dbg !2506
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), !dbg !2506
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !2508
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2508
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %8, i64 0, metadata !2501, metadata !702), !dbg !2509
  store i32 %3, i32* %2, align 4, !dbg !2510, !tbaa !840
  ret %struct.quoting_options* %8, !dbg !2511
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2512 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2518, metadata !702), !dbg !2519
  %2 = icmp ne %struct.quoting_options* %0, null, !dbg !2520
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2520
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2521
  %5 = load i32, i32* %4, align 8, !dbg !2521, !tbaa !2523
  ret i32 %5, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2526 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2530, metadata !702), !dbg !2532
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2531, metadata !702), !dbg !2533
  %3 = icmp ne %struct.quoting_options* %0, null, !dbg !2534
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2534
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2535
  store i32 %1, i32* %5, align 8, !dbg !2537, !tbaa !2523
  ret void, !dbg !2538
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 !dbg !2539 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2543, metadata !702), !dbg !2551
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2544, metadata !702), !dbg !2552
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !2545, metadata !702), !dbg !2553
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2546, metadata !702), !dbg !2554
  %4 = icmp ne %struct.quoting_options* %0, null, !dbg !2555
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options, !dbg !2555
  %6 = lshr i8 %1, 5, !dbg !2556
  %7 = zext i8 %6 to i64, !dbg !2556
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2558
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2547, metadata !702), !dbg !2559
  %9 = and i8 %1, 31, !dbg !2560
  %10 = zext i8 %9 to i32, !dbg !2561
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2549, metadata !702), !dbg !2562
  %11 = load i32, i32* %8, align 4, !dbg !2563, !tbaa !840
  %12 = lshr i32 %11, %10, !dbg !2564
  %13 = and i32 %12, 1, !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2550, metadata !702), !dbg !2566
  %14 = and i32 %2, 1, !dbg !2567
  %15 = xor i32 %13, %14, !dbg !2568
  %16 = shl i32 %15, %10, !dbg !2569
  %17 = xor i32 %16, %11, !dbg !2570
  store i32 %17, i32* %8, align 4, !dbg !2570, !tbaa !840
  ret i32 %13, !dbg !2571
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 !dbg !2572 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2576, metadata !702), !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !2577, metadata !702), !dbg !2580
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2581
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2576, metadata !702), !dbg !2579
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2583
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2576, metadata !702), !dbg !2579
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2584
  %6 = load i32, i32* %5, align 4, !dbg !2584, !tbaa !2585
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !2578, metadata !702), !dbg !2586
  store i32 %1, i32* %5, align 4, !dbg !2587, !tbaa !2585
  ret i32 %6, !dbg !2588
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 !dbg !2589 {
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %0, i64 0, metadata !2593, metadata !702), !dbg !2596
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2594, metadata !702), !dbg !2597
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2595, metadata !702), !dbg !2598
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2599
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2593, metadata !702), !dbg !2596
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2601
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !702), !dbg !2596
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2602
  store i32 10, i32* %6, align 8, !dbg !2603, !tbaa !2523
  %7 = icmp ne i8* %1, null, !dbg !2604
  %8 = icmp ne i8* %2, null, !dbg !2606
  %9 = and i1 %7, %8, !dbg !2608
  br i1 %9, label %11, label %10, !dbg !2608

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !2609
  unreachable, !dbg !2609

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2610
  store i8* %1, i8** %12, align 8, !dbg !2611, !tbaa !2612
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2613
  store i8* %2, i8** %13, align 8, !dbg !2614, !tbaa !2615
  ret void, !dbg !2616
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 !dbg !2617 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2621, metadata !702), !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2622, metadata !702), !dbg !2630
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2623, metadata !702), !dbg !2631
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2624, metadata !702), !dbg !2632
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2625, metadata !702), !dbg !2633
  %6 = icmp ne %struct.quoting_options* %4, null, !dbg !2634
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options, !dbg !2634
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %7, i64 0, metadata !2626, metadata !702), !dbg !2635
  %8 = tail call i32* @__errno_location() #1, !dbg !2636
  %9 = load i32, i32* %8, align 4, !dbg !2636, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2627, metadata !702), !dbg !2637
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2638
  %11 = load i32, i32* %10, align 8, !dbg !2638, !tbaa !2523
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2639
  %13 = load i32, i32* %12, align 4, !dbg !2639, !tbaa !2585
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2640
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2641
  %16 = load i8*, i8** %15, align 8, !dbg !2641, !tbaa !2612
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2642
  %18 = load i8*, i8** %17, align 8, !dbg !2642, !tbaa !2615
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2628, metadata !702), !dbg !2644
  store i32 %9, i32* %8, align 4, !dbg !2645, !tbaa !840
  ret i64 %19, !dbg !2646
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 !dbg !2647 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2653, metadata !702), !dbg !2714
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !2654, metadata !702), !dbg !2715
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2655, metadata !702), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !2656, metadata !702), !dbg !2717
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !2657, metadata !702), !dbg !2718
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !2658, metadata !702), !dbg !2719
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !2659, metadata !702), !dbg !2720
  tail call void @llvm.dbg.value(metadata i8* %7, i64 0, metadata !2660, metadata !702), !dbg !2721
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !2661, metadata !702), !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2663, metadata !702), !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2664, metadata !702), !dbg !2724
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !2665, metadata !702), !dbg !2725
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2666, metadata !702), !dbg !2726
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2667, metadata !702), !dbg !2727
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !2728
  %14 = icmp eq i64 %13, 1, !dbg !2729
  %15 = lshr i32 %5, 1, !dbg !2730
  %16 = trunc i32 %15 to i8, !dbg !2730
  %17 = and i8 %16, 1, !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !2669, metadata !702), !dbg !2730
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2670, metadata !702), !dbg !2731
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2671, metadata !702), !dbg !2732
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2672, metadata !702), !dbg !2733
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27, !dbg !2734

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
  call void @llvm.dbg.value(metadata i64 %40, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %39, i64 0, metadata !2672, metadata !702), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %38, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %35, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !2667, metadata !702), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %33, i64 0, metadata !2666, metadata !702), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %32, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %30, i64 0, metadata !2661, metadata !702), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !2660, metadata !702), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !2657, metadata !702), !dbg !2718
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
  ], !dbg !2735

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2657, metadata !702), !dbg !2718
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2657, metadata !702), !dbg !2718
  br label %95, !dbg !2736

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !2657, metadata !702), !dbg !2718
  %43 = and i8 %36, 1, !dbg !2738
  %44 = icmp eq i8 %43, 0, !dbg !2738
  br i1 %44, label %45, label %95, !dbg !2736

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2740
  br i1 %46, label %95, label %47, !dbg !2744

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2746, !tbaa !826
  br label %95, !dbg !2746

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), i32 %28), !dbg !2748
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !2660, metadata !702), !dbg !2721
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), i32 %28), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %50, i64 0, metadata !2661, metadata !702), !dbg !2722
  br label %51, !dbg !2753

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2661, metadata !702), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2660, metadata !702), !dbg !2721
  %54 = and i8 %36, 1, !dbg !2754
  %55 = icmp eq i8 %54, 0, !dbg !2754
  br i1 %55, label %56, label %73, !dbg !2756

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2663, metadata !702), !dbg !2723
  %57 = load i8, i8* %52, align 1, !dbg !2757, !tbaa !826
  %58 = icmp eq i8 %57, 0, !dbg !2761
  br i1 %58, label %73, label %59, !dbg !2761

; <label>:59:                                     ; preds = %56
  br label %60, !dbg !2763

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40, !dbg !2763
  br i1 %64, label %65, label %67, !dbg !2767

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63, !dbg !2769
  store i8 %61, i8* %66, align 1, !dbg !2769, !tbaa !826
  br label %67, !dbg !2769

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2663, metadata !702), !dbg !2723
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %69, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %68, i64 0, metadata !2663, metadata !702), !dbg !2723
  %70 = load i8, i8* %69, align 1, !dbg !2757, !tbaa !826
  %71 = icmp eq i8 %70, 0, !dbg !2761
  br i1 %71, label %72, label %60, !dbg !2761, !llvm.loop !2775

; <label>:72:                                     ; preds = %67
  br label %73, !dbg !2723

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  call void @llvm.dbg.value(metadata i64 %74, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2667, metadata !702), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %53, i64 0, metadata !2665, metadata !702), !dbg !2725
  %75 = call i64 @strlen(i8* %53) #13, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %75, i64 0, metadata !2666, metadata !702), !dbg !2726
  br label %95, !dbg !2779

; <label>:76:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2667, metadata !702), !dbg !2727
  br label %77, !dbg !2780

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  call void @llvm.dbg.value(metadata i8 %78, i64 0, metadata !2667, metadata !702), !dbg !2727
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2669, metadata !702), !dbg !2730
  br label %79, !dbg !2781

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  call void @llvm.dbg.value(metadata i8 %81, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i8 %80, i64 0, metadata !2667, metadata !702), !dbg !2727
  %82 = and i8 %81, 1, !dbg !2782
  %83 = icmp eq i8 %82, 0, !dbg !2782
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2667, metadata !702), !dbg !2727
  %84 = select i1 %83, i8 1, i8 %80, !dbg !2784
  br label %85, !dbg !2784

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  call void @llvm.dbg.value(metadata i8 %87, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i8 %86, i64 0, metadata !2667, metadata !702), !dbg !2727
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2657, metadata !702), !dbg !2718
  %88 = and i8 %87, 1, !dbg !2785
  %89 = icmp eq i8 %88, 0, !dbg !2785
  br i1 %89, label %90, label %95, !dbg !2787

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0, !dbg !2788
  br i1 %91, label %95, label %92, !dbg !2792

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1, !dbg !2794, !tbaa !826
  br label %95, !dbg !2794

; <label>:93:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2669, metadata !702), !dbg !2730
  br label %95, !dbg !2796

; <label>:94:                                     ; preds = %27
  call void @abort() #14, !dbg !2797
  unreachable, !dbg !2797

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  call void @llvm.dbg.value(metadata i8 %103, i64 0, metadata !2669, metadata !702), !dbg !2730
  call void @llvm.dbg.value(metadata i8 %102, i64 0, metadata !2667, metadata !702), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %101, i64 0, metadata !2666, metadata !702), !dbg !2726
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %99, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %98, i64 0, metadata !2661, metadata !702), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !2660, metadata !702), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %96, i64 0, metadata !2657, metadata !702), !dbg !2718
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2662, metadata !702), !dbg !2798
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
  br label %123, !dbg !2799

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %130, i64 0, metadata !2672, metadata !702), !dbg !2733
  call void @llvm.dbg.value(metadata i8 %129, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %128, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %127, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %126, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %124, i64 0, metadata !2662, metadata !702), !dbg !2798
  %132 = icmp eq i64 %127, -1, !dbg !2800
  br i1 %132, label %135, label %133, !dbg !2802

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127, !dbg !2803
  br i1 %134, label %597, label %139, !dbg !2805

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2807
  %137 = load i8, i8* %136, align 1, !dbg !2807, !tbaa !826
  %138 = icmp eq i8 %137, 0, !dbg !2809
  br i1 %138, label %597, label %139, !dbg !2805

; <label>:139:                                    ; preds = %133, %135
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2678, metadata !702), !dbg !2810
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2680, metadata !702), !dbg !2812
  br i1 %109, label %140, label %155, !dbg !2813

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101, !dbg !2815
  %142 = and i1 %110, %132, !dbg !2817
  br i1 %142, label %143, label %145, !dbg !2817

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #13, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %144, i64 0, metadata !2656, metadata !702), !dbg !2717
  br label %145, !dbg !2819

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  call void @llvm.dbg.value(metadata i64 %146, i64 0, metadata !2656, metadata !702), !dbg !2717
  %147 = icmp ugt i64 %141, %146, !dbg !2821
  br i1 %147, label %155, label %148, !dbg !2823

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2824
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #13, !dbg !2825
  %151 = icmp ne i32 %150, 0, !dbg !2826
  %152 = or i1 %151, %112, !dbg !2826
  %153 = xor i1 %151, true, !dbg !2826
  %154 = zext i1 %153 to i8, !dbg !2826
  br i1 %152, label %155, label %644, !dbg !2826

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2678, metadata !702), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %156, i64 0, metadata !2656, metadata !702), !dbg !2717
  %158 = getelementptr inbounds i8, i8* %2, i64 %124, !dbg !2828
  %159 = load i8, i8* %158, align 1, !dbg !2828, !tbaa !826
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2673, metadata !702), !dbg !2829
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
  ], !dbg !2830

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209, !dbg !2831

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644, !dbg !2832

; <label>:162:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2679, metadata !702), !dbg !2811
  %163 = and i8 %128, 1, !dbg !2837
  %164 = icmp eq i8 %163, 0, !dbg !2837
  %165 = and i1 %114, %164, !dbg !2840
  br i1 %165, label %166, label %182, !dbg !2840

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131, !dbg !2842
  br i1 %167, label %168, label %170, !dbg !2847

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2849
  store i8 39, i8* %169, align 1, !dbg !2849, !tbaa !826
  br label %170, !dbg !2849

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %171, i64 0, metadata !2663, metadata !702), !dbg !2723
  %172 = icmp ult i64 %171, %131, !dbg !2853
  br i1 %172, label %173, label %175, !dbg !2857

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171, !dbg !2859
  store i8 36, i8* %174, align 1, !dbg !2859, !tbaa !826
  br label %175, !dbg !2859

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %176, i64 0, metadata !2663, metadata !702), !dbg !2723
  %177 = icmp ult i64 %176, %131, !dbg !2863
  br i1 %177, label %178, label %180, !dbg !2867

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176, !dbg !2869
  store i8 39, i8* %179, align 1, !dbg !2869, !tbaa !826
  br label %180, !dbg !2869

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %181, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %182, !dbg !2873

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  call void @llvm.dbg.value(metadata i8 %184, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %183, i64 0, metadata !2663, metadata !702), !dbg !2723
  %185 = icmp ult i64 %183, %131, !dbg !2875
  br i1 %185, label %186, label %188, !dbg !2879

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183, !dbg !2881
  store i8 92, i8* %187, align 1, !dbg !2881, !tbaa !826
  br label %188, !dbg !2881

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %189, i64 0, metadata !2663, metadata !702), !dbg !2723
  br i1 %106, label %190, label %476, !dbg !2885

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1, !dbg !2887
  %192 = icmp ult i64 %191, %156, !dbg !2889
  br i1 %192, label %193, label %476, !dbg !2890

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191, !dbg !2891
  %195 = load i8, i8* %194, align 1, !dbg !2891, !tbaa !826
  %196 = add i8 %195, -48, !dbg !2893
  %197 = icmp ult i8 %196, 10, !dbg !2893
  br i1 %197, label %198, label %476, !dbg !2893

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131, !dbg !2894
  br i1 %199, label %200, label %202, !dbg !2899

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2901
  store i8 48, i8* %201, align 1, !dbg !2901, !tbaa !826
  br label %202, !dbg !2901

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %203, i64 0, metadata !2663, metadata !702), !dbg !2723
  %204 = icmp ult i64 %203, %131, !dbg !2905
  br i1 %204, label %205, label %207, !dbg !2909

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203, !dbg !2911
  store i8 48, i8* %206, align 1, !dbg !2911, !tbaa !826
  br label %207, !dbg !2911

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %208, i64 0, metadata !2663, metadata !702), !dbg !2723
  br label %476, !dbg !2915

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587, !dbg !2916

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ], !dbg !2917

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644, !dbg !2918

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213, !dbg !2920

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2, !dbg !2922
  %215 = icmp ult i64 %214, %156, !dbg !2924
  br i1 %215, label %216, label %476, !dbg !2925

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1, !dbg !2926
  %218 = getelementptr inbounds i8, i8* %2, i64 %217, !dbg !2928
  %219 = load i8, i8* %218, align 1, !dbg !2928, !tbaa !826
  %220 = icmp eq i8 %219, 63, !dbg !2929
  br i1 %220, label %221, label %476, !dbg !2930

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214, !dbg !2932
  %223 = load i8, i8* %222, align 1, !dbg !2932, !tbaa !826
  %224 = sext i8 %223 to i32, !dbg !2932
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
  ], !dbg !2933

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644, !dbg !2934

; <label>:226:                                    ; preds = %225
  call void @llvm.dbg.value(metadata i8 %223, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i64 %214, i64 0, metadata !2662, metadata !702), !dbg !2798
  %227 = icmp ult i64 %125, %131, !dbg !2936
  br i1 %227, label %228, label %230, !dbg !2940

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !2942
  store i8 63, i8* %229, align 1, !dbg !2942, !tbaa !826
  br label %230, !dbg !2942

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %231, i64 0, metadata !2663, metadata !702), !dbg !2723
  %232 = icmp ult i64 %231, %131, !dbg !2946
  br i1 %232, label %233, label %235, !dbg !2950

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231, !dbg !2952
  store i8 34, i8* %234, align 1, !dbg !2952, !tbaa !826
  br label %235, !dbg !2952

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %236, i64 0, metadata !2663, metadata !702), !dbg !2723
  %237 = icmp ult i64 %236, %131, !dbg !2956
  br i1 %237, label %238, label %240, !dbg !2960

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2962
  store i8 34, i8* %239, align 1, !dbg !2962, !tbaa !826
  br label %240, !dbg !2962

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %241, i64 0, metadata !2663, metadata !702), !dbg !2723
  %242 = icmp ult i64 %241, %131, !dbg !2966
  br i1 %242, label %243, label %245, !dbg !2970

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2972
  store i8 63, i8* %244, align 1, !dbg !2972, !tbaa !826
  br label %245, !dbg !2972

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %246, i64 0, metadata !2663, metadata !702), !dbg !2723
  br label %476, !dbg !2976

; <label>:247:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 98, i64 0, metadata !2677, metadata !702), !dbg !2977
  br label %257, !dbg !2978

; <label>:248:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 102, i64 0, metadata !2677, metadata !702), !dbg !2977
  br label %257, !dbg !2979

; <label>:249:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 114, i64 0, metadata !2677, metadata !702), !dbg !2977
  br label %255, !dbg !2980

; <label>:250:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 116, i64 0, metadata !2677, metadata !702), !dbg !2977
  br label %255, !dbg !2981

; <label>:251:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 118, i64 0, metadata !2677, metadata !702), !dbg !2977
  br label %257, !dbg !2982

; <label>:252:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 %159, i64 0, metadata !2677, metadata !702), !dbg !2977
  br i1 %114, label %253, label %254, !dbg !2983

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644, !dbg !2984

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255, !dbg !2987

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  call void @llvm.dbg.value(metadata i8 %256, i64 0, metadata !2677, metadata !702), !dbg !2977
  br i1 %118, label %257, label %644, !dbg !2989

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  call void @llvm.dbg.value(metadata i8 %258, i64 0, metadata !2677, metadata !702), !dbg !2977
  br i1 %105, label %503, label %476, !dbg !2991

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1, !dbg !2992
  br i1 %260, label %261, label %266, !dbg !2994

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1, !dbg !2995, !tbaa !826
  %263 = icmp ne i8 %262, 0, !dbg !2997
  %264 = icmp ne i64 %124, 0, !dbg !2998
  %265 = or i1 %264, %263, !dbg !3000
  br i1 %265, label %476, label %272, !dbg !3000

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1, !dbg !3001
  %268 = icmp ne i64 %124, 0, !dbg !2998
  %269 = or i1 %268, %267, !dbg !3003
  br i1 %269, label %476, label %272, !dbg !3003

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0, !dbg !2998
  br i1 %271, label %272, label %476, !dbg !3005

; <label>:272:                                    ; preds = %270, %266, %261, %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2680, metadata !702), !dbg !2812
  br label %273, !dbg !3006

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  call void @llvm.dbg.value(metadata i8 %274, i64 0, metadata !2680, metadata !702), !dbg !2812
  br i1 %118, label %476, label %644, !dbg !3007

; <label>:275:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2680, metadata !702), !dbg !2812
  br i1 %114, label %276, label %476, !dbg !3009

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644, !dbg !3010

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0, !dbg !3013
  %279 = icmp ne i64 %126, 0, !dbg !3015
  %280 = or i1 %279, %278, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %131, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2654, metadata !702), !dbg !2715
  %281 = select i1 %280, i64 %126, i64 %131, !dbg !3017
  %282 = select i1 %280, i64 %131, i64 0, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %282, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %281, i64 0, metadata !2664, metadata !702), !dbg !2724
  %283 = icmp ult i64 %125, %282, !dbg !3018
  br i1 %283, label %284, label %286, !dbg !3022

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125, !dbg !3024
  store i8 39, i8* %285, align 1, !dbg !3024, !tbaa !826
  br label %286, !dbg !3024

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %287, i64 0, metadata !2663, metadata !702), !dbg !2723
  %288 = icmp ult i64 %287, %282, !dbg !3028
  br i1 %288, label %289, label %291, !dbg !3032

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !3034
  store i8 92, i8* %290, align 1, !dbg !3034, !tbaa !826
  br label %291, !dbg !3034

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2, !dbg !3036
  call void @llvm.dbg.value(metadata i64 %292, i64 0, metadata !2663, metadata !702), !dbg !2723
  %293 = icmp ult i64 %292, %282, !dbg !3038
  br i1 %293, label %294, label %296, !dbg !3042

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !3044
  store i8 39, i8* %295, align 1, !dbg !3044, !tbaa !826
  br label %296, !dbg !3044

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %297, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %476, !dbg !3048

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308, !dbg !3049

; <label>:299:                                    ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2681, metadata !702), !dbg !3050
  %300 = tail call i16** @__ctype_b_loc() #1, !dbg !3051
  %301 = load i16*, i16** %300, align 8, !dbg !3051, !tbaa !710
  %302 = zext i8 %159 to i64, !dbg !3051
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !3051
  %304 = load i16, i16* %303, align 2, !dbg !3051, !tbaa !1521
  %305 = lshr i16 %304, 14, !dbg !3053
  %306 = trunc i16 %305 to i8, !dbg !3053
  %307 = and i8 %306, 1, !dbg !3053
  call void @llvm.dbg.value(metadata i8 %307, i64 0, metadata !2684, metadata !702), !dbg !3054
  br label %368, !dbg !3055

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11, !dbg !3056
  store i64 0, i64* %10, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2684, metadata !702), !dbg !3054
  %309 = icmp eq i64 %156, -1, !dbg !3058
  br i1 %309, label %310, label %312, !dbg !3060, !llvm.loop !3061

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #13, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %311, i64 0, metadata !2656, metadata !702), !dbg !2717
  br label %312, !dbg !3065, !llvm.loop !3061

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314, !dbg !3054

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.dbg.value(metadata i8 %316, i64 0, metadata !2684, metadata !702), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %313, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11, !dbg !3066
  %317 = add i64 %315, %124, !dbg !3067
  %318 = getelementptr inbounds i8, i8* %2, i64 %317, !dbg !3068
  %319 = sub i64 %313, %317, !dbg !3069
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2685, metadata !879), !dbg !3070
  call void @llvm.dbg.value(metadata i32* %12, i64 0, metadata !2700, metadata !879), !dbg !3071
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %320, i64 0, metadata !2703, metadata !702), !dbg !3073
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ], !dbg !3074

; <label>:321:                                    ; preds = %314
  call void @llvm.dbg.value(metadata i64 %315, i64 0, metadata !2681, metadata !702), !dbg !3050
  %322 = icmp ugt i64 %313, %317, !dbg !3075
  br i1 %322, label %323, label %351, !dbg !3078

; <label>:323:                                    ; preds = %321
  br label %324, !dbg !3079

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325, !dbg !3079
  %328 = load i8, i8* %327, align 1, !dbg !3079, !tbaa !826
  %329 = icmp eq i8 %328, 0, !dbg !3081
  br i1 %329, label %348, label %330, !dbg !3082

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %331, i64 0, metadata !2681, metadata !702), !dbg !3050
  %332 = add i64 %331, %124, !dbg !3085
  %333 = icmp ult i64 %332, %313, !dbg !3075
  br i1 %333, label %324, label %348, !dbg !3078, !llvm.loop !3086

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1, !dbg !3088
  %336 = and i1 %116, %335, !dbg !3092
  call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !2704, metadata !702), !dbg !3093
  br i1 %336, label %337, label %355, !dbg !3092

; <label>:337:                                    ; preds = %334
  br label %338, !dbg !3094

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317, !dbg !3094
  %341 = getelementptr inbounds i8, i8* %2, i64 %340, !dbg !3095
  %342 = load i8, i8* %341, align 1, !dbg !3095, !tbaa !826
  %343 = sext i8 %342 to i32, !dbg !3095
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ], !dbg !3096

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2704, metadata !702), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %345, i64 0, metadata !2704, metadata !702), !dbg !3093
  %346 = icmp ult i64 %345, %320, !dbg !3088
  br i1 %346, label %338, label %354, !dbg !3099, !llvm.loop !3101

; <label>:347:                                    ; preds = %314
  br label %351, !dbg !3054

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351, !dbg !3054

; <label>:350:                                    ; preds = %314
  br label %351, !dbg !3054

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2684, metadata !702), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3104
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355, !dbg !3105

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4, !dbg !3105, !tbaa !840
  call void @llvm.dbg.value(metadata i32 %356, i64 0, metadata !2700, metadata !702), !dbg !3071
  %357 = call i32 @iswprint(i32 %356) #11, !dbg !3107
  %358 = icmp eq i32 %357, 0, !dbg !3107
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2684, metadata !702), !dbg !3054
  %359 = select i1 %358, i8 0, i8 %316, !dbg !3108
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2684, metadata !702), !dbg !3054
  %360 = add i64 %320, %315, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2684, metadata !702), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, i64 0, metadata !2685, metadata !879), !dbg !3070
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #13, !dbg !3110
  %362 = icmp eq i32 %361, 0, !dbg !3111
  br i1 %362, label %314, label %363, !dbg !3112, !llvm.loop !3061

; <label>:363:                                    ; preds = %355
  br label %364, !dbg !3114

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !3114
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.dbg.value(metadata i8 %359, i64 0, metadata !2684, metadata !702), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %360, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11, !dbg !3104
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11, !dbg !3114
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  call void @llvm.dbg.value(metadata i8 %371, i64 0, metadata !2684, metadata !702), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %370, i64 0, metadata !2681, metadata !702), !dbg !3050
  call void @llvm.dbg.value(metadata i64 %369, i64 0, metadata !2656, metadata !702), !dbg !2717
  %372 = and i8 %371, 1, !dbg !3115
  %373 = icmp ne i8 %372, 0, !dbg !3115
  call void @llvm.dbg.value(metadata i8 %372, i64 0, metadata !2680, metadata !702), !dbg !2812
  %374 = icmp ult i64 %370, 2, !dbg !3116
  %375 = or i1 %373, %113, !dbg !3117
  %376 = and i1 %374, %375, !dbg !3119
  br i1 %376, label %476, label %377, !dbg !3119

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %378, i64 0, metadata !2711, metadata !702), !dbg !3121
  br label %379, !dbg !3122

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  call void @llvm.dbg.value(metadata i8 %385, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %384, i64 0, metadata !2678, metadata !702), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %383, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %382, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %381, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %380, i64 0, metadata !2662, metadata !702), !dbg !2798
  br i1 %375, label %432, label %386, !dbg !3123

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643, !dbg !3128

; <label>:387:                                    ; preds = %386
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2679, metadata !702), !dbg !2811
  %388 = and i8 %382, 1, !dbg !3132
  %389 = icmp eq i8 %388, 0, !dbg !3132
  %390 = and i1 %114, %389, !dbg !3135
  br i1 %390, label %391, label %407, !dbg !3135

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131, !dbg !3137
  br i1 %392, label %393, label %395, !dbg !3142

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3144
  store i8 39, i8* %394, align 1, !dbg !3144, !tbaa !826
  br label %395, !dbg !3144

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %396, i64 0, metadata !2663, metadata !702), !dbg !2723
  %397 = icmp ult i64 %396, %131, !dbg !3148
  br i1 %397, label %398, label %400, !dbg !3152

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3154
  store i8 36, i8* %399, align 1, !dbg !3154, !tbaa !826
  br label %400, !dbg !3154

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %401, i64 0, metadata !2663, metadata !702), !dbg !2723
  %402 = icmp ult i64 %401, %131, !dbg !3158
  br i1 %402, label %403, label %405, !dbg !3162

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !3164
  store i8 39, i8* %404, align 1, !dbg !3164, !tbaa !826
  br label %405, !dbg !3164

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %406, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %407, !dbg !3168

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  call void @llvm.dbg.value(metadata i8 %409, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %408, i64 0, metadata !2663, metadata !702), !dbg !2723
  %410 = icmp ult i64 %408, %131, !dbg !3170
  br i1 %410, label %411, label %413, !dbg !3174

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !3176
  store i8 92, i8* %412, align 1, !dbg !3176, !tbaa !826
  br label %413, !dbg !3176

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i64 %414, i64 0, metadata !2663, metadata !702), !dbg !2723
  %415 = icmp ult i64 %414, %131, !dbg !3180
  br i1 %415, label %416, label %420, !dbg !3184

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6, !dbg !3186
  %418 = or i8 %417, 48, !dbg !3186
  %419 = getelementptr inbounds i8, i8* %0, i64 %414, !dbg !3186
  store i8 %418, i8* %419, align 1, !dbg !3186, !tbaa !826
  br label %420, !dbg !3186

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %421, i64 0, metadata !2663, metadata !702), !dbg !2723
  %422 = icmp ult i64 %421, %131, !dbg !3190
  br i1 %422, label %423, label %428, !dbg !3194

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3, !dbg !3196
  %425 = and i8 %424, 7, !dbg !3196
  %426 = or i8 %425, 48, !dbg !3196
  %427 = getelementptr inbounds i8, i8* %0, i64 %421, !dbg !3196
  store i8 %426, i8* %427, align 1, !dbg !3196, !tbaa !826
  br label %428, !dbg !3196

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %429, i64 0, metadata !2663, metadata !702), !dbg !2723
  %430 = and i8 %383, 7, !dbg !3200
  %431 = or i8 %430, 48, !dbg !3201
  call void @llvm.dbg.value(metadata i8 %431, i64 0, metadata !2673, metadata !702), !dbg !2829
  br label %441, !dbg !3202

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1, !dbg !3203
  %434 = icmp eq i8 %433, 0, !dbg !3203
  br i1 %434, label %441, label %435, !dbg !3205

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131, !dbg !3206
  br i1 %436, label %437, label %439, !dbg !3211

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381, !dbg !3213
  store i8 92, i8* %438, align 1, !dbg !3213, !tbaa !826
  br label %439, !dbg !3213

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %440, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2678, metadata !702), !dbg !2810
  br label %441, !dbg !3217

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  call void @llvm.dbg.value(metadata i8 %446, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %445, i64 0, metadata !2678, metadata !702), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %444, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %443, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %442, i64 0, metadata !2663, metadata !702), !dbg !2723
  %447 = add i64 %380, 1, !dbg !3218
  %448 = icmp ugt i64 %378, %447, !dbg !3220
  br i1 %448, label %449, label %541, !dbg !3221

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1, !dbg !3222
  %451 = icmp ne i8 %450, 0, !dbg !3222
  %452 = and i8 %446, 1, !dbg !3226
  %453 = icmp eq i8 %452, 0, !dbg !3226
  %454 = and i1 %451, %453, !dbg !3222
  br i1 %454, label %455, label %466, !dbg !3222

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131, !dbg !3228
  br i1 %456, label %457, label %459, !dbg !3233

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442, !dbg !3235
  store i8 39, i8* %458, align 1, !dbg !3235, !tbaa !826
  br label %459, !dbg !3235

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %460, i64 0, metadata !2663, metadata !702), !dbg !2723
  %461 = icmp ult i64 %460, %131, !dbg !3239
  br i1 %461, label %462, label %464, !dbg !3243

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460, !dbg !3245
  store i8 39, i8* %463, align 1, !dbg !3245, !tbaa !826
  br label %464, !dbg !3245

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2, !dbg !3247
  call void @llvm.dbg.value(metadata i64 %465, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %466, !dbg !3249

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  call void @llvm.dbg.value(metadata i8 %468, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %467, i64 0, metadata !2663, metadata !702), !dbg !2723
  %469 = icmp ult i64 %467, %131, !dbg !3251
  br i1 %469, label %470, label %472, !dbg !3255

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467, !dbg !3257
  store i8 %444, i8* %471, align 1, !dbg !3257, !tbaa !826
  br label %472, !dbg !3257

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1, !dbg !3259
  call void @llvm.dbg.value(metadata i64 %473, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %447, i64 0, metadata !2662, metadata !702), !dbg !2798
  %474 = getelementptr inbounds i8, i8* %2, i64 %447, !dbg !3261
  %475 = load i8, i8* %474, align 1, !dbg !3261, !tbaa !826
  call void @llvm.dbg.value(metadata i8 %475, i64 0, metadata !2673, metadata !702), !dbg !2829
  br label %379, !dbg !3262, !llvm.loop !3264

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
  call void @llvm.dbg.value(metadata i64 %486, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %485, i64 0, metadata !2680, metadata !702), !dbg !2812
  call void @llvm.dbg.value(metadata i8 %484, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %157, i64 0, metadata !2678, metadata !702), !dbg !2810
  call void @llvm.dbg.value(metadata i8 %483, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %482, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %481, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %480, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %479, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %478, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %477, i64 0, metadata !2662, metadata !702), !dbg !2798
  br i1 %107, label %488, label %487, !dbg !3267

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501, !dbg !3269

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489, !dbg !3270

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5, !dbg !3271
  %491 = zext i8 %490 to i64, !dbg !3271
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3273
  %493 = load i32, i32* %492, align 4, !dbg !3273, !tbaa !840
  %494 = and i8 %483, 31, !dbg !3274
  %495 = zext i8 %494 to i32, !dbg !3275
  %496 = shl i32 1, %495, !dbg !3276
  %497 = and i32 %493, %496, !dbg !3276
  %498 = icmp eq i32 %497, 0, !dbg !3276
  %499 = icmp eq i8 %157, 0, !dbg !3277
  %500 = and i1 %499, %498, !dbg !3278
  br i1 %500, label %542, label %503, !dbg !3278

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0, !dbg !3277
  br i1 %502, label %542, label %503, !dbg !3279

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
  call void @llvm.dbg.value(metadata i64 %512, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %511, i64 0, metadata !2680, metadata !702), !dbg !2812
  call void @llvm.dbg.value(metadata i8 %510, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %509, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %508, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %507, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %506, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %505, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %504, i64 0, metadata !2662, metadata !702), !dbg !2798
  br i1 %112, label %513, label %644, !dbg !3281

; <label>:513:                                    ; preds = %503
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2679, metadata !702), !dbg !2811
  %514 = and i8 %508, 1, !dbg !3284
  %515 = icmp eq i8 %514, 0, !dbg !3284
  %516 = and i1 %114, %515, !dbg !3287
  br i1 %516, label %517, label %533, !dbg !3287

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512, !dbg !3289
  br i1 %518, label %519, label %521, !dbg !3294

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505, !dbg !3296
  store i8 39, i8* %520, align 1, !dbg !3296, !tbaa !826
  br label %521, !dbg !3296

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %522, i64 0, metadata !2663, metadata !702), !dbg !2723
  %523 = icmp ult i64 %522, %512, !dbg !3300
  br i1 %523, label %524, label %526, !dbg !3304

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522, !dbg !3306
  store i8 36, i8* %525, align 1, !dbg !3306, !tbaa !826
  br label %526, !dbg !3306

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %527, i64 0, metadata !2663, metadata !702), !dbg !2723
  %528 = icmp ult i64 %527, %512, !dbg !3310
  br i1 %528, label %529, label %531, !dbg !3314

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3316
  store i8 39, i8* %530, align 1, !dbg !3316, !tbaa !826
  br label %531, !dbg !3316

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %532, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %533, !dbg !3320

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  call void @llvm.dbg.value(metadata i8 %535, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %534, i64 0, metadata !2663, metadata !702), !dbg !2723
  %536 = icmp ult i64 %534, %512, !dbg !3322
  br i1 %536, label %537, label %539, !dbg !3326

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534, !dbg !3328
  store i8 92, i8* %538, align 1, !dbg !3328, !tbaa !826
  br label %539, !dbg !3328

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %540, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2680, metadata !702), !dbg !2812
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2662, metadata !702), !dbg !2798
  br label %569, !dbg !3332

; <label>:541:                                    ; preds = %441
  br label %542, !dbg !2715

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
  call void @llvm.dbg.value(metadata i64 %552, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i8 %551, i64 0, metadata !2680, metadata !702), !dbg !2812
  call void @llvm.dbg.value(metadata i8 %550, i64 0, metadata !2679, metadata !702), !dbg !2811
  call void @llvm.dbg.value(metadata i8 %549, i64 0, metadata !2673, metadata !702), !dbg !2829
  call void @llvm.dbg.value(metadata i8 %548, i64 0, metadata !2671, metadata !702), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %547, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %546, i64 0, metadata !2656, metadata !702), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %545, i64 0, metadata !2664, metadata !702), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %544, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i64 %543, i64 0, metadata !2662, metadata !702), !dbg !2798
  %553 = and i8 %547, 1, !dbg !3332
  %554 = icmp ne i8 %553, 0, !dbg !3332
  %555 = and i8 %550, 1, !dbg !3336
  %556 = icmp eq i8 %555, 0, !dbg !3336
  %557 = and i1 %554, %556, !dbg !3332
  br i1 %557, label %558, label %569, !dbg !3332

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552, !dbg !3338
  br i1 %559, label %560, label %562, !dbg !3343

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544, !dbg !3345
  store i8 39, i8* %561, align 1, !dbg !3345, !tbaa !826
  br label %562, !dbg !3345

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %563, i64 0, metadata !2663, metadata !702), !dbg !2723
  %564 = icmp ult i64 %563, %552, !dbg !3349
  br i1 %564, label %565, label %567, !dbg !3353

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563, !dbg !3355
  store i8 39, i8* %566, align 1, !dbg !3355, !tbaa !826
  br label %567, !dbg !3355

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %568, i64 0, metadata !2663, metadata !702), !dbg !2723
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2670, metadata !702), !dbg !2731
  br label %569, !dbg !3359

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
  call void @llvm.dbg.value(metadata i8 %578, i64 0, metadata !2670, metadata !702), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %577, i64 0, metadata !2663, metadata !702), !dbg !2723
  %579 = icmp ult i64 %577, %570, !dbg !3361
  br i1 %579, label %580, label %582, !dbg !3365

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577, !dbg !3367
  store i8 %572, i8* %581, align 1, !dbg !3367, !tbaa !826
  br label %582, !dbg !3367

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1, !dbg !3369
  call void @llvm.dbg.value(metadata i64 %583, i64 0, metadata !2663, metadata !702), !dbg !2723
  %584 = and i8 %571, 1, !dbg !3371
  %585 = icmp eq i8 %584, 0, !dbg !3371
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !2672, metadata !702), !dbg !2733
  %586 = select i1 %585, i8 0, i8 %130, !dbg !3373
  call void @llvm.dbg.value(metadata i8 %586, i64 0, metadata !2672, metadata !702), !dbg !2733
  br label %587, !dbg !3374

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %596, i64 0, metadata !2662, metadata !702), !dbg !2798
  br label %123, !dbg !3377, !llvm.loop !3378

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0, !dbg !3381
  %600 = and i1 %114, %599, !dbg !3383
  %601 = xor i1 %600, true, !dbg !3383
  %602 = or i1 %112, %601, !dbg !3383
  br i1 %602, label %603, label %648, !dbg !3383

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112, !dbg !3384
  %605 = xor i1 %604, true, !dbg !3384
  %606 = and i8 %129, 1, !dbg !3386
  %607 = icmp eq i8 %606, 0, !dbg !3386
  %608 = or i1 %607, %605, !dbg !3384
  br i1 %608, label %618, label %609, !dbg !3384

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1, !dbg !3388
  %611 = icmp eq i8 %610, 0, !dbg !3388
  br i1 %611, label %614, label %612, !dbg !3391

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98), !dbg !3392
  br label %659, !dbg !3393

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0, !dbg !3394
  %616 = icmp ne i64 %126, 0, !dbg !3396
  %617 = and i1 %616, %615, !dbg !3398
  br i1 %617, label %27, label %618, !dbg !3398

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null, !dbg !3399
  %620 = and i1 %619, %112, !dbg !3401
  br i1 %620, label %621, label %638, !dbg !3401

; <label>:621:                                    ; preds = %618
  call void @llvm.dbg.value(metadata i8* %100, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %125, i64 0, metadata !2663, metadata !702), !dbg !2723
  %622 = load i8, i8* %100, align 1, !dbg !3402, !tbaa !826
  %623 = icmp eq i8 %622, 0, !dbg !3406
  br i1 %623, label %638, label %624, !dbg !3406

; <label>:624:                                    ; preds = %621
  br label %625, !dbg !3408

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131, !dbg !3408
  br i1 %629, label %630, label %632, !dbg !3412

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628, !dbg !3414
  store i8 %626, i8* %631, align 1, !dbg !3414, !tbaa !826
  br label %632, !dbg !3414

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2663, metadata !702), !dbg !2723
  %634 = getelementptr inbounds i8, i8* %627, i64 1, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i8* %634, i64 0, metadata !2665, metadata !702), !dbg !2725
  call void @llvm.dbg.value(metadata i64 %633, i64 0, metadata !2663, metadata !702), !dbg !2723
  %635 = load i8, i8* %634, align 1, !dbg !3402, !tbaa !826
  %636 = icmp eq i8 %635, 0, !dbg !3406
  br i1 %636, label %637, label %625, !dbg !3406, !llvm.loop !3420

; <label>:637:                                    ; preds = %632
  br label %638, !dbg !2723

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  call void @llvm.dbg.value(metadata i64 %639, i64 0, metadata !2663, metadata !702), !dbg !2723
  %640 = icmp ult i64 %639, %131, !dbg !3423
  br i1 %640, label %641, label %659, !dbg !3425

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639, !dbg !3426
  store i8 0, i8* %642, align 1, !dbg !3427, !tbaa !826
  br label %659, !dbg !3426

; <label>:643:                                    ; preds = %386
  br label %649, !dbg !2715

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649, !dbg !2715

; <label>:648:                                    ; preds = %597
  br label %649, !dbg !2715

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  call void @llvm.dbg.value(metadata i64 %652, i64 0, metadata !2654, metadata !702), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %651, i64 0, metadata !2656, metadata !702), !dbg !2717
  %653 = icmp ne i32 %650, 2, !dbg !3428
  %654 = icmp eq i8 %104, 0, !dbg !3430
  %655 = or i1 %653, %654, !dbg !3432
  call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !2657, metadata !702), !dbg !2718
  %656 = select i1 %655, i32 %650, i32 4, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !2657, metadata !702), !dbg !2718
  %657 = and i32 %5, -3, !dbg !3433
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98), !dbg !3434
  br label %659, !dbg !3435

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660, !dbg !3436
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 !dbg !3437 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3441, metadata !702), !dbg !3445
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3442, metadata !702), !dbg !3446
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !3447
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !3443, metadata !702), !dbg !3448
  %4 = icmp eq i8* %3, %0, !dbg !3449
  br i1 %4, label %5, label %75, !dbg !3451

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !3452
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !3444, metadata !702), !dbg !3453
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3454, metadata !702), !dbg !3470
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3468, metadata !702), !dbg !3473
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3469, metadata !702), !dbg !3474
  %7 = load i8, i8* %6, align 1, !tbaa !826
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33, !dbg !3475
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ], !dbg !3475

; <label>:10:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3478, metadata !702), !dbg !3492
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3490, metadata !702), !dbg !3496
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3491, metadata !702), !dbg !3497
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1, !tbaa !826
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33, !dbg !3498
  %15 = icmp eq i32 %14, 84, !dbg !3498
  br i1 %15, label %16, label %72, !dbg !3498

; <label>:16:                                     ; preds = %10
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3501, metadata !702), !dbg !3514
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3512, metadata !702), !dbg !3518
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3513, metadata !702), !dbg !3519
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1, !tbaa !826
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33, !dbg !3520
  %21 = icmp eq i32 %20, 70, !dbg !3520
  br i1 %21, label %22, label %72, !dbg !3520

; <label>:22:                                     ; preds = %16
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3523, metadata !702), !dbg !3535
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3533, metadata !702), !dbg !3539
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3534, metadata !702), !dbg !3540
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1, !tbaa !826
  %25 = icmp eq i8 %24, 45, !dbg !3541
  br i1 %25, label %26, label %72, !dbg !3544

; <label>:26:                                     ; preds = %22
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3546, metadata !702), !dbg !3557
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3555, metadata !702), !dbg !3561
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3556, metadata !702), !dbg !3562
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1, !tbaa !826
  %29 = icmp eq i8 %28, 56, !dbg !3563
  br i1 %29, label %30, label %72, !dbg !3566

; <label>:30:                                     ; preds = %26
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3568, metadata !702), !dbg !3578
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3576, metadata !702), !dbg !3582
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3577, metadata !702), !dbg !3583
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1, !tbaa !826
  %33 = icmp eq i8 %32, 0, !dbg !3584
  br i1 %33, label %34, label %72, !dbg !3587

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1, !dbg !3589, !tbaa !826
  %36 = icmp eq i8 %35, 96, !dbg !3590
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.114, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.115, i64 0, i64 0), !dbg !3589
  br label %75, !dbg !3591

; <label>:38:                                     ; preds = %5
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3478, metadata !702), !dbg !3592
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3490, metadata !702), !dbg !3596
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3491, metadata !702), !dbg !3597
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1, !tbaa !826
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33, !dbg !3598
  %43 = icmp eq i32 %42, 66, !dbg !3598
  br i1 %43, label %44, label %72, !dbg !3598

; <label>:44:                                     ; preds = %38
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3501, metadata !702), !dbg !3599
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3512, metadata !702), !dbg !3601
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3513, metadata !702), !dbg !3602
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1, !tbaa !826
  %47 = icmp eq i8 %46, 49, !dbg !3603
  br i1 %47, label %48, label %72, !dbg !3605

; <label>:48:                                     ; preds = %44
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3523, metadata !702), !dbg !3607
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3533, metadata !702), !dbg !3609
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3534, metadata !702), !dbg !3610
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1, !tbaa !826
  %51 = icmp eq i8 %50, 56, !dbg !3611
  br i1 %51, label %52, label %72, !dbg !3612

; <label>:52:                                     ; preds = %48
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3546, metadata !702), !dbg !3613
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3555, metadata !702), !dbg !3615
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3556, metadata !702), !dbg !3616
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1, !tbaa !826
  %55 = icmp eq i8 %54, 48, !dbg !3617
  br i1 %55, label %56, label %72, !dbg !3618

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3568, metadata !702), !dbg !3619
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3576, metadata !702), !dbg !3621
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3577, metadata !702), !dbg !3622
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1, !tbaa !826
  %59 = icmp eq i8 %58, 51, !dbg !3623
  br i1 %59, label %60, label %72, !dbg !3624

; <label>:60:                                     ; preds = %56
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3625, metadata !702), !dbg !3634
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3632, metadata !702), !dbg !3638
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3633, metadata !702), !dbg !3639
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1, !tbaa !826
  %63 = icmp eq i8 %62, 48, !dbg !3640
  br i1 %63, label %64, label %72, !dbg !3643

; <label>:64:                                     ; preds = %60
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !3645, metadata !702), !dbg !3653
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3651, metadata !702), !dbg !3657
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !3652, metadata !702), !dbg !3658
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1, !tbaa !826
  %67 = icmp eq i8 %66, 0, !dbg !3659
  br i1 %67, label %68, label %72, !dbg !3662

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1, !dbg !3663, !tbaa !826
  %70 = icmp eq i8 %69, 96, !dbg !3664
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.116, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.117, i64 0, i64 0), !dbg !3663
  br label %75, !dbg !3665

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9, !dbg !3666
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.112, i64 0, i64 0), !dbg !3667
  br label %75, !dbg !3668

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76, !dbg !3669
}

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3670 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3674, metadata !702), !dbg !3677
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3675, metadata !702), !dbg !3678
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3676, metadata !702), !dbg !3679
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3680, metadata !702) #11, !dbg !3693
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3685, metadata !702) #11, !dbg !3695
  tail call void @llvm.dbg.value(metadata i64* null, i64 0, metadata !3686, metadata !702) #11, !dbg !3696
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !3687, metadata !702) #11, !dbg !3697
  %4 = icmp ne %struct.quoting_options* %2, null, !dbg !3698
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options, !dbg !3698
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3688, metadata !702) #11, !dbg !3699
  %6 = tail call i32* @__errno_location() #1, !dbg !3700
  %7 = load i32, i32* %6, align 4, !dbg !3700, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3689, metadata !702) #11, !dbg !3701
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3702
  %9 = load i32, i32* %8, align 4, !dbg !3702, !tbaa !2585
  %10 = or i32 %9, 1, !dbg !3703
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !3690, metadata !702) #11, !dbg !3704
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3705
  %12 = load i32, i32* %11, align 8, !dbg !3705, !tbaa !2523
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3706
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3707
  %15 = load i8*, i8** %14, align 8, !dbg !3707, !tbaa !2612
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3708
  %17 = load i8*, i8** %16, align 8, !dbg !3708, !tbaa !2615
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11, !dbg !3709
  %19 = add i64 %18, 1, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3691, metadata !702) #11, !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !3712, metadata !702) #11, !dbg !3717
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !3719
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !3692, metadata !702) #11, !dbg !3720
  %21 = load i32, i32* %11, align 8, !dbg !3721, !tbaa !2523
  %22 = load i8*, i8** %14, align 8, !dbg !3722, !tbaa !2612
  %23 = load i8*, i8** %16, align 8, !dbg !3723, !tbaa !2615
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11, !dbg !3724
  store i32 %7, i32* %6, align 4, !dbg !3725, !tbaa !840
  ret i8* %20, !dbg !3726
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 !dbg !3681 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3680, metadata !702), !dbg !3727
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3685, metadata !702), !dbg !3728
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !3686, metadata !702), !dbg !3729
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3687, metadata !702), !dbg !3730
  %5 = icmp ne %struct.quoting_options* %3, null, !dbg !3731
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options, !dbg !3731
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3688, metadata !702), !dbg !3732
  %7 = tail call i32* @__errno_location() #1, !dbg !3733
  %8 = load i32, i32* %7, align 4, !dbg !3733, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !3689, metadata !702), !dbg !3734
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3735
  %10 = load i32, i32* %9, align 4, !dbg !3735, !tbaa !2585
  %11 = icmp ne i64* %2, null, !dbg !3736
  %12 = xor i1 %11, true, !dbg !3736
  %13 = zext i1 %12 to i32, !dbg !3736
  %14 = or i32 %10, %13, !dbg !3737
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !3690, metadata !702), !dbg !3738
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3739
  %16 = load i32, i32* %15, align 8, !dbg !3739, !tbaa !2523
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3740
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3741
  %19 = load i8*, i8** %18, align 8, !dbg !3741, !tbaa !2612
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3742
  %21 = load i8*, i8** %20, align 8, !dbg !3742, !tbaa !2615
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21), !dbg !3743
  %23 = add i64 %22, 1, !dbg !3744
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3691, metadata !702), !dbg !3745
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !3712, metadata !702) #11, !dbg !3746
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !3748
  tail call void @llvm.dbg.value(metadata i8* %24, i64 0, metadata !3692, metadata !702), !dbg !3749
  %25 = load i32, i32* %15, align 8, !dbg !3750, !tbaa !2523
  %26 = load i8*, i8** %18, align 8, !dbg !3751, !tbaa !2612
  %27 = load i8*, i8** %20, align 8, !dbg !3752, !tbaa !2615
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27), !dbg !3753
  store i32 %8, i32* %7, align 4, !dbg !3754, !tbaa !840
  br i1 %11, label %29, label %30, !dbg !3755

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3756, !tbaa !821
  br label %30, !dbg !3758

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 !dbg !3760 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3764, !tbaa !710
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %1, i64 0, metadata !3762, metadata !702), !dbg !3765
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3763, metadata !702), !dbg !3766
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !3763, metadata !702), !dbg !3766
  %2 = load i32, i32* @nslots, align 4, !dbg !3767, !tbaa !840
  %3 = icmp sgt i32 %2, 1, !dbg !3771
  br i1 %3, label %4, label %14, !dbg !3772

; <label>:4:                                      ; preds = %0
  br label %5, !dbg !3774

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1, !dbg !3774
  %8 = load i8*, i8** %7, align 8, !dbg !3774, !tbaa !3775
  tail call void @free(i8* %8) #11, !dbg !3777
  %9 = add nuw i64 %6, 1, !dbg !3778
  %10 = load i32, i32* @nslots, align 4, !dbg !3767, !tbaa !840
  %11 = sext i32 %10 to i64, !dbg !3771
  %12 = icmp slt i64 %9, %11, !dbg !3771
  br i1 %12, label %5, label %13, !dbg !3772, !llvm.loop !3780

; <label>:13:                                     ; preds = %5
  br label %14, !dbg !3783

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3783
  %16 = load i8*, i8** %15, align 8, !dbg !3783, !tbaa !3775
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3785
  br i1 %17, label %19, label %18, !dbg !3786

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11, !dbg !3787
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3789, !tbaa !3790
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3791, !tbaa !3775
  br label %19, !dbg !3792

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3793
  br i1 %20, label %23, label %21, !dbg !3795

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*, !dbg !3796
  tail call void @free(i8* %22) #11, !dbg !3798
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3799, !tbaa !710
  br label %23, !dbg !3800

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4, !dbg !3801, !tbaa !840
  ret void, !dbg !3802
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 !dbg !3803 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3807, metadata !702), !dbg !3809
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3808, metadata !702), !dbg !3810
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3811
  ret i8* %3, !dbg !3812
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 !dbg !3813 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3817, metadata !702), !dbg !3831
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3818, metadata !702), !dbg !3832
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3819, metadata !702), !dbg !3833
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !3820, metadata !702), !dbg !3834
  %5 = tail call i32* @__errno_location() #1, !dbg !3835
  %6 = load i32, i32* %5, align 4, !dbg !3835, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !3821, metadata !702), !dbg !3836
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3837, !tbaa !710
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %7, i64 0, metadata !3822, metadata !702), !dbg !3838
  %8 = icmp slt i32 %0, 0, !dbg !3839
  br i1 %8, label %9, label %10, !dbg !3841

; <label>:9:                                      ; preds = %4
  tail call void @abort() #14, !dbg !3842
  unreachable, !dbg !3842

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3843, !tbaa !840
  %12 = icmp sgt i32 %11, %0, !dbg !3844
  br i1 %12, label %34, label %13, !dbg !3845

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3846
  %15 = icmp ugt i32 %0, 2147483646, !dbg !3847
  br i1 %15, label %16, label %17, !dbg !3849

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !3850
  unreachable, !dbg !3850

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*, !dbg !3851
  %19 = select i1 %14, i8* null, i8* %18, !dbg !3851
  %20 = add nsw i32 %0, 1, !dbg !3853
  %21 = sext i32 %20 to i64, !dbg !3854
  %22 = shl nsw i64 %21, 4, !dbg !3855
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !3856
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3856
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %24, i64 0, metadata !3822, metadata !702), !dbg !3838
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3857, !tbaa !710
  br i1 %14, label %25, label %26, !dbg !3858

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false), !dbg !3859, !tbaa.struct !3861
  br label %26, !dbg !3862

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3863, !tbaa !840
  %28 = sext i32 %27 to i64, !dbg !3864
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3864
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3865
  %31 = sub nsw i32 %20, %27, !dbg !3866
  %32 = sext i32 %31 to i64, !dbg !3867
  %33 = shl nsw i64 %32, 4, !dbg !3868
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false), !dbg !3865
  store i32 %20, i32* @nslots, align 4, !dbg !3869, !tbaa !840
  br label %34, !dbg !3870

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  tail call void @llvm.dbg.value(metadata %struct.slotvec* %35, i64 0, metadata !3822, metadata !702), !dbg !3838
  %36 = sext i32 %0 to i64, !dbg !3871
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3872
  %38 = load i64, i64* %37, align 8, !dbg !3872, !tbaa !3790
  tail call void @llvm.dbg.value(metadata i64 %38, i64 0, metadata !3826, metadata !702), !dbg !3873
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3874
  %40 = load i8*, i8** %39, align 8, !dbg !3874, !tbaa !3775
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !3828, metadata !702), !dbg !3875
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3876
  %42 = load i32, i32* %41, align 4, !dbg !3876, !tbaa !2585
  %43 = or i32 %42, 1, !dbg !3877
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !3829, metadata !702), !dbg !3878
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3879
  %45 = load i32, i32* %44, align 8, !dbg !3879, !tbaa !2523
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3880
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3881
  %48 = load i8*, i8** %47, align 8, !dbg !3881, !tbaa !2612
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3882
  %50 = load i8*, i8** %49, align 8, !dbg !3882, !tbaa !2615
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50), !dbg !3883
  tail call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !3830, metadata !702), !dbg !3884
  %52 = icmp ugt i64 %38, %51, !dbg !3885
  br i1 %52, label %63, label %53, !dbg !3887

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3888
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3826, metadata !702), !dbg !3873
  store i64 %54, i64* %37, align 8, !dbg !3890, !tbaa !3790
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3891
  br i1 %55, label %57, label %56, !dbg !3893

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !3894
  br label %57, !dbg !3894

; <label>:57:                                     ; preds = %53, %56
  tail call void @llvm.dbg.value(metadata i64 %54, i64 0, metadata !3712, metadata !702) #11, !dbg !3895
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !3897
  tail call void @llvm.dbg.value(metadata i8* %58, i64 0, metadata !3828, metadata !702), !dbg !3875
  store i8* %58, i8** %39, align 8, !dbg !3898, !tbaa !3775
  %59 = load i32, i32* %44, align 8, !dbg !3899, !tbaa !2523
  %60 = load i8*, i8** %47, align 8, !dbg !3900, !tbaa !2612
  %61 = load i8*, i8** %49, align 8, !dbg !3901, !tbaa !2615
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61), !dbg !3902
  br label %63, !dbg !3903

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  tail call void @llvm.dbg.value(metadata i8* %64, i64 0, metadata !3828, metadata !702), !dbg !3875
  store i32 %6, i32* %5, align 4, !dbg !3904, !tbaa !840
  ret i8* %64, !dbg !3905
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !3906 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3910, metadata !702), !dbg !3913
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3911, metadata !702), !dbg !3914
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3912, metadata !702), !dbg !3915
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3916
  ret i8* %4, !dbg !3917
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 !dbg !3918 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3922, metadata !702), !dbg !3923
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3807, metadata !702) #11, !dbg !3924
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3808, metadata !702) #11, !dbg !3926
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3927
  ret i8* %2, !dbg !3928
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 !dbg !3929 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3933, metadata !702), !dbg !3935
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3934, metadata !702), !dbg !3936
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3910, metadata !702) #11, !dbg !3937
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !3911, metadata !702) #11, !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !3912, metadata !702) #11, !dbg !3940
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !3941
  ret i8* %3, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 !dbg !3943 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3951, metadata !3957), !dbg !3958
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3947, metadata !702), !dbg !3960
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3948, metadata !702), !dbg !3961
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3949, metadata !702), !dbg !3962
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !3963
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3950, metadata !879), !dbg !3964
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3956, metadata !702) #11, !dbg !3965
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !3966
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !3966
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3951, metadata !702) #11, !dbg !3958
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3951, metadata !3967) #11, !dbg !3958
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !3958
  %8 = icmp eq i32 %1, 10, !dbg !3968
  br i1 %8, label %9, label %10, !dbg !3970

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !3971, !noalias !3972
  unreachable, !dbg !3971

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3951, metadata !3967) #11, !dbg !3958
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3975
  store i32 %1, i32* %11, align 8, !dbg !3975, !alias.scope !3972
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3975
  %13 = bitcast i32* %12 to i8*, !dbg !3975
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !3975
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !3976
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3950, metadata !879), !dbg !3964
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !3977
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !3978
  ret i8* %14, !dbg !3979
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 !dbg !3980 {
  %5 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3951, metadata !3957), !dbg !3989
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3984, metadata !702), !dbg !3991
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3985, metadata !702), !dbg !3992
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !3986, metadata !702), !dbg !3993
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !3987, metadata !702), !dbg !3994
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3995
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !3995
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3988, metadata !879), !dbg !3996
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3956, metadata !702) #11, !dbg !3997
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3998
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !3998
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3951, metadata !702) #11, !dbg !3989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3951, metadata !3967) #11, !dbg !3989
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !3989
  %9 = icmp eq i32 %1, 10, !dbg !3999
  br i1 %9, label %10, label %11, !dbg !4000

; <label>:10:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4001, !noalias !4002
  unreachable, !dbg !4001

; <label>:11:                                     ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3951, metadata !3967) #11, !dbg !3989
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4005
  store i32 %1, i32* %12, align 8, !dbg !4005, !alias.scope !4002
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !4005
  %14 = bitcast i32* %13 to i8*, !dbg !4005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11, !dbg !4005
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4006
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !3988, metadata !879), !dbg !3996
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6), !dbg !4007
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4008
  ret i8* %15, !dbg !4009
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 !dbg !4010 {
  %3 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %3, metadata !3951, metadata !3957), !dbg !4016
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4014, metadata !702), !dbg !4019
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4015, metadata !702), !dbg !4020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3947, metadata !702) #11, !dbg !4021
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3948, metadata !702) #11, !dbg !4022
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3949, metadata !702) #11, !dbg !4023
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4024
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4024
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3950, metadata !879) #11, !dbg !4025
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3956, metadata !702) #11, !dbg !4026
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0, !dbg !4027
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6), !dbg !4027
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3951, metadata !702) #11, !dbg !4016
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3951, metadata !3967) #11, !dbg !4016
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false), !dbg !4016
  %7 = icmp eq i32 %0, 10, !dbg !4028
  br i1 %7, label %8, label %9, !dbg !4029

; <label>:8:                                      ; preds = %2
  tail call void @abort() #14, !dbg !4030, !noalias !4031
  unreachable, !dbg !4030

; <label>:9:                                      ; preds = %2
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3951, metadata !3967) #11, !dbg !4016
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4034
  store i32 %0, i32* %10, align 8, !dbg !4034, !alias.scope !4031
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !4034
  %12 = bitcast i32* %11 to i8*, !dbg !4034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11, !dbg !4034
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6), !dbg !4035
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !3950, metadata !879) #11, !dbg !4025
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4036
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4037
  ret i8* %13, !dbg !4038
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4039 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3951, metadata !3957), !dbg !4046
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4043, metadata !702), !dbg !4049
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4044, metadata !702), !dbg !4050
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4045, metadata !702), !dbg !4051
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3984, metadata !702) #11, !dbg !4052
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3985, metadata !702) #11, !dbg !4053
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !3986, metadata !702) #11, !dbg !4054
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !3987, metadata !702) #11, !dbg !4055
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4056
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4056
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3988, metadata !879) #11, !dbg !4057
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3956, metadata !702) #11, !dbg !4058
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4059
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7), !dbg !4059
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3951, metadata !702) #11, !dbg !4046
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3951, metadata !3967) #11, !dbg !4046
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false), !dbg !4046
  %8 = icmp eq i32 %0, 10, !dbg !4060
  br i1 %8, label %9, label %10, !dbg !4061

; <label>:9:                                      ; preds = %3
  tail call void @abort() #14, !dbg !4062, !noalias !4063
  unreachable, !dbg !4062

; <label>:10:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3951, metadata !3967) #11, !dbg !4046
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4066
  store i32 %0, i32* %11, align 8, !dbg !4066, !alias.scope !4063
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4066
  %13 = bitcast i32* %12 to i8*, !dbg !4066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11, !dbg !4066
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7), !dbg !4067
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !3988, metadata !879) #11, !dbg !4057
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11, !dbg !4068
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4069
  ret i8* %14, !dbg !4070
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 !dbg !4071 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4075, metadata !702), !dbg !4079
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4076, metadata !702), !dbg !4080
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !4077, metadata !702), !dbg !4081
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4082
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4082
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4083, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4078, metadata !879), !dbg !4085
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2543, metadata !702), !dbg !4086
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2544, metadata !702), !dbg !4088
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2545, metadata !702), !dbg !4089
  tail call void @llvm.dbg.value(metadata i8 %2, i64 0, metadata !2546, metadata !702), !dbg !4090
  %6 = lshr i8 %2, 5, !dbg !4091
  %7 = zext i8 %6 to i64, !dbg !4091
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !4092
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !2547, metadata !702), !dbg !4093
  %9 = and i8 %2, 31, !dbg !4094
  %10 = zext i8 %9 to i32, !dbg !4095
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !2549, metadata !702), !dbg !4096
  %11 = load i32, i32* %8, align 4, !dbg !4097, !tbaa !840
  %12 = lshr i32 %11, %10, !dbg !4098
  %13 = and i32 %12, 1, !dbg !4099
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !2550, metadata !702), !dbg !4100
  %14 = xor i32 %13, 1, !dbg !4101
  %15 = shl i32 %14, %10, !dbg !4102
  %16 = xor i32 %15, %11, !dbg !4103
  store i32 %16, i32* %8, align 4, !dbg !4103, !tbaa !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4078, metadata !879), !dbg !4085
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !4104
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4105
  ret i8* %17, !dbg !4106
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 !dbg !4107 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4111, metadata !702), !dbg !4113
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4112, metadata !702), !dbg !4114
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4075, metadata !702) #11, !dbg !4115
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4076, metadata !702) #11, !dbg !4117
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !4077, metadata !702) #11, !dbg !4118
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4119
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !4119
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4120, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4078, metadata !879) #11, !dbg !4121
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2543, metadata !702) #11, !dbg !4122
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2544, metadata !702) #11, !dbg !4124
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2545, metadata !702) #11, !dbg !4125
  tail call void @llvm.dbg.value(metadata i8 %1, i64 0, metadata !2546, metadata !702) #11, !dbg !4126
  %5 = lshr i8 %1, 5, !dbg !4127
  %6 = zext i8 %5 to i64, !dbg !4127
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !4128
  tail call void @llvm.dbg.value(metadata i32* %7, i64 0, metadata !2547, metadata !702) #11, !dbg !4129
  %8 = and i8 %1, 31, !dbg !4130
  %9 = zext i8 %8 to i32, !dbg !4131
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !2549, metadata !702) #11, !dbg !4132
  %10 = load i32, i32* %7, align 4, !dbg !4133, !tbaa !840
  %11 = lshr i32 %10, %9, !dbg !4134
  %12 = and i32 %11, 1, !dbg !4135
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !2550, metadata !702) #11, !dbg !4136
  %13 = xor i32 %12, 1, !dbg !4137
  %14 = shl i32 %13, %9, !dbg !4138
  %15 = xor i32 %14, %10, !dbg !4139
  store i32 %15, i32* %7, align 4, !dbg !4139, !tbaa !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4078, metadata !879) #11, !dbg !4121
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !4140
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !4141
  ret i8* %16, !dbg !4142
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 !dbg !4143 {
  %2 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4145, metadata !702), !dbg !4146
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4111, metadata !702) #11, !dbg !4147
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4112, metadata !702) #11, !dbg !4149
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4075, metadata !702) #11, !dbg !4150
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4076, metadata !702) #11, !dbg !4152
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4077, metadata !702) #11, !dbg !4153
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !4154
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11, !dbg !4154
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4155, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4078, metadata !879) #11, !dbg !4156
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !2543, metadata !702) #11, !dbg !4157
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2544, metadata !702) #11, !dbg !4159
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2545, metadata !702) #11, !dbg !4160
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2546, metadata !702) #11, !dbg !4161
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !4162
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !2547, metadata !702) #11, !dbg !4163
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2549, metadata !702) #11, !dbg !4164
  %5 = load i32, i32* %4, align 4, !dbg !4165, !tbaa !840
  %6 = or i32 %5, 67108864, !dbg !4166
  store i32 %6, i32* %4, align 4, !dbg !4166, !tbaa !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %2, i64 0, metadata !4078, metadata !879) #11, !dbg !4156
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !4167
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11, !dbg !4168
  ret i8* %7, !dbg !4169
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 !dbg !4170 {
  %3 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4172, metadata !702), !dbg !4174
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4173, metadata !702), !dbg !4175
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4075, metadata !702) #11, !dbg !4176
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4076, metadata !702) #11, !dbg !4178
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !4077, metadata !702) #11, !dbg !4179
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !4180
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11, !dbg !4180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4181, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4078, metadata !879) #11, !dbg !4182
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !2543, metadata !702) #11, !dbg !4183
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2544, metadata !702) #11, !dbg !4185
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2545, metadata !702) #11, !dbg !4186
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2546, metadata !702) #11, !dbg !4187
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !4188
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !2547, metadata !702) #11, !dbg !4189
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2549, metadata !702) #11, !dbg !4190
  %6 = load i32, i32* %5, align 4, !dbg !4191, !tbaa !840
  %7 = or i32 %6, 67108864, !dbg !4192
  store i32 %7, i32* %5, align 4, !dbg !4192, !tbaa !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %3, i64 0, metadata !4078, metadata !879) #11, !dbg !4182
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !4193
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11, !dbg !4194
  ret i8* %8, !dbg !4195
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 !dbg !4196 {
  %4 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.declare(metadata [52 x i8]* %4, metadata !3951, metadata !3957), !dbg !4202
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4198, metadata !702), !dbg !4204
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4199, metadata !702), !dbg !4205
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4200, metadata !702), !dbg !4206
  %7 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4207
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4207
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3956, metadata !702) #11, !dbg !4208
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0, !dbg !4209
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8), !dbg !4209
  tail call void @llvm.dbg.declare(metadata %struct.quoting_options* undef, metadata !3951, metadata !702) #11, !dbg !4202
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !3951, metadata !3967) #11, !dbg !4202
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false), !dbg !4202
  %9 = icmp eq i32 %1, 10, !dbg !4210
  br i1 %9, label %10, label %11, !dbg !4211

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4212, !noalias !4213
  unreachable, !dbg !4212

; <label>:11:                                     ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !3951, metadata !3967) #11, !dbg !4202
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0, !dbg !4216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false), !dbg !4216
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8), !dbg !4217
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4218
  store i32 %1, i32* %13, align 8, !dbg !4218
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !4218
  %15 = bitcast i32* %14 to i8*, !dbg !4218
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false), !dbg !4218
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4201, metadata !879), !dbg !4219
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2543, metadata !702), !dbg !4220
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2544, metadata !702), !dbg !4222
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2545, metadata !702), !dbg !4223
  tail call void @llvm.dbg.value(metadata i8 58, i64 0, metadata !2546, metadata !702), !dbg !4224
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1, !dbg !4225
  tail call void @llvm.dbg.value(metadata i32* %16, i64 0, metadata !2547, metadata !702), !dbg !4226
  tail call void @llvm.dbg.value(metadata i32 26, i64 0, metadata !2549, metadata !702), !dbg !4227
  %17 = load i32, i32* %16, align 4, !dbg !4228, !tbaa !840
  %18 = or i32 %17, 67108864, !dbg !4229
  store i32 %18, i32* %16, align 4, !dbg !4229, !tbaa !840
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4201, metadata !879), !dbg !4219
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5), !dbg !4230
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4231
  ret i8* %19, !dbg !4232
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4233 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4237, metadata !702), !dbg !4241
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4238, metadata !702), !dbg !4242
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4239, metadata !702), !dbg !4243
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4240, metadata !702), !dbg !4244
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4245, metadata !702) #11, !dbg !4255
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4250, metadata !702) #11, !dbg !4257
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4251, metadata !702) #11, !dbg !4258
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4252, metadata !702) #11, !dbg !4259
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4253, metadata !702) #11, !dbg !4260
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4261
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4262, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4254, metadata !879) #11, !dbg !4263
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !702) #11, !dbg !4264
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2594, metadata !702) #11, !dbg !4266
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2595, metadata !702) #11, !dbg !4267
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2593, metadata !702) #11, !dbg !4264
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !702) #11, !dbg !4264
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4268
  store i32 10, i32* %7, align 8, !dbg !4269, !tbaa !2523
  %8 = icmp ne i8* %1, null, !dbg !4270
  %9 = icmp ne i8* %2, null, !dbg !4271
  %10 = and i1 %8, %9, !dbg !4272
  br i1 %10, label %12, label %11, !dbg !4272

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4273
  unreachable, !dbg !4273

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4274
  store i8* %1, i8** %13, align 8, !dbg !4275, !tbaa !2612
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4276
  store i8* %2, i8** %14, align 8, !dbg !4277, !tbaa !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4254, metadata !879) #11, !dbg !4263
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !4278
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4279
  ret i8* %15, !dbg !4280
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4246 {
  %6 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4245, metadata !702), !dbg !4281
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4250, metadata !702), !dbg !4282
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4251, metadata !702), !dbg !4283
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4252, metadata !702), !dbg !4284
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !4253, metadata !702), !dbg !4285
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !4286
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11, !dbg !4286
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false), !dbg !4287, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4254, metadata !879), !dbg !4288
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2593, metadata !702) #11, !dbg !4289
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2594, metadata !702) #11, !dbg !4291
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2595, metadata !702) #11, !dbg !4292
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2593, metadata !702) #11, !dbg !4289
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !2593, metadata !702) #11, !dbg !4289
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !4293
  store i32 10, i32* %8, align 8, !dbg !4294, !tbaa !2523
  %9 = icmp ne i8* %1, null, !dbg !4295
  %10 = icmp ne i8* %2, null, !dbg !4296
  %11 = and i1 %9, %10, !dbg !4297
  br i1 %11, label %13, label %12, !dbg !4297

; <label>:12:                                     ; preds = %5
  tail call void @abort() #14, !dbg !4298
  unreachable, !dbg !4298

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !4299
  store i8* %1, i8** %14, align 8, !dbg !4300, !tbaa !2612
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !4301
  store i8* %2, i8** %15, align 8, !dbg !4302, !tbaa !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %6, i64 0, metadata !4254, metadata !879), !dbg !4288
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !4303
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11, !dbg !4304
  ret i8* %16, !dbg !4305
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 !dbg !4306 {
  %4 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4310, metadata !702), !dbg !4313
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4311, metadata !702), !dbg !4314
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4312, metadata !702), !dbg !4315
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4237, metadata !702) #11, !dbg !4316
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4238, metadata !702) #11, !dbg !4318
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4239, metadata !702) #11, !dbg !4319
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4240, metadata !702) #11, !dbg !4320
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4245, metadata !702) #11, !dbg !4321
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4250, metadata !702) #11, !dbg !4323
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4251, metadata !702) #11, !dbg !4324
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4252, metadata !702) #11, !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4253, metadata !702) #11, !dbg !4326
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !4327
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11, !dbg !4327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4328, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4254, metadata !879) #11, !dbg !4329
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2593, metadata !702) #11, !dbg !4330
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !702) #11, !dbg !4332
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2595, metadata !702) #11, !dbg !4333
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2593, metadata !702) #11, !dbg !4330
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !2593, metadata !702) #11, !dbg !4330
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !4334
  store i32 10, i32* %6, align 8, !dbg !4335, !tbaa !2523
  %7 = icmp ne i8* %0, null, !dbg !4336
  %8 = icmp ne i8* %1, null, !dbg !4337
  %9 = and i1 %7, %8, !dbg !4338
  br i1 %9, label %11, label %10, !dbg !4338

; <label>:10:                                     ; preds = %3
  tail call void @abort() #14, !dbg !4339
  unreachable, !dbg !4339

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !4340
  store i8* %0, i8** %12, align 8, !dbg !4341, !tbaa !2612
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !4342
  store i8* %1, i8** %13, align 8, !dbg !4343, !tbaa !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %4, i64 0, metadata !4254, metadata !879) #11, !dbg !4329
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !4344
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11, !dbg !4345
  ret i8* %14, !dbg !4346
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 !dbg !4347 {
  %5 = alloca %struct.quoting_options, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4351, metadata !702), !dbg !4355
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4352, metadata !702), !dbg !4356
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4353, metadata !702), !dbg !4357
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4354, metadata !702), !dbg !4358
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4245, metadata !702) #11, !dbg !4359
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4250, metadata !702) #11, !dbg !4361
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4251, metadata !702) #11, !dbg !4362
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4252, metadata !702) #11, !dbg !4363
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4253, metadata !702) #11, !dbg !4364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4365
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11, !dbg !4365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11, !dbg !4366, !tbaa.struct !4084
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4254, metadata !879) #11, !dbg !4367
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !702) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !2594, metadata !702) #11, !dbg !4370
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !2595, metadata !702) #11, !dbg !4371
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* @default_quoting_options, i64 0, metadata !2593, metadata !702) #11, !dbg !4368
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !2593, metadata !702) #11, !dbg !4368
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4372
  store i32 10, i32* %7, align 8, !dbg !4373, !tbaa !2523
  %8 = icmp ne i8* %0, null, !dbg !4374
  %9 = icmp ne i8* %1, null, !dbg !4375
  %10 = and i1 %8, %9, !dbg !4376
  br i1 %10, label %12, label %11, !dbg !4376

; <label>:11:                                     ; preds = %4
  tail call void @abort() #14, !dbg !4377
  unreachable, !dbg !4377

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4378
  store i8* %0, i8** %13, align 8, !dbg !4379, !tbaa !2612
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4380
  store i8* %1, i8** %14, align 8, !dbg !4381, !tbaa !2615
  tail call void @llvm.dbg.value(metadata %struct.quoting_options* %5, i64 0, metadata !4254, metadata !879) #11, !dbg !4367
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !4382
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11, !dbg !4383
  ret i8* %15, !dbg !4384
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 !dbg !4385 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4389, metadata !702), !dbg !4392
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4390, metadata !702), !dbg !4393
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4391, metadata !702), !dbg !4394
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4395
  ret i8* %4, !dbg !4396
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 !dbg !4397 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4401, metadata !702), !dbg !4403
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4402, metadata !702), !dbg !4404
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4389, metadata !702) #11, !dbg !4405
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4390, metadata !702) #11, !dbg !4407
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4391, metadata !702) #11, !dbg !4408
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4409
  ret i8* %3, !dbg !4410
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 !dbg !4411 {
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4415, metadata !702), !dbg !4417
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4416, metadata !702), !dbg !4418
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !4389, metadata !702) #11, !dbg !4419
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4390, metadata !702) #11, !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4391, metadata !702) #11, !dbg !4422
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4423
  ret i8* %3, !dbg !4424
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 !dbg !4425 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4429, metadata !702), !dbg !4430
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4415, metadata !702) #11, !dbg !4431
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4416, metadata !702) #11, !dbg !4433
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !4389, metadata !702) #11, !dbg !4434
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4390, metadata !702) #11, !dbg !4436
  tail call void @llvm.dbg.value(metadata i64 -1, i64 0, metadata !4391, metadata !702) #11, !dbg !4437
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !4438
  ret i8* %2, !dbg !4439
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 !dbg !4440 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4484, metadata !702), !dbg !4490
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4485, metadata !702), !dbg !4491
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4486, metadata !702), !dbg !4492
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4487, metadata !702), !dbg !4493
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4488, metadata !702), !dbg !4494
  tail call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !4489, metadata !702), !dbg !4495
  %7 = icmp eq i8* %1, null, !dbg !4496
  br i1 %7, label %10, label %8, !dbg !4498

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !4499
  br label %12, !dbg !4499

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.131, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !4500
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.132, i64 0, i64 0), i32 5) #11, !dbg !4501
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11, !dbg !4502
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.133, i64 0, i64 0), i32 5) #11, !dbg !4504
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11, !dbg !4505
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
  ], !dbg !4506

; <label>:17:                                     ; preds = %12
  tail call void @abort() #14, !dbg !4507
  unreachable, !dbg !4507

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.134, i64 0, i64 0), i32 5) #11, !dbg !4509
  %20 = load i8*, i8** %4, align 8, !dbg !4509, !tbaa !710
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !4510
  br label %146, !dbg !4512

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.135, i64 0, i64 0), i32 5) #11, !dbg !4513
  %24 = load i8*, i8** %4, align 8, !dbg !4513, !tbaa !710
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4513
  %26 = load i8*, i8** %25, align 8, !dbg !4513, !tbaa !710
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !4514
  br label %146, !dbg !4515

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.136, i64 0, i64 0), i32 5) #11, !dbg !4516
  %30 = load i8*, i8** %4, align 8, !dbg !4516, !tbaa !710
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4516
  %32 = load i8*, i8** %31, align 8, !dbg !4516, !tbaa !710
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4516
  %34 = load i8*, i8** %33, align 8, !dbg !4516, !tbaa !710
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !4517
  br label %146, !dbg !4518

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.137, i64 0, i64 0), i32 5) #11, !dbg !4519
  %38 = load i8*, i8** %4, align 8, !dbg !4519, !tbaa !710
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4519
  %40 = load i8*, i8** %39, align 8, !dbg !4519, !tbaa !710
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4519
  %42 = load i8*, i8** %41, align 8, !dbg !4519, !tbaa !710
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4519
  %44 = load i8*, i8** %43, align 8, !dbg !4519, !tbaa !710
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !4520
  br label %146, !dbg !4521

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.138, i64 0, i64 0), i32 5) #11, !dbg !4522
  %48 = load i8*, i8** %4, align 8, !dbg !4522, !tbaa !710
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4522
  %50 = load i8*, i8** %49, align 8, !dbg !4522, !tbaa !710
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4522
  %52 = load i8*, i8** %51, align 8, !dbg !4522, !tbaa !710
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4522
  %54 = load i8*, i8** %53, align 8, !dbg !4522, !tbaa !710
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4522
  %56 = load i8*, i8** %55, align 8, !dbg !4522, !tbaa !710
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !4523
  br label %146, !dbg !4524

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.139, i64 0, i64 0), i32 5) #11, !dbg !4525
  %60 = load i8*, i8** %4, align 8, !dbg !4525, !tbaa !710
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4525
  %62 = load i8*, i8** %61, align 8, !dbg !4525, !tbaa !710
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4525
  %64 = load i8*, i8** %63, align 8, !dbg !4525, !tbaa !710
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4525
  %66 = load i8*, i8** %65, align 8, !dbg !4525, !tbaa !710
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4525
  %68 = load i8*, i8** %67, align 8, !dbg !4525, !tbaa !710
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4525
  %70 = load i8*, i8** %69, align 8, !dbg !4525, !tbaa !710
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !4526
  br label %146, !dbg !4527

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.140, i64 0, i64 0), i32 5) #11, !dbg !4528
  %74 = load i8*, i8** %4, align 8, !dbg !4528, !tbaa !710
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4528
  %76 = load i8*, i8** %75, align 8, !dbg !4528, !tbaa !710
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4528
  %78 = load i8*, i8** %77, align 8, !dbg !4528, !tbaa !710
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4528
  %80 = load i8*, i8** %79, align 8, !dbg !4528, !tbaa !710
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4528
  %82 = load i8*, i8** %81, align 8, !dbg !4528, !tbaa !710
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4528
  %84 = load i8*, i8** %83, align 8, !dbg !4528, !tbaa !710
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4528
  %86 = load i8*, i8** %85, align 8, !dbg !4528, !tbaa !710
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !4529
  br label %146, !dbg !4530

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.141, i64 0, i64 0), i32 5) #11, !dbg !4531
  %90 = load i8*, i8** %4, align 8, !dbg !4531, !tbaa !710
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4531
  %92 = load i8*, i8** %91, align 8, !dbg !4531, !tbaa !710
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4531
  %94 = load i8*, i8** %93, align 8, !dbg !4531, !tbaa !710
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4531
  %96 = load i8*, i8** %95, align 8, !dbg !4531, !tbaa !710
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4531
  %98 = load i8*, i8** %97, align 8, !dbg !4531, !tbaa !710
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4531
  %100 = load i8*, i8** %99, align 8, !dbg !4531, !tbaa !710
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4531
  %102 = load i8*, i8** %101, align 8, !dbg !4531, !tbaa !710
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4531
  %104 = load i8*, i8** %103, align 8, !dbg !4531, !tbaa !710
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !4532
  br label %146, !dbg !4533

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.142, i64 0, i64 0), i32 5) #11, !dbg !4534
  %108 = load i8*, i8** %4, align 8, !dbg !4534, !tbaa !710
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4534
  %110 = load i8*, i8** %109, align 8, !dbg !4534, !tbaa !710
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4534
  %112 = load i8*, i8** %111, align 8, !dbg !4534, !tbaa !710
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4534
  %114 = load i8*, i8** %113, align 8, !dbg !4534, !tbaa !710
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4534
  %116 = load i8*, i8** %115, align 8, !dbg !4534, !tbaa !710
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4534
  %118 = load i8*, i8** %117, align 8, !dbg !4534, !tbaa !710
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4534
  %120 = load i8*, i8** %119, align 8, !dbg !4534, !tbaa !710
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4534
  %122 = load i8*, i8** %121, align 8, !dbg !4534, !tbaa !710
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4534
  %124 = load i8*, i8** %123, align 8, !dbg !4534, !tbaa !710
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !4535
  br label %146, !dbg !4536

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.143, i64 0, i64 0), i32 5) #11, !dbg !4537
  %128 = load i8*, i8** %4, align 8, !dbg !4537, !tbaa !710
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4537
  %130 = load i8*, i8** %129, align 8, !dbg !4537, !tbaa !710
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4537
  %132 = load i8*, i8** %131, align 8, !dbg !4537, !tbaa !710
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4537
  %134 = load i8*, i8** %133, align 8, !dbg !4537, !tbaa !710
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4537
  %136 = load i8*, i8** %135, align 8, !dbg !4537, !tbaa !710
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4537
  %138 = load i8*, i8** %137, align 8, !dbg !4537, !tbaa !710
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4537
  %140 = load i8*, i8** %139, align 8, !dbg !4537, !tbaa !710
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4537
  %142 = load i8*, i8** %141, align 8, !dbg !4537, !tbaa !710
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4537
  %144 = load i8*, i8** %143, align 8, !dbg !4537, !tbaa !710
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !4538
  br label %146, !dbg !4539

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4540
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 !dbg !4541 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4545, metadata !702), !dbg !4551
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4546, metadata !702), !dbg !4552
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4547, metadata !702), !dbg !4553
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4548, metadata !702), !dbg !4554
  tail call void @llvm.dbg.value(metadata i8** %4, i64 0, metadata !4549, metadata !702), !dbg !4555
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4550, metadata !702), !dbg !4556
  br label %6, !dbg !4557

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4550, metadata !702), !dbg !4556
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4559
  %9 = load i8*, i8** %8, align 8, !dbg !4559, !tbaa !710
  %10 = icmp eq i8* %9, null, !dbg !4562
  %11 = add i64 %7, 1, !dbg !4564
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4550, metadata !702), !dbg !4556
  br i1 %10, label %12, label %6, !dbg !4562, !llvm.loop !4566

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4569
  ret void, !dbg !4570
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 !dbg !4571 {
  %6 = alloca [10 x i8*], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4582, metadata !702), !dbg !4590
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4583, metadata !702), !dbg !4591
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4584, metadata !702), !dbg !4592
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4585, metadata !702), !dbg !4593
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, i64 0, metadata !4586, metadata !702), !dbg !4594
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4595
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11, !dbg !4595
  tail call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4588, metadata !702), !dbg !4596
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !4587, metadata !702), !dbg !4597
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8, !dbg !4598
  %12 = icmp ult i32 %11, 41, !dbg !4598
  br i1 %12, label %13, label %18, !dbg !4598

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4602
  %15 = sext i32 %11 to i64, !dbg !4602
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4602
  %17 = add i32 %11, 8, !dbg !4602
  store i32 %17, i32* %8, align 8, !dbg !4602
  br label %21, !dbg !4602

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4604
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4604
  store i8* %20, i8** %10, align 8, !dbg !4604
  br label %21, !dbg !4604

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ], !dbg !4598
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4606
  %25 = load i8*, i8** %24, align 8, !dbg !4606
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4608
  store i8* %25, i8** %26, align 16, !dbg !4609, !tbaa !710
  %27 = icmp eq i8* %25, null, !dbg !4610
  br i1 %27, label %30, label %28, !dbg !4611

; <label>:28:                                     ; preds = %21
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %29 = icmp ult i32 %22, 41, !dbg !4598
  br i1 %29, label %35, label %32, !dbg !4598

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4613
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11, !dbg !4614
  ret void, !dbg !4614

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4604
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4604
  store i8* %34, i8** %10, align 8, !dbg !4604
  br label %40, !dbg !4604

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4602
  %37 = sext i32 %22 to i64, !dbg !4602
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4602
  %39 = add i32 %22, 8, !dbg !4602
  store i32 %39, i32* %8, align 8, !dbg !4602
  br label %40, !dbg !4602

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ], !dbg !4598
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4606
  %44 = load i8*, i8** %43, align 8, !dbg !4606
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4608
  store i8* %44, i8** %45, align 8, !dbg !4609, !tbaa !710
  %46 = icmp eq i8* %44, null, !dbg !4610
  br i1 %46, label %30, label %47, !dbg !4611

; <label>:47:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %48 = icmp ult i32 %41, 41, !dbg !4598
  br i1 %48, label %52, label %49, !dbg !4598

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4604
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4604
  store i8* %51, i8** %10, align 8, !dbg !4604
  br label %57, !dbg !4604

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4602
  %54 = sext i32 %41 to i64, !dbg !4602
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4602
  %56 = add i32 %41, 8, !dbg !4602
  store i32 %56, i32* %8, align 8, !dbg !4602
  br label %57, !dbg !4602

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ], !dbg !4598
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4606
  %61 = load i8*, i8** %60, align 8, !dbg !4606
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4608
  store i8* %61, i8** %62, align 16, !dbg !4609, !tbaa !710
  %63 = icmp eq i8* %61, null, !dbg !4610
  br i1 %63, label %30, label %64, !dbg !4611

; <label>:64:                                     ; preds = %57
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %65 = icmp ult i32 %58, 41, !dbg !4598
  br i1 %65, label %69, label %66, !dbg !4598

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4604
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4604
  store i8* %68, i8** %10, align 8, !dbg !4604
  br label %74, !dbg !4604

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4602
  %71 = sext i32 %58 to i64, !dbg !4602
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4602
  %73 = add i32 %58, 8, !dbg !4602
  store i32 %73, i32* %8, align 8, !dbg !4602
  br label %74, !dbg !4602

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ], !dbg !4598
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4606
  %78 = load i8*, i8** %77, align 8, !dbg !4606
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4608
  store i8* %78, i8** %79, align 8, !dbg !4609, !tbaa !710
  %80 = icmp eq i8* %78, null, !dbg !4610
  br i1 %80, label %30, label %81, !dbg !4611

; <label>:81:                                     ; preds = %74
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %82 = icmp ult i32 %75, 41, !dbg !4598
  br i1 %82, label %86, label %83, !dbg !4598

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4604
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4604
  store i8* %85, i8** %10, align 8, !dbg !4604
  br label %91, !dbg !4604

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4602
  %88 = sext i32 %75 to i64, !dbg !4602
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4602
  %90 = add i32 %75, 8, !dbg !4602
  store i32 %90, i32* %8, align 8, !dbg !4602
  br label %91, !dbg !4602

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ], !dbg !4598
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4606
  %95 = load i8*, i8** %94, align 8, !dbg !4606
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4608
  store i8* %95, i8** %96, align 16, !dbg !4609, !tbaa !710
  %97 = icmp eq i8* %95, null, !dbg !4610
  br i1 %97, label %30, label %98, !dbg !4611

; <label>:98:                                     ; preds = %91
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %99 = icmp ult i32 %92, 41, !dbg !4598
  br i1 %99, label %103, label %100, !dbg !4598

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4604
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4604
  store i8* %102, i8** %10, align 8, !dbg !4604
  br label %108, !dbg !4604

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4602
  %105 = sext i32 %92 to i64, !dbg !4602
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4602
  %107 = add i32 %92, 8, !dbg !4602
  store i32 %107, i32* %8, align 8, !dbg !4602
  br label %108, !dbg !4602

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4606
  %111 = load i8*, i8** %110, align 8, !dbg !4606
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4608
  store i8* %111, i8** %112, align 8, !dbg !4609, !tbaa !710
  %113 = icmp eq i8* %111, null, !dbg !4610
  br i1 %113, label %30, label %114, !dbg !4611

; <label>:114:                                    ; preds = %108
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %115 = load i8*, i8** %10, align 8, !dbg !4604
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4604
  store i8* %116, i8** %10, align 8, !dbg !4604
  %117 = bitcast i8* %115 to i8**, !dbg !4606
  %118 = load i8*, i8** %117, align 8, !dbg !4606
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4608
  store i8* %118, i8** %119, align 16, !dbg !4609, !tbaa !710
  %120 = icmp eq i8* %118, null, !dbg !4610
  br i1 %120, label %30, label %121, !dbg !4611

; <label>:121:                                    ; preds = %114
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %122 = load i8*, i8** %10, align 8, !dbg !4604
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4604
  store i8* %123, i8** %10, align 8, !dbg !4604
  %124 = bitcast i8* %122 to i8**, !dbg !4606
  %125 = load i8*, i8** %124, align 8, !dbg !4606
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4608
  store i8* %125, i8** %126, align 8, !dbg !4609, !tbaa !710
  %127 = icmp eq i8* %125, null, !dbg !4610
  br i1 %127, label %30, label %128, !dbg !4611

; <label>:128:                                    ; preds = %121
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %129 = load i8*, i8** %10, align 8, !dbg !4604
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4604
  store i8* %130, i8** %10, align 8, !dbg !4604
  %131 = bitcast i8* %129 to i8**, !dbg !4606
  %132 = load i8*, i8** %131, align 8, !dbg !4606
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4608
  store i8* %132, i8** %133, align 16, !dbg !4609, !tbaa !710
  %134 = icmp eq i8* %132, null, !dbg !4610
  br i1 %134, label %30, label %135, !dbg !4611

; <label>:135:                                    ; preds = %128
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %136 = load i8*, i8** %10, align 8, !dbg !4604
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4604
  store i8* %137, i8** %10, align 8, !dbg !4604
  %138 = bitcast i8* %136 to i8**, !dbg !4606
  %139 = load i8*, i8** %138, align 8, !dbg !4606
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4608
  store i8* %139, i8** %140, align 8, !dbg !4609, !tbaa !710
  %141 = icmp eq i8* %139, null, !dbg !4610
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !4587, metadata !702), !dbg !4597
  %142 = select i1 %141, i64 9, i64 10, !dbg !4611
  br label %30, !dbg !4611
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 !dbg !4615 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !4619, metadata !702), !dbg !4629
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !4620, metadata !702), !dbg !4630
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4621, metadata !702), !dbg !4631
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4622, metadata !702), !dbg !4632
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4633
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11, !dbg !4633
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4623, metadata !702), !dbg !4634
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4635
  call void @llvm.va_start(i8* nonnull %6), !dbg !4635
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4636
  call void @llvm.va_end(i8* nonnull %6), !dbg !4637
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11, !dbg !4638
  ret void, !dbg !4638
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 !dbg !4639 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.146, i64 0, i64 0), i32 5) #11, !dbg !4640
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.147, i64 0, i64 0)) #11, !dbg !4641
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.148, i64 0, i64 0), i32 5) #11, !dbg !4643
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.149, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.150, i64 0, i64 0)) #11, !dbg !4644
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.151, i64 0, i64 0), i32 5) #11, !dbg !4645
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4645, !tbaa !710
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11, !dbg !4646
  ret void, !dbg !4647
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #12 !dbg !4648 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4652, metadata !702), !dbg !4654
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4653, metadata !702), !dbg !4655
  %3 = udiv i64 9223372036854775807, %1, !dbg !4656
  %4 = icmp ult i64 %3, %0, !dbg !4656
  br i1 %4, label %5, label %6, !dbg !4658

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4659
  unreachable, !dbg !4659

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !4661, metadata !702) #11, !dbg !4668
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !4670
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4667, metadata !702) #11, !dbg !4671
  %9 = icmp eq i8* %8, null, !dbg !4672
  %10 = icmp ne i64 %7, 0, !dbg !4674
  %11 = and i1 %10, %9, !dbg !4676
  br i1 %11, label %12, label %13, !dbg !4676

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #14, !dbg !4677
  unreachable, !dbg !4677

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4678
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 !dbg !4662 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4661, metadata !702), !dbg !4679
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4680
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4667, metadata !702), !dbg !4681
  %3 = icmp eq i8* %2, null, !dbg !4682
  %4 = icmp ne i64 %0, 0, !dbg !4683
  %5 = and i1 %4, %3, !dbg !4684
  br i1 %5, label %6, label %7, !dbg !4684

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4685
  unreachable, !dbg !4685

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4686
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #12 !dbg !4687 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4691, metadata !702), !dbg !4694
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4692, metadata !702), !dbg !4695
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !4693, metadata !702), !dbg !4696
  %4 = udiv i64 9223372036854775807, %2, !dbg !4697
  %5 = icmp ult i64 %4, %1, !dbg !4697
  br i1 %5, label %6, label %7, !dbg !4699

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #14, !dbg !4700
  unreachable, !dbg !4700

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4701
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702) #11, !dbg !4708
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !4707, metadata !702) #11, !dbg !4710
  %9 = icmp eq i64 %8, 0, !dbg !4711
  %10 = icmp ne i8* %0, null, !dbg !4713
  %11 = and i1 %10, %9, !dbg !4715
  br i1 %11, label %12, label %13, !dbg !4715

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !4716
  br label %19, !dbg !4718

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !4719
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !4702, metadata !702) #11, !dbg !4708
  %15 = icmp eq i8* %14, null, !dbg !4720
  %16 = icmp ne i64 %8, 0, !dbg !4722
  %17 = and i1 %16, %15, !dbg !4724
  br i1 %17, label %18, label %19, !dbg !4724

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4725
  unreachable, !dbg !4725

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20, !dbg !4726
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 !dbg !4703 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702), !dbg !4727
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4707, metadata !702), !dbg !4728
  %3 = icmp eq i64 %1, 0, !dbg !4729
  %4 = icmp ne i8* %0, null, !dbg !4730
  %5 = and i1 %4, %3, !dbg !4731
  br i1 %5, label %6, label %7, !dbg !4731

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !4732
  br label %13, !dbg !4733

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !4734
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !4702, metadata !702), !dbg !4727
  %9 = icmp eq i8* %8, null, !dbg !4735
  %10 = icmp ne i64 %1, 0, !dbg !4736
  %11 = and i1 %10, %9, !dbg !4737
  br i1 %11, label %12, label %13, !dbg !4737

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #14, !dbg !4738
  unreachable, !dbg !4738

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14, !dbg !4739
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #12 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !660, metadata !702), !dbg !4740
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !661, metadata !702), !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !662, metadata !702), !dbg !4742
  %4 = load i64, i64* %1, align 8, !dbg !4743, !tbaa !821
  tail call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !663, metadata !702), !dbg !4744
  %5 = icmp eq i8* %0, null, !dbg !4745
  br i1 %5, label %6, label %13, !dbg !4747

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4748
  br i1 %7, label %8, label %17, !dbg !4751

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4752
  tail call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !663, metadata !702), !dbg !4744
  %10 = icmp ugt i64 %2, 128, !dbg !4754
  %11 = zext i1 %10 to i64, !dbg !4754
  %12 = add nuw nsw i64 %9, %11, !dbg !4755
  tail call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !663, metadata !702), !dbg !4744
  br label %17, !dbg !4756

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2, !dbg !4757
  %15 = icmp ugt i64 %14, %4, !dbg !4760
  br i1 %15, label %20, label %16, !dbg !4761

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #14, !dbg !4762
  unreachable, !dbg !4762

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !663, metadata !702), !dbg !4744
  store i64 %18, i64* %1, align 8, !dbg !4763, !tbaa !821
  %19 = mul i64 %18, %2, !dbg !4764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702) #11, !dbg !4765
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4707, metadata !702) #11, !dbg !4767
  br label %27, !dbg !4768

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1, !dbg !4769
  %22 = add i64 %4, 1, !dbg !4770
  %23 = add i64 %22, %21, !dbg !4771
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !663, metadata !702), !dbg !4744
  tail call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !663, metadata !702), !dbg !4744
  store i64 %23, i64* %1, align 8, !dbg !4763, !tbaa !821
  %24 = mul i64 %23, %2, !dbg !4764
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702) #11, !dbg !4765
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !4707, metadata !702) #11, !dbg !4767
  %25 = icmp eq i64 %24, 0, !dbg !4772
  br i1 %25, label %26, label %27, !dbg !4768

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11, !dbg !4773
  br label %34, !dbg !4774

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11, !dbg !4775
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !4702, metadata !702) #11, !dbg !4765
  %30 = icmp eq i8* %29, null, !dbg !4776
  %31 = icmp ne i64 %28, 0, !dbg !4777
  %32 = and i1 %31, %30, !dbg !4778
  br i1 %32, label %33, label %34, !dbg !4778

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #14, !dbg !4779
  unreachable, !dbg !4779

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35, !dbg !4780
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #12 !dbg !4781 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4783, metadata !702), !dbg !4784
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4661, metadata !702) #11, !dbg !4785
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4787
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4667, metadata !702) #11, !dbg !4788
  %3 = icmp eq i8* %2, null, !dbg !4789
  %4 = icmp ne i64 %0, 0, !dbg !4790
  %5 = and i1 %4, %3, !dbg !4791
  br i1 %5, label %6, label %7, !dbg !4791

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4792
  unreachable, !dbg !4792

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4793
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 !dbg !4794 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4798, metadata !702), !dbg !4800
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !4799, metadata !702), !dbg !4801
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !660, metadata !702) #11, !dbg !4802
  tail call void @llvm.dbg.value(metadata i64* %1, i64 0, metadata !661, metadata !702) #11, !dbg !4804
  tail call void @llvm.dbg.value(metadata i64 1, i64 0, metadata !662, metadata !702) #11, !dbg !4805
  %3 = load i64, i64* %1, align 8, !dbg !4806, !tbaa !821
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  %4 = icmp eq i8* %0, null, !dbg !4808
  br i1 %4, label %5, label %8, !dbg !4809

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4810
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  tail call void @llvm.dbg.value(metadata i64 128, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4811
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  store i64 %7, i64* %1, align 8, !dbg !4812, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702) #11, !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4707, metadata !702) #11, !dbg !4815
  br label %17, !dbg !4816

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204, !dbg !4817
  br i1 %9, label %11, label %10, !dbg !4818

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #14, !dbg !4819
  unreachable, !dbg !4819

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1, !dbg !4820
  %13 = add i64 %3, 1, !dbg !4821
  %14 = add i64 %13, %12, !dbg !4822
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !663, metadata !702) #11, !dbg !4807
  store i64 %14, i64* %1, align 8, !dbg !4812, !tbaa !821
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4702, metadata !702) #11, !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !4707, metadata !702) #11, !dbg !4815
  %15 = icmp eq i64 %14, 0, !dbg !4823
  br i1 %15, label %16, label %17, !dbg !4816

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11, !dbg !4824
  br label %24, !dbg !4825

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11, !dbg !4826
  tail call void @llvm.dbg.value(metadata i8* %19, i64 0, metadata !4702, metadata !702) #11, !dbg !4813
  %20 = icmp eq i8* %19, null, !dbg !4827
  %21 = icmp ne i64 %18, 0, !dbg !4828
  %22 = and i1 %21, %20, !dbg !4829
  br i1 %22, label %23, label %24, !dbg !4829

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #14, !dbg !4830
  unreachable, !dbg !4830

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25, !dbg !4831
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 !dbg !4832 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4834, metadata !702), !dbg !4835
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4661, metadata !702) #11, !dbg !4836
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !4838
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4667, metadata !702) #11, !dbg !4839
  %3 = icmp eq i8* %2, null, !dbg !4840
  %4 = icmp ne i64 %0, 0, !dbg !4841
  %5 = and i1 %4, %3, !dbg !4842
  br i1 %5, label %6, label %7, !dbg !4842

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4843
  unreachable, !dbg !4843

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false), !dbg !4844
  ret i8* %2, !dbg !4845
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 !dbg !4846 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4848, metadata !702), !dbg !4851
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4849, metadata !702), !dbg !4852
  %3 = udiv i64 9223372036854775807, %1, !dbg !4853
  %4 = icmp ult i64 %3, %0, !dbg !4853
  br i1 %4, label %8, label %5, !dbg !4855

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !4856
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !4850, metadata !702), !dbg !4858
  %7 = icmp eq i8* %6, null, !dbg !4859
  br i1 %7, label %8, label %9, !dbg !4860

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #14, !dbg !4862
  unreachable, !dbg !4862

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4863
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !4864 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4868, metadata !702), !dbg !4870
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4869, metadata !702), !dbg !4871
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4661, metadata !702) #11, !dbg !4872
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4874
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !4667, metadata !702) #11, !dbg !4875
  %4 = icmp eq i8* %3, null, !dbg !4876
  %5 = icmp ne i64 %1, 0, !dbg !4877
  %6 = and i1 %5, %4, !dbg !4878
  br i1 %6, label %7, label %8, !dbg !4878

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #14, !dbg !4879
  unreachable, !dbg !4879

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false), !dbg !4880
  ret i8* %3, !dbg !4881
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 !dbg !4882 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4884, metadata !702), !dbg !4885
  %2 = tail call i64 @strlen(i8* %0) #13, !dbg !4886
  %3 = add i64 %2, 1, !dbg !4887
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4868, metadata !702) #11, !dbg !4888
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4869, metadata !702) #11, !dbg !4891
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4661, metadata !702) #11, !dbg !4892
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4894
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !4667, metadata !702) #11, !dbg !4895
  %5 = icmp eq i8* %4, null, !dbg !4896
  %6 = icmp ne i64 %3, 0, !dbg !4897
  %7 = and i1 %6, %5, !dbg !4898
  br i1 %7, label %8, label %9, !dbg !4898

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #14, !dbg !4899
  unreachable, !dbg !4899

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11, !dbg !4900
  ret i8* %4, !dbg !4901
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 !dbg !4902 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4904, !tbaa !840
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.164, i64 0, i64 0), i32 5) #11, !dbg !4905
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.165, i64 0, i64 0), i8* %2) #11, !dbg !4906
  tail call void @abort() #14, !dbg !4908
  unreachable, !dbg !4908
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4909 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4914, metadata !702), !dbg !4920
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4915, metadata !702), !dbg !4921
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4916, metadata !702), !dbg !4922
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4917, metadata !702), !dbg !4923
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !4924
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4918, metadata !702), !dbg !4925
  %6 = tail call i32* @__errno_location() #1, !dbg !4926
  %7 = load i32, i32* %6, align 4, !dbg !4926, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4919, metadata !702), !dbg !4927
  %8 = icmp eq i32 %7, 0, !dbg !4928
  br i1 %8, label %16, label %9, !dbg !4930

; <label>:9:                                      ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4931, metadata !702) #11, !dbg !4940
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4936, metadata !702) #11, !dbg !4942
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4937, metadata !702) #11, !dbg !4943
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4938, metadata !702) #11, !dbg !4944
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4939, metadata !702) #11, !dbg !4945
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.168, i64 0, i64 0), i32 5) #11, !dbg !4946
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #11, !dbg !4947
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.169, i64 0, i64 0), i32 5) #11, !dbg !4949
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #11, !dbg !4950
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4951, !tbaa !840
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.170, i64 0, i64 0), i32 5) #11, !dbg !4952
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #11, !dbg !4953
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #11, !dbg !4954
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #11, !dbg !4955
  br label %16, !dbg !4956

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4957
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #6 !dbg !4958 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4962, metadata !702), !dbg !4968
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !4963, metadata !702), !dbg !4969
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4964, metadata !702), !dbg !4970
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !4965, metadata !702), !dbg !4971
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #11, !dbg !4972
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !4966, metadata !702), !dbg !4973
  %6 = tail call i32* @__errno_location() #1, !dbg !4974
  %7 = load i32, i32* %6, align 4, !dbg !4974, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4967, metadata !702), !dbg !4975
  %8 = icmp eq i32 %7, 0, !dbg !4976
  br i1 %8, label %18, label %9, !dbg !4978

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !4979
  %11 = add i64 %3, -1, !dbg !4980
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !4931, metadata !702) #11, !dbg !4981
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !4936, metadata !702) #11, !dbg !4983
  tail call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !4937, metadata !702) #11, !dbg !4984
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !4938, metadata !702) #11, !dbg !4985
  tail call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !4939, metadata !702) #11, !dbg !4986
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.168, i64 0, i64 0), i32 5) #11, !dbg !4987
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #11, !dbg !4988
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.169, i64 0, i64 0), i32 5) #11, !dbg !4989
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #11, !dbg !4990
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4991, !tbaa !840
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.170, i64 0, i64 0), i32 5) #11, !dbg !4992
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #11, !dbg !4993
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #11, !dbg !4994
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #11, !dbg !4995
  br label %18, !dbg !4996

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4997
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #6 !dbg !4998 {
  %6 = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5005, metadata !702), !dbg !5023
  tail call void @llvm.dbg.value(metadata i8** %1, i64 0, metadata !5006, metadata !702), !dbg !5024
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5007, metadata !702), !dbg !5025
  tail call void @llvm.dbg.value(metadata i64* %3, i64 0, metadata !5008, metadata !702), !dbg !5026
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !5009, metadata !702), !dbg !5027
  %7 = bitcast i8** %6 to i8*, !dbg !5028
  call void @llvm.lifetime.start(i64 8, i8* nonnull %7) #11, !dbg !5028
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5013, metadata !702), !dbg !5029
  %8 = icmp ult i32 %2, 37, !dbg !5030
  br i1 %8, label %10, label %9, !dbg !5030

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.173, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.174, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #14, !dbg !5033
  unreachable, !dbg !5033

; <label>:10:                                     ; preds = %5
  %11 = icmp ne i8** %1, null, !dbg !5035
  tail call void @llvm.dbg.value(metadata i8** %25, i64 0, metadata !5011, metadata !702), !dbg !5036
  %12 = tail call i32* @__errno_location() #1, !dbg !5037
  store i32 0, i32* %12, align 4, !dbg !5038, !tbaa !840
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5014, metadata !702), !dbg !5039
  %13 = tail call i16** @__ctype_b_loc() #1, !dbg !5040
  %14 = load i16*, i16** %13, align 8, !tbaa !710
  br label %15, !dbg !5042

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ]
  %17 = load i8, i8* %16, align 1, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !5017, metadata !702), !dbg !5043
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5014, metadata !702), !dbg !5039
  %18 = zext i8 %17 to i64, !dbg !5040
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !5040
  %20 = load i16, i16* %19, align 2, !dbg !5040, !tbaa !1521
  %21 = and i16 %20, 8192, !dbg !5040
  %22 = icmp eq i16 %21, 0, !dbg !5044
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !5045
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !5014, metadata !702), !dbg !5039
  br i1 %22, label %24, label %15, !dbg !5044, !llvm.loop !5046

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %1, i8** %6, !dbg !5035
  %26 = icmp eq i8 %17, 45, !dbg !5048
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #11, !dbg !5050
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5012, metadata !702), !dbg !5051
  %29 = load i8*, i8** %25, align 8, !dbg !5052, !tbaa !710
  %30 = icmp eq i8* %29, %0, !dbg !5054
  br i1 %30, label %31, label %40, !dbg !5055

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !5056
  br i1 %32, label %265, label %33, !dbg !5059

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !5060, !tbaa !826
  %35 = icmp eq i8 %34, 0, !dbg !5060
  br i1 %35, label %265, label %36, !dbg !5062

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !5060
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #11, !dbg !5063
  %39 = icmp eq i8* %38, null, !dbg !5063
  br i1 %39, label %265, label %47, !dbg !5065

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !5067, !tbaa !840
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !5069

; <label>:42:                                     ; preds = %40
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5013, metadata !702), !dbg !5029
  br label %43, !dbg !5070

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %40 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5013, metadata !702), !dbg !5029
  %45 = icmp eq i8* %4, null, !dbg !5072
  br i1 %45, label %46, label %47, !dbg !5074

; <label>:46:                                     ; preds = %43
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5012, metadata !702), !dbg !5051
  store i64 %28, i64* %3, align 8, !dbg !5075, !tbaa !821
  br label %265, !dbg !5077

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !5078, !tbaa !826
  %51 = icmp eq i8 %50, 0, !dbg !5079
  br i1 %51, label %262, label %52, !dbg !5080

; <label>:52:                                     ; preds = %47
  %53 = sext i8 %50 to i32, !dbg !5078
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5018, metadata !702), !dbg !5081
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5021, metadata !702), !dbg !5082
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %53) #11, !dbg !5083
  %55 = icmp eq i8* %54, null, !dbg !5083
  br i1 %55, label %56, label %58, !dbg !5086

; <label>:56:                                     ; preds = %52
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5012, metadata !702), !dbg !5051
  store i64 %49, i64* %3, align 8, !dbg !5088, !tbaa !821
  %57 = or i32 %48, 2, !dbg !5090
  br label %265, !dbg !5091

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
  ], !dbg !5092

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #11, !dbg !5093
  %61 = icmp eq i8* %60, null, !dbg !5093
  br i1 %61, label %72, label %62, !dbg !5097

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !5099
  %64 = load i8, i8* %63, align 1, !dbg !5099, !tbaa !826
  %65 = sext i8 %64 to i32, !dbg !5099
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !5100

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !5101
  %68 = load i8, i8* %67, align 1, !dbg !5101, !tbaa !826
  %69 = icmp eq i8 %68, 66, !dbg !5104
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5021, metadata !702), !dbg !5082
  %70 = select i1 %69, i64 3, i64 1, !dbg !5105
  br label %72, !dbg !5105

; <label>:71:                                     ; preds = %62, %62
  tail call void @llvm.dbg.value(metadata i32 1000, i64 0, metadata !5018, metadata !702), !dbg !5081
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5021, metadata !702), !dbg !5082
  br label %72, !dbg !5106

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
  ], !dbg !5107

; <label>:75:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 512, i64 0, metadata !5108, metadata !702), !dbg !5114
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !5117
  %77 = shl i64 %49, 9, !dbg !5119
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !5120
  %79 = zext i1 %76 to i32, !dbg !5120
  tail call void @llvm.dbg.value(metadata i32 %79, i64 0, metadata !5022, metadata !702), !dbg !5121
  br label %253, !dbg !5122

; <label>:80:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 1024, i64 0, metadata !5108, metadata !702), !dbg !5123
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !5125
  %82 = shl i64 %49, 10, !dbg !5126
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !5127
  %84 = zext i1 %81 to i32, !dbg !5127
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !5022, metadata !702), !dbg !5121
  br label %253, !dbg !5128

; <label>:85:                                     ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5139
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5139
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5137
  %86 = udiv i64 -1, %73
  %87 = icmp ult i64 %86, %49, !dbg !5140
  %88 = mul i64 %49, %73, !dbg !5142
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !5143
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  %90 = icmp ult i64 %86, %89, !dbg !5140
  %91 = mul i64 %89, %73, !dbg !5142
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !5143
  %93 = or i1 %90, %87, !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  %94 = icmp ult i64 %86, %92, !dbg !5140
  %95 = mul i64 %92, %73, !dbg !5142
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !5143
  %97 = or i1 %94, %93, !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  %98 = icmp ult i64 %86, %96, !dbg !5140
  %99 = mul i64 %96, %73, !dbg !5142
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !5143
  %101 = or i1 %98, %97, !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  %102 = icmp ult i64 %86, %100, !dbg !5140
  %103 = mul i64 %100, %73, !dbg !5142
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !5143
  %105 = or i1 %102, %101, !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  %106 = icmp ult i64 %86, %104, !dbg !5140
  %107 = mul i64 %104, %73, !dbg !5142
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !5143
  %109 = or i1 %106, %105, !dbg !5144
  %110 = zext i1 %109 to i32, !dbg !5144
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5137
  br label %253, !dbg !5121

; <label>:111:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5147
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5147
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5145
  %112 = udiv i64 -1, %73
  %113 = icmp ult i64 %112, %49, !dbg !5148
  %114 = mul i64 %49, %73, !dbg !5150
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !5151
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  %116 = icmp ult i64 %112, %115, !dbg !5148
  %117 = mul i64 %115, %73, !dbg !5150
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !5151
  %119 = or i1 %116, %113, !dbg !5152
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  %120 = icmp ult i64 %112, %118, !dbg !5148
  %121 = mul i64 %118, %73, !dbg !5150
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !5151
  %123 = or i1 %120, %119, !dbg !5152
  %124 = zext i1 %123 to i32, !dbg !5152
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5145
  br label %253, !dbg !5121

; <label>:125:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5153
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5155
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5155
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5153
  %126 = udiv i64 -1, %73
  %127 = icmp ult i64 %126, %49, !dbg !5156
  %128 = mul i64 %49, %73, !dbg !5158
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !5159
  %130 = zext i1 %127 to i32, !dbg !5159
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !5136, metadata !702), !dbg !5155
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !5136, metadata !702), !dbg !5155
  br label %253, !dbg !5121

; <label>:131:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5160
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5162
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5162
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5129, metadata !702), !dbg !5160
  %132 = udiv i64 -1, %73
  %133 = icmp ult i64 %132, %49, !dbg !5163
  %134 = mul i64 %49, %73, !dbg !5165
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !5166
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5160
  %136 = icmp ult i64 %132, %135, !dbg !5163
  %137 = mul i64 %135, %73, !dbg !5165
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !5166
  %139 = or i1 %136, %133, !dbg !5167
  %140 = zext i1 %139 to i32, !dbg !5167
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5160
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5129, metadata !702), !dbg !5160
  br label %253, !dbg !5121

; <label>:141:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5170
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5170
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !5129, metadata !702), !dbg !5168
  %142 = udiv i64 -1, %73
  %143 = icmp ult i64 %142, %49, !dbg !5171
  %144 = mul i64 %49, %73, !dbg !5173
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !5174
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  %146 = icmp ult i64 %142, %145, !dbg !5171
  %147 = mul i64 %145, %73, !dbg !5173
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !5174
  %149 = or i1 %146, %143, !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  %150 = icmp ult i64 %142, %148, !dbg !5171
  %151 = mul i64 %148, %73, !dbg !5173
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !5174
  %153 = or i1 %150, %149, !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  %154 = icmp ult i64 %142, %152, !dbg !5171
  %155 = mul i64 %152, %73, !dbg !5173
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !5174
  %157 = or i1 %154, %153, !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  %158 = icmp ult i64 %142, %156, !dbg !5171
  %159 = mul i64 %156, %73, !dbg !5173
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !5174
  %161 = or i1 %158, %157, !dbg !5175
  %162 = zext i1 %161 to i32, !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5168
  br label %253, !dbg !5121

; <label>:163:                                    ; preds = %72, %72
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5176
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5178
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !5129, metadata !702), !dbg !5176
  %164 = udiv i64 -1, %73
  %165 = icmp ult i64 %164, %49, !dbg !5179
  %166 = mul i64 %49, %73, !dbg !5181
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !5182
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  %168 = icmp ult i64 %164, %167, !dbg !5179
  %169 = mul i64 %167, %73, !dbg !5181
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !5182
  %171 = or i1 %168, %165, !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  %172 = icmp ult i64 %164, %170, !dbg !5179
  %173 = mul i64 %170, %73, !dbg !5181
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !5182
  %175 = or i1 %172, %171, !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  %176 = icmp ult i64 %164, %174, !dbg !5179
  %177 = mul i64 %174, %73, !dbg !5181
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !5182
  %179 = or i1 %176, %175, !dbg !5183
  %180 = zext i1 %179 to i32, !dbg !5183
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !5129, metadata !702), !dbg !5176
  br label %253, !dbg !5121

; <label>:181:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !5108, metadata !702), !dbg !5184
  %182 = icmp slt i64 %49, 0, !dbg !5186
  %183 = shl i64 %49, 1, !dbg !5187
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !5188
  %185 = lshr i64 %49, 63, !dbg !5188
  %186 = trunc i64 %185 to i32, !dbg !5188
  tail call void @llvm.dbg.value(metadata i32 %186, i64 0, metadata !5022, metadata !702), !dbg !5121
  br label %253, !dbg !5189

; <label>:187:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5192
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !5129, metadata !702), !dbg !5190
  %188 = udiv i64 -1, %73
  %189 = icmp ult i64 %188, %49, !dbg !5193
  %190 = mul i64 %49, %73, !dbg !5195
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !5196
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %192 = icmp ult i64 %188, %191, !dbg !5193
  %193 = mul i64 %191, %73, !dbg !5195
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !5196
  %195 = or i1 %192, %189, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %196 = icmp ult i64 %188, %194, !dbg !5193
  %197 = mul i64 %194, %73, !dbg !5195
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !5196
  %199 = or i1 %196, %195, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %200 = icmp ult i64 %188, %198, !dbg !5193
  %201 = mul i64 %198, %73, !dbg !5195
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !5196
  %203 = or i1 %200, %199, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %204 = icmp ult i64 %188, %202, !dbg !5193
  %205 = mul i64 %202, %73, !dbg !5195
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !5196
  %207 = or i1 %204, %203, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %208 = icmp ult i64 %188, %206, !dbg !5193
  %209 = mul i64 %206, %73, !dbg !5195
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !5196
  %211 = or i1 %208, %207, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %212 = icmp ult i64 %188, %210, !dbg !5193
  %213 = mul i64 %210, %73, !dbg !5195
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !5196
  %215 = or i1 %212, %211, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  %216 = icmp ult i64 %188, %214, !dbg !5193
  %217 = mul i64 %214, %73, !dbg !5195
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !5196
  %219 = or i1 %216, %215, !dbg !5197
  %220 = zext i1 %219 to i32, !dbg !5197
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5190
  br label %253, !dbg !5121

; <label>:221:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5200
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5136, metadata !702), !dbg !5200
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !5129, metadata !702), !dbg !5198
  %222 = udiv i64 -1, %73
  %223 = icmp ult i64 %222, %49, !dbg !5201
  %224 = mul i64 %49, %73, !dbg !5203
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !5204
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %226 = icmp ult i64 %222, %225, !dbg !5201
  %227 = mul i64 %225, %73, !dbg !5203
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !5204
  %229 = or i1 %226, %223, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %230 = icmp ult i64 %222, %228, !dbg !5201
  %231 = mul i64 %228, %73, !dbg !5203
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !5204
  %233 = or i1 %230, %229, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %234 = icmp ult i64 %222, %232, !dbg !5201
  %235 = mul i64 %232, %73, !dbg !5203
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !5204
  %237 = or i1 %234, %233, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %238 = icmp ult i64 %222, %236, !dbg !5201
  %239 = mul i64 %236, %73, !dbg !5203
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !5204
  %241 = or i1 %238, %237, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %242 = icmp ult i64 %222, %240, !dbg !5201
  %243 = mul i64 %240, %73, !dbg !5203
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !5204
  %245 = or i1 %242, %241, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  %246 = icmp ult i64 %222, %244, !dbg !5201
  %247 = mul i64 %244, %73, !dbg !5203
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !5204
  %249 = or i1 %246, %245, !dbg !5205
  %250 = zext i1 %249 to i32, !dbg !5205
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !5129, metadata !702), !dbg !5198
  br label %253, !dbg !5121

; <label>:251:                                    ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !5012, metadata !702), !dbg !5051
  store i64 %49, i64* %3, align 8, !dbg !5206, !tbaa !821
  %252 = or i32 %48, 2, !dbg !5207
  br label %265, !dbg !5208

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ]
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ]
  tail call void @llvm.dbg.value(metadata i32 %255, i64 0, metadata !5022, metadata !702), !dbg !5121
  %256 = or i32 %255, %48, !dbg !5209
  tail call void @llvm.dbg.value(metadata i32 %256, i64 0, metadata !5013, metadata !702), !dbg !5029
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !5210
  store i8* %257, i8** %25, align 8, !dbg !5210, !tbaa !710
  %258 = load i8, i8* %257, align 1, !dbg !5211, !tbaa !826
  %259 = icmp eq i8 %258, 0, !dbg !5211
  %260 = or i32 %256, 2, !dbg !5213
  tail call void @llvm.dbg.value(metadata i32 %260, i64 0, metadata !5013, metadata !702), !dbg !5029
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !5214
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5013, metadata !702), !dbg !5029
  tail call void @llvm.dbg.value(metadata i32 %261, i64 0, metadata !5013, metadata !702), !dbg !5029
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ]
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ]
  tail call void @llvm.dbg.value(metadata i32 %264, i64 0, metadata !5013, metadata !702), !dbg !5029
  tail call void @llvm.dbg.value(metadata i64 %263, i64 0, metadata !5012, metadata !702), !dbg !5051
  store i64 %263, i64* %3, align 8, !dbg !5215, !tbaa !821
  br label %265, !dbg !5216

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %7) #11, !dbg !5217
  ret i32 %266, !dbg !5217
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 !dbg !5218 {
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !5221, metadata !702), !dbg !5227
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5222, metadata !702), !dbg !5228
  %3 = icmp eq i64 %0, 0, !dbg !5229
  %4 = icmp eq i64 %1, 0, !dbg !5230
  %5 = or i1 %3, %4, !dbg !5232
  br i1 %5, label %12, label %6, !dbg !5232

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !5233
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !5224, metadata !702), !dbg !5234
  %8 = udiv i64 %7, %1, !dbg !5235
  %9 = icmp eq i64 %8, %0, !dbg !5237
  br i1 %9, label %12, label %10, !dbg !5238

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1, !dbg !5239
  store i32 12, i32* %11, align 4, !dbg !5241, !tbaa !840
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  tail call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !5221, metadata !702), !dbg !5227
  tail call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !5222, metadata !702), !dbg !5228
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !5242
  tail call void @llvm.dbg.value(metadata i8* %15, i64 0, metadata !5223, metadata !702), !dbg !5243
  br label %16, !dbg !5244

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17, !dbg !5245
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5246 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5291, metadata !702), !dbg !5295
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5292, metadata !702), !dbg !5296
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5294, metadata !702), !dbg !5297
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5298
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5293, metadata !702), !dbg !5299
  %3 = icmp slt i32 %2, 0, !dbg !5300
  br i1 %3, label %4, label %6, !dbg !5302

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5303
  br label %24, !dbg !5304

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5305
  %8 = icmp eq i32 %7, 0, !dbg !5305
  br i1 %8, label %13, label %9, !dbg !5307

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5308
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !5310
  %12 = icmp eq i64 %11, -1, !dbg !5312
  br i1 %12, label %16, label %13, !dbg !5313

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !5314
  %15 = icmp eq i32 %14, 0, !dbg !5314
  br i1 %15, label %16, label %18, !dbg !5315

; <label>:16:                                     ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5292, metadata !702), !dbg !5296
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5317
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5294, metadata !702), !dbg !5297
  br label %24, !dbg !5318

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1, !dbg !5319
  %20 = load i32, i32* %19, align 4, !dbg !5319, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5292, metadata !702), !dbg !5296
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !5292, metadata !702), !dbg !5296
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !5317
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !5294, metadata !702), !dbg !5297
  %22 = icmp eq i32 %20, 0, !dbg !5320
  br i1 %22, label %24, label %23, !dbg !5318

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !5322, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !5294, metadata !702), !dbg !5297
  br label %24, !dbg !5324

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25, !dbg !5325
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5326 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5371, metadata !702), !dbg !5372
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !5373
  br i1 %2, label %6, label %3, !dbg !5375

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !5376
  %5 = icmp eq i32 %4, 0, !dbg !5376
  br i1 %5, label %6, label %8, !dbg !5378

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !5380
  br label %17, !dbg !5381

; <label>:8:                                      ; preds = %3
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5382, metadata !702) #11, !dbg !5387
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5389
  %10 = load i32, i32* %9, align 8, !dbg !5389, !tbaa !1216
  %11 = and i32 %10, 256, !dbg !5391
  %12 = icmp eq i32 %11, 0, !dbg !5391
  br i1 %12, label %15, label %13, !dbg !5392

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !5393
  br label %15, !dbg !5393

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !5394
  br label %17, !dbg !5395

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18, !dbg !5396
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @rpl_freopen(i8*, i8* nonnull, %struct._IO_FILE* nonnull) local_unnamed_addr #6 !dbg !5397 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5442, metadata !702), !dbg !5455
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5443, metadata !702), !dbg !5456
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !5444, metadata !702), !dbg !5457
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5458, metadata !702) #11, !dbg !5463
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5461, metadata !702) #11, !dbg !5465
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, i64 0, metadata !5462, metadata !702) #11, !dbg !5466
  %4 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* nonnull %1, %struct._IO_FILE* nonnull %2) #11, !dbg !5467
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !5445, metadata !702), !dbg !5468
  %5 = icmp ne %struct._IO_FILE* %4, null, !dbg !5469
  %6 = icmp ne i8* %0, null, !dbg !5470
  %7 = and i1 %6, %5, !dbg !5471
  br i1 %7, label %8, label %25, !dbg !5471

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @fileno(%struct._IO_FILE* nonnull %4) #11, !dbg !5472
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !5447, metadata !702), !dbg !5473
  %10 = tail call i32 @dup2(i32 %9, i32 %9) #11, !dbg !5474
  %11 = icmp slt i32 %10, 0, !dbg !5475
  br i1 %11, label %12, label %25, !dbg !5476

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1, !dbg !5477
  %14 = load i32, i32* %13, align 4, !dbg !5477, !tbaa !840
  %15 = icmp eq i32 %14, 9, !dbg !5479
  br i1 %15, label %16, label %25, !dbg !5480

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.183, i64 0, i64 0), i32 524288) #11, !dbg !5482
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !5451, metadata !702), !dbg !5483
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5454, metadata !702), !dbg !5484
  %18 = icmp eq i32 %17, %9, !dbg !5485
  br i1 %18, label %23, label %19, !dbg !5487

; <label>:19:                                     ; preds = %16
  %20 = tail call i32 @dup2(i32 %17, i32 %9) #11, !dbg !5488
  %21 = icmp slt i32 %20, 0, !dbg !5491
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5454, metadata !702), !dbg !5484
  %22 = tail call i32 @close(i32 %17) #11, !dbg !5492
  br i1 %21, label %25, label %23

; <label>:23:                                     ; preds = %19, %16
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !5454, metadata !702), !dbg !5484
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5458, metadata !702) #11, !dbg !5493
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5461, metadata !702) #11, !dbg !5496
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, i64 0, metadata !5462, metadata !702) #11, !dbg !5497
  %24 = tail call %struct._IO_FILE* @freopen(i8* nonnull %0, i8* nonnull %1, %struct._IO_FILE* nonnull %4) #11, !dbg !5498
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %24, i64 0, metadata !5445, metadata !702), !dbg !5468
  br label %25, !dbg !5499

; <label>:25:                                     ; preds = %19, %8, %12, %23, %3
  %26 = phi %struct._IO_FILE* [ %4, %3 ], [ %4, %12 ], [ %4, %8 ], [ %24, %23 ], [ %4, %19 ]
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %26, i64 0, metadata !5445, metadata !702), !dbg !5468
  ret %struct._IO_FILE* %26, !dbg !5500
}

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 !dbg !5501 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5546, metadata !702), !dbg !5552
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5547, metadata !702), !dbg !5553
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5548, metadata !702), !dbg !5554
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5555
  %5 = load i8*, i8** %4, align 8, !dbg !5555, !tbaa !2256
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5556
  %7 = load i8*, i8** %6, align 8, !dbg !5556, !tbaa !2255
  %8 = icmp eq i8* %5, %7, !dbg !5557
  br i1 %8, label %9, label %28, !dbg !5558

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5559
  %11 = load i8*, i8** %10, align 8, !dbg !5559, !tbaa !1295
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5561
  %13 = load i8*, i8** %12, align 8, !dbg !5561, !tbaa !5562
  %14 = icmp eq i8* %11, %13, !dbg !5563
  br i1 %14, label %15, label %28, !dbg !5564

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5565
  %17 = load i8*, i8** %16, align 8, !dbg !5565, !tbaa !5566
  %18 = icmp eq i8* %17, null, !dbg !5567
  br i1 %18, label %19, label %28, !dbg !5568

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !5570
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !5571
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !5549, metadata !702), !dbg !5573
  %22 = icmp eq i64 %21, -1, !dbg !5574
  br i1 %22, label %30, label %23, !dbg !5576

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5577
  %25 = load i32, i32* %24, align 8, !dbg !5578, !tbaa !1216
  %26 = and i32 %25, -17, !dbg !5578
  store i32 %26, i32* %24, align 8, !dbg !5578, !tbaa !1216
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5579
  store i64 %21, i64* %27, align 8, !dbg !5580, !tbaa !5581
  br label %30, !dbg !5582

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5583
  br label %30, !dbg !5584

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31, !dbg !5585
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 !dbg !5586 {
  %5 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %0, i64 0, metadata !5603, metadata !702), !dbg !5612
  tail call void @llvm.dbg.value(metadata i8* %1, i64 0, metadata !5604, metadata !702), !dbg !5613
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !5605, metadata !702), !dbg !5614
  tail call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, i64 0, metadata !5606, metadata !702), !dbg !5615
  %6 = bitcast i32* %5 to i8*, !dbg !5616
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11, !dbg !5616
  %7 = icmp eq i32* %0, null, !dbg !5617
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !5603, metadata !702), !dbg !5612
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5619
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !5603, metadata !702), !dbg !5612
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !5620
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !5607, metadata !702), !dbg !5621
  %10 = icmp ugt i64 %9, -3, !dbg !5622
  %11 = icmp ne i64 %2, 0, !dbg !5623
  %12 = and i1 %11, %10, !dbg !5625
  br i1 %12, label %13, label %18, !dbg !5625

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !5626
  br i1 %14, label %18, label %15, !dbg !5628

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5630, !tbaa !826
  call void @llvm.dbg.value(metadata i8 %16, i64 0, metadata !5609, metadata !702), !dbg !5631
  %17 = zext i8 %16 to i32, !dbg !5632
  store i32 %17, i32* %8, align 4, !dbg !5633, !tbaa !840
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11, !dbg !5634
  ret i64 %19, !dbg !5634
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 !dbg !5635 {
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5680, metadata !702), !dbg !5685
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !5686
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !5687, metadata !702), !dbg !5690
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5692
  %4 = load i32, i32* %3, align 8, !dbg !5692, !tbaa !1216
  %5 = and i32 %4, 32, !dbg !5692
  %6 = icmp eq i32 %5, 0, !dbg !5693
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !5694
  %8 = icmp ne i32 %7, 0, !dbg !5695
  br i1 %6, label %9, label %19, !dbg !5696

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true, !dbg !5698
  %11 = icmp ne i64 %2, 0, !dbg !5698
  %12 = or i1 %11, %10, !dbg !5698
  %13 = sext i1 %8 to i32, !dbg !5698
  br i1 %12, label %22, label %14, !dbg !5698

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1, !dbg !5700
  %16 = load i32, i32* %15, align 4, !dbg !5700, !tbaa !840
  %17 = icmp ne i32 %16, 9, !dbg !5702
  %18 = sext i1 %17 to i32, !dbg !5702
  br label %22, !dbg !5702

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5704

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1, !dbg !5706
  store i32 0, i32* %21, align 4, !dbg !5708, !tbaa !840
  br label %22, !dbg !5706

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23, !dbg !5709
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 !dbg !5710 {
  %1 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %1, metadata !5722, metadata !702), !dbg !5796
  %2 = alloca [51 x i8], align 16
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %2, metadata !5789, metadata !702), !dbg !5798
  %3 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !5799
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !5714, metadata !702), !dbg !5800
  %4 = icmp eq i8* %3, null, !dbg !5801
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), i8* %3, !dbg !5803
  tail call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !5714, metadata !702), !dbg !5800
  %6 = load volatile i8*, i8** @charset_aliases, align 8, !dbg !5804, !tbaa !710
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !5736, metadata !702) #11, !dbg !5805
  %7 = icmp eq i8* %6, null, !dbg !5806
  br i1 %7, label %8, label %127, !dbg !5807

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.193, i64 0, i64 0)) #11, !dbg !5808
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !5737, metadata !702) #11, !dbg !5809
  %10 = icmp eq i8* %9, null, !dbg !5810
  br i1 %10, label %14, label %11, !dbg !5812

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1, !dbg !5813, !tbaa !826
  %13 = icmp eq i8 %12, 0, !dbg !5815
  br i1 %13, label %14, label %15, !dbg !5816

; <label>:14:                                     ; preds = %11, %8
  br label %15, !dbg !5818

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.194, i64 0, i64 0), %14 ], [ %9, %11 ]
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !5737, metadata !702) #11, !dbg !5809
  %17 = tail call i64 @strlen(i8* nonnull %16) #13, !dbg !5819
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !5740, metadata !702) #11, !dbg !5820
  tail call void @llvm.dbg.value(metadata i64 13, i64 0, metadata !5742, metadata !702) #11, !dbg !5821
  %18 = icmp eq i64 %17, 0, !dbg !5822
  br i1 %18, label %24, label %19, !dbg !5823

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1, !dbg !5824
  %21 = getelementptr inbounds i8, i8* %16, i64 %20, !dbg !5824
  %22 = load i8, i8* %21, align 1, !dbg !5824, !tbaa !826
  %23 = icmp ne i8 %22, 47, !dbg !5826
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64, !dbg !5827
  %27 = add i64 %17, 14, !dbg !5828
  %28 = add i64 %27, %26, !dbg !5829
  %29 = tail call noalias i8* @malloc(i64 %28) #11, !dbg !5830
  tail call void @llvm.dbg.value(metadata i8* %29, i64 0, metadata !5739, metadata !702) #11, !dbg !5831
  %30 = icmp eq i8* %29, null, !dbg !5832
  br i1 %30, label %125, label %31, !dbg !5832

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11, !dbg !5833
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35, !dbg !5836

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1, !dbg !5837, !tbaa !826
  %34 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5839
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.195, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5840
  br label %37, !dbg !5841

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26, !dbg !5839
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.195, i64 0, i64 0), i64 14, i32 1, i1 false) #11, !dbg !5840
  br label %37, !dbg !5841

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11, !dbg !5842
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !5744, metadata !702) #11, !dbg !5843
  %39 = icmp slt i32 %38, 0, !dbg !5844
  br i1 %39, label %123, label %40, !dbg !5845

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.196, i64 0, i64 0)) #11, !dbg !5846
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5745, metadata !702) #11, !dbg !5847
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !5848
  br i1 %42, label %48, label %43, !dbg !5849

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50, !dbg !5850

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11, !dbg !5851
  br label %123, !dbg !5853

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  call void @llvm.dbg.value(metadata i64 %51, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11, !dbg !5855
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11, !dbg !5856
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5857, metadata !702) #11, !dbg !5862
  %53 = load i8*, i8** %46, align 8, !dbg !5864, !tbaa !2255
  %54 = load i8*, i8** %47, align 8, !dbg !5864, !tbaa !2256
  %55 = icmp ult i8* %53, %54, !dbg !5864
  br i1 %55, label %58, label %56, !dbg !5864, !prof !1297

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5865
  br label %62, !dbg !5865

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !5867
  store i8* %59, i8** %46, align 8, !dbg !5867, !tbaa !2255
  %60 = load i8, i8* %53, align 1, !dbg !5867, !tbaa !826
  %61 = zext i8 %60 to i32, !dbg !5867
  br label %62, !dbg !5867

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ], !dbg !5869
  call void @llvm.dbg.value(metadata i32 %63, i64 0, metadata !5788, metadata !702) #11, !dbg !5871
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ], !dbg !5872

; <label>:64:                                     ; preds = %62
  br label %65, !dbg !5873

; <label>:65:                                     ; preds = %64, %75
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %41, i64 0, metadata !5857, metadata !702) #11, !dbg !5873
  %66 = load i8*, i8** %46, align 8, !dbg !5877, !tbaa !2255
  %67 = load i8*, i8** %47, align 8, !dbg !5877, !tbaa !2256
  %68 = icmp ult i8* %66, %67, !dbg !5877
  br i1 %68, label %71, label %69, !dbg !5877, !prof !1297

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11, !dbg !5878
  br label %75, !dbg !5878

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !5879
  store i8* %72, i8** %46, align 8, !dbg !5879, !tbaa !2255
  %73 = load i8, i8* %66, align 1, !dbg !5879, !tbaa !826
  %74 = zext i8 %73 to i32, !dbg !5879
  br label %75, !dbg !5879

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ], !dbg !5880
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !5788, metadata !702) #11, !dbg !5871
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ], !dbg !5881, !llvm.loop !5883

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11, !dbg !5886
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.197, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11, !dbg !5887
  %80 = icmp slt i32 %79, 2, !dbg !5889
  br i1 %80, label %115, label %81, !dbg !5890

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #13, !dbg !5891
  call void @llvm.dbg.value(metadata i64 %82, i64 0, metadata !5793, metadata !702) #11, !dbg !5892
  %83 = call i64 @strlen(i8* nonnull %45) #13, !dbg !5893
  call void @llvm.dbg.value(metadata i64 %83, i64 0, metadata !5794, metadata !702) #11, !dbg !5894
  call void @llvm.dbg.value(metadata i8* %52, i64 0, metadata !5795, metadata !702) #11, !dbg !5895
  %84 = icmp eq i64 %51, 0, !dbg !5896
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91, !dbg !5898

; <label>:88:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i64 %87, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  %89 = add i64 %86, 2, !dbg !5899
  %90 = call noalias i8* @malloc(i64 %89) #11, !dbg !5901
  call void @llvm.dbg.value(metadata i8* %90, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  br label %95, !dbg !5902

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51, !dbg !5903
  call void @llvm.dbg.value(metadata i64 %92, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  %93 = add i64 %92, 1, !dbg !5905
  %94 = call i8* @realloc(i8* %52, i64 %93) #11, !dbg !5906
  call void @llvm.dbg.value(metadata i8* %94, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  call void @llvm.dbg.value(metadata i8* %97, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  %98 = icmp eq i8* %97, null, !dbg !5907
  br i1 %98, label %99, label %100, !dbg !5909

; <label>:99:                                     ; preds = %95
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  call void @free(i8* %52) #11, !dbg !5910
  br label %116, !dbg !5912

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !5913
  %102 = xor i64 %83, -1, !dbg !5914
  %103 = getelementptr inbounds i8, i8* %101, i64 %102, !dbg !5914
  %104 = xor i64 %82, -1, !dbg !5915
  %105 = getelementptr inbounds i8, i8* %103, i64 %104, !dbg !5915
  call void @llvm.dbg.value(metadata i8* %105, i64 0, metadata !5916, metadata !702) #11, !dbg !5925
  call void @llvm.dbg.value(metadata i8* %44, i64 0, metadata !5924, metadata !702) #11, !dbg !5925
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11, !dbg !5927
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11, !dbg !5928
  call void @llvm.dbg.value(metadata i8* %103, i64 0, metadata !5916, metadata !702) #11, !dbg !5929
  call void @llvm.dbg.value(metadata i8* %45, i64 0, metadata !5924, metadata !702) #11, !dbg !5929
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11, !dbg !5931
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11, !dbg !5932
  br label %111, !dbg !5933

; <label>:110:                                    ; preds = %75
  br label %111, !dbg !5850

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5933
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5933
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116, !dbg !5850

; <label>:115:                                    ; preds = %62, %77
  br label %116, !dbg !5850

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5786, metadata !702) #11, !dbg !5850
  call void @llvm.dbg.value(metadata i64 %112, i64 0, metadata !5787, metadata !702) #11, !dbg !5854
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11, !dbg !5933
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11, !dbg !5933
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11, !dbg !5934
  %120 = icmp eq i64 %117, 0, !dbg !5935
  br i1 %120, label %123, label %121, !dbg !5937

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117, !dbg !5938
  store i8 0, i8* %122, align 1, !dbg !5940, !tbaa !826
  call void @llvm.dbg.value(metadata i8* %113, i64 0, metadata !5736, metadata !702) #11, !dbg !5805
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), %116 ]
  call void @llvm.dbg.value(metadata i8* %124, i64 0, metadata !5736, metadata !702) #11, !dbg !5805
  call void @free(i8* %29) #11, !dbg !5941
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.192, i64 0, i64 0), %24 ]
  call void @llvm.dbg.value(metadata i8* %126, i64 0, metadata !5736, metadata !702) #11, !dbg !5805
  store volatile i8* %126, i8** @charset_aliases, align 8, !dbg !5942, !tbaa !710
  br label %127, !dbg !5943

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i8* %128, i64 0, metadata !5715, metadata !702), !dbg !5944
  %129 = load i8, i8* %128, align 1, !dbg !5945, !tbaa !826
  %130 = icmp eq i8 %129, 0, !dbg !5946
  br i1 %130, label %157, label %131, !dbg !5947

; <label>:131:                                    ; preds = %127
  br label %132, !dbg !5949

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11, !dbg !5949
  %136 = icmp eq i32 %135, 0, !dbg !5950
  br i1 %136, label %143, label %137, !dbg !5951

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42, !dbg !5952
  br i1 %138, label %139, label %147, !dbg !5954

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !5955
  %141 = load i8, i8* %140, align 1, !dbg !5955, !tbaa !826
  %142 = icmp eq i8 %141, 0, !dbg !5957
  br i1 %142, label %143, label %147, !dbg !5958

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #13, !dbg !5960
  %145 = getelementptr inbounds i8, i8* %134, i64 %144, !dbg !5962
  %146 = getelementptr inbounds i8, i8* %145, i64 1, !dbg !5963
  call void @llvm.dbg.value(metadata i8* %146, i64 0, metadata !5714, metadata !702), !dbg !5800
  br label %157, !dbg !5964

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #13, !dbg !5965
  %149 = add i64 %148, 1, !dbg !5966
  %150 = getelementptr inbounds i8, i8* %134, i64 %149, !dbg !5967
  call void @llvm.dbg.value(metadata i8* %150, i64 0, metadata !5715, metadata !702), !dbg !5944
  %151 = call i64 @strlen(i8* %150) #13, !dbg !5968
  %152 = add i64 %151, 1, !dbg !5969
  %153 = getelementptr inbounds i8, i8* %150, i64 %152, !dbg !5970
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5715, metadata !702), !dbg !5944
  call void @llvm.dbg.value(metadata i8* %153, i64 0, metadata !5715, metadata !702), !dbg !5944
  %154 = load i8, i8* %153, align 1, !dbg !5945, !tbaa !826
  %155 = icmp eq i8 %154, 0, !dbg !5946
  br i1 %155, label %156, label %132, !dbg !5947, !llvm.loop !5971

; <label>:156:                                    ; preds = %147
  br label %157, !dbg !5800

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  call void @llvm.dbg.value(metadata i8* %158, i64 0, metadata !5714, metadata !702), !dbg !5800
  %159 = load i8, i8* %158, align 1, !dbg !5974, !tbaa !826
  %160 = icmp eq i8 %159, 0, !dbg !5976
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.198, i64 0, i64 0), i8* %158, !dbg !5977
  call void @llvm.dbg.value(metadata i8* %161, i64 0, metadata !5714, metadata !702), !dbg !5800
  ret i8* %161, !dbg !5978
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #6 !dbg !5979 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !5982, metadata !702), !dbg !5991
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !5983, metadata !702), !dbg !5992
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !5984, metadata !702), !dbg !5993
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !5985, metadata !702), !dbg !5994
  %5 = icmp eq i64 %1, %3, !dbg !5995
  br i1 %5, label %6, label %11, !dbg !5996

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !5997
  %8 = icmp eq i32 %7, 0, !dbg !5999
  br i1 %8, label %9, label %11, !dbg !6000

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !6002
  store i32 0, i32* %10, align 4, !dbg !6004, !tbaa !840
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5986, metadata !702), !dbg !6005
  br label %45, !dbg !6006

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !6007
  %13 = load i8, i8* %12, align 1, !dbg !6007, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !5987, metadata !702), !dbg !6008
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !6009
  %15 = load i8, i8* %14, align 1, !dbg !6009, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %15, i64 0, metadata !5990, metadata !702), !dbg !6010
  store i8 0, i8* %12, align 1, !dbg !6011, !tbaa !826
  store i8 0, i8* %14, align 1, !dbg !6012, !tbaa !826
  %16 = add i64 %1, 1, !dbg !6013
  %17 = add i64 %3, 1, !dbg !6014
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6015, metadata !702) #11, !dbg !6025
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !6018, metadata !702) #11, !dbg !6027
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6019, metadata !702) #11, !dbg !6028
  tail call void @llvm.dbg.value(metadata i64 %17, i64 0, metadata !6020, metadata !702) #11, !dbg !6029
  %18 = tail call i32* @__errno_location() #1, !dbg !6030
  br label %19, !dbg !6032

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  tail call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !6015, metadata !702) #11, !dbg !6025
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6018, metadata !702) #11, !dbg !6027
  tail call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !6020, metadata !702) #11, !dbg !6029
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !6019, metadata !702) #11, !dbg !6028
  store i32 0, i32* %18, align 4, !dbg !6033, !tbaa !840
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #13, !dbg !6034
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !6021, metadata !702) #11, !dbg !6036
  %25 = icmp eq i32 %24, 0, !dbg !6037
  br i1 %25, label %26, label %41, !dbg !6038

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #13, !dbg !6040
  %28 = add i64 %27, 1, !dbg !6041
  tail call void @llvm.dbg.value(metadata i64 %28, i64 0, metadata !6022, metadata !702) #11, !dbg !6042
  %29 = tail call i64 @strlen(i8* %20) #13, !dbg !6043
  %30 = add i64 %29, 1, !dbg !6044
  tail call void @llvm.dbg.value(metadata i64 %30, i64 0, metadata !6024, metadata !702) #11, !dbg !6045
  %31 = sub i64 %22, %28, !dbg !6046
  tail call void @llvm.dbg.value(metadata i64 %31, i64 0, metadata !6018, metadata !702) #11, !dbg !6027
  %32 = sub i64 %21, %30, !dbg !6047
  tail call void @llvm.dbg.value(metadata i64 %32, i64 0, metadata !6020, metadata !702) #11, !dbg !6029
  %33 = icmp eq i64 %31, 0, !dbg !6048
  br i1 %33, label %34, label %37, !dbg !6050

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !6051
  %36 = sext i1 %35 to i32, !dbg !6052
  br label %43

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !6053
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !6054
  %40 = icmp eq i64 %32, 0, !dbg !6055
  br i1 %40, label %41, label %19, !llvm.loop !6057

; <label>:41:                                     ; preds = %37, %19
  %42 = phi i32 [ 1, %37 ], [ %24, %19 ]
  br label %43, !dbg !6005

; <label>:43:                                     ; preds = %41, %34
  %44 = phi i32 [ %36, %34 ], [ %42, %41 ]
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5986, metadata !702), !dbg !6005
  store i8 %13, i8* %12, align 1, !dbg !6060, !tbaa !826
  store i8 %15, i8* %14, align 1, !dbg !6061, !tbaa !826
  br label %45

; <label>:45:                                     ; preds = %43, %9
  %46 = phi i32 [ 0, %9 ], [ %44, %43 ]
  tail call void @llvm.dbg.value(metadata i32 %46, i64 0, metadata !5986, metadata !702), !dbg !6005
  ret i32 %46, !dbg !6062
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #6 !dbg !6063 {
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6065, metadata !702), !dbg !6069
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6066, metadata !702), !dbg !6070
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6067, metadata !702), !dbg !6071
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !6068, metadata !702), !dbg !6072
  %5 = icmp eq i64 %1, %3, !dbg !6073
  br i1 %5, label %6, label %11, !dbg !6075

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #13, !dbg !6076
  %8 = icmp eq i32 %7, 0, !dbg !6078
  br i1 %8, label %9, label %11, !dbg !6079

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1, !dbg !6081
  store i32 0, i32* %10, align 4, !dbg !6083, !tbaa !840
  br label %37, !dbg !6084

; <label>:11:                                     ; preds = %6, %4
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !6015, metadata !702) #11, !dbg !6085
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !6018, metadata !702) #11, !dbg !6087
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !6019, metadata !702) #11, !dbg !6088
  tail call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !6020, metadata !702) #11, !dbg !6089
  %12 = tail call i32* @__errno_location() #1, !dbg !6090
  br label %13, !dbg !6091

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  tail call void @llvm.dbg.value(metadata i8* %17, i64 0, metadata !6015, metadata !702) #11, !dbg !6085
  tail call void @llvm.dbg.value(metadata i64 %16, i64 0, metadata !6018, metadata !702) #11, !dbg !6087
  tail call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !6020, metadata !702) #11, !dbg !6089
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !6019, metadata !702) #11, !dbg !6088
  store i32 0, i32* %12, align 4, !dbg !6092, !tbaa !840
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #13, !dbg !6093
  tail call void @llvm.dbg.value(metadata i32 %18, i64 0, metadata !6021, metadata !702) #11, !dbg !6094
  %19 = icmp eq i32 %18, 0, !dbg !6095
  br i1 %19, label %20, label %35, !dbg !6096

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #13, !dbg !6097
  %22 = add i64 %21, 1, !dbg !6098
  tail call void @llvm.dbg.value(metadata i64 %22, i64 0, metadata !6022, metadata !702) #11, !dbg !6099
  %23 = tail call i64 @strlen(i8* %14) #13, !dbg !6100
  %24 = add i64 %23, 1, !dbg !6101
  tail call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !6024, metadata !702) #11, !dbg !6102
  %25 = sub i64 %16, %22, !dbg !6103
  tail call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !6018, metadata !702) #11, !dbg !6087
  %26 = sub i64 %15, %24, !dbg !6104
  tail call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !6020, metadata !702) #11, !dbg !6089
  %27 = icmp eq i64 %25, 0, !dbg !6105
  br i1 %27, label %28, label %31, !dbg !6106

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !6107
  %30 = sext i1 %29 to i32, !dbg !6108
  br label %37

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !6109
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !6110
  %34 = icmp eq i64 %26, 0, !dbg !6111
  br i1 %34, label %35, label %13, !llvm.loop !6057

; <label>:35:                                     ; preds = %13, %31
  %36 = phi i32 [ 1, %31 ], [ %18, %13 ]
  br label %37, !dbg !6112

; <label>:37:                                     ; preds = %35, %28, %9
  %38 = phi i32 [ 0, %9 ], [ %30, %28 ], [ %36, %35 ]
  ret i32 %38, !dbg !6112
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
attributes #11 = { nounwind }
attributes #12 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn nounwind }
attributes #15 = { noreturn }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2, !178, !184, !197, !205, !627, !630, !632, !635, !638, !641, !212, !219, !643, !272, !651, !667, !669, !671, !675, !677, !679, !681, !683, !685, !688, !281, !690}
!llvm.ident = !{!692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692, !692}
!llvm.module.flags = !{!693, !694, !695, !696}

!0 = !DIGlobalVariableExpression(var: !1)
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 56, type: !100, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !72, globals: !89)
!3 = !DIFile(filename: "src/uniq.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4 = !{!5, !10, !14, !19, !27, !34, !48, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 481, size: 32, elements: !6)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "SFO_NONE", value: 0)
!8 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1)
!9 = !DIEnumerator(name: "SFO_NEW", value: 2)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 67, size: 32, elements: !11)
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "count_occurrences", value: 0)
!13 = !DIEnumerator(name: "count_none", value: 1)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 87, size: 32, elements: !15)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "DM_NONE", value: 0)
!17 = !DIEnumerator(name: "DM_PREPEND", value: 1)
!18 = !DIEnumerator(name: "DM_SEPARATE", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !20, line: 26, size: 32, elements: !21)
!20 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!23 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!24 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!26 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "grouping_method", file: !3, line: 112, size: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "GM_NONE", value: 0)
!30 = !DIEnumerator(name: "GM_PREPEND", value: 1)
!31 = !DIEnumerator(name: "GM_APPEND", value: 2)
!32 = !DIEnumerator(name: "GM_SEPARATE", value: 3)
!33 = !DIEnumerator(name: "GM_BOTH", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !35, line: 32, size: 32, elements: !36)
!35 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!37 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!38 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!39 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!40 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!41 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!42 = !DIEnumerator(name: "c_quoting_style", value: 5)
!43 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!44 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!45 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!46 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!47 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 45, size: 32, elements: !50)
!49 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!52 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!53 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!54 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!55 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!56 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 46, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!60 = !DIEnumerator(name: "_ISupper", value: 256)
!61 = !DIEnumerator(name: "_ISlower", value: 512)
!62 = !DIEnumerator(name: "_ISalpha", value: 1024)
!63 = !DIEnumerator(name: "_ISdigit", value: 2048)
!64 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!65 = !DIEnumerator(name: "_ISspace", value: 8192)
!66 = !DIEnumerator(name: "_ISprint", value: 16384)
!67 = !DIEnumerator(name: "_ISgraph", value: 32768)
!68 = !DIEnumerator(name: "_ISblank", value: 1)
!69 = !DIEnumerator(name: "_IScntrl", value: 2)
!70 = !DIEnumerator(name: "_ISpunct", value: 4)
!71 = !DIEnumerator(name: "_ISalnum", value: 8)
!72 = !{!73, !74, !75, !78, !81, !82, !84, !87, !88, !86}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 62, baseType: !77)
!76 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !{!0, !90, !92, !94, !96, !98, !101, !103, !105, !107, !109, !139, !153, !159, !165, !167, !171}
!90 = !DIGlobalVariableExpression(var: !91)
!91 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 59, type: !75, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93)
!93 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 62, type: !75, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95)
!95 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 65, type: !75, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97)
!97 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 75, type: !10, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99)
!99 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 80, type: !100, isLocal: true, isDefinition: true)
!100 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!101 = !DIGlobalVariableExpression(var: !102)
!102 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 81, type: !100, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104)
!104 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 82, type: !100, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106)
!106 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 85, type: !100, isLocal: true, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108)
!108 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 110, type: !14, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110)
!110 = distinct !DIGlobalVariable(name: "infomap", scope: !111, file: !112, line: 632, type: !136, isLocal: true, isDefinition: true)
!111 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !112, file: !112, line: 630, type: !113, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !115)
!112 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!113 = !DISubroutineType(types: !114)
!114 = !{null, !78}
!115 = !{!116, !117, !118, !125, !127, !128, !129, !132, !133, !135}
!116 = !DILocalVariable(name: "program", arg: 1, scope: !111, file: !112, line: 630, type: !78)
!117 = !DILocalVariable(name: "node", scope: !111, file: !112, line: 642, type: !78)
!118 = !DILocalVariable(name: "map_prog", scope: !111, file: !112, line: 643, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !111, file: !112, line: 632, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !121, file: !112, line: 632, baseType: !78, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !121, file: !112, line: 632, baseType: !78, size: 64, offset: 64)
!125 = !DILocalVariable(name: "__s1_len", scope: !126, file: !112, line: 645, type: !75)
!126 = distinct !DILexicalBlock(scope: !111, file: !112, line: 645, column: 33)
!127 = !DILocalVariable(name: "__s2_len", scope: !126, file: !112, line: 645, type: !75)
!128 = !DILocalVariable(name: "lc_messages", scope: !111, file: !112, line: 655, type: !78)
!129 = !DILocalVariable(name: "__s1_len", scope: !130, file: !112, line: 656, type: !75)
!130 = distinct !DILexicalBlock(scope: !131, file: !112, line: 656, column: 22)
!131 = distinct !DILexicalBlock(scope: !111, file: !112, line: 656, column: 7)
!132 = !DILocalVariable(name: "__s2_len", scope: !130, file: !112, line: 656, type: !75)
!133 = !DILocalVariable(name: "__s2", scope: !134, file: !112, line: 656, type: !84)
!134 = distinct !DILexicalBlock(scope: !130, file: !112, line: 656, column: 22)
!135 = !DILocalVariable(name: "__result", scope: !134, file: !112, line: 656, type: !87)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 896, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 7)
!139 = !DIGlobalVariableExpression(var: !140)
!140 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 147, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 3328, elements: !151)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !144, line: 104, size: 256, elements: !145)
!144 = !DIFile(filename: "/usr/include/getopt.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!145 = !{!146, !147, !148, !150}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 106, baseType: !78, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !143, file: !144, line: 109, baseType: !87, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !143, file: !144, line: 110, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !143, file: !144, line: 111, baseType: !87, size: 32, offset: 192)
!151 = !{!152}
!152 = !DISubrange(count: 13)
!153 = !DIGlobalVariableExpression(var: !154)
!154 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 104, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 96, elements: !157)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!157 = !{!158}
!158 = !DISubrange(count: 3)
!159 = !DIGlobalVariableExpression(var: !160)
!160 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 99, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !163)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!163 = !{!164}
!164 = !DISubrange(count: 4)
!165 = !DIGlobalVariableExpression(var: !166)
!166 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 140, type: !27, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168)
!168 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 135, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !163)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!171 = !DIGlobalVariableExpression(var: !172)
!172 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 130, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 320, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 5)
!176 = !DIGlobalVariableExpression(var: !177)
!177 = distinct !DIGlobalVariable(name: "Version", scope: !178, file: !179, line: 2, type: !78, isLocal: false, isDefinition: true)
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, globals: !181)
!179 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!180 = !{}
!181 = !{!176}
!182 = !DIGlobalVariableExpression(var: !183)
!183 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !184, file: !189, line: 69, type: !190, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186, retainedTypes: !187, globals: !188)
!185 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!186 = !{!34}
!187 = !{!75, !73, !86}
!188 = !{!182}
!189 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !191, line: 55, baseType: !192)
!191 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !DIGlobalVariableExpression(var: !196)
!196 = distinct !DIGlobalVariable(name: "file_name", scope: !197, file: !202, line: 36, type: !78, isLocal: true, isDefinition: true)
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, globals: !199)
!198 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!199 = !{!195, !200}
!200 = !DIGlobalVariableExpression(var: !201)
!201 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !197, file: !202, line: 46, type: !100, isLocal: true, isDefinition: true)
!202 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!203 = !DIGlobalVariableExpression(var: !204)
!204 = distinct !DIGlobalVariable(name: "exit_failure", scope: !205, file: !208, line: 24, type: !209, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, globals: !207)
!206 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!207 = !{!203}
!208 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!210 = !DIGlobalVariableExpression(var: !211)
!211 = distinct !DIGlobalVariable(name: "program_name", scope: !212, file: !216, line: 33, type: !78, isLocal: false, isDefinition: true)
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !214, globals: !215)
!213 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!214 = !{!73, !81}
!215 = !{!210}
!216 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!217 = !DIGlobalVariableExpression(var: !218)
!218 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !219, file: !231, line: 77, type: !267, isLocal: false, isDefinition: true)
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !221, retainedTypes: !227, globals: !228)
!220 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!221 = !{!34, !222, !57}
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !35, line: 242, size: 32, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!225 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!226 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!227 = !{!87, !88, !75, !81}
!228 = !{!217, !229, !236, !249, !251, !256, !263, !265}
!229 = !DIGlobalVariableExpression(var: !230)
!230 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !219, file: !231, line: 93, type: !232, isLocal: false, isDefinition: true)
!231 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 320, elements: !234)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!234 = !{!235}
!235 = !DISubrange(count: 10)
!236 = !DIGlobalVariableExpression(var: !237)
!237 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !219, file: !231, line: 1043, type: !238, isLocal: false, isDefinition: true)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !231, line: 57, size: 448, elements: !239)
!239 = !{!240, !241, !242, !247, !248}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !238, file: !231, line: 60, baseType: !34, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !231, line: 63, baseType: !87, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !238, file: !231, line: 67, baseType: !243, size: 256, offset: 64)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !245)
!244 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!245 = !{!246}
!246 = !DISubrange(count: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !238, file: !231, line: 70, baseType: !78, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !238, file: !231, line: 73, baseType: !78, size: 64, offset: 384)
!249 = !DIGlobalVariableExpression(var: !250)
!250 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !219, file: !231, line: 108, type: !238, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252)
!252 = distinct !DIGlobalVariable(name: "slot0", scope: !219, file: !231, line: 834, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2048, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 256)
!256 = !DIGlobalVariableExpression(var: !257)
!257 = distinct !DIGlobalVariable(name: "slotvec", scope: !219, file: !231, line: 837, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !231, line: 826, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !259, file: !231, line: 828, baseType: !75, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !231, line: 829, baseType: !81, size: 64, offset: 64)
!263 = !DIGlobalVariableExpression(var: !264)
!264 = distinct !DIGlobalVariable(name: "nslots", scope: !219, file: !231, line: 835, type: !87, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266)
!266 = distinct !DIGlobalVariable(name: "slotvec0", scope: !219, file: !231, line: 836, type: !259, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 704, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 11)
!270 = !DIGlobalVariableExpression(var: !271)
!271 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !272, file: !275, line: 26, type: !276, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, globals: !274)
!273 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!274 = !{!270}
!275 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 376, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 47)
!279 = !DIGlobalVariableExpression(var: !280)
!280 = distinct !DIGlobalVariable(name: "charset_aliases", scope: !281, file: !625, line: 120, type: !626, isLocal: true, isDefinition: true)
!281 = distinct !DICompileUnit(language: DW_LANG_C99, file: !282, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !283, retainedTypes: !622, globals: !624)
!282 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!283 = !{!284}
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !285, line: 41, size: 32, elements: !286)
!285 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!287 = !DIEnumerator(name: "ABDAY_1", value: 131072)
!288 = !DIEnumerator(name: "ABDAY_2", value: 131073)
!289 = !DIEnumerator(name: "ABDAY_3", value: 131074)
!290 = !DIEnumerator(name: "ABDAY_4", value: 131075)
!291 = !DIEnumerator(name: "ABDAY_5", value: 131076)
!292 = !DIEnumerator(name: "ABDAY_6", value: 131077)
!293 = !DIEnumerator(name: "ABDAY_7", value: 131078)
!294 = !DIEnumerator(name: "DAY_1", value: 131079)
!295 = !DIEnumerator(name: "DAY_2", value: 131080)
!296 = !DIEnumerator(name: "DAY_3", value: 131081)
!297 = !DIEnumerator(name: "DAY_4", value: 131082)
!298 = !DIEnumerator(name: "DAY_5", value: 131083)
!299 = !DIEnumerator(name: "DAY_6", value: 131084)
!300 = !DIEnumerator(name: "DAY_7", value: 131085)
!301 = !DIEnumerator(name: "ABMON_1", value: 131086)
!302 = !DIEnumerator(name: "ABMON_2", value: 131087)
!303 = !DIEnumerator(name: "ABMON_3", value: 131088)
!304 = !DIEnumerator(name: "ABMON_4", value: 131089)
!305 = !DIEnumerator(name: "ABMON_5", value: 131090)
!306 = !DIEnumerator(name: "ABMON_6", value: 131091)
!307 = !DIEnumerator(name: "ABMON_7", value: 131092)
!308 = !DIEnumerator(name: "ABMON_8", value: 131093)
!309 = !DIEnumerator(name: "ABMON_9", value: 131094)
!310 = !DIEnumerator(name: "ABMON_10", value: 131095)
!311 = !DIEnumerator(name: "ABMON_11", value: 131096)
!312 = !DIEnumerator(name: "ABMON_12", value: 131097)
!313 = !DIEnumerator(name: "MON_1", value: 131098)
!314 = !DIEnumerator(name: "MON_2", value: 131099)
!315 = !DIEnumerator(name: "MON_3", value: 131100)
!316 = !DIEnumerator(name: "MON_4", value: 131101)
!317 = !DIEnumerator(name: "MON_5", value: 131102)
!318 = !DIEnumerator(name: "MON_6", value: 131103)
!319 = !DIEnumerator(name: "MON_7", value: 131104)
!320 = !DIEnumerator(name: "MON_8", value: 131105)
!321 = !DIEnumerator(name: "MON_9", value: 131106)
!322 = !DIEnumerator(name: "MON_10", value: 131107)
!323 = !DIEnumerator(name: "MON_11", value: 131108)
!324 = !DIEnumerator(name: "MON_12", value: 131109)
!325 = !DIEnumerator(name: "AM_STR", value: 131110)
!326 = !DIEnumerator(name: "PM_STR", value: 131111)
!327 = !DIEnumerator(name: "D_T_FMT", value: 131112)
!328 = !DIEnumerator(name: "D_FMT", value: 131113)
!329 = !DIEnumerator(name: "T_FMT", value: 131114)
!330 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115)
!331 = !DIEnumerator(name: "ERA", value: 131116)
!332 = !DIEnumerator(name: "__ERA_YEAR", value: 131117)
!333 = !DIEnumerator(name: "ERA_D_FMT", value: 131118)
!334 = !DIEnumerator(name: "ALT_DIGITS", value: 131119)
!335 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120)
!336 = !DIEnumerator(name: "ERA_T_FMT", value: 131121)
!337 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122)
!338 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123)
!339 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124)
!340 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125)
!341 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126)
!342 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127)
!343 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128)
!344 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129)
!345 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130)
!346 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131)
!347 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132)
!348 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133)
!349 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134)
!350 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135)
!351 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136)
!352 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137)
!353 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138)
!354 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139)
!355 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140)
!356 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141)
!357 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142)
!358 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143)
!359 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144)
!360 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145)
!361 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146)
!362 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147)
!363 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148)
!364 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149)
!365 = !DIEnumerator(name: "_NL_WMON_1", value: 131150)
!366 = !DIEnumerator(name: "_NL_WMON_2", value: 131151)
!367 = !DIEnumerator(name: "_NL_WMON_3", value: 131152)
!368 = !DIEnumerator(name: "_NL_WMON_4", value: 131153)
!369 = !DIEnumerator(name: "_NL_WMON_5", value: 131154)
!370 = !DIEnumerator(name: "_NL_WMON_6", value: 131155)
!371 = !DIEnumerator(name: "_NL_WMON_7", value: 131156)
!372 = !DIEnumerator(name: "_NL_WMON_8", value: 131157)
!373 = !DIEnumerator(name: "_NL_WMON_9", value: 131158)
!374 = !DIEnumerator(name: "_NL_WMON_10", value: 131159)
!375 = !DIEnumerator(name: "_NL_WMON_11", value: 131160)
!376 = !DIEnumerator(name: "_NL_WMON_12", value: 131161)
!377 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162)
!378 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163)
!379 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164)
!380 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165)
!381 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166)
!382 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167)
!383 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168)
!384 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169)
!385 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170)
!386 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171)
!387 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172)
!388 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173)
!389 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174)
!390 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175)
!391 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176)
!392 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177)
!393 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178)
!394 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179)
!395 = !DIEnumerator(name: "_DATE_FMT", value: 131180)
!396 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181)
!397 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182)
!398 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131183)
!399 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608)
!400 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609)
!401 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610)
!402 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611)
!403 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612)
!404 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613)
!405 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614)
!406 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615)
!407 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616)
!408 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617)
!409 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618)
!410 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619)
!411 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620)
!412 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621)
!413 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622)
!414 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623)
!415 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624)
!416 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625)
!417 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626)
!418 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627)
!419 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0)
!420 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1)
!421 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4)
!424 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5)
!425 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6)
!426 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9)
!429 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10)
!430 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11)
!431 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12)
!432 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13)
!433 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14)
!434 = !DIEnumerator(name: "CODESET", value: 14)
!435 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15)
!436 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16)
!437 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17)
!438 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69)
!490 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70)
!491 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85)
!506 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86)
!507 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144)
!508 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145)
!509 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146)
!510 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147)
!511 = !DIEnumerator(name: "__MON_GROUPING", value: 262148)
!512 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149)
!513 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150)
!514 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151)
!515 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152)
!516 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153)
!517 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154)
!518 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155)
!519 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156)
!520 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157)
!521 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158)
!522 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159)
!523 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160)
!524 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161)
!525 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162)
!526 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163)
!527 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164)
!528 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181)
!545 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182)
!546 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185)
!549 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186)
!550 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187)
!551 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188)
!552 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189)
!553 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190)
!554 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536)
!555 = !DIEnumerator(name: "RADIXCHAR", value: 65536)
!556 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537)
!557 = !DIEnumerator(name: "THOUSEP", value: 65537)
!558 = !DIEnumerator(name: "__GROUPING", value: 65538)
!559 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539)
!560 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540)
!561 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541)
!562 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542)
!563 = !DIEnumerator(name: "__YESEXPR", value: 327680)
!564 = !DIEnumerator(name: "__NOEXPR", value: 327681)
!565 = !DIEnumerator(name: "__YESSTR", value: 327682)
!566 = !DIEnumerator(name: "__NOSTR", value: 327683)
!567 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684)
!568 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685)
!569 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752)
!570 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753)
!571 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754)
!572 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755)
!573 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293)
!579 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294)
!580 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295)
!581 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831)
!589 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832)
!590 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833)
!591 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835)
!593 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836)
!594 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837)
!595 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360)
!596 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361)
!597 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364)
!600 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365)
!601 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896)
!602 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897)
!603 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447)
!620 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448)
!621 = !DIEnumerator(name: "_NL_NUM", value: 786449)
!622 = !{!73, !81, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!624 = !{!279}
!625 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!626 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!627 = distinct !DICompileUnit(language: DW_LANG_C99, file: !628, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !629)
!628 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!629 = !{!48}
!630 = distinct !DICompileUnit(language: DW_LANG_C99, file: !631, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!631 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!632 = distinct !DICompileUnit(language: DW_LANG_C99, file: !633, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !634)
!633 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!634 = !{!75, !82, !84, !78}
!635 = distinct !DICompileUnit(language: DW_LANG_C99, file: !636, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !637)
!636 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!637 = !{!623}
!638 = distinct !DICompileUnit(language: DW_LANG_C99, file: !639, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !640)
!639 = !DIFile(filename: "./lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!640 = !{!87}
!641 = distinct !DICompileUnit(language: DW_LANG_C99, file: !642, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!642 = !DIFile(filename: "./lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!643 = distinct !DICompileUnit(language: DW_LANG_C99, file: !644, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !645, retainedTypes: !650)
!644 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!645 = !{!646}
!646 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !647, line: 41, size: 32, elements: !648)
!647 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!648 = !{!649}
!649 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2017)
!650 = !{!73}
!651 = distinct !DICompileUnit(language: DW_LANG_C99, file: !652, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !653, retainedTypes: !666)
!652 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!653 = !{!654}
!654 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !656, file: !655, line: 192, size: 32, elements: !664)
!655 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!656 = distinct !DISubprogram(name: "x2nrealloc", scope: !655, file: !655, line: 180, type: !657, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!73, !73, !74, !75}
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "p", arg: 1, scope: !656, file: !655, line: 180, type: !73)
!661 = !DILocalVariable(name: "pn", arg: 2, scope: !656, file: !655, line: 180, type: !74)
!662 = !DILocalVariable(name: "s", arg: 3, scope: !656, file: !655, line: 180, type: !75)
!663 = !DILocalVariable(name: "n", scope: !656, file: !655, line: 182, type: !75)
!664 = !{!665}
!665 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!666 = !{!75, !81, !73}
!667 = distinct !DICompileUnit(language: DW_LANG_C99, file: !668, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!668 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!669 = distinct !DICompileUnit(language: DW_LANG_C99, file: !670, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186)
!670 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!671 = distinct !DICompileUnit(language: DW_LANG_C99, file: !672, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !674)
!672 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!673 = !{!19, !57}
!674 = !{!87, !88, !81}
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !650)
!676 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!677 = distinct !DICompileUnit(language: DW_LANG_C99, file: !678, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!678 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!679 = distinct !DICompileUnit(language: DW_LANG_C99, file: !680, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !650)
!680 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!681 = distinct !DICompileUnit(language: DW_LANG_C99, file: !682, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!682 = !DIFile(filename: "./lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !650)
!684 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!685 = distinct !DICompileUnit(language: DW_LANG_C99, file: !686, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180, retainedTypes: !687)
!686 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!687 = !{!75}
!688 = distinct !DICompileUnit(language: DW_LANG_C99, file: !689, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!689 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!690 = distinct !DICompileUnit(language: DW_LANG_C99, file: !691, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !180)
!691 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!692 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!693 = !{i32 2, !"Dwarf Version", i32 4}
!694 = !{i32 2, !"Debug Info Version", i32 3}
!695 = !{i32 1, !"PIC Level", i32 2}
!696 = !{i32 1, !"PIE Level", i32 2}
!697 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 165, type: !698, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, variables: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !87}
!700 = !{!701}
!701 = !DILocalVariable(name: "status", arg: 1, scope: !697, file: !3, line: 165, type: !87)
!702 = !DIExpression()
!703 = !DILocation(line: 165, column: 12, scope: !697)
!704 = !DILocation(line: 167, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !697, file: !3, line: 167, column: 7)
!706 = !DILocation(line: 167, column: 7, scope: !697)
!707 = !DILocation(line: 168, column: 5, scope: !708)
!708 = !DILexicalBlockFile(scope: !709, file: !3, discriminator: 1)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 168, column: 5)
!710 = !{!711, !711, i64 0}
!711 = !{!"any pointer", !712, i64 0}
!712 = !{!"omnipotent char", !713, i64 0}
!713 = !{!"Simple C/C++ TBAA"}
!714 = !DILocation(line: 168, column: 5, scope: !715)
!715 = !DILexicalBlockFile(scope: !709, file: !3, discriminator: 3)
!716 = !DILocation(line: 168, column: 5, scope: !717)
!717 = !DILexicalBlockFile(scope: !709, file: !3, discriminator: 2)
!718 = !DILocation(line: 171, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !705, file: !3, line: 170, column: 5)
!720 = !DILocation(line: 171, column: 7, scope: !721)
!721 = !DILexicalBlockFile(scope: !719, file: !3, discriminator: 1)
!722 = !DILocation(line: 175, column: 7, scope: !719)
!723 = !DILocation(line: 175, column: 7, scope: !721)
!724 = !DILocation(line: 587, column: 3, scope: !725, inlinedAt: !726)
!725 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !112, file: !112, line: 585, type: !193, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !180)
!726 = distinct !DILocation(line: 182, column: 7, scope: !719)
!727 = !DILocation(line: 587, column: 3, scope: !728, inlinedAt: !726)
!728 = !DILexicalBlockFile(scope: !725, file: !112, discriminator: 1)
!729 = !DILocation(line: 184, column: 6, scope: !719)
!730 = !DILocation(line: 184, column: 6, scope: !721)
!731 = !DILocation(line: 188, column: 6, scope: !719)
!732 = !DILocation(line: 188, column: 6, scope: !721)
!733 = !DILocation(line: 194, column: 6, scope: !719)
!734 = !DILocation(line: 194, column: 6, scope: !721)
!735 = !DILocation(line: 197, column: 6, scope: !719)
!736 = !DILocation(line: 197, column: 6, scope: !721)
!737 = !DILocation(line: 201, column: 6, scope: !719)
!738 = !DILocation(line: 201, column: 6, scope: !721)
!739 = !DILocation(line: 206, column: 7, scope: !719)
!740 = !DILocation(line: 206, column: 7, scope: !721)
!741 = !DILocation(line: 209, column: 6, scope: !719)
!742 = !DILocation(line: 209, column: 6, scope: !721)
!743 = !DILocation(line: 212, column: 6, scope: !719)
!744 = !DILocation(line: 212, column: 6, scope: !721)
!745 = !DILocation(line: 213, column: 6, scope: !719)
!746 = !DILocation(line: 213, column: 6, scope: !721)
!747 = !DILocation(line: 214, column: 6, scope: !719)
!748 = !DILocation(line: 214, column: 6, scope: !721)
!749 = !DILocation(line: 219, column: 6, scope: !719)
!750 = !DILocation(line: 219, column: 6, scope: !721)
!751 = !DILocation(line: 642, column: 15, scope: !111, inlinedAt: !752)
!752 = distinct !DILocation(line: 225, column: 7, scope: !719)
!753 = !DILocation(line: 651, column: 3, scope: !111, inlinedAt: !752)
!754 = !DILocation(line: 651, column: 3, scope: !755, inlinedAt: !752)
!755 = !DILexicalBlockFile(scope: !111, file: !112, discriminator: 1)
!756 = !DILocation(line: 655, column: 29, scope: !111, inlinedAt: !752)
!757 = !DILocation(line: 655, column: 15, scope: !111, inlinedAt: !752)
!758 = !DILocation(line: 656, column: 7, scope: !131, inlinedAt: !752)
!759 = !DILocation(line: 656, column: 19, scope: !131, inlinedAt: !752)
!760 = !DILocation(line: 656, column: 22, scope: !761, inlinedAt: !752)
!761 = !DILexicalBlockFile(scope: !131, file: !112, discriminator: 16)
!762 = !DILocation(line: 656, column: 7, scope: !763, inlinedAt: !752)
!763 = !DILexicalBlockFile(scope: !111, file: !112, discriminator: 16)
!764 = !DILocation(line: 662, column: 7, scope: !765, inlinedAt: !752)
!765 = distinct !DILexicalBlock(scope: !131, file: !112, line: 657, column: 5)
!766 = !DILocation(line: 662, column: 7, scope: !767, inlinedAt: !752)
!767 = !DILexicalBlockFile(scope: !765, file: !112, discriminator: 1)
!768 = !DILocation(line: 664, column: 5, scope: !765, inlinedAt: !752)
!769 = !DILocation(line: 665, column: 3, scope: !111, inlinedAt: !752)
!770 = !DILocation(line: 665, column: 3, scope: !755, inlinedAt: !752)
!771 = !DILocation(line: 667, column: 3, scope: !111, inlinedAt: !752)
!772 = !DILocation(line: 667, column: 3, scope: !755, inlinedAt: !752)
!773 = !DILocation(line: 227, column: 3, scope: !697)
!774 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 489, type: !775, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !778)
!775 = !DISubroutineType(types: !776)
!776 = !{!87, !87, !777}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !789, !790, !791}
!779 = !DILocalVariable(name: "argc", arg: 1, scope: !774, file: !3, line: 489, type: !87)
!780 = !DILocalVariable(name: "argv", arg: 2, scope: !774, file: !3, line: 489, type: !777)
!781 = !DILocalVariable(name: "optc", scope: !774, file: !3, line: 491, type: !87)
!782 = !DILocalVariable(name: "posixly_correct", scope: !774, file: !3, line: 492, type: !100)
!783 = !DILocalVariable(name: "skip_field_option_type", scope: !774, file: !3, line: 493, type: !5)
!784 = !DILocalVariable(name: "nfiles", scope: !774, file: !3, line: 494, type: !244)
!785 = !DILocalVariable(name: "file", scope: !774, file: !3, line: 495, type: !786)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 2)
!789 = !DILocalVariable(name: "delimiter", scope: !774, file: !3, line: 496, type: !80)
!790 = !DILocalVariable(name: "output_option_used", scope: !774, file: !3, line: 497, type: !100)
!791 = !DILocalVariable(name: "size", scope: !792, file: !3, line: 542, type: !77)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 541, column: 11)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 539, column: 9)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 523, column: 11)
!795 = distinct !DILexicalBlock(scope: !774, file: !3, line: 518, column: 5)
!796 = !DILocation(line: 489, column: 11, scope: !774)
!797 = !DILocation(line: 489, column: 24, scope: !774)
!798 = !DILocation(line: 491, column: 7, scope: !774)
!799 = !DILocation(line: 492, column: 27, scope: !774)
!800 = !DILocation(line: 492, column: 54, scope: !774)
!801 = !DILocation(line: 493, column: 31, scope: !774)
!802 = !DILocation(line: 494, column: 16, scope: !774)
!803 = !DILocation(line: 495, column: 3, scope: !774)
!804 = !DILocation(line: 495, column: 15, scope: !774)
!805 = !DILocation(line: 496, column: 8, scope: !774)
!806 = !DILocation(line: 497, column: 8, scope: !774)
!807 = !DILocation(line: 499, column: 13, scope: !774)
!808 = !DILocation(line: 499, column: 3, scope: !774)
!809 = !DILocation(line: 499, column: 11, scope: !774)
!810 = !DILocation(line: 501, column: 21, scope: !774)
!811 = !DILocation(line: 501, column: 3, scope: !774)
!812 = !DILocation(line: 502, column: 3, scope: !774)
!813 = !DILocation(line: 503, column: 3, scope: !774)
!814 = !DILocation(line: 504, column: 3, scope: !774)
!815 = !DILocation(line: 505, column: 21, scope: !774)
!816 = !DILocation(line: 505, column: 19, scope: !774)
!817 = !{!818, !818, i64 0}
!818 = !{!"_Bool", !712, i64 0}
!819 = !DILocation(line: 507, column: 3, scope: !774)
!820 = !DILocation(line: 509, column: 14, scope: !774)
!821 = !{!822, !822, i64 0}
!822 = !{!"long", !712, i64 0}
!823 = !DILocation(line: 510, column: 15, scope: !774)
!824 = !DILocation(line: 511, column: 15, scope: !774)
!825 = !DILocation(line: 515, column: 18, scope: !774)
!826 = !{!712, !712, i64 0}
!827 = !DILocation(line: 517, column: 3, scope: !774)
!828 = !DILocation(line: 523, column: 16, scope: !794)
!829 = !DILocation(line: 524, column: 41, scope: !830)
!830 = !DILexicalBlockFile(scope: !794, file: !3, discriminator: 2)
!831 = !DILocation(line: 524, column: 31, scope: !832)
!832 = !DILexicalBlockFile(scope: !794, file: !3, discriminator: 1)
!833 = !DILocation(line: 524, column: 11, scope: !794)
!834 = !DILocation(line: 525, column: 23, scope: !832)
!835 = !DILocation(line: 523, column: 11, scope: !836)
!836 = !DILexicalBlockFile(scope: !795, file: !3, discriminator: 1)
!837 = !DILocation(line: 529, column: 23, scope: !838)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 529, column: 15)
!839 = distinct !DILexicalBlock(scope: !794, file: !3, line: 528, column: 9)
!840 = !{!841, !841, i64 0}
!841 = !{!"int", !712, i64 0}
!842 = !DILocation(line: 529, column: 20, scope: !838)
!843 = !DILocation(line: 529, column: 15, scope: !839)
!844 = !DILocation(line: 531, column: 22, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !3, line: 531, column: 15)
!846 = !DILocation(line: 531, column: 15, scope: !839)
!847 = !DILocation(line: 533, column: 28, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !3, line: 532, column: 13)
!849 = !DILocation(line: 533, column: 63, scope: !848)
!850 = !DILocation(line: 533, column: 58, scope: !848)
!851 = !DILocation(line: 533, column: 51, scope: !852)
!852 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 1)
!853 = !DILocation(line: 533, column: 15, scope: !854)
!854 = !DILexicalBlockFile(scope: !848, file: !3, discriminator: 2)
!855 = !DILocation(line: 534, column: 15, scope: !848)
!856 = !DILocation(line: 536, column: 39, scope: !839)
!857 = !DILocation(line: 536, column: 28, scope: !839)
!858 = !DILocation(line: 536, column: 22, scope: !839)
!859 = !DILocation(line: 536, column: 11, scope: !839)
!860 = !DILocation(line: 536, column: 26, scope: !839)
!861 = !DILocation(line: 537, column: 9, scope: !839)
!862 = !DILocation(line: 542, column: 13, scope: !792)
!863 = !DILocation(line: 543, column: 17, scope: !864)
!864 = distinct !DILexicalBlock(scope: !792, file: !3, line: 543, column: 17)
!865 = !DILocation(line: 543, column: 27, scope: !864)
!866 = !DILocation(line: 544, column: 17, scope: !864)
!867 = !DILocation(line: 233, column: 19, scope: !868, inlinedAt: !873)
!868 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 231, type: !869, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!100}
!871 = !{!872}
!872 = !DILocalVariable(name: "posix_ver", scope: !868, file: !3, line: 233, type: !87)
!873 = distinct !DILocation(line: 544, column: 22, scope: !874)
!874 = !DILexicalBlockFile(scope: !864, file: !3, discriminator: 1)
!875 = !DILocation(line: 233, column: 7, scope: !868, inlinedAt: !873)
!876 = !DILocation(line: 234, column: 30, scope: !868, inlinedAt: !873)
!877 = !DILocation(line: 545, column: 17, scope: !864)
!878 = !DILocation(line: 545, column: 30, scope: !874)
!879 = !DIExpression(DW_OP_deref)
!880 = !DILocation(line: 542, column: 31, scope: !792)
!881 = !DILocation(line: 545, column: 20, scope: !874)
!882 = !DILocation(line: 545, column: 59, scope: !874)
!883 = !DILocation(line: 546, column: 17, scope: !864)
!884 = !DILocation(line: 546, column: 20, scope: !874)
!885 = !DILocation(line: 547, column: 26, scope: !864)
!886 = !DILocation(line: 547, column: 15, scope: !864)
!887 = !DILocation(line: 548, column: 29, scope: !888)
!888 = distinct !DILexicalBlock(scope: !864, file: !3, line: 548, column: 22)
!889 = !DILocation(line: 548, column: 22, scope: !864)
!890 = !DILocation(line: 550, column: 30, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 549, column: 15)
!892 = !DILocation(line: 550, column: 60, scope: !891)
!893 = !DILocation(line: 550, column: 53, scope: !894)
!894 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 1)
!895 = !DILocation(line: 550, column: 17, scope: !896)
!896 = !DILexicalBlockFile(scope: !891, file: !3, discriminator: 2)
!897 = !DILocation(line: 551, column: 17, scope: !891)
!898 = !DILocation(line: 554, column: 32, scope: !888)
!899 = !DILocation(line: 554, column: 26, scope: !888)
!900 = !DILocation(line: 554, column: 15, scope: !888)
!901 = !DILocation(line: 554, column: 30, scope: !888)
!902 = !DILocation(line: 555, column: 11, scope: !793)
!903 = !DILocation(line: 556, column: 11, scope: !793)
!904 = distinct !{!904, !827, !905}
!905 = !DILocation(line: 646, column: 5, scope: !774)
!906 = !DILocation(line: 569, column: 40, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 569, column: 17)
!908 = distinct !DILexicalBlock(scope: !793, file: !3, line: 568, column: 11)
!909 = !DILocation(line: 569, column: 17, scope: !908)
!910 = !DILocation(line: 570, column: 27, scope: !907)
!911 = !DILocation(line: 572, column: 18, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 572, column: 17)
!913 = !DILocation(line: 572, column: 18, scope: !914)
!914 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 1)
!915 = !DILocation(line: 572, column: 18, scope: !916)
!916 = !DILexicalBlockFile(scope: !912, file: !3, discriminator: 3)
!917 = !DILocation(line: 573, column: 27, scope: !912)
!918 = !DILocation(line: 573, column: 15, scope: !912)
!919 = !DILocation(line: 582, column: 11, scope: !793)
!920 = !DILocation(line: 587, column: 11, scope: !793)
!921 = !DILocation(line: 592, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !793, file: !3, line: 592, column: 15)
!923 = !DILocation(line: 592, column: 22, scope: !922)
!924 = !DILocation(line: 592, column: 15, scope: !793)
!925 = !DILocation(line: 595, column: 30, scope: !922)
!926 = !DILocation(line: 599, column: 11, scope: !793)
!927 = !DILocation(line: 602, column: 15, scope: !928)
!928 = distinct !DILexicalBlock(scope: !793, file: !3, line: 602, column: 15)
!929 = !DILocation(line: 602, column: 22, scope: !928)
!930 = !DILocation(line: 602, column: 15, scope: !793)
!931 = !DILocation(line: 605, column: 24, scope: !928)
!932 = !DILocation(line: 608, column: 11, scope: !793)
!933 = !DILocation(line: 612, column: 35, scope: !793)
!934 = !DILocalVariable(name: "opt", arg: 1, scope: !935, file: !3, line: 241, type: !78)
!935 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 241, type: !936, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !938)
!936 = !DISubroutineType(types: !937)
!937 = !{!75, !78, !78}
!938 = !{!934, !939, !940}
!939 = !DILocalVariable(name: "msgid", arg: 2, scope: !935, file: !3, line: 241, type: !78)
!940 = !DILocalVariable(name: "size", scope: !935, file: !3, line: 243, type: !77)
!941 = !DILocation(line: 241, column: 23, scope: !935, inlinedAt: !942)
!942 = distinct !DILocation(line: 612, column: 25, scope: !793)
!943 = !DILocation(line: 241, column: 40, scope: !935, inlinedAt: !942)
!944 = !DILocation(line: 243, column: 3, scope: !935, inlinedAt: !942)
!945 = !DILocation(line: 243, column: 21, scope: !935, inlinedAt: !942)
!946 = !DILocation(line: 246, column: 11, scope: !935, inlinedAt: !942)
!947 = !DILocation(line: 246, column: 3, scope: !935, inlinedAt: !942)
!948 = !DILocation(line: 253, column: 7, scope: !949, inlinedAt: !942)
!949 = distinct !DILexicalBlock(scope: !935, file: !3, line: 247, column: 5)
!950 = !DILocation(line: 253, column: 7, scope: !951, inlinedAt: !942)
!951 = !DILexicalBlockFile(scope: !949, file: !3, discriminator: 1)
!952 = !DILocation(line: 256, column: 10, scope: !935, inlinedAt: !942)
!953 = !DILocation(line: 257, column: 1, scope: !935, inlinedAt: !942)
!954 = !DILocation(line: 612, column: 23, scope: !793)
!955 = !DILocation(line: 614, column: 11, scope: !793)
!956 = !DILocation(line: 618, column: 11, scope: !793)
!957 = !DILocation(line: 621, column: 34, scope: !793)
!958 = !DILocation(line: 241, column: 23, scope: !935, inlinedAt: !959)
!959 = distinct !DILocation(line: 621, column: 24, scope: !793)
!960 = !DILocation(line: 241, column: 40, scope: !935, inlinedAt: !959)
!961 = !DILocation(line: 243, column: 3, scope: !935, inlinedAt: !959)
!962 = !DILocation(line: 243, column: 21, scope: !935, inlinedAt: !959)
!963 = !DILocation(line: 246, column: 11, scope: !935, inlinedAt: !959)
!964 = !DILocation(line: 246, column: 3, scope: !935, inlinedAt: !959)
!965 = !DILocation(line: 253, column: 7, scope: !949, inlinedAt: !959)
!966 = !DILocation(line: 253, column: 7, scope: !951, inlinedAt: !959)
!967 = !DILocation(line: 256, column: 10, scope: !935, inlinedAt: !959)
!968 = !DILocation(line: 257, column: 1, scope: !935, inlinedAt: !959)
!969 = !DILocation(line: 621, column: 22, scope: !793)
!970 = !DILocation(line: 623, column: 11, scope: !793)
!971 = !DILocation(line: 628, column: 11, scope: !793)
!972 = !DILocation(line: 631, column: 35, scope: !793)
!973 = !DILocation(line: 241, column: 23, scope: !935, inlinedAt: !974)
!974 = distinct !DILocation(line: 631, column: 25, scope: !793)
!975 = !DILocation(line: 241, column: 40, scope: !935, inlinedAt: !974)
!976 = !DILocation(line: 243, column: 3, scope: !935, inlinedAt: !974)
!977 = !DILocation(line: 243, column: 21, scope: !935, inlinedAt: !974)
!978 = !DILocation(line: 246, column: 11, scope: !935, inlinedAt: !974)
!979 = !DILocation(line: 246, column: 3, scope: !935, inlinedAt: !974)
!980 = !DILocation(line: 253, column: 7, scope: !949, inlinedAt: !974)
!981 = !DILocation(line: 253, column: 7, scope: !951, inlinedAt: !974)
!982 = !DILocation(line: 256, column: 10, scope: !935, inlinedAt: !974)
!983 = !DILocation(line: 257, column: 1, scope: !935, inlinedAt: !974)
!984 = !DILocation(line: 631, column: 23, scope: !793)
!985 = !DILocation(line: 633, column: 11, scope: !793)
!986 = !DILocation(line: 639, column: 9, scope: !793)
!987 = !DILocation(line: 641, column: 9, scope: !793)
!988 = !DILocation(line: 641, column: 9, scope: !989)
!989 = !DILexicalBlockFile(scope: !793, file: !3, discriminator: 1)
!990 = !DILocation(line: 644, column: 11, scope: !793)
!991 = !DILocation(line: 652, column: 7, scope: !992)
!992 = distinct !DILexicalBlock(scope: !774, file: !3, line: 652, column: 7)
!993 = !DILocation(line: 652, column: 16, scope: !992)
!994 = !DILocation(line: 652, column: 30, scope: !995)
!995 = !DILexicalBlockFile(scope: !992, file: !3, discriminator: 1)
!996 = !DILocation(line: 652, column: 27, scope: !992)
!997 = !DILocation(line: 654, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !992, file: !3, line: 653, column: 5)
!999 = !DILocation(line: 654, column: 7, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !998, file: !3, discriminator: 1)
!1001 = !DILocation(line: 655, column: 7, scope: !998)
!1002 = !DILocation(line: 658, column: 16, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !774, file: !3, line: 658, column: 7)
!1004 = !DILocation(line: 658, column: 40, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1003, file: !3, discriminator: 1)
!1006 = !DILocation(line: 658, column: 27, scope: !1003)
!1007 = !DILocation(line: 661, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 659, column: 5)
!1009 = !DILocation(line: 660, column: 7, scope: !1008)
!1010 = !DILocation(line: 662, column: 7, scope: !1008)
!1011 = !DILocation(line: 665, column: 38, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !774, file: !3, line: 665, column: 7)
!1013 = !DILocation(line: 665, column: 7, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !774, file: !3, discriminator: 1)
!1015 = !DILocation(line: 668, column: 12, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 666, column: 5)
!1017 = !DILocation(line: 667, column: 7, scope: !1016)
!1018 = !DILocation(line: 669, column: 7, scope: !1016)
!1019 = !DILocation(line: 672, column: 15, scope: !774)
!1020 = !DILocation(line: 672, column: 24, scope: !774)
!1021 = !DILocalVariable(name: "infile", arg: 1, scope: !1022, file: !3, line: 332, type: !78)
!1022 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 332, type: !1023, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !78, !78, !80}
!1025 = !{!1021, !1026, !1027, !1028, !1035, !1036, !1038, !1039, !1042, !1043, !1045, !1046, !1049, !1050, !1052, !1053, !1056, !1057, !1058, !1060, !1061, !1062, !1066, !1068, !1069, !1074, !1075, !1077, !1078, !1079}
!1026 = !DILocalVariable(name: "outfile", arg: 2, scope: !1022, file: !3, line: 332, type: !78)
!1027 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1022, file: !3, line: 332, type: !80)
!1028 = !DILocalVariable(name: "lb1", scope: !1022, file: !3, line: 334, type: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1030, line: 26, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1029, file: !1030, line: 28, baseType: !75, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1029, file: !1030, line: 29, baseType: !75, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1029, file: !1030, line: 30, baseType: !81, size: 64, offset: 128)
!1035 = !DILocalVariable(name: "lb2", scope: !1022, file: !3, line: 334, type: !1029)
!1036 = !DILocalVariable(name: "thisline", scope: !1022, file: !3, line: 335, type: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1038 = !DILocalVariable(name: "prevline", scope: !1022, file: !3, line: 335, type: !1037)
!1039 = !DILocalVariable(name: "__s1_len", scope: !1040, file: !3, line: 337, type: !75)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 337, column: 10)
!1041 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 337, column: 7)
!1042 = !DILocalVariable(name: "__s2_len", scope: !1040, file: !3, line: 337, type: !75)
!1043 = !DILocalVariable(name: "__s2", scope: !1044, file: !3, line: 337, type: !84)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 337, column: 10)
!1045 = !DILocalVariable(name: "__result", scope: !1044, file: !3, line: 337, type: !87)
!1046 = !DILocalVariable(name: "__s1_len", scope: !1047, file: !3, line: 339, type: !75)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 339, column: 10)
!1048 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 339, column: 7)
!1049 = !DILocalVariable(name: "__s2_len", scope: !1047, file: !3, line: 339, type: !75)
!1050 = !DILocalVariable(name: "__s2", scope: !1051, file: !3, line: 339, type: !84)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 339, column: 10)
!1052 = !DILocalVariable(name: "__result", scope: !1051, file: !3, line: 339, type: !87)
!1053 = !DILocalVariable(name: "prevfield", scope: !1054, file: !3, line: 367, type: !81)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 366, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 365, column: 7)
!1056 = !DILocalVariable(name: "prevlen", scope: !1054, file: !3, line: 368, type: !75)
!1057 = !DILocalVariable(name: "first_group_printed", scope: !1054, file: !3, line: 369, type: !100)
!1058 = !DILocalVariable(name: "thisfield", scope: !1059, file: !3, line: 373, type: !81)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 372, column: 9)
!1060 = !DILocalVariable(name: "thislen", scope: !1059, file: !3, line: 374, type: !75)
!1061 = !DILocalVariable(name: "new_group", scope: !1059, file: !3, line: 375, type: !100)
!1062 = !DILocalVariable(name: "_tmp", scope: !1063, file: !3, line: 397, type: !1037)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 397, column: 15)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 393, column: 13)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 392, column: 15)
!1066 = !DILocalVariable(name: "prevfield", scope: !1067, file: !3, line: 408, type: !81)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 407, column: 5)
!1068 = !DILocalVariable(name: "prevlen", scope: !1067, file: !3, line: 409, type: !75)
!1069 = !DILocalVariable(name: "match_count", scope: !1067, file: !3, line: 410, type: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1071, line: 136, baseType: !1072)
!1071 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1073, line: 62, baseType: !77)
!1073 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1074 = !DILocalVariable(name: "first_delimiter", scope: !1067, file: !3, line: 411, type: !100)
!1075 = !DILocalVariable(name: "match", scope: !1076, file: !3, line: 420, type: !100)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 419, column: 9)
!1077 = !DILocalVariable(name: "thisfield", scope: !1076, file: !3, line: 421, type: !81)
!1078 = !DILocalVariable(name: "thislen", scope: !1076, file: !3, line: 422, type: !75)
!1079 = !DILocalVariable(name: "_tmp", scope: !1080, file: !3, line: 460, type: !1037)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 460, column: 15)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 458, column: 13)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 457, column: 15)
!1083 = !DILocation(line: 332, column: 25, scope: !1022, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 672, column: 3, scope: !774)
!1085 = !DILocation(line: 332, column: 45, scope: !1022, inlinedAt: !1084)
!1086 = !DILocation(line: 332, column: 59, scope: !1022, inlinedAt: !1084)
!1087 = !DILocation(line: 334, column: 3, scope: !1022, inlinedAt: !1084)
!1088 = !DILocation(line: 337, column: 10, scope: !1040, inlinedAt: !1084)
!1089 = !DILocation(line: 337, column: 10, scope: !1044, inlinedAt: !1084)
!1090 = !DILocation(line: 337, column: 10, scope: !1091, inlinedAt: !1084)
!1091 = !DILexicalBlockFile(scope: !1044, file: !3, discriminator: 2)
!1092 = !DILocation(line: 337, column: 10, scope: !1093, inlinedAt: !1084)
!1093 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 3)
!1094 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 337, column: 10)
!1095 = !DILocation(line: 337, column: 10, scope: !1096, inlinedAt: !1084)
!1096 = !DILexicalBlockFile(scope: !1094, file: !3, discriminator: 2)
!1097 = !DILocation(line: 337, column: 10, scope: !1098, inlinedAt: !1084)
!1098 = !DILexicalBlockFile(scope: !1099, file: !3, discriminator: 4)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 337, column: 10)
!1100 = !DILocation(line: 337, column: 10, scope: !1101, inlinedAt: !1084)
!1101 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 13)
!1102 = !DILocation(line: 337, column: 30, scope: !1101, inlinedAt: !1084)
!1103 = !DILocation(line: 337, column: 55, scope: !1104, inlinedAt: !1084)
!1104 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 14)
!1105 = !DILocation(line: 337, column: 33, scope: !1104, inlinedAt: !1084)
!1106 = !DILocation(line: 337, column: 7, scope: !1107, inlinedAt: !1084)
!1107 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 14)
!1108 = !DILocation(line: 338, column: 5, scope: !1041, inlinedAt: !1084)
!1109 = !DILocation(line: 338, column: 5, scope: !1110, inlinedAt: !1084)
!1110 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 1)
!1111 = !DILocation(line: 338, column: 5, scope: !1112, inlinedAt: !1084)
!1112 = !DILexicalBlockFile(scope: !1041, file: !3, discriminator: 2)
!1113 = !DILocation(line: 339, column: 10, scope: !1047, inlinedAt: !1084)
!1114 = !DILocation(line: 339, column: 10, scope: !1051, inlinedAt: !1084)
!1115 = !DILocation(line: 339, column: 10, scope: !1116, inlinedAt: !1084)
!1116 = !DILexicalBlockFile(scope: !1051, file: !3, discriminator: 2)
!1117 = !DILocation(line: 339, column: 10, scope: !1118, inlinedAt: !1084)
!1118 = !DILexicalBlockFile(scope: !1119, file: !3, discriminator: 3)
!1119 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 339, column: 10)
!1120 = !DILocation(line: 339, column: 10, scope: !1121, inlinedAt: !1084)
!1121 = !DILexicalBlockFile(scope: !1119, file: !3, discriminator: 2)
!1122 = !DILocation(line: 339, column: 10, scope: !1123, inlinedAt: !1084)
!1123 = !DILexicalBlockFile(scope: !1124, file: !3, discriminator: 4)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 339, column: 10)
!1125 = !DILocation(line: 339, column: 10, scope: !1126, inlinedAt: !1084)
!1126 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 13)
!1127 = !DILocation(line: 339, column: 31, scope: !1126, inlinedAt: !1084)
!1128 = !DILocation(line: 339, column: 57, scope: !1129, inlinedAt: !1084)
!1129 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 14)
!1130 = !DILocation(line: 339, column: 34, scope: !1129, inlinedAt: !1084)
!1131 = !DILocation(line: 339, column: 7, scope: !1107, inlinedAt: !1084)
!1132 = !DILocation(line: 340, column: 5, scope: !1048, inlinedAt: !1084)
!1133 = !DILocation(line: 340, column: 5, scope: !1134, inlinedAt: !1084)
!1134 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 1)
!1135 = !DILocation(line: 340, column: 5, scope: !1136, inlinedAt: !1084)
!1136 = !DILexicalBlockFile(scope: !1048, file: !3, discriminator: 2)
!1137 = !DILocation(line: 342, column: 12, scope: !1022, inlinedAt: !1084)
!1138 = !DILocation(line: 342, column: 3, scope: !1022, inlinedAt: !1084)
!1139 = !DILocation(line: 335, column: 22, scope: !1022, inlinedAt: !1084)
!1140 = !DILocation(line: 335, column: 33, scope: !1022, inlinedAt: !1084)
!1141 = !DILocation(line: 334, column: 21, scope: !1022, inlinedAt: !1084)
!1142 = !DILocation(line: 347, column: 3, scope: !1022, inlinedAt: !1084)
!1143 = !DILocation(line: 334, column: 26, scope: !1022, inlinedAt: !1084)
!1144 = !DILocation(line: 348, column: 3, scope: !1022, inlinedAt: !1084)
!1145 = !DILocation(line: 365, column: 21, scope: !1055, inlinedAt: !1084)
!1146 = !DILocation(line: 365, column: 46, scope: !1147, inlinedAt: !1084)
!1147 = !DILexicalBlockFile(scope: !1055, file: !3, discriminator: 1)
!1148 = !DILocation(line: 367, column: 13, scope: !1054, inlinedAt: !1084)
!1149 = !DILocation(line: 368, column: 14, scope: !1054, inlinedAt: !1084)
!1150 = !DILocation(line: 369, column: 12, scope: !1054, inlinedAt: !1084)
!1151 = !DILocation(line: 371, column: 15, scope: !1152, inlinedAt: !1084)
!1152 = !DILexicalBlockFile(scope: !1054, file: !3, discriminator: 1)
!1153 = !DILocalVariable(name: "__stream", arg: 1, scope: !1154, file: !1155, line: 125, type: !1158)
!1154 = distinct !DISubprogram(name: "feof_unlocked", scope: !1155, file: !1155, line: 125, type: !1156, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1212)
!1155 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!87, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !1161)
!1160 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !1163)
!1162 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1184, !1185, !1186, !1187, !1190, !1191, !1193, !1197, !1200, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1161, file: !1162, line: 242, baseType: !87, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1161, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1161, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1161, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1161, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1161, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1161, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1161, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1161, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1161, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1161, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1161, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1161, file: !1162, line: 260, baseType: !1177, size: 64, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !1179)
!1179 = !{!1180, !1181, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1178, file: !1162, line: 157, baseType: !1177, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1178, file: !1162, line: 158, baseType: !1182, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1178, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1161, file: !1162, line: 262, baseType: !1182, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1161, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1161, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1161, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1073, line: 140, baseType: !1189)
!1189 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1161, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1161, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!1192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1161, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 1)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1161, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1162, line: 150, baseType: null)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1161, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1073, line: 141, baseType: !1189)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1161, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1161, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1161, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1161, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1161, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1161, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1161, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 20)
!1212 = !{!1153}
!1213 = !DILocation(line: 125, column: 1, scope: !1154, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 371, column: 15, scope: !1152, inlinedAt: !1084)
!1215 = !DILocation(line: 127, column: 10, scope: !1154, inlinedAt: !1214)
!1216 = !{!1217, !841, i64 0}
!1217 = !{!"_IO_FILE", !841, i64 0, !711, i64 8, !711, i64 16, !711, i64 24, !711, i64 32, !711, i64 40, !711, i64 48, !711, i64 56, !711, i64 64, !711, i64 72, !711, i64 80, !711, i64 88, !711, i64 96, !711, i64 104, !841, i64 112, !841, i64 116, !822, i64 120, !1218, i64 128, !712, i64 130, !712, i64 131, !711, i64 136, !822, i64 144, !711, i64 152, !711, i64 160, !711, i64 168, !711, i64 176, !822, i64 184, !841, i64 192, !712, i64 196}
!1218 = !{!"short", !712, i64 0}
!1219 = !DILocation(line: 371, column: 14, scope: !1152, inlinedAt: !1084)
!1220 = !DILocation(line: 371, column: 7, scope: !1152, inlinedAt: !1084)
!1221 = !DILocation(line: 377, column: 15, scope: !1222, inlinedAt: !1084)
!1222 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 377, column: 15)
!1223 = !DILocation(line: 377, column: 65, scope: !1222, inlinedAt: !1084)
!1224 = !DILocation(line: 377, column: 15, scope: !1059, inlinedAt: !1084)
!1225 = !DILocation(line: 380, column: 23, scope: !1059, inlinedAt: !1084)
!1226 = !DILocation(line: 373, column: 17, scope: !1059, inlinedAt: !1084)
!1227 = !DILocation(line: 381, column: 31, scope: !1059, inlinedAt: !1084)
!1228 = !{!1229, !822, i64 8}
!1229 = !{!"linebuffer", !822, i64 0, !822, i64 8, !711, i64 16}
!1230 = !DILocation(line: 381, column: 38, scope: !1059, inlinedAt: !1084)
!1231 = !DILocation(line: 381, column: 67, scope: !1059, inlinedAt: !1084)
!1232 = !{!1229, !711, i64 16}
!1233 = !DILocation(line: 381, column: 55, scope: !1059, inlinedAt: !1084)
!1234 = !DILocation(line: 381, column: 42, scope: !1059, inlinedAt: !1084)
!1235 = !DILocation(line: 374, column: 18, scope: !1059, inlinedAt: !1084)
!1236 = !DILocation(line: 383, column: 34, scope: !1059, inlinedAt: !1084)
!1237 = !DILocation(line: 383, column: 41, scope: !1059, inlinedAt: !1084)
!1238 = !DILocation(line: 384, column: 24, scope: !1059, inlinedAt: !1084)
!1239 = !DILocalVariable(name: "old", arg: 1, scope: !1240, file: !3, line: 289, type: !81)
!1240 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 289, type: !1241, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!100, !81, !81, !75, !75}
!1243 = !{!1239, !1244, !1245, !1246}
!1244 = !DILocalVariable(name: "new", arg: 2, scope: !1240, file: !3, line: 289, type: !81)
!1245 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1240, file: !3, line: 289, type: !75)
!1246 = !DILocalVariable(name: "newlen", arg: 4, scope: !1240, file: !3, line: 289, type: !75)
!1247 = !DILocation(line: 289, column: 18, scope: !1240, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 384, column: 27, scope: !1249, inlinedAt: !1084)
!1249 = !DILexicalBlockFile(scope: !1059, file: !3, discriminator: 1)
!1250 = !DILocation(line: 289, column: 29, scope: !1240, inlinedAt: !1248)
!1251 = !DILocation(line: 289, column: 41, scope: !1240, inlinedAt: !1248)
!1252 = !DILocation(line: 289, column: 56, scope: !1240, inlinedAt: !1248)
!1253 = !DILocation(line: 291, column: 7, scope: !1254, inlinedAt: !1248)
!1254 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 291, column: 7)
!1255 = !DILocation(line: 291, column: 19, scope: !1254, inlinedAt: !1248)
!1256 = !DILocation(line: 291, column: 7, scope: !1240, inlinedAt: !1248)
!1257 = !DILocation(line: 293, column: 19, scope: !1258, inlinedAt: !1248)
!1258 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 293, column: 7)
!1259 = !DILocation(line: 293, column: 7, scope: !1240, inlinedAt: !1248)
!1260 = !DILocation(line: 296, column: 7, scope: !1240, inlinedAt: !1248)
!1261 = !DILocation(line: 299, column: 21, scope: !1262, inlinedAt: !1248)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 297, column: 5)
!1263 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 296, column: 7)
!1264 = !DILocation(line: 299, column: 31, scope: !1262, inlinedAt: !1248)
!1265 = !DILocation(line: 299, column: 34, scope: !1266, inlinedAt: !1248)
!1266 = !DILexicalBlockFile(scope: !1262, file: !3, discriminator: 1)
!1267 = !DILocation(line: 299, column: 31, scope: !1266, inlinedAt: !1248)
!1268 = !DILocation(line: 301, column: 12, scope: !1269, inlinedAt: !1248)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 301, column: 12)
!1270 = !{i8 0, i8 2}
!1271 = !DILocation(line: 301, column: 12, scope: !1263, inlinedAt: !1248)
!1272 = !DILocation(line: 302, column: 12, scope: !1269, inlinedAt: !1248)
!1273 = !DILocation(line: 302, column: 48, scope: !1269, inlinedAt: !1248)
!1274 = !DILocation(line: 302, column: 5, scope: !1269, inlinedAt: !1248)
!1275 = !DILocation(line: 304, column: 19, scope: !1269, inlinedAt: !1248)
!1276 = !DILocation(line: 304, column: 29, scope: !1269, inlinedAt: !1248)
!1277 = !DILocation(line: 304, column: 32, scope: !1278, inlinedAt: !1248)
!1278 = !DILexicalBlockFile(scope: !1269, file: !3, discriminator: 1)
!1279 = !DILocation(line: 304, column: 29, scope: !1278, inlinedAt: !1248)
!1280 = !DILocation(line: 386, column: 28, scope: !1281, inlinedAt: !1084)
!1281 = !DILexicalBlockFile(scope: !1282, file: !3, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 386, column: 15)
!1283 = !DILocation(line: 386, column: 37, scope: !1281, inlinedAt: !1084)
!1284 = !DILocation(line: 386, column: 25, scope: !1282, inlinedAt: !1084)
!1285 = !DILocation(line: 387, column: 42, scope: !1281, inlinedAt: !1084)
!1286 = !DILocation(line: 389, column: 47, scope: !1282, inlinedAt: !1084)
!1287 = !DILocation(line: 388, column: 43, scope: !1281, inlinedAt: !1084)
!1288 = !DILocation(line: 107, column: 10, scope: !1289, inlinedAt: !1294)
!1289 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1155, file: !1155, line: 105, type: !1290, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!87, !87}
!1292 = !{!1293}
!1293 = !DILocalVariable(name: "__c", arg: 1, scope: !1289, file: !1155, line: 105, type: !87)
!1294 = distinct !DILocation(line: 390, column: 13, scope: !1282, inlinedAt: !1084)
!1295 = !{!1217, !711, i64 40}
!1296 = !{!1217, !711, i64 48}
!1297 = !{!"branch_weights", i32 2000, i32 1}
!1298 = !DILocation(line: 107, column: 10, scope: !1299, inlinedAt: !1294)
!1299 = !DILexicalBlockFile(scope: !1289, file: !1155, discriminator: 1)
!1300 = !DILocation(line: 107, column: 10, scope: !1301, inlinedAt: !1294)
!1301 = !DILexicalBlockFile(scope: !1289, file: !1155, discriminator: 2)
!1302 = !DILocation(line: 392, column: 28, scope: !1303, inlinedAt: !1084)
!1303 = !DILexicalBlockFile(scope: !1065, file: !3, discriminator: 1)
!1304 = !DILocation(line: 392, column: 37, scope: !1303, inlinedAt: !1084)
!1305 = !DILocation(line: 392, column: 25, scope: !1065, inlinedAt: !1084)
!1306 = !DILocation(line: 394, column: 15, scope: !1064, inlinedAt: !1084)
!1307 = !DILocation(line: 401, column: 13, scope: !1064, inlinedAt: !1084)
!1308 = !DILocation(line: 403, column: 12, scope: !1309, inlinedAt: !1084)
!1309 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 403, column: 11)
!1310 = !DILocation(line: 403, column: 32, scope: !1309, inlinedAt: !1084)
!1311 = !DILocation(line: 403, column: 61, scope: !1312, inlinedAt: !1084)
!1312 = !DILexicalBlockFile(scope: !1309, file: !3, discriminator: 2)
!1313 = !DILocation(line: 403, column: 11, scope: !1314, inlinedAt: !1084)
!1314 = !DILexicalBlockFile(scope: !1054, file: !3, discriminator: 2)
!1315 = !DILocation(line: 107, column: 10, scope: !1289, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 404, column: 9, scope: !1309, inlinedAt: !1084)
!1317 = !DILocation(line: 107, column: 10, scope: !1299, inlinedAt: !1316)
!1318 = !DILocation(line: 107, column: 10, scope: !1301, inlinedAt: !1316)
!1319 = !DILocation(line: 410, column: 17, scope: !1067, inlinedAt: !1084)
!1320 = !DILocation(line: 411, column: 12, scope: !1067, inlinedAt: !1084)
!1321 = !DILocation(line: 413, column: 43, scope: !1322, inlinedAt: !1084)
!1322 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 413, column: 11)
!1323 = !DILocation(line: 413, column: 11, scope: !1322, inlinedAt: !1084)
!1324 = !DILocation(line: 413, column: 61, scope: !1322, inlinedAt: !1084)
!1325 = !DILocation(line: 413, column: 11, scope: !1067, inlinedAt: !1084)
!1326 = !DILocation(line: 415, column: 19, scope: !1067, inlinedAt: !1084)
!1327 = !DILocation(line: 408, column: 13, scope: !1067, inlinedAt: !1084)
!1328 = !DILocation(line: 416, column: 27, scope: !1067, inlinedAt: !1084)
!1329 = !DILocation(line: 416, column: 63, scope: !1067, inlinedAt: !1084)
!1330 = !DILocation(line: 416, column: 51, scope: !1067, inlinedAt: !1084)
!1331 = !DILocation(line: 416, column: 38, scope: !1067, inlinedAt: !1084)
!1332 = !DILocation(line: 416, column: 34, scope: !1067, inlinedAt: !1084)
!1333 = !DILocation(line: 409, column: 14, scope: !1067, inlinedAt: !1084)
!1334 = !DILocation(line: 418, column: 7, scope: !1067, inlinedAt: !1084)
!1335 = !DILocation(line: 418, column: 15, scope: !1336, inlinedAt: !1084)
!1336 = !DILexicalBlockFile(scope: !1067, file: !3, discriminator: 1)
!1337 = !DILocation(line: 125, column: 1, scope: !1154, inlinedAt: !1338)
!1338 = distinct !DILocation(line: 418, column: 15, scope: !1336, inlinedAt: !1084)
!1339 = !DILocation(line: 127, column: 10, scope: !1154, inlinedAt: !1338)
!1340 = !DILocation(line: 418, column: 14, scope: !1336, inlinedAt: !1084)
!1341 = !DILocation(line: 418, column: 7, scope: !1336, inlinedAt: !1084)
!1342 = !DILocation(line: 423, column: 15, scope: !1343, inlinedAt: !1084)
!1343 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 423, column: 15)
!1344 = !DILocation(line: 423, column: 65, scope: !1343, inlinedAt: !1084)
!1345 = !DILocation(line: 423, column: 15, scope: !1076, inlinedAt: !1084)
!1346 = !DILocation(line: 429, column: 23, scope: !1076, inlinedAt: !1084)
!1347 = !DILocation(line: 421, column: 17, scope: !1076, inlinedAt: !1084)
!1348 = !DILocation(line: 430, column: 31, scope: !1076, inlinedAt: !1084)
!1349 = !DILocation(line: 430, column: 38, scope: !1076, inlinedAt: !1084)
!1350 = !DILocation(line: 430, column: 67, scope: !1076, inlinedAt: !1084)
!1351 = !DILocation(line: 430, column: 55, scope: !1076, inlinedAt: !1084)
!1352 = !DILocation(line: 430, column: 42, scope: !1076, inlinedAt: !1084)
!1353 = !DILocation(line: 422, column: 18, scope: !1076, inlinedAt: !1084)
!1354 = !DILocation(line: 289, column: 18, scope: !1240, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 431, column: 20, scope: !1076, inlinedAt: !1084)
!1356 = !DILocation(line: 289, column: 29, scope: !1240, inlinedAt: !1355)
!1357 = !DILocation(line: 289, column: 41, scope: !1240, inlinedAt: !1355)
!1358 = !DILocation(line: 289, column: 56, scope: !1240, inlinedAt: !1355)
!1359 = !DILocation(line: 291, column: 7, scope: !1254, inlinedAt: !1355)
!1360 = !DILocation(line: 291, column: 19, scope: !1254, inlinedAt: !1355)
!1361 = !DILocation(line: 291, column: 7, scope: !1240, inlinedAt: !1355)
!1362 = !DILocation(line: 293, column: 19, scope: !1258, inlinedAt: !1355)
!1363 = !DILocation(line: 293, column: 7, scope: !1240, inlinedAt: !1355)
!1364 = !DILocation(line: 296, column: 7, scope: !1240, inlinedAt: !1355)
!1365 = !DILocation(line: 299, column: 21, scope: !1262, inlinedAt: !1355)
!1366 = !DILocation(line: 299, column: 31, scope: !1262, inlinedAt: !1355)
!1367 = !DILocation(line: 299, column: 34, scope: !1266, inlinedAt: !1355)
!1368 = !DILocation(line: 299, column: 31, scope: !1266, inlinedAt: !1355)
!1369 = !DILocation(line: 301, column: 12, scope: !1269, inlinedAt: !1355)
!1370 = !DILocation(line: 301, column: 12, scope: !1263, inlinedAt: !1355)
!1371 = !DILocation(line: 302, column: 12, scope: !1269, inlinedAt: !1355)
!1372 = !DILocation(line: 302, column: 48, scope: !1269, inlinedAt: !1355)
!1373 = !DILocation(line: 302, column: 5, scope: !1269, inlinedAt: !1355)
!1374 = !DILocation(line: 304, column: 19, scope: !1269, inlinedAt: !1355)
!1375 = !DILocation(line: 304, column: 29, scope: !1269, inlinedAt: !1355)
!1376 = !DILocation(line: 304, column: 32, scope: !1278, inlinedAt: !1355)
!1377 = !DILocation(line: 304, column: 29, scope: !1278, inlinedAt: !1355)
!1378 = !DILocation(line: 431, column: 19, scope: !1076, inlinedAt: !1084)
!1379 = !DILocation(line: 432, column: 26, scope: !1076, inlinedAt: !1084)
!1380 = !DILocation(line: 432, column: 23, scope: !1076, inlinedAt: !1084)
!1381 = !DILocation(line: 434, column: 27, scope: !1382, inlinedAt: !1084)
!1382 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 434, column: 15)
!1383 = !DILocation(line: 434, column: 15, scope: !1076, inlinedAt: !1084)
!1384 = !DILocation(line: 441, column: 15, scope: !1385, inlinedAt: !1084)
!1385 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 441, column: 15)
!1386 = !DILocation(line: 441, column: 30, scope: !1385, inlinedAt: !1084)
!1387 = !DILocation(line: 441, column: 15, scope: !1076, inlinedAt: !1084)
!1388 = !DILocation(line: 443, column: 19, scope: !1389, inlinedAt: !1084)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 442, column: 13)
!1390 = !DILocation(line: 445, column: 23, scope: !1391, inlinedAt: !1084)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 445, column: 23)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 444, column: 17)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 443, column: 19)
!1394 = !DILocation(line: 445, column: 23, scope: !1392, inlinedAt: !1084)
!1395 = !DILocation(line: 457, column: 22, scope: !1082, inlinedAt: !1084)
!1396 = !DILocation(line: 448, column: 36, scope: !1397, inlinedAt: !1084)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 448, column: 24)
!1398 = !DILocation(line: 448, column: 24, scope: !1393, inlinedAt: !1084)
!1399 = !DILocation(line: 451, column: 23, scope: !1400, inlinedAt: !1084)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 450, column: 23)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 449, column: 17)
!1402 = !DILocation(line: 450, column: 23, scope: !1403, inlinedAt: !1084)
!1403 = !DILexicalBlockFile(scope: !1401, file: !3, discriminator: 1)
!1404 = !DILocation(line: 107, column: 10, scope: !1289, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 453, column: 21, scope: !1400, inlinedAt: !1084)
!1406 = !DILocation(line: 107, column: 10, scope: !1299, inlinedAt: !1405)
!1407 = !DILocation(line: 107, column: 10, scope: !1301, inlinedAt: !1405)
!1408 = !DILocation(line: 457, column: 15, scope: !1409, inlinedAt: !1084)
!1409 = !DILexicalBlockFile(scope: !1076, file: !3, discriminator: 1)
!1410 = !DILocation(line: 314, column: 37, scope: !1411, inlinedAt: !1420)
!1411 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 314, type: !1412, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1416)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1414, !100, !1070}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!1416 = !{!1417, !1418, !1419}
!1417 = !DILocalVariable(name: "line", arg: 1, scope: !1411, file: !3, line: 314, type: !1414)
!1418 = !DILocalVariable(name: "match", arg: 2, scope: !1411, file: !3, line: 315, type: !100)
!1419 = !DILocalVariable(name: "linecount", arg: 3, scope: !1411, file: !3, line: 315, type: !1070)
!1420 = distinct !DILocation(line: 459, column: 15, scope: !1081, inlinedAt: !1084)
!1421 = !DIExpression(DW_OP_LLVM_fragment, 0, 1)
!1422 = !DILocation(line: 315, column: 17, scope: !1411, inlinedAt: !1420)
!1423 = !DILocation(line: 315, column: 34, scope: !1411, inlinedAt: !1420)
!1424 = !DILocation(line: 317, column: 20, scope: !1425, inlinedAt: !1420)
!1425 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 317, column: 7)
!1426 = !DILocation(line: 317, column: 7, scope: !1411, inlinedAt: !1420)
!1427 = !DILocation(line: 317, column: 10, scope: !1428, inlinedAt: !1420)
!1428 = !DILexicalBlockFile(scope: !1425, file: !3, discriminator: 1)
!1429 = !DILocation(line: 317, column: 7, scope: !1430, inlinedAt: !1420)
!1430 = !DILexicalBlockFile(scope: !1411, file: !3, discriminator: 2)
!1431 = !DILocation(line: 318, column: 12, scope: !1428, inlinedAt: !1420)
!1432 = !DILocation(line: 317, column: 7, scope: !1433, inlinedAt: !1420)
!1433 = !DILexicalBlockFile(scope: !1411, file: !3, discriminator: 3)
!1434 = !DILocation(line: 322, column: 7, scope: !1411, inlinedAt: !1420)
!1435 = !DILocation(line: 323, column: 5, scope: !1436, inlinedAt: !1420)
!1436 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 322, column: 7)
!1437 = !DILocation(line: 325, column: 3, scope: !1411, inlinedAt: !1420)
!1438 = !DILocation(line: 326, column: 1, scope: !1411, inlinedAt: !1420)
!1439 = !DILocation(line: 463, column: 19, scope: !1081, inlinedAt: !1084)
!1440 = !DILocation(line: 425, column: 19, scope: !1441, inlinedAt: !1084)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 425, column: 19)
!1442 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 424, column: 13)
!1443 = !DILocalVariable(name: "__stream", arg: 1, scope: !1444, file: !1155, line: 132, type: !1158)
!1444 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1155, file: !1155, line: 132, type: !1156, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1445)
!1445 = !{!1443}
!1446 = !DILocation(line: 132, column: 1, scope: !1444, inlinedAt: !1447)
!1447 = distinct !DILocation(line: 425, column: 19, scope: !1441, inlinedAt: !1084)
!1448 = !DILocation(line: 134, column: 10, scope: !1444, inlinedAt: !1447)
!1449 = !DILocation(line: 314, column: 37, scope: !1411, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 468, column: 7, scope: !1067, inlinedAt: !1084)
!1451 = !DILocation(line: 315, column: 17, scope: !1411, inlinedAt: !1450)
!1452 = !DILocation(line: 315, column: 34, scope: !1411, inlinedAt: !1450)
!1453 = !DILocation(line: 317, column: 20, scope: !1425, inlinedAt: !1450)
!1454 = !DILocation(line: 317, column: 7, scope: !1411, inlinedAt: !1450)
!1455 = !DILocation(line: 317, column: 10, scope: !1428, inlinedAt: !1450)
!1456 = !DILocation(line: 318, column: 12, scope: !1428, inlinedAt: !1450)
!1457 = !DILocation(line: 322, column: 7, scope: !1411, inlinedAt: !1450)
!1458 = !DILocation(line: 323, column: 5, scope: !1436, inlinedAt: !1450)
!1459 = !DILocation(line: 325, column: 3, scope: !1411, inlinedAt: !1450)
!1460 = !DILocation(line: 326, column: 1, scope: !1411, inlinedAt: !1450)
!1461 = !DILocation(line: 472, column: 7, scope: !1462, inlinedAt: !1084)
!1462 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 472, column: 7)
!1463 = !DILocation(line: 132, column: 1, scope: !1444, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 472, column: 7, scope: !1462, inlinedAt: !1084)
!1465 = !DILocation(line: 134, column: 10, scope: !1444, inlinedAt: !1464)
!1466 = !DILocation(line: 472, column: 22, scope: !1462, inlinedAt: !1084)
!1467 = !DILocation(line: 472, column: 25, scope: !1468, inlinedAt: !1084)
!1468 = !DILexicalBlockFile(scope: !1462, file: !3, discriminator: 1)
!1469 = !DILocation(line: 472, column: 40, scope: !1468, inlinedAt: !1084)
!1470 = !DILocation(line: 472, column: 7, scope: !1471, inlinedAt: !1084)
!1471 = !DILexicalBlockFile(scope: !1022, file: !3, discriminator: 1)
!1472 = !DILocation(line: 473, column: 5, scope: !1462, inlinedAt: !1084)
!1473 = !DILocation(line: 473, column: 5, scope: !1468, inlinedAt: !1084)
!1474 = !DILocation(line: 473, column: 5, scope: !1475, inlinedAt: !1084)
!1475 = !DILexicalBlockFile(scope: !1462, file: !3, discriminator: 2)
!1476 = !DILocation(line: 477, column: 13, scope: !1022, inlinedAt: !1084)
!1477 = !DILocation(line: 477, column: 3, scope: !1022, inlinedAt: !1084)
!1478 = !DILocation(line: 478, column: 13, scope: !1022, inlinedAt: !1084)
!1479 = !DILocation(line: 478, column: 3, scope: !1022, inlinedAt: !1084)
!1480 = !DILocation(line: 479, column: 1, scope: !1022, inlinedAt: !1084)
!1481 = !DILocation(line: 675, column: 1, scope: !774)
!1482 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 263, type: !1483, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!81, !1414}
!1485 = !{!1486, !1487, !1488, !1489, !1490}
!1486 = !DILocalVariable(name: "line", arg: 1, scope: !1482, file: !3, line: 263, type: !1414)
!1487 = !DILocalVariable(name: "count", scope: !1482, file: !3, line: 265, type: !75)
!1488 = !DILocalVariable(name: "lp", scope: !1482, file: !3, line: 266, type: !78)
!1489 = !DILocalVariable(name: "size", scope: !1482, file: !3, line: 267, type: !75)
!1490 = !DILocalVariable(name: "i", scope: !1482, file: !3, line: 268, type: !75)
!1491 = !DILocation(line: 263, column: 38, scope: !1482)
!1492 = !DILocation(line: 266, column: 26, scope: !1482)
!1493 = !DILocation(line: 266, column: 15, scope: !1482)
!1494 = !DILocation(line: 267, column: 23, scope: !1482)
!1495 = !DILocation(line: 267, column: 30, scope: !1482)
!1496 = !DILocation(line: 267, column: 10, scope: !1482)
!1497 = !DILocation(line: 268, column: 10, scope: !1482)
!1498 = !DILocation(line: 265, column: 10, scope: !1482)
!1499 = !DILocation(line: 270, column: 27, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1501, file: !3, discriminator: 1)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 270, column: 3)
!1502 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 270, column: 3)
!1503 = !DILocation(line: 270, column: 25, scope: !1500)
!1504 = !DILocation(line: 270, column: 44, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1501, file: !3, discriminator: 2)
!1506 = !DILocation(line: 270, column: 39, scope: !1500)
!1507 = !DILocation(line: 272, column: 16, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !3, discriminator: 1)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 271, column: 5)
!1510 = !DILocation(line: 272, column: 23, scope: !1508)
!1511 = !DILocation(line: 162, column: 10, scope: !1512, inlinedAt: !1517)
!1512 = distinct !DISubprogram(name: "field_sep", scope: !112, file: !112, line: 160, type: !1513, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!100, !86}
!1515 = !{!1516}
!1516 = !DILocalVariable(name: "ch", arg: 1, scope: !1512, file: !112, line: 160, type: !86)
!1517 = distinct !DILocation(line: 272, column: 26, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1509, file: !3, discriminator: 2)
!1519 = !DILocation(line: 272, column: 37, scope: !1518)
!1520 = !DILocation(line: 160, column: 26, scope: !1512, inlinedAt: !1517)
!1521 = !{!1218, !1218, i64 0}
!1522 = !DILocation(line: 162, column: 29, scope: !1523, inlinedAt: !1517)
!1523 = !DILexicalBlockFile(scope: !1512, file: !112, discriminator: 1)
!1524 = !DILocation(line: 162, column: 23, scope: !1512, inlinedAt: !1517)
!1525 = !DILocation(line: 272, column: 7, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1509, file: !3, discriminator: 3)
!1527 = !DILocation(line: 274, column: 16, scope: !1508)
!1528 = !DILocation(line: 274, column: 23, scope: !1508)
!1529 = !DILocation(line: 162, column: 10, scope: !1512, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 274, column: 27, scope: !1518)
!1531 = !DILocation(line: 273, column: 10, scope: !1509)
!1532 = distinct !{!1532, !1533, !1531}
!1533 = !DILocation(line: 272, column: 7, scope: !1509)
!1534 = !DILocation(line: 274, column: 38, scope: !1518)
!1535 = !DILocation(line: 160, column: 26, scope: !1512, inlinedAt: !1530)
!1536 = !DILocation(line: 162, column: 29, scope: !1523, inlinedAt: !1530)
!1537 = !DILocation(line: 162, column: 23, scope: !1512, inlinedAt: !1530)
!1538 = !DILocation(line: 274, column: 7, scope: !1526)
!1539 = !DILocation(line: 275, column: 10, scope: !1509)
!1540 = distinct !{!1540, !1541, !1539}
!1541 = !DILocation(line: 274, column: 7, scope: !1509)
!1542 = !DILocation(line: 270, column: 57, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1501, file: !3, discriminator: 4)
!1544 = distinct !{!1544, !1545, !1546}
!1545 = !DILocation(line: 270, column: 3, scope: !1502)
!1546 = !DILocation(line: 276, column: 5, scope: !1502)
!1547 = !DILocation(line: 278, column: 8, scope: !1482)
!1548 = !DILocation(line: 278, column: 8, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1482, file: !3, discriminator: 1)
!1550 = !DILocation(line: 278, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1482, file: !3, discriminator: 3)
!1552 = !DILocation(line: 280, column: 23, scope: !1482)
!1553 = !DILocation(line: 280, column: 3, scope: !1482)
!1554 = distinct !DISubprogram(name: "__argmatch_die", scope: !189, file: !189, line: 62, type: !193, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !180)
!1555 = !DILocation(line: 64, column: 3, scope: !1554)
!1556 = !DILocation(line: 65, column: 1, scope: !1554)
!1557 = distinct !DISubprogram(name: "argmatch", scope: !189, file: !189, line: 84, type: !1558, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1562)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1560, !78, !1561, !78, !75}
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !76, line: 51, baseType: !1189)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1562 = !{!1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1577}
!1563 = !DILocalVariable(name: "arg", arg: 1, scope: !1557, file: !189, line: 84, type: !78)
!1564 = !DILocalVariable(name: "arglist", arg: 2, scope: !1557, file: !189, line: 84, type: !1561)
!1565 = !DILocalVariable(name: "vallist", arg: 3, scope: !1557, file: !189, line: 85, type: !78)
!1566 = !DILocalVariable(name: "valsize", arg: 4, scope: !1557, file: !189, line: 85, type: !75)
!1567 = !DILocalVariable(name: "i", scope: !1557, file: !189, line: 87, type: !75)
!1568 = !DILocalVariable(name: "arglen", scope: !1557, file: !189, line: 88, type: !75)
!1569 = !DILocalVariable(name: "matchind", scope: !1557, file: !189, line: 89, type: !1560)
!1570 = !DILocalVariable(name: "ambiguous", scope: !1557, file: !189, line: 90, type: !100)
!1571 = !DILocalVariable(name: "__s1_len", scope: !1572, file: !189, line: 97, type: !75)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !189, line: 97, column: 12)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !189, line: 97, column: 11)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !189, line: 96, column: 5)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !189, line: 95, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1557, file: !189, line: 95, column: 3)
!1577 = !DILocalVariable(name: "__s2_len", scope: !1572, file: !189, line: 97, type: !75)
!1578 = !DILocation(line: 84, column: 23, scope: !1557)
!1579 = !DILocation(line: 84, column: 47, scope: !1557)
!1580 = !DILocation(line: 85, column: 23, scope: !1557)
!1581 = !DILocation(line: 85, column: 39, scope: !1557)
!1582 = !DILocation(line: 89, column: 13, scope: !1557)
!1583 = !DILocation(line: 90, column: 8, scope: !1557)
!1584 = !DILocation(line: 92, column: 12, scope: !1557)
!1585 = !DILocation(line: 88, column: 10, scope: !1557)
!1586 = !DILocation(line: 87, column: 10, scope: !1557)
!1587 = !DILocation(line: 95, column: 15, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1575, file: !189, discriminator: 1)
!1589 = !DILocation(line: 95, column: 3, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1576, file: !189, discriminator: 1)
!1591 = !DILocation(line: 97, column: 12, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1573, file: !189, discriminator: 4)
!1593 = !DILocation(line: 97, column: 11, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1574, file: !189, discriminator: 4)
!1595 = !DILocation(line: 99, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !189, line: 99, column: 15)
!1597 = distinct !DILexicalBlock(scope: !1573, file: !189, line: 98, column: 9)
!1598 = !DILocation(line: 99, column: 35, scope: !1596)
!1599 = !DILocation(line: 99, column: 15, scope: !1597)
!1600 = !DILocation(line: 102, column: 29, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !189, line: 102, column: 20)
!1602 = !DILocation(line: 102, column: 20, scope: !1596)
!1603 = !DILocation(line: 109, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !189, line: 108, column: 19)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !189, line: 106, column: 13)
!1606 = !DILocation(line: 109, column: 48, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1604, file: !189, discriminator: 1)
!1608 = !DILocation(line: 109, column: 38, scope: !1607)
!1609 = !DILocation(line: 110, column: 48, scope: !1604)
!1610 = !DILocation(line: 110, column: 38, scope: !1604)
!1611 = !DILocation(line: 109, column: 22, scope: !1607)
!1612 = !DILocation(line: 108, column: 19, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1605, file: !189, discriminator: 1)
!1614 = !DILocation(line: 115, column: 17, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !189, line: 111, column: 17)
!1616 = !DILocation(line: 95, column: 28, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1575, file: !189, discriminator: 2)
!1618 = distinct !{!1618, !1619, !1620}
!1619 = !DILocation(line: 95, column: 3, scope: !1576)
!1620 = !DILocation(line: 118, column: 5, scope: !1576)
!1621 = !DILocation(line: 119, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1557, file: !189, line: 119, column: 7)
!1623 = !DILocation(line: 122, column: 5, scope: !1622)
!1624 = !DILocation(line: 123, column: 1, scope: !1557)
!1625 = distinct !DISubprogram(name: "argmatch_invalid", scope: !189, file: !189, line: 131, type: !1626, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1628)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !78, !78, !1560}
!1628 = !{!1629, !1630, !1631, !1632}
!1629 = !DILocalVariable(name: "context", arg: 1, scope: !1625, file: !189, line: 131, type: !78)
!1630 = !DILocalVariable(name: "value", arg: 2, scope: !1625, file: !189, line: 131, type: !78)
!1631 = !DILocalVariable(name: "problem", arg: 3, scope: !1625, file: !189, line: 131, type: !1560)
!1632 = !DILocalVariable(name: "format", scope: !1625, file: !189, line: 133, type: !78)
!1633 = !DILocation(line: 131, column: 31, scope: !1625)
!1634 = !DILocation(line: 131, column: 52, scope: !1625)
!1635 = !DILocation(line: 131, column: 69, scope: !1625)
!1636 = !DILocation(line: 133, column: 33, scope: !1625)
!1637 = !DILocation(line: 133, column: 25, scope: !1625)
!1638 = !DILocation(line: 135, column: 27, scope: !1625)
!1639 = !DILocation(line: 133, column: 15, scope: !1625)
!1640 = !DILocation(line: 137, column: 24, scope: !1625)
!1641 = !DILocation(line: 138, column: 10, scope: !1625)
!1642 = !DILocation(line: 137, column: 3, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1625, file: !189, discriminator: 1)
!1644 = !DILocation(line: 139, column: 1, scope: !1625)
!1645 = distinct !DISubprogram(name: "argmatch_valid", scope: !189, file: !189, line: 146, type: !1646, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1648)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1561, !78, !75}
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DILocalVariable(name: "arglist", arg: 1, scope: !1645, file: !189, line: 146, type: !1561)
!1650 = !DILocalVariable(name: "vallist", arg: 2, scope: !1645, file: !189, line: 147, type: !78)
!1651 = !DILocalVariable(name: "valsize", arg: 3, scope: !1645, file: !189, line: 147, type: !75)
!1652 = !DILocalVariable(name: "i", scope: !1645, file: !189, line: 149, type: !75)
!1653 = !DILocalVariable(name: "last_val", scope: !1645, file: !189, line: 150, type: !78)
!1654 = !DILocation(line: 146, column: 36, scope: !1645)
!1655 = !DILocation(line: 147, column: 29, scope: !1645)
!1656 = !DILocation(line: 147, column: 45, scope: !1645)
!1657 = !DILocation(line: 150, column: 15, scope: !1645)
!1658 = !DILocation(line: 154, column: 3, scope: !1645)
!1659 = !DILocation(line: 154, column: 3, scope: !1660)
!1660 = !DILexicalBlockFile(scope: !1645, file: !189, discriminator: 1)
!1661 = !DILocation(line: 149, column: 10, scope: !1645)
!1662 = !DILocation(line: 155, column: 15, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !189, discriminator: 1)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !189, line: 155, column: 3)
!1665 = distinct !DILexicalBlock(scope: !1645, file: !189, line: 155, column: 3)
!1666 = !DILocation(line: 155, column: 3, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1665, file: !189, discriminator: 1)
!1668 = !DILocation(line: 156, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !189, line: 156, column: 9)
!1670 = !DILocation(line: 159, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1669, file: !189, line: 158, column: 7)
!1672 = !DILocation(line: 157, column: 9, scope: !1669)
!1673 = !DILocation(line: 157, column: 12, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1669, file: !189, discriminator: 1)
!1675 = !DILocation(line: 156, column: 9, scope: !1663)
!1676 = !DILocation(line: 159, column: 9, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1671, file: !189, discriminator: 1)
!1678 = !DILocation(line: 161, column: 7, scope: !1671)
!1679 = !DILocation(line: 164, column: 9, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1669, file: !189, line: 163, column: 7)
!1681 = !DILocation(line: 164, column: 9, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1680, file: !189, discriminator: 1)
!1683 = !DILocation(line: 155, column: 28, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1664, file: !189, discriminator: 2)
!1685 = distinct !{!1685, !1686, !1687}
!1686 = !DILocation(line: 155, column: 3, scope: !1665)
!1687 = !DILocation(line: 165, column: 7, scope: !1665)
!1688 = !DILocation(line: 166, column: 3, scope: !1645)
!1689 = !DILocalVariable(name: "__c", arg: 1, scope: !1690, file: !1155, line: 98, type: !87)
!1690 = distinct !DISubprogram(name: "putc_unlocked", scope: !1155, file: !1155, line: 98, type: !1691, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1733)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!87, !87, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1695, file: !1162, line: 242, baseType: !87, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1695, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1695, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1695, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1695, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1695, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1695, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1695, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1695, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1695, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1695, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1695, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1695, file: !1162, line: 260, baseType: !1710, size: 64, offset: 768)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !1712)
!1712 = !{!1713, !1714, !1716}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1711, file: !1162, line: 157, baseType: !1710, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1711, file: !1162, line: 158, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1711, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1695, file: !1162, line: 262, baseType: !1715, size: 64, offset: 832)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1695, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1695, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1695, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1695, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1695, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1695, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1695, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1695, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1695, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1695, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1695, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1695, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1695, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1695, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1695, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!1733 = !{!1689, !1734}
!1734 = !DILocalVariable(name: "__stream", arg: 2, scope: !1690, file: !1155, line: 98, type: !1693)
!1735 = !DILocation(line: 98, column: 20, scope: !1690, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 166, column: 3, scope: !1645)
!1737 = !DILocation(line: 98, column: 31, scope: !1690, inlinedAt: !1736)
!1738 = !DILocation(line: 100, column: 10, scope: !1690, inlinedAt: !1736)
!1739 = !DILocation(line: 100, column: 10, scope: !1740, inlinedAt: !1736)
!1740 = !DILexicalBlockFile(scope: !1690, file: !1155, discriminator: 1)
!1741 = !DILocation(line: 100, column: 10, scope: !1742, inlinedAt: !1736)
!1742 = !DILexicalBlockFile(scope: !1690, file: !1155, discriminator: 2)
!1743 = !DILocation(line: 167, column: 1, scope: !1645)
!1744 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !189, file: !189, line: 176, type: !1745, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1560, !78, !78, !1561, !78, !75, !190}
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1748 = !DILocalVariable(name: "context", arg: 1, scope: !1744, file: !189, line: 176, type: !78)
!1749 = !DILocalVariable(name: "arg", arg: 2, scope: !1744, file: !189, line: 177, type: !78)
!1750 = !DILocalVariable(name: "arglist", arg: 3, scope: !1744, file: !189, line: 177, type: !1561)
!1751 = !DILocalVariable(name: "vallist", arg: 4, scope: !1744, file: !189, line: 178, type: !78)
!1752 = !DILocalVariable(name: "valsize", arg: 5, scope: !1744, file: !189, line: 178, type: !75)
!1753 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1744, file: !189, line: 179, type: !190)
!1754 = !DILocalVariable(name: "res", scope: !1744, file: !189, line: 181, type: !1560)
!1755 = !DILocation(line: 176, column: 35, scope: !1744)
!1756 = !DILocation(line: 177, column: 35, scope: !1744)
!1757 = !DILocation(line: 177, column: 59, scope: !1744)
!1758 = !DILocation(line: 178, column: 35, scope: !1744)
!1759 = !DILocation(line: 178, column: 51, scope: !1744)
!1760 = !DILocation(line: 179, column: 40, scope: !1744)
!1761 = !DILocation(line: 181, column: 19, scope: !1744)
!1762 = !DILocation(line: 181, column: 13, scope: !1744)
!1763 = !DILocation(line: 182, column: 11, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1744, file: !189, line: 182, column: 7)
!1765 = !DILocation(line: 182, column: 7, scope: !1744)
!1766 = !DILocation(line: 131, column: 31, scope: !1625, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 187, column: 3, scope: !1744)
!1768 = !DILocation(line: 131, column: 52, scope: !1625, inlinedAt: !1767)
!1769 = !DILocation(line: 131, column: 69, scope: !1625, inlinedAt: !1767)
!1770 = !DILocation(line: 133, column: 33, scope: !1625, inlinedAt: !1767)
!1771 = !DILocation(line: 133, column: 25, scope: !1625, inlinedAt: !1767)
!1772 = !DILocation(line: 135, column: 27, scope: !1625, inlinedAt: !1767)
!1773 = !DILocation(line: 133, column: 15, scope: !1625, inlinedAt: !1767)
!1774 = !DILocation(line: 137, column: 24, scope: !1625, inlinedAt: !1767)
!1775 = !DILocation(line: 138, column: 10, scope: !1625, inlinedAt: !1767)
!1776 = !DILocation(line: 137, column: 3, scope: !1643, inlinedAt: !1767)
!1777 = !DILocation(line: 188, column: 3, scope: !1744)
!1778 = !DILocation(line: 189, column: 3, scope: !1744)
!1779 = !DILocation(line: 191, column: 3, scope: !1744)
!1780 = !DILocation(line: 192, column: 1, scope: !1744)
!1781 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !189, file: !189, line: 197, type: !1782, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !184, variables: !1784)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!78, !78, !1561, !78, !75}
!1784 = !{!1785, !1786, !1787, !1788, !1789}
!1785 = !DILocalVariable(name: "value", arg: 1, scope: !1781, file: !189, line: 197, type: !78)
!1786 = !DILocalVariable(name: "arglist", arg: 2, scope: !1781, file: !189, line: 198, type: !1561)
!1787 = !DILocalVariable(name: "vallist", arg: 3, scope: !1781, file: !189, line: 199, type: !78)
!1788 = !DILocalVariable(name: "valsize", arg: 4, scope: !1781, file: !189, line: 199, type: !75)
!1789 = !DILocalVariable(name: "i", scope: !1781, file: !189, line: 201, type: !75)
!1790 = !DILocation(line: 197, column: 35, scope: !1781)
!1791 = !DILocation(line: 198, column: 42, scope: !1781)
!1792 = !DILocation(line: 199, column: 35, scope: !1781)
!1793 = !DILocation(line: 199, column: 51, scope: !1781)
!1794 = !DILocation(line: 201, column: 10, scope: !1781)
!1795 = !DILocation(line: 203, column: 15, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !189, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !189, line: 203, column: 3)
!1798 = distinct !DILexicalBlock(scope: !1781, file: !189, line: 203, column: 3)
!1799 = !DILocation(line: 203, column: 3, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1798, file: !189, discriminator: 1)
!1801 = !DILocation(line: 204, column: 43, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1797, file: !189, line: 204, column: 9)
!1803 = distinct !{!1803, !1804, !1805}
!1804 = !DILocation(line: 203, column: 3, scope: !1798)
!1805 = !DILocation(line: 205, column: 23, scope: !1798)
!1806 = !DILocation(line: 204, column: 33, scope: !1802)
!1807 = !DILocation(line: 204, column: 10, scope: !1802)
!1808 = !DILocation(line: 203, column: 28, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1797, file: !189, discriminator: 2)
!1810 = !DILocation(line: 204, column: 9, scope: !1797)
!1811 = !DILocation(line: 207, column: 1, scope: !1781)
!1812 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !202, file: !202, line: 41, type: !113, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !1813)
!1813 = !{!1814}
!1814 = !DILocalVariable(name: "file", arg: 1, scope: !1812, file: !202, line: 41, type: !78)
!1815 = !DILocation(line: 41, column: 41, scope: !1812)
!1816 = !DILocation(line: 43, column: 13, scope: !1812)
!1817 = !DILocation(line: 44, column: 1, scope: !1812)
!1818 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !202, file: !202, line: 78, type: !1819, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !100}
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "ignore", arg: 1, scope: !1818, file: !202, line: 78, type: !100)
!1823 = !DILocation(line: 78, column: 37, scope: !1818)
!1824 = !DILocation(line: 80, column: 16, scope: !1818)
!1825 = !DILocation(line: 81, column: 1, scope: !1818)
!1826 = distinct !DISubprogram(name: "close_stdout", scope: !202, file: !202, line: 107, type: !193, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !197, variables: !1827)
!1827 = !{!1828}
!1828 = !DILocalVariable(name: "write_error", scope: !1829, file: !202, line: 112, type: !78)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !202, line: 111, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !202, line: 109, column: 7)
!1831 = !DILocation(line: 109, column: 21, scope: !1830)
!1832 = !DILocation(line: 109, column: 7, scope: !1830)
!1833 = !DILocation(line: 109, column: 29, scope: !1830)
!1834 = !DILocation(line: 110, column: 7, scope: !1830)
!1835 = !DILocation(line: 110, column: 12, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1830, file: !202, discriminator: 1)
!1837 = !DILocation(line: 114, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1829, file: !202, line: 113, column: 11)
!1839 = !DILocation(line: 110, column: 25, scope: !1836)
!1840 = !DILocation(line: 110, column: 28, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1830, file: !202, discriminator: 2)
!1842 = !DILocation(line: 110, column: 34, scope: !1841)
!1843 = !DILocation(line: 109, column: 7, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1826, file: !202, discriminator: 1)
!1845 = !DILocation(line: 112, column: 33, scope: !1829)
!1846 = !DILocation(line: 112, column: 19, scope: !1829)
!1847 = !DILocation(line: 113, column: 11, scope: !1838)
!1848 = !DILocation(line: 113, column: 11, scope: !1829)
!1849 = !DILocation(line: 114, column: 36, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1838, file: !202, discriminator: 1)
!1851 = !DILocation(line: 114, column: 9, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1838, file: !202, discriminator: 2)
!1853 = !DILocation(line: 114, column: 9, scope: !1838)
!1854 = !DILocation(line: 117, column: 9, scope: !1850)
!1855 = !DILocation(line: 119, column: 14, scope: !1829)
!1856 = !DILocation(line: 119, column: 7, scope: !1829)
!1857 = !DILocation(line: 122, column: 22, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1826, file: !202, line: 122, column: 8)
!1859 = !DILocation(line: 122, column: 8, scope: !1858)
!1860 = !DILocation(line: 122, column: 30, scope: !1858)
!1861 = !DILocation(line: 122, column: 8, scope: !1826)
!1862 = !DILocation(line: 123, column: 13, scope: !1858)
!1863 = !DILocation(line: 123, column: 6, scope: !1858)
!1864 = !DILocation(line: 124, column: 1, scope: !1826)
!1865 = distinct !DISubprogram(name: "fdadvise", scope: !1866, file: !1866, line: 31, type: !1867, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !1871)
!1866 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !87, !1869, !1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1160, line: 91, baseType: !1188)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !49, line: 52, baseType: !48)
!1871 = !{!1872, !1873, !1874, !1875, !1876}
!1872 = !DILocalVariable(name: "fd", arg: 1, scope: !1865, file: !1866, line: 31, type: !87)
!1873 = !DILocalVariable(name: "offset", arg: 2, scope: !1865, file: !1866, line: 31, type: !1869)
!1874 = !DILocalVariable(name: "len", arg: 3, scope: !1865, file: !1866, line: 31, type: !1869)
!1875 = !DILocalVariable(name: "advice", arg: 4, scope: !1865, file: !1866, line: 31, type: !1870)
!1876 = !DILocalVariable(name: "__x", scope: !1877, file: !1866, line: 34, type: !87)
!1877 = distinct !DILexicalBlock(scope: !1865, file: !1866, line: 34, column: 3)
!1878 = !DILocation(line: 31, column: 15, scope: !1865)
!1879 = !DILocation(line: 31, column: 25, scope: !1865)
!1880 = !DILocation(line: 31, column: 39, scope: !1865)
!1881 = !DILocation(line: 31, column: 54, scope: !1865)
!1882 = !DILocation(line: 34, column: 3, scope: !1877)
!1883 = !DILocation(line: 36, column: 1, scope: !1865)
!1884 = distinct !DISubprogram(name: "fadvise", scope: !1866, file: !1866, line: 39, type: !1885, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !627, variables: !1927)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1887, !1870}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1889, file: !1162, line: 242, baseType: !87, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1889, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1889, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1889, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1889, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1889, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1889, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1889, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1889, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1889, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1889, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1889, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1889, file: !1162, line: 260, baseType: !1904, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !1906)
!1906 = !{!1907, !1908, !1910}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1905, file: !1162, line: 157, baseType: !1904, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1905, file: !1162, line: 158, baseType: !1909, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1905, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1889, file: !1162, line: 262, baseType: !1909, size: 64, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1889, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1889, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1889, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1889, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1889, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1889, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1889, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1889, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1889, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1889, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1889, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1889, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1889, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1889, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1889, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!1927 = !{!1928, !1929}
!1928 = !DILocalVariable(name: "fp", arg: 1, scope: !1884, file: !1866, line: 39, type: !1887)
!1929 = !DILocalVariable(name: "advice", arg: 2, scope: !1884, file: !1866, line: 39, type: !1870)
!1930 = !DILocation(line: 39, column: 16, scope: !1884)
!1931 = !DILocation(line: 39, column: 30, scope: !1884)
!1932 = !DILocation(line: 41, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1884, file: !1866, line: 41, column: 7)
!1934 = !DILocation(line: 41, column: 7, scope: !1884)
!1935 = !DILocation(line: 42, column: 15, scope: !1933)
!1936 = !DILocation(line: 31, column: 15, scope: !1865, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 42, column: 5, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1933, file: !1866, discriminator: 1)
!1939 = !DILocation(line: 31, column: 25, scope: !1865, inlinedAt: !1937)
!1940 = !DILocation(line: 31, column: 39, scope: !1865, inlinedAt: !1937)
!1941 = !DILocation(line: 31, column: 54, scope: !1865, inlinedAt: !1937)
!1942 = !DILocation(line: 34, column: 3, scope: !1877, inlinedAt: !1937)
!1943 = !DILocation(line: 42, column: 5, scope: !1933)
!1944 = !DILocation(line: 43, column: 1, scope: !1884)
!1945 = distinct !DISubprogram(name: "freopen_safer", scope: !1946, file: !1946, line: 54, type: !1947, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !1989)
!1946 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1949, !78, !78, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !1952)
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1951, file: !1162, line: 242, baseType: !87, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1951, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1951, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1951, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1951, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1951, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1951, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1951, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1951, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1951, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1951, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1951, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1951, file: !1162, line: 260, baseType: !1966, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !1968)
!1968 = !{!1969, !1970, !1972}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !1967, file: !1162, line: 157, baseType: !1966, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !1967, file: !1162, line: 158, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !1967, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1951, file: !1162, line: 262, baseType: !1971, size: 64, offset: 832)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1951, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1951, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1951, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1951, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1951, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1951, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1951, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1951, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1951, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1951, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !1951, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !1951, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1951, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1951, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1951, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1990 = !DILocalVariable(name: "name", arg: 1, scope: !1945, file: !1946, line: 54, type: !78)
!1991 = !DILocalVariable(name: "mode", arg: 2, scope: !1945, file: !1946, line: 54, type: !78)
!1992 = !DILocalVariable(name: "f", arg: 3, scope: !1945, file: !1946, line: 54, type: !1949)
!1993 = !DILocalVariable(name: "protect_in", scope: !1945, file: !1946, line: 62, type: !100)
!1994 = !DILocalVariable(name: "protect_out", scope: !1945, file: !1946, line: 63, type: !100)
!1995 = !DILocalVariable(name: "protect_err", scope: !1945, file: !1946, line: 64, type: !100)
!1996 = !DILocalVariable(name: "saved_errno", scope: !1945, file: !1946, line: 65, type: !87)
!1997 = !DILocation(line: 54, column: 28, scope: !1945)
!1998 = !DILocation(line: 54, column: 46, scope: !1945)
!1999 = !DILocation(line: 54, column: 58, scope: !1945)
!2000 = !DILocation(line: 62, column: 8, scope: !1945)
!2001 = !DILocation(line: 63, column: 8, scope: !1945)
!2002 = !DILocation(line: 64, column: 8, scope: !1945)
!2003 = !DILocation(line: 67, column: 11, scope: !1945)
!2004 = !DILocation(line: 67, column: 3, scope: !1945)
!2005 = !DILocation(line: 70, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !1946, line: 70, column: 11)
!2007 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 68, column: 5)
!2008 = !DILocation(line: 70, column: 11, scope: !2007)
!2009 = !DILocation(line: 74, column: 11, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !1946, line: 74, column: 11)
!2011 = !DILocation(line: 74, column: 11, scope: !2007)
!2012 = !DILocation(line: 78, column: 11, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2007, file: !1946, line: 78, column: 11)
!2014 = !DILocation(line: 78, column: 11, scope: !2007)
!2015 = !DILocation(line: 85, column: 18, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 85, column: 7)
!2017 = !DILocalVariable(name: "fd", arg: 1, scope: !2018, file: !1946, line: 32, type: !87)
!2018 = distinct !DISubprogram(name: "protect_fd", scope: !1946, file: !1946, line: 32, type: !2019, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !630, variables: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!100, !87}
!2021 = !{!2017, !2022}
!2022 = !DILocalVariable(name: "value", scope: !2018, file: !1946, line: 34, type: !87)
!2023 = !DILocation(line: 32, column: 17, scope: !2018, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 85, column: 22, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2016, file: !1946, discriminator: 1)
!2026 = !DILocation(line: 34, column: 15, scope: !2018, inlinedAt: !2024)
!2027 = !DILocation(line: 34, column: 7, scope: !2018, inlinedAt: !2024)
!2028 = !DILocation(line: 35, column: 13, scope: !2029, inlinedAt: !2024)
!2029 = distinct !DILexicalBlock(scope: !2018, file: !1946, line: 35, column: 7)
!2030 = !DILocation(line: 35, column: 7, scope: !2018, inlinedAt: !2024)
!2031 = !DILocation(line: 37, column: 13, scope: !2032, inlinedAt: !2024)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !1946, line: 37, column: 11)
!2033 = distinct !DILexicalBlock(scope: !2029, file: !1946, line: 36, column: 5)
!2034 = !DILocation(line: 37, column: 11, scope: !2033, inlinedAt: !2024)
!2035 = !DILocation(line: 39, column: 11, scope: !2036, inlinedAt: !2024)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !1946, line: 38, column: 9)
!2037 = !DILocation(line: 40, column: 11, scope: !2036, inlinedAt: !2024)
!2038 = !DILocation(line: 40, column: 17, scope: !2036, inlinedAt: !2024)
!2039 = !DILocation(line: 41, column: 9, scope: !2036, inlinedAt: !2024)
!2040 = !DILocation(line: 87, column: 12, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2016, file: !1946, line: 87, column: 12)
!2042 = !DILocation(line: 87, column: 24, scope: !2041)
!2043 = !DILocation(line: 32, column: 17, scope: !2018, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 87, column: 28, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2041, file: !1946, discriminator: 1)
!2046 = !DILocation(line: 34, column: 15, scope: !2018, inlinedAt: !2044)
!2047 = !DILocation(line: 34, column: 7, scope: !2018, inlinedAt: !2044)
!2048 = !DILocation(line: 35, column: 13, scope: !2029, inlinedAt: !2044)
!2049 = !DILocation(line: 35, column: 7, scope: !2018, inlinedAt: !2044)
!2050 = !DILocation(line: 37, column: 13, scope: !2032, inlinedAt: !2044)
!2051 = !DILocation(line: 37, column: 11, scope: !2033, inlinedAt: !2044)
!2052 = !DILocation(line: 39, column: 11, scope: !2036, inlinedAt: !2044)
!2053 = !DILocation(line: 40, column: 11, scope: !2036, inlinedAt: !2044)
!2054 = !DILocation(line: 40, column: 17, scope: !2036, inlinedAt: !2044)
!2055 = !DILocation(line: 41, column: 9, scope: !2036, inlinedAt: !2044)
!2056 = !DILocation(line: 89, column: 12, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2041, file: !1946, line: 89, column: 12)
!2058 = !DILocation(line: 89, column: 24, scope: !2057)
!2059 = !DILocation(line: 32, column: 17, scope: !2018, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 89, column: 28, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2057, file: !1946, discriminator: 1)
!2062 = !DILocation(line: 34, column: 15, scope: !2018, inlinedAt: !2060)
!2063 = !DILocation(line: 34, column: 7, scope: !2018, inlinedAt: !2060)
!2064 = !DILocation(line: 35, column: 13, scope: !2029, inlinedAt: !2060)
!2065 = !DILocation(line: 35, column: 7, scope: !2018, inlinedAt: !2060)
!2066 = !DILocation(line: 37, column: 13, scope: !2032, inlinedAt: !2060)
!2067 = !DILocation(line: 37, column: 11, scope: !2033, inlinedAt: !2060)
!2068 = !DILocation(line: 39, column: 11, scope: !2036, inlinedAt: !2060)
!2069 = !DILocation(line: 40, column: 11, scope: !2036, inlinedAt: !2060)
!2070 = !DILocation(line: 40, column: 17, scope: !2036, inlinedAt: !2060)
!2071 = !DILocation(line: 41, column: 9, scope: !2036, inlinedAt: !2060)
!2072 = !DILocation(line: 92, column: 9, scope: !2057)
!2073 = !DILocation(line: 93, column: 17, scope: !1945)
!2074 = !DILocation(line: 65, column: 7, scope: !1945)
!2075 = !DILocation(line: 94, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 94, column: 7)
!2077 = !DILocation(line: 94, column: 7, scope: !1945)
!2078 = !DILocation(line: 95, column: 5, scope: !2076)
!2079 = !DILocation(line: 96, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 96, column: 7)
!2081 = !DILocation(line: 96, column: 7, scope: !1945)
!2082 = !DILocation(line: 97, column: 5, scope: !2080)
!2083 = !DILocation(line: 98, column: 7, scope: !1945)
!2084 = !DILocation(line: 99, column: 5, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 98, column: 7)
!2086 = !DILocation(line: 100, column: 8, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1945, file: !1946, line: 100, column: 7)
!2088 = !DILocation(line: 100, column: 7, scope: !1945)
!2089 = !DILocation(line: 101, column: 11, scope: !2087)
!2090 = !DILocation(line: 101, column: 5, scope: !2087)
!2091 = !DILocation(line: 102, column: 3, scope: !1945)
!2092 = distinct !DISubprogram(name: "hard_locale", scope: !2093, file: !2093, line: 38, type: !2019, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !632, variables: !2094)
!2093 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2094 = !{!2095, !2096, !2097, !2098, !2105, !2106, !2108, !2109, !2111, !2112, !2114}
!2095 = !DILocalVariable(name: "category", arg: 1, scope: !2092, file: !2093, line: 38, type: !87)
!2096 = !DILocalVariable(name: "hard", scope: !2092, file: !2093, line: 40, type: !100)
!2097 = !DILocalVariable(name: "p", scope: !2092, file: !2093, line: 41, type: !78)
!2098 = !DILocalVariable(name: "__s1_len", scope: !2099, file: !2093, line: 47, type: !75)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !2093, line: 47, column: 15)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !2093, line: 47, column: 15)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !2093, line: 46, column: 9)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !2093, line: 45, column: 11)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !2093, line: 44, column: 5)
!2104 = distinct !DILexicalBlock(scope: !2092, file: !2093, line: 43, column: 7)
!2105 = !DILocalVariable(name: "__s2_len", scope: !2099, file: !2093, line: 47, type: !75)
!2106 = !DILocalVariable(name: "__s2", scope: !2107, file: !2093, line: 47, type: !84)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !2093, line: 47, column: 15)
!2108 = !DILocalVariable(name: "__result", scope: !2107, file: !2093, line: 47, type: !87)
!2109 = !DILocalVariable(name: "__s1_len", scope: !2110, file: !2093, line: 47, type: !75)
!2110 = distinct !DILexicalBlock(scope: !2100, file: !2093, line: 47, column: 39)
!2111 = !DILocalVariable(name: "__s2_len", scope: !2110, file: !2093, line: 47, type: !75)
!2112 = !DILocalVariable(name: "__s2", scope: !2113, file: !2093, line: 47, type: !84)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !2093, line: 47, column: 39)
!2114 = !DILocalVariable(name: "__result", scope: !2113, file: !2093, line: 47, type: !87)
!2115 = !DILocation(line: 38, column: 18, scope: !2092)
!2116 = !DILocation(line: 40, column: 8, scope: !2092)
!2117 = !DILocation(line: 41, column: 19, scope: !2092)
!2118 = !DILocation(line: 41, column: 15, scope: !2092)
!2119 = !DILocation(line: 43, column: 7, scope: !2104)
!2120 = !DILocation(line: 43, column: 7, scope: !2092)
!2121 = !DILocation(line: 47, column: 15, scope: !2099)
!2122 = !DILocation(line: 47, column: 15, scope: !2107)
!2123 = !DILocation(line: 47, column: 15, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2107, file: !2093, discriminator: 2)
!2125 = !DILocation(line: 47, column: 15, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !2127, file: !2093, discriminator: 3)
!2127 = distinct !DILexicalBlock(scope: !2107, file: !2093, line: 47, column: 15)
!2128 = !DILocation(line: 47, column: 15, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2127, file: !2093, discriminator: 2)
!2130 = !DILocation(line: 47, column: 15, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2132, file: !2093, discriminator: 4)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !2093, line: 47, column: 15)
!2133 = !DILocation(line: 47, column: 15, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2099, file: !2093, discriminator: 11)
!2135 = !DILocation(line: 47, column: 36, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2100, file: !2093, discriminator: 13)
!2137 = !DILocation(line: 47, column: 39, scope: !2110)
!2138 = !DILocation(line: 47, column: 39, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2110, file: !2093, discriminator: 26)
!2140 = !DILocation(line: 47, column: 59, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2100, file: !2093, discriminator: 27)
!2142 = !DILocation(line: 47, column: 15, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !2101, file: !2093, discriminator: 27)
!2144 = !DILocation(line: 48, column: 13, scope: !2100)
!2145 = !DILocation(line: 71, column: 3, scope: !2092)
!2146 = distinct !DISubprogram(name: "initbuffer", scope: !2147, file: !2147, line: 37, type: !2148, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2156)
!2147 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1030, line: 26, size: 192, elements: !2152)
!2152 = !{!2153, !2154, !2155}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2151, file: !1030, line: 28, baseType: !75, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2151, file: !1030, line: 29, baseType: !75, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2151, file: !1030, line: 30, baseType: !81, size: 64, offset: 128)
!2156 = !{!2157}
!2157 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2146, file: !2147, line: 37, type: !2150)
!2158 = !DILocation(line: 37, column: 32, scope: !2146)
!2159 = !DILocation(line: 39, column: 3, scope: !2146)
!2160 = !DILocation(line: 40, column: 1, scope: !2146)
!2161 = distinct !DISubprogram(name: "readlinebuffer", scope: !2147, file: !2147, line: 43, type: !2162, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2204)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!2150, !2150, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2166, file: !1162, line: 242, baseType: !87, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2166, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2166, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2166, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2166, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2166, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2166, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2166, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2166, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2166, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2166, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2166, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2166, file: !1162, line: 260, baseType: !2181, size: 64, offset: 768)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !2183)
!2183 = !{!2184, !2185, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !2182, file: !1162, line: 157, baseType: !2181, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !2182, file: !1162, line: 158, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !2182, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2166, file: !1162, line: 262, baseType: !2186, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2166, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2166, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2166, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2166, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2166, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2166, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2166, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2166, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2166, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2166, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !2166, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !2166, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2166, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2166, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2166, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!2204 = !{!2205, !2206}
!2205 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2161, file: !2147, line: 43, type: !2150)
!2206 = !DILocalVariable(name: "stream", arg: 2, scope: !2161, file: !2147, line: 43, type: !2164)
!2207 = !DILocation(line: 43, column: 36, scope: !2161)
!2208 = !DILocation(line: 43, column: 54, scope: !2161)
!2209 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2210, file: !2147, line: 59, type: !2150)
!2210 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !2147, file: !2147, line: 59, type: !2211, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!2150, !2150, !2164, !80}
!2213 = !{!2209, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2214 = !DILocalVariable(name: "stream", arg: 2, scope: !2210, file: !2147, line: 59, type: !2164)
!2215 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2210, file: !2147, line: 60, type: !80)
!2216 = !DILocalVariable(name: "c", scope: !2210, file: !2147, line: 62, type: !87)
!2217 = !DILocalVariable(name: "buffer", scope: !2210, file: !2147, line: 63, type: !81)
!2218 = !DILocalVariable(name: "p", scope: !2210, file: !2147, line: 64, type: !81)
!2219 = !DILocalVariable(name: "end", scope: !2210, file: !2147, line: 65, type: !81)
!2220 = !DILocalVariable(name: "oldsize", scope: !2221, file: !2147, line: 83, type: !75)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !2147, line: 82, column: 9)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !2147, line: 81, column: 11)
!2223 = distinct !DILexicalBlock(scope: !2210, file: !2147, line: 71, column: 5)
!2224 = !DILocation(line: 59, column: 42, scope: !2210, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 45, column: 10, scope: !2161)
!2226 = !DILocation(line: 59, column: 60, scope: !2210, inlinedAt: !2225)
!2227 = !DILocation(line: 60, column: 28, scope: !2210, inlinedAt: !2225)
!2228 = !DILocation(line: 63, column: 30, scope: !2210, inlinedAt: !2225)
!2229 = !DILocation(line: 63, column: 9, scope: !2210, inlinedAt: !2225)
!2230 = !DILocation(line: 64, column: 9, scope: !2210, inlinedAt: !2225)
!2231 = !DILocation(line: 65, column: 36, scope: !2210, inlinedAt: !2225)
!2232 = !DILocalVariable(name: "__stream", arg: 1, scope: !2233, file: !1155, line: 125, type: !2164)
!2233 = distinct !DISubprogram(name: "feof_unlocked", scope: !1155, file: !1155, line: 125, type: !2234, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!87, !2164}
!2236 = !{!2232}
!2237 = !DILocation(line: 125, column: 1, scope: !2233, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 67, column: 7, scope: !2239, inlinedAt: !2225)
!2239 = distinct !DILexicalBlock(scope: !2210, file: !2147, line: 67, column: 7)
!2240 = !DILocation(line: 127, column: 10, scope: !2233, inlinedAt: !2238)
!2241 = !DILocation(line: 67, column: 7, scope: !2239, inlinedAt: !2225)
!2242 = !DILocation(line: 67, column: 7, scope: !2210, inlinedAt: !2225)
!2243 = distinct !{!2243, !2244, !2245}
!2244 = !DILocation(line: 70, column: 3, scope: !2210)
!2245 = !DILocation(line: 91, column: 24, scope: !2210)
!2246 = !{!1229, !822, i64 0}
!2247 = !DILocation(line: 65, column: 22, scope: !2210, inlinedAt: !2225)
!2248 = !DILocation(line: 65, column: 9, scope: !2210, inlinedAt: !2225)
!2249 = !DILocalVariable(name: "__fp", arg: 1, scope: !2250, file: !1155, line: 63, type: !2164)
!2250 = distinct !DISubprogram(name: "getc_unlocked", scope: !1155, file: !1155, line: 63, type: !2234, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2251)
!2251 = !{!2249}
!2252 = !DILocation(line: 63, column: 22, scope: !2250, inlinedAt: !2253)
!2253 = distinct !DILocation(line: 72, column: 11, scope: !2223, inlinedAt: !2225)
!2254 = !DILocation(line: 65, column: 10, scope: !2250, inlinedAt: !2253)
!2255 = !{!1217, !711, i64 8}
!2256 = !{!1217, !711, i64 16}
!2257 = !DILocation(line: 65, column: 10, scope: !2258, inlinedAt: !2253)
!2258 = !DILexicalBlockFile(scope: !2250, file: !1155, discriminator: 2)
!2259 = !DILocation(line: 62, column: 7, scope: !2210, inlinedAt: !2225)
!2260 = !DILocation(line: 73, column: 11, scope: !2223, inlinedAt: !2225)
!2261 = !DILocation(line: 65, column: 10, scope: !2262, inlinedAt: !2253)
!2262 = !DILexicalBlockFile(scope: !2250, file: !1155, discriminator: 1)
!2263 = !DILocation(line: 73, column: 13, scope: !2264, inlinedAt: !2225)
!2264 = distinct !DILexicalBlock(scope: !2223, file: !2147, line: 73, column: 11)
!2265 = !DILocation(line: 75, column: 17, scope: !2266, inlinedAt: !2225)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !2147, line: 75, column: 15)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !2147, line: 74, column: 9)
!2268 = !DILocation(line: 75, column: 27, scope: !2266, inlinedAt: !2225)
!2269 = !DILocalVariable(name: "__stream", arg: 1, scope: !2270, file: !1155, line: 132, type: !2164)
!2270 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1155, file: !1155, line: 132, type: !2234, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2271)
!2271 = !{!2269}
!2272 = !DILocation(line: 132, column: 1, scope: !2270, inlinedAt: !2273)
!2273 = distinct !DILocation(line: 75, column: 30, scope: !2274, inlinedAt: !2225)
!2274 = !DILexicalBlockFile(scope: !2266, file: !2147, discriminator: 1)
!2275 = !DILocation(line: 134, column: 10, scope: !2270, inlinedAt: !2273)
!2276 = !DILocation(line: 75, column: 30, scope: !2274, inlinedAt: !2225)
!2277 = !DILocation(line: 75, column: 15, scope: !2278, inlinedAt: !2225)
!2278 = !DILexicalBlockFile(scope: !2267, file: !2147, discriminator: 1)
!2279 = !DILocation(line: 77, column: 15, scope: !2280, inlinedAt: !2225)
!2280 = distinct !DILexicalBlock(scope: !2267, file: !2147, line: 77, column: 15)
!2281 = !DILocation(line: 77, column: 21, scope: !2280, inlinedAt: !2225)
!2282 = !DILocation(line: 77, column: 15, scope: !2267, inlinedAt: !2225)
!2283 = !DILocation(line: 81, column: 13, scope: !2222, inlinedAt: !2225)
!2284 = !DILocation(line: 81, column: 11, scope: !2223, inlinedAt: !2225)
!2285 = !DILocation(line: 83, column: 40, scope: !2221, inlinedAt: !2225)
!2286 = !DILocation(line: 83, column: 18, scope: !2221, inlinedAt: !2225)
!2287 = !DILocation(line: 84, column: 20, scope: !2221, inlinedAt: !2225)
!2288 = !DILocation(line: 85, column: 22, scope: !2221, inlinedAt: !2225)
!2289 = !DILocation(line: 86, column: 30, scope: !2221, inlinedAt: !2225)
!2290 = !DILocation(line: 87, column: 38, scope: !2221, inlinedAt: !2225)
!2291 = !DILocation(line: 87, column: 24, scope: !2221, inlinedAt: !2225)
!2292 = !DILocation(line: 88, column: 9, scope: !2221, inlinedAt: !2225)
!2293 = !DILocation(line: 89, column: 14, scope: !2223, inlinedAt: !2225)
!2294 = !DILocation(line: 89, column: 9, scope: !2223, inlinedAt: !2225)
!2295 = !DILocation(line: 89, column: 12, scope: !2223, inlinedAt: !2225)
!2296 = !DILocation(line: 91, column: 12, scope: !2210, inlinedAt: !2225)
!2297 = !DILocation(line: 90, column: 5, scope: !2298, inlinedAt: !2225)
!2298 = !DILexicalBlockFile(scope: !2223, file: !2147, discriminator: 1)
!2299 = !DILocation(line: 93, column: 26, scope: !2210, inlinedAt: !2225)
!2300 = !DILocation(line: 93, column: 15, scope: !2210, inlinedAt: !2225)
!2301 = !DILocation(line: 93, column: 22, scope: !2210, inlinedAt: !2225)
!2302 = !DILocation(line: 94, column: 3, scope: !2210, inlinedAt: !2225)
!2303 = !DILocation(line: 45, column: 3, scope: !2161)
!2304 = !DILocation(line: 59, column: 42, scope: !2210)
!2305 = !DILocation(line: 59, column: 60, scope: !2210)
!2306 = !DILocation(line: 60, column: 28, scope: !2210)
!2307 = !DILocation(line: 63, column: 30, scope: !2210)
!2308 = !DILocation(line: 63, column: 9, scope: !2210)
!2309 = !DILocation(line: 64, column: 9, scope: !2210)
!2310 = !DILocation(line: 65, column: 36, scope: !2210)
!2311 = !DILocation(line: 65, column: 9, scope: !2210)
!2312 = !DILocation(line: 125, column: 1, scope: !2233, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 67, column: 7, scope: !2239)
!2314 = !DILocation(line: 127, column: 10, scope: !2233, inlinedAt: !2313)
!2315 = !DILocation(line: 67, column: 7, scope: !2239)
!2316 = !DILocation(line: 67, column: 7, scope: !2210)
!2317 = !DILocation(line: 65, column: 22, scope: !2210)
!2318 = !DILocation(line: 63, column: 22, scope: !2250, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 72, column: 11, scope: !2223)
!2320 = !DILocation(line: 65, column: 10, scope: !2250, inlinedAt: !2319)
!2321 = !DILocation(line: 65, column: 10, scope: !2258, inlinedAt: !2319)
!2322 = !DILocation(line: 62, column: 7, scope: !2210)
!2323 = !DILocation(line: 73, column: 11, scope: !2223)
!2324 = !DILocation(line: 65, column: 10, scope: !2262, inlinedAt: !2319)
!2325 = !DILocation(line: 73, column: 13, scope: !2264)
!2326 = !DILocation(line: 75, column: 17, scope: !2266)
!2327 = !DILocation(line: 75, column: 27, scope: !2266)
!2328 = !DILocation(line: 132, column: 1, scope: !2270, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 75, column: 30, scope: !2274)
!2330 = !DILocation(line: 134, column: 10, scope: !2270, inlinedAt: !2329)
!2331 = !DILocation(line: 75, column: 30, scope: !2274)
!2332 = !DILocation(line: 75, column: 15, scope: !2278)
!2333 = !DILocation(line: 77, column: 15, scope: !2280)
!2334 = !DILocation(line: 77, column: 21, scope: !2280)
!2335 = !DILocation(line: 77, column: 15, scope: !2267)
!2336 = !DILocation(line: 81, column: 13, scope: !2222)
!2337 = !DILocation(line: 81, column: 11, scope: !2223)
!2338 = !DILocation(line: 83, column: 40, scope: !2221)
!2339 = !DILocation(line: 83, column: 18, scope: !2221)
!2340 = !DILocation(line: 84, column: 20, scope: !2221)
!2341 = !DILocation(line: 85, column: 22, scope: !2221)
!2342 = !DILocation(line: 86, column: 30, scope: !2221)
!2343 = !DILocation(line: 87, column: 38, scope: !2221)
!2344 = !DILocation(line: 87, column: 24, scope: !2221)
!2345 = !DILocation(line: 88, column: 9, scope: !2221)
!2346 = !DILocation(line: 89, column: 14, scope: !2223)
!2347 = !DILocation(line: 89, column: 9, scope: !2223)
!2348 = !DILocation(line: 89, column: 12, scope: !2223)
!2349 = !DILocation(line: 91, column: 12, scope: !2210)
!2350 = !DILocation(line: 90, column: 5, scope: !2298)
!2351 = !DILocation(line: 93, column: 26, scope: !2210)
!2352 = !DILocation(line: 93, column: 15, scope: !2210)
!2353 = !DILocation(line: 93, column: 22, scope: !2210)
!2354 = !DILocation(line: 94, column: 3, scope: !2210)
!2355 = !DILocation(line: 95, column: 1, scope: !2210)
!2356 = distinct !DISubprogram(name: "freebuffer", scope: !2147, file: !2147, line: 100, type: !2148, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !635, variables: !2357)
!2357 = !{!2358}
!2358 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2356, file: !2147, line: 100, type: !2150)
!2359 = !DILocation(line: 100, column: 32, scope: !2356)
!2360 = !DILocation(line: 102, column: 21, scope: !2356)
!2361 = !DILocation(line: 102, column: 3, scope: !2356)
!2362 = !DILocation(line: 103, column: 1, scope: !2356)
!2363 = distinct !DISubprogram(name: "memcasecmp", scope: !2364, file: !2364, line: 32, type: !2365, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !638, variables: !2367)
!2364 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!87, !82, !82, !75}
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2378, !2379, !2380, !2382, !2383, !2385}
!2368 = !DILocalVariable(name: "vs1", arg: 1, scope: !2363, file: !2364, line: 32, type: !82)
!2369 = !DILocalVariable(name: "vs2", arg: 2, scope: !2363, file: !2364, line: 32, type: !82)
!2370 = !DILocalVariable(name: "n", arg: 3, scope: !2363, file: !2364, line: 32, type: !75)
!2371 = !DILocalVariable(name: "i", scope: !2363, file: !2364, line: 34, type: !75)
!2372 = !DILocalVariable(name: "s1", scope: !2363, file: !2364, line: 35, type: !78)
!2373 = !DILocalVariable(name: "s2", scope: !2363, file: !2364, line: 36, type: !78)
!2374 = !DILocalVariable(name: "u1", scope: !2375, file: !2364, line: 39, type: !86)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !2364, line: 38, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !2364, line: 37, column: 3)
!2377 = distinct !DILexicalBlock(scope: !2363, file: !2364, line: 37, column: 3)
!2378 = !DILocalVariable(name: "u2", scope: !2375, file: !2364, line: 40, type: !86)
!2379 = !DILocalVariable(name: "U1", scope: !2375, file: !2364, line: 41, type: !87)
!2380 = !DILocalVariable(name: "__res", scope: !2381, file: !2364, line: 41, type: !87)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !2364, line: 41, column: 16)
!2382 = !DILocalVariable(name: "U2", scope: !2375, file: !2364, line: 42, type: !87)
!2383 = !DILocalVariable(name: "__res", scope: !2384, file: !2364, line: 42, type: !87)
!2384 = distinct !DILexicalBlock(scope: !2375, file: !2364, line: 42, column: 16)
!2385 = !DILocalVariable(name: "diff", scope: !2375, file: !2364, line: 43, type: !87)
!2386 = !DILocation(line: 32, column: 25, scope: !2363)
!2387 = !DILocation(line: 32, column: 42, scope: !2363)
!2388 = !DILocation(line: 32, column: 54, scope: !2363)
!2389 = !DILocation(line: 35, column: 15, scope: !2363)
!2390 = !DILocation(line: 36, column: 15, scope: !2363)
!2391 = !DILocation(line: 34, column: 10, scope: !2363)
!2392 = !DILocation(line: 37, column: 17, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2376, file: !2364, discriminator: 1)
!2394 = !DILocation(line: 37, column: 3, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2377, file: !2364, discriminator: 1)
!2396 = !DILocation(line: 41, column: 16, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2381, file: !2364, line: 41, column: 16)
!2398 = distinct !{!2398, !2399, !2400}
!2399 = !DILocation(line: 37, column: 3, scope: !2377)
!2400 = !DILocation(line: 47, column: 5, scope: !2377)
!2401 = !DILocation(line: 39, column: 26, scope: !2375)
!2402 = !DILocation(line: 39, column: 21, scope: !2375)
!2403 = !DILocation(line: 40, column: 26, scope: !2375)
!2404 = !DILocation(line: 40, column: 21, scope: !2375)
!2405 = !DILocation(line: 41, column: 16, scope: !2381)
!2406 = !DILocation(line: 41, column: 11, scope: !2375)
!2407 = !DILocation(line: 42, column: 16, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2384, file: !2364, line: 42, column: 16)
!2409 = !DILocation(line: 42, column: 16, scope: !2384)
!2410 = !DILocation(line: 42, column: 11, scope: !2375)
!2411 = !DILocation(line: 43, column: 45, scope: !2375)
!2412 = !DILocation(line: 43, column: 11, scope: !2375)
!2413 = !DILocation(line: 45, column: 11, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2375, file: !2364, line: 45, column: 11)
!2415 = !DILocation(line: 37, column: 23, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2376, file: !2364, discriminator: 2)
!2417 = !DILocation(line: 49, column: 1, scope: !2363)
!2418 = distinct !DISubprogram(name: "posix2_version", scope: !2419, file: !2419, line: 40, type: !2420, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !641, variables: !2421)
!2419 = !DIFile(filename: "lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2420 = !DISubroutineType(types: !640)
!2421 = !{!2422, !2423, !2424, !2427}
!2422 = !DILocalVariable(name: "v", scope: !2418, file: !2419, line: 42, type: !1189)
!2423 = !DILocalVariable(name: "s", scope: !2418, file: !2419, line: 43, type: !78)
!2424 = !DILocalVariable(name: "e", scope: !2425, file: !2419, line: 47, type: !81)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !2419, line: 46, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2418, file: !2419, line: 45, column: 7)
!2427 = !DILocalVariable(name: "i", scope: !2425, file: !2419, line: 48, type: !1189)
!2428 = !DILocation(line: 42, column: 12, scope: !2418)
!2429 = !DILocation(line: 43, column: 19, scope: !2418)
!2430 = !DILocation(line: 43, column: 15, scope: !2418)
!2431 = !DILocation(line: 45, column: 7, scope: !2426)
!2432 = !DILocation(line: 45, column: 9, scope: !2426)
!2433 = !DILocation(line: 45, column: 12, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2426, file: !2419, discriminator: 1)
!2435 = !DILocation(line: 45, column: 7, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2418, file: !2419, discriminator: 1)
!2437 = !DILocation(line: 47, column: 7, scope: !2425)
!2438 = !DILocation(line: 47, column: 13, scope: !2425)
!2439 = !DILocation(line: 48, column: 20, scope: !2425)
!2440 = !DILocation(line: 48, column: 16, scope: !2425)
!2441 = !DILocation(line: 49, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2425, file: !2419, line: 49, column: 11)
!2443 = !DILocation(line: 49, column: 13, scope: !2442)
!2444 = !DILocation(line: 49, column: 11, scope: !2425)
!2445 = !DILocation(line: 51, column: 5, scope: !2426)
!2446 = !DILocation(line: 51, column: 5, scope: !2425)
!2447 = !DILocation(line: 53, column: 12, scope: !2418)
!2448 = !DILocation(line: 53, column: 36, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2418, file: !2419, discriminator: 2)
!2450 = !DILocation(line: 53, column: 34, scope: !2449)
!2451 = !DILocation(line: 53, column: 10, scope: !2418)
!2452 = !DILocation(line: 53, column: 3, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2418, file: !2419, discriminator: 6)
!2454 = distinct !DISubprogram(name: "set_program_name", scope: !216, file: !216, line: 39, type: !113, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !212, variables: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "argv0", arg: 1, scope: !2454, file: !216, line: 39, type: !78)
!2457 = !DILocalVariable(name: "slash", scope: !2454, file: !216, line: 46, type: !78)
!2458 = !DILocalVariable(name: "base", scope: !2454, file: !216, line: 47, type: !78)
!2459 = !DILocation(line: 39, column: 31, scope: !2454)
!2460 = !DILocation(line: 51, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !216, line: 51, column: 7)
!2462 = !DILocation(line: 51, column: 7, scope: !2454)
!2463 = !DILocation(line: 55, column: 14, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2461, file: !216, line: 52, column: 5)
!2465 = !DILocation(line: 54, column: 7, scope: !2464)
!2466 = !DILocation(line: 56, column: 7, scope: !2464)
!2467 = !DILocation(line: 59, column: 11, scope: !2454)
!2468 = !DILocation(line: 46, column: 15, scope: !2454)
!2469 = !DILocation(line: 60, column: 17, scope: !2454)
!2470 = !DILocation(line: 60, column: 33, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2454, file: !216, discriminator: 1)
!2472 = !DILocation(line: 60, column: 11, scope: !2454)
!2473 = !DILocation(line: 47, column: 15, scope: !2454)
!2474 = !DILocation(line: 61, column: 12, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2454, file: !216, line: 61, column: 7)
!2476 = !DILocation(line: 61, column: 20, scope: !2475)
!2477 = !DILocation(line: 61, column: 25, scope: !2475)
!2478 = !DILocation(line: 61, column: 28, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2475, file: !216, discriminator: 1)
!2480 = !DILocation(line: 61, column: 61, scope: !2479)
!2481 = !DILocation(line: 61, column: 7, scope: !2471)
!2482 = !DILocation(line: 64, column: 11, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !216, line: 64, column: 11)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !216, line: 62, column: 5)
!2485 = !DILocation(line: 64, column: 36, scope: !2483)
!2486 = !DILocation(line: 64, column: 11, scope: !2484)
!2487 = !DILocation(line: 66, column: 24, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2483, file: !216, line: 65, column: 9)
!2489 = !DILocation(line: 70, column: 41, scope: !2488)
!2490 = !DILocation(line: 72, column: 9, scope: !2488)
!2491 = !DILocation(line: 84, column: 16, scope: !2454)
!2492 = !DILocation(line: 90, column: 27, scope: !2454)
!2493 = !DILocation(line: 92, column: 1, scope: !2454)
!2494 = distinct !DISubprogram(name: "clone_quoting_options", scope: !231, file: !231, line: 114, type: !2495, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2498)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!2497, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!2498 = !{!2499, !2500, !2501}
!2499 = !DILocalVariable(name: "o", arg: 1, scope: !2494, file: !231, line: 114, type: !2497)
!2500 = !DILocalVariable(name: "e", scope: !2494, file: !231, line: 116, type: !87)
!2501 = !DILocalVariable(name: "p", scope: !2494, file: !231, line: 117, type: !2497)
!2502 = !DILocation(line: 114, column: 48, scope: !2494)
!2503 = !DILocation(line: 116, column: 11, scope: !2494)
!2504 = !DILocation(line: 116, column: 7, scope: !2494)
!2505 = !DILocation(line: 117, column: 40, scope: !2494)
!2506 = !DILocation(line: 117, column: 40, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2494, file: !231, discriminator: 3)
!2508 = !DILocation(line: 117, column: 31, scope: !2507)
!2509 = !DILocation(line: 117, column: 27, scope: !2494)
!2510 = !DILocation(line: 119, column: 9, scope: !2494)
!2511 = !DILocation(line: 120, column: 3, scope: !2494)
!2512 = distinct !DISubprogram(name: "get_quoting_style", scope: !231, file: !231, line: 125, type: !2513, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2517)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!34, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!2517 = !{!2518}
!2518 = !DILocalVariable(name: "o", arg: 1, scope: !2512, file: !231, line: 125, type: !2515)
!2519 = !DILocation(line: 125, column: 50, scope: !2512)
!2520 = !DILocation(line: 127, column: 11, scope: !2512)
!2521 = !DILocation(line: 127, column: 46, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2512, file: !231, discriminator: 3)
!2523 = !{!2524, !712, i64 0}
!2524 = !{!"quoting_options", !712, i64 0, !841, i64 4, !712, i64 8, !711, i64 40, !711, i64 48}
!2525 = !DILocation(line: 127, column: 3, scope: !2522)
!2526 = distinct !DISubprogram(name: "set_quoting_style", scope: !231, file: !231, line: 133, type: !2527, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{null, !2497, !34}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "o", arg: 1, scope: !2526, file: !231, line: 133, type: !2497)
!2531 = !DILocalVariable(name: "s", arg: 2, scope: !2526, file: !231, line: 133, type: !34)
!2532 = !DILocation(line: 133, column: 44, scope: !2526)
!2533 = !DILocation(line: 133, column: 66, scope: !2526)
!2534 = !DILocation(line: 135, column: 4, scope: !2526)
!2535 = !DILocation(line: 135, column: 39, scope: !2536)
!2536 = !DILexicalBlockFile(scope: !2526, file: !231, discriminator: 3)
!2537 = !DILocation(line: 135, column: 45, scope: !2536)
!2538 = !DILocation(line: 136, column: 1, scope: !2526)
!2539 = distinct !DISubprogram(name: "set_char_quoting", scope: !231, file: !231, line: 144, type: !2540, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!87, !2497, !80, !87}
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2549, !2550}
!2543 = !DILocalVariable(name: "o", arg: 1, scope: !2539, file: !231, line: 144, type: !2497)
!2544 = !DILocalVariable(name: "c", arg: 2, scope: !2539, file: !231, line: 144, type: !80)
!2545 = !DILocalVariable(name: "i", arg: 3, scope: !2539, file: !231, line: 144, type: !87)
!2546 = !DILocalVariable(name: "uc", scope: !2539, file: !231, line: 146, type: !86)
!2547 = !DILocalVariable(name: "p", scope: !2539, file: !231, line: 147, type: !2548)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!2549 = !DILocalVariable(name: "shift", scope: !2539, file: !231, line: 149, type: !87)
!2550 = !DILocalVariable(name: "r", scope: !2539, file: !231, line: 150, type: !87)
!2551 = !DILocation(line: 144, column: 43, scope: !2539)
!2552 = !DILocation(line: 144, column: 51, scope: !2539)
!2553 = !DILocation(line: 144, column: 58, scope: !2539)
!2554 = !DILocation(line: 146, column: 17, scope: !2539)
!2555 = !DILocation(line: 148, column: 6, scope: !2539)
!2556 = !DILocation(line: 148, column: 62, scope: !2557)
!2557 = !DILexicalBlockFile(scope: !2539, file: !231, discriminator: 3)
!2558 = !DILocation(line: 148, column: 57, scope: !2557)
!2559 = !DILocation(line: 147, column: 17, scope: !2539)
!2560 = !DILocation(line: 149, column: 18, scope: !2539)
!2561 = !DILocation(line: 149, column: 15, scope: !2539)
!2562 = !DILocation(line: 149, column: 7, scope: !2539)
!2563 = !DILocation(line: 150, column: 12, scope: !2539)
!2564 = !DILocation(line: 150, column: 15, scope: !2539)
!2565 = !DILocation(line: 150, column: 25, scope: !2539)
!2566 = !DILocation(line: 150, column: 7, scope: !2539)
!2567 = !DILocation(line: 151, column: 13, scope: !2539)
!2568 = !DILocation(line: 151, column: 18, scope: !2539)
!2569 = !DILocation(line: 151, column: 23, scope: !2539)
!2570 = !DILocation(line: 151, column: 6, scope: !2539)
!2571 = !DILocation(line: 152, column: 3, scope: !2539)
!2572 = distinct !DISubprogram(name: "set_quoting_flags", scope: !231, file: !231, line: 160, type: !2573, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!87, !2497, !87}
!2575 = !{!2576, !2577, !2578}
!2576 = !DILocalVariable(name: "o", arg: 1, scope: !2572, file: !231, line: 160, type: !2497)
!2577 = !DILocalVariable(name: "i", arg: 2, scope: !2572, file: !231, line: 160, type: !87)
!2578 = !DILocalVariable(name: "r", scope: !2572, file: !231, line: 162, type: !87)
!2579 = !DILocation(line: 160, column: 44, scope: !2572)
!2580 = !DILocation(line: 160, column: 51, scope: !2572)
!2581 = !DILocation(line: 163, column: 8, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2572, file: !231, line: 163, column: 7)
!2583 = !DILocation(line: 163, column: 7, scope: !2572)
!2584 = !DILocation(line: 165, column: 10, scope: !2572)
!2585 = !{!2524, !841, i64 4}
!2586 = !DILocation(line: 162, column: 7, scope: !2572)
!2587 = !DILocation(line: 166, column: 12, scope: !2572)
!2588 = !DILocation(line: 167, column: 3, scope: !2572)
!2589 = distinct !DISubprogram(name: "set_custom_quoting", scope: !231, file: !231, line: 171, type: !2590, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !2497, !78, !78}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "o", arg: 1, scope: !2589, file: !231, line: 171, type: !2497)
!2594 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2589, file: !231, line: 172, type: !78)
!2595 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2589, file: !231, line: 172, type: !78)
!2596 = !DILocation(line: 171, column: 45, scope: !2589)
!2597 = !DILocation(line: 172, column: 33, scope: !2589)
!2598 = !DILocation(line: 172, column: 57, scope: !2589)
!2599 = !DILocation(line: 174, column: 8, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2589, file: !231, line: 174, column: 7)
!2601 = !DILocation(line: 174, column: 7, scope: !2589)
!2602 = !DILocation(line: 176, column: 6, scope: !2589)
!2603 = !DILocation(line: 176, column: 12, scope: !2589)
!2604 = !DILocation(line: 177, column: 8, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2589, file: !231, line: 177, column: 7)
!2606 = !DILocation(line: 177, column: 23, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2605, file: !231, discriminator: 1)
!2608 = !DILocation(line: 177, column: 19, scope: !2605)
!2609 = !DILocation(line: 178, column: 5, scope: !2605)
!2610 = !DILocation(line: 179, column: 6, scope: !2589)
!2611 = !DILocation(line: 179, column: 17, scope: !2589)
!2612 = !{!2524, !711, i64 40}
!2613 = !DILocation(line: 180, column: 6, scope: !2589)
!2614 = !DILocation(line: 180, column: 18, scope: !2589)
!2615 = !{!2524, !711, i64 48}
!2616 = !DILocation(line: 181, column: 1, scope: !2589)
!2617 = distinct !DISubprogram(name: "quotearg_buffer", scope: !231, file: !231, line: 776, type: !2618, isLocal: false, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2620)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!75, !81, !75, !78, !75, !2515}
!2620 = !{!2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!2621 = !DILocalVariable(name: "buffer", arg: 1, scope: !2617, file: !231, line: 776, type: !81)
!2622 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2617, file: !231, line: 776, type: !75)
!2623 = !DILocalVariable(name: "arg", arg: 3, scope: !2617, file: !231, line: 777, type: !78)
!2624 = !DILocalVariable(name: "argsize", arg: 4, scope: !2617, file: !231, line: 777, type: !75)
!2625 = !DILocalVariable(name: "o", arg: 5, scope: !2617, file: !231, line: 778, type: !2515)
!2626 = !DILocalVariable(name: "p", scope: !2617, file: !231, line: 780, type: !2515)
!2627 = !DILocalVariable(name: "e", scope: !2617, file: !231, line: 781, type: !87)
!2628 = !DILocalVariable(name: "r", scope: !2617, file: !231, line: 782, type: !75)
!2629 = !DILocation(line: 776, column: 24, scope: !2617)
!2630 = !DILocation(line: 776, column: 39, scope: !2617)
!2631 = !DILocation(line: 777, column: 30, scope: !2617)
!2632 = !DILocation(line: 777, column: 42, scope: !2617)
!2633 = !DILocation(line: 778, column: 48, scope: !2617)
!2634 = !DILocation(line: 780, column: 37, scope: !2617)
!2635 = !DILocation(line: 780, column: 33, scope: !2617)
!2636 = !DILocation(line: 781, column: 11, scope: !2617)
!2637 = !DILocation(line: 781, column: 7, scope: !2617)
!2638 = !DILocation(line: 783, column: 43, scope: !2617)
!2639 = !DILocation(line: 783, column: 53, scope: !2617)
!2640 = !DILocation(line: 783, column: 60, scope: !2617)
!2641 = !DILocation(line: 784, column: 43, scope: !2617)
!2642 = !DILocation(line: 784, column: 58, scope: !2617)
!2643 = !DILocation(line: 782, column: 14, scope: !2617)
!2644 = !DILocation(line: 782, column: 10, scope: !2617)
!2645 = !DILocation(line: 785, column: 9, scope: !2617)
!2646 = !DILocation(line: 786, column: 3, scope: !2617)
!2647 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !231, file: !231, line: 248, type: !2648, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !2652)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!75, !81, !75, !78, !75, !34, !87, !2650, !78, !78}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2677, !2678, !2679, !2680, !2681, !2684, !2685, !2700, !2703, !2704, !2711}
!2653 = !DILocalVariable(name: "buffer", arg: 1, scope: !2647, file: !231, line: 248, type: !81)
!2654 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2647, file: !231, line: 248, type: !75)
!2655 = !DILocalVariable(name: "arg", arg: 3, scope: !2647, file: !231, line: 249, type: !78)
!2656 = !DILocalVariable(name: "argsize", arg: 4, scope: !2647, file: !231, line: 249, type: !75)
!2657 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2647, file: !231, line: 250, type: !34)
!2658 = !DILocalVariable(name: "flags", arg: 6, scope: !2647, file: !231, line: 250, type: !87)
!2659 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2647, file: !231, line: 251, type: !2650)
!2660 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2647, file: !231, line: 252, type: !78)
!2661 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2647, file: !231, line: 253, type: !78)
!2662 = !DILocalVariable(name: "i", scope: !2647, file: !231, line: 255, type: !75)
!2663 = !DILocalVariable(name: "len", scope: !2647, file: !231, line: 256, type: !75)
!2664 = !DILocalVariable(name: "orig_buffersize", scope: !2647, file: !231, line: 257, type: !75)
!2665 = !DILocalVariable(name: "quote_string", scope: !2647, file: !231, line: 258, type: !78)
!2666 = !DILocalVariable(name: "quote_string_len", scope: !2647, file: !231, line: 259, type: !75)
!2667 = !DILocalVariable(name: "backslash_escapes", scope: !2647, file: !231, line: 260, type: !100)
!2668 = !DILocalVariable(name: "unibyte_locale", scope: !2647, file: !231, line: 261, type: !100)
!2669 = !DILocalVariable(name: "elide_outer_quotes", scope: !2647, file: !231, line: 262, type: !100)
!2670 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2647, file: !231, line: 263, type: !100)
!2671 = !DILocalVariable(name: "encountered_single_quote", scope: !2647, file: !231, line: 264, type: !100)
!2672 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2647, file: !231, line: 265, type: !100)
!2673 = !DILocalVariable(name: "c", scope: !2674, file: !231, line: 394, type: !86)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !231, line: 393, column: 5)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !231, line: 392, column: 3)
!2676 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 392, column: 3)
!2677 = !DILocalVariable(name: "esc", scope: !2674, file: !231, line: 395, type: !86)
!2678 = !DILocalVariable(name: "is_right_quote", scope: !2674, file: !231, line: 396, type: !100)
!2679 = !DILocalVariable(name: "escaping", scope: !2674, file: !231, line: 397, type: !100)
!2680 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2674, file: !231, line: 398, type: !100)
!2681 = !DILocalVariable(name: "m", scope: !2682, file: !231, line: 602, type: !75)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 600, column: 11)
!2683 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 418, column: 9)
!2684 = !DILocalVariable(name: "printable", scope: !2682, file: !231, line: 604, type: !100)
!2685 = !DILocalVariable(name: "mbstate", scope: !2686, file: !231, line: 613, type: !2688)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !231, line: 612, column: 15)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !231, line: 606, column: 17)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2689, line: 107, baseType: !2690)
!2689 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2689, line: 95, baseType: !2691)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2689, line: 83, size: 64, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2691, file: !2689, line: 85, baseType: !87, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2691, file: !2689, line: 94, baseType: !2695, size: 32, offset: 32)
!2695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2691, file: !2689, line: 86, size: 32, elements: !2696)
!2696 = !{!2697, !2698}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2695, file: !2689, line: 89, baseType: !244, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2695, file: !2689, line: 93, baseType: !2699, size: 32)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 32, elements: !163)
!2700 = !DILocalVariable(name: "w", scope: !2701, file: !231, line: 623, type: !2702)
!2701 = distinct !DILexicalBlock(scope: !2686, file: !231, line: 622, column: 19)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 90, baseType: !87)
!2703 = !DILocalVariable(name: "bytes", scope: !2701, file: !231, line: 624, type: !75)
!2704 = !DILocalVariable(name: "j", scope: !2705, file: !231, line: 649, type: !75)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !231, line: 648, column: 27)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !231, line: 646, column: 29)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !231, line: 641, column: 23)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !231, line: 633, column: 30)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !231, line: 628, column: 30)
!2710 = distinct !DILexicalBlock(scope: !2701, file: !231, line: 626, column: 25)
!2711 = !DILocalVariable(name: "ilim", scope: !2712, file: !231, line: 676, type: !75)
!2712 = distinct !DILexicalBlock(scope: !2713, file: !231, line: 673, column: 15)
!2713 = distinct !DILexicalBlock(scope: !2682, file: !231, line: 672, column: 17)
!2714 = !DILocation(line: 248, column: 33, scope: !2647)
!2715 = !DILocation(line: 248, column: 48, scope: !2647)
!2716 = !DILocation(line: 249, column: 39, scope: !2647)
!2717 = !DILocation(line: 249, column: 51, scope: !2647)
!2718 = !DILocation(line: 250, column: 46, scope: !2647)
!2719 = !DILocation(line: 250, column: 65, scope: !2647)
!2720 = !DILocation(line: 251, column: 47, scope: !2647)
!2721 = !DILocation(line: 252, column: 39, scope: !2647)
!2722 = !DILocation(line: 253, column: 39, scope: !2647)
!2723 = !DILocation(line: 256, column: 10, scope: !2647)
!2724 = !DILocation(line: 257, column: 10, scope: !2647)
!2725 = !DILocation(line: 258, column: 15, scope: !2647)
!2726 = !DILocation(line: 259, column: 10, scope: !2647)
!2727 = !DILocation(line: 260, column: 8, scope: !2647)
!2728 = !DILocation(line: 261, column: 25, scope: !2647)
!2729 = !DILocation(line: 261, column: 36, scope: !2647)
!2730 = !DILocation(line: 262, column: 8, scope: !2647)
!2731 = !DILocation(line: 263, column: 8, scope: !2647)
!2732 = !DILocation(line: 264, column: 8, scope: !2647)
!2733 = !DILocation(line: 265, column: 8, scope: !2647)
!2734 = !DILocation(line: 265, column: 3, scope: !2647)
!2735 = !DILocation(line: 308, column: 3, scope: !2647)
!2736 = !DILocation(line: 315, column: 11, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 309, column: 5)
!2738 = !DILocation(line: 315, column: 12, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2737, file: !231, line: 315, column: 11)
!2740 = !DILocation(line: 316, column: 9, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2742, file: !231, discriminator: 1)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !231, line: 316, column: 9)
!2743 = distinct !DILexicalBlock(scope: !2739, file: !231, line: 316, column: 9)
!2744 = !DILocation(line: 316, column: 9, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2743, file: !231, discriminator: 1)
!2746 = !DILocation(line: 316, column: 9, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2742, file: !231, discriminator: 2)
!2748 = !DILocation(line: 354, column: 26, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !231, line: 332, column: 11)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !231, line: 331, column: 13)
!2751 = distinct !DILexicalBlock(scope: !2737, file: !231, line: 330, column: 7)
!2752 = !DILocation(line: 355, column: 27, scope: !2749)
!2753 = !DILocation(line: 356, column: 11, scope: !2749)
!2754 = !DILocation(line: 357, column: 14, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !231, line: 357, column: 13)
!2756 = !DILocation(line: 357, column: 13, scope: !2751)
!2757 = !DILocation(line: 358, column: 43, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2759, file: !231, discriminator: 1)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !231, line: 358, column: 11)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !231, line: 358, column: 11)
!2761 = !DILocation(line: 358, column: 11, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !2760, file: !231, discriminator: 1)
!2763 = !DILocation(line: 359, column: 13, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2765, file: !231, discriminator: 1)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !231, line: 359, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2759, file: !231, line: 359, column: 13)
!2767 = !DILocation(line: 359, column: 13, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2766, file: !231, discriminator: 1)
!2769 = !DILocation(line: 359, column: 13, scope: !2770)
!2770 = !DILexicalBlockFile(scope: !2765, file: !231, discriminator: 2)
!2771 = !DILocation(line: 359, column: 13, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2766, file: !231, discriminator: 3)
!2773 = !DILocation(line: 358, column: 70, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2759, file: !231, discriminator: 2)
!2775 = distinct !{!2775, !2776, !2777}
!2776 = !DILocation(line: 358, column: 11, scope: !2760)
!2777 = !DILocation(line: 359, column: 13, scope: !2760)
!2778 = !DILocation(line: 362, column: 28, scope: !2751)
!2779 = !DILocation(line: 364, column: 7, scope: !2737)
!2780 = !DILocation(line: 367, column: 7, scope: !2737)
!2781 = !DILocation(line: 370, column: 7, scope: !2737)
!2782 = !DILocation(line: 373, column: 12, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2737, file: !231, line: 373, column: 11)
!2784 = !DILocation(line: 373, column: 11, scope: !2737)
!2785 = !DILocation(line: 378, column: 12, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2737, file: !231, line: 378, column: 11)
!2787 = !DILocation(line: 378, column: 11, scope: !2737)
!2788 = !DILocation(line: 379, column: 9, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2790, file: !231, discriminator: 1)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !231, line: 379, column: 9)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !231, line: 379, column: 9)
!2792 = !DILocation(line: 379, column: 9, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2791, file: !231, discriminator: 1)
!2794 = !DILocation(line: 379, column: 9, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2790, file: !231, discriminator: 2)
!2796 = !DILocation(line: 386, column: 7, scope: !2737)
!2797 = !DILocation(line: 389, column: 7, scope: !2737)
!2798 = !DILocation(line: 255, column: 10, scope: !2647)
!2799 = !DILocation(line: 392, column: 8, scope: !2676)
!2800 = !DILocation(line: 392, column: 27, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2675, file: !231, discriminator: 1)
!2802 = !DILocation(line: 392, column: 19, scope: !2801)
!2803 = !DILocation(line: 392, column: 60, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2675, file: !231, discriminator: 3)
!2805 = !DILocation(line: 392, column: 3, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2676, file: !231, discriminator: 4)
!2807 = !DILocation(line: 392, column: 41, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2675, file: !231, discriminator: 2)
!2809 = !DILocation(line: 392, column: 48, scope: !2808)
!2810 = !DILocation(line: 396, column: 12, scope: !2674)
!2811 = !DILocation(line: 397, column: 12, scope: !2674)
!2812 = !DILocation(line: 398, column: 12, scope: !2674)
!2813 = !DILocation(line: 401, column: 11, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 400, column: 11)
!2815 = !DILocation(line: 403, column: 17, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2814, file: !231, discriminator: 1)
!2817 = !DILocation(line: 404, column: 39, scope: !2814)
!2818 = !DILocation(line: 408, column: 32, scope: !2814)
!2819 = !DILocation(line: 404, column: 19, scope: !2820)
!2820 = !DILexicalBlockFile(scope: !2814, file: !231, discriminator: 2)
!2821 = !DILocation(line: 404, column: 15, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2814, file: !231, discriminator: 4)
!2823 = !DILocation(line: 409, column: 11, scope: !2814)
!2824 = !DILocation(line: 409, column: 26, scope: !2816)
!2825 = !DILocation(line: 409, column: 14, scope: !2816)
!2826 = !DILocation(line: 400, column: 11, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2674, file: !231, discriminator: 1)
!2828 = !DILocation(line: 416, column: 11, scope: !2674)
!2829 = !DILocation(line: 394, column: 21, scope: !2674)
!2830 = !DILocation(line: 417, column: 7, scope: !2674)
!2831 = !DILocation(line: 420, column: 15, scope: !2683)
!2832 = !DILocation(line: 422, column: 15, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2834, file: !231, discriminator: 1)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !231, line: 422, column: 15)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !231, line: 421, column: 13)
!2836 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 420, column: 15)
!2837 = !DILocation(line: 422, column: 15, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2839, file: !231, discriminator: 4)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !231, line: 422, column: 15)
!2840 = !DILocation(line: 422, column: 15, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2839, file: !231, discriminator: 3)
!2842 = !DILocation(line: 422, column: 15, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2844, file: !231, discriminator: 6)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !231, line: 422, column: 15)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !231, line: 422, column: 15)
!2846 = distinct !DILexicalBlock(scope: !2839, file: !231, line: 422, column: 15)
!2847 = !DILocation(line: 422, column: 15, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2845, file: !231, discriminator: 6)
!2849 = !DILocation(line: 422, column: 15, scope: !2850)
!2850 = !DILexicalBlockFile(scope: !2844, file: !231, discriminator: 7)
!2851 = !DILocation(line: 422, column: 15, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2845, file: !231, discriminator: 8)
!2853 = !DILocation(line: 422, column: 15, scope: !2854)
!2854 = !DILexicalBlockFile(scope: !2855, file: !231, discriminator: 11)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !231, line: 422, column: 15)
!2856 = distinct !DILexicalBlock(scope: !2846, file: !231, line: 422, column: 15)
!2857 = !DILocation(line: 422, column: 15, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !2856, file: !231, discriminator: 11)
!2859 = !DILocation(line: 422, column: 15, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2855, file: !231, discriminator: 12)
!2861 = !DILocation(line: 422, column: 15, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2856, file: !231, discriminator: 13)
!2863 = !DILocation(line: 422, column: 15, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2865, file: !231, discriminator: 16)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !231, line: 422, column: 15)
!2866 = distinct !DILexicalBlock(scope: !2846, file: !231, line: 422, column: 15)
!2867 = !DILocation(line: 422, column: 15, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2866, file: !231, discriminator: 16)
!2869 = !DILocation(line: 422, column: 15, scope: !2870)
!2870 = !DILexicalBlockFile(scope: !2865, file: !231, discriminator: 17)
!2871 = !DILocation(line: 422, column: 15, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2866, file: !231, discriminator: 18)
!2873 = !DILocation(line: 422, column: 15, scope: !2874)
!2874 = !DILexicalBlockFile(scope: !2846, file: !231, discriminator: 20)
!2875 = !DILocation(line: 422, column: 15, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2877, file: !231, discriminator: 22)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !231, line: 422, column: 15)
!2878 = distinct !DILexicalBlock(scope: !2834, file: !231, line: 422, column: 15)
!2879 = !DILocation(line: 422, column: 15, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2878, file: !231, discriminator: 22)
!2881 = !DILocation(line: 422, column: 15, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2877, file: !231, discriminator: 23)
!2883 = !DILocation(line: 422, column: 15, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2878, file: !231, discriminator: 24)
!2885 = !DILocation(line: 430, column: 19, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2835, file: !231, line: 429, column: 19)
!2887 = !DILocation(line: 430, column: 24, scope: !2888)
!2888 = !DILexicalBlockFile(scope: !2886, file: !231, discriminator: 1)
!2889 = !DILocation(line: 430, column: 28, scope: !2888)
!2890 = !DILocation(line: 430, column: 38, scope: !2888)
!2891 = !DILocation(line: 430, column: 48, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2886, file: !231, discriminator: 2)
!2893 = !DILocation(line: 430, column: 59, scope: !2892)
!2894 = !DILocation(line: 432, column: 19, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2896, file: !231, discriminator: 1)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !231, line: 432, column: 19)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !231, line: 432, column: 19)
!2898 = distinct !DILexicalBlock(scope: !2886, file: !231, line: 431, column: 17)
!2899 = !DILocation(line: 432, column: 19, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2897, file: !231, discriminator: 1)
!2901 = !DILocation(line: 432, column: 19, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2896, file: !231, discriminator: 2)
!2903 = !DILocation(line: 432, column: 19, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !2897, file: !231, discriminator: 3)
!2905 = !DILocation(line: 433, column: 19, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2907, file: !231, discriminator: 1)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !231, line: 433, column: 19)
!2908 = distinct !DILexicalBlock(scope: !2898, file: !231, line: 433, column: 19)
!2909 = !DILocation(line: 433, column: 19, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2908, file: !231, discriminator: 1)
!2911 = !DILocation(line: 433, column: 19, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2907, file: !231, discriminator: 2)
!2913 = !DILocation(line: 433, column: 19, scope: !2914)
!2914 = !DILexicalBlockFile(scope: !2908, file: !231, discriminator: 3)
!2915 = !DILocation(line: 434, column: 17, scope: !2898)
!2916 = !DILocation(line: 441, column: 20, scope: !2836)
!2917 = !DILocation(line: 446, column: 11, scope: !2683)
!2918 = !DILocation(line: 449, column: 19, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 447, column: 13)
!2920 = !DILocation(line: 455, column: 19, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !231, line: 454, column: 19)
!2922 = !DILocation(line: 455, column: 24, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2921, file: !231, discriminator: 1)
!2924 = !DILocation(line: 455, column: 28, scope: !2923)
!2925 = !DILocation(line: 455, column: 38, scope: !2923)
!2926 = !DILocation(line: 455, column: 47, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2921, file: !231, discriminator: 2)
!2928 = !DILocation(line: 455, column: 41, scope: !2927)
!2929 = !DILocation(line: 455, column: 52, scope: !2927)
!2930 = !DILocation(line: 454, column: 19, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2919, file: !231, discriminator: 1)
!2932 = !DILocation(line: 456, column: 25, scope: !2921)
!2933 = !DILocation(line: 456, column: 17, scope: !2921)
!2934 = !DILocation(line: 463, column: 25, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2921, file: !231, line: 457, column: 19)
!2936 = !DILocation(line: 467, column: 21, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !2938, file: !231, discriminator: 1)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !231, line: 467, column: 21)
!2939 = distinct !DILexicalBlock(scope: !2935, file: !231, line: 467, column: 21)
!2940 = !DILocation(line: 467, column: 21, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2939, file: !231, discriminator: 1)
!2942 = !DILocation(line: 467, column: 21, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2938, file: !231, discriminator: 2)
!2944 = !DILocation(line: 467, column: 21, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !2939, file: !231, discriminator: 3)
!2946 = !DILocation(line: 468, column: 21, scope: !2947)
!2947 = !DILexicalBlockFile(scope: !2948, file: !231, discriminator: 1)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !231, line: 468, column: 21)
!2949 = distinct !DILexicalBlock(scope: !2935, file: !231, line: 468, column: 21)
!2950 = !DILocation(line: 468, column: 21, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2949, file: !231, discriminator: 1)
!2952 = !DILocation(line: 468, column: 21, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2948, file: !231, discriminator: 2)
!2954 = !DILocation(line: 468, column: 21, scope: !2955)
!2955 = !DILexicalBlockFile(scope: !2949, file: !231, discriminator: 3)
!2956 = !DILocation(line: 469, column: 21, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2958, file: !231, discriminator: 1)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !231, line: 469, column: 21)
!2959 = distinct !DILexicalBlock(scope: !2935, file: !231, line: 469, column: 21)
!2960 = !DILocation(line: 469, column: 21, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2959, file: !231, discriminator: 1)
!2962 = !DILocation(line: 469, column: 21, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2958, file: !231, discriminator: 2)
!2964 = !DILocation(line: 469, column: 21, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2959, file: !231, discriminator: 3)
!2966 = !DILocation(line: 470, column: 21, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !231, discriminator: 1)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !231, line: 470, column: 21)
!2969 = distinct !DILexicalBlock(scope: !2935, file: !231, line: 470, column: 21)
!2970 = !DILocation(line: 470, column: 21, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2969, file: !231, discriminator: 1)
!2972 = !DILocation(line: 470, column: 21, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2968, file: !231, discriminator: 2)
!2974 = !DILocation(line: 470, column: 21, scope: !2975)
!2975 = !DILexicalBlockFile(scope: !2969, file: !231, discriminator: 3)
!2976 = !DILocation(line: 471, column: 21, scope: !2935)
!2977 = !DILocation(line: 395, column: 21, scope: !2674)
!2978 = !DILocation(line: 484, column: 31, scope: !2683)
!2979 = !DILocation(line: 485, column: 31, scope: !2683)
!2980 = !DILocation(line: 487, column: 31, scope: !2683)
!2981 = !DILocation(line: 488, column: 31, scope: !2683)
!2982 = !DILocation(line: 489, column: 31, scope: !2683)
!2983 = !DILocation(line: 492, column: 15, scope: !2683)
!2984 = !DILocation(line: 494, column: 19, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !231, line: 493, column: 13)
!2986 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 492, column: 15)
!2987 = !DILocation(line: 501, column: 33, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 501, column: 15)
!2989 = !DILocation(line: 506, column: 15, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 505, column: 15)
!2991 = !DILocation(line: 510, column: 15, scope: !2683)
!2992 = !DILocation(line: 518, column: 26, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 518, column: 15)
!2994 = !DILocation(line: 518, column: 15, scope: !2683)
!2995 = !DILocation(line: 518, column: 40, scope: !2996)
!2996 = !DILexicalBlockFile(scope: !2993, file: !231, discriminator: 1)
!2997 = !DILocation(line: 518, column: 47, scope: !2996)
!2998 = !DILocation(line: 522, column: 17, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 522, column: 15)
!3000 = !DILocation(line: 518, column: 18, scope: !2996)
!3001 = !DILocation(line: 518, column: 65, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !2993, file: !231, discriminator: 2)
!3003 = !DILocation(line: 518, column: 15, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !2683, file: !231, discriminator: 2)
!3005 = !DILocation(line: 522, column: 15, scope: !2683)
!3006 = !DILocation(line: 526, column: 11, scope: !2683)
!3007 = !DILocation(line: 541, column: 15, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 540, column: 15)
!3009 = !DILocation(line: 548, column: 15, scope: !2683)
!3010 = !DILocation(line: 550, column: 19, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !231, line: 549, column: 13)
!3012 = distinct !DILexicalBlock(scope: !2683, file: !231, line: 548, column: 15)
!3013 = !DILocation(line: 553, column: 19, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !231, line: 553, column: 19)
!3015 = !DILocation(line: 553, column: 35, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3014, file: !231, discriminator: 1)
!3017 = !DILocation(line: 553, column: 30, scope: !3014)
!3018 = !DILocation(line: 562, column: 15, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3020, file: !231, discriminator: 1)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !231, line: 562, column: 15)
!3021 = distinct !DILexicalBlock(scope: !3011, file: !231, line: 562, column: 15)
!3022 = !DILocation(line: 562, column: 15, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3021, file: !231, discriminator: 1)
!3024 = !DILocation(line: 562, column: 15, scope: !3025)
!3025 = !DILexicalBlockFile(scope: !3020, file: !231, discriminator: 2)
!3026 = !DILocation(line: 562, column: 15, scope: !3027)
!3027 = !DILexicalBlockFile(scope: !3021, file: !231, discriminator: 3)
!3028 = !DILocation(line: 563, column: 15, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3030, file: !231, discriminator: 1)
!3030 = distinct !DILexicalBlock(scope: !3031, file: !231, line: 563, column: 15)
!3031 = distinct !DILexicalBlock(scope: !3011, file: !231, line: 563, column: 15)
!3032 = !DILocation(line: 563, column: 15, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3031, file: !231, discriminator: 1)
!3034 = !DILocation(line: 563, column: 15, scope: !3035)
!3035 = !DILexicalBlockFile(scope: !3030, file: !231, discriminator: 2)
!3036 = !DILocation(line: 563, column: 15, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3031, file: !231, discriminator: 3)
!3038 = !DILocation(line: 564, column: 15, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3040, file: !231, discriminator: 1)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !231, line: 564, column: 15)
!3041 = distinct !DILexicalBlock(scope: !3011, file: !231, line: 564, column: 15)
!3042 = !DILocation(line: 564, column: 15, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !3041, file: !231, discriminator: 1)
!3044 = !DILocation(line: 564, column: 15, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3040, file: !231, discriminator: 2)
!3046 = !DILocation(line: 564, column: 15, scope: !3047)
!3047 = !DILexicalBlockFile(scope: !3041, file: !231, discriminator: 3)
!3048 = !DILocation(line: 566, column: 13, scope: !3011)
!3049 = !DILocation(line: 606, column: 17, scope: !2682)
!3050 = !DILocation(line: 602, column: 20, scope: !2682)
!3051 = !DILocation(line: 609, column: 29, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2687, file: !231, line: 607, column: 15)
!3053 = !DILocation(line: 609, column: 27, scope: !3052)
!3054 = !DILocation(line: 604, column: 18, scope: !2682)
!3055 = !DILocation(line: 610, column: 15, scope: !3052)
!3056 = !DILocation(line: 613, column: 17, scope: !2686)
!3057 = !DILocation(line: 614, column: 17, scope: !2686)
!3058 = !DILocation(line: 618, column: 29, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !2686, file: !231, line: 618, column: 21)
!3060 = !DILocation(line: 618, column: 21, scope: !2686)
!3061 = distinct !{!3061, !3062, !3063}
!3062 = !DILocation(line: 621, column: 17, scope: !2686)
!3063 = !DILocation(line: 667, column: 44, scope: !2686)
!3064 = !DILocation(line: 619, column: 29, scope: !3059)
!3065 = !DILocation(line: 619, column: 19, scope: !3059)
!3066 = !DILocation(line: 623, column: 21, scope: !2701)
!3067 = !DILocation(line: 624, column: 56, scope: !2701)
!3068 = !DILocation(line: 624, column: 50, scope: !2701)
!3069 = !DILocation(line: 625, column: 53, scope: !2701)
!3070 = !DILocation(line: 613, column: 27, scope: !2686)
!3071 = !DILocation(line: 623, column: 29, scope: !2701)
!3072 = !DILocation(line: 624, column: 36, scope: !2701)
!3073 = !DILocation(line: 624, column: 28, scope: !2701)
!3074 = !DILocation(line: 626, column: 25, scope: !2701)
!3075 = !DILocation(line: 636, column: 38, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3077, file: !231, discriminator: 1)
!3077 = distinct !DILexicalBlock(scope: !2708, file: !231, line: 634, column: 23)
!3078 = !DILocation(line: 636, column: 48, scope: !3076)
!3079 = !DILocation(line: 636, column: 51, scope: !3080)
!3080 = !DILexicalBlockFile(scope: !3077, file: !231, discriminator: 2)
!3081 = !DILocation(line: 636, column: 48, scope: !3080)
!3082 = !DILocation(line: 636, column: 25, scope: !3083)
!3083 = !DILexicalBlockFile(scope: !3077, file: !231, discriminator: 3)
!3084 = !DILocation(line: 637, column: 28, scope: !3077)
!3085 = !DILocation(line: 636, column: 34, scope: !3076)
!3086 = distinct !{!3086, !3087, !3084}
!3087 = !DILocation(line: 636, column: 25, scope: !3077)
!3088 = !DILocation(line: 650, column: 43, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3090, file: !231, discriminator: 1)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !231, line: 650, column: 29)
!3091 = distinct !DILexicalBlock(scope: !2705, file: !231, line: 650, column: 29)
!3092 = !DILocation(line: 647, column: 29, scope: !2706)
!3093 = !DILocation(line: 649, column: 36, scope: !2705)
!3094 = !DILocation(line: 651, column: 49, scope: !3090)
!3095 = !DILocation(line: 651, column: 39, scope: !3090)
!3096 = !DILocation(line: 651, column: 31, scope: !3090)
!3097 = !DILocation(line: 650, column: 53, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3090, file: !231, discriminator: 2)
!3099 = !DILocation(line: 650, column: 29, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3091, file: !231, discriminator: 1)
!3101 = distinct !{!3101, !3102, !3103}
!3102 = !DILocation(line: 650, column: 29, scope: !3091)
!3103 = !DILocation(line: 659, column: 33, scope: !3091)
!3104 = !DILocation(line: 666, column: 19, scope: !2686)
!3105 = !DILocation(line: 662, column: 41, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !2707, file: !231, line: 662, column: 29)
!3107 = !DILocation(line: 662, column: 31, scope: !3106)
!3108 = !DILocation(line: 662, column: 29, scope: !2707)
!3109 = !DILocation(line: 664, column: 27, scope: !2707)
!3110 = !DILocation(line: 667, column: 26, scope: !2686)
!3111 = !DILocation(line: 667, column: 24, scope: !2686)
!3112 = !DILocation(line: 666, column: 19, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !2701, file: !231, discriminator: 3)
!3114 = !DILocation(line: 668, column: 15, scope: !2687)
!3115 = !DILocation(line: 670, column: 40, scope: !2682)
!3116 = !DILocation(line: 672, column: 19, scope: !2713)
!3117 = !DILocation(line: 672, column: 45, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !2713, file: !231, discriminator: 1)
!3119 = !DILocation(line: 672, column: 23, scope: !2713)
!3120 = !DILocation(line: 676, column: 33, scope: !2712)
!3121 = !DILocation(line: 676, column: 24, scope: !2712)
!3122 = !DILocation(line: 678, column: 17, scope: !2712)
!3123 = !DILocation(line: 680, column: 43, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !231, line: 680, column: 25)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !231, line: 679, column: 19)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !231, line: 678, column: 17)
!3127 = distinct !DILexicalBlock(scope: !2712, file: !231, line: 678, column: 17)
!3128 = !DILocation(line: 682, column: 25, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3130, file: !231, discriminator: 1)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !231, line: 682, column: 25)
!3131 = distinct !DILexicalBlock(scope: !3124, file: !231, line: 681, column: 23)
!3132 = !DILocation(line: 682, column: 25, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3134, file: !231, discriminator: 4)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !231, line: 682, column: 25)
!3135 = !DILocation(line: 682, column: 25, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3134, file: !231, discriminator: 3)
!3137 = !DILocation(line: 682, column: 25, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3139, file: !231, discriminator: 6)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !231, line: 682, column: 25)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !231, line: 682, column: 25)
!3141 = distinct !DILexicalBlock(scope: !3134, file: !231, line: 682, column: 25)
!3142 = !DILocation(line: 682, column: 25, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !3140, file: !231, discriminator: 6)
!3144 = !DILocation(line: 682, column: 25, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3139, file: !231, discriminator: 7)
!3146 = !DILocation(line: 682, column: 25, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3140, file: !231, discriminator: 8)
!3148 = !DILocation(line: 682, column: 25, scope: !3149)
!3149 = !DILexicalBlockFile(scope: !3150, file: !231, discriminator: 11)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !231, line: 682, column: 25)
!3151 = distinct !DILexicalBlock(scope: !3141, file: !231, line: 682, column: 25)
!3152 = !DILocation(line: 682, column: 25, scope: !3153)
!3153 = !DILexicalBlockFile(scope: !3151, file: !231, discriminator: 11)
!3154 = !DILocation(line: 682, column: 25, scope: !3155)
!3155 = !DILexicalBlockFile(scope: !3150, file: !231, discriminator: 12)
!3156 = !DILocation(line: 682, column: 25, scope: !3157)
!3157 = !DILexicalBlockFile(scope: !3151, file: !231, discriminator: 13)
!3158 = !DILocation(line: 682, column: 25, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3160, file: !231, discriminator: 16)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !231, line: 682, column: 25)
!3161 = distinct !DILexicalBlock(scope: !3141, file: !231, line: 682, column: 25)
!3162 = !DILocation(line: 682, column: 25, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3161, file: !231, discriminator: 16)
!3164 = !DILocation(line: 682, column: 25, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3160, file: !231, discriminator: 17)
!3166 = !DILocation(line: 682, column: 25, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3161, file: !231, discriminator: 18)
!3168 = !DILocation(line: 682, column: 25, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3141, file: !231, discriminator: 20)
!3170 = !DILocation(line: 682, column: 25, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3172, file: !231, discriminator: 22)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !231, line: 682, column: 25)
!3173 = distinct !DILexicalBlock(scope: !3130, file: !231, line: 682, column: 25)
!3174 = !DILocation(line: 682, column: 25, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3173, file: !231, discriminator: 22)
!3176 = !DILocation(line: 682, column: 25, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !3172, file: !231, discriminator: 23)
!3178 = !DILocation(line: 682, column: 25, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3173, file: !231, discriminator: 24)
!3180 = !DILocation(line: 683, column: 25, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3182, file: !231, discriminator: 1)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !231, line: 683, column: 25)
!3183 = distinct !DILexicalBlock(scope: !3131, file: !231, line: 683, column: 25)
!3184 = !DILocation(line: 683, column: 25, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3183, file: !231, discriminator: 1)
!3186 = !DILocation(line: 683, column: 25, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3182, file: !231, discriminator: 2)
!3188 = !DILocation(line: 683, column: 25, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3183, file: !231, discriminator: 3)
!3190 = !DILocation(line: 684, column: 25, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !231, discriminator: 1)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !231, line: 684, column: 25)
!3193 = distinct !DILexicalBlock(scope: !3131, file: !231, line: 684, column: 25)
!3194 = !DILocation(line: 684, column: 25, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3193, file: !231, discriminator: 1)
!3196 = !DILocation(line: 684, column: 25, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3192, file: !231, discriminator: 2)
!3198 = !DILocation(line: 684, column: 25, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3193, file: !231, discriminator: 3)
!3200 = !DILocation(line: 685, column: 38, scope: !3131)
!3201 = !DILocation(line: 685, column: 33, scope: !3131)
!3202 = !DILocation(line: 686, column: 23, scope: !3131)
!3203 = !DILocation(line: 687, column: 30, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3124, file: !231, line: 687, column: 30)
!3205 = !DILocation(line: 687, column: 30, scope: !3124)
!3206 = !DILocation(line: 689, column: 25, scope: !3207)
!3207 = !DILexicalBlockFile(scope: !3208, file: !231, discriminator: 1)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !231, line: 689, column: 25)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !231, line: 689, column: 25)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !231, line: 688, column: 23)
!3211 = !DILocation(line: 689, column: 25, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !3209, file: !231, discriminator: 1)
!3213 = !DILocation(line: 689, column: 25, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3208, file: !231, discriminator: 2)
!3215 = !DILocation(line: 689, column: 25, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3209, file: !231, discriminator: 3)
!3217 = !DILocation(line: 691, column: 23, scope: !3210)
!3218 = !DILocation(line: 692, column: 35, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3125, file: !231, line: 692, column: 25)
!3220 = !DILocation(line: 692, column: 30, scope: !3219)
!3221 = !DILocation(line: 692, column: 25, scope: !3125)
!3222 = !DILocation(line: 694, column: 21, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3224, file: !231, discriminator: 1)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !231, line: 694, column: 21)
!3225 = distinct !DILexicalBlock(scope: !3125, file: !231, line: 694, column: 21)
!3226 = !DILocation(line: 694, column: 21, scope: !3227)
!3227 = !DILexicalBlockFile(scope: !3224, file: !231, discriminator: 2)
!3228 = !DILocation(line: 694, column: 21, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3230, file: !231, discriminator: 4)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !231, line: 694, column: 21)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !231, line: 694, column: 21)
!3232 = distinct !DILexicalBlock(scope: !3224, file: !231, line: 694, column: 21)
!3233 = !DILocation(line: 694, column: 21, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3231, file: !231, discriminator: 4)
!3235 = !DILocation(line: 694, column: 21, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3230, file: !231, discriminator: 5)
!3237 = !DILocation(line: 694, column: 21, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3231, file: !231, discriminator: 6)
!3239 = !DILocation(line: 694, column: 21, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3241, file: !231, discriminator: 9)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !231, line: 694, column: 21)
!3242 = distinct !DILexicalBlock(scope: !3232, file: !231, line: 694, column: 21)
!3243 = !DILocation(line: 694, column: 21, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3242, file: !231, discriminator: 9)
!3245 = !DILocation(line: 694, column: 21, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3241, file: !231, discriminator: 10)
!3247 = !DILocation(line: 694, column: 21, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3242, file: !231, discriminator: 11)
!3249 = !DILocation(line: 694, column: 21, scope: !3250)
!3250 = !DILexicalBlockFile(scope: !3232, file: !231, discriminator: 13)
!3251 = !DILocation(line: 695, column: 21, scope: !3252)
!3252 = !DILexicalBlockFile(scope: !3253, file: !231, discriminator: 1)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !231, line: 695, column: 21)
!3254 = distinct !DILexicalBlock(scope: !3125, file: !231, line: 695, column: 21)
!3255 = !DILocation(line: 695, column: 21, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3254, file: !231, discriminator: 1)
!3257 = !DILocation(line: 695, column: 21, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3253, file: !231, discriminator: 2)
!3259 = !DILocation(line: 695, column: 21, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3254, file: !231, discriminator: 3)
!3261 = !DILocation(line: 696, column: 25, scope: !3125)
!3262 = !DILocation(line: 678, column: 17, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3126, file: !231, discriminator: 1)
!3264 = distinct !{!3264, !3265, !3266}
!3265 = !DILocation(line: 678, column: 17, scope: !3127)
!3266 = !DILocation(line: 697, column: 19, scope: !3127)
!3267 = !DILocation(line: 704, column: 34, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 704, column: 11)
!3269 = !DILocation(line: 706, column: 14, scope: !3268)
!3270 = !DILocation(line: 707, column: 14, scope: !3268)
!3271 = !DILocation(line: 707, column: 35, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3268, file: !231, discriminator: 1)
!3273 = !DILocation(line: 707, column: 17, scope: !3272)
!3274 = !DILocation(line: 707, column: 53, scope: !3272)
!3275 = !DILocation(line: 707, column: 47, scope: !3272)
!3276 = !DILocation(line: 707, column: 65, scope: !3272)
!3277 = !DILocation(line: 708, column: 15, scope: !3272)
!3278 = !DILocation(line: 708, column: 11, scope: !3268)
!3279 = !DILocation(line: 704, column: 11, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !2674, file: !231, discriminator: 2)
!3281 = !DILocation(line: 712, column: 7, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3283, file: !231, discriminator: 1)
!3283 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 712, column: 7)
!3284 = !DILocation(line: 712, column: 7, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3286, file: !231, discriminator: 4)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !231, line: 712, column: 7)
!3287 = !DILocation(line: 712, column: 7, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3286, file: !231, discriminator: 3)
!3289 = !DILocation(line: 712, column: 7, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !3291, file: !231, discriminator: 6)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !231, line: 712, column: 7)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !231, line: 712, column: 7)
!3293 = distinct !DILexicalBlock(scope: !3286, file: !231, line: 712, column: 7)
!3294 = !DILocation(line: 712, column: 7, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3292, file: !231, discriminator: 6)
!3296 = !DILocation(line: 712, column: 7, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !3291, file: !231, discriminator: 7)
!3298 = !DILocation(line: 712, column: 7, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3292, file: !231, discriminator: 8)
!3300 = !DILocation(line: 712, column: 7, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3302, file: !231, discriminator: 11)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !231, line: 712, column: 7)
!3303 = distinct !DILexicalBlock(scope: !3293, file: !231, line: 712, column: 7)
!3304 = !DILocation(line: 712, column: 7, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3303, file: !231, discriminator: 11)
!3306 = !DILocation(line: 712, column: 7, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3302, file: !231, discriminator: 12)
!3308 = !DILocation(line: 712, column: 7, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !3303, file: !231, discriminator: 13)
!3310 = !DILocation(line: 712, column: 7, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3312, file: !231, discriminator: 16)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !231, line: 712, column: 7)
!3313 = distinct !DILexicalBlock(scope: !3293, file: !231, line: 712, column: 7)
!3314 = !DILocation(line: 712, column: 7, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3313, file: !231, discriminator: 16)
!3316 = !DILocation(line: 712, column: 7, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !3312, file: !231, discriminator: 17)
!3318 = !DILocation(line: 712, column: 7, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3313, file: !231, discriminator: 18)
!3320 = !DILocation(line: 712, column: 7, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3293, file: !231, discriminator: 20)
!3322 = !DILocation(line: 712, column: 7, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3324, file: !231, discriminator: 22)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !231, line: 712, column: 7)
!3325 = distinct !DILexicalBlock(scope: !3283, file: !231, line: 712, column: 7)
!3326 = !DILocation(line: 712, column: 7, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !3325, file: !231, discriminator: 22)
!3328 = !DILocation(line: 712, column: 7, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3324, file: !231, discriminator: 23)
!3330 = !DILocation(line: 712, column: 7, scope: !3331)
!3331 = !DILexicalBlockFile(scope: !3325, file: !231, discriminator: 24)
!3332 = !DILocation(line: 715, column: 7, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3334, file: !231, discriminator: 1)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !231, line: 715, column: 7)
!3335 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 715, column: 7)
!3336 = !DILocation(line: 715, column: 7, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3334, file: !231, discriminator: 2)
!3338 = !DILocation(line: 715, column: 7, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !231, discriminator: 4)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !231, line: 715, column: 7)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !231, line: 715, column: 7)
!3342 = distinct !DILexicalBlock(scope: !3334, file: !231, line: 715, column: 7)
!3343 = !DILocation(line: 715, column: 7, scope: !3344)
!3344 = !DILexicalBlockFile(scope: !3341, file: !231, discriminator: 4)
!3345 = !DILocation(line: 715, column: 7, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3340, file: !231, discriminator: 5)
!3347 = !DILocation(line: 715, column: 7, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !3341, file: !231, discriminator: 6)
!3349 = !DILocation(line: 715, column: 7, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3351, file: !231, discriminator: 9)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !231, line: 715, column: 7)
!3352 = distinct !DILexicalBlock(scope: !3342, file: !231, line: 715, column: 7)
!3353 = !DILocation(line: 715, column: 7, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3352, file: !231, discriminator: 9)
!3355 = !DILocation(line: 715, column: 7, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3351, file: !231, discriminator: 10)
!3357 = !DILocation(line: 715, column: 7, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3352, file: !231, discriminator: 11)
!3359 = !DILocation(line: 715, column: 7, scope: !3360)
!3360 = !DILexicalBlockFile(scope: !3342, file: !231, discriminator: 13)
!3361 = !DILocation(line: 716, column: 7, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !3363, file: !231, discriminator: 1)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !231, line: 716, column: 7)
!3364 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 716, column: 7)
!3365 = !DILocation(line: 716, column: 7, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3364, file: !231, discriminator: 1)
!3367 = !DILocation(line: 716, column: 7, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3363, file: !231, discriminator: 2)
!3369 = !DILocation(line: 716, column: 7, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3364, file: !231, discriminator: 3)
!3371 = !DILocation(line: 718, column: 13, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !2674, file: !231, line: 718, column: 11)
!3373 = !DILocation(line: 718, column: 11, scope: !2674)
!3374 = !DILocation(line: 720, column: 5, scope: !2675)
!3375 = !DILocation(line: 392, column: 75, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !2675, file: !231, discriminator: 5)
!3377 = !DILocation(line: 392, column: 3, scope: !3376)
!3378 = distinct !{!3378, !3379, !3380}
!3379 = !DILocation(line: 392, column: 3, scope: !2676)
!3380 = !DILocation(line: 720, column: 5, scope: !2676)
!3381 = !DILocation(line: 722, column: 11, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 722, column: 7)
!3383 = !DILocation(line: 722, column: 16, scope: !3382)
!3384 = !DILocation(line: 730, column: 51, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 730, column: 7)
!3386 = !DILocation(line: 731, column: 10, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3385, file: !231, discriminator: 1)
!3388 = !DILocation(line: 733, column: 11, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !231, line: 733, column: 11)
!3390 = distinct !DILexicalBlock(scope: !3385, file: !231, line: 732, column: 5)
!3391 = !DILocation(line: 733, column: 11, scope: !3390)
!3392 = !DILocation(line: 734, column: 16, scope: !3389)
!3393 = !DILocation(line: 734, column: 9, scope: !3389)
!3394 = !DILocation(line: 738, column: 18, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3389, file: !231, line: 738, column: 16)
!3396 = !DILocation(line: 738, column: 32, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3395, file: !231, discriminator: 1)
!3398 = !DILocation(line: 738, column: 29, scope: !3395)
!3399 = !DILocation(line: 747, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 747, column: 7)
!3401 = !DILocation(line: 747, column: 20, scope: !3400)
!3402 = !DILocation(line: 748, column: 12, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3404, file: !231, discriminator: 1)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !231, line: 748, column: 5)
!3405 = distinct !DILexicalBlock(scope: !3400, file: !231, line: 748, column: 5)
!3406 = !DILocation(line: 748, column: 5, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3405, file: !231, discriminator: 1)
!3408 = !DILocation(line: 749, column: 7, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3410, file: !231, discriminator: 1)
!3410 = distinct !DILexicalBlock(scope: !3411, file: !231, line: 749, column: 7)
!3411 = distinct !DILexicalBlock(scope: !3404, file: !231, line: 749, column: 7)
!3412 = !DILocation(line: 749, column: 7, scope: !3413)
!3413 = !DILexicalBlockFile(scope: !3411, file: !231, discriminator: 1)
!3414 = !DILocation(line: 749, column: 7, scope: !3415)
!3415 = !DILexicalBlockFile(scope: !3410, file: !231, discriminator: 2)
!3416 = !DILocation(line: 749, column: 7, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3411, file: !231, discriminator: 3)
!3418 = !DILocation(line: 748, column: 39, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3404, file: !231, discriminator: 2)
!3420 = distinct !{!3420, !3421, !3422}
!3421 = !DILocation(line: 748, column: 5, scope: !3405)
!3422 = !DILocation(line: 749, column: 7, scope: !3405)
!3423 = !DILocation(line: 751, column: 11, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 751, column: 7)
!3425 = !DILocation(line: 751, column: 7, scope: !2647)
!3426 = !DILocation(line: 752, column: 5, scope: !3424)
!3427 = !DILocation(line: 752, column: 17, scope: !3424)
!3428 = !DILocation(line: 758, column: 21, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !2647, file: !231, line: 758, column: 7)
!3430 = !DILocation(line: 758, column: 54, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3429, file: !231, discriminator: 1)
!3432 = !DILocation(line: 758, column: 51, scope: !3429)
!3433 = !DILocation(line: 762, column: 42, scope: !2647)
!3434 = !DILocation(line: 760, column: 10, scope: !2647)
!3435 = !DILocation(line: 760, column: 3, scope: !2647)
!3436 = !DILocation(line: 764, column: 1, scope: !2647)
!3437 = distinct !DISubprogram(name: "gettext_quote", scope: !231, file: !231, line: 199, type: !3438, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!78, !78, !34}
!3440 = !{!3441, !3442, !3443, !3444}
!3441 = !DILocalVariable(name: "msgid", arg: 1, scope: !3437, file: !231, line: 199, type: !78)
!3442 = !DILocalVariable(name: "s", arg: 2, scope: !3437, file: !231, line: 199, type: !34)
!3443 = !DILocalVariable(name: "translation", scope: !3437, file: !231, line: 201, type: !78)
!3444 = !DILocalVariable(name: "locale_code", scope: !3437, file: !231, line: 202, type: !78)
!3445 = !DILocation(line: 199, column: 28, scope: !3437)
!3446 = !DILocation(line: 199, column: 54, scope: !3437)
!3447 = !DILocation(line: 201, column: 29, scope: !3437)
!3448 = !DILocation(line: 201, column: 15, scope: !3437)
!3449 = !DILocation(line: 204, column: 19, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3437, file: !231, line: 204, column: 7)
!3451 = !DILocation(line: 204, column: 7, scope: !3437)
!3452 = !DILocation(line: 225, column: 17, scope: !3437)
!3453 = !DILocation(line: 202, column: 15, scope: !3437)
!3454 = !DILocalVariable(name: "s2", arg: 2, scope: !3455, file: !3456, line: 160, type: !78)
!3455 = distinct !DISubprogram(name: "strcaseeq0", scope: !3456, file: !3456, line: 160, type: !3457, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3459)
!3456 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!87, !78, !78, !80, !80, !80, !80, !80, !80, !80, !80, !80}
!3459 = !{!3460, !3454, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469}
!3460 = !DILocalVariable(name: "s1", arg: 1, scope: !3455, file: !3456, line: 160, type: !78)
!3461 = !DILocalVariable(name: "s20", arg: 3, scope: !3455, file: !3456, line: 160, type: !80)
!3462 = !DILocalVariable(name: "s21", arg: 4, scope: !3455, file: !3456, line: 160, type: !80)
!3463 = !DILocalVariable(name: "s22", arg: 5, scope: !3455, file: !3456, line: 160, type: !80)
!3464 = !DILocalVariable(name: "s23", arg: 6, scope: !3455, file: !3456, line: 160, type: !80)
!3465 = !DILocalVariable(name: "s24", arg: 7, scope: !3455, file: !3456, line: 160, type: !80)
!3466 = !DILocalVariable(name: "s25", arg: 8, scope: !3455, file: !3456, line: 160, type: !80)
!3467 = !DILocalVariable(name: "s26", arg: 9, scope: !3455, file: !3456, line: 160, type: !80)
!3468 = !DILocalVariable(name: "s27", arg: 10, scope: !3455, file: !3456, line: 160, type: !80)
!3469 = !DILocalVariable(name: "s28", arg: 11, scope: !3455, file: !3456, line: 160, type: !80)
!3470 = !DILocation(line: 160, column: 41, scope: !3455, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 226, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3437, file: !231, line: 226, column: 7)
!3473 = !DILocation(line: 160, column: 120, scope: !3455, inlinedAt: !3471)
!3474 = !DILocation(line: 160, column: 130, scope: !3455, inlinedAt: !3471)
!3475 = !DILocation(line: 162, column: 7, scope: !3476, inlinedAt: !3471)
!3476 = !DILexicalBlockFile(scope: !3477, file: !3456, discriminator: 1)
!3477 = distinct !DILexicalBlock(scope: !3455, file: !3456, line: 162, column: 7)
!3478 = !DILocalVariable(name: "s2", arg: 2, scope: !3479, file: !3456, line: 146, type: !78)
!3479 = distinct !DISubprogram(name: "strcaseeq1", scope: !3456, file: !3456, line: 146, type: !3480, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3482)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!87, !78, !78, !80, !80, !80, !80, !80, !80, !80, !80}
!3482 = !{!3483, !3478, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491}
!3483 = !DILocalVariable(name: "s1", arg: 1, scope: !3479, file: !3456, line: 146, type: !78)
!3484 = !DILocalVariable(name: "s21", arg: 3, scope: !3479, file: !3456, line: 146, type: !80)
!3485 = !DILocalVariable(name: "s22", arg: 4, scope: !3479, file: !3456, line: 146, type: !80)
!3486 = !DILocalVariable(name: "s23", arg: 5, scope: !3479, file: !3456, line: 146, type: !80)
!3487 = !DILocalVariable(name: "s24", arg: 6, scope: !3479, file: !3456, line: 146, type: !80)
!3488 = !DILocalVariable(name: "s25", arg: 7, scope: !3479, file: !3456, line: 146, type: !80)
!3489 = !DILocalVariable(name: "s26", arg: 8, scope: !3479, file: !3456, line: 146, type: !80)
!3490 = !DILocalVariable(name: "s27", arg: 9, scope: !3479, file: !3456, line: 146, type: !80)
!3491 = !DILocalVariable(name: "s28", arg: 10, scope: !3479, file: !3456, line: 146, type: !80)
!3492 = !DILocation(line: 146, column: 41, scope: !3479, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 167, column: 16, scope: !3494, inlinedAt: !3471)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3456, line: 164, column: 11)
!3495 = distinct !DILexicalBlock(scope: !3477, file: !3456, line: 163, column: 5)
!3496 = !DILocation(line: 146, column: 110, scope: !3479, inlinedAt: !3493)
!3497 = !DILocation(line: 146, column: 120, scope: !3479, inlinedAt: !3493)
!3498 = !DILocation(line: 148, column: 7, scope: !3499, inlinedAt: !3493)
!3499 = !DILexicalBlockFile(scope: !3500, file: !3456, discriminator: 1)
!3500 = distinct !DILexicalBlock(scope: !3479, file: !3456, line: 148, column: 7)
!3501 = !DILocalVariable(name: "s2", arg: 2, scope: !3502, file: !3456, line: 132, type: !78)
!3502 = distinct !DISubprogram(name: "strcaseeq2", scope: !3456, file: !3456, line: 132, type: !3503, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!87, !78, !78, !80, !80, !80, !80, !80, !80, !80}
!3505 = !{!3506, !3501, !3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3506 = !DILocalVariable(name: "s1", arg: 1, scope: !3502, file: !3456, line: 132, type: !78)
!3507 = !DILocalVariable(name: "s22", arg: 3, scope: !3502, file: !3456, line: 132, type: !80)
!3508 = !DILocalVariable(name: "s23", arg: 4, scope: !3502, file: !3456, line: 132, type: !80)
!3509 = !DILocalVariable(name: "s24", arg: 5, scope: !3502, file: !3456, line: 132, type: !80)
!3510 = !DILocalVariable(name: "s25", arg: 6, scope: !3502, file: !3456, line: 132, type: !80)
!3511 = !DILocalVariable(name: "s26", arg: 7, scope: !3502, file: !3456, line: 132, type: !80)
!3512 = !DILocalVariable(name: "s27", arg: 8, scope: !3502, file: !3456, line: 132, type: !80)
!3513 = !DILocalVariable(name: "s28", arg: 9, scope: !3502, file: !3456, line: 132, type: !80)
!3514 = !DILocation(line: 132, column: 41, scope: !3502, inlinedAt: !3515)
!3515 = distinct !DILocation(line: 153, column: 16, scope: !3516, inlinedAt: !3493)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3456, line: 150, column: 11)
!3517 = distinct !DILexicalBlock(scope: !3500, file: !3456, line: 149, column: 5)
!3518 = !DILocation(line: 132, column: 100, scope: !3502, inlinedAt: !3515)
!3519 = !DILocation(line: 132, column: 110, scope: !3502, inlinedAt: !3515)
!3520 = !DILocation(line: 134, column: 7, scope: !3521, inlinedAt: !3515)
!3521 = !DILexicalBlockFile(scope: !3522, file: !3456, discriminator: 1)
!3522 = distinct !DILexicalBlock(scope: !3502, file: !3456, line: 134, column: 7)
!3523 = !DILocalVariable(name: "s2", arg: 2, scope: !3524, file: !3456, line: 118, type: !78)
!3524 = distinct !DISubprogram(name: "strcaseeq3", scope: !3456, file: !3456, line: 118, type: !3525, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!87, !78, !78, !80, !80, !80, !80, !80, !80}
!3527 = !{!3528, !3523, !3529, !3530, !3531, !3532, !3533, !3534}
!3528 = !DILocalVariable(name: "s1", arg: 1, scope: !3524, file: !3456, line: 118, type: !78)
!3529 = !DILocalVariable(name: "s23", arg: 3, scope: !3524, file: !3456, line: 118, type: !80)
!3530 = !DILocalVariable(name: "s24", arg: 4, scope: !3524, file: !3456, line: 118, type: !80)
!3531 = !DILocalVariable(name: "s25", arg: 5, scope: !3524, file: !3456, line: 118, type: !80)
!3532 = !DILocalVariable(name: "s26", arg: 6, scope: !3524, file: !3456, line: 118, type: !80)
!3533 = !DILocalVariable(name: "s27", arg: 7, scope: !3524, file: !3456, line: 118, type: !80)
!3534 = !DILocalVariable(name: "s28", arg: 8, scope: !3524, file: !3456, line: 118, type: !80)
!3535 = !DILocation(line: 118, column: 41, scope: !3524, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 139, column: 16, scope: !3537, inlinedAt: !3515)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3456, line: 136, column: 11)
!3538 = distinct !DILexicalBlock(scope: !3522, file: !3456, line: 135, column: 5)
!3539 = !DILocation(line: 118, column: 90, scope: !3524, inlinedAt: !3536)
!3540 = !DILocation(line: 118, column: 100, scope: !3524, inlinedAt: !3536)
!3541 = !DILocation(line: 120, column: 7, scope: !3542, inlinedAt: !3536)
!3542 = !DILexicalBlockFile(scope: !3543, file: !3456, discriminator: 2)
!3543 = distinct !DILexicalBlock(scope: !3524, file: !3456, line: 120, column: 7)
!3544 = !DILocation(line: 120, column: 7, scope: !3545, inlinedAt: !3536)
!3545 = !DILexicalBlockFile(scope: !3524, file: !3456, discriminator: 2)
!3546 = !DILocalVariable(name: "s2", arg: 2, scope: !3547, file: !3456, line: 104, type: !78)
!3547 = distinct !DISubprogram(name: "strcaseeq4", scope: !3456, file: !3456, line: 104, type: !3548, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3550)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!87, !78, !78, !80, !80, !80, !80, !80}
!3550 = !{!3551, !3546, !3552, !3553, !3554, !3555, !3556}
!3551 = !DILocalVariable(name: "s1", arg: 1, scope: !3547, file: !3456, line: 104, type: !78)
!3552 = !DILocalVariable(name: "s24", arg: 3, scope: !3547, file: !3456, line: 104, type: !80)
!3553 = !DILocalVariable(name: "s25", arg: 4, scope: !3547, file: !3456, line: 104, type: !80)
!3554 = !DILocalVariable(name: "s26", arg: 5, scope: !3547, file: !3456, line: 104, type: !80)
!3555 = !DILocalVariable(name: "s27", arg: 6, scope: !3547, file: !3456, line: 104, type: !80)
!3556 = !DILocalVariable(name: "s28", arg: 7, scope: !3547, file: !3456, line: 104, type: !80)
!3557 = !DILocation(line: 104, column: 41, scope: !3547, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 125, column: 16, scope: !3559, inlinedAt: !3536)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !3456, line: 122, column: 11)
!3560 = distinct !DILexicalBlock(scope: !3543, file: !3456, line: 121, column: 5)
!3561 = !DILocation(line: 104, column: 80, scope: !3547, inlinedAt: !3558)
!3562 = !DILocation(line: 104, column: 90, scope: !3547, inlinedAt: !3558)
!3563 = !DILocation(line: 106, column: 7, scope: !3564, inlinedAt: !3558)
!3564 = !DILexicalBlockFile(scope: !3565, file: !3456, discriminator: 2)
!3565 = distinct !DILexicalBlock(scope: !3547, file: !3456, line: 106, column: 7)
!3566 = !DILocation(line: 106, column: 7, scope: !3567, inlinedAt: !3558)
!3567 = !DILexicalBlockFile(scope: !3547, file: !3456, discriminator: 2)
!3568 = !DILocalVariable(name: "s2", arg: 2, scope: !3569, file: !3456, line: 90, type: !78)
!3569 = distinct !DISubprogram(name: "strcaseeq5", scope: !3456, file: !3456, line: 90, type: !3570, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!87, !78, !78, !80, !80, !80, !80}
!3572 = !{!3573, !3568, !3574, !3575, !3576, !3577}
!3573 = !DILocalVariable(name: "s1", arg: 1, scope: !3569, file: !3456, line: 90, type: !78)
!3574 = !DILocalVariable(name: "s25", arg: 3, scope: !3569, file: !3456, line: 90, type: !80)
!3575 = !DILocalVariable(name: "s26", arg: 4, scope: !3569, file: !3456, line: 90, type: !80)
!3576 = !DILocalVariable(name: "s27", arg: 5, scope: !3569, file: !3456, line: 90, type: !80)
!3577 = !DILocalVariable(name: "s28", arg: 6, scope: !3569, file: !3456, line: 90, type: !80)
!3578 = !DILocation(line: 90, column: 41, scope: !3569, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 111, column: 16, scope: !3580, inlinedAt: !3558)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !3456, line: 108, column: 11)
!3581 = distinct !DILexicalBlock(scope: !3565, file: !3456, line: 107, column: 5)
!3582 = !DILocation(line: 90, column: 70, scope: !3569, inlinedAt: !3579)
!3583 = !DILocation(line: 90, column: 80, scope: !3569, inlinedAt: !3579)
!3584 = !DILocation(line: 92, column: 7, scope: !3585, inlinedAt: !3579)
!3585 = !DILexicalBlockFile(scope: !3586, file: !3456, discriminator: 2)
!3586 = distinct !DILexicalBlock(scope: !3569, file: !3456, line: 92, column: 7)
!3587 = !DILocation(line: 92, column: 7, scope: !3588, inlinedAt: !3579)
!3588 = !DILexicalBlockFile(scope: !3569, file: !3456, discriminator: 2)
!3589 = !DILocation(line: 227, column: 12, scope: !3472)
!3590 = !DILocation(line: 227, column: 21, scope: !3472)
!3591 = !DILocation(line: 227, column: 5, scope: !3472)
!3592 = !DILocation(line: 146, column: 41, scope: !3479, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 167, column: 16, scope: !3494, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 228, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3437, file: !231, line: 228, column: 7)
!3596 = !DILocation(line: 146, column: 110, scope: !3479, inlinedAt: !3593)
!3597 = !DILocation(line: 146, column: 120, scope: !3479, inlinedAt: !3593)
!3598 = !DILocation(line: 148, column: 7, scope: !3499, inlinedAt: !3593)
!3599 = !DILocation(line: 132, column: 41, scope: !3502, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 153, column: 16, scope: !3516, inlinedAt: !3593)
!3601 = !DILocation(line: 132, column: 100, scope: !3502, inlinedAt: !3600)
!3602 = !DILocation(line: 132, column: 110, scope: !3502, inlinedAt: !3600)
!3603 = !DILocation(line: 134, column: 7, scope: !3604, inlinedAt: !3600)
!3604 = !DILexicalBlockFile(scope: !3522, file: !3456, discriminator: 2)
!3605 = !DILocation(line: 134, column: 7, scope: !3606, inlinedAt: !3600)
!3606 = !DILexicalBlockFile(scope: !3502, file: !3456, discriminator: 2)
!3607 = !DILocation(line: 118, column: 41, scope: !3524, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 139, column: 16, scope: !3537, inlinedAt: !3600)
!3609 = !DILocation(line: 118, column: 90, scope: !3524, inlinedAt: !3608)
!3610 = !DILocation(line: 118, column: 100, scope: !3524, inlinedAt: !3608)
!3611 = !DILocation(line: 120, column: 7, scope: !3542, inlinedAt: !3608)
!3612 = !DILocation(line: 120, column: 7, scope: !3545, inlinedAt: !3608)
!3613 = !DILocation(line: 104, column: 41, scope: !3547, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 125, column: 16, scope: !3559, inlinedAt: !3608)
!3615 = !DILocation(line: 104, column: 80, scope: !3547, inlinedAt: !3614)
!3616 = !DILocation(line: 104, column: 90, scope: !3547, inlinedAt: !3614)
!3617 = !DILocation(line: 106, column: 7, scope: !3564, inlinedAt: !3614)
!3618 = !DILocation(line: 106, column: 7, scope: !3567, inlinedAt: !3614)
!3619 = !DILocation(line: 90, column: 41, scope: !3569, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 111, column: 16, scope: !3580, inlinedAt: !3614)
!3621 = !DILocation(line: 90, column: 70, scope: !3569, inlinedAt: !3620)
!3622 = !DILocation(line: 90, column: 80, scope: !3569, inlinedAt: !3620)
!3623 = !DILocation(line: 92, column: 7, scope: !3585, inlinedAt: !3620)
!3624 = !DILocation(line: 92, column: 7, scope: !3588, inlinedAt: !3620)
!3625 = !DILocalVariable(name: "s2", arg: 2, scope: !3626, file: !3456, line: 76, type: !78)
!3626 = distinct !DISubprogram(name: "strcaseeq6", scope: !3456, file: !3456, line: 76, type: !3627, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3629)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!87, !78, !78, !80, !80, !80}
!3629 = !{!3630, !3625, !3631, !3632, !3633}
!3630 = !DILocalVariable(name: "s1", arg: 1, scope: !3626, file: !3456, line: 76, type: !78)
!3631 = !DILocalVariable(name: "s26", arg: 3, scope: !3626, file: !3456, line: 76, type: !80)
!3632 = !DILocalVariable(name: "s27", arg: 4, scope: !3626, file: !3456, line: 76, type: !80)
!3633 = !DILocalVariable(name: "s28", arg: 5, scope: !3626, file: !3456, line: 76, type: !80)
!3634 = !DILocation(line: 76, column: 41, scope: !3626, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 97, column: 16, scope: !3636, inlinedAt: !3620)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !3456, line: 94, column: 11)
!3637 = distinct !DILexicalBlock(scope: !3586, file: !3456, line: 93, column: 5)
!3638 = !DILocation(line: 76, column: 60, scope: !3626, inlinedAt: !3635)
!3639 = !DILocation(line: 76, column: 70, scope: !3626, inlinedAt: !3635)
!3640 = !DILocation(line: 78, column: 7, scope: !3641, inlinedAt: !3635)
!3641 = !DILexicalBlockFile(scope: !3642, file: !3456, discriminator: 2)
!3642 = distinct !DILexicalBlock(scope: !3626, file: !3456, line: 78, column: 7)
!3643 = !DILocation(line: 78, column: 7, scope: !3644, inlinedAt: !3635)
!3644 = !DILexicalBlockFile(scope: !3626, file: !3456, discriminator: 2)
!3645 = !DILocalVariable(name: "s2", arg: 2, scope: !3646, file: !3456, line: 62, type: !78)
!3646 = distinct !DISubprogram(name: "strcaseeq7", scope: !3456, file: !3456, line: 62, type: !3647, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3649)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!87, !78, !78, !80, !80}
!3649 = !{!3650, !3645, !3651, !3652}
!3650 = !DILocalVariable(name: "s1", arg: 1, scope: !3646, file: !3456, line: 62, type: !78)
!3651 = !DILocalVariable(name: "s27", arg: 3, scope: !3646, file: !3456, line: 62, type: !80)
!3652 = !DILocalVariable(name: "s28", arg: 4, scope: !3646, file: !3456, line: 62, type: !80)
!3653 = !DILocation(line: 62, column: 41, scope: !3646, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 83, column: 16, scope: !3655, inlinedAt: !3635)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3456, line: 80, column: 11)
!3656 = distinct !DILexicalBlock(scope: !3642, file: !3456, line: 79, column: 5)
!3657 = !DILocation(line: 62, column: 50, scope: !3646, inlinedAt: !3654)
!3658 = !DILocation(line: 62, column: 60, scope: !3646, inlinedAt: !3654)
!3659 = !DILocation(line: 64, column: 7, scope: !3660, inlinedAt: !3654)
!3660 = !DILexicalBlockFile(scope: !3661, file: !3456, discriminator: 2)
!3661 = distinct !DILexicalBlock(scope: !3646, file: !3456, line: 64, column: 7)
!3662 = !DILocation(line: 228, column: 7, scope: !3437)
!3663 = !DILocation(line: 229, column: 12, scope: !3595)
!3664 = !DILocation(line: 229, column: 21, scope: !3595)
!3665 = !DILocation(line: 229, column: 5, scope: !3595)
!3666 = !DILocation(line: 231, column: 13, scope: !3437)
!3667 = !DILocation(line: 231, column: 11, scope: !3437)
!3668 = !DILocation(line: 231, column: 3, scope: !3437)
!3669 = !DILocation(line: 232, column: 1, scope: !3437)
!3670 = distinct !DISubprogram(name: "quotearg_alloc", scope: !231, file: !231, line: 791, type: !3671, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!81, !78, !75, !2515}
!3673 = !{!3674, !3675, !3676}
!3674 = !DILocalVariable(name: "arg", arg: 1, scope: !3670, file: !231, line: 791, type: !78)
!3675 = !DILocalVariable(name: "argsize", arg: 2, scope: !3670, file: !231, line: 791, type: !75)
!3676 = !DILocalVariable(name: "o", arg: 3, scope: !3670, file: !231, line: 792, type: !2515)
!3677 = !DILocation(line: 791, column: 29, scope: !3670)
!3678 = !DILocation(line: 791, column: 41, scope: !3670)
!3679 = !DILocation(line: 792, column: 47, scope: !3670)
!3680 = !DILocalVariable(name: "arg", arg: 1, scope: !3681, file: !231, line: 804, type: !78)
!3681 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !231, file: !231, line: 804, type: !3682, isLocal: false, isDefinition: true, scopeLine: 806, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!81, !78, !75, !74, !2515}
!3684 = !{!3680, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692}
!3685 = !DILocalVariable(name: "argsize", arg: 2, scope: !3681, file: !231, line: 804, type: !75)
!3686 = !DILocalVariable(name: "size", arg: 3, scope: !3681, file: !231, line: 804, type: !74)
!3687 = !DILocalVariable(name: "o", arg: 4, scope: !3681, file: !231, line: 805, type: !2515)
!3688 = !DILocalVariable(name: "p", scope: !3681, file: !231, line: 807, type: !2515)
!3689 = !DILocalVariable(name: "e", scope: !3681, file: !231, line: 808, type: !87)
!3690 = !DILocalVariable(name: "flags", scope: !3681, file: !231, line: 810, type: !87)
!3691 = !DILocalVariable(name: "bufsize", scope: !3681, file: !231, line: 811, type: !75)
!3692 = !DILocalVariable(name: "buf", scope: !3681, file: !231, line: 815, type: !81)
!3693 = !DILocation(line: 804, column: 33, scope: !3681, inlinedAt: !3694)
!3694 = distinct !DILocation(line: 794, column: 10, scope: !3670)
!3695 = !DILocation(line: 804, column: 45, scope: !3681, inlinedAt: !3694)
!3696 = !DILocation(line: 804, column: 62, scope: !3681, inlinedAt: !3694)
!3697 = !DILocation(line: 805, column: 51, scope: !3681, inlinedAt: !3694)
!3698 = !DILocation(line: 807, column: 37, scope: !3681, inlinedAt: !3694)
!3699 = !DILocation(line: 807, column: 33, scope: !3681, inlinedAt: !3694)
!3700 = !DILocation(line: 808, column: 11, scope: !3681, inlinedAt: !3694)
!3701 = !DILocation(line: 808, column: 7, scope: !3681, inlinedAt: !3694)
!3702 = !DILocation(line: 810, column: 18, scope: !3681, inlinedAt: !3694)
!3703 = !DILocation(line: 810, column: 24, scope: !3681, inlinedAt: !3694)
!3704 = !DILocation(line: 810, column: 7, scope: !3681, inlinedAt: !3694)
!3705 = !DILocation(line: 811, column: 69, scope: !3681, inlinedAt: !3694)
!3706 = !DILocation(line: 812, column: 53, scope: !3681, inlinedAt: !3694)
!3707 = !DILocation(line: 813, column: 49, scope: !3681, inlinedAt: !3694)
!3708 = !DILocation(line: 814, column: 49, scope: !3681, inlinedAt: !3694)
!3709 = !DILocation(line: 811, column: 20, scope: !3681, inlinedAt: !3694)
!3710 = !DILocation(line: 814, column: 62, scope: !3681, inlinedAt: !3694)
!3711 = !DILocation(line: 811, column: 10, scope: !3681, inlinedAt: !3694)
!3712 = !DILocalVariable(name: "n", arg: 1, scope: !3713, file: !655, line: 220, type: !75)
!3713 = distinct !DISubprogram(name: "xcharalloc", scope: !655, file: !655, line: 220, type: !3714, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!81, !75}
!3716 = !{!3712}
!3717 = !DILocation(line: 220, column: 20, scope: !3713, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 815, column: 15, scope: !3681, inlinedAt: !3694)
!3719 = !DILocation(line: 222, column: 10, scope: !3713, inlinedAt: !3718)
!3720 = !DILocation(line: 815, column: 9, scope: !3681, inlinedAt: !3694)
!3721 = !DILocation(line: 816, column: 60, scope: !3681, inlinedAt: !3694)
!3722 = !DILocation(line: 818, column: 32, scope: !3681, inlinedAt: !3694)
!3723 = !DILocation(line: 818, column: 47, scope: !3681, inlinedAt: !3694)
!3724 = !DILocation(line: 816, column: 3, scope: !3681, inlinedAt: !3694)
!3725 = !DILocation(line: 819, column: 9, scope: !3681, inlinedAt: !3694)
!3726 = !DILocation(line: 794, column: 3, scope: !3670)
!3727 = !DILocation(line: 804, column: 33, scope: !3681)
!3728 = !DILocation(line: 804, column: 45, scope: !3681)
!3729 = !DILocation(line: 804, column: 62, scope: !3681)
!3730 = !DILocation(line: 805, column: 51, scope: !3681)
!3731 = !DILocation(line: 807, column: 37, scope: !3681)
!3732 = !DILocation(line: 807, column: 33, scope: !3681)
!3733 = !DILocation(line: 808, column: 11, scope: !3681)
!3734 = !DILocation(line: 808, column: 7, scope: !3681)
!3735 = !DILocation(line: 810, column: 18, scope: !3681)
!3736 = !DILocation(line: 810, column: 27, scope: !3681)
!3737 = !DILocation(line: 810, column: 24, scope: !3681)
!3738 = !DILocation(line: 810, column: 7, scope: !3681)
!3739 = !DILocation(line: 811, column: 69, scope: !3681)
!3740 = !DILocation(line: 812, column: 53, scope: !3681)
!3741 = !DILocation(line: 813, column: 49, scope: !3681)
!3742 = !DILocation(line: 814, column: 49, scope: !3681)
!3743 = !DILocation(line: 811, column: 20, scope: !3681)
!3744 = !DILocation(line: 814, column: 62, scope: !3681)
!3745 = !DILocation(line: 811, column: 10, scope: !3681)
!3746 = !DILocation(line: 220, column: 20, scope: !3713, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 815, column: 15, scope: !3681)
!3748 = !DILocation(line: 222, column: 10, scope: !3713, inlinedAt: !3747)
!3749 = !DILocation(line: 815, column: 9, scope: !3681)
!3750 = !DILocation(line: 816, column: 60, scope: !3681)
!3751 = !DILocation(line: 818, column: 32, scope: !3681)
!3752 = !DILocation(line: 818, column: 47, scope: !3681)
!3753 = !DILocation(line: 816, column: 3, scope: !3681)
!3754 = !DILocation(line: 819, column: 9, scope: !3681)
!3755 = !DILocation(line: 820, column: 7, scope: !3681)
!3756 = !DILocation(line: 821, column: 11, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3681, file: !231, line: 820, column: 7)
!3758 = !DILocation(line: 821, column: 5, scope: !3757)
!3759 = !DILocation(line: 822, column: 3, scope: !3681)
!3760 = distinct !DISubprogram(name: "quotearg_free", scope: !231, file: !231, line: 840, type: !193, isLocal: false, isDefinition: true, scopeLine: 841, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3761)
!3761 = !{!3762, !3763}
!3762 = !DILocalVariable(name: "sv", scope: !3760, file: !231, line: 842, type: !258)
!3763 = !DILocalVariable(name: "i", scope: !3760, file: !231, line: 843, type: !87)
!3764 = !DILocation(line: 842, column: 24, scope: !3760)
!3765 = !DILocation(line: 842, column: 19, scope: !3760)
!3766 = !DILocation(line: 843, column: 7, scope: !3760)
!3767 = !DILocation(line: 844, column: 19, scope: !3768)
!3768 = !DILexicalBlockFile(scope: !3769, file: !231, discriminator: 1)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !231, line: 844, column: 3)
!3770 = distinct !DILexicalBlock(scope: !3760, file: !231, line: 844, column: 3)
!3771 = !DILocation(line: 844, column: 17, scope: !3768)
!3772 = !DILocation(line: 844, column: 3, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3770, file: !231, discriminator: 1)
!3774 = !DILocation(line: 845, column: 17, scope: !3769)
!3775 = !{!3776, !711, i64 8}
!3776 = !{!"slotvec", !822, i64 0, !711, i64 8}
!3777 = !DILocation(line: 845, column: 5, scope: !3769)
!3778 = !DILocation(line: 844, column: 28, scope: !3779)
!3779 = !DILexicalBlockFile(scope: !3769, file: !231, discriminator: 2)
!3780 = distinct !{!3780, !3781, !3782}
!3781 = !DILocation(line: 844, column: 3, scope: !3770)
!3782 = !DILocation(line: 845, column: 20, scope: !3770)
!3783 = !DILocation(line: 846, column: 13, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3760, file: !231, line: 846, column: 7)
!3785 = !DILocation(line: 846, column: 17, scope: !3784)
!3786 = !DILocation(line: 846, column: 7, scope: !3760)
!3787 = !DILocation(line: 848, column: 7, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3784, file: !231, line: 847, column: 5)
!3789 = !DILocation(line: 849, column: 21, scope: !3788)
!3790 = !{!3776, !822, i64 0}
!3791 = !DILocation(line: 850, column: 20, scope: !3788)
!3792 = !DILocation(line: 851, column: 5, scope: !3788)
!3793 = !DILocation(line: 852, column: 10, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3760, file: !231, line: 852, column: 7)
!3795 = !DILocation(line: 852, column: 7, scope: !3760)
!3796 = !DILocation(line: 854, column: 13, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3794, file: !231, line: 853, column: 5)
!3798 = !DILocation(line: 854, column: 7, scope: !3797)
!3799 = !DILocation(line: 855, column: 15, scope: !3797)
!3800 = !DILocation(line: 856, column: 5, scope: !3797)
!3801 = !DILocation(line: 857, column: 10, scope: !3760)
!3802 = !DILocation(line: 858, column: 1, scope: !3760)
!3803 = distinct !DISubprogram(name: "quotearg_n", scope: !231, file: !231, line: 922, type: !3804, isLocal: false, isDefinition: true, scopeLine: 923, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3806)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!81, !87, !78}
!3806 = !{!3807, !3808}
!3807 = !DILocalVariable(name: "n", arg: 1, scope: !3803, file: !231, line: 922, type: !87)
!3808 = !DILocalVariable(name: "arg", arg: 2, scope: !3803, file: !231, line: 922, type: !78)
!3809 = !DILocation(line: 922, column: 17, scope: !3803)
!3810 = !DILocation(line: 922, column: 32, scope: !3803)
!3811 = !DILocation(line: 924, column: 10, scope: !3803)
!3812 = !DILocation(line: 924, column: 3, scope: !3803)
!3813 = distinct !DISubprogram(name: "quotearg_n_options", scope: !231, file: !231, line: 869, type: !3814, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3816)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!81, !87, !78, !75, !2515}
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822, !3823, !3826, !3828, !3829, !3830}
!3817 = !DILocalVariable(name: "n", arg: 1, scope: !3813, file: !231, line: 869, type: !87)
!3818 = !DILocalVariable(name: "arg", arg: 2, scope: !3813, file: !231, line: 869, type: !78)
!3819 = !DILocalVariable(name: "argsize", arg: 3, scope: !3813, file: !231, line: 869, type: !75)
!3820 = !DILocalVariable(name: "options", arg: 4, scope: !3813, file: !231, line: 870, type: !2515)
!3821 = !DILocalVariable(name: "e", scope: !3813, file: !231, line: 872, type: !87)
!3822 = !DILocalVariable(name: "sv", scope: !3813, file: !231, line: 874, type: !258)
!3823 = !DILocalVariable(name: "preallocated", scope: !3824, file: !231, line: 881, type: !100)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !231, line: 880, column: 5)
!3825 = distinct !DILexicalBlock(scope: !3813, file: !231, line: 879, column: 7)
!3826 = !DILocalVariable(name: "size", scope: !3827, file: !231, line: 894, type: !75)
!3827 = distinct !DILexicalBlock(scope: !3813, file: !231, line: 893, column: 3)
!3828 = !DILocalVariable(name: "val", scope: !3827, file: !231, line: 895, type: !81)
!3829 = !DILocalVariable(name: "flags", scope: !3827, file: !231, line: 897, type: !87)
!3830 = !DILocalVariable(name: "qsize", scope: !3827, file: !231, line: 898, type: !75)
!3831 = !DILocation(line: 869, column: 25, scope: !3813)
!3832 = !DILocation(line: 869, column: 40, scope: !3813)
!3833 = !DILocation(line: 869, column: 52, scope: !3813)
!3834 = !DILocation(line: 870, column: 51, scope: !3813)
!3835 = !DILocation(line: 872, column: 11, scope: !3813)
!3836 = !DILocation(line: 872, column: 7, scope: !3813)
!3837 = !DILocation(line: 874, column: 24, scope: !3813)
!3838 = !DILocation(line: 874, column: 19, scope: !3813)
!3839 = !DILocation(line: 876, column: 9, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3813, file: !231, line: 876, column: 7)
!3841 = !DILocation(line: 876, column: 7, scope: !3813)
!3842 = !DILocation(line: 877, column: 5, scope: !3840)
!3843 = !DILocation(line: 879, column: 7, scope: !3825)
!3844 = !DILocation(line: 879, column: 14, scope: !3825)
!3845 = !DILocation(line: 879, column: 7, scope: !3813)
!3846 = !DILocation(line: 881, column: 31, scope: !3824)
!3847 = !DILocation(line: 883, column: 67, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3824, file: !231, line: 883, column: 11)
!3849 = !DILocation(line: 883, column: 11, scope: !3824)
!3850 = !DILocation(line: 884, column: 9, scope: !3848)
!3851 = !DILocation(line: 886, column: 32, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3824, file: !231, discriminator: 3)
!3853 = !DILocation(line: 886, column: 61, scope: !3852)
!3854 = !DILocation(line: 886, column: 58, scope: !3852)
!3855 = !DILocation(line: 886, column: 66, scope: !3852)
!3856 = !DILocation(line: 886, column: 22, scope: !3852)
!3857 = !DILocation(line: 886, column: 15, scope: !3852)
!3858 = !DILocation(line: 887, column: 11, scope: !3824)
!3859 = !DILocation(line: 888, column: 15, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3824, file: !231, line: 887, column: 11)
!3861 = !{i64 0, i64 8, !821, i64 8, i64 8, !710}
!3862 = !DILocation(line: 888, column: 9, scope: !3860)
!3863 = !DILocation(line: 889, column: 20, scope: !3824)
!3864 = !DILocation(line: 889, column: 18, scope: !3824)
!3865 = !DILocation(line: 889, column: 7, scope: !3824)
!3866 = !DILocation(line: 889, column: 38, scope: !3824)
!3867 = !DILocation(line: 889, column: 31, scope: !3824)
!3868 = !DILocation(line: 889, column: 48, scope: !3824)
!3869 = !DILocation(line: 890, column: 14, scope: !3824)
!3870 = !DILocation(line: 891, column: 5, scope: !3824)
!3871 = !DILocation(line: 894, column: 19, scope: !3827)
!3872 = !DILocation(line: 894, column: 25, scope: !3827)
!3873 = !DILocation(line: 894, column: 12, scope: !3827)
!3874 = !DILocation(line: 895, column: 23, scope: !3827)
!3875 = !DILocation(line: 895, column: 11, scope: !3827)
!3876 = !DILocation(line: 897, column: 26, scope: !3827)
!3877 = !DILocation(line: 897, column: 32, scope: !3827)
!3878 = !DILocation(line: 897, column: 9, scope: !3827)
!3879 = !DILocation(line: 899, column: 55, scope: !3827)
!3880 = !DILocation(line: 900, column: 46, scope: !3827)
!3881 = !DILocation(line: 901, column: 55, scope: !3827)
!3882 = !DILocation(line: 902, column: 55, scope: !3827)
!3883 = !DILocation(line: 898, column: 20, scope: !3827)
!3884 = !DILocation(line: 898, column: 12, scope: !3827)
!3885 = !DILocation(line: 904, column: 14, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3827, file: !231, line: 904, column: 9)
!3887 = !DILocation(line: 904, column: 9, scope: !3827)
!3888 = !DILocation(line: 906, column: 35, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3886, file: !231, line: 905, column: 7)
!3890 = !DILocation(line: 906, column: 20, scope: !3889)
!3891 = !DILocation(line: 907, column: 17, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3889, file: !231, line: 907, column: 13)
!3893 = !DILocation(line: 907, column: 13, scope: !3889)
!3894 = !DILocation(line: 908, column: 11, scope: !3892)
!3895 = !DILocation(line: 220, column: 20, scope: !3713, inlinedAt: !3896)
!3896 = distinct !DILocation(line: 909, column: 27, scope: !3889)
!3897 = !DILocation(line: 222, column: 10, scope: !3713, inlinedAt: !3896)
!3898 = !DILocation(line: 909, column: 19, scope: !3889)
!3899 = !DILocation(line: 910, column: 69, scope: !3889)
!3900 = !DILocation(line: 912, column: 44, scope: !3889)
!3901 = !DILocation(line: 913, column: 44, scope: !3889)
!3902 = !DILocation(line: 910, column: 9, scope: !3889)
!3903 = !DILocation(line: 914, column: 7, scope: !3889)
!3904 = !DILocation(line: 916, column: 11, scope: !3827)
!3905 = !DILocation(line: 917, column: 5, scope: !3827)
!3906 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !231, file: !231, line: 928, type: !3907, isLocal: false, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!81, !87, !78, !75}
!3909 = !{!3910, !3911, !3912}
!3910 = !DILocalVariable(name: "n", arg: 1, scope: !3906, file: !231, line: 928, type: !87)
!3911 = !DILocalVariable(name: "arg", arg: 2, scope: !3906, file: !231, line: 928, type: !78)
!3912 = !DILocalVariable(name: "argsize", arg: 3, scope: !3906, file: !231, line: 928, type: !75)
!3913 = !DILocation(line: 928, column: 21, scope: !3906)
!3914 = !DILocation(line: 928, column: 36, scope: !3906)
!3915 = !DILocation(line: 928, column: 48, scope: !3906)
!3916 = !DILocation(line: 930, column: 10, scope: !3906)
!3917 = !DILocation(line: 930, column: 3, scope: !3906)
!3918 = distinct !DISubprogram(name: "quotearg", scope: !231, file: !231, line: 934, type: !3919, isLocal: false, isDefinition: true, scopeLine: 935, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3921)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!81, !78}
!3921 = !{!3922}
!3922 = !DILocalVariable(name: "arg", arg: 1, scope: !3918, file: !231, line: 934, type: !78)
!3923 = !DILocation(line: 934, column: 23, scope: !3918)
!3924 = !DILocation(line: 922, column: 17, scope: !3803, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 936, column: 10, scope: !3918)
!3926 = !DILocation(line: 922, column: 32, scope: !3803, inlinedAt: !3925)
!3927 = !DILocation(line: 924, column: 10, scope: !3803, inlinedAt: !3925)
!3928 = !DILocation(line: 936, column: 3, scope: !3918)
!3929 = distinct !DISubprogram(name: "quotearg_mem", scope: !231, file: !231, line: 940, type: !3930, isLocal: false, isDefinition: true, scopeLine: 941, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!81, !78, !75}
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "arg", arg: 1, scope: !3929, file: !231, line: 940, type: !78)
!3934 = !DILocalVariable(name: "argsize", arg: 2, scope: !3929, file: !231, line: 940, type: !75)
!3935 = !DILocation(line: 940, column: 27, scope: !3929)
!3936 = !DILocation(line: 940, column: 39, scope: !3929)
!3937 = !DILocation(line: 928, column: 21, scope: !3906, inlinedAt: !3938)
!3938 = distinct !DILocation(line: 942, column: 10, scope: !3929)
!3939 = !DILocation(line: 928, column: 36, scope: !3906, inlinedAt: !3938)
!3940 = !DILocation(line: 928, column: 48, scope: !3906, inlinedAt: !3938)
!3941 = !DILocation(line: 930, column: 10, scope: !3906, inlinedAt: !3938)
!3942 = !DILocation(line: 942, column: 3, scope: !3929)
!3943 = distinct !DISubprogram(name: "quotearg_n_style", scope: !231, file: !231, line: 946, type: !3944, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!81, !87, !34, !78}
!3946 = !{!3947, !3948, !3949, !3950}
!3947 = !DILocalVariable(name: "n", arg: 1, scope: !3943, file: !231, line: 946, type: !87)
!3948 = !DILocalVariable(name: "s", arg: 2, scope: !3943, file: !231, line: 946, type: !34)
!3949 = !DILocalVariable(name: "arg", arg: 3, scope: !3943, file: !231, line: 946, type: !78)
!3950 = !DILocalVariable(name: "o", scope: !3943, file: !231, line: 948, type: !2516)
!3951 = !DILocalVariable(name: "o", scope: !3952, file: !231, line: 187, type: !238)
!3952 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !231, file: !231, line: 185, type: !3953, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3955)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!238, !34}
!3955 = !{!3956, !3951}
!3956 = !DILocalVariable(name: "style", arg: 1, scope: !3952, file: !231, line: 185, type: !34)
!3957 = !DIExpression(DW_OP_LLVM_fragment, 32, 416)
!3958 = !DILocation(line: 187, column: 26, scope: !3952, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 948, column: 36, scope: !3943)
!3960 = !DILocation(line: 946, column: 23, scope: !3943)
!3961 = !DILocation(line: 946, column: 45, scope: !3943)
!3962 = !DILocation(line: 946, column: 60, scope: !3943)
!3963 = !DILocation(line: 948, column: 3, scope: !3943)
!3964 = !DILocation(line: 948, column: 32, scope: !3943)
!3965 = !DILocation(line: 185, column: 48, scope: !3952, inlinedAt: !3959)
!3966 = !DILocation(line: 187, column: 3, scope: !3952, inlinedAt: !3959)
!3967 = !DIExpression(DW_OP_LLVM_fragment, 0, 32)
!3968 = !DILocation(line: 188, column: 13, scope: !3969, inlinedAt: !3959)
!3969 = distinct !DILexicalBlock(scope: !3952, file: !231, line: 188, column: 7)
!3970 = !DILocation(line: 188, column: 7, scope: !3952, inlinedAt: !3959)
!3971 = !DILocation(line: 189, column: 5, scope: !3969, inlinedAt: !3959)
!3972 = !{!3973}
!3973 = distinct !{!3973, !3974, !"quoting_options_from_style: argument 0"}
!3974 = distinct !{!3974, !"quoting_options_from_style"}
!3975 = !DILocation(line: 191, column: 10, scope: !3952, inlinedAt: !3959)
!3976 = !DILocation(line: 192, column: 1, scope: !3952, inlinedAt: !3959)
!3977 = !DILocation(line: 949, column: 10, scope: !3943)
!3978 = !DILocation(line: 950, column: 1, scope: !3943)
!3979 = !DILocation(line: 949, column: 3, scope: !3943)
!3980 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !231, file: !231, line: 953, type: !3981, isLocal: false, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!81, !87, !34, !78, !75}
!3983 = !{!3984, !3985, !3986, !3987, !3988}
!3984 = !DILocalVariable(name: "n", arg: 1, scope: !3980, file: !231, line: 953, type: !87)
!3985 = !DILocalVariable(name: "s", arg: 2, scope: !3980, file: !231, line: 953, type: !34)
!3986 = !DILocalVariable(name: "arg", arg: 3, scope: !3980, file: !231, line: 954, type: !78)
!3987 = !DILocalVariable(name: "argsize", arg: 4, scope: !3980, file: !231, line: 954, type: !75)
!3988 = !DILocalVariable(name: "o", scope: !3980, file: !231, line: 956, type: !2516)
!3989 = !DILocation(line: 187, column: 26, scope: !3952, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 956, column: 36, scope: !3980)
!3991 = !DILocation(line: 953, column: 27, scope: !3980)
!3992 = !DILocation(line: 953, column: 49, scope: !3980)
!3993 = !DILocation(line: 954, column: 35, scope: !3980)
!3994 = !DILocation(line: 954, column: 47, scope: !3980)
!3995 = !DILocation(line: 956, column: 3, scope: !3980)
!3996 = !DILocation(line: 956, column: 32, scope: !3980)
!3997 = !DILocation(line: 185, column: 48, scope: !3952, inlinedAt: !3990)
!3998 = !DILocation(line: 187, column: 3, scope: !3952, inlinedAt: !3990)
!3999 = !DILocation(line: 188, column: 13, scope: !3969, inlinedAt: !3990)
!4000 = !DILocation(line: 188, column: 7, scope: !3952, inlinedAt: !3990)
!4001 = !DILocation(line: 189, column: 5, scope: !3969, inlinedAt: !3990)
!4002 = !{!4003}
!4003 = distinct !{!4003, !4004, !"quoting_options_from_style: argument 0"}
!4004 = distinct !{!4004, !"quoting_options_from_style"}
!4005 = !DILocation(line: 191, column: 10, scope: !3952, inlinedAt: !3990)
!4006 = !DILocation(line: 192, column: 1, scope: !3952, inlinedAt: !3990)
!4007 = !DILocation(line: 957, column: 10, scope: !3980)
!4008 = !DILocation(line: 958, column: 1, scope: !3980)
!4009 = !DILocation(line: 957, column: 3, scope: !3980)
!4010 = distinct !DISubprogram(name: "quotearg_style", scope: !231, file: !231, line: 961, type: !4011, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4013)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!81, !34, !78}
!4013 = !{!4014, !4015}
!4014 = !DILocalVariable(name: "s", arg: 1, scope: !4010, file: !231, line: 961, type: !34)
!4015 = !DILocalVariable(name: "arg", arg: 2, scope: !4010, file: !231, line: 961, type: !78)
!4016 = !DILocation(line: 187, column: 26, scope: !3952, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 948, column: 36, scope: !3943, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 963, column: 10, scope: !4010)
!4019 = !DILocation(line: 961, column: 36, scope: !4010)
!4020 = !DILocation(line: 961, column: 51, scope: !4010)
!4021 = !DILocation(line: 946, column: 23, scope: !3943, inlinedAt: !4018)
!4022 = !DILocation(line: 946, column: 45, scope: !3943, inlinedAt: !4018)
!4023 = !DILocation(line: 946, column: 60, scope: !3943, inlinedAt: !4018)
!4024 = !DILocation(line: 948, column: 3, scope: !3943, inlinedAt: !4018)
!4025 = !DILocation(line: 948, column: 32, scope: !3943, inlinedAt: !4018)
!4026 = !DILocation(line: 185, column: 48, scope: !3952, inlinedAt: !4017)
!4027 = !DILocation(line: 187, column: 3, scope: !3952, inlinedAt: !4017)
!4028 = !DILocation(line: 188, column: 13, scope: !3969, inlinedAt: !4017)
!4029 = !DILocation(line: 188, column: 7, scope: !3952, inlinedAt: !4017)
!4030 = !DILocation(line: 189, column: 5, scope: !3969, inlinedAt: !4017)
!4031 = !{!4032}
!4032 = distinct !{!4032, !4033, !"quoting_options_from_style: argument 0"}
!4033 = distinct !{!4033, !"quoting_options_from_style"}
!4034 = !DILocation(line: 191, column: 10, scope: !3952, inlinedAt: !4017)
!4035 = !DILocation(line: 192, column: 1, scope: !3952, inlinedAt: !4017)
!4036 = !DILocation(line: 949, column: 10, scope: !3943, inlinedAt: !4018)
!4037 = !DILocation(line: 950, column: 1, scope: !3943, inlinedAt: !4018)
!4038 = !DILocation(line: 963, column: 3, scope: !4010)
!4039 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !231, file: !231, line: 967, type: !4040, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4042)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!81, !34, !78, !75}
!4042 = !{!4043, !4044, !4045}
!4043 = !DILocalVariable(name: "s", arg: 1, scope: !4039, file: !231, line: 967, type: !34)
!4044 = !DILocalVariable(name: "arg", arg: 2, scope: !4039, file: !231, line: 967, type: !78)
!4045 = !DILocalVariable(name: "argsize", arg: 3, scope: !4039, file: !231, line: 967, type: !75)
!4046 = !DILocation(line: 187, column: 26, scope: !3952, inlinedAt: !4047)
!4047 = distinct !DILocation(line: 956, column: 36, scope: !3980, inlinedAt: !4048)
!4048 = distinct !DILocation(line: 969, column: 10, scope: !4039)
!4049 = !DILocation(line: 967, column: 40, scope: !4039)
!4050 = !DILocation(line: 967, column: 55, scope: !4039)
!4051 = !DILocation(line: 967, column: 67, scope: !4039)
!4052 = !DILocation(line: 953, column: 27, scope: !3980, inlinedAt: !4048)
!4053 = !DILocation(line: 953, column: 49, scope: !3980, inlinedAt: !4048)
!4054 = !DILocation(line: 954, column: 35, scope: !3980, inlinedAt: !4048)
!4055 = !DILocation(line: 954, column: 47, scope: !3980, inlinedAt: !4048)
!4056 = !DILocation(line: 956, column: 3, scope: !3980, inlinedAt: !4048)
!4057 = !DILocation(line: 956, column: 32, scope: !3980, inlinedAt: !4048)
!4058 = !DILocation(line: 185, column: 48, scope: !3952, inlinedAt: !4047)
!4059 = !DILocation(line: 187, column: 3, scope: !3952, inlinedAt: !4047)
!4060 = !DILocation(line: 188, column: 13, scope: !3969, inlinedAt: !4047)
!4061 = !DILocation(line: 188, column: 7, scope: !3952, inlinedAt: !4047)
!4062 = !DILocation(line: 189, column: 5, scope: !3969, inlinedAt: !4047)
!4063 = !{!4064}
!4064 = distinct !{!4064, !4065, !"quoting_options_from_style: argument 0"}
!4065 = distinct !{!4065, !"quoting_options_from_style"}
!4066 = !DILocation(line: 191, column: 10, scope: !3952, inlinedAt: !4047)
!4067 = !DILocation(line: 192, column: 1, scope: !3952, inlinedAt: !4047)
!4068 = !DILocation(line: 957, column: 10, scope: !3980, inlinedAt: !4048)
!4069 = !DILocation(line: 958, column: 1, scope: !3980, inlinedAt: !4048)
!4070 = !DILocation(line: 969, column: 3, scope: !4039)
!4071 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !231, file: !231, line: 973, type: !4072, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!81, !78, !75, !80}
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DILocalVariable(name: "arg", arg: 1, scope: !4071, file: !231, line: 973, type: !78)
!4076 = !DILocalVariable(name: "argsize", arg: 2, scope: !4071, file: !231, line: 973, type: !75)
!4077 = !DILocalVariable(name: "ch", arg: 3, scope: !4071, file: !231, line: 973, type: !80)
!4078 = !DILocalVariable(name: "options", scope: !4071, file: !231, line: 975, type: !238)
!4079 = !DILocation(line: 973, column: 32, scope: !4071)
!4080 = !DILocation(line: 973, column: 44, scope: !4071)
!4081 = !DILocation(line: 973, column: 58, scope: !4071)
!4082 = !DILocation(line: 975, column: 3, scope: !4071)
!4083 = !DILocation(line: 976, column: 13, scope: !4071)
!4084 = !{i64 0, i64 4, !826, i64 4, i64 4, !840, i64 8, i64 32, !826, i64 40, i64 8, !710, i64 48, i64 8, !710}
!4085 = !DILocation(line: 975, column: 26, scope: !4071)
!4086 = !DILocation(line: 144, column: 43, scope: !2539, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 977, column: 3, scope: !4071)
!4088 = !DILocation(line: 144, column: 51, scope: !2539, inlinedAt: !4087)
!4089 = !DILocation(line: 144, column: 58, scope: !2539, inlinedAt: !4087)
!4090 = !DILocation(line: 146, column: 17, scope: !2539, inlinedAt: !4087)
!4091 = !DILocation(line: 148, column: 62, scope: !2557, inlinedAt: !4087)
!4092 = !DILocation(line: 148, column: 57, scope: !2557, inlinedAt: !4087)
!4093 = !DILocation(line: 147, column: 17, scope: !2539, inlinedAt: !4087)
!4094 = !DILocation(line: 149, column: 18, scope: !2539, inlinedAt: !4087)
!4095 = !DILocation(line: 149, column: 15, scope: !2539, inlinedAt: !4087)
!4096 = !DILocation(line: 149, column: 7, scope: !2539, inlinedAt: !4087)
!4097 = !DILocation(line: 150, column: 12, scope: !2539, inlinedAt: !4087)
!4098 = !DILocation(line: 150, column: 15, scope: !2539, inlinedAt: !4087)
!4099 = !DILocation(line: 150, column: 25, scope: !2539, inlinedAt: !4087)
!4100 = !DILocation(line: 150, column: 7, scope: !2539, inlinedAt: !4087)
!4101 = !DILocation(line: 151, column: 18, scope: !2539, inlinedAt: !4087)
!4102 = !DILocation(line: 151, column: 23, scope: !2539, inlinedAt: !4087)
!4103 = !DILocation(line: 151, column: 6, scope: !2539, inlinedAt: !4087)
!4104 = !DILocation(line: 978, column: 10, scope: !4071)
!4105 = !DILocation(line: 979, column: 1, scope: !4071)
!4106 = !DILocation(line: 978, column: 3, scope: !4071)
!4107 = distinct !DISubprogram(name: "quotearg_char", scope: !231, file: !231, line: 982, type: !4108, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4110)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!81, !78, !80}
!4110 = !{!4111, !4112}
!4111 = !DILocalVariable(name: "arg", arg: 1, scope: !4107, file: !231, line: 982, type: !78)
!4112 = !DILocalVariable(name: "ch", arg: 2, scope: !4107, file: !231, line: 982, type: !80)
!4113 = !DILocation(line: 982, column: 28, scope: !4107)
!4114 = !DILocation(line: 982, column: 38, scope: !4107)
!4115 = !DILocation(line: 973, column: 32, scope: !4071, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 984, column: 10, scope: !4107)
!4117 = !DILocation(line: 973, column: 44, scope: !4071, inlinedAt: !4116)
!4118 = !DILocation(line: 973, column: 58, scope: !4071, inlinedAt: !4116)
!4119 = !DILocation(line: 975, column: 3, scope: !4071, inlinedAt: !4116)
!4120 = !DILocation(line: 976, column: 13, scope: !4071, inlinedAt: !4116)
!4121 = !DILocation(line: 975, column: 26, scope: !4071, inlinedAt: !4116)
!4122 = !DILocation(line: 144, column: 43, scope: !2539, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 977, column: 3, scope: !4071, inlinedAt: !4116)
!4124 = !DILocation(line: 144, column: 51, scope: !2539, inlinedAt: !4123)
!4125 = !DILocation(line: 144, column: 58, scope: !2539, inlinedAt: !4123)
!4126 = !DILocation(line: 146, column: 17, scope: !2539, inlinedAt: !4123)
!4127 = !DILocation(line: 148, column: 62, scope: !2557, inlinedAt: !4123)
!4128 = !DILocation(line: 148, column: 57, scope: !2557, inlinedAt: !4123)
!4129 = !DILocation(line: 147, column: 17, scope: !2539, inlinedAt: !4123)
!4130 = !DILocation(line: 149, column: 18, scope: !2539, inlinedAt: !4123)
!4131 = !DILocation(line: 149, column: 15, scope: !2539, inlinedAt: !4123)
!4132 = !DILocation(line: 149, column: 7, scope: !2539, inlinedAt: !4123)
!4133 = !DILocation(line: 150, column: 12, scope: !2539, inlinedAt: !4123)
!4134 = !DILocation(line: 150, column: 15, scope: !2539, inlinedAt: !4123)
!4135 = !DILocation(line: 150, column: 25, scope: !2539, inlinedAt: !4123)
!4136 = !DILocation(line: 150, column: 7, scope: !2539, inlinedAt: !4123)
!4137 = !DILocation(line: 151, column: 18, scope: !2539, inlinedAt: !4123)
!4138 = !DILocation(line: 151, column: 23, scope: !2539, inlinedAt: !4123)
!4139 = !DILocation(line: 151, column: 6, scope: !2539, inlinedAt: !4123)
!4140 = !DILocation(line: 978, column: 10, scope: !4071, inlinedAt: !4116)
!4141 = !DILocation(line: 979, column: 1, scope: !4071, inlinedAt: !4116)
!4142 = !DILocation(line: 984, column: 3, scope: !4107)
!4143 = distinct !DISubprogram(name: "quotearg_colon", scope: !231, file: !231, line: 988, type: !3919, isLocal: false, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4144)
!4144 = !{!4145}
!4145 = !DILocalVariable(name: "arg", arg: 1, scope: !4143, file: !231, line: 988, type: !78)
!4146 = !DILocation(line: 988, column: 29, scope: !4143)
!4147 = !DILocation(line: 982, column: 28, scope: !4107, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 990, column: 10, scope: !4143)
!4149 = !DILocation(line: 982, column: 38, scope: !4107, inlinedAt: !4148)
!4150 = !DILocation(line: 973, column: 32, scope: !4071, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 984, column: 10, scope: !4107, inlinedAt: !4148)
!4152 = !DILocation(line: 973, column: 44, scope: !4071, inlinedAt: !4151)
!4153 = !DILocation(line: 973, column: 58, scope: !4071, inlinedAt: !4151)
!4154 = !DILocation(line: 975, column: 3, scope: !4071, inlinedAt: !4151)
!4155 = !DILocation(line: 976, column: 13, scope: !4071, inlinedAt: !4151)
!4156 = !DILocation(line: 975, column: 26, scope: !4071, inlinedAt: !4151)
!4157 = !DILocation(line: 144, column: 43, scope: !2539, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 977, column: 3, scope: !4071, inlinedAt: !4151)
!4159 = !DILocation(line: 144, column: 51, scope: !2539, inlinedAt: !4158)
!4160 = !DILocation(line: 144, column: 58, scope: !2539, inlinedAt: !4158)
!4161 = !DILocation(line: 146, column: 17, scope: !2539, inlinedAt: !4158)
!4162 = !DILocation(line: 148, column: 57, scope: !2557, inlinedAt: !4158)
!4163 = !DILocation(line: 147, column: 17, scope: !2539, inlinedAt: !4158)
!4164 = !DILocation(line: 149, column: 7, scope: !2539, inlinedAt: !4158)
!4165 = !DILocation(line: 150, column: 12, scope: !2539, inlinedAt: !4158)
!4166 = !DILocation(line: 151, column: 6, scope: !2539, inlinedAt: !4158)
!4167 = !DILocation(line: 978, column: 10, scope: !4071, inlinedAt: !4151)
!4168 = !DILocation(line: 979, column: 1, scope: !4071, inlinedAt: !4151)
!4169 = !DILocation(line: 990, column: 3, scope: !4143)
!4170 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !231, file: !231, line: 994, type: !3930, isLocal: false, isDefinition: true, scopeLine: 995, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4171)
!4171 = !{!4172, !4173}
!4172 = !DILocalVariable(name: "arg", arg: 1, scope: !4170, file: !231, line: 994, type: !78)
!4173 = !DILocalVariable(name: "argsize", arg: 2, scope: !4170, file: !231, line: 994, type: !75)
!4174 = !DILocation(line: 994, column: 33, scope: !4170)
!4175 = !DILocation(line: 994, column: 45, scope: !4170)
!4176 = !DILocation(line: 973, column: 32, scope: !4071, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 996, column: 10, scope: !4170)
!4178 = !DILocation(line: 973, column: 44, scope: !4071, inlinedAt: !4177)
!4179 = !DILocation(line: 973, column: 58, scope: !4071, inlinedAt: !4177)
!4180 = !DILocation(line: 975, column: 3, scope: !4071, inlinedAt: !4177)
!4181 = !DILocation(line: 976, column: 13, scope: !4071, inlinedAt: !4177)
!4182 = !DILocation(line: 975, column: 26, scope: !4071, inlinedAt: !4177)
!4183 = !DILocation(line: 144, column: 43, scope: !2539, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 977, column: 3, scope: !4071, inlinedAt: !4177)
!4185 = !DILocation(line: 144, column: 51, scope: !2539, inlinedAt: !4184)
!4186 = !DILocation(line: 144, column: 58, scope: !2539, inlinedAt: !4184)
!4187 = !DILocation(line: 146, column: 17, scope: !2539, inlinedAt: !4184)
!4188 = !DILocation(line: 148, column: 57, scope: !2557, inlinedAt: !4184)
!4189 = !DILocation(line: 147, column: 17, scope: !2539, inlinedAt: !4184)
!4190 = !DILocation(line: 149, column: 7, scope: !2539, inlinedAt: !4184)
!4191 = !DILocation(line: 150, column: 12, scope: !2539, inlinedAt: !4184)
!4192 = !DILocation(line: 151, column: 6, scope: !2539, inlinedAt: !4184)
!4193 = !DILocation(line: 978, column: 10, scope: !4071, inlinedAt: !4177)
!4194 = !DILocation(line: 979, column: 1, scope: !4071, inlinedAt: !4177)
!4195 = !DILocation(line: 996, column: 3, scope: !4170)
!4196 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !231, file: !231, line: 1000, type: !3944, isLocal: false, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4197)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DILocalVariable(name: "n", arg: 1, scope: !4196, file: !231, line: 1000, type: !87)
!4199 = !DILocalVariable(name: "s", arg: 2, scope: !4196, file: !231, line: 1000, type: !34)
!4200 = !DILocalVariable(name: "arg", arg: 3, scope: !4196, file: !231, line: 1000, type: !78)
!4201 = !DILocalVariable(name: "options", scope: !4196, file: !231, line: 1002, type: !238)
!4202 = !DILocation(line: 187, column: 26, scope: !3952, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 1003, column: 13, scope: !4196)
!4204 = !DILocation(line: 1000, column: 29, scope: !4196)
!4205 = !DILocation(line: 1000, column: 51, scope: !4196)
!4206 = !DILocation(line: 1000, column: 66, scope: !4196)
!4207 = !DILocation(line: 1002, column: 3, scope: !4196)
!4208 = !DILocation(line: 185, column: 48, scope: !3952, inlinedAt: !4203)
!4209 = !DILocation(line: 187, column: 3, scope: !3952, inlinedAt: !4203)
!4210 = !DILocation(line: 188, column: 13, scope: !3969, inlinedAt: !4203)
!4211 = !DILocation(line: 188, column: 7, scope: !3952, inlinedAt: !4203)
!4212 = !DILocation(line: 189, column: 5, scope: !3969, inlinedAt: !4203)
!4213 = !{!4214}
!4214 = distinct !{!4214, !4215, !"quoting_options_from_style: argument 0"}
!4215 = distinct !{!4215, !"quoting_options_from_style"}
!4216 = !DILocation(line: 191, column: 10, scope: !3952, inlinedAt: !4203)
!4217 = !DILocation(line: 192, column: 1, scope: !3952, inlinedAt: !4203)
!4218 = !DILocation(line: 1003, column: 13, scope: !4196)
!4219 = !DILocation(line: 1002, column: 26, scope: !4196)
!4220 = !DILocation(line: 144, column: 43, scope: !2539, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 1004, column: 3, scope: !4196)
!4222 = !DILocation(line: 144, column: 51, scope: !2539, inlinedAt: !4221)
!4223 = !DILocation(line: 144, column: 58, scope: !2539, inlinedAt: !4221)
!4224 = !DILocation(line: 146, column: 17, scope: !2539, inlinedAt: !4221)
!4225 = !DILocation(line: 148, column: 57, scope: !2557, inlinedAt: !4221)
!4226 = !DILocation(line: 147, column: 17, scope: !2539, inlinedAt: !4221)
!4227 = !DILocation(line: 149, column: 7, scope: !2539, inlinedAt: !4221)
!4228 = !DILocation(line: 150, column: 12, scope: !2539, inlinedAt: !4221)
!4229 = !DILocation(line: 151, column: 6, scope: !2539, inlinedAt: !4221)
!4230 = !DILocation(line: 1005, column: 10, scope: !4196)
!4231 = !DILocation(line: 1006, column: 1, scope: !4196)
!4232 = !DILocation(line: 1005, column: 3, scope: !4196)
!4233 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !231, file: !231, line: 1009, type: !4234, isLocal: false, isDefinition: true, scopeLine: 1011, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!81, !87, !78, !78, !78}
!4236 = !{!4237, !4238, !4239, !4240}
!4237 = !DILocalVariable(name: "n", arg: 1, scope: !4233, file: !231, line: 1009, type: !87)
!4238 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4233, file: !231, line: 1009, type: !78)
!4239 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4233, file: !231, line: 1010, type: !78)
!4240 = !DILocalVariable(name: "arg", arg: 4, scope: !4233, file: !231, line: 1010, type: !78)
!4241 = !DILocation(line: 1009, column: 24, scope: !4233)
!4242 = !DILocation(line: 1009, column: 39, scope: !4233)
!4243 = !DILocation(line: 1010, column: 32, scope: !4233)
!4244 = !DILocation(line: 1010, column: 57, scope: !4233)
!4245 = !DILocalVariable(name: "n", arg: 1, scope: !4246, file: !231, line: 1017, type: !87)
!4246 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !231, file: !231, line: 1017, type: !4247, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4249)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!81, !87, !78, !78, !78, !75}
!4249 = !{!4245, !4250, !4251, !4252, !4253, !4254}
!4250 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4246, file: !231, line: 1017, type: !78)
!4251 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4246, file: !231, line: 1018, type: !78)
!4252 = !DILocalVariable(name: "arg", arg: 4, scope: !4246, file: !231, line: 1019, type: !78)
!4253 = !DILocalVariable(name: "argsize", arg: 5, scope: !4246, file: !231, line: 1019, type: !75)
!4254 = !DILocalVariable(name: "o", scope: !4246, file: !231, line: 1021, type: !238)
!4255 = !DILocation(line: 1017, column: 28, scope: !4246, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 1012, column: 10, scope: !4233)
!4257 = !DILocation(line: 1017, column: 43, scope: !4246, inlinedAt: !4256)
!4258 = !DILocation(line: 1018, column: 36, scope: !4246, inlinedAt: !4256)
!4259 = !DILocation(line: 1019, column: 36, scope: !4246, inlinedAt: !4256)
!4260 = !DILocation(line: 1019, column: 48, scope: !4246, inlinedAt: !4256)
!4261 = !DILocation(line: 1021, column: 3, scope: !4246, inlinedAt: !4256)
!4262 = !DILocation(line: 1021, column: 30, scope: !4246, inlinedAt: !4256)
!4263 = !DILocation(line: 1021, column: 26, scope: !4246, inlinedAt: !4256)
!4264 = !DILocation(line: 171, column: 45, scope: !2589, inlinedAt: !4265)
!4265 = distinct !DILocation(line: 1022, column: 3, scope: !4246, inlinedAt: !4256)
!4266 = !DILocation(line: 172, column: 33, scope: !2589, inlinedAt: !4265)
!4267 = !DILocation(line: 172, column: 57, scope: !2589, inlinedAt: !4265)
!4268 = !DILocation(line: 176, column: 6, scope: !2589, inlinedAt: !4265)
!4269 = !DILocation(line: 176, column: 12, scope: !2589, inlinedAt: !4265)
!4270 = !DILocation(line: 177, column: 8, scope: !2605, inlinedAt: !4265)
!4271 = !DILocation(line: 177, column: 23, scope: !2607, inlinedAt: !4265)
!4272 = !DILocation(line: 177, column: 19, scope: !2605, inlinedAt: !4265)
!4273 = !DILocation(line: 178, column: 5, scope: !2605, inlinedAt: !4265)
!4274 = !DILocation(line: 179, column: 6, scope: !2589, inlinedAt: !4265)
!4275 = !DILocation(line: 179, column: 17, scope: !2589, inlinedAt: !4265)
!4276 = !DILocation(line: 180, column: 6, scope: !2589, inlinedAt: !4265)
!4277 = !DILocation(line: 180, column: 18, scope: !2589, inlinedAt: !4265)
!4278 = !DILocation(line: 1023, column: 10, scope: !4246, inlinedAt: !4256)
!4279 = !DILocation(line: 1024, column: 1, scope: !4246, inlinedAt: !4256)
!4280 = !DILocation(line: 1012, column: 3, scope: !4233)
!4281 = !DILocation(line: 1017, column: 28, scope: !4246)
!4282 = !DILocation(line: 1017, column: 43, scope: !4246)
!4283 = !DILocation(line: 1018, column: 36, scope: !4246)
!4284 = !DILocation(line: 1019, column: 36, scope: !4246)
!4285 = !DILocation(line: 1019, column: 48, scope: !4246)
!4286 = !DILocation(line: 1021, column: 3, scope: !4246)
!4287 = !DILocation(line: 1021, column: 30, scope: !4246)
!4288 = !DILocation(line: 1021, column: 26, scope: !4246)
!4289 = !DILocation(line: 171, column: 45, scope: !2589, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 1022, column: 3, scope: !4246)
!4291 = !DILocation(line: 172, column: 33, scope: !2589, inlinedAt: !4290)
!4292 = !DILocation(line: 172, column: 57, scope: !2589, inlinedAt: !4290)
!4293 = !DILocation(line: 176, column: 6, scope: !2589, inlinedAt: !4290)
!4294 = !DILocation(line: 176, column: 12, scope: !2589, inlinedAt: !4290)
!4295 = !DILocation(line: 177, column: 8, scope: !2605, inlinedAt: !4290)
!4296 = !DILocation(line: 177, column: 23, scope: !2607, inlinedAt: !4290)
!4297 = !DILocation(line: 177, column: 19, scope: !2605, inlinedAt: !4290)
!4298 = !DILocation(line: 178, column: 5, scope: !2605, inlinedAt: !4290)
!4299 = !DILocation(line: 179, column: 6, scope: !2589, inlinedAt: !4290)
!4300 = !DILocation(line: 179, column: 17, scope: !2589, inlinedAt: !4290)
!4301 = !DILocation(line: 180, column: 6, scope: !2589, inlinedAt: !4290)
!4302 = !DILocation(line: 180, column: 18, scope: !2589, inlinedAt: !4290)
!4303 = !DILocation(line: 1023, column: 10, scope: !4246)
!4304 = !DILocation(line: 1024, column: 1, scope: !4246)
!4305 = !DILocation(line: 1023, column: 3, scope: !4246)
!4306 = distinct !DISubprogram(name: "quotearg_custom", scope: !231, file: !231, line: 1027, type: !4307, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4309)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!81, !78, !78, !78}
!4309 = !{!4310, !4311, !4312}
!4310 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4306, file: !231, line: 1027, type: !78)
!4311 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4306, file: !231, line: 1027, type: !78)
!4312 = !DILocalVariable(name: "arg", arg: 3, scope: !4306, file: !231, line: 1028, type: !78)
!4313 = !DILocation(line: 1027, column: 30, scope: !4306)
!4314 = !DILocation(line: 1027, column: 54, scope: !4306)
!4315 = !DILocation(line: 1028, column: 30, scope: !4306)
!4316 = !DILocation(line: 1009, column: 24, scope: !4233, inlinedAt: !4317)
!4317 = distinct !DILocation(line: 1030, column: 10, scope: !4306)
!4318 = !DILocation(line: 1009, column: 39, scope: !4233, inlinedAt: !4317)
!4319 = !DILocation(line: 1010, column: 32, scope: !4233, inlinedAt: !4317)
!4320 = !DILocation(line: 1010, column: 57, scope: !4233, inlinedAt: !4317)
!4321 = !DILocation(line: 1017, column: 28, scope: !4246, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 1012, column: 10, scope: !4233, inlinedAt: !4317)
!4323 = !DILocation(line: 1017, column: 43, scope: !4246, inlinedAt: !4322)
!4324 = !DILocation(line: 1018, column: 36, scope: !4246, inlinedAt: !4322)
!4325 = !DILocation(line: 1019, column: 36, scope: !4246, inlinedAt: !4322)
!4326 = !DILocation(line: 1019, column: 48, scope: !4246, inlinedAt: !4322)
!4327 = !DILocation(line: 1021, column: 3, scope: !4246, inlinedAt: !4322)
!4328 = !DILocation(line: 1021, column: 30, scope: !4246, inlinedAt: !4322)
!4329 = !DILocation(line: 1021, column: 26, scope: !4246, inlinedAt: !4322)
!4330 = !DILocation(line: 171, column: 45, scope: !2589, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 1022, column: 3, scope: !4246, inlinedAt: !4322)
!4332 = !DILocation(line: 172, column: 33, scope: !2589, inlinedAt: !4331)
!4333 = !DILocation(line: 172, column: 57, scope: !2589, inlinedAt: !4331)
!4334 = !DILocation(line: 176, column: 6, scope: !2589, inlinedAt: !4331)
!4335 = !DILocation(line: 176, column: 12, scope: !2589, inlinedAt: !4331)
!4336 = !DILocation(line: 177, column: 8, scope: !2605, inlinedAt: !4331)
!4337 = !DILocation(line: 177, column: 23, scope: !2607, inlinedAt: !4331)
!4338 = !DILocation(line: 177, column: 19, scope: !2605, inlinedAt: !4331)
!4339 = !DILocation(line: 178, column: 5, scope: !2605, inlinedAt: !4331)
!4340 = !DILocation(line: 179, column: 6, scope: !2589, inlinedAt: !4331)
!4341 = !DILocation(line: 179, column: 17, scope: !2589, inlinedAt: !4331)
!4342 = !DILocation(line: 180, column: 6, scope: !2589, inlinedAt: !4331)
!4343 = !DILocation(line: 180, column: 18, scope: !2589, inlinedAt: !4331)
!4344 = !DILocation(line: 1023, column: 10, scope: !4246, inlinedAt: !4322)
!4345 = !DILocation(line: 1024, column: 1, scope: !4246, inlinedAt: !4322)
!4346 = !DILocation(line: 1030, column: 3, scope: !4306)
!4347 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !231, file: !231, line: 1034, type: !4348, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4350)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!81, !78, !78, !78, !75}
!4350 = !{!4351, !4352, !4353, !4354}
!4351 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4347, file: !231, line: 1034, type: !78)
!4352 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4347, file: !231, line: 1034, type: !78)
!4353 = !DILocalVariable(name: "arg", arg: 3, scope: !4347, file: !231, line: 1035, type: !78)
!4354 = !DILocalVariable(name: "argsize", arg: 4, scope: !4347, file: !231, line: 1035, type: !75)
!4355 = !DILocation(line: 1034, column: 34, scope: !4347)
!4356 = !DILocation(line: 1034, column: 58, scope: !4347)
!4357 = !DILocation(line: 1035, column: 34, scope: !4347)
!4358 = !DILocation(line: 1035, column: 46, scope: !4347)
!4359 = !DILocation(line: 1017, column: 28, scope: !4246, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1037, column: 10, scope: !4347)
!4361 = !DILocation(line: 1017, column: 43, scope: !4246, inlinedAt: !4360)
!4362 = !DILocation(line: 1018, column: 36, scope: !4246, inlinedAt: !4360)
!4363 = !DILocation(line: 1019, column: 36, scope: !4246, inlinedAt: !4360)
!4364 = !DILocation(line: 1019, column: 48, scope: !4246, inlinedAt: !4360)
!4365 = !DILocation(line: 1021, column: 3, scope: !4246, inlinedAt: !4360)
!4366 = !DILocation(line: 1021, column: 30, scope: !4246, inlinedAt: !4360)
!4367 = !DILocation(line: 1021, column: 26, scope: !4246, inlinedAt: !4360)
!4368 = !DILocation(line: 171, column: 45, scope: !2589, inlinedAt: !4369)
!4369 = distinct !DILocation(line: 1022, column: 3, scope: !4246, inlinedAt: !4360)
!4370 = !DILocation(line: 172, column: 33, scope: !2589, inlinedAt: !4369)
!4371 = !DILocation(line: 172, column: 57, scope: !2589, inlinedAt: !4369)
!4372 = !DILocation(line: 176, column: 6, scope: !2589, inlinedAt: !4369)
!4373 = !DILocation(line: 176, column: 12, scope: !2589, inlinedAt: !4369)
!4374 = !DILocation(line: 177, column: 8, scope: !2605, inlinedAt: !4369)
!4375 = !DILocation(line: 177, column: 23, scope: !2607, inlinedAt: !4369)
!4376 = !DILocation(line: 177, column: 19, scope: !2605, inlinedAt: !4369)
!4377 = !DILocation(line: 178, column: 5, scope: !2605, inlinedAt: !4369)
!4378 = !DILocation(line: 179, column: 6, scope: !2589, inlinedAt: !4369)
!4379 = !DILocation(line: 179, column: 17, scope: !2589, inlinedAt: !4369)
!4380 = !DILocation(line: 180, column: 6, scope: !2589, inlinedAt: !4369)
!4381 = !DILocation(line: 180, column: 18, scope: !2589, inlinedAt: !4369)
!4382 = !DILocation(line: 1023, column: 10, scope: !4246, inlinedAt: !4360)
!4383 = !DILocation(line: 1024, column: 1, scope: !4246, inlinedAt: !4360)
!4384 = !DILocation(line: 1037, column: 3, scope: !4347)
!4385 = distinct !DISubprogram(name: "quote_n_mem", scope: !231, file: !231, line: 1052, type: !4386, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4388)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!78, !87, !78, !75}
!4388 = !{!4389, !4390, !4391}
!4389 = !DILocalVariable(name: "n", arg: 1, scope: !4385, file: !231, line: 1052, type: !87)
!4390 = !DILocalVariable(name: "arg", arg: 2, scope: !4385, file: !231, line: 1052, type: !78)
!4391 = !DILocalVariable(name: "argsize", arg: 3, scope: !4385, file: !231, line: 1052, type: !75)
!4392 = !DILocation(line: 1052, column: 18, scope: !4385)
!4393 = !DILocation(line: 1052, column: 33, scope: !4385)
!4394 = !DILocation(line: 1052, column: 45, scope: !4385)
!4395 = !DILocation(line: 1054, column: 10, scope: !4385)
!4396 = !DILocation(line: 1054, column: 3, scope: !4385)
!4397 = distinct !DISubprogram(name: "quote_mem", scope: !231, file: !231, line: 1058, type: !4398, isLocal: false, isDefinition: true, scopeLine: 1059, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4400)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!78, !78, !75}
!4400 = !{!4401, !4402}
!4401 = !DILocalVariable(name: "arg", arg: 1, scope: !4397, file: !231, line: 1058, type: !78)
!4402 = !DILocalVariable(name: "argsize", arg: 2, scope: !4397, file: !231, line: 1058, type: !75)
!4403 = !DILocation(line: 1058, column: 24, scope: !4397)
!4404 = !DILocation(line: 1058, column: 36, scope: !4397)
!4405 = !DILocation(line: 1052, column: 18, scope: !4385, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 1060, column: 10, scope: !4397)
!4407 = !DILocation(line: 1052, column: 33, scope: !4385, inlinedAt: !4406)
!4408 = !DILocation(line: 1052, column: 45, scope: !4385, inlinedAt: !4406)
!4409 = !DILocation(line: 1054, column: 10, scope: !4385, inlinedAt: !4406)
!4410 = !DILocation(line: 1060, column: 3, scope: !4397)
!4411 = distinct !DISubprogram(name: "quote_n", scope: !231, file: !231, line: 1064, type: !4412, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4414)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!78, !87, !78}
!4414 = !{!4415, !4416}
!4415 = !DILocalVariable(name: "n", arg: 1, scope: !4411, file: !231, line: 1064, type: !87)
!4416 = !DILocalVariable(name: "arg", arg: 2, scope: !4411, file: !231, line: 1064, type: !78)
!4417 = !DILocation(line: 1064, column: 14, scope: !4411)
!4418 = !DILocation(line: 1064, column: 29, scope: !4411)
!4419 = !DILocation(line: 1052, column: 18, scope: !4385, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 1066, column: 10, scope: !4411)
!4421 = !DILocation(line: 1052, column: 33, scope: !4385, inlinedAt: !4420)
!4422 = !DILocation(line: 1052, column: 45, scope: !4385, inlinedAt: !4420)
!4423 = !DILocation(line: 1054, column: 10, scope: !4385, inlinedAt: !4420)
!4424 = !DILocation(line: 1066, column: 3, scope: !4411)
!4425 = distinct !DISubprogram(name: "quote", scope: !231, file: !231, line: 1070, type: !4426, isLocal: false, isDefinition: true, scopeLine: 1071, flags: DIFlagPrototyped, isOptimized: true, unit: !219, variables: !4428)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!78, !78}
!4428 = !{!4429}
!4429 = !DILocalVariable(name: "arg", arg: 1, scope: !4425, file: !231, line: 1070, type: !78)
!4430 = !DILocation(line: 1070, column: 20, scope: !4425)
!4431 = !DILocation(line: 1064, column: 14, scope: !4411, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 1072, column: 10, scope: !4425)
!4433 = !DILocation(line: 1064, column: 29, scope: !4411, inlinedAt: !4432)
!4434 = !DILocation(line: 1052, column: 18, scope: !4385, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 1066, column: 10, scope: !4411, inlinedAt: !4432)
!4436 = !DILocation(line: 1052, column: 33, scope: !4385, inlinedAt: !4435)
!4437 = !DILocation(line: 1052, column: 45, scope: !4385, inlinedAt: !4435)
!4438 = !DILocation(line: 1054, column: 10, scope: !4385, inlinedAt: !4435)
!4439 = !DILocation(line: 1072, column: 3, scope: !4425)
!4440 = distinct !DISubprogram(name: "version_etc_arn", scope: !647, file: !647, line: 62, type: !4441, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4483)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{null, !4443, !78, !78, !78, !1561, !75}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4445, file: !1162, line: 242, baseType: !87, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4445, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4445, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4445, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4445, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4445, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4445, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4445, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4445, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4445, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4445, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4445, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4445, file: !1162, line: 260, baseType: !4460, size: 64, offset: 768)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !4462)
!4462 = !{!4463, !4464, !4466}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !4461, file: !1162, line: 157, baseType: !4460, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !4461, file: !1162, line: 158, baseType: !4465, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !4461, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4445, file: !1162, line: 262, baseType: !4465, size: 64, offset: 832)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4445, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4445, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4445, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4445, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4445, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4445, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4445, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4445, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4445, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4445, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !4445, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !4445, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4445, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4445, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4445, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!4483 = !{!4484, !4485, !4486, !4487, !4488, !4489}
!4484 = !DILocalVariable(name: "stream", arg: 1, scope: !4440, file: !647, line: 62, type: !4443)
!4485 = !DILocalVariable(name: "command_name", arg: 2, scope: !4440, file: !647, line: 63, type: !78)
!4486 = !DILocalVariable(name: "package", arg: 3, scope: !4440, file: !647, line: 63, type: !78)
!4487 = !DILocalVariable(name: "version", arg: 4, scope: !4440, file: !647, line: 64, type: !78)
!4488 = !DILocalVariable(name: "authors", arg: 5, scope: !4440, file: !647, line: 65, type: !1561)
!4489 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4440, file: !647, line: 65, type: !75)
!4490 = !DILocation(line: 62, column: 24, scope: !4440)
!4491 = !DILocation(line: 63, column: 30, scope: !4440)
!4492 = !DILocation(line: 63, column: 56, scope: !4440)
!4493 = !DILocation(line: 64, column: 30, scope: !4440)
!4494 = !DILocation(line: 65, column: 39, scope: !4440)
!4495 = !DILocation(line: 65, column: 55, scope: !4440)
!4496 = !DILocation(line: 67, column: 7, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4440, file: !647, line: 67, column: 7)
!4498 = !DILocation(line: 67, column: 7, scope: !4440)
!4499 = !DILocation(line: 68, column: 5, scope: !4497)
!4500 = !DILocation(line: 70, column: 5, scope: !4497)
!4501 = !DILocation(line: 84, column: 3, scope: !4440)
!4502 = !DILocation(line: 84, column: 3, scope: !4503)
!4503 = !DILexicalBlockFile(scope: !4440, file: !647, discriminator: 1)
!4504 = !DILocation(line: 86, column: 3, scope: !4440)
!4505 = !DILocation(line: 86, column: 3, scope: !4503)
!4506 = !DILocation(line: 95, column: 3, scope: !4440)
!4507 = !DILocation(line: 99, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4440, file: !647, line: 96, column: 5)
!4509 = !DILocation(line: 102, column: 7, scope: !4508)
!4510 = !DILocation(line: 102, column: 7, scope: !4511)
!4511 = !DILexicalBlockFile(scope: !4508, file: !647, discriminator: 1)
!4512 = !DILocation(line: 103, column: 7, scope: !4508)
!4513 = !DILocation(line: 106, column: 7, scope: !4508)
!4514 = !DILocation(line: 106, column: 7, scope: !4511)
!4515 = !DILocation(line: 107, column: 7, scope: !4508)
!4516 = !DILocation(line: 110, column: 7, scope: !4508)
!4517 = !DILocation(line: 110, column: 7, scope: !4511)
!4518 = !DILocation(line: 112, column: 7, scope: !4508)
!4519 = !DILocation(line: 117, column: 7, scope: !4508)
!4520 = !DILocation(line: 117, column: 7, scope: !4511)
!4521 = !DILocation(line: 119, column: 7, scope: !4508)
!4522 = !DILocation(line: 124, column: 7, scope: !4508)
!4523 = !DILocation(line: 124, column: 7, scope: !4511)
!4524 = !DILocation(line: 126, column: 7, scope: !4508)
!4525 = !DILocation(line: 131, column: 7, scope: !4508)
!4526 = !DILocation(line: 131, column: 7, scope: !4511)
!4527 = !DILocation(line: 134, column: 7, scope: !4508)
!4528 = !DILocation(line: 139, column: 7, scope: !4508)
!4529 = !DILocation(line: 139, column: 7, scope: !4511)
!4530 = !DILocation(line: 142, column: 7, scope: !4508)
!4531 = !DILocation(line: 147, column: 7, scope: !4508)
!4532 = !DILocation(line: 147, column: 7, scope: !4511)
!4533 = !DILocation(line: 151, column: 7, scope: !4508)
!4534 = !DILocation(line: 156, column: 7, scope: !4508)
!4535 = !DILocation(line: 156, column: 7, scope: !4511)
!4536 = !DILocation(line: 160, column: 7, scope: !4508)
!4537 = !DILocation(line: 167, column: 7, scope: !4508)
!4538 = !DILocation(line: 167, column: 7, scope: !4511)
!4539 = !DILocation(line: 171, column: 7, scope: !4508)
!4540 = !DILocation(line: 173, column: 1, scope: !4440)
!4541 = distinct !DISubprogram(name: "version_etc_ar", scope: !647, file: !647, line: 180, type: !4542, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !4443, !78, !78, !78, !1561}
!4544 = !{!4545, !4546, !4547, !4548, !4549, !4550}
!4545 = !DILocalVariable(name: "stream", arg: 1, scope: !4541, file: !647, line: 180, type: !4443)
!4546 = !DILocalVariable(name: "command_name", arg: 2, scope: !4541, file: !647, line: 181, type: !78)
!4547 = !DILocalVariable(name: "package", arg: 3, scope: !4541, file: !647, line: 181, type: !78)
!4548 = !DILocalVariable(name: "version", arg: 4, scope: !4541, file: !647, line: 182, type: !78)
!4549 = !DILocalVariable(name: "authors", arg: 5, scope: !4541, file: !647, line: 182, type: !1561)
!4550 = !DILocalVariable(name: "n_authors", scope: !4541, file: !647, line: 184, type: !75)
!4551 = !DILocation(line: 180, column: 23, scope: !4541)
!4552 = !DILocation(line: 181, column: 29, scope: !4541)
!4553 = !DILocation(line: 181, column: 55, scope: !4541)
!4554 = !DILocation(line: 182, column: 29, scope: !4541)
!4555 = !DILocation(line: 182, column: 59, scope: !4541)
!4556 = !DILocation(line: 184, column: 10, scope: !4541)
!4557 = !DILocation(line: 186, column: 8, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4541, file: !647, line: 186, column: 3)
!4559 = !DILocation(line: 186, column: 23, scope: !4560)
!4560 = !DILexicalBlockFile(scope: !4561, file: !647, discriminator: 1)
!4561 = distinct !DILexicalBlock(scope: !4558, file: !647, line: 186, column: 3)
!4562 = !DILocation(line: 186, column: 3, scope: !4563)
!4563 = !DILexicalBlockFile(scope: !4558, file: !647, discriminator: 1)
!4564 = !DILocation(line: 186, column: 52, scope: !4565)
!4565 = !DILexicalBlockFile(scope: !4561, file: !647, discriminator: 3)
!4566 = distinct !{!4566, !4567, !4568}
!4567 = !DILocation(line: 186, column: 3, scope: !4558)
!4568 = !DILocation(line: 187, column: 5, scope: !4558)
!4569 = !DILocation(line: 188, column: 3, scope: !4541)
!4570 = !DILocation(line: 189, column: 1, scope: !4541)
!4571 = distinct !DISubprogram(name: "version_etc_va", scope: !647, file: !647, line: 196, type: !4572, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4581)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4443, !78, !78, !78, !4574}
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !644, line: 189, size: 192, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4575, file: !644, line: 189, baseType: !244, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4575, file: !644, line: 189, baseType: !244, size: 32, offset: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4575, file: !644, line: 189, baseType: !73, size: 64, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4575, file: !644, line: 189, baseType: !73, size: 64, offset: 128)
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588}
!4582 = !DILocalVariable(name: "stream", arg: 1, scope: !4571, file: !647, line: 196, type: !4443)
!4583 = !DILocalVariable(name: "command_name", arg: 2, scope: !4571, file: !647, line: 197, type: !78)
!4584 = !DILocalVariable(name: "package", arg: 3, scope: !4571, file: !647, line: 197, type: !78)
!4585 = !DILocalVariable(name: "version", arg: 4, scope: !4571, file: !647, line: 198, type: !78)
!4586 = !DILocalVariable(name: "authors", arg: 5, scope: !4571, file: !647, line: 198, type: !4574)
!4587 = !DILocalVariable(name: "n_authors", scope: !4571, file: !647, line: 200, type: !75)
!4588 = !DILocalVariable(name: "authtab", scope: !4571, file: !647, line: 201, type: !4589)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !234)
!4590 = !DILocation(line: 196, column: 23, scope: !4571)
!4591 = !DILocation(line: 197, column: 29, scope: !4571)
!4592 = !DILocation(line: 197, column: 55, scope: !4571)
!4593 = !DILocation(line: 198, column: 29, scope: !4571)
!4594 = !DILocation(line: 198, column: 46, scope: !4571)
!4595 = !DILocation(line: 201, column: 3, scope: !4571)
!4596 = !DILocation(line: 201, column: 15, scope: !4571)
!4597 = !DILocation(line: 200, column: 10, scope: !4571)
!4598 = !DILocation(line: 205, column: 35, scope: !4599)
!4599 = !DILexicalBlockFile(scope: !4600, file: !647, discriminator: 1)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !647, line: 203, column: 3)
!4601 = distinct !DILexicalBlock(scope: !4571, file: !647, line: 203, column: 3)
!4602 = !DILocation(line: 205, column: 35, scope: !4603)
!4603 = !DILexicalBlockFile(scope: !4600, file: !647, discriminator: 2)
!4604 = !DILocation(line: 205, column: 35, scope: !4605)
!4605 = !DILexicalBlockFile(scope: !4600, file: !647, discriminator: 3)
!4606 = !DILocation(line: 205, column: 35, scope: !4607)
!4607 = !DILexicalBlockFile(scope: !4600, file: !647, discriminator: 4)
!4608 = !DILocation(line: 205, column: 14, scope: !4607)
!4609 = !DILocation(line: 205, column: 33, scope: !4607)
!4610 = !DILocation(line: 205, column: 67, scope: !4607)
!4611 = !DILocation(line: 203, column: 3, scope: !4612)
!4612 = !DILexicalBlockFile(scope: !4601, file: !647, discriminator: 1)
!4613 = !DILocation(line: 208, column: 3, scope: !4571)
!4614 = !DILocation(line: 210, column: 1, scope: !4571)
!4615 = distinct !DISubprogram(name: "version_etc", scope: !647, file: !647, line: 227, type: !4616, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4443, !78, !78, !78, null}
!4618 = !{!4619, !4620, !4621, !4622, !4623}
!4619 = !DILocalVariable(name: "stream", arg: 1, scope: !4615, file: !647, line: 227, type: !4443)
!4620 = !DILocalVariable(name: "command_name", arg: 2, scope: !4615, file: !647, line: 228, type: !78)
!4621 = !DILocalVariable(name: "package", arg: 3, scope: !4615, file: !647, line: 228, type: !78)
!4622 = !DILocalVariable(name: "version", arg: 4, scope: !4615, file: !647, line: 229, type: !78)
!4623 = !DILocalVariable(name: "authors", scope: !4615, file: !647, line: 231, type: !4624)
!4624 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1160, line: 80, baseType: !4625)
!4625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4626, line: 50, baseType: !4627)
!4626 = !DIFile(filename: "/usr/bin/../lib/clang/4.0.1/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !644, line: 231, baseType: !4628)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4575, size: 192, elements: !1195)
!4629 = !DILocation(line: 227, column: 20, scope: !4615)
!4630 = !DILocation(line: 228, column: 26, scope: !4615)
!4631 = !DILocation(line: 228, column: 52, scope: !4615)
!4632 = !DILocation(line: 229, column: 26, scope: !4615)
!4633 = !DILocation(line: 231, column: 3, scope: !4615)
!4634 = !DILocation(line: 231, column: 11, scope: !4615)
!4635 = !DILocation(line: 233, column: 3, scope: !4615)
!4636 = !DILocation(line: 234, column: 3, scope: !4615)
!4637 = !DILocation(line: 235, column: 3, scope: !4615)
!4638 = !DILocation(line: 236, column: 1, scope: !4615)
!4639 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !647, file: !647, line: 239, type: !193, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !643, variables: !180)
!4640 = !DILocation(line: 245, column: 3, scope: !4639)
!4641 = !DILocation(line: 245, column: 3, scope: !4642)
!4642 = !DILexicalBlockFile(scope: !4639, file: !647, discriminator: 1)
!4643 = !DILocation(line: 251, column: 3, scope: !4639)
!4644 = !DILocation(line: 251, column: 3, scope: !4642)
!4645 = !DILocation(line: 256, column: 3, scope: !4639)
!4646 = !DILocation(line: 256, column: 3, scope: !4642)
!4647 = !DILocation(line: 258, column: 1, scope: !4639)
!4648 = distinct !DISubprogram(name: "xnmalloc", scope: !655, file: !655, line: 105, type: !4649, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4651)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!73, !75, !75}
!4651 = !{!4652, !4653}
!4652 = !DILocalVariable(name: "n", arg: 1, scope: !4648, file: !655, line: 105, type: !75)
!4653 = !DILocalVariable(name: "s", arg: 2, scope: !4648, file: !655, line: 105, type: !75)
!4654 = !DILocation(line: 105, column: 18, scope: !4648)
!4655 = !DILocation(line: 105, column: 28, scope: !4648)
!4656 = !DILocation(line: 107, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4648, file: !655, line: 107, column: 7)
!4658 = !DILocation(line: 107, column: 7, scope: !4648)
!4659 = !DILocation(line: 108, column: 5, scope: !4657)
!4660 = !DILocation(line: 109, column: 21, scope: !4648)
!4661 = !DILocalVariable(name: "n", arg: 1, scope: !4662, file: !4663, line: 39, type: !75)
!4662 = distinct !DISubprogram(name: "xmalloc", scope: !4663, file: !4663, line: 39, type: !4664, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4666)
!4663 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!73, !75}
!4666 = !{!4661, !4667}
!4667 = !DILocalVariable(name: "p", scope: !4662, file: !4663, line: 41, type: !73)
!4668 = !DILocation(line: 39, column: 17, scope: !4662, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 109, column: 10, scope: !4648)
!4670 = !DILocation(line: 41, column: 13, scope: !4662, inlinedAt: !4669)
!4671 = !DILocation(line: 41, column: 9, scope: !4662, inlinedAt: !4669)
!4672 = !DILocation(line: 42, column: 8, scope: !4673, inlinedAt: !4669)
!4673 = distinct !DILexicalBlock(scope: !4662, file: !4663, line: 42, column: 7)
!4674 = !DILocation(line: 42, column: 15, scope: !4675, inlinedAt: !4669)
!4675 = !DILexicalBlockFile(scope: !4673, file: !4663, discriminator: 1)
!4676 = !DILocation(line: 42, column: 10, scope: !4673, inlinedAt: !4669)
!4677 = !DILocation(line: 43, column: 5, scope: !4673, inlinedAt: !4669)
!4678 = !DILocation(line: 109, column: 3, scope: !4648)
!4679 = !DILocation(line: 39, column: 17, scope: !4662)
!4680 = !DILocation(line: 41, column: 13, scope: !4662)
!4681 = !DILocation(line: 41, column: 9, scope: !4662)
!4682 = !DILocation(line: 42, column: 8, scope: !4673)
!4683 = !DILocation(line: 42, column: 15, scope: !4675)
!4684 = !DILocation(line: 42, column: 10, scope: !4673)
!4685 = !DILocation(line: 43, column: 5, scope: !4673)
!4686 = !DILocation(line: 44, column: 3, scope: !4662)
!4687 = distinct !DISubprogram(name: "xnrealloc", scope: !655, file: !655, line: 118, type: !4688, isLocal: false, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4690)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!73, !73, !75, !75}
!4690 = !{!4691, !4692, !4693}
!4691 = !DILocalVariable(name: "p", arg: 1, scope: !4687, file: !655, line: 118, type: !73)
!4692 = !DILocalVariable(name: "n", arg: 2, scope: !4687, file: !655, line: 118, type: !75)
!4693 = !DILocalVariable(name: "s", arg: 3, scope: !4687, file: !655, line: 118, type: !75)
!4694 = !DILocation(line: 118, column: 18, scope: !4687)
!4695 = !DILocation(line: 118, column: 28, scope: !4687)
!4696 = !DILocation(line: 118, column: 38, scope: !4687)
!4697 = !DILocation(line: 120, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4687, file: !655, line: 120, column: 7)
!4699 = !DILocation(line: 120, column: 7, scope: !4687)
!4700 = !DILocation(line: 121, column: 5, scope: !4698)
!4701 = !DILocation(line: 122, column: 25, scope: !4687)
!4702 = !DILocalVariable(name: "p", arg: 1, scope: !4703, file: !4663, line: 51, type: !73)
!4703 = distinct !DISubprogram(name: "xrealloc", scope: !4663, file: !4663, line: 51, type: !4704, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4706)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!73, !73, !75}
!4706 = !{!4702, !4707}
!4707 = !DILocalVariable(name: "n", arg: 2, scope: !4703, file: !4663, line: 51, type: !75)
!4708 = !DILocation(line: 51, column: 17, scope: !4703, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 122, column: 10, scope: !4687)
!4710 = !DILocation(line: 51, column: 27, scope: !4703, inlinedAt: !4709)
!4711 = !DILocation(line: 53, column: 8, scope: !4712, inlinedAt: !4709)
!4712 = distinct !DILexicalBlock(scope: !4703, file: !4663, line: 53, column: 7)
!4713 = !DILocation(line: 53, column: 13, scope: !4714, inlinedAt: !4709)
!4714 = !DILexicalBlockFile(scope: !4712, file: !4663, discriminator: 1)
!4715 = !DILocation(line: 53, column: 10, scope: !4712, inlinedAt: !4709)
!4716 = !DILocation(line: 57, column: 7, scope: !4717, inlinedAt: !4709)
!4717 = distinct !DILexicalBlock(scope: !4712, file: !4663, line: 54, column: 5)
!4718 = !DILocation(line: 58, column: 7, scope: !4717, inlinedAt: !4709)
!4719 = !DILocation(line: 61, column: 7, scope: !4703, inlinedAt: !4709)
!4720 = !DILocation(line: 62, column: 8, scope: !4721, inlinedAt: !4709)
!4721 = distinct !DILexicalBlock(scope: !4703, file: !4663, line: 62, column: 7)
!4722 = !DILocation(line: 62, column: 13, scope: !4723, inlinedAt: !4709)
!4723 = !DILexicalBlockFile(scope: !4721, file: !4663, discriminator: 1)
!4724 = !DILocation(line: 62, column: 10, scope: !4721, inlinedAt: !4709)
!4725 = !DILocation(line: 63, column: 5, scope: !4721, inlinedAt: !4709)
!4726 = !DILocation(line: 122, column: 3, scope: !4687)
!4727 = !DILocation(line: 51, column: 17, scope: !4703)
!4728 = !DILocation(line: 51, column: 27, scope: !4703)
!4729 = !DILocation(line: 53, column: 8, scope: !4712)
!4730 = !DILocation(line: 53, column: 13, scope: !4714)
!4731 = !DILocation(line: 53, column: 10, scope: !4712)
!4732 = !DILocation(line: 57, column: 7, scope: !4717)
!4733 = !DILocation(line: 58, column: 7, scope: !4717)
!4734 = !DILocation(line: 61, column: 7, scope: !4703)
!4735 = !DILocation(line: 62, column: 8, scope: !4721)
!4736 = !DILocation(line: 62, column: 13, scope: !4723)
!4737 = !DILocation(line: 62, column: 10, scope: !4721)
!4738 = !DILocation(line: 63, column: 5, scope: !4721)
!4739 = !DILocation(line: 65, column: 1, scope: !4703)
!4740 = !DILocation(line: 180, column: 19, scope: !656)
!4741 = !DILocation(line: 180, column: 30, scope: !656)
!4742 = !DILocation(line: 180, column: 41, scope: !656)
!4743 = !DILocation(line: 182, column: 14, scope: !656)
!4744 = !DILocation(line: 182, column: 10, scope: !656)
!4745 = !DILocation(line: 184, column: 9, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !656, file: !655, line: 184, column: 7)
!4747 = !DILocation(line: 184, column: 7, scope: !656)
!4748 = !DILocation(line: 186, column: 13, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !655, line: 186, column: 11)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !655, line: 185, column: 5)
!4751 = !DILocation(line: 186, column: 11, scope: !4750)
!4752 = !DILocation(line: 194, column: 30, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !655, line: 187, column: 9)
!4754 = !DILocation(line: 195, column: 16, scope: !4753)
!4755 = !DILocation(line: 195, column: 13, scope: !4753)
!4756 = !DILocation(line: 196, column: 9, scope: !4753)
!4757 = !DILocation(line: 204, column: 69, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !655, line: 204, column: 11)
!4759 = distinct !DILexicalBlock(scope: !4746, file: !655, line: 199, column: 5)
!4760 = !DILocation(line: 205, column: 11, scope: !4758)
!4761 = !DILocation(line: 204, column: 11, scope: !4759)
!4762 = !DILocation(line: 206, column: 9, scope: !4758)
!4763 = !DILocation(line: 210, column: 7, scope: !656)
!4764 = !DILocation(line: 211, column: 25, scope: !656)
!4765 = !DILocation(line: 51, column: 17, scope: !4703, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 211, column: 10, scope: !656)
!4767 = !DILocation(line: 51, column: 27, scope: !4703, inlinedAt: !4766)
!4768 = !DILocation(line: 53, column: 10, scope: !4712, inlinedAt: !4766)
!4769 = !DILocation(line: 207, column: 14, scope: !4759)
!4770 = !DILocation(line: 207, column: 18, scope: !4759)
!4771 = !DILocation(line: 207, column: 9, scope: !4759)
!4772 = !DILocation(line: 53, column: 8, scope: !4712, inlinedAt: !4766)
!4773 = !DILocation(line: 57, column: 7, scope: !4717, inlinedAt: !4766)
!4774 = !DILocation(line: 58, column: 7, scope: !4717, inlinedAt: !4766)
!4775 = !DILocation(line: 61, column: 7, scope: !4703, inlinedAt: !4766)
!4776 = !DILocation(line: 62, column: 8, scope: !4721, inlinedAt: !4766)
!4777 = !DILocation(line: 62, column: 13, scope: !4723, inlinedAt: !4766)
!4778 = !DILocation(line: 62, column: 10, scope: !4721, inlinedAt: !4766)
!4779 = !DILocation(line: 63, column: 5, scope: !4721, inlinedAt: !4766)
!4780 = !DILocation(line: 211, column: 3, scope: !656)
!4781 = distinct !DISubprogram(name: "xcharalloc", scope: !655, file: !655, line: 220, type: !3714, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4782)
!4782 = !{!4783}
!4783 = !DILocalVariable(name: "n", arg: 1, scope: !4781, file: !655, line: 220, type: !75)
!4784 = !DILocation(line: 220, column: 20, scope: !4781)
!4785 = !DILocation(line: 39, column: 17, scope: !4662, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 222, column: 10, scope: !4781)
!4787 = !DILocation(line: 41, column: 13, scope: !4662, inlinedAt: !4786)
!4788 = !DILocation(line: 41, column: 9, scope: !4662, inlinedAt: !4786)
!4789 = !DILocation(line: 42, column: 8, scope: !4673, inlinedAt: !4786)
!4790 = !DILocation(line: 42, column: 15, scope: !4675, inlinedAt: !4786)
!4791 = !DILocation(line: 42, column: 10, scope: !4673, inlinedAt: !4786)
!4792 = !DILocation(line: 43, column: 5, scope: !4673, inlinedAt: !4786)
!4793 = !DILocation(line: 222, column: 3, scope: !4781)
!4794 = distinct !DISubprogram(name: "x2realloc", scope: !4663, file: !4663, line: 74, type: !4795, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!73, !73, !74}
!4797 = !{!4798, !4799}
!4798 = !DILocalVariable(name: "p", arg: 1, scope: !4794, file: !4663, line: 74, type: !73)
!4799 = !DILocalVariable(name: "pn", arg: 2, scope: !4794, file: !4663, line: 74, type: !74)
!4800 = !DILocation(line: 74, column: 18, scope: !4794)
!4801 = !DILocation(line: 74, column: 29, scope: !4794)
!4802 = !DILocation(line: 180, column: 19, scope: !656, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 76, column: 10, scope: !4794)
!4804 = !DILocation(line: 180, column: 30, scope: !656, inlinedAt: !4803)
!4805 = !DILocation(line: 180, column: 41, scope: !656, inlinedAt: !4803)
!4806 = !DILocation(line: 182, column: 14, scope: !656, inlinedAt: !4803)
!4807 = !DILocation(line: 182, column: 10, scope: !656, inlinedAt: !4803)
!4808 = !DILocation(line: 184, column: 9, scope: !4746, inlinedAt: !4803)
!4809 = !DILocation(line: 184, column: 7, scope: !656, inlinedAt: !4803)
!4810 = !DILocation(line: 186, column: 13, scope: !4749, inlinedAt: !4803)
!4811 = !DILocation(line: 186, column: 11, scope: !4750, inlinedAt: !4803)
!4812 = !DILocation(line: 210, column: 7, scope: !656, inlinedAt: !4803)
!4813 = !DILocation(line: 51, column: 17, scope: !4703, inlinedAt: !4814)
!4814 = distinct !DILocation(line: 211, column: 10, scope: !656, inlinedAt: !4803)
!4815 = !DILocation(line: 51, column: 27, scope: !4703, inlinedAt: !4814)
!4816 = !DILocation(line: 53, column: 10, scope: !4712, inlinedAt: !4814)
!4817 = !DILocation(line: 205, column: 11, scope: !4758, inlinedAt: !4803)
!4818 = !DILocation(line: 204, column: 11, scope: !4759, inlinedAt: !4803)
!4819 = !DILocation(line: 206, column: 9, scope: !4758, inlinedAt: !4803)
!4820 = !DILocation(line: 207, column: 14, scope: !4759, inlinedAt: !4803)
!4821 = !DILocation(line: 207, column: 18, scope: !4759, inlinedAt: !4803)
!4822 = !DILocation(line: 207, column: 9, scope: !4759, inlinedAt: !4803)
!4823 = !DILocation(line: 53, column: 8, scope: !4712, inlinedAt: !4814)
!4824 = !DILocation(line: 57, column: 7, scope: !4717, inlinedAt: !4814)
!4825 = !DILocation(line: 58, column: 7, scope: !4717, inlinedAt: !4814)
!4826 = !DILocation(line: 61, column: 7, scope: !4703, inlinedAt: !4814)
!4827 = !DILocation(line: 62, column: 8, scope: !4721, inlinedAt: !4814)
!4828 = !DILocation(line: 62, column: 13, scope: !4723, inlinedAt: !4814)
!4829 = !DILocation(line: 62, column: 10, scope: !4721, inlinedAt: !4814)
!4830 = !DILocation(line: 63, column: 5, scope: !4721, inlinedAt: !4814)
!4831 = !DILocation(line: 76, column: 3, scope: !4794)
!4832 = distinct !DISubprogram(name: "xzalloc", scope: !4663, file: !4663, line: 84, type: !4664, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4833)
!4833 = !{!4834}
!4834 = !DILocalVariable(name: "s", arg: 1, scope: !4832, file: !4663, line: 84, type: !75)
!4835 = !DILocation(line: 84, column: 17, scope: !4832)
!4836 = !DILocation(line: 39, column: 17, scope: !4662, inlinedAt: !4837)
!4837 = distinct !DILocation(line: 86, column: 18, scope: !4832)
!4838 = !DILocation(line: 41, column: 13, scope: !4662, inlinedAt: !4837)
!4839 = !DILocation(line: 41, column: 9, scope: !4662, inlinedAt: !4837)
!4840 = !DILocation(line: 42, column: 8, scope: !4673, inlinedAt: !4837)
!4841 = !DILocation(line: 42, column: 15, scope: !4675, inlinedAt: !4837)
!4842 = !DILocation(line: 42, column: 10, scope: !4673, inlinedAt: !4837)
!4843 = !DILocation(line: 43, column: 5, scope: !4673, inlinedAt: !4837)
!4844 = !DILocation(line: 86, column: 10, scope: !4832)
!4845 = !DILocation(line: 86, column: 3, scope: !4832)
!4846 = distinct !DISubprogram(name: "xcalloc", scope: !4663, file: !4663, line: 93, type: !4649, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4847)
!4847 = !{!4848, !4849, !4850}
!4848 = !DILocalVariable(name: "n", arg: 1, scope: !4846, file: !4663, line: 93, type: !75)
!4849 = !DILocalVariable(name: "s", arg: 2, scope: !4846, file: !4663, line: 93, type: !75)
!4850 = !DILocalVariable(name: "p", scope: !4846, file: !4663, line: 95, type: !73)
!4851 = !DILocation(line: 93, column: 17, scope: !4846)
!4852 = !DILocation(line: 93, column: 27, scope: !4846)
!4853 = !DILocation(line: 100, column: 7, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4846, file: !4663, line: 100, column: 7)
!4855 = !DILocation(line: 101, column: 7, scope: !4854)
!4856 = !DILocation(line: 101, column: 18, scope: !4857)
!4857 = !DILexicalBlockFile(scope: !4854, file: !4663, discriminator: 1)
!4858 = !DILocation(line: 95, column: 9, scope: !4846)
!4859 = !DILocation(line: 101, column: 16, scope: !4857)
!4860 = !DILocation(line: 100, column: 7, scope: !4861)
!4861 = !DILexicalBlockFile(scope: !4846, file: !4663, discriminator: 1)
!4862 = !DILocation(line: 102, column: 5, scope: !4854)
!4863 = !DILocation(line: 103, column: 3, scope: !4846)
!4864 = distinct !DISubprogram(name: "xmemdup", scope: !4663, file: !4663, line: 111, type: !4865, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4867)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!73, !82, !75}
!4867 = !{!4868, !4869}
!4868 = !DILocalVariable(name: "p", arg: 1, scope: !4864, file: !4663, line: 111, type: !82)
!4869 = !DILocalVariable(name: "s", arg: 2, scope: !4864, file: !4663, line: 111, type: !75)
!4870 = !DILocation(line: 111, column: 22, scope: !4864)
!4871 = !DILocation(line: 111, column: 32, scope: !4864)
!4872 = !DILocation(line: 39, column: 17, scope: !4662, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 113, column: 18, scope: !4864)
!4874 = !DILocation(line: 41, column: 13, scope: !4662, inlinedAt: !4873)
!4875 = !DILocation(line: 41, column: 9, scope: !4662, inlinedAt: !4873)
!4876 = !DILocation(line: 42, column: 8, scope: !4673, inlinedAt: !4873)
!4877 = !DILocation(line: 42, column: 15, scope: !4675, inlinedAt: !4873)
!4878 = !DILocation(line: 42, column: 10, scope: !4673, inlinedAt: !4873)
!4879 = !DILocation(line: 43, column: 5, scope: !4673, inlinedAt: !4873)
!4880 = !DILocation(line: 113, column: 10, scope: !4864)
!4881 = !DILocation(line: 113, column: 3, scope: !4864)
!4882 = distinct !DISubprogram(name: "xstrdup", scope: !4663, file: !4663, line: 119, type: !3919, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !651, variables: !4883)
!4883 = !{!4884}
!4884 = !DILocalVariable(name: "string", arg: 1, scope: !4882, file: !4663, line: 119, type: !78)
!4885 = !DILocation(line: 119, column: 22, scope: !4882)
!4886 = !DILocation(line: 121, column: 27, scope: !4882)
!4887 = !DILocation(line: 121, column: 43, scope: !4882)
!4888 = !DILocation(line: 111, column: 22, scope: !4864, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 121, column: 10, scope: !4890)
!4890 = !DILexicalBlockFile(scope: !4882, file: !4663, discriminator: 1)
!4891 = !DILocation(line: 111, column: 32, scope: !4864, inlinedAt: !4889)
!4892 = !DILocation(line: 39, column: 17, scope: !4662, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 113, column: 18, scope: !4864, inlinedAt: !4889)
!4894 = !DILocation(line: 41, column: 13, scope: !4662, inlinedAt: !4893)
!4895 = !DILocation(line: 41, column: 9, scope: !4662, inlinedAt: !4893)
!4896 = !DILocation(line: 42, column: 8, scope: !4673, inlinedAt: !4893)
!4897 = !DILocation(line: 42, column: 15, scope: !4675, inlinedAt: !4893)
!4898 = !DILocation(line: 42, column: 10, scope: !4673, inlinedAt: !4893)
!4899 = !DILocation(line: 43, column: 5, scope: !4673, inlinedAt: !4893)
!4900 = !DILocation(line: 113, column: 10, scope: !4864, inlinedAt: !4889)
!4901 = !DILocation(line: 121, column: 3, scope: !4882)
!4902 = distinct !DISubprogram(name: "xalloc_die", scope: !4903, file: !4903, line: 32, type: !193, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !667, variables: !180)
!4903 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4904 = !DILocation(line: 34, column: 10, scope: !4902)
!4905 = !DILocation(line: 34, column: 33, scope: !4902)
!4906 = !DILocation(line: 34, column: 3, scope: !4907)
!4907 = !DILexicalBlockFile(scope: !4902, file: !4903, discriminator: 1)
!4908 = !DILocation(line: 40, column: 3, scope: !4902)
!4909 = distinct !DISubprogram(name: "xmemcoll", scope: !4910, file: !4910, line: 54, type: !4911, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !4913)
!4910 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!87, !81, !75, !81, !75}
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919}
!4914 = !DILocalVariable(name: "s1", arg: 1, scope: !4909, file: !4910, line: 54, type: !81)
!4915 = !DILocalVariable(name: "s1len", arg: 2, scope: !4909, file: !4910, line: 54, type: !75)
!4916 = !DILocalVariable(name: "s2", arg: 3, scope: !4909, file: !4910, line: 54, type: !81)
!4917 = !DILocalVariable(name: "s2len", arg: 4, scope: !4909, file: !4910, line: 54, type: !75)
!4918 = !DILocalVariable(name: "diff", scope: !4909, file: !4910, line: 56, type: !87)
!4919 = !DILocalVariable(name: "collation_errno", scope: !4909, file: !4910, line: 57, type: !87)
!4920 = !DILocation(line: 54, column: 17, scope: !4909)
!4921 = !DILocation(line: 54, column: 28, scope: !4909)
!4922 = !DILocation(line: 54, column: 41, scope: !4909)
!4923 = !DILocation(line: 54, column: 52, scope: !4909)
!4924 = !DILocation(line: 56, column: 14, scope: !4909)
!4925 = !DILocation(line: 56, column: 7, scope: !4909)
!4926 = !DILocation(line: 57, column: 25, scope: !4909)
!4927 = !DILocation(line: 57, column: 7, scope: !4909)
!4928 = !DILocation(line: 58, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4909, file: !4910, line: 58, column: 7)
!4930 = !DILocation(line: 58, column: 7, scope: !4909)
!4931 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4932, file: !4910, line: 35, type: !87)
!4932 = distinct !DISubprogram(name: "collate_error", scope: !4910, file: !4910, line: 35, type: !4933, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !87, !78, !75, !78, !75}
!4935 = !{!4931, !4936, !4937, !4938, !4939}
!4936 = !DILocalVariable(name: "s1", arg: 2, scope: !4932, file: !4910, line: 36, type: !78)
!4937 = !DILocalVariable(name: "s1len", arg: 3, scope: !4932, file: !4910, line: 36, type: !75)
!4938 = !DILocalVariable(name: "s2", arg: 4, scope: !4932, file: !4910, line: 37, type: !78)
!4939 = !DILocalVariable(name: "s2len", arg: 5, scope: !4932, file: !4910, line: 37, type: !75)
!4940 = !DILocation(line: 35, column: 20, scope: !4932, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 59, column: 5, scope: !4929)
!4942 = !DILocation(line: 36, column: 28, scope: !4932, inlinedAt: !4941)
!4943 = !DILocation(line: 36, column: 39, scope: !4932, inlinedAt: !4941)
!4944 = !DILocation(line: 37, column: 28, scope: !4932, inlinedAt: !4941)
!4945 = !DILocation(line: 37, column: 39, scope: !4932, inlinedAt: !4941)
!4946 = !DILocation(line: 39, column: 30, scope: !4932, inlinedAt: !4941)
!4947 = !DILocation(line: 39, column: 3, scope: !4948, inlinedAt: !4941)
!4948 = !DILexicalBlockFile(scope: !4932, file: !4910, discriminator: 1)
!4949 = !DILocation(line: 40, column: 16, scope: !4932, inlinedAt: !4941)
!4950 = !DILocation(line: 40, column: 3, scope: !4948, inlinedAt: !4941)
!4951 = !DILocation(line: 41, column: 10, scope: !4932, inlinedAt: !4941)
!4952 = !DILocation(line: 42, column: 10, scope: !4932, inlinedAt: !4941)
!4953 = !DILocation(line: 43, column: 10, scope: !4932, inlinedAt: !4941)
!4954 = !DILocation(line: 44, column: 10, scope: !4932, inlinedAt: !4941)
!4955 = !DILocation(line: 41, column: 3, scope: !4932, inlinedAt: !4941)
!4956 = !DILocation(line: 59, column: 5, scope: !4929)
!4957 = !DILocation(line: 60, column: 3, scope: !4909)
!4958 = distinct !DISubprogram(name: "xmemcoll0", scope: !4910, file: !4910, line: 69, type: !4959, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !669, variables: !4961)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!87, !78, !75, !78, !75}
!4961 = !{!4962, !4963, !4964, !4965, !4966, !4967}
!4962 = !DILocalVariable(name: "s1", arg: 1, scope: !4958, file: !4910, line: 69, type: !78)
!4963 = !DILocalVariable(name: "s1size", arg: 2, scope: !4958, file: !4910, line: 69, type: !75)
!4964 = !DILocalVariable(name: "s2", arg: 3, scope: !4958, file: !4910, line: 69, type: !78)
!4965 = !DILocalVariable(name: "s2size", arg: 4, scope: !4958, file: !4910, line: 69, type: !75)
!4966 = !DILocalVariable(name: "diff", scope: !4958, file: !4910, line: 71, type: !87)
!4967 = !DILocalVariable(name: "collation_errno", scope: !4958, file: !4910, line: 72, type: !87)
!4968 = !DILocation(line: 69, column: 24, scope: !4958)
!4969 = !DILocation(line: 69, column: 35, scope: !4958)
!4970 = !DILocation(line: 69, column: 55, scope: !4958)
!4971 = !DILocation(line: 69, column: 66, scope: !4958)
!4972 = !DILocation(line: 71, column: 14, scope: !4958)
!4973 = !DILocation(line: 71, column: 7, scope: !4958)
!4974 = !DILocation(line: 72, column: 25, scope: !4958)
!4975 = !DILocation(line: 72, column: 7, scope: !4958)
!4976 = !DILocation(line: 73, column: 7, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4958, file: !4910, line: 73, column: 7)
!4978 = !DILocation(line: 73, column: 7, scope: !4958)
!4979 = !DILocation(line: 74, column: 48, scope: !4977)
!4980 = !DILocation(line: 74, column: 64, scope: !4977)
!4981 = !DILocation(line: 35, column: 20, scope: !4932, inlinedAt: !4982)
!4982 = distinct !DILocation(line: 74, column: 5, scope: !4977)
!4983 = !DILocation(line: 36, column: 28, scope: !4932, inlinedAt: !4982)
!4984 = !DILocation(line: 36, column: 39, scope: !4932, inlinedAt: !4982)
!4985 = !DILocation(line: 37, column: 28, scope: !4932, inlinedAt: !4982)
!4986 = !DILocation(line: 37, column: 39, scope: !4932, inlinedAt: !4982)
!4987 = !DILocation(line: 39, column: 30, scope: !4932, inlinedAt: !4982)
!4988 = !DILocation(line: 39, column: 3, scope: !4948, inlinedAt: !4982)
!4989 = !DILocation(line: 40, column: 16, scope: !4932, inlinedAt: !4982)
!4990 = !DILocation(line: 40, column: 3, scope: !4948, inlinedAt: !4982)
!4991 = !DILocation(line: 41, column: 10, scope: !4932, inlinedAt: !4982)
!4992 = !DILocation(line: 42, column: 10, scope: !4932, inlinedAt: !4982)
!4993 = !DILocation(line: 43, column: 10, scope: !4932, inlinedAt: !4982)
!4994 = !DILocation(line: 44, column: 10, scope: !4932, inlinedAt: !4982)
!4995 = !DILocation(line: 41, column: 3, scope: !4932, inlinedAt: !4982)
!4996 = !DILocation(line: 74, column: 5, scope: !4977)
!4997 = !DILocation(line: 75, column: 3, scope: !4958)
!4998 = distinct !DISubprogram(name: "xstrtoul", scope: !4999, file: !4999, line: 88, type: !5000, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !5004)
!4999 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!5002, !78, !777, !87, !5003, !78}
!5002 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !20, line: 39, baseType: !19)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!5004 = !{!5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5017, !5018, !5021, !5022}
!5005 = !DILocalVariable(name: "s", arg: 1, scope: !4998, file: !4999, line: 88, type: !78)
!5006 = !DILocalVariable(name: "ptr", arg: 2, scope: !4998, file: !4999, line: 88, type: !777)
!5007 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4998, file: !4999, line: 88, type: !87)
!5008 = !DILocalVariable(name: "val", arg: 4, scope: !4998, file: !4999, line: 89, type: !5003)
!5009 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4998, file: !4999, line: 89, type: !78)
!5010 = !DILocalVariable(name: "t_ptr", scope: !4998, file: !4999, line: 91, type: !81)
!5011 = !DILocalVariable(name: "p", scope: !4998, file: !4999, line: 92, type: !777)
!5012 = !DILocalVariable(name: "tmp", scope: !4998, file: !4999, line: 93, type: !77)
!5013 = !DILocalVariable(name: "err", scope: !4998, file: !4999, line: 94, type: !5002)
!5014 = !DILocalVariable(name: "q", scope: !5015, file: !4999, line: 104, type: !78)
!5015 = distinct !DILexicalBlock(scope: !5016, file: !4999, line: 103, column: 5)
!5016 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 102, column: 7)
!5017 = !DILocalVariable(name: "ch", scope: !5015, file: !4999, line: 105, type: !86)
!5018 = !DILocalVariable(name: "base", scope: !5019, file: !4999, line: 141, type: !87)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !4999, line: 140, column: 5)
!5020 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 139, column: 7)
!5021 = !DILocalVariable(name: "suffixes", scope: !5019, file: !4999, line: 142, type: !87)
!5022 = !DILocalVariable(name: "overflow", scope: !5019, file: !4999, line: 143, type: !5002)
!5023 = !DILocation(line: 88, column: 24, scope: !4998)
!5024 = !DILocation(line: 88, column: 34, scope: !4998)
!5025 = !DILocation(line: 88, column: 43, scope: !4998)
!5026 = !DILocation(line: 89, column: 24, scope: !4998)
!5027 = !DILocation(line: 89, column: 41, scope: !4998)
!5028 = !DILocation(line: 91, column: 3, scope: !4998)
!5029 = !DILocation(line: 94, column: 16, scope: !4998)
!5030 = !DILocation(line: 96, column: 3, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5032, file: !4999, line: 96, column: 3)
!5032 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 96, column: 3)
!5033 = !DILocation(line: 96, column: 3, scope: !5034)
!5034 = !DILexicalBlockFile(scope: !5031, file: !4999, discriminator: 3)
!5035 = !DILocation(line: 98, column: 8, scope: !4998)
!5036 = !DILocation(line: 92, column: 10, scope: !4998)
!5037 = !DILocation(line: 100, column: 3, scope: !4998)
!5038 = !DILocation(line: 100, column: 9, scope: !4998)
!5039 = !DILocation(line: 104, column: 19, scope: !5015)
!5040 = !DILocation(line: 106, column: 14, scope: !5041)
!5041 = !DILexicalBlockFile(scope: !5015, file: !4999, discriminator: 1)
!5042 = !DILocation(line: 106, column: 7, scope: !5015)
!5043 = !DILocation(line: 105, column: 21, scope: !5015)
!5044 = !DILocation(line: 106, column: 7, scope: !5041)
!5045 = !DILocation(line: 107, column: 15, scope: !5015)
!5046 = distinct !{!5046, !5042, !5047}
!5047 = !DILocation(line: 107, column: 17, scope: !5015)
!5048 = !DILocation(line: 109, column: 9, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5015, file: !4999, line: 108, column: 11)
!5050 = !DILocation(line: 112, column: 9, scope: !4998)
!5051 = !DILocation(line: 93, column: 14, scope: !4998)
!5052 = !DILocation(line: 114, column: 7, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 114, column: 7)
!5054 = !DILocation(line: 114, column: 10, scope: !5053)
!5055 = !DILocation(line: 114, column: 7, scope: !4998)
!5056 = !DILocation(line: 118, column: 11, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !4999, line: 118, column: 11)
!5058 = distinct !DILexicalBlock(scope: !5053, file: !4999, line: 115, column: 5)
!5059 = !DILocation(line: 118, column: 26, scope: !5057)
!5060 = !DILocation(line: 118, column: 29, scope: !5061)
!5061 = !DILexicalBlockFile(scope: !5057, file: !4999, discriminator: 1)
!5062 = !DILocation(line: 118, column: 33, scope: !5061)
!5063 = !DILocation(line: 118, column: 36, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !5057, file: !4999, discriminator: 5)
!5065 = !DILocation(line: 118, column: 11, scope: !5066)
!5066 = !DILexicalBlockFile(scope: !5058, file: !4999, discriminator: 5)
!5067 = !DILocation(line: 123, column: 12, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5053, file: !4999, line: 123, column: 12)
!5069 = !DILocation(line: 123, column: 12, scope: !5053)
!5070 = !DILocation(line: 128, column: 5, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !4999, line: 124, column: 5)
!5072 = !DILocation(line: 133, column: 8, scope: !5073)
!5073 = distinct !DILexicalBlock(scope: !4998, file: !4999, line: 133, column: 7)
!5074 = !DILocation(line: 133, column: 7, scope: !4998)
!5075 = !DILocation(line: 135, column: 12, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5073, file: !4999, line: 134, column: 5)
!5077 = !DILocation(line: 136, column: 7, scope: !5076)
!5078 = !DILocation(line: 139, column: 7, scope: !5020)
!5079 = !DILocation(line: 139, column: 11, scope: !5020)
!5080 = !DILocation(line: 139, column: 7, scope: !4998)
!5081 = !DILocation(line: 141, column: 11, scope: !5019)
!5082 = !DILocation(line: 142, column: 11, scope: !5019)
!5083 = !DILocation(line: 145, column: 12, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5085, file: !4999, discriminator: 3)
!5085 = distinct !DILexicalBlock(scope: !5019, file: !4999, line: 145, column: 11)
!5086 = !DILocation(line: 145, column: 11, scope: !5087)
!5087 = !DILexicalBlockFile(scope: !5019, file: !4999, discriminator: 3)
!5088 = !DILocation(line: 147, column: 16, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5085, file: !4999, line: 146, column: 9)
!5090 = !DILocation(line: 148, column: 22, scope: !5089)
!5091 = !DILocation(line: 148, column: 11, scope: !5089)
!5092 = !DILocation(line: 151, column: 7, scope: !5019)
!5093 = !DILocation(line: 163, column: 15, scope: !5094)
!5094 = !DILexicalBlockFile(scope: !5095, file: !4999, discriminator: 2)
!5095 = distinct !DILexicalBlock(scope: !5096, file: !4999, line: 163, column: 15)
!5096 = distinct !DILexicalBlock(scope: !5019, file: !4999, line: 152, column: 9)
!5097 = !DILocation(line: 163, column: 15, scope: !5098)
!5098 = !DILexicalBlockFile(scope: !5096, file: !4999, discriminator: 2)
!5099 = !DILocation(line: 164, column: 21, scope: !5095)
!5100 = !DILocation(line: 164, column: 13, scope: !5095)
!5101 = !DILocation(line: 167, column: 21, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5103, file: !4999, line: 167, column: 21)
!5103 = distinct !DILexicalBlock(scope: !5095, file: !4999, line: 165, column: 15)
!5104 = !DILocation(line: 167, column: 29, scope: !5102)
!5105 = !DILocation(line: 167, column: 21, scope: !5103)
!5106 = !DILocation(line: 175, column: 17, scope: !5103)
!5107 = !DILocation(line: 179, column: 7, scope: !5019)
!5108 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !5109, file: !4999, line: 60, type: !87)
!5109 = distinct !DISubprogram(name: "bkm_scale", scope: !4999, file: !4999, line: 60, type: !5110, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !5112)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!5002, !5003, !87}
!5112 = !{!5113, !5108}
!5113 = !DILocalVariable(name: "x", arg: 1, scope: !5109, file: !4999, line: 60, type: !5003)
!5114 = !DILocation(line: 60, column: 31, scope: !5109, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 182, column: 22, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5019, file: !4999, line: 180, column: 9)
!5117 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5115)
!5118 = distinct !DILexicalBlock(scope: !5109, file: !4999, line: 67, column: 7)
!5119 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5115)
!5120 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5115)
!5121 = !DILocation(line: 143, column: 20, scope: !5019)
!5122 = !DILocation(line: 183, column: 11, scope: !5116)
!5123 = !DILocation(line: 60, column: 31, scope: !5109, inlinedAt: !5124)
!5124 = distinct !DILocation(line: 189, column: 22, scope: !5116)
!5125 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5124)
!5126 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5124)
!5127 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5124)
!5128 = !DILocation(line: 190, column: 11, scope: !5116)
!5129 = !DILocalVariable(name: "power", arg: 3, scope: !5130, file: !4999, line: 77, type: !87)
!5130 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4999, file: !4999, line: 77, type: !5131, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !671, variables: !5133)
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!5002, !5003, !87, !87}
!5133 = !{!5134, !5135, !5129, !5136}
!5134 = !DILocalVariable(name: "x", arg: 1, scope: !5130, file: !4999, line: 77, type: !5003)
!5135 = !DILocalVariable(name: "base", arg: 2, scope: !5130, file: !4999, line: 77, type: !87)
!5136 = !DILocalVariable(name: "err", scope: !5130, file: !4999, line: 79, type: !5002)
!5137 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 197, column: 22, scope: !5116)
!5139 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5138)
!5140 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5138)
!5142 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5141)
!5143 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5141)
!5144 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5138)
!5145 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5146)
!5146 = distinct !DILocation(line: 202, column: 22, scope: !5116)
!5147 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5146)
!5148 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5146)
!5150 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5149)
!5151 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5149)
!5152 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5146)
!5153 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5154)
!5154 = distinct !DILocation(line: 207, column: 22, scope: !5116)
!5155 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5154)
!5156 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5157)
!5157 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5154)
!5158 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5157)
!5159 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5157)
!5160 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 212, column: 22, scope: !5116)
!5162 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5161)
!5163 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5161)
!5165 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5164)
!5166 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5164)
!5167 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5161)
!5168 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5169)
!5169 = distinct !DILocation(line: 216, column: 22, scope: !5116)
!5170 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5169)
!5171 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5172)
!5172 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5169)
!5173 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5172)
!5174 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5172)
!5175 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5169)
!5176 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 221, column: 22, scope: !5116)
!5178 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5177)
!5179 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5180)
!5180 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5177)
!5181 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5180)
!5182 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5180)
!5183 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5177)
!5184 = !DILocation(line: 60, column: 31, scope: !5109, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 225, column: 22, scope: !5116)
!5186 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5185)
!5187 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5185)
!5188 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5185)
!5189 = !DILocation(line: 226, column: 11, scope: !5116)
!5190 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5191)
!5191 = distinct !DILocation(line: 229, column: 22, scope: !5116)
!5192 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5191)
!5193 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5194)
!5194 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5191)
!5195 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5194)
!5196 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5194)
!5197 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5191)
!5198 = !DILocation(line: 77, column: 50, scope: !5130, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 233, column: 22, scope: !5116)
!5200 = !DILocation(line: 79, column: 16, scope: !5130, inlinedAt: !5199)
!5201 = !DILocation(line: 67, column: 39, scope: !5118, inlinedAt: !5202)
!5202 = distinct !DILocation(line: 81, column: 12, scope: !5130, inlinedAt: !5199)
!5203 = !DILocation(line: 72, column: 6, scope: !5109, inlinedAt: !5202)
!5204 = !DILocation(line: 67, column: 7, scope: !5109, inlinedAt: !5202)
!5205 = !DILocation(line: 81, column: 9, scope: !5130, inlinedAt: !5199)
!5206 = !DILocation(line: 237, column: 16, scope: !5116)
!5207 = !DILocation(line: 238, column: 22, scope: !5116)
!5208 = !DILocation(line: 238, column: 11, scope: !5116)
!5209 = !DILocation(line: 241, column: 11, scope: !5019)
!5210 = !DILocation(line: 242, column: 10, scope: !5019)
!5211 = !DILocation(line: 243, column: 11, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5019, file: !4999, line: 243, column: 11)
!5213 = !DILocation(line: 244, column: 13, scope: !5212)
!5214 = !DILocation(line: 243, column: 11, scope: !5019)
!5215 = !DILocation(line: 247, column: 8, scope: !4998)
!5216 = !DILocation(line: 248, column: 3, scope: !4998)
!5217 = !DILocation(line: 249, column: 1, scope: !4998)
!5218 = distinct !DISubprogram(name: "rpl_calloc", scope: !5219, file: !5219, line: 42, type: !4649, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !675, variables: !5220)
!5219 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5220 = !{!5221, !5222, !5223, !5224}
!5221 = !DILocalVariable(name: "n", arg: 1, scope: !5218, file: !5219, line: 42, type: !75)
!5222 = !DILocalVariable(name: "s", arg: 2, scope: !5218, file: !5219, line: 42, type: !75)
!5223 = !DILocalVariable(name: "result", scope: !5218, file: !5219, line: 44, type: !73)
!5224 = !DILocalVariable(name: "bytes", scope: !5225, file: !5219, line: 56, type: !75)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !5219, line: 53, column: 5)
!5226 = distinct !DILexicalBlock(scope: !5218, file: !5219, line: 47, column: 7)
!5227 = !DILocation(line: 42, column: 20, scope: !5218)
!5228 = !DILocation(line: 42, column: 30, scope: !5218)
!5229 = !DILocation(line: 47, column: 9, scope: !5226)
!5230 = !DILocation(line: 47, column: 19, scope: !5231)
!5231 = !DILexicalBlockFile(scope: !5226, file: !5219, discriminator: 1)
!5232 = !DILocation(line: 47, column: 14, scope: !5226)
!5233 = !DILocation(line: 56, column: 24, scope: !5225)
!5234 = !DILocation(line: 56, column: 14, scope: !5225)
!5235 = !DILocation(line: 57, column: 17, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5225, file: !5219, line: 57, column: 11)
!5237 = !DILocation(line: 57, column: 21, scope: !5236)
!5238 = !DILocation(line: 57, column: 11, scope: !5225)
!5239 = !DILocation(line: 59, column: 11, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !5219, line: 58, column: 9)
!5241 = !DILocation(line: 59, column: 17, scope: !5240)
!5242 = !DILocation(line: 65, column: 12, scope: !5218)
!5243 = !DILocation(line: 44, column: 9, scope: !5218)
!5244 = !DILocation(line: 72, column: 3, scope: !5218)
!5245 = !DILocation(line: 73, column: 1, scope: !5218)
!5246 = distinct !DISubprogram(name: "rpl_fclose", scope: !5247, file: !5247, line: 56, type: !5248, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !677, variables: !5290)
!5247 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!87, !5250}
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5252)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5253)
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5252, file: !1162, line: 242, baseType: !87, size: 32)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5252, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5252, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5252, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5252, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5252, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5252, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5252, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5252, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5252, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5252, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5252, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5252, file: !1162, line: 260, baseType: !5267, size: 64, offset: 768)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5269)
!5269 = !{!5270, !5271, !5273}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5268, file: !1162, line: 157, baseType: !5267, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5268, file: !1162, line: 158, baseType: !5272, size: 64, offset: 64)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5268, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5252, file: !1162, line: 262, baseType: !5272, size: 64, offset: 832)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5252, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5252, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5252, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5252, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5252, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5252, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5252, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5252, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5252, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5252, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5252, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5252, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5252, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5252, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5252, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5290 = !{!5291, !5292, !5293, !5294}
!5291 = !DILocalVariable(name: "fp", arg: 1, scope: !5246, file: !5247, line: 56, type: !5250)
!5292 = !DILocalVariable(name: "saved_errno", scope: !5246, file: !5247, line: 58, type: !87)
!5293 = !DILocalVariable(name: "fd", scope: !5246, file: !5247, line: 59, type: !87)
!5294 = !DILocalVariable(name: "result", scope: !5246, file: !5247, line: 60, type: !87)
!5295 = !DILocation(line: 56, column: 19, scope: !5246)
!5296 = !DILocation(line: 58, column: 7, scope: !5246)
!5297 = !DILocation(line: 60, column: 7, scope: !5246)
!5298 = !DILocation(line: 63, column: 8, scope: !5246)
!5299 = !DILocation(line: 59, column: 7, scope: !5246)
!5300 = !DILocation(line: 64, column: 10, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5246, file: !5247, line: 64, column: 7)
!5302 = !DILocation(line: 64, column: 7, scope: !5246)
!5303 = !DILocation(line: 65, column: 12, scope: !5301)
!5304 = !DILocation(line: 65, column: 5, scope: !5301)
!5305 = !DILocation(line: 70, column: 9, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5246, file: !5247, line: 70, column: 7)
!5307 = !DILocation(line: 70, column: 23, scope: !5306)
!5308 = !DILocation(line: 70, column: 33, scope: !5309)
!5309 = !DILexicalBlockFile(scope: !5306, file: !5247, discriminator: 1)
!5310 = !DILocation(line: 70, column: 26, scope: !5311)
!5311 = !DILexicalBlockFile(scope: !5306, file: !5247, discriminator: 3)
!5312 = !DILocation(line: 70, column: 59, scope: !5309)
!5313 = !DILocation(line: 71, column: 7, scope: !5306)
!5314 = !DILocation(line: 71, column: 10, scope: !5309)
!5315 = !DILocation(line: 70, column: 7, scope: !5316)
!5316 = !DILexicalBlockFile(scope: !5246, file: !5247, discriminator: 2)
!5317 = !DILocation(line: 98, column: 12, scope: !5246)
!5318 = !DILocation(line: 103, column: 7, scope: !5246)
!5319 = !DILocation(line: 72, column: 19, scope: !5306)
!5320 = !DILocation(line: 103, column: 19, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5246, file: !5247, line: 103, column: 7)
!5322 = !DILocation(line: 105, column: 13, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5321, file: !5247, line: 104, column: 5)
!5324 = !DILocation(line: 107, column: 5, scope: !5323)
!5325 = !DILocation(line: 110, column: 1, scope: !5246)
!5326 = distinct !DISubprogram(name: "rpl_fflush", scope: !5327, file: !5327, line: 127, type: !5328, isLocal: false, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !5370)
!5327 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!87, !5330}
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5332)
!5332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5333)
!5333 = !{!5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5332, file: !1162, line: 242, baseType: !87, size: 32)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5332, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5332, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5332, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5332, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5332, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5332, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5332, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5332, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5332, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5332, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5332, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5332, file: !1162, line: 260, baseType: !5347, size: 64, offset: 768)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5349)
!5349 = !{!5350, !5351, !5353}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5348, file: !1162, line: 157, baseType: !5347, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5348, file: !1162, line: 158, baseType: !5352, size: 64, offset: 64)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5348, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5332, file: !1162, line: 262, baseType: !5352, size: 64, offset: 832)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5332, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5332, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5332, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5332, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5332, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5332, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5332, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5332, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5332, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5332, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5332, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5332, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5332, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5332, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5332, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5370 = !{!5371}
!5371 = !DILocalVariable(name: "stream", arg: 1, scope: !5326, file: !5327, line: 127, type: !5330)
!5372 = !DILocation(line: 127, column: 19, scope: !5326)
!5373 = !DILocation(line: 148, column: 14, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5326, file: !5327, line: 148, column: 7)
!5375 = !DILocation(line: 148, column: 22, scope: !5374)
!5376 = !DILocation(line: 148, column: 27, scope: !5377)
!5377 = !DILexicalBlockFile(scope: !5374, file: !5327, discriminator: 1)
!5378 = !DILocation(line: 148, column: 7, scope: !5379)
!5379 = !DILexicalBlockFile(scope: !5326, file: !5327, discriminator: 1)
!5380 = !DILocation(line: 149, column: 12, scope: !5374)
!5381 = !DILocation(line: 149, column: 5, scope: !5374)
!5382 = !DILocalVariable(name: "fp", arg: 1, scope: !5383, file: !5327, line: 40, type: !5330)
!5383 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !5327, file: !5327, line: 40, type: !5384, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !679, variables: !5386)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{null, !5330}
!5386 = !{!5382}
!5387 = !DILocation(line: 40, column: 48, scope: !5383, inlinedAt: !5388)
!5388 = distinct !DILocation(line: 153, column: 3, scope: !5326)
!5389 = !DILocation(line: 42, column: 11, scope: !5390, inlinedAt: !5388)
!5390 = distinct !DILexicalBlock(scope: !5383, file: !5327, line: 42, column: 7)
!5391 = !DILocation(line: 42, column: 18, scope: !5390, inlinedAt: !5388)
!5392 = !DILocation(line: 42, column: 7, scope: !5383, inlinedAt: !5388)
!5393 = !DILocation(line: 44, column: 5, scope: !5390, inlinedAt: !5388)
!5394 = !DILocation(line: 155, column: 10, scope: !5326)
!5395 = !DILocation(line: 155, column: 3, scope: !5326)
!5396 = !DILocation(line: 229, column: 1, scope: !5326)
!5397 = distinct !DISubprogram(name: "rpl_freopen", scope: !5398, file: !5398, line: 47, type: !5399, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !5441)
!5398 = !DIFile(filename: "lib/freopen.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!5401, !78, !78, !5401}
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5403)
!5403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5404)
!5404 = !{!5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5440}
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5403, file: !1162, line: 242, baseType: !87, size: 32)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5403, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5403, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5403, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5403, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5403, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5403, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5403, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5403, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5403, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5403, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5403, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5403, file: !1162, line: 260, baseType: !5418, size: 64, offset: 768)
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5419, size: 64)
!5419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5420)
!5420 = !{!5421, !5422, !5424}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5419, file: !1162, line: 157, baseType: !5418, size: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5419, file: !1162, line: 158, baseType: !5423, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5403, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5419, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5403, file: !1162, line: 262, baseType: !5423, size: 64, offset: 832)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5403, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5403, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5403, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5403, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5403, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5403, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5403, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5403, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5403, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5403, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5403, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5403, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5403, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5403, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5403, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5441 = !{!5442, !5443, !5444, !5445, !5446, !5447, !5451, !5454}
!5442 = !DILocalVariable(name: "filename", arg: 1, scope: !5397, file: !5398, line: 47, type: !78)
!5443 = !DILocalVariable(name: "mode", arg: 2, scope: !5397, file: !5398, line: 47, type: !78)
!5444 = !DILocalVariable(name: "stream", arg: 3, scope: !5397, file: !5398, line: 47, type: !5401)
!5445 = !DILocalVariable(name: "result", scope: !5397, file: !5398, line: 49, type: !5401)
!5446 = !DILocalVariable(name: "null_device", scope: !5397, file: !5398, line: 55, type: !78)
!5447 = !DILocalVariable(name: "fd", scope: !5448, file: !5398, line: 75, type: !87)
!5448 = distinct !DILexicalBlock(scope: !5449, file: !5398, line: 74, column: 5)
!5449 = distinct !DILexicalBlock(scope: !5450, file: !5398, line: 73, column: 12)
!5450 = distinct !DILexicalBlock(scope: !5397, file: !5398, line: 64, column: 7)
!5451 = !DILocalVariable(name: "nullfd", scope: !5452, file: !5398, line: 78, type: !87)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !5398, line: 77, column: 9)
!5453 = distinct !DILexicalBlock(scope: !5448, file: !5398, line: 76, column: 11)
!5454 = !DILocalVariable(name: "err", scope: !5452, file: !5398, line: 79, type: !87)
!5455 = !DILocation(line: 47, column: 26, scope: !5397)
!5456 = !DILocation(line: 47, column: 48, scope: !5397)
!5457 = !DILocation(line: 47, column: 60, scope: !5397)
!5458 = !DILocalVariable(name: "filename", arg: 1, scope: !5459, file: !5398, line: 32, type: !78)
!5459 = distinct !DISubprogram(name: "orig_freopen", scope: !5398, file: !5398, line: 32, type: !5399, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !681, variables: !5460)
!5460 = !{!5458, !5461, !5462}
!5461 = !DILocalVariable(name: "mode", arg: 2, scope: !5459, file: !5398, line: 32, type: !78)
!5462 = !DILocalVariable(name: "stream", arg: 3, scope: !5459, file: !5398, line: 32, type: !5401)
!5463 = !DILocation(line: 32, column: 27, scope: !5459, inlinedAt: !5464)
!5464 = distinct !DILocation(line: 62, column: 12, scope: !5397)
!5465 = !DILocation(line: 32, column: 49, scope: !5459, inlinedAt: !5464)
!5466 = !DILocation(line: 32, column: 61, scope: !5459, inlinedAt: !5464)
!5467 = !DILocation(line: 34, column: 10, scope: !5459, inlinedAt: !5464)
!5468 = !DILocation(line: 49, column: 9, scope: !5397)
!5469 = !DILocation(line: 64, column: 8, scope: !5450)
!5470 = !DILocation(line: 73, column: 12, scope: !5449)
!5471 = !DILocation(line: 64, column: 7, scope: !5397)
!5472 = !DILocation(line: 75, column: 16, scope: !5448)
!5473 = !DILocation(line: 75, column: 11, scope: !5448)
!5474 = !DILocation(line: 76, column: 11, scope: !5453)
!5475 = !DILocation(line: 76, column: 25, scope: !5453)
!5476 = !DILocation(line: 76, column: 29, scope: !5453)
!5477 = !DILocation(line: 76, column: 32, scope: !5478)
!5478 = !DILexicalBlockFile(scope: !5453, file: !5398, discriminator: 1)
!5479 = !DILocation(line: 76, column: 38, scope: !5478)
!5480 = !DILocation(line: 76, column: 11, scope: !5481)
!5481 = !DILexicalBlockFile(scope: !5448, file: !5398, discriminator: 1)
!5482 = !DILocation(line: 78, column: 24, scope: !5452)
!5483 = !DILocation(line: 78, column: 15, scope: !5452)
!5484 = !DILocation(line: 79, column: 15, scope: !5452)
!5485 = !DILocation(line: 80, column: 22, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5452, file: !5398, line: 80, column: 15)
!5487 = !DILocation(line: 80, column: 15, scope: !5452)
!5488 = !DILocation(line: 82, column: 19, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !5398, line: 82, column: 19)
!5490 = distinct !DILexicalBlock(scope: !5486, file: !5398, line: 81, column: 13)
!5491 = !DILocation(line: 82, column: 37, scope: !5489)
!5492 = !DILocation(line: 84, column: 15, scope: !5490)
!5493 = !DILocation(line: 32, column: 27, scope: !5459, inlinedAt: !5494)
!5494 = distinct !DILocation(line: 87, column: 22, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5452, file: !5398, line: 86, column: 15)
!5496 = !DILocation(line: 32, column: 49, scope: !5459, inlinedAt: !5494)
!5497 = !DILocation(line: 32, column: 61, scope: !5459, inlinedAt: !5494)
!5498 = !DILocation(line: 34, column: 10, scope: !5459, inlinedAt: !5494)
!5499 = !DILocation(line: 87, column: 13, scope: !5495)
!5500 = !DILocation(line: 91, column: 3, scope: !5397)
!5501 = distinct !DISubprogram(name: "rpl_fseeko", scope: !5502, file: !5502, line: 28, type: !5503, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !683, variables: !5545)
!5502 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!87, !5505, !1869, !87}
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5507)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5529, !5530, !5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5507, file: !1162, line: 242, baseType: !87, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5507, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5507, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5507, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5507, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5507, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5507, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5507, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5507, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5507, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5507, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5507, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5507, file: !1162, line: 260, baseType: !5522, size: 64, offset: 768)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5524)
!5524 = !{!5525, !5526, !5528}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5523, file: !1162, line: 157, baseType: !5522, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5523, file: !1162, line: 158, baseType: !5527, size: 64, offset: 64)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5507, size: 64)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5523, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5507, file: !1162, line: 262, baseType: !5527, size: 64, offset: 832)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5507, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5507, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5507, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5507, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5507, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5507, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5507, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5507, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5507, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5507, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5507, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5507, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5507, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5507, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5507, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5545 = !{!5546, !5547, !5548, !5549}
!5546 = !DILocalVariable(name: "fp", arg: 1, scope: !5501, file: !5502, line: 28, type: !5505)
!5547 = !DILocalVariable(name: "offset", arg: 2, scope: !5501, file: !5502, line: 28, type: !1869)
!5548 = !DILocalVariable(name: "whence", arg: 3, scope: !5501, file: !5502, line: 28, type: !87)
!5549 = !DILocalVariable(name: "pos", scope: !5550, file: !5502, line: 116, type: !1869)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !5502, line: 112, column: 5)
!5551 = distinct !DILexicalBlock(scope: !5501, file: !5502, line: 51, column: 7)
!5552 = !DILocation(line: 28, column: 15, scope: !5501)
!5553 = !DILocation(line: 28, column: 25, scope: !5501)
!5554 = !DILocation(line: 28, column: 37, scope: !5501)
!5555 = !DILocation(line: 51, column: 11, scope: !5551)
!5556 = !DILocation(line: 51, column: 31, scope: !5551)
!5557 = !DILocation(line: 51, column: 24, scope: !5551)
!5558 = !DILocation(line: 52, column: 7, scope: !5551)
!5559 = !DILocation(line: 52, column: 14, scope: !5560)
!5560 = !DILexicalBlockFile(scope: !5551, file: !5502, discriminator: 1)
!5561 = !DILocation(line: 52, column: 35, scope: !5560)
!5562 = !{!1217, !711, i64 32}
!5563 = !DILocation(line: 52, column: 28, scope: !5560)
!5564 = !DILocation(line: 53, column: 7, scope: !5551)
!5565 = !DILocation(line: 53, column: 14, scope: !5560)
!5566 = !{!1217, !711, i64 72}
!5567 = !DILocation(line: 53, column: 28, scope: !5560)
!5568 = !DILocation(line: 51, column: 7, scope: !5569)
!5569 = !DILexicalBlockFile(scope: !5501, file: !5502, discriminator: 1)
!5570 = !DILocation(line: 116, column: 26, scope: !5550)
!5571 = !DILocation(line: 116, column: 19, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5550, file: !5502, discriminator: 1)
!5573 = !DILocation(line: 116, column: 13, scope: !5550)
!5574 = !DILocation(line: 117, column: 15, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5550, file: !5502, line: 117, column: 11)
!5576 = !DILocation(line: 117, column: 11, scope: !5550)
!5577 = !DILocation(line: 127, column: 11, scope: !5550)
!5578 = !DILocation(line: 127, column: 18, scope: !5550)
!5579 = !DILocation(line: 128, column: 11, scope: !5550)
!5580 = !DILocation(line: 128, column: 19, scope: !5550)
!5581 = !{!1217, !822, i64 144}
!5582 = !DILocation(line: 159, column: 7, scope: !5550)
!5583 = !DILocation(line: 161, column: 10, scope: !5501)
!5584 = !DILocation(line: 161, column: 3, scope: !5501)
!5585 = !DILocation(line: 162, column: 1, scope: !5501)
!5586 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5587, file: !5587, line: 334, type: !5588, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !685, variables: !5602)
!5587 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!75, !5590, !78, !75, !5591}
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2689, line: 107, baseType: !5593)
!5593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2689, line: 95, baseType: !5594)
!5594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2689, line: 83, size: 64, elements: !5595)
!5595 = !{!5596, !5597}
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5594, file: !2689, line: 85, baseType: !87, size: 32)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5594, file: !2689, line: 94, baseType: !5598, size: 32, offset: 32)
!5598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5594, file: !2689, line: 86, size: 32, elements: !5599)
!5599 = !{!5600, !5601}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5598, file: !2689, line: 89, baseType: !244, size: 32)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5598, file: !2689, line: 93, baseType: !2699, size: 32)
!5602 = !{!5603, !5604, !5605, !5606, !5607, !5608, !5609}
!5603 = !DILocalVariable(name: "pwc", arg: 1, scope: !5586, file: !5587, line: 334, type: !5590)
!5604 = !DILocalVariable(name: "s", arg: 2, scope: !5586, file: !5587, line: 334, type: !78)
!5605 = !DILocalVariable(name: "n", arg: 3, scope: !5586, file: !5587, line: 334, type: !75)
!5606 = !DILocalVariable(name: "ps", arg: 4, scope: !5586, file: !5587, line: 334, type: !5591)
!5607 = !DILocalVariable(name: "ret", scope: !5586, file: !5587, line: 336, type: !75)
!5608 = !DILocalVariable(name: "wc", scope: !5586, file: !5587, line: 337, type: !2702)
!5609 = !DILocalVariable(name: "uc", scope: !5610, file: !5587, line: 398, type: !86)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !5587, line: 397, column: 5)
!5611 = distinct !DILexicalBlock(scope: !5586, file: !5587, line: 396, column: 7)
!5612 = !DILocation(line: 334, column: 23, scope: !5586)
!5613 = !DILocation(line: 334, column: 40, scope: !5586)
!5614 = !DILocation(line: 334, column: 50, scope: !5586)
!5615 = !DILocation(line: 334, column: 64, scope: !5586)
!5616 = !DILocation(line: 337, column: 3, scope: !5586)
!5617 = !DILocation(line: 353, column: 9, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5586, file: !5587, line: 353, column: 7)
!5619 = !DILocation(line: 353, column: 7, scope: !5586)
!5620 = !DILocation(line: 388, column: 9, scope: !5586)
!5621 = !DILocation(line: 336, column: 10, scope: !5586)
!5622 = !DILocation(line: 396, column: 19, scope: !5611)
!5623 = !DILocation(line: 396, column: 31, scope: !5624)
!5624 = !DILexicalBlockFile(scope: !5611, file: !5587, discriminator: 1)
!5625 = !DILocation(line: 396, column: 26, scope: !5611)
!5626 = !DILocation(line: 396, column: 41, scope: !5627)
!5627 = !DILexicalBlockFile(scope: !5611, file: !5587, discriminator: 2)
!5628 = !DILocation(line: 396, column: 7, scope: !5629)
!5629 = !DILexicalBlockFile(scope: !5586, file: !5587, discriminator: 2)
!5630 = !DILocation(line: 398, column: 26, scope: !5610)
!5631 = !DILocation(line: 398, column: 21, scope: !5610)
!5632 = !DILocation(line: 399, column: 14, scope: !5610)
!5633 = !DILocation(line: 399, column: 12, scope: !5610)
!5634 = !DILocation(line: 405, column: 1, scope: !5586)
!5635 = distinct !DISubprogram(name: "close_stream", scope: !5636, file: !5636, line: 56, type: !5637, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !688, variables: !5679)
!5636 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5637 = !DISubroutineType(types: !5638)
!5638 = !{!87, !5639}
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5640, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5641)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5642)
!5642 = !{!5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5641, file: !1162, line: 242, baseType: !87, size: 32)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5641, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5641, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5641, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5641, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5641, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5641, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5641, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5641, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5641, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5641, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5641, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5641, file: !1162, line: 260, baseType: !5656, size: 64, offset: 768)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5658)
!5658 = !{!5659, !5660, !5662}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5657, file: !1162, line: 157, baseType: !5656, size: 64)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5657, file: !1162, line: 158, baseType: !5661, size: 64, offset: 64)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5657, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5641, file: !1162, line: 262, baseType: !5661, size: 64, offset: 832)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5641, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5641, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5641, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5641, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5641, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5641, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5641, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5641, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5641, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5641, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5641, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5641, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5641, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5641, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5641, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5679 = !{!5680, !5681, !5683, !5684}
!5680 = !DILocalVariable(name: "stream", arg: 1, scope: !5635, file: !5636, line: 56, type: !5639)
!5681 = !DILocalVariable(name: "some_pending", scope: !5635, file: !5636, line: 58, type: !5682)
!5682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!5683 = !DILocalVariable(name: "prev_fail", scope: !5635, file: !5636, line: 59, type: !5682)
!5684 = !DILocalVariable(name: "fclose_fail", scope: !5635, file: !5636, line: 60, type: !5682)
!5685 = !DILocation(line: 56, column: 21, scope: !5635)
!5686 = !DILocation(line: 58, column: 30, scope: !5635)
!5687 = !DILocalVariable(name: "__stream", arg: 1, scope: !5688, file: !1155, line: 132, type: !5639)
!5688 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1155, file: !1155, line: 132, type: !5637, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !688, variables: !5689)
!5689 = !{!5687}
!5690 = !DILocation(line: 132, column: 1, scope: !5688, inlinedAt: !5691)
!5691 = distinct !DILocation(line: 59, column: 27, scope: !5635)
!5692 = !DILocation(line: 134, column: 10, scope: !5688, inlinedAt: !5691)
!5693 = !DILocation(line: 59, column: 43, scope: !5635)
!5694 = !DILocation(line: 60, column: 29, scope: !5635)
!5695 = !DILocation(line: 60, column: 45, scope: !5635)
!5696 = !DILocation(line: 70, column: 17, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5635, file: !5636, line: 70, column: 7)
!5698 = !DILocation(line: 70, column: 33, scope: !5699)
!5699 = !DILexicalBlockFile(scope: !5697, file: !5636, discriminator: 1)
!5700 = !DILocation(line: 70, column: 53, scope: !5701)
!5701 = !DILexicalBlockFile(scope: !5697, file: !5636, discriminator: 3)
!5702 = !DILocation(line: 70, column: 7, scope: !5703)
!5703 = !DILexicalBlockFile(scope: !5635, file: !5636, discriminator: 3)
!5704 = !DILocation(line: 72, column: 11, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5697, file: !5636, line: 71, column: 5)
!5706 = !DILocation(line: 73, column: 9, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5705, file: !5636, line: 72, column: 11)
!5708 = !DILocation(line: 73, column: 15, scope: !5707)
!5709 = !DILocation(line: 78, column: 1, scope: !5635)
!5710 = distinct !DISubprogram(name: "locale_charset", scope: !625, file: !625, line: 393, type: !5711, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !281, variables: !5713)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!78}
!5713 = !{!5714, !5715, !5716, !5721}
!5714 = !DILocalVariable(name: "codeset", scope: !5710, file: !625, line: 395, type: !78)
!5715 = !DILocalVariable(name: "aliases", scope: !5710, file: !625, line: 396, type: !78)
!5716 = !DILocalVariable(name: "__s1_len", scope: !5717, file: !625, line: 592, type: !75)
!5717 = distinct !DILexicalBlock(scope: !5718, file: !625, line: 592, column: 9)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !625, line: 592, column: 9)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !625, line: 589, column: 3)
!5720 = distinct !DILexicalBlock(scope: !5710, file: !625, line: 589, column: 3)
!5721 = !DILocalVariable(name: "__s2_len", scope: !5717, file: !625, line: 592, type: !75)
!5722 = !DILocalVariable(name: "buf1", scope: !5723, file: !625, line: 196, type: !5790)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !625, line: 194, column: 21)
!5724 = distinct !DILexicalBlock(scope: !5725, file: !625, line: 193, column: 19)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !625, line: 193, column: 19)
!5726 = distinct !DILexicalBlock(scope: !5727, file: !625, line: 188, column: 17)
!5727 = distinct !DILexicalBlock(scope: !5728, file: !625, line: 181, column: 19)
!5728 = distinct !DILexicalBlock(scope: !5729, file: !625, line: 177, column: 13)
!5729 = distinct !DILexicalBlock(scope: !5730, file: !625, line: 173, column: 15)
!5730 = distinct !DILexicalBlock(scope: !5731, file: !625, line: 161, column: 9)
!5731 = distinct !DILexicalBlock(scope: !5732, file: !625, line: 157, column: 11)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !625, line: 130, column: 5)
!5733 = distinct !DILexicalBlock(scope: !5734, file: !625, line: 129, column: 7)
!5734 = distinct !DISubprogram(name: "get_charset_aliases", scope: !625, file: !625, line: 124, type: !5711, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !281, variables: !5735)
!5735 = !{!5736, !5737, !5738, !5739, !5740, !5742, !5743, !5744, !5745, !5786, !5787, !5788, !5722, !5789, !5793, !5794, !5795}
!5736 = !DILocalVariable(name: "cp", scope: !5734, file: !625, line: 126, type: !78)
!5737 = !DILocalVariable(name: "dir", scope: !5732, file: !625, line: 132, type: !78)
!5738 = !DILocalVariable(name: "base", scope: !5732, file: !625, line: 133, type: !78)
!5739 = !DILocalVariable(name: "file_name", scope: !5732, file: !625, line: 134, type: !81)
!5740 = !DILocalVariable(name: "dir_len", scope: !5741, file: !625, line: 144, type: !75)
!5741 = distinct !DILexicalBlock(scope: !5732, file: !625, line: 143, column: 7)
!5742 = !DILocalVariable(name: "base_len", scope: !5741, file: !625, line: 145, type: !75)
!5743 = !DILocalVariable(name: "add_slash", scope: !5741, file: !625, line: 146, type: !87)
!5744 = !DILocalVariable(name: "fd", scope: !5730, file: !625, line: 162, type: !87)
!5745 = !DILocalVariable(name: "fp", scope: !5728, file: !625, line: 178, type: !5746)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1160, line: 49, baseType: !5748)
!5748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1162, line: 241, size: 1728, elements: !5749)
!5749 = !{!5750, !5751, !5752, !5753, !5754, !5755, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5770, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5779, !5780, !5781, !5782, !5783, !5784, !5785}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5748, file: !1162, line: 242, baseType: !87, size: 32)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5748, file: !1162, line: 247, baseType: !81, size: 64, offset: 64)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5748, file: !1162, line: 248, baseType: !81, size: 64, offset: 128)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5748, file: !1162, line: 249, baseType: !81, size: 64, offset: 192)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5748, file: !1162, line: 250, baseType: !81, size: 64, offset: 256)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5748, file: !1162, line: 251, baseType: !81, size: 64, offset: 320)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5748, file: !1162, line: 252, baseType: !81, size: 64, offset: 384)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5748, file: !1162, line: 253, baseType: !81, size: 64, offset: 448)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5748, file: !1162, line: 254, baseType: !81, size: 64, offset: 512)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5748, file: !1162, line: 256, baseType: !81, size: 64, offset: 576)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5748, file: !1162, line: 257, baseType: !81, size: 64, offset: 640)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5748, file: !1162, line: 258, baseType: !81, size: 64, offset: 704)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5748, file: !1162, line: 260, baseType: !5763, size: 64, offset: 768)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1162, line: 156, size: 192, elements: !5765)
!5765 = !{!5766, !5767, !5769}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !5764, file: !1162, line: 157, baseType: !5763, size: 64)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !5764, file: !1162, line: 158, baseType: !5768, size: 64, offset: 64)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !5764, file: !1162, line: 162, baseType: !87, size: 32, offset: 128)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5748, file: !1162, line: 262, baseType: !5768, size: 64, offset: 832)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5748, file: !1162, line: 264, baseType: !87, size: 32, offset: 896)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5748, file: !1162, line: 268, baseType: !87, size: 32, offset: 928)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5748, file: !1162, line: 270, baseType: !1188, size: 64, offset: 960)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5748, file: !1162, line: 274, baseType: !88, size: 16, offset: 1024)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5748, file: !1162, line: 275, baseType: !1192, size: 8, offset: 1040)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5748, file: !1162, line: 276, baseType: !1194, size: 8, offset: 1048)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5748, file: !1162, line: 280, baseType: !1198, size: 64, offset: 1088)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5748, file: !1162, line: 289, baseType: !1201, size: 64, offset: 1152)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !5748, file: !1162, line: 297, baseType: !73, size: 64, offset: 1216)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !5748, file: !1162, line: 298, baseType: !73, size: 64, offset: 1280)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !5748, file: !1162, line: 299, baseType: !73, size: 64, offset: 1344)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !5748, file: !1162, line: 300, baseType: !73, size: 64, offset: 1408)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5748, file: !1162, line: 302, baseType: !75, size: 64, offset: 1472)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5748, file: !1162, line: 303, baseType: !87, size: 32, offset: 1536)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5748, file: !1162, line: 305, baseType: !1209, size: 160, offset: 1568)
!5786 = !DILocalVariable(name: "res_ptr", scope: !5726, file: !625, line: 190, type: !81)
!5787 = !DILocalVariable(name: "res_size", scope: !5726, file: !625, line: 191, type: !75)
!5788 = !DILocalVariable(name: "c", scope: !5723, file: !625, line: 195, type: !87)
!5789 = !DILocalVariable(name: "buf2", scope: !5723, file: !625, line: 197, type: !5790)
!5790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 408, elements: !5791)
!5791 = !{!5792}
!5792 = !DISubrange(count: 51)
!5793 = !DILocalVariable(name: "l1", scope: !5723, file: !625, line: 198, type: !75)
!5794 = !DILocalVariable(name: "l2", scope: !5723, file: !625, line: 198, type: !75)
!5795 = !DILocalVariable(name: "old_res_ptr", scope: !5723, file: !625, line: 199, type: !81)
!5796 = !DILocation(line: 196, column: 28, scope: !5723, inlinedAt: !5797)
!5797 = distinct !DILocation(line: 589, column: 18, scope: !5720)
!5798 = !DILocation(line: 197, column: 28, scope: !5723, inlinedAt: !5797)
!5799 = !DILocation(line: 403, column: 13, scope: !5710)
!5800 = !DILocation(line: 395, column: 15, scope: !5710)
!5801 = !DILocation(line: 584, column: 15, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5710, file: !625, line: 584, column: 7)
!5803 = !DILocation(line: 584, column: 7, scope: !5710)
!5804 = !DILocation(line: 128, column: 8, scope: !5734, inlinedAt: !5797)
!5805 = !DILocation(line: 126, column: 15, scope: !5734, inlinedAt: !5797)
!5806 = !DILocation(line: 129, column: 10, scope: !5733, inlinedAt: !5797)
!5807 = !DILocation(line: 129, column: 7, scope: !5734, inlinedAt: !5797)
!5808 = !DILocation(line: 138, column: 13, scope: !5732, inlinedAt: !5797)
!5809 = !DILocation(line: 132, column: 19, scope: !5732, inlinedAt: !5797)
!5810 = !DILocation(line: 139, column: 15, scope: !5811, inlinedAt: !5797)
!5811 = distinct !DILexicalBlock(scope: !5732, file: !625, line: 139, column: 11)
!5812 = !DILocation(line: 139, column: 23, scope: !5811, inlinedAt: !5797)
!5813 = !DILocation(line: 139, column: 26, scope: !5814, inlinedAt: !5797)
!5814 = !DILexicalBlockFile(scope: !5811, file: !625, discriminator: 1)
!5815 = !DILocation(line: 139, column: 33, scope: !5814, inlinedAt: !5797)
!5816 = !DILocation(line: 139, column: 11, scope: !5817, inlinedAt: !5797)
!5817 = !DILexicalBlockFile(scope: !5732, file: !625, discriminator: 1)
!5818 = !DILocation(line: 140, column: 9, scope: !5811, inlinedAt: !5797)
!5819 = !DILocation(line: 144, column: 26, scope: !5741, inlinedAt: !5797)
!5820 = !DILocation(line: 144, column: 16, scope: !5741, inlinedAt: !5797)
!5821 = !DILocation(line: 145, column: 16, scope: !5741, inlinedAt: !5797)
!5822 = !DILocation(line: 146, column: 34, scope: !5741, inlinedAt: !5797)
!5823 = !DILocation(line: 146, column: 38, scope: !5741, inlinedAt: !5797)
!5824 = !DILocation(line: 146, column: 42, scope: !5825, inlinedAt: !5797)
!5825 = !DILexicalBlockFile(scope: !5741, file: !625, discriminator: 1)
!5826 = !DILocation(line: 146, column: 41, scope: !5825, inlinedAt: !5797)
!5827 = !DILocation(line: 147, column: 48, scope: !5741, inlinedAt: !5797)
!5828 = !DILocation(line: 147, column: 46, scope: !5741, inlinedAt: !5797)
!5829 = !DILocation(line: 147, column: 69, scope: !5741, inlinedAt: !5797)
!5830 = !DILocation(line: 147, column: 30, scope: !5741, inlinedAt: !5797)
!5831 = !DILocation(line: 134, column: 13, scope: !5732, inlinedAt: !5797)
!5832 = !DILocation(line: 148, column: 13, scope: !5741, inlinedAt: !5797)
!5833 = !DILocation(line: 150, column: 13, scope: !5834, inlinedAt: !5797)
!5834 = distinct !DILexicalBlock(scope: !5835, file: !625, line: 149, column: 11)
!5835 = distinct !DILexicalBlock(scope: !5741, file: !625, line: 148, column: 13)
!5836 = !DILocation(line: 151, column: 17, scope: !5834, inlinedAt: !5797)
!5837 = !DILocation(line: 152, column: 34, scope: !5838, inlinedAt: !5797)
!5838 = distinct !DILexicalBlock(scope: !5834, file: !625, line: 151, column: 17)
!5839 = !DILocation(line: 153, column: 41, scope: !5834, inlinedAt: !5797)
!5840 = !DILocation(line: 153, column: 13, scope: !5834, inlinedAt: !5797)
!5841 = !DILocation(line: 157, column: 11, scope: !5732, inlinedAt: !5797)
!5842 = !DILocation(line: 171, column: 16, scope: !5730, inlinedAt: !5797)
!5843 = !DILocation(line: 162, column: 15, scope: !5730, inlinedAt: !5797)
!5844 = !DILocation(line: 173, column: 18, scope: !5729, inlinedAt: !5797)
!5845 = !DILocation(line: 173, column: 15, scope: !5730, inlinedAt: !5797)
!5846 = !DILocation(line: 180, column: 20, scope: !5728, inlinedAt: !5797)
!5847 = !DILocation(line: 178, column: 21, scope: !5728, inlinedAt: !5797)
!5848 = !DILocation(line: 181, column: 22, scope: !5727, inlinedAt: !5797)
!5849 = !DILocation(line: 181, column: 19, scope: !5728, inlinedAt: !5797)
!5850 = !DILocation(line: 190, column: 25, scope: !5726, inlinedAt: !5797)
!5851 = !DILocation(line: 184, column: 19, scope: !5852, inlinedAt: !5797)
!5852 = distinct !DILexicalBlock(scope: !5727, file: !625, line: 182, column: 17)
!5853 = !DILocation(line: 186, column: 17, scope: !5852, inlinedAt: !5797)
!5854 = !DILocation(line: 191, column: 26, scope: !5726, inlinedAt: !5797)
!5855 = !DILocation(line: 196, column: 23, scope: !5723, inlinedAt: !5797)
!5856 = !DILocation(line: 197, column: 23, scope: !5723, inlinedAt: !5797)
!5857 = !DILocalVariable(name: "__fp", arg: 1, scope: !5858, file: !1155, line: 63, type: !5746)
!5858 = distinct !DISubprogram(name: "getc_unlocked", scope: !1155, file: !1155, line: 63, type: !5859, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !281, variables: !5861)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{!87, !5746}
!5861 = !{!5857}
!5862 = !DILocation(line: 63, column: 22, scope: !5858, inlinedAt: !5863)
!5863 = distinct !DILocation(line: 201, column: 27, scope: !5723, inlinedAt: !5797)
!5864 = !DILocation(line: 65, column: 10, scope: !5858, inlinedAt: !5863)
!5865 = !DILocation(line: 65, column: 10, scope: !5866, inlinedAt: !5863)
!5866 = !DILexicalBlockFile(scope: !5858, file: !1155, discriminator: 1)
!5867 = !DILocation(line: 65, column: 10, scope: !5868, inlinedAt: !5863)
!5868 = !DILexicalBlockFile(scope: !5858, file: !1155, discriminator: 2)
!5869 = !DILocation(line: 65, column: 10, scope: !5870, inlinedAt: !5863)
!5870 = !DILexicalBlockFile(scope: !5858, file: !1155, discriminator: 3)
!5871 = !DILocation(line: 195, column: 27, scope: !5723, inlinedAt: !5797)
!5872 = !DILocation(line: 202, column: 27, scope: !5723, inlinedAt: !5797)
!5873 = !DILocation(line: 63, column: 22, scope: !5858, inlinedAt: !5874)
!5874 = distinct !DILocation(line: 210, column: 33, scope: !5875, inlinedAt: !5797)
!5875 = distinct !DILexicalBlock(scope: !5876, file: !625, line: 207, column: 25)
!5876 = distinct !DILexicalBlock(scope: !5723, file: !625, line: 206, column: 27)
!5877 = !DILocation(line: 65, column: 10, scope: !5858, inlinedAt: !5874)
!5878 = !DILocation(line: 65, column: 10, scope: !5866, inlinedAt: !5874)
!5879 = !DILocation(line: 65, column: 10, scope: !5868, inlinedAt: !5874)
!5880 = !DILocation(line: 65, column: 10, scope: !5870, inlinedAt: !5874)
!5881 = !DILocation(line: 210, column: 29, scope: !5882, inlinedAt: !5797)
!5882 = !DILexicalBlockFile(scope: !5875, file: !625, discriminator: 1)
!5883 = distinct !{!5883, !5884, !5885}
!5884 = !DILocation(line: 193, column: 19, scope: !5725)
!5885 = !DILocation(line: 241, column: 21, scope: !5725)
!5886 = !DILocation(line: 216, column: 23, scope: !5723, inlinedAt: !5797)
!5887 = !DILocation(line: 217, column: 27, scope: !5888, inlinedAt: !5797)
!5888 = distinct !DILexicalBlock(scope: !5723, file: !625, line: 217, column: 27)
!5889 = !DILocation(line: 217, column: 64, scope: !5888, inlinedAt: !5797)
!5890 = !DILocation(line: 217, column: 27, scope: !5723, inlinedAt: !5797)
!5891 = !DILocation(line: 219, column: 28, scope: !5723, inlinedAt: !5797)
!5892 = !DILocation(line: 198, column: 30, scope: !5723, inlinedAt: !5797)
!5893 = !DILocation(line: 220, column: 28, scope: !5723, inlinedAt: !5797)
!5894 = !DILocation(line: 198, column: 34, scope: !5723, inlinedAt: !5797)
!5895 = !DILocation(line: 199, column: 29, scope: !5723, inlinedAt: !5797)
!5896 = !DILocation(line: 222, column: 36, scope: !5897, inlinedAt: !5797)
!5897 = distinct !DILexicalBlock(scope: !5723, file: !625, line: 222, column: 27)
!5898 = !DILocation(line: 222, column: 27, scope: !5723, inlinedAt: !5797)
!5899 = !DILocation(line: 225, column: 63, scope: !5900, inlinedAt: !5797)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !625, line: 223, column: 25)
!5901 = !DILocation(line: 225, column: 46, scope: !5900, inlinedAt: !5797)
!5902 = !DILocation(line: 226, column: 25, scope: !5900, inlinedAt: !5797)
!5903 = !DILocation(line: 229, column: 36, scope: !5904, inlinedAt: !5797)
!5904 = distinct !DILexicalBlock(scope: !5897, file: !625, line: 228, column: 25)
!5905 = !DILocation(line: 230, column: 73, scope: !5904, inlinedAt: !5797)
!5906 = !DILocation(line: 230, column: 46, scope: !5904, inlinedAt: !5797)
!5907 = !DILocation(line: 232, column: 35, scope: !5908, inlinedAt: !5797)
!5908 = distinct !DILexicalBlock(scope: !5723, file: !625, line: 232, column: 27)
!5909 = !DILocation(line: 232, column: 27, scope: !5723, inlinedAt: !5797)
!5910 = !DILocation(line: 236, column: 27, scope: !5911, inlinedAt: !5797)
!5911 = distinct !DILexicalBlock(scope: !5908, file: !625, line: 233, column: 25)
!5912 = !DILocation(line: 237, column: 27, scope: !5911, inlinedAt: !5797)
!5913 = !DILocation(line: 239, column: 39, scope: !5723, inlinedAt: !5797)
!5914 = !DILocation(line: 239, column: 50, scope: !5723, inlinedAt: !5797)
!5915 = !DILocation(line: 239, column: 61, scope: !5723, inlinedAt: !5797)
!5916 = !DILocalVariable(name: "__dest", arg: 1, scope: !5917, file: !5918, line: 107, type: !5921)
!5917 = distinct !DISubprogram(name: "strcpy", scope: !5918, file: !5918, line: 107, type: !5919, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, unit: !281, variables: !5923)
!5918 = !DIFile(filename: "/usr/include/bits/string3.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5919 = !DISubroutineType(types: !5920)
!5920 = !{!81, !5921, !5922}
!5921 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!5922 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!5923 = !{!5916, !5924}
!5924 = !DILocalVariable(name: "__src", arg: 2, scope: !5917, file: !5918, line: 107, type: !5922)
!5925 = !DILocation(line: 107, column: 1, scope: !5917, inlinedAt: !5926)
!5926 = distinct !DILocation(line: 239, column: 23, scope: !5723, inlinedAt: !5797)
!5927 = !DILocation(line: 109, column: 49, scope: !5917, inlinedAt: !5926)
!5928 = !DILocation(line: 109, column: 10, scope: !5917, inlinedAt: !5926)
!5929 = !DILocation(line: 107, column: 1, scope: !5917, inlinedAt: !5930)
!5930 = distinct !DILocation(line: 240, column: 23, scope: !5723, inlinedAt: !5797)
!5931 = !DILocation(line: 109, column: 49, scope: !5917, inlinedAt: !5930)
!5932 = !DILocation(line: 109, column: 10, scope: !5917, inlinedAt: !5930)
!5933 = !DILocation(line: 241, column: 21, scope: !5724, inlinedAt: !5797)
!5934 = !DILocation(line: 242, column: 19, scope: !5726, inlinedAt: !5797)
!5935 = !DILocation(line: 243, column: 32, scope: !5936, inlinedAt: !5797)
!5936 = distinct !DILexicalBlock(scope: !5726, file: !625, line: 243, column: 23)
!5937 = !DILocation(line: 243, column: 23, scope: !5726, inlinedAt: !5797)
!5938 = !DILocation(line: 247, column: 33, scope: !5939, inlinedAt: !5797)
!5939 = distinct !DILexicalBlock(scope: !5936, file: !625, line: 246, column: 21)
!5940 = !DILocation(line: 247, column: 45, scope: !5939, inlinedAt: !5797)
!5941 = !DILocation(line: 253, column: 11, scope: !5730, inlinedAt: !5797)
!5942 = !DILocation(line: 377, column: 23, scope: !5732, inlinedAt: !5797)
!5943 = !DILocation(line: 378, column: 5, scope: !5732, inlinedAt: !5797)
!5944 = !DILocation(line: 396, column: 15, scope: !5710)
!5945 = !DILocation(line: 590, column: 8, scope: !5719)
!5946 = !DILocation(line: 590, column: 17, scope: !5719)
!5947 = !DILocation(line: 589, column: 3, scope: !5948)
!5948 = !DILexicalBlockFile(scope: !5720, file: !625, discriminator: 1)
!5949 = !DILocation(line: 592, column: 9, scope: !5717)
!5950 = !DILocation(line: 592, column: 35, scope: !5718)
!5951 = !DILocation(line: 593, column: 9, scope: !5718)
!5952 = !DILocation(line: 593, column: 24, scope: !5953)
!5953 = !DILexicalBlockFile(scope: !5718, file: !625, discriminator: 1)
!5954 = !DILocation(line: 593, column: 31, scope: !5953)
!5955 = !DILocation(line: 593, column: 34, scope: !5956)
!5956 = !DILexicalBlockFile(scope: !5718, file: !625, discriminator: 2)
!5957 = !DILocation(line: 593, column: 45, scope: !5956)
!5958 = !DILocation(line: 592, column: 9, scope: !5959)
!5959 = !DILexicalBlockFile(scope: !5719, file: !625, discriminator: 1)
!5960 = !DILocation(line: 595, column: 29, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5718, file: !625, line: 594, column: 7)
!5962 = !DILocation(line: 595, column: 27, scope: !5961)
!5963 = !DILocation(line: 595, column: 46, scope: !5961)
!5964 = !DILocation(line: 596, column: 9, scope: !5961)
!5965 = !DILocation(line: 591, column: 19, scope: !5719)
!5966 = !DILocation(line: 591, column: 36, scope: !5719)
!5967 = !DILocation(line: 591, column: 16, scope: !5719)
!5968 = !DILocation(line: 591, column: 52, scope: !5959)
!5969 = !DILocation(line: 591, column: 69, scope: !5719)
!5970 = !DILocation(line: 591, column: 49, scope: !5719)
!5971 = distinct !{!5971, !5972, !5973}
!5972 = !DILocation(line: 589, column: 3, scope: !5720)
!5973 = !DILocation(line: 597, column: 7, scope: !5720)
!5974 = !DILocation(line: 602, column: 7, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5710, file: !625, line: 602, column: 7)
!5976 = !DILocation(line: 602, column: 18, scope: !5975)
!5977 = !DILocation(line: 602, column: 7, scope: !5710)
!5978 = !DILocation(line: 612, column: 3, scope: !5710)
!5979 = distinct !DISubprogram(name: "memcoll", scope: !5980, file: !5980, line: 66, type: !4911, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !5981)
!5980 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.27")
!5981 = !{!5982, !5983, !5984, !5985, !5986, !5987, !5990}
!5982 = !DILocalVariable(name: "s1", arg: 1, scope: !5979, file: !5980, line: 66, type: !81)
!5983 = !DILocalVariable(name: "s1len", arg: 2, scope: !5979, file: !5980, line: 66, type: !75)
!5984 = !DILocalVariable(name: "s2", arg: 3, scope: !5979, file: !5980, line: 66, type: !81)
!5985 = !DILocalVariable(name: "s2len", arg: 4, scope: !5979, file: !5980, line: 66, type: !75)
!5986 = !DILocalVariable(name: "diff", scope: !5979, file: !5980, line: 68, type: !87)
!5987 = !DILocalVariable(name: "n1", scope: !5988, file: !5980, line: 81, type: !80)
!5988 = distinct !DILexicalBlock(scope: !5989, file: !5980, line: 80, column: 5)
!5989 = distinct !DILexicalBlock(scope: !5979, file: !5980, line: 74, column: 7)
!5990 = !DILocalVariable(name: "n2", scope: !5988, file: !5980, line: 82, type: !80)
!5991 = !DILocation(line: 66, column: 16, scope: !5979)
!5992 = !DILocation(line: 66, column: 27, scope: !5979)
!5993 = !DILocation(line: 66, column: 40, scope: !5979)
!5994 = !DILocation(line: 66, column: 51, scope: !5979)
!5995 = !DILocation(line: 74, column: 13, scope: !5989)
!5996 = !DILocation(line: 74, column: 22, scope: !5989)
!5997 = !DILocation(line: 74, column: 25, scope: !5998)
!5998 = !DILexicalBlockFile(scope: !5989, file: !5980, discriminator: 1)
!5999 = !DILocation(line: 74, column: 48, scope: !5998)
!6000 = !DILocation(line: 74, column: 7, scope: !6001)
!6001 = !DILexicalBlockFile(scope: !5979, file: !5980, discriminator: 1)
!6002 = !DILocation(line: 76, column: 7, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5989, file: !5980, line: 75, column: 5)
!6004 = !DILocation(line: 76, column: 13, scope: !6003)
!6005 = !DILocation(line: 68, column: 7, scope: !5979)
!6006 = !DILocation(line: 78, column: 5, scope: !6003)
!6007 = !DILocation(line: 81, column: 17, scope: !5988)
!6008 = !DILocation(line: 81, column: 12, scope: !5988)
!6009 = !DILocation(line: 82, column: 17, scope: !5988)
!6010 = !DILocation(line: 82, column: 12, scope: !5988)
!6011 = !DILocation(line: 84, column: 17, scope: !5988)
!6012 = !DILocation(line: 85, column: 17, scope: !5988)
!6013 = !DILocation(line: 87, column: 38, scope: !5988)
!6014 = !DILocation(line: 87, column: 53, scope: !5988)
!6015 = !DILocalVariable(name: "s1", arg: 1, scope: !6016, file: !5980, line: 35, type: !78)
!6016 = distinct !DISubprogram(name: "strcoll_loop", scope: !5980, file: !5980, line: 35, type: !4959, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !6017)
!6017 = !{!6015, !6018, !6019, !6020, !6021, !6022, !6024}
!6018 = !DILocalVariable(name: "s1size", arg: 2, scope: !6016, file: !5980, line: 35, type: !75)
!6019 = !DILocalVariable(name: "s2", arg: 3, scope: !6016, file: !5980, line: 35, type: !78)
!6020 = !DILocalVariable(name: "s2size", arg: 4, scope: !6016, file: !5980, line: 35, type: !75)
!6021 = !DILocalVariable(name: "diff", scope: !6016, file: !5980, line: 37, type: !87)
!6022 = !DILocalVariable(name: "size1", scope: !6023, file: !5980, line: 44, type: !75)
!6023 = distinct !DILexicalBlock(scope: !6016, file: !5980, line: 40, column: 5)
!6024 = !DILocalVariable(name: "size2", scope: !6023, file: !5980, line: 45, type: !75)
!6025 = !DILocation(line: 35, column: 27, scope: !6016, inlinedAt: !6026)
!6026 = distinct !DILocation(line: 87, column: 14, scope: !5988)
!6027 = !DILocation(line: 35, column: 38, scope: !6016, inlinedAt: !6026)
!6028 = !DILocation(line: 35, column: 58, scope: !6016, inlinedAt: !6026)
!6029 = !DILocation(line: 35, column: 69, scope: !6016, inlinedAt: !6026)
!6030 = !DILocation(line: 39, column: 13, scope: !6031, inlinedAt: !6026)
!6031 = !DILexicalBlockFile(scope: !6016, file: !5980, discriminator: 1)
!6032 = !DILocation(line: 39, column: 3, scope: !6016, inlinedAt: !6026)
!6033 = !DILocation(line: 39, column: 19, scope: !6031, inlinedAt: !6026)
!6034 = !DILocation(line: 39, column: 32, scope: !6035, inlinedAt: !6026)
!6035 = !DILexicalBlockFile(scope: !6016, file: !5980, discriminator: 5)
!6036 = !DILocation(line: 37, column: 7, scope: !6016, inlinedAt: !6026)
!6037 = !DILocation(line: 39, column: 30, scope: !6031, inlinedAt: !6026)
!6038 = !DILocation(line: 39, column: 3, scope: !6039, inlinedAt: !6026)
!6039 = !DILexicalBlockFile(scope: !6016, file: !5980, discriminator: 3)
!6040 = !DILocation(line: 44, column: 22, scope: !6023, inlinedAt: !6026)
!6041 = !DILocation(line: 44, column: 34, scope: !6023, inlinedAt: !6026)
!6042 = !DILocation(line: 44, column: 14, scope: !6023, inlinedAt: !6026)
!6043 = !DILocation(line: 45, column: 22, scope: !6023, inlinedAt: !6026)
!6044 = !DILocation(line: 45, column: 34, scope: !6023, inlinedAt: !6026)
!6045 = !DILocation(line: 45, column: 14, scope: !6023, inlinedAt: !6026)
!6046 = !DILocation(line: 48, column: 14, scope: !6023, inlinedAt: !6026)
!6047 = !DILocation(line: 49, column: 14, scope: !6023, inlinedAt: !6026)
!6048 = !DILocation(line: 51, column: 18, scope: !6049, inlinedAt: !6026)
!6049 = distinct !DILexicalBlock(scope: !6023, file: !5980, line: 51, column: 11)
!6050 = !DILocation(line: 51, column: 11, scope: !6023, inlinedAt: !6026)
!6051 = !DILocation(line: 52, column: 26, scope: !6049, inlinedAt: !6026)
!6052 = !DILocation(line: 52, column: 16, scope: !6049, inlinedAt: !6026)
!6053 = !DILocation(line: 47, column: 10, scope: !6023, inlinedAt: !6026)
!6054 = !DILocation(line: 46, column: 10, scope: !6023, inlinedAt: !6026)
!6055 = !DILocation(line: 53, column: 18, scope: !6056, inlinedAt: !6026)
!6056 = distinct !DILexicalBlock(scope: !6023, file: !5980, line: 53, column: 11)
!6057 = distinct !{!6057, !6058, !6059}
!6058 = !DILocation(line: 39, column: 3, scope: !6016)
!6059 = !DILocation(line: 55, column: 5, scope: !6016)
!6060 = !DILocation(line: 89, column: 17, scope: !5988)
!6061 = !DILocation(line: 90, column: 17, scope: !5988)
!6062 = !DILocation(line: 93, column: 3, scope: !5979)
!6063 = distinct !DISubprogram(name: "memcoll0", scope: !5980, file: !5980, line: 102, type: !4959, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !690, variables: !6064)
!6064 = !{!6065, !6066, !6067, !6068}
!6065 = !DILocalVariable(name: "s1", arg: 1, scope: !6063, file: !5980, line: 102, type: !78)
!6066 = !DILocalVariable(name: "s1size", arg: 2, scope: !6063, file: !5980, line: 102, type: !75)
!6067 = !DILocalVariable(name: "s2", arg: 3, scope: !6063, file: !5980, line: 102, type: !78)
!6068 = !DILocalVariable(name: "s2size", arg: 4, scope: !6063, file: !5980, line: 102, type: !75)
!6069 = !DILocation(line: 102, column: 23, scope: !6063)
!6070 = !DILocation(line: 102, column: 34, scope: !6063)
!6071 = !DILocation(line: 102, column: 54, scope: !6063)
!6072 = !DILocation(line: 102, column: 65, scope: !6063)
!6073 = !DILocation(line: 104, column: 14, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6063, file: !5980, line: 104, column: 7)
!6075 = !DILocation(line: 104, column: 24, scope: !6074)
!6076 = !DILocation(line: 104, column: 27, scope: !6077)
!6077 = !DILexicalBlockFile(scope: !6074, file: !5980, discriminator: 1)
!6078 = !DILocation(line: 104, column: 51, scope: !6077)
!6079 = !DILocation(line: 104, column: 7, scope: !6080)
!6080 = !DILexicalBlockFile(scope: !6063, file: !5980, discriminator: 1)
!6081 = !DILocation(line: 106, column: 7, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6074, file: !5980, line: 105, column: 5)
!6083 = !DILocation(line: 106, column: 13, scope: !6082)
!6084 = !DILocation(line: 107, column: 7, scope: !6082)
!6085 = !DILocation(line: 35, column: 27, scope: !6016, inlinedAt: !6086)
!6086 = distinct !DILocation(line: 110, column: 12, scope: !6074)
!6087 = !DILocation(line: 35, column: 38, scope: !6016, inlinedAt: !6086)
!6088 = !DILocation(line: 35, column: 58, scope: !6016, inlinedAt: !6086)
!6089 = !DILocation(line: 35, column: 69, scope: !6016, inlinedAt: !6086)
!6090 = !DILocation(line: 39, column: 13, scope: !6031, inlinedAt: !6086)
!6091 = !DILocation(line: 39, column: 3, scope: !6016, inlinedAt: !6086)
!6092 = !DILocation(line: 39, column: 19, scope: !6031, inlinedAt: !6086)
!6093 = !DILocation(line: 39, column: 32, scope: !6035, inlinedAt: !6086)
!6094 = !DILocation(line: 37, column: 7, scope: !6016, inlinedAt: !6086)
!6095 = !DILocation(line: 39, column: 30, scope: !6031, inlinedAt: !6086)
!6096 = !DILocation(line: 39, column: 3, scope: !6039, inlinedAt: !6086)
!6097 = !DILocation(line: 44, column: 22, scope: !6023, inlinedAt: !6086)
!6098 = !DILocation(line: 44, column: 34, scope: !6023, inlinedAt: !6086)
!6099 = !DILocation(line: 44, column: 14, scope: !6023, inlinedAt: !6086)
!6100 = !DILocation(line: 45, column: 22, scope: !6023, inlinedAt: !6086)
!6101 = !DILocation(line: 45, column: 34, scope: !6023, inlinedAt: !6086)
!6102 = !DILocation(line: 45, column: 14, scope: !6023, inlinedAt: !6086)
!6103 = !DILocation(line: 48, column: 14, scope: !6023, inlinedAt: !6086)
!6104 = !DILocation(line: 49, column: 14, scope: !6023, inlinedAt: !6086)
!6105 = !DILocation(line: 51, column: 18, scope: !6049, inlinedAt: !6086)
!6106 = !DILocation(line: 51, column: 11, scope: !6023, inlinedAt: !6086)
!6107 = !DILocation(line: 52, column: 26, scope: !6049, inlinedAt: !6086)
!6108 = !DILocation(line: 52, column: 16, scope: !6049, inlinedAt: !6086)
!6109 = !DILocation(line: 47, column: 10, scope: !6023, inlinedAt: !6086)
!6110 = !DILocation(line: 46, column: 10, scope: !6023, inlinedAt: !6086)
!6111 = !DILocation(line: 53, column: 18, scope: !6056, inlinedAt: !6086)
!6112 = !DILocation(line: 111, column: 1, scope: !6063)
